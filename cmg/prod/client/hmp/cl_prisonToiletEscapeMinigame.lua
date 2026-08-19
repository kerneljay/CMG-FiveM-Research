--[[
    LEVEL 1 BEGINNER GUIDE — Prison Toilet Escape Minigame
    ===========================================================

    File: cmg/prod/client/hmp/cl_prisonToiletEscapeMinigame.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: prison gameplay, specifically the Prison Toilet Escape Minigame feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 30
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
local cmgOperation, text, workingValue6, dataCollection, text2, dataCollection2, dataCollection3, text3, text4, dataCollection4, workingValue2
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text = "cfg/cfg_prison"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text)

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2) ===
function text(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  localValue3 = 1
  localValue4 = #localValue1
  localValue5 = 1
  for localValue6 = localValue3, localValue4, localValue5 do
    localValue7 = localValue1[localValue6]
    if localValue7 == localValue2 then
      localValue7 = true
      return localValue7
    end
  end
  localValue3 = false
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash, workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workingValue4, stateFlag, stateFlag2, workingValue5, stateFlag3
  if localValue1 then
    localValue3 = DoesEntityExist
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    if localValue3 then
      goto continueAtStep10
    end
  end
  localValue3 = false
  return localValue3
  ::continueAtStep10::
  localValue3 = GetNuiCursorPosition
  localValue3, localValue4 = localValue3()
  localValue5 = GetActiveScreenResolution
  localValue5, localValue6 = localValue5()
  localValue7 = GetEntityCoords
  workingValue7 = localValue1
  -- Beginner: result below is entityCoords.
  localValue7 = localValue7(workingValue7)
  workingValue7 = World3dToScreen2d
  workingValue8 = localValue7.x
  workingValue9 = localValue7.y
  modelHash = localValue7.z
  workingValue7, workingValue8, workingValue9 = workingValue7(workingValue8, workingValue9, modelHash)
  if not workingValue7 then
    modelHash = false
    return modelHash
  end
  modelHash = GetEntityModel
  workingValue3 = localValue1
  -- Beginner: result below is modelHash.
  modelHash = modelHash(workingValue3)
  workingValue3 = GetModelDimensions
  number = modelHash
  workingValue3, number = workingValue3(number)
  mathHelper = math
  mathHelper = mathHelper.max
  mathHelper2 = math
  mathHelper2 = mathHelper2.abs
  mathHelper3 = number.x
  mathHelper4 = workingValue3.x
  mathHelper3 = mathHelper3 - mathHelper4
  mathHelper2 = mathHelper2(mathHelper3)
  mathHelper3 = math
  mathHelper3 = mathHelper3.abs
  mathHelper4 = number.y
  mathHelper5 = workingValue3.y
  mathHelper4 = mathHelper4 - mathHelper5
  mathHelper3 = mathHelper3(mathHelper4)
  mathHelper4 = math
  mathHelper4 = mathHelper4.abs
  mathHelper5 = number.z
  workingValue4 = workingValue3.z
  mathHelper5 = mathHelper5 - workingValue4
  mathHelper4, mathHelper5, workingValue4, stateFlag, stateFlag2, workingValue5, stateFlag3 = mathHelper4(mathHelper5)
  mathHelper = mathHelper(mathHelper2, mathHelper3, mathHelper4, mathHelper5, workingValue4, stateFlag, stateFlag2, workingValue5, stateFlag3)
  mathHelper2 = GetFinalRenderedCamCoord
  mathHelper2 = mathHelper2()
  mathHelper3 = mathHelper2 - localValue7
  mathHelper3 = #mathHelper3
  mathHelper4 = mathHelper * 100.0
  mathHelper5 = math
  mathHelper5 = mathHelper5.max
  workingValue4 = mathHelper3
  stateFlag = 1.0
  mathHelper5 = mathHelper5(workingValue4, stateFlag)
  mathHelper4 = mathHelper4 / mathHelper5
  mathHelper4 = localValue2 + mathHelper4
  mathHelper5 = workingValue8 * localValue5
  workingValue4 = workingValue9 * localValue6
  stateFlag = localValue3 - mathHelper5
  stateFlag2 = localValue4 - workingValue4
  workingValue5 = stateFlag * stateFlag
  stateFlag3 = stateFlag2 * stateFlag2
  workingValue5 = workingValue5 + stateFlag3
  stateFlag3 = mathHelper4 * mathHelper4
  workingValue5 = workingValue5 <= stateFlag3
  return workingValue5
end
dataCollection = {}
dataCollection.__index = dataCollection

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = setmetatable
  localValue3 = {}
  localValue4 = dataCollection
  localValue2 = localValue2(localValue3, localValue4)
  localValue2.entity = localValue1
  localValue3 = CreateCam
  localValue4 = "DEFAULT_SCRIPTED_CAMERA"
  localValue5 = true
  -- Beginner: result below is cameraHandle.
  localValue3 = localValue3(localValue4, localValue5)
  localValue2.cam = localValue3
  localValue2.isActive = false
  return localValue2
end
dataCollection.new = text2

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2, localValue3, localValue4) ===
function text2(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash, workingValue3, number
  localValue5 = DoesEntityExist
  localValue6 = localValue1.entity
  localValue5 = localValue5(localValue6)
  if not localValue5 then
    return
  end
  localValue5 = GetOffsetFromEntityInWorldCoords
  localValue6 = localValue1.entity
  localValue7 = localValue2[1]
  localValue7 = localValue7.x
  workingValue7 = localValue2[1]
  workingValue7 = workingValue7.y
  workingValue8 = localValue2[1]
  workingValue8 = workingValue8.z
  localValue5 = localValue5(localValue6, localValue7, workingValue7, workingValue8)
  localValue6 = nil
  if not localValue4 then
    localValue7 = GetEntityRotation
    workingValue7 = localValue1.entity
    localValue7 = localValue7(workingValue7)
    workingValue7 = vector3
    workingValue8 = localValue2[2]
    workingValue8 = workingValue8.x
    workingValue9 = localValue7.x
    workingValue8 = workingValue8 + workingValue9
    workingValue9 = localValue2[2]
    workingValue9 = workingValue9.y
    modelHash = localValue7.y
    workingValue9 = workingValue9 + modelHash
    modelHash = localValue2[2]
    modelHash = modelHash.z
    workingValue3 = localValue7.z
    modelHash = modelHash + workingValue3
    workingValue7 = workingValue7(workingValue8, workingValue9, modelHash)
    localValue6 = workingValue7
  else
    localValue6 = localValue2[2]
  end
  if localValue3 then
    localValue7 = localValue1.isActive
    if localValue7 then
      localValue7 = CreateCam
      workingValue7 = "DEFAULT_SCRIPTED_CAMERA"
      workingValue8 = true
      -- Beginner: result below is cameraHandle.
      localValue7 = localValue7(workingValue7, workingValue8)
      workingValue7 = SetCamCoord
      workingValue8 = localValue7
      workingValue9 = localValue5.x
      modelHash = localValue5.y
      workingValue3 = localValue5.z
      workingValue7(workingValue8, workingValue9, modelHash, workingValue3)
      workingValue7 = SetCamRot
      workingValue8 = localValue7
      workingValue9 = localValue6.x
      modelHash = localValue6.y
      workingValue3 = localValue6.z
      number = 2
      workingValue7(workingValue8, workingValue9, modelHash, workingValue3, number)
      workingValue7 = SetCamFov
      workingValue8 = localValue7
      workingValue9 = 30.0
      workingValue7(workingValue8, workingValue9)
      workingValue7 = SetCamActive
      workingValue8 = localValue7
      workingValue9 = true
      workingValue7(workingValue8, workingValue9)
      workingValue7 = SetCamActiveWithInterp
      workingValue8 = localValue7
      workingValue9 = localValue1.cam
      modelHash = 1500
      workingValue3 = 1
      number = 1
      workingValue7(workingValue8, workingValue9, modelHash, workingValue3, number)
      workingValue7 = SetCamActive
      workingValue8 = localValue1.cam
      workingValue9 = false
      workingValue7(workingValue8, workingValue9)
      workingValue7 = DestroyCam
      workingValue8 = localValue1.cam
      workingValue9 = false
      workingValue7(workingValue8, workingValue9)
      localValue1.cam = localValue7
  end
  else
    localValue7 = SetCamCoord
    workingValue7 = localValue1.cam
    workingValue8 = localValue5.x
    workingValue9 = localValue5.y
    modelHash = localValue5.z
    localValue7(workingValue7, workingValue8, workingValue9, modelHash)
    localValue7 = SetCamRot
    workingValue7 = localValue1.cam
    workingValue8 = localValue6.x
    workingValue9 = localValue6.y
    modelHash = localValue6.z
    workingValue3 = 2
    localValue7(workingValue7, workingValue8, workingValue9, modelHash, workingValue3)
    localValue7 = SetCamFov
    workingValue7 = localValue1.cam
    workingValue8 = 30.0
    localValue7(workingValue7, workingValue8)
    localValue7 = localValue1.isActive
    if not localValue7 then
      localValue7 = SetCamActive
      workingValue7 = localValue1.cam
      workingValue8 = true
      localValue7(workingValue7, workingValue8)
    end
  end
end
dataCollection.setCamera = text2

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2, localValue3) ===
function text2(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, workingValue7, workingValue8
  localValue4 = RenderScriptCams
  localValue5 = true
  localValue6 = localValue2 or localValue6
  if not localValue2 then
    localValue6 = false
  end
  localValue7 = localValue3 or localValue7
  if not localValue3 then
    localValue7 = 0
  end
  workingValue7 = true
  workingValue8 = true
  localValue4(localValue5, localValue6, localValue7, workingValue7, workingValue8)
  localValue1.isActive = true
end
dataCollection.activate = text2

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2, localValue3) ===
function text2(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, workingValue7, workingValue8
  localValue4 = RenderScriptCams
  localValue5 = false
  localValue6 = localValue2 or localValue6
  if not localValue2 then
    localValue6 = false
  end
  localValue7 = localValue3 or localValue7
  if not localValue3 then
    localValue7 = 0
  end
  workingValue7 = true
  workingValue8 = true
  localValue4(localValue5, localValue6, localValue7, workingValue7, workingValue8)
  localValue1.isActive = false
end
dataCollection.deactivate = text2

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = localValue1.isActive
  if localValue2 then
    localValue3 = localValue1
    localValue2 = localValue1.deactivate
    localValue4 = true
    localValue5 = 1500
    localValue2(localValue3, localValue4, localValue5)
    localValue2 = Wait
    localValue3 = 1500
    localValue2(localValue3)
  end
  localValue2 = localValue1.cam
  if localValue2 then
    localValue2 = DestroyCam
    localValue3 = localValue1.cam
    localValue4 = false
    localValue2(localValue3, localValue4)
    localValue1.cam = nil
  end
  localValue1.isActive = false
end
dataCollection.destroy = text2
text2 = "prompt@jail"
dataCollection2 = {}
dataCollection3 = "jail_work_left_up"
text3 = "jail_work_left_down"
text4 = "jail_work_right_up"
dataCollection4 = "jail_work_right_down"
dataCollection2[1] = dataCollection3
dataCollection2[2] = text3
dataCollection2[3] = text4
dataCollection2[4] = dataCollection4
dataCollection3 = {}
dataCollection3.__index = dataCollection3

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = setmetatable
  localValue3 = {}
  localValue4 = dataCollection3
  localValue2 = localValue2(localValue3, localValue4)
  localValue2.ped = localValue1
  localValue2.currentAnim = nil
  localValue2.animSpeed = 1.0
  return localValue2
end
dataCollection3.new = text3

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2) ===
function text3(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash, workingValue3, number, mathHelper, mathHelper2
  localValue3 = dataCollection2
  localValue3 = localValue3[localValue2]
  if not localValue3 then
    return
  end
  localValue1.currentAnim = localValue3
  localValue4 = CMG
  localValue4 = localValue4.loadAnimDict
  localValue5 = text2
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue4(localValue5)
  localValue4 = TaskPlayAnim
  localValue5 = localValue1.ped
  localValue6 = text2
  localValue7 = localValue3
  workingValue7 = 8.0
  workingValue8 = -8.0
  workingValue9 = -1
  modelHash = 2
  workingValue3 = 0.0
  number = false
  mathHelper = false
  mathHelper2 = false
  -- Beginner: Play an animation on a ped.
  localValue4(localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash, workingValue3, number, mathHelper, mathHelper2)
end
dataCollection3.playScrewAnim = text3

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2) ===
function text3(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  localValue3 = localValue1.currentAnim
  if not localValue3 then
    return
  end
  localValue1.animSpeed = localValue2
  localValue3 = SetEntityAnimSpeed
  localValue4 = localValue1.ped
  localValue5 = text2
  localValue6 = localValue1.currentAnim
  localValue7 = localValue2
  localValue3(localValue4, localValue5, localValue6, localValue7)
end
dataCollection3.setSpeed = text3

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = localValue1.currentAnim
  if not localValue2 then
    localValue2 = 0.0
    return localValue2
  end
  localValue2 = GetEntityAnimCurrentTime
  localValue3 = localValue1.ped
  localValue4 = text2
  localValue5 = localValue1.currentAnim
  return localValue2(localValue3, localValue4, localValue5)
end
dataCollection3.getCurrentTime = text3

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2, localValue3) ===
function text3(localValue1, localValue2, localValue3)
  local localValue4, localValue5
  localValue5 = localValue1
  localValue4 = localValue1.getCurrentTime
  localValue4 = localValue4(localValue5)
  localValue5 = localValue2 <= localValue4 and localValue3 >= localValue4
  return localValue5
end
dataCollection3.isInTimeRange = text3

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, localValue3
  localValue2 = ClearPedTasks
  localValue3 = localValue1.ped
  localValue2(localValue3)
  localValue1.currentAnim = nil
end
dataCollection3.stop = text3

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7) ===
function text3(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  local workingValue7, workingValue8, workingValue9, modelHash, workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workingValue4
  workingValue7 = CMG
  workingValue7 = workingValue7.loadAnimDict
  workingValue8 = localValue2
  -- Beginner: Load a GTA animation dictionary before using it.
  workingValue7(workingValue8)
  workingValue7 = HasAnimDictLoaded
  workingValue8 = localValue2
  workingValue7 = workingValue7(workingValue8)
  if not workingValue7 then
    workingValue7 = false
    return workingValue7
  end
  workingValue7 = TaskPlayAnim
  workingValue8 = localValue1
  workingValue9 = localValue2
  modelHash = localValue3
  workingValue3 = localValue4 or workingValue3
  if not localValue4 then
    workingValue3 = 8.0
  end
  number = localValue5 or number
  if not localValue5 then
    number = -8.0
  end
  mathHelper = localValue6 or mathHelper
  if not localValue6 then
    mathHelper = -1
  end
  mathHelper2 = localValue7 or mathHelper2
  if not localValue7 then
    mathHelper2 = 2
  end
  mathHelper3 = 0.0
  mathHelper4 = false
  mathHelper5 = false
  workingValue4 = false
  -- Beginner: Play an animation on a ped.
  workingValue7(workingValue8, workingValue9, modelHash, workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workingValue4)
  workingValue7 = true
  return workingValue7
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 14
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 15
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 16
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 17
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = DisableControlAction
  localValue2 = 0
  localValue3 = 37
  localValue4 = true
  localValue1(localValue2, localValue3, localValue4)
end
dataCollection4 = {}
dataCollection4.__index = dataCollection4
dataCollection4.activeInstance = nil

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = setmetatable
  localValue3 = {}
  localValue4 = dataCollection4
  localValue2 = localValue2(localValue3, localValue4)
  localValue2.entity = localValue1
  localValue2.isRunning = false
  localValue2.isInMinigame = false
  localValue2.cameraAlternate = false
  localValue2.inControlRange = false
  localValue3 = dataCollection.new
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  localValue2.camera = localValue3
  localValue3 = dataCollection3.new
  localValue4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  localValue3 = localValue3(localValue4)
  localValue2.animator = localValue3
  localValue2.screwDriver = nil
  localValue2.screwObject = nil
  return localValue2
end
dataCollection4.new = workingValue2

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash
  localValue2 = cmgOperation.toiletEscape
  if not localValue2 then
    localValue3 = false
    return localValue3
  end
  localValue3 = GetEntityCoords
  localValue4 = localValue1.entity
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4)
  localValue4 = CMG
  localValue4 = localValue4.loadModel
  localValue5 = localValue2.screwDriverModel
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue4(localValue5)
  localValue4 = CreateObject
  localValue5 = localValue2.screwDriverModel
  localValue6 = localValue3.x
  localValue7 = localValue3.y
  workingValue7 = localValue3.z
  workingValue7 = workingValue7 - 10
  workingValue8 = localValue2.useNetworkedObjects
  workingValue9 = true
  modelHash = false
  -- Beginner: result below is objectEntity.
  localValue4 = localValue4(localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash)
  localValue1.screwDriver = localValue4
  localValue4 = DoesEntityExist
  localValue5 = localValue1.screwDriver
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    localValue4 = false
    return localValue4
  end
  localValue4 = SetEntityVisible
  localValue5 = localValue1.screwDriver
  localValue6 = false
  localValue7 = false
  localValue4(localValue5, localValue6, localValue7)
  localValue4 = SetModelAsNoLongerNeeded
  localValue5 = localValue2.screwDriverModel
  localValue4(localValue5)
  localValue4 = SetEntityCompletelyDisableCollision
  localValue5 = localValue1.screwDriver
  localValue6 = false
  localValue7 = true
  localValue4(localValue5, localValue6, localValue7)
  localValue4 = CMG
  localValue4 = localValue4.loadModel
  localValue5 = localValue2.screwModel
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue4(localValue5)
  localValue4 = CreateObject
  localValue5 = localValue2.screwModel
  localValue6 = localValue3.x
  localValue7 = localValue3.y
  workingValue7 = localValue3.z
  workingValue7 = workingValue7 - 10
  workingValue8 = localValue2.useNetworkedObjects
  workingValue9 = true
  modelHash = false
  -- Beginner: result below is objectEntity.
  localValue4 = localValue4(localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash)
  localValue1.screwObject = localValue4
  localValue4 = DoesEntityExist
  localValue5 = localValue1.screwObject
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    localValue4 = false
    return localValue4
  end
  localValue4 = SetEntityVisible
  localValue5 = localValue1.screwObject
  localValue6 = false
  localValue7 = false
  localValue4(localValue5, localValue6, localValue7)
  localValue4 = SetModelAsNoLongerNeeded
  localValue5 = localValue2.screwModel
  localValue4(localValue5)
  localValue4 = SetEntityCompletelyDisableCollision
  localValue5 = localValue1.screwObject
  localValue6 = false
  localValue7 = true
  localValue4(localValue5, localValue6, localValue7)
  localValue4 = true
  return localValue4
end
dataCollection4.createObjects = workingValue2

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash, workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workingValue4
  localValue3 = DoesEntityExist
  localValue4 = localValue1.screwDriver
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    return
  end
  localValue3 = SetEntityVisible
  localValue4 = localValue1.screwDriver
  localValue5 = true
  localValue6 = false
  localValue3(localValue4, localValue5, localValue6)
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  if 1 == localValue2 or 2 == localValue2 then
    localValue4 = AttachEntityToEntity
    localValue5 = localValue1.screwDriver
    localValue6 = localValue3
    localValue7 = GetPedBoneIndex
    workingValue7 = localValue3
    workingValue8 = 18905
    localValue7 = localValue7(workingValue7, workingValue8)
    workingValue7 = 0.1319
    workingValue8 = 0.082
    workingValue9 = -1.7E-4
    modelHash = 158.9
    workingValue3 = -28.8
    number = -8.86
    mathHelper = true
    mathHelper2 = true
    mathHelper3 = false
    mathHelper4 = true
    mathHelper5 = 1
    workingValue4 = true
    -- Beginner: Attach one entity to another entity.
    localValue4(localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash, workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workingValue4)
  else
    localValue4 = AttachEntityToEntity
    localValue5 = localValue1.screwDriver
    localValue6 = localValue3
    localValue7 = GetPedBoneIndex
    workingValue7 = localValue3
    workingValue8 = 57005
    localValue7 = localValue7(workingValue7, workingValue8)
    workingValue7 = 0.1445
    workingValue8 = 0.0838
    workingValue9 = -0.0306
    modelHash = -8.9
    workingValue3 = 40.15
    number = 160.55
    mathHelper = true
    mathHelper2 = true
    mathHelper3 = false
    mathHelper4 = true
    mathHelper5 = 1
    workingValue4 = true
    localValue4(localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash, workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workingValue4)
  end
end
dataCollection4.attachScrewdriver = workingValue2

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue2(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash, workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workingValue4
  localValue5 = DoesEntityExist
  localValue6 = localValue1.screwObject
  localValue5 = localValue5(localValue6)
  if not localValue5 then
    return
  end
  localValue5 = cmgOperation.toiletEscape
  if localValue5 then
    localValue6 = localValue5.screwOffsets
    localValue6 = localValue6[localValue2]
    if localValue6 then
      goto continueAtStep15
    end
  end
  return
  ::continueAtStep15::
  localValue6 = localValue5.screwOffsets
  localValue6 = localValue6[localValue2]
  localValue7 = 1 == localValue2 or 2 == localValue2
  workingValue7 = GetEntityRotation
  workingValue8 = localValue1.entity
  workingValue7 = workingValue7(workingValue8)
  workingValue8 = localValue6.screw
  workingValue8 = workingValue8.x
  if localValue7 then
    workingValue9 = -localValue3
    if workingValue9 then
      goto continueAtStep34
    end
  end
  workingValue9 = localValue3
  ::continueAtStep34::
  workingValue8 = workingValue8 + workingValue9
  workingValue9 = GetOffsetFromEntityInWorldCoords
  modelHash = localValue1.entity
  workingValue3 = workingValue8
  number = localValue6.screw
  number = number.y
  mathHelper = localValue6.screw
  mathHelper = mathHelper.z
  workingValue9 = workingValue9(modelHash, workingValue3, number, mathHelper)
  modelHash = SetEntityCoords
  workingValue3 = localValue1.screwObject
  number = workingValue9.x
  mathHelper = workingValue9.y
  mathHelper2 = workingValue9.z
  mathHelper3 = false
  mathHelper4 = false
  mathHelper5 = false
  workingValue4 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  modelHash(workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workingValue4)
  modelHash = SetEntityRotation
  workingValue3 = localValue1.screwObject
  number = workingValue7.x
  number = number + localValue4
  mathHelper = workingValue7.y
  if localValue7 then
    mathHelper2 = -90.0
    if mathHelper2 then
      goto continueAtStep66
    end
  end
  mathHelper2 = 90.0
  ::continueAtStep66::
  mathHelper = mathHelper + mathHelper2
  mathHelper2 = workingValue7.z
  mathHelper3 = 2
  mathHelper4 = true
  modelHash(workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4)
  modelHash = SetEntityVisible
  workingValue3 = localValue1.screwObject
  number = true
  mathHelper = false
  modelHash(workingValue3, number, mathHelper)
end
dataCollection4.positionScrew = workingValue2

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9
  localValue2 = localValue1.isInMinigame
  if localValue2 then
    localValue2 = localValue1.cameraAlternate
    if not localValue2 then
      goto continueAtStep8
    end
  end
  return
  ::continueAtStep8::
  localValue1.cameraAlternate = true
  localValue2 = localValue1.camera
  localValue3 = localValue2
  localValue2 = localValue2.setCamera
  localValue4 = {}
  localValue5 = vector3
  localValue6 = 0.0
  localValue7 = 0.0
  workingValue7 = 1.0
  localValue5 = localValue5(localValue6, localValue7, workingValue7)
  localValue6 = vector3
  localValue7 = 0.0
  workingValue7 = 0.0
  workingValue8 = GetEntityHeading
  workingValue9 = localValue1.entity
  -- Beginner: result below is heading.
  workingValue8 = workingValue8(workingValue9)
  workingValue8 = workingValue8 + 180.0
  localValue6, localValue7, workingValue7, workingValue8, workingValue9 = localValue6(localValue7, workingValue7, workingValue8)
  localValue4[1] = localValue5
  localValue4[2] = localValue6
  localValue4[3] = localValue7
  localValue4[4] = workingValue7
  localValue4[5] = workingValue8
  localValue4[6] = workingValue9
  localValue5 = true
  localValue6 = true
  localValue2(localValue3, localValue4, localValue5, localValue6)
  localValue2 = localValue1.camera
  localValue3 = localValue2
  localValue2 = localValue2.activate
  localValue4 = true
  localValue5 = 300
  localValue2(localValue3, localValue4, localValue5)
end
dataCollection4.switchToAlternateCamera = workingValue2

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = localValue1.isInMinigame
  if localValue2 then
    localValue2 = localValue1.cameraAlternate
    if localValue2 then
      goto continueAtStep8
    end
  end
  return
  ::continueAtStep8::
  localValue1.cameraAlternate = false
  localValue2 = cmgOperation.toiletEscape
  if localValue2 then
    localValue3 = localValue2.screwOffsets
    localValue4 = localValue1.currentScrewIndex
    localValue3 = localValue3[localValue4]
    if localValue3 then
      goto continueAtStep18
    end
  end
  return
  ::continueAtStep18::
  localValue3 = localValue2.screwOffsets
  localValue4 = localValue1.currentScrewIndex
  localValue3 = localValue3[localValue4]
  localValue3 = localValue3.cam
  localValue4 = localValue1.camera
  localValue5 = localValue4
  localValue4 = localValue4.setCamera
  localValue6 = localValue3
  localValue7 = true
  localValue4(localValue5, localValue6, localValue7)
  localValue4 = localValue1.camera
  localValue5 = localValue4
  localValue4 = localValue4.activate
  localValue6 = true
  localValue7 = 300
  localValue4(localValue5, localValue6, localValue7)
end
dataCollection4.switchToScrewCamera = workingValue2

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash, workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5
  localValue3 = cmgOperation.toiletEscape
  if not localValue3 then
    localValue4 = false
    return localValue4
  end
  localValue4 = 1 == localValue2 or 2 == localValue2
  localValue1.isInMinigame = true
  localValue1.currentScrewIndex = localValue2
  localValue1.cameraAlternate = false
  localValue5 = localValue3.screwOffsets
  localValue5 = localValue5[localValue2]
  localValue5 = localValue5.cam
  localValue6 = localValue1.camera
  localValue7 = localValue6
  localValue6 = localValue6.setCamera
  workingValue7 = localValue5
  workingValue8 = false
  localValue6(localValue7, workingValue7, workingValue8)
  localValue6 = localValue1.camera
  localValue7 = localValue6
  localValue6 = localValue6.activate
  workingValue7 = true
  workingValue8 = 1500
  localValue6(localValue7, workingValue7, workingValue8)
  localValue7 = localValue1
  localValue6 = localValue1.positionScrew
  workingValue7 = localValue2
  workingValue8 = 0
  workingValue9 = 0
  localValue6(localValue7, workingValue7, workingValue8, workingValue9)
  localValue7 = localValue1
  localValue6 = localValue1.attachScrewdriver
  workingValue7 = localValue2
  localValue6(localValue7, workingValue7)
  localValue6 = localValue1.animator
  localValue7 = localValue6
  localValue6 = localValue6.playScrewAnim
  workingValue7 = localValue2
  localValue6(localValue7, workingValue7)
  localValue6 = Wait
  localValue7 = 100
  localValue6(localValue7)
  localValue6 = {}
  localValue6.start = 0.25
  localValue6.finish = 0.75
  localValue1.inControlRange = false
  localValue7 = false
  workingValue7 = 0.0
  workingValue8 = 0.0
  workingValue9 = SetEntityVisible
  modelHash = localValue1.screwObject
  workingValue3 = true
  number = false
  workingValue9(modelHash, workingValue3, number)
  workingValue9 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION: modelHash() ===
  function modelHash()
    local workingValue, number2, number3
    while true do
      workingValue = localValue1.isRunning
      if not workingValue then
        break
      end
      workingValue = localValue1.isInMinigame
      if not workingValue then
        break
      end
      workingValue = IsDisabledControlJustPressed
      number2 = 0
      number3 = 45
      workingValue = workingValue(number2, number3)
      if workingValue then
        workingValue = localValue1
        number2 = workingValue
        workingValue = workingValue.switchToAlternateCamera
        workingValue(number2)
      end
      workingValue = IsControlJustReleased
      number2 = 0
      number3 = 45
      workingValue = workingValue(number2, number3)
      if workingValue then
        workingValue = localValue1
        number2 = workingValue
        workingValue = workingValue.switchToScrewCamera
        workingValue(number2)
      end
      workingValue = text4
      workingValue()
      workingValue = Wait
      number2 = 0
      workingValue(number2)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  workingValue9(modelHash)
  while true do
    workingValue9 = localValue1.isRunning
    if not workingValue9 then
      break
    end
    workingValue9 = text4
    workingValue9()
    workingValue9 = localValue1.animator
    modelHash = workingValue9
    workingValue9 = workingValue9.getCurrentTime
    workingValue9 = workingValue9(modelHash)
    modelHash = localValue1.animator
    workingValue3 = modelHash
    modelHash = modelHash.isInTimeRange
    number = localValue6.start
    mathHelper = localValue6.finish
    modelHash = modelHash(workingValue3, number, mathHelper)
    workingValue3 = IsDisabledControlJustPressed
    number = 0
    mathHelper = 73
    workingValue3 = workingValue3(number, mathHelper)
    if workingValue3 then
      workingValue3 = SetNuiFocus
      number = false
      mathHelper = false
      -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
      workingValue3(number, mathHelper)
      number = localValue1
      workingValue3 = localValue1.cancelWithAnimation
      workingValue3(number)
      localValue1.isRunning = false
      workingValue3 = false
      return workingValue3
    end
    if modelHash then
      workingValue3 = localValue1.inControlRange
      if not workingValue3 then
        workingValue3 = localValue1.animator
        number = workingValue3
        workingValue3 = workingValue3.setSpeed
        mathHelper = 0.0
        workingValue3(number, mathHelper)
        localValue1.inControlRange = true
        workingValue3 = SetNuiFocus
        number = false
        mathHelper = true
        -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
        workingValue3(number, mathHelper)
      end
    end
    workingValue3 = localValue1.inControlRange
    if workingValue3 then
      workingValue3 = workingValue6
      number = localValue1.screwObject
      mathHelper = 35.0
      workingValue3 = workingValue3(number, mathHelper)
      number = IsControlPressed
      mathHelper = 0
      mathHelper2 = 24
      number = number(mathHelper, mathHelper2)
      if not number then
        number = IsDisabledControlPressed
        mathHelper = 0
        mathHelper2 = 24
        number = number(mathHelper, mathHelper2)
      end
      if workingValue3 then
        mathHelper = SetEntityDrawOutline
        mathHelper2 = localValue1.screwObject
        mathHelper3 = true
        mathHelper(mathHelper2, mathHelper3)
        mathHelper = SetEntityDrawOutlineColor
        mathHelper2 = 255
        mathHelper3 = 255
        mathHelper4 = 0
        mathHelper5 = 255
        mathHelper(mathHelper2, mathHelper3, mathHelper4, mathHelper5)
        mathHelper = SetEntityDrawOutlineShader
        mathHelper2 = 1
        mathHelper(mathHelper2)
      else
        mathHelper = SetEntityDrawOutline
        mathHelper2 = localValue1.screwObject
        mathHelper3 = false
        mathHelper(mathHelper2, mathHelper3)
      end
      if workingValue3 and number then
        if not localValue7 then
          mathHelper = localValue1.animator
          mathHelper2 = mathHelper
          mathHelper = mathHelper.setSpeed
          mathHelper3 = 1.0
          mathHelper(mathHelper2, mathHelper3)
          mathHelper = SetEntityDrawOutlineColor
          mathHelper2 = 0
          mathHelper3 = 255
          mathHelper4 = 0
          mathHelper5 = 255
          mathHelper(mathHelper2, mathHelper3, mathHelper4, mathHelper5)
          localValue7 = true
        end
        workingValue8 = workingValue8 + 1.0E-4
        if localValue4 then
          mathHelper = -2.0
          if mathHelper then
            goto continueAtStep163
          end
        end
        mathHelper = 2.0
        ::continueAtStep163::
        workingValue7 = workingValue7 + mathHelper
        mathHelper2 = localValue1
        mathHelper = localValue1.positionScrew
        mathHelper3 = localValue2
        mathHelper4 = workingValue8
        mathHelper5 = workingValue7
        mathHelper(mathHelper2, mathHelper3, mathHelper4, mathHelper5)
        mathHelper = localValue6.finish
        if workingValue9 >= mathHelper then
          mathHelper = SetNuiFocus
          mathHelper2 = false
          mathHelper3 = false
          -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
          mathHelper(mathHelper2, mathHelper3)
          mathHelper = SetEntityDrawOutline
          mathHelper2 = localValue1.screwObject
          mathHelper3 = false
          mathHelper(mathHelper2, mathHelper3)
          mathHelper = SetEntityVisible
          mathHelper2 = localValue1.screwObject
          mathHelper3 = false
          mathHelper4 = false
          mathHelper(mathHelper2, mathHelper3, mathHelper4)
          mathHelper = localValue1.camera
          if mathHelper then
            mathHelper = localValue1.camera
            mathHelper2 = mathHelper
            mathHelper = mathHelper.destroy
            mathHelper(mathHelper2)
            localValue1.camera = nil
          end
          mathHelper = true
          return mathHelper
        end
      elseif localValue7 then
        mathHelper = localValue1.animator
        mathHelper2 = mathHelper
        mathHelper = mathHelper.setSpeed
        mathHelper3 = 0.0
        mathHelper(mathHelper2, mathHelper3)
        if workingValue3 then
          mathHelper = SetEntityDrawOutlineColor
          mathHelper2 = 255
          mathHelper3 = 255
          mathHelper4 = 0
          mathHelper5 = 255
          mathHelper(mathHelper2, mathHelper3, mathHelper4, mathHelper5)
        end
        localValue7 = false
      end
    end
    workingValue3 = Wait
    number = 0
    workingValue3(number)
  end
  workingValue9 = SetNuiFocus
  modelHash = false
  workingValue3 = false
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  workingValue9(modelHash, workingValue3)
  workingValue9 = SetEntityDrawOutline
  modelHash = localValue1.screwObject
  workingValue3 = false
  workingValue9(modelHash, workingValue3)
  localValue1.isInMinigame = false
  workingValue9 = localValue1.camera
  if workingValue9 then
    workingValue9 = localValue1.camera
    modelHash = workingValue9
    workingValue9 = workingValue9.destroy
    workingValue9(modelHash)
    localValue1.camera = nil
  end
  workingValue9 = false
  return workingValue9
end
dataCollection4.handleScrewMinigame = workingValue2

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash
  localValue3 = {}
  localValue4 = 1
  localValue5 = 4
  localValue6 = 1
  for localValue7 = localValue4, localValue5, localValue6 do
    workingValue7 = text
    workingValue8 = localValue2
    workingValue9 = localValue7
    workingValue7 = workingValue7(workingValue8, workingValue9)
    if not workingValue7 then
      workingValue7 = #localValue3
      workingValue7 = workingValue7 + 1
      localValue3[workingValue7] = localValue7
    end
  end
  localValue4 = #localValue3
  if 0 == localValue4 then
    localValue4 = nil
    return localValue4
  end
  localValue4 = cmgOperation.toiletEscape
  if localValue4 then
    localValue5 = localValue4.screwLabels
    if localValue5 then
      goto continueAtStep36
    end
  end
  localValue5 = {}
  localValue6 = "Top left"
  localValue7 = "Bottom left"
  workingValue7 = "Top right"
  workingValue8 = "Bottom right"
  localValue5[1] = localValue6
  localValue5[2] = localValue7
  localValue5[3] = workingValue7
  localValue5[4] = workingValue8
  ::continueAtStep36::
  localValue6 = 1
  localValue7 = true
  workingValue7 = nil
  workingValue8 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.

  -- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
  function workingValue9()
    local workingValue, number2, number3, number4, number5, number6, number7
    while true do
      workingValue = localValue7
      if not workingValue then
        break
      end
      workingValue = localValue1.isRunning
      if not workingValue then
        break
      end
      workingValue = text4
      workingValue()
      number2 = localValue6
      workingValue = localValue3
      number2 = workingValue[number2]
      workingValue = localValue5
      workingValue = workingValue[number2]
      if not workingValue then
        workingValue = "Screw "
        number3 = localValue6
        number2 = localValue3
        number2 = number2[number3]
        workingValue = workingValue .. number2
      end
      number2 = SetTextFont
      number3 = 4
      number2(number3)
      number2 = SetTextScale
      number3 = 0.35
      number4 = 0.35
      number2(number3, number4)
      number2 = SetTextColour
      number3 = 255
      number4 = 255
      number5 = 255
      number6 = 255
      number2(number3, number4, number5, number6)
      number2 = SetTextDropshadow
      number3 = 0
      number4 = 0
      number5 = 0
      number6 = 0
      number7 = 255
      number2(number3, number4, number5, number6, number7)
      number2 = SetTextEdge
      number3 = 1
      number4 = 0
      number5 = 0
      number6 = 0
      number7 = 255
      number2(number3, number4, number5, number6, number7)
      number2 = SetTextEntry
      number3 = "STRING"
      number2(number3)
      number2 = AddTextComponentSubstringPlayerName
      number3 = workingValue
      number4 = " - [SCROLL] change [E] select [X] cancel"
      number3 = number3 .. number4
      number2(number3)
      number2 = DrawText
      number3 = 0.4
      number4 = 0.25
      number2(number3, number4)
      number2 = Wait
      number3 = 0
      number2(number3)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  workingValue8(workingValue9)
  workingValue8 = Wait
  workingValue9 = 100
  workingValue8(workingValue9)
  while localValue7 do
    workingValue8 = text4
    workingValue8()
    workingValue8 = IsDisabledControlJustPressed
    workingValue9 = 0
    modelHash = 14
    workingValue8 = workingValue8(workingValue9, modelHash)
    if not workingValue8 then
      workingValue8 = IsDisabledControlJustPressed
      workingValue9 = 0
      modelHash = 172
      workingValue8 = workingValue8(workingValue9, modelHash)
      if not workingValue8 then
        goto continueAtStep66
      end
    end
    localValue6 = localValue6 - 1
    if localValue6 < 1 then
      localValue6 = #localValue3
    end
    ::continueAtStep66::
    workingValue8 = IsDisabledControlJustPressed
    workingValue9 = 0
    modelHash = 15
    workingValue8 = workingValue8(workingValue9, modelHash)
    if not workingValue8 then
      workingValue8 = IsDisabledControlJustPressed
      workingValue9 = 0
      modelHash = 173
      workingValue8 = workingValue8(workingValue9, modelHash)
      if not workingValue8 then
        goto continueAtStep84
      end
    end
    localValue6 = localValue6 + 1
    workingValue8 = #localValue3
    if localValue6 > workingValue8 then
      localValue6 = 1
    end
    ::continueAtStep84::
    workingValue8 = IsDisabledControlJustPressed
    workingValue9 = 0
    modelHash = 38
    workingValue8 = workingValue8(workingValue9, modelHash)
    if not workingValue8 then
      workingValue8 = IsDisabledControlJustPressed
      workingValue9 = 0
      modelHash = 191
      workingValue8 = workingValue8(workingValue9, modelHash)
      if not workingValue8 then
        goto continueAtStep98
      end
    end
    workingValue7 = localValue3[localValue6]
    localValue7 = false
    ::continueAtStep98::
    workingValue8 = IsDisabledControlJustPressed
    workingValue9 = 0
    modelHash = 73
    workingValue8 = workingValue8(workingValue9, modelHash)
    if not workingValue8 then
      workingValue8 = IsDisabledControlJustPressed
      workingValue9 = 0
      modelHash = 194
      workingValue8 = workingValue8(workingValue9, modelHash)
      if not workingValue8 then
        goto continueAtStep111
      end
    end
    localValue7 = false
    ::continueAtStep111::
    workingValue8 = Wait
    workingValue9 = 0
    workingValue8(workingValue9)
  end
  return workingValue7
end
dataCollection4.selectScrew = workingValue2

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash, workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workingValue4, stateFlag, stateFlag2, workingValue5, stateFlag3, stateFlag4, stateFlag5
  localValue2 = SetNuiFocus
  localValue3 = false
  localValue4 = false
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  localValue2(localValue3, localValue4)
  localValue2 = localValue1.camera
  if localValue2 then
    localValue2 = localValue1.camera
    localValue3 = localValue2
    localValue2 = localValue2.destroy
    localValue2(localValue3)
    localValue1.camera = nil
  end
  localValue2 = DetachEntity
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = true
  localValue5 = false
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = GetEntityHeading
  localValue3 = localValue1.entity
  -- Beginner: result below is heading.
  localValue2 = localValue2(localValue3)
  localValue3 = GetEntityCoords
  localValue4 = localValue1.entity
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4)
  localValue4 = GetOffsetFromEntityInWorldCoords
  localValue5 = localValue1.entity
  localValue6 = 0.0
  localValue7 = 0.0
  workingValue7 = 0.55
  localValue4 = localValue4(localValue5, localValue6, localValue7, workingValue7)
  localValue5 = SetEntityCoordsNoOffset
  localValue6 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue6 = localValue6()
  localValue7 = localValue4.x
  workingValue7 = localValue4.y
  workingValue8 = localValue4.z
  workingValue9 = false
  modelHash = false
  workingValue3 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue5(localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash, workingValue3)
  localValue5 = SetEntityHeading
  localValue6 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue6 = localValue6()
  localValue7 = localValue2 - 173.0
  -- Beginner: Change the direction an entity is facing.
  localValue5(localValue6, localValue7)
  localValue5 = text3
  localValue6 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue6 = localValue6()
  localValue7 = "promt@jail_4"
  workingValue7 = "jail_exit_open_ped"
  localValue5(localValue6, localValue7, workingValue7)
  localValue5 = Wait
  localValue6 = 4000
  localValue5(localValue6)
  localValue5 = GetOffsetFromEntityInWorldCoords
  localValue6 = localValue1.entity
  localValue7 = -0.5
  workingValue7 = 0.0
  workingValue8 = 0.0
  localValue5 = localValue5(localValue6, localValue7, workingValue7, workingValue8)
  localValue6 = localValue5.x
  localValue7 = localValue3.x
  localValue6 = localValue6 - localValue7
  localValue7 = localValue5.y
  workingValue7 = localValue3.y
  localValue7 = localValue7 - workingValue7
  workingValue7 = 25
  workingValue8 = 80.0
  workingValue9 = 1
  modelHash = workingValue8
  workingValue3 = 1
  for number = workingValue9, modelHash, workingValue3 do
    mathHelper = number / workingValue8
    mathHelper2 = SetEntityCoords
    mathHelper3 = localValue1.entity
    mathHelper4 = localValue3.x
    mathHelper5 = localValue6 * mathHelper
    mathHelper4 = mathHelper4 + mathHelper5
    mathHelper5 = localValue3.y
    workingValue4 = localValue7 * mathHelper
    mathHelper5 = mathHelper5 + workingValue4
    workingValue4 = localValue3.z
    stateFlag = false
    stateFlag2 = false
    workingValue5 = false
    stateFlag3 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    mathHelper2(mathHelper3, mathHelper4, mathHelper5, workingValue4, stateFlag, stateFlag2, workingValue5, stateFlag3)
    mathHelper2 = Wait
    mathHelper3 = workingValue7
    mathHelper2(mathHelper3)
  end
  workingValue9 = GetOffsetFromEntityInWorldCoords
  modelHash = localValue1.entity
  workingValue3 = 0.5
  number = 1.5
  mathHelper = 0.0
  workingValue9 = workingValue9(modelHash, workingValue3, number, mathHelper)
  modelHash = Wait
  workingValue3 = GetAnimDuration
  number = "promt@jail_4"
  mathHelper = "jail_exit_open_ped"
  workingValue3 = workingValue3(number, mathHelper)
  workingValue3 = workingValue3 * 1000
  workingValue3 = workingValue3 - 7000
  modelHash(workingValue3)
  modelHash = GetOffsetFromEntityInWorldCoords
  workingValue3 = localValue1.entity
  number = 0.5
  mathHelper = -1.0
  mathHelper2 = 0.0
  modelHash = modelHash(workingValue3, number, mathHelper, mathHelper2)
  localValue5 = modelHash
  modelHash = SetEntityCoordsNoOffset
  workingValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue3 = workingValue3()
  number = localValue5.x
  mathHelper = localValue5.y
  mathHelper2 = localValue5.z
  mathHelper3 = false
  mathHelper4 = false
  mathHelper5 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  modelHash(workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5)
  modelHash = text3
  workingValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue3 = workingValue3()
  number = "promt@jail_5"
  mathHelper = "jail_exit_ped"
  modelHash(workingValue3, number, mathHelper)
  modelHash = SetEntityHeading
  workingValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue3 = workingValue3()
  number = localValue2
  -- Beginner: Change the direction an entity is facing.
  modelHash(workingValue3, number)
  modelHash = SetEntityCollision
  workingValue3 = localValue1.entity
  number = false
  mathHelper = false
  modelHash(workingValue3, number, mathHelper)
  modelHash = Wait
  workingValue3 = GetAnimDuration
  number = "promt@jail_5"
  mathHelper = "jail_exit_ped"
  workingValue3 = workingValue3(number, mathHelper)
  workingValue3 = workingValue3 * 1000
  modelHash(workingValue3)
  modelHash = SetEntityCoordsNoOffset
  workingValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue3 = workingValue3()
  number = workingValue9.x
  mathHelper = workingValue9.y
  mathHelper2 = workingValue9.z
  mathHelper3 = false
  mathHelper4 = false
  mathHelper5 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  modelHash(workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5)
  modelHash = SetEntityHeading
  workingValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue3 = workingValue3()
  number = localValue2 + 180.0
  -- Beginner: Change the direction an entity is facing.
  modelHash(workingValue3, number)
  modelHash = SetEntityCollision
  workingValue3 = localValue1.entity
  number = true
  mathHelper = true
  modelHash(workingValue3, number, mathHelper)
  modelHash = text3
  workingValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue3 = workingValue3()
  number = "prompt@jail"
  mathHelper = "jail_exit_close"
  modelHash(workingValue3, number, mathHelper)
  modelHash = Wait
  workingValue3 = 2500
  modelHash(workingValue3)
  modelHash = GetEntityCoords
  workingValue3 = localValue1.entity
  -- Beginner: result below is entityCoords.
  modelHash = modelHash(workingValue3)
  workingValue3 = GetOffsetFromEntityInWorldCoords
  number = localValue1.entity
  mathHelper = 0.5
  mathHelper2 = 0.0
  mathHelper3 = 0.0
  workingValue3 = workingValue3(number, mathHelper, mathHelper2, mathHelper3)
  localValue5 = workingValue3
  workingValue3 = localValue5.x
  number = modelHash.x
  localValue6 = workingValue3 - number
  workingValue3 = localValue5.y
  number = modelHash.y
  localValue7 = workingValue3 - number
  workingValue3 = 1
  number = workingValue8
  mathHelper = 1
  for mathHelper2 = workingValue3, number, mathHelper do
    mathHelper3 = mathHelper2 / workingValue8
    mathHelper4 = SetEntityCoords
    mathHelper5 = localValue1.entity
    workingValue4 = modelHash.x
    stateFlag = localValue6 * mathHelper3
    workingValue4 = workingValue4 + stateFlag
    stateFlag = modelHash.y
    stateFlag2 = localValue7 * mathHelper3
    stateFlag = stateFlag + stateFlag2
    stateFlag2 = modelHash.z
    workingValue5 = false
    stateFlag3 = false
    stateFlag4 = false
    stateFlag5 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    mathHelper4(mathHelper5, workingValue4, stateFlag, stateFlag2, workingValue5, stateFlag3, stateFlag4, stateFlag5)
    mathHelper4 = Wait
    mathHelper5 = workingValue7
    mathHelper4(mathHelper5)
  end
  workingValue3 = Wait
  number = GetAnimDuration
  mathHelper = "prompt@jail"
  mathHelper2 = "jail_exit_close"
  number = number(mathHelper, mathHelper2)
  number = number * 1000
  number = number - 2500
  number = number - 2000
  workingValue3(number)
end
dataCollection4.playExitSequence = workingValue2

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash
  localValue2 = SetNuiFocus
  localValue3 = false
  localValue4 = false
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  localValue2(localValue3, localValue4)
  localValue2 = localValue1.camera
  if localValue2 then
    localValue2 = localValue1.camera
    localValue3 = localValue2
    localValue2 = localValue2.destroy
    localValue2(localValue3)
    localValue1.camera = nil
  end
  localValue2 = DetachEntity
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = true
  localValue5 = false
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = GetEntityHeading
  localValue3 = localValue1.entity
  -- Beginner: result below is heading.
  localValue2 = localValue2(localValue3)
  localValue3 = GetOffsetFromEntityInWorldCoords
  localValue4 = localValue1.entity
  localValue5 = 0.0
  localValue6 = 0.0
  localValue7 = 0.55
  localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue4 = SetEntityCoordsNoOffset
  localValue5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  localValue6 = localValue3.x
  localValue7 = localValue3.y
  workingValue7 = localValue3.z
  workingValue8 = false
  workingValue9 = false
  modelHash = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue4(localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash)
  localValue4 = SetEntityHeading
  localValue5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  localValue6 = localValue2 - 173.0
  -- Beginner: Change the direction an entity is facing.
  localValue4(localValue5, localValue6)
  localValue4 = text3
  localValue5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  localValue6 = "promt@jail_2"
  localValue7 = "jail_enter_off_ped"
  localValue4(localValue5, localValue6, localValue7)
  localValue4 = Wait
  localValue5 = 1000
  localValue4(localValue5)
  localValue4 = localValue1.screwDriver
  if localValue4 then
    localValue4 = DoesEntityExist
    localValue5 = localValue1.screwDriver
    localValue4 = localValue4(localValue5)
    if localValue4 then
      localValue4 = DeleteEntity
      localValue5 = localValue1.screwDriver
      -- Beginner: Delete a GTA entity.
      localValue4(localValue5)
      localValue1.screwDriver = nil
    end
  end
  localValue4 = Wait
  localValue5 = GetAnimDuration
  localValue6 = "promt@jail_2"
  localValue7 = "jail_enter_off_ped"
  localValue5 = localValue5(localValue6, localValue7)
  localValue5 = localValue5 * 1000
  localValue5 = localValue5 - 1000
  localValue4(localValue5)
end
dataCollection4.cancelWithAnimation = workingValue2

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue1.isRunning = false
  localValue1.isInMinigame = false
  localValue2 = dataCollection4.activeInstance
  if localValue2 == localValue1 then
    dataCollection4.activeInstance = nil
  end
  localValue2 = SetNuiFocus
  localValue3 = false
  localValue4 = false
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  localValue2(localValue3, localValue4)
  localValue2 = localValue1.screwDriver
  if localValue2 then
    localValue2 = DoesEntityExist
    localValue3 = localValue1.screwDriver
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = DeleteEntity
      localValue3 = localValue1.screwDriver
      -- Beginner: Delete a GTA entity.
      localValue2(localValue3)
      localValue1.screwDriver = nil
    end
  end
  localValue2 = localValue1.screwObject
  if localValue2 then
    localValue2 = DoesEntityExist
    localValue3 = localValue1.screwObject
    localValue2 = localValue2(localValue3)
    if localValue2 then
      localValue2 = SetEntityDrawOutline
      localValue3 = localValue1.screwObject
      localValue4 = false
      localValue2(localValue3, localValue4)
      localValue2 = DeleteEntity
      localValue3 = localValue1.screwObject
      -- Beginner: Delete a GTA entity.
      localValue2(localValue3)
      localValue1.screwObject = nil
    end
  end
  localValue2 = localValue1.camera
  if localValue2 then
    localValue2 = localValue1.camera
    localValue3 = localValue2
    localValue2 = localValue2.destroy
    localValue2(localValue3)
    localValue1.camera = nil
  end
  localValue2 = DetachEntity
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = true
  localValue5 = false
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = localValue1.animator
  if localValue2 then
    localValue2 = localValue1.animator
    localValue3 = localValue2
    localValue2 = localValue2.stop
    localValue2(localValue3)
    localValue1.animator = nil
  end
end
dataCollection4.cleanup = workingValue2

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash, workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workingValue4, stateFlag, stateFlag2, workingValue5, stateFlag3, stateFlag4
  localValue2 = false
  localValue1.isRunning = true
  dataCollection4.activeInstance = localValue1
  localValue4 = localValue1
  localValue3 = localValue1.createObjects
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue4 = localValue1
    localValue3 = localValue1.cleanup
    localValue3(localValue4)
    return
  end
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = ClearPedTasks
  localValue5 = localValue3
  localValue4(localValue5)
  localValue4 = GetOffsetFromEntityInWorldCoords
  localValue5 = localValue1.entity
  localValue6 = 0.0
  localValue7 = -0.5
  workingValue7 = 0.55
  localValue4 = localValue4(localValue5, localValue6, localValue7, workingValue7)
  localValue5 = SetEntityCoordsNoOffset
  localValue6 = localValue3
  localValue7 = localValue4.x
  workingValue7 = localValue4.y
  workingValue8 = localValue4.z
  workingValue9 = false
  modelHash = false
  workingValue3 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue5(localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash, workingValue3)
  localValue5 = SetEntityHeading
  localValue6 = localValue3
  localValue7 = GetEntityHeading
  workingValue7 = localValue1.entity
  localValue7, workingValue7, workingValue8, workingValue9, modelHash, workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workingValue4, stateFlag, stateFlag2, workingValue5, stateFlag3, stateFlag4 = localValue7(workingValue7)
  -- Beginner: Change the direction an entity is facing.
  localValue5(localValue6, localValue7, workingValue7, workingValue8, workingValue9, modelHash, workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workingValue4, stateFlag, stateFlag2, workingValue5, stateFlag3, stateFlag4)
  localValue5 = GetAnimDuration
  localValue6 = "promt@jail_3"
  localValue7 = "jail_enter_ped"
  localValue5 = localValue5(localValue6, localValue7)
  if not localValue5 then
    localValue5 = 0.0
  end
  localValue5 = localValue5 * 1000
  if localValue5 <= 0 then
    localValue5 = 2000
  end
  localValue6 = text3
  localValue7 = localValue3
  workingValue7 = "promt@jail_3"
  workingValue8 = "jail_enter_ped"
  workingValue9 = 8.0
  modelHash = -8.0
  workingValue3 = -1
  number = 2
  localValue6(localValue7, workingValue7, workingValue8, workingValue9, modelHash, workingValue3, number)
  localValue6 = Wait
  localValue7 = 2000
  localValue6(localValue7)
  localValue7 = localValue1
  localValue6 = localValue1.attachScrewdriver
  workingValue7 = 1
  localValue6(localValue7, workingValue7)
  localValue6 = math
  localValue6 = localValue6.max
  localValue7 = 0
  workingValue7 = localValue5 - 2000
  localValue6 = localValue6(localValue7, workingValue7)
  localValue7 = Wait
  workingValue7 = localValue6
  localValue7(workingValue7)
  localValue7 = AttachEntityToEntity
  workingValue7 = localValue3
  workingValue8 = localValue1.entity
  workingValue9 = 0
  modelHash = 0.0
  workingValue3 = 0.0
  number = 0.55
  mathHelper = 0.0
  mathHelper2 = 0.0
  mathHelper3 = 0.0
  mathHelper4 = false
  mathHelper5 = false
  workingValue4 = true
  stateFlag = false
  stateFlag2 = 2
  workingValue5 = true
  -- Beginner: Attach one entity to another entity.
  localValue7(workingValue7, workingValue8, workingValue9, modelHash, workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workingValue4, stateFlag, stateFlag2, workingValue5)
  localValue7 = CMG
  localValue7 = localValue7.TriggerServerCallback
  workingValue7 = "343493b5b7"
  localValue7 = localValue7(workingValue7)
  if not localValue7 then
    localValue7 = {}
  end
  while true do
    workingValue7 = localValue1.isRunning
    if not workingValue7 then
      break
    end
    workingValue7 = #localValue7
    if not (workingValue7 < 4) then
      break
    end
    workingValue8 = localValue1
    workingValue7 = localValue1.selectScrew
    workingValue9 = localValue7
    workingValue7 = workingValue7(workingValue8, workingValue9)
    if not workingValue7 then
      workingValue9 = localValue1
      workingValue8 = localValue1.cancelWithAnimation
      workingValue8(workingValue9)
      localValue1.isRunning = false
      break
    end
    workingValue8 = AttachEntityToEntity
    workingValue9 = localValue3
    modelHash = localValue1.entity
    workingValue3 = 0
    number = 0.0
    mathHelper = 0.0
    mathHelper2 = 0.55
    mathHelper3 = 0.0
    mathHelper4 = 0.0
    mathHelper5 = -180.0
    workingValue4 = false
    stateFlag = false
    stateFlag2 = true
    workingValue5 = false
    stateFlag3 = 2
    stateFlag4 = true
    -- Beginner: Attach one entity to another entity.
    workingValue8(workingValue9, modelHash, workingValue3, number, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workingValue4, stateFlag, stateFlag2, workingValue5, stateFlag3, stateFlag4)
    workingValue9 = localValue1
    workingValue8 = localValue1.handleScrewMinigame
    modelHash = workingValue7
    workingValue8 = workingValue8(workingValue9, modelHash)
    workingValue9 = localValue1.camera
    if workingValue9 then
      workingValue9 = localValue1.camera
      modelHash = workingValue9
      workingValue9 = workingValue9.destroy
      workingValue9(modelHash)
      localValue1.camera = nil
    end
    if not workingValue8 then
      break
    end
    workingValue9 = CMG
    workingValue9 = workingValue9.TriggerServerCallback
    modelHash = "2a18065f82"
    workingValue3 = workingValue7
    workingValue9 = workingValue9(modelHash, workingValue3)
    if not workingValue9 then
      break
    end
    workingValue9 = table
    workingValue9 = workingValue9.insert
    modelHash = localValue7
    workingValue3 = workingValue7
    workingValue9(modelHash, workingValue3)
    workingValue9 = #localValue7
    if workingValue9 < 4 then
      workingValue9 = dataCollection.new
      modelHash = localValue1.entity
      workingValue9 = workingValue9(modelHash)
      localValue1.camera = workingValue9
    end
  end
  workingValue7 = localValue1.screwDriver
  if workingValue7 then
    workingValue7 = DoesEntityExist
    workingValue8 = localValue1.screwDriver
    workingValue7 = workingValue7(workingValue8)
    if workingValue7 then
      workingValue7 = DeleteEntity
      workingValue8 = localValue1.screwDriver
      -- Beginner: Delete a GTA entity.
      workingValue7(workingValue8)
      localValue1.screwDriver = nil
    end
  end
  workingValue7 = localValue1.screwObject
  if workingValue7 then
    workingValue7 = DoesEntityExist
    workingValue8 = localValue1.screwObject
    workingValue7 = workingValue7(workingValue8)
    if workingValue7 then
      workingValue7 = SetEntityDrawOutline
      workingValue8 = localValue1.screwObject
      workingValue9 = false
      workingValue7(workingValue8, workingValue9)
    end
  end
  workingValue7 = #localValue7
  if workingValue7 >= 4 then
    workingValue7 = false
    workingValue8 = cmgOperation.toiletEscape
    if workingValue8 then
      workingValue9 = workingValue8.instructionsEscape
      if workingValue9 then
        goto continueAtStep197
      end
    end
    workingValue9 = "[E] - Escape   [X] - Cancel"
    ::continueAtStep197::
    modelHash = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.

    -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
    function workingValue3()
      local workingValue, number2, number3, number4, number5, number6
      workingValue = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      workingValue = workingValue()
      workingValue = workingValue + 30000
      while true do
        number2 = localValue1.isRunning
        if not number2 then
          break
        end
        number2 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        number2 = number2()
        if not (workingValue > number2) then
          break
        end
        number2 = BeginTextCommandDisplayHelp
        number3 = "STRING"
        number2(number3)
        number2 = AddTextComponentSubstringPlayerName
        number3 = workingValue9
        number2(number3)
        number2 = EndTextCommandDisplayHelp
        number3 = 0
        number4 = false
        number5 = false
        number6 = -1
        number2(number3, number4, number5, number6)
        number2 = IsDisabledControlJustPressed
        number3 = 0
        number4 = 38
        number2 = number2(number3, number4)
        if number2 then
          number2 = localValue1
          number3 = number2
          number2 = number2.playExitSequence
          number2(number3)
          number2 = true
          workingValue7 = number2
          break
        end
        number2 = IsDisabledControlJustPressed
        number3 = 0
        number4 = 73
        number2 = number2(number3, number4)
        if number2 then
          number2 = localValue1
          number3 = number2
          number2 = number2.cancelWithAnimation
          number2(number3)
          localValue1.isRunning = false
          break
        end
        number2 = Wait
        number3 = 0
        number2(number3)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    modelHash(workingValue3)
    while true do
      modelHash = localValue1.isRunning
      if not modelHash or workingValue7 then
        break
      end
      modelHash = Wait
      workingValue3 = 100
      modelHash(workingValue3)
    end
    localValue2 = workingValue7
  end
  if localValue2 then
    workingValue7 = CMG
    workingValue7 = workingValue7.TriggerServerCallback
    workingValue8 = "a44731beab"
    workingValue7(workingValue8)
  else
    workingValue7 = CMG
    workingValue7 = workingValue7.TriggerServerCallback
    workingValue8 = "87baecbdcf"
    workingValue7(workingValue8)
  end
  workingValue8 = localValue1
  workingValue7 = localValue1.cleanup
  workingValue7(workingValue8)
end
dataCollection4.start = workingValue2
workingValue2 = _G
workingValue2.CMG_PrisonToiletScrewGame = dataCollection4
