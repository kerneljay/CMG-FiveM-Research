--[[
    Beginner Guide: cl_prisonToiletEscapeMinigame.lua
    =================================================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Prison Toilet Escape Minigame
    ==============================================

    File: cmg/prod/client/hmp/cl_prisonToiletEscapeMinigame.lua
    Purpose: This file contains prison/HMP gameplay.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Decompiled-code note:
      This file came from decompiled Lua. The repeated AI-cleanup boilerplate
      has been removed. Any remaining SHX-style values are compiler/decompiler
      temporaries whose meaning changes repeatedly; follow the surrounding API
      call and the comments rather than treating one SHX variable as one concept.

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

    Config/data used:
      * cfg/cfg_prison

    Network/hash identifiers found: 4
      They are intentionally left unchanged because matching server code may use them.
      * 343493b5b7
      * 2a18065f82
      * a44731beab
      * 87baecbdcf

]]
local cmgCall, textValue, workValue6, dataTable, textValue2, dataTable2, dataTable3, textValue3, textValue4, dataTable4, workValue2
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue = "cfg/cfg_prison"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue)
function textValue(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  arg3 = 1
  arg4 = #arg1
  arg5 = 1
  for arg6 = arg3, arg4, arg5 do
    arg7 = arg1[arg6]
    if arg7 == arg2 then
      arg7 = true
      return arg7
    end
  end
  arg3 = false
  return arg3
end
function workValue6(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, workValue7, workValue8, workValue9, modelHash, workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workValue4, flag, flag2, workValue5, flag3
  if arg1 then
    arg3 = DoesEntityExist
    arg4 = arg1
    arg3 = arg3(arg4)
    if arg3 then
      goto flow_label_10
    end
  end
  arg3 = false
  return arg3
  ::flow_label_10::
  arg3 = GetNuiCursorPosition
  arg3, arg4 = arg3()
  arg5 = GetActiveScreenResolution
  arg5, arg6 = arg5()
  arg7 = GetEntityCoords
  workValue7 = arg1
  -- Beginner: result below is entityCoords.
  arg7 = arg7(workValue7)
  workValue7 = World3dToScreen2d
  workValue8 = arg7.x
  workValue9 = arg7.y
  modelHash = arg7.z
  workValue7, workValue8, workValue9 = workValue7(workValue8, workValue9, modelHash)
  if not workValue7 then
    modelHash = false
    return modelHash
  end
  modelHash = GetEntityModel
  workValue3 = arg1
  -- Beginner: result below is modelHash.
  modelHash = modelHash(workValue3)
  workValue3 = GetModelDimensions
  numberValue = modelHash
  workValue3, numberValue = workValue3(numberValue)
  mathHelper = math
  mathHelper = mathHelper.max
  mathHelper2 = math
  mathHelper2 = mathHelper2.abs
  mathHelper3 = numberValue.x
  mathHelper4 = workValue3.x
  mathHelper3 = mathHelper3 - mathHelper4
  mathHelper2 = mathHelper2(mathHelper3)
  mathHelper3 = math
  mathHelper3 = mathHelper3.abs
  mathHelper4 = numberValue.y
  mathHelper5 = workValue3.y
  mathHelper4 = mathHelper4 - mathHelper5
  mathHelper3 = mathHelper3(mathHelper4)
  mathHelper4 = math
  mathHelper4 = mathHelper4.abs
  mathHelper5 = numberValue.z
  workValue4 = workValue3.z
  mathHelper5 = mathHelper5 - workValue4
  mathHelper4, mathHelper5, workValue4, flag, flag2, workValue5, flag3 = mathHelper4(mathHelper5)
  mathHelper = mathHelper(mathHelper2, mathHelper3, mathHelper4, mathHelper5, workValue4, flag, flag2, workValue5, flag3)
  mathHelper2 = GetFinalRenderedCamCoord
  mathHelper2 = mathHelper2()
  mathHelper3 = mathHelper2 - arg7
  mathHelper3 = #mathHelper3
  mathHelper4 = mathHelper * 100.0
  mathHelper5 = math
  mathHelper5 = mathHelper5.max
  workValue4 = mathHelper3
  flag = 1.0
  mathHelper5 = mathHelper5(workValue4, flag)
  mathHelper4 = mathHelper4 / mathHelper5
  mathHelper4 = arg2 + mathHelper4
  mathHelper5 = workValue8 * arg5
  workValue4 = workValue9 * arg6
  flag = arg3 - mathHelper5
  flag2 = arg4 - workValue4
  workValue5 = flag * flag
  flag3 = flag2 * flag2
  workValue5 = workValue5 + flag3
  flag3 = mathHelper4 * mathHelper4
  workValue5 = workValue5 <= flag3
  return workValue5
end
dataTable = {}
dataTable.__index = dataTable
function textValue2(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = setmetatable
  arg3 = {}
  arg4 = dataTable
  arg2 = arg2(arg3, arg4)
  arg2.entity = arg1
  arg3 = CreateCam
  arg4 = "DEFAULT_SCRIPTED_CAMERA"
  arg5 = true
  -- Beginner: result below is cameraHandle.
  arg3 = arg3(arg4, arg5)
  arg2.cam = arg3
  arg2.isActive = false
  return arg2
end
dataTable.new = textValue2
function textValue2(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, workValue7, workValue8, workValue9, modelHash, workValue3, numberValue
  arg5 = DoesEntityExist
  arg6 = arg1.entity
  arg5 = arg5(arg6)
  if not arg5 then
    return
  end
  arg5 = GetOffsetFromEntityInWorldCoords
  arg6 = arg1.entity
  arg7 = arg2[1]
  arg7 = arg7.x
  workValue7 = arg2[1]
  workValue7 = workValue7.y
  workValue8 = arg2[1]
  workValue8 = workValue8.z
  arg5 = arg5(arg6, arg7, workValue7, workValue8)
  arg6 = nil
  if not arg4 then
    arg7 = GetEntityRotation
    workValue7 = arg1.entity
    arg7 = arg7(workValue7)
    workValue7 = vector3
    workValue8 = arg2[2]
    workValue8 = workValue8.x
    workValue9 = arg7.x
    workValue8 = workValue8 + workValue9
    workValue9 = arg2[2]
    workValue9 = workValue9.y
    modelHash = arg7.y
    workValue9 = workValue9 + modelHash
    modelHash = arg2[2]
    modelHash = modelHash.z
    workValue3 = arg7.z
    modelHash = modelHash + workValue3
    workValue7 = workValue7(workValue8, workValue9, modelHash)
    arg6 = workValue7
  else
    arg6 = arg2[2]
  end
  if arg3 then
    arg7 = arg1.isActive
    if arg7 then
      arg7 = CreateCam
      workValue7 = "DEFAULT_SCRIPTED_CAMERA"
      workValue8 = true
      -- Beginner: result below is cameraHandle.
      arg7 = arg7(workValue7, workValue8)
      workValue7 = SetCamCoord
      workValue8 = arg7
      workValue9 = arg5.x
      modelHash = arg5.y
      workValue3 = arg5.z
      workValue7(workValue8, workValue9, modelHash, workValue3)
      workValue7 = SetCamRot
      workValue8 = arg7
      workValue9 = arg6.x
      modelHash = arg6.y
      workValue3 = arg6.z
      numberValue = 2
      workValue7(workValue8, workValue9, modelHash, workValue3, numberValue)
      workValue7 = SetCamFov
      workValue8 = arg7
      workValue9 = 30.0
      workValue7(workValue8, workValue9)
      workValue7 = SetCamActive
      workValue8 = arg7
      workValue9 = true
      workValue7(workValue8, workValue9)
      workValue7 = SetCamActiveWithInterp
      workValue8 = arg7
      workValue9 = arg1.cam
      modelHash = 1500
      workValue3 = 1
      numberValue = 1
      workValue7(workValue8, workValue9, modelHash, workValue3, numberValue)
      workValue7 = SetCamActive
      workValue8 = arg1.cam
      workValue9 = false
      workValue7(workValue8, workValue9)
      workValue7 = DestroyCam
      workValue8 = arg1.cam
      workValue9 = false
      workValue7(workValue8, workValue9)
      arg1.cam = arg7
  end
  else
    arg7 = SetCamCoord
    workValue7 = arg1.cam
    workValue8 = arg5.x
    workValue9 = arg5.y
    modelHash = arg5.z
    arg7(workValue7, workValue8, workValue9, modelHash)
    arg7 = SetCamRot
    workValue7 = arg1.cam
    workValue8 = arg6.x
    workValue9 = arg6.y
    modelHash = arg6.z
    workValue3 = 2
    arg7(workValue7, workValue8, workValue9, modelHash, workValue3)
    arg7 = SetCamFov
    workValue7 = arg1.cam
    workValue8 = 30.0
    arg7(workValue7, workValue8)
    arg7 = arg1.isActive
    if not arg7 then
      arg7 = SetCamActive
      workValue7 = arg1.cam
      workValue8 = true
      arg7(workValue7, workValue8)
    end
  end
end
dataTable.setCamera = textValue2
function textValue2(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, workValue7, workValue8
  arg4 = RenderScriptCams
  arg5 = true
  arg6 = arg2 or arg6
  if not arg2 then
    arg6 = false
  end
  arg7 = arg3 or arg7
  if not arg3 then
    arg7 = 0
  end
  workValue7 = true
  workValue8 = true
  arg4(arg5, arg6, arg7, workValue7, workValue8)
  arg1.isActive = true
end
dataTable.activate = textValue2
function textValue2(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, workValue7, workValue8
  arg4 = RenderScriptCams
  arg5 = false
  arg6 = arg2 or arg6
  if not arg2 then
    arg6 = false
  end
  arg7 = arg3 or arg7
  if not arg3 then
    arg7 = 0
  end
  workValue7 = true
  workValue8 = true
  arg4(arg5, arg6, arg7, workValue7, workValue8)
  arg1.isActive = false
end
dataTable.deactivate = textValue2
function textValue2(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = arg1.isActive
  if arg2 then
    arg3 = arg1
    arg2 = arg1.deactivate
    arg4 = true
    arg5 = 1500
    arg2(arg3, arg4, arg5)
    arg2 = Wait
    arg3 = 1500
    arg2(arg3)
  end
  arg2 = arg1.cam
  if arg2 then
    arg2 = DestroyCam
    arg3 = arg1.cam
    arg4 = false
    arg2(arg3, arg4)
    arg1.cam = nil
  end
  arg1.isActive = false
end
dataTable.destroy = textValue2
textValue2 = "prompt@jail"
dataTable2 = {}
dataTable3 = "jail_work_left_up"
textValue3 = "jail_work_left_down"
textValue4 = "jail_work_right_up"
dataTable4 = "jail_work_right_down"
dataTable2[1] = dataTable3
dataTable2[2] = textValue3
dataTable2[3] = textValue4
dataTable2[4] = dataTable4
dataTable3 = {}
dataTable3.__index = dataTable3
function textValue3(arg1)
  local arg2, arg3, arg4
  arg2 = setmetatable
  arg3 = {}
  arg4 = dataTable3
  arg2 = arg2(arg3, arg4)
  arg2.ped = arg1
  arg2.currentAnim = nil
  arg2.animSpeed = 1.0
  return arg2
end
dataTable3.new = textValue3
function textValue3(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, workValue7, workValue8, workValue9, modelHash, workValue3, numberValue, mathHelper, mathHelper2
  arg3 = dataTable2
  arg3 = arg3[arg2]
  if not arg3 then
    return
  end
  arg1.currentAnim = arg3
  arg4 = CMG
  arg4 = arg4.loadAnimDict
  arg5 = textValue2
  -- Beginner: Load a GTA animation dictionary before using it.
  arg4(arg5)
  arg4 = TaskPlayAnim
  arg5 = arg1.ped
  arg6 = textValue2
  arg7 = arg3
  workValue7 = 8.0
  workValue8 = -8.0
  workValue9 = -1
  modelHash = 2
  workValue3 = 0.0
  numberValue = false
  mathHelper = false
  mathHelper2 = false
  -- Beginner: Play an animation on a ped.
  arg4(arg5, arg6, arg7, workValue7, workValue8, workValue9, modelHash, workValue3, numberValue, mathHelper, mathHelper2)
end
dataTable3.playScrewAnim = textValue3
function textValue3(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  arg3 = arg1.currentAnim
  if not arg3 then
    return
  end
  arg1.animSpeed = arg2
  arg3 = SetEntityAnimSpeed
  arg4 = arg1.ped
  arg5 = textValue2
  arg6 = arg1.currentAnim
  arg7 = arg2
  arg3(arg4, arg5, arg6, arg7)
end
dataTable3.setSpeed = textValue3
function textValue3(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = arg1.currentAnim
  if not arg2 then
    arg2 = 0.0
    return arg2
  end
  arg2 = GetEntityAnimCurrentTime
  arg3 = arg1.ped
  arg4 = textValue2
  arg5 = arg1.currentAnim
  return arg2(arg3, arg4, arg5)
end
dataTable3.getCurrentTime = textValue3
function textValue3(arg1, arg2, arg3)
  local arg4, arg5
  arg5 = arg1
  arg4 = arg1.getCurrentTime
  arg4 = arg4(arg5)
  arg5 = arg2 <= arg4 and arg3 >= arg4
  return arg5
end
dataTable3.isInTimeRange = textValue3
function textValue3(arg1)
  local arg2, arg3
  arg2 = ClearPedTasks
  arg3 = arg1.ped
  arg2(arg3)
  arg1.currentAnim = nil
end
dataTable3.stop = textValue3
function textValue3(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local workValue7, workValue8, workValue9, modelHash, workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workValue4
  workValue7 = CMG
  workValue7 = workValue7.loadAnimDict
  workValue8 = arg2
  -- Beginner: Load a GTA animation dictionary before using it.
  workValue7(workValue8)
  workValue7 = HasAnimDictLoaded
  workValue8 = arg2
  workValue7 = workValue7(workValue8)
  if not workValue7 then
    workValue7 = false
    return workValue7
  end
  workValue7 = TaskPlayAnim
  workValue8 = arg1
  workValue9 = arg2
  modelHash = arg3
  workValue3 = arg4 or workValue3
  if not arg4 then
    workValue3 = 8.0
  end
  numberValue = arg5 or numberValue
  if not arg5 then
    numberValue = -8.0
  end
  mathHelper = arg6 or mathHelper
  if not arg6 then
    mathHelper = -1
  end
  mathHelper2 = arg7 or mathHelper2
  if not arg7 then
    mathHelper2 = 2
  end
  mathHelper3 = 0.0
  mathHelper4 = false
  mathHelper5 = false
  workValue4 = false
  -- Beginner: Play an animation on a ped.
  workValue7(workValue8, workValue9, modelHash, workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workValue4)
  workValue7 = true
  return workValue7
end
function textValue4()
  local arg1, arg2, arg3, arg4
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 14
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 15
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 16
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 17
  arg4 = true
  arg1(arg2, arg3, arg4)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 37
  arg4 = true
  arg1(arg2, arg3, arg4)
end
dataTable4 = {}
dataTable4.__index = dataTable4
dataTable4.activeInstance = nil
function workValue2(arg1)
  local arg2, arg3, arg4
  arg2 = setmetatable
  arg3 = {}
  arg4 = dataTable4
  arg2 = arg2(arg3, arg4)
  arg2.entity = arg1
  arg2.isRunning = false
  arg2.isInMinigame = false
  arg2.cameraAlternate = false
  arg2.inControlRange = false
  arg3 = dataTable.new
  arg4 = arg1
  arg3 = arg3(arg4)
  arg2.camera = arg3
  arg3 = dataTable3.new
  arg4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  arg3 = arg3(arg4)
  arg2.animator = arg3
  arg2.screwDriver = nil
  arg2.screwObject = nil
  return arg2
end
dataTable4.new = workValue2
function workValue2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue7, workValue8, workValue9, modelHash
  arg2 = cmgCall.toiletEscape
  if not arg2 then
    arg3 = false
    return arg3
  end
  arg3 = GetEntityCoords
  arg4 = arg1.entity
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4)
  arg4 = CMG
  arg4 = arg4.loadModel
  arg5 = arg2.screwDriverModel
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg4(arg5)
  arg4 = CreateObject
  arg5 = arg2.screwDriverModel
  arg6 = arg3.x
  arg7 = arg3.y
  workValue7 = arg3.z
  workValue7 = workValue7 - 10
  workValue8 = arg2.useNetworkedObjects
  workValue9 = true
  modelHash = false
  -- Beginner: result below is objectEntity.
  arg4 = arg4(arg5, arg6, arg7, workValue7, workValue8, workValue9, modelHash)
  arg1.screwDriver = arg4
  arg4 = DoesEntityExist
  arg5 = arg1.screwDriver
  arg4 = arg4(arg5)
  if not arg4 then
    arg4 = false
    return arg4
  end
  arg4 = SetEntityVisible
  arg5 = arg1.screwDriver
  arg6 = false
  arg7 = false
  arg4(arg5, arg6, arg7)
  arg4 = SetModelAsNoLongerNeeded
  arg5 = arg2.screwDriverModel
  arg4(arg5)
  arg4 = SetEntityCompletelyDisableCollision
  arg5 = arg1.screwDriver
  arg6 = false
  arg7 = true
  arg4(arg5, arg6, arg7)
  arg4 = CMG
  arg4 = arg4.loadModel
  arg5 = arg2.screwModel
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg4(arg5)
  arg4 = CreateObject
  arg5 = arg2.screwModel
  arg6 = arg3.x
  arg7 = arg3.y
  workValue7 = arg3.z
  workValue7 = workValue7 - 10
  workValue8 = arg2.useNetworkedObjects
  workValue9 = true
  modelHash = false
  -- Beginner: result below is objectEntity.
  arg4 = arg4(arg5, arg6, arg7, workValue7, workValue8, workValue9, modelHash)
  arg1.screwObject = arg4
  arg4 = DoesEntityExist
  arg5 = arg1.screwObject
  arg4 = arg4(arg5)
  if not arg4 then
    arg4 = false
    return arg4
  end
  arg4 = SetEntityVisible
  arg5 = arg1.screwObject
  arg6 = false
  arg7 = false
  arg4(arg5, arg6, arg7)
  arg4 = SetModelAsNoLongerNeeded
  arg5 = arg2.screwModel
  arg4(arg5)
  arg4 = SetEntityCompletelyDisableCollision
  arg5 = arg1.screwObject
  arg6 = false
  arg7 = true
  arg4(arg5, arg6, arg7)
  arg4 = true
  return arg4
end
dataTable4.createObjects = workValue2
function workValue2(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, workValue7, workValue8, workValue9, modelHash, workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workValue4
  arg3 = DoesEntityExist
  arg4 = arg1.screwDriver
  arg3 = arg3(arg4)
  if not arg3 then
    return
  end
  arg3 = SetEntityVisible
  arg4 = arg1.screwDriver
  arg5 = true
  arg6 = false
  arg3(arg4, arg5, arg6)
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  if 1 == arg2 or 2 == arg2 then
    arg4 = AttachEntityToEntity
    arg5 = arg1.screwDriver
    arg6 = arg3
    arg7 = GetPedBoneIndex
    workValue7 = arg3
    workValue8 = 18905
    arg7 = arg7(workValue7, workValue8)
    workValue7 = 0.1319
    workValue8 = 0.082
    workValue9 = -1.7E-4
    modelHash = 158.9
    workValue3 = -28.8
    numberValue = -8.86
    mathHelper = true
    mathHelper2 = true
    mathHelper3 = false
    mathHelper4 = true
    mathHelper5 = 1
    workValue4 = true
    -- Beginner: Attach one entity to another entity.
    arg4(arg5, arg6, arg7, workValue7, workValue8, workValue9, modelHash, workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workValue4)
  else
    arg4 = AttachEntityToEntity
    arg5 = arg1.screwDriver
    arg6 = arg3
    arg7 = GetPedBoneIndex
    workValue7 = arg3
    workValue8 = 57005
    arg7 = arg7(workValue7, workValue8)
    workValue7 = 0.1445
    workValue8 = 0.0838
    workValue9 = -0.0306
    modelHash = -8.9
    workValue3 = 40.15
    numberValue = 160.55
    mathHelper = true
    mathHelper2 = true
    mathHelper3 = false
    mathHelper4 = true
    mathHelper5 = 1
    workValue4 = true
    arg4(arg5, arg6, arg7, workValue7, workValue8, workValue9, modelHash, workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workValue4)
  end
end
dataTable4.attachScrewdriver = workValue2
function workValue2(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, workValue7, workValue8, workValue9, modelHash, workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workValue4
  arg5 = DoesEntityExist
  arg6 = arg1.screwObject
  arg5 = arg5(arg6)
  if not arg5 then
    return
  end
  arg5 = cmgCall.toiletEscape
  if arg5 then
    arg6 = arg5.screwOffsets
    arg6 = arg6[arg2]
    if arg6 then
      goto flow_label_15
    end
  end
  return
  ::flow_label_15::
  arg6 = arg5.screwOffsets
  arg6 = arg6[arg2]
  arg7 = 1 == arg2 or 2 == arg2
  workValue7 = GetEntityRotation
  workValue8 = arg1.entity
  workValue7 = workValue7(workValue8)
  workValue8 = arg6.screw
  workValue8 = workValue8.x
  if arg7 then
    workValue9 = -arg3
    if workValue9 then
      goto flow_label_34
    end
  end
  workValue9 = arg3
  ::flow_label_34::
  workValue8 = workValue8 + workValue9
  workValue9 = GetOffsetFromEntityInWorldCoords
  modelHash = arg1.entity
  workValue3 = workValue8
  numberValue = arg6.screw
  numberValue = numberValue.y
  mathHelper = arg6.screw
  mathHelper = mathHelper.z
  workValue9 = workValue9(modelHash, workValue3, numberValue, mathHelper)
  modelHash = SetEntityCoords
  workValue3 = arg1.screwObject
  numberValue = workValue9.x
  mathHelper = workValue9.y
  mathHelper2 = workValue9.z
  mathHelper3 = false
  mathHelper4 = false
  mathHelper5 = false
  workValue4 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  modelHash(workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workValue4)
  modelHash = SetEntityRotation
  workValue3 = arg1.screwObject
  numberValue = workValue7.x
  numberValue = numberValue + arg4
  mathHelper = workValue7.y
  if arg7 then
    mathHelper2 = -90.0
    if mathHelper2 then
      goto flow_label_66
    end
  end
  mathHelper2 = 90.0
  ::flow_label_66::
  mathHelper = mathHelper + mathHelper2
  mathHelper2 = workValue7.z
  mathHelper3 = 2
  mathHelper4 = true
  modelHash(workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4)
  modelHash = SetEntityVisible
  workValue3 = arg1.screwObject
  numberValue = true
  mathHelper = false
  modelHash(workValue3, numberValue, mathHelper)
end
dataTable4.positionScrew = workValue2
function workValue2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue7, workValue8, workValue9
  arg2 = arg1.isInMinigame
  if arg2 then
    arg2 = arg1.cameraAlternate
    if not arg2 then
      goto flow_label_8
    end
  end
  return
  ::flow_label_8::
  arg1.cameraAlternate = true
  arg2 = arg1.camera
  arg3 = arg2
  arg2 = arg2.setCamera
  arg4 = {}
  arg5 = vector3
  arg6 = 0.0
  arg7 = 0.0
  workValue7 = 1.0
  arg5 = arg5(arg6, arg7, workValue7)
  arg6 = vector3
  arg7 = 0.0
  workValue7 = 0.0
  workValue8 = GetEntityHeading
  workValue9 = arg1.entity
  -- Beginner: result below is heading.
  workValue8 = workValue8(workValue9)
  workValue8 = workValue8 + 180.0
  arg6, arg7, workValue7, workValue8, workValue9 = arg6(arg7, workValue7, workValue8)
  arg4[1] = arg5
  arg4[2] = arg6
  arg4[3] = arg7
  arg4[4] = workValue7
  arg4[5] = workValue8
  arg4[6] = workValue9
  arg5 = true
  arg6 = true
  arg2(arg3, arg4, arg5, arg6)
  arg2 = arg1.camera
  arg3 = arg2
  arg2 = arg2.activate
  arg4 = true
  arg5 = 300
  arg2(arg3, arg4, arg5)
end
dataTable4.switchToAlternateCamera = workValue2
function workValue2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = arg1.isInMinigame
  if arg2 then
    arg2 = arg1.cameraAlternate
    if arg2 then
      goto flow_label_8
    end
  end
  return
  ::flow_label_8::
  arg1.cameraAlternate = false
  arg2 = cmgCall.toiletEscape
  if arg2 then
    arg3 = arg2.screwOffsets
    arg4 = arg1.currentScrewIndex
    arg3 = arg3[arg4]
    if arg3 then
      goto flow_label_18
    end
  end
  return
  ::flow_label_18::
  arg3 = arg2.screwOffsets
  arg4 = arg1.currentScrewIndex
  arg3 = arg3[arg4]
  arg3 = arg3.cam
  arg4 = arg1.camera
  arg5 = arg4
  arg4 = arg4.setCamera
  arg6 = arg3
  arg7 = true
  arg4(arg5, arg6, arg7)
  arg4 = arg1.camera
  arg5 = arg4
  arg4 = arg4.activate
  arg6 = true
  arg7 = 300
  arg4(arg5, arg6, arg7)
end
dataTable4.switchToScrewCamera = workValue2
function workValue2(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, workValue7, workValue8, workValue9, modelHash, workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5
  arg3 = cmgCall.toiletEscape
  if not arg3 then
    arg4 = false
    return arg4
  end
  arg4 = 1 == arg2 or 2 == arg2
  arg1.isInMinigame = true
  arg1.currentScrewIndex = arg2
  arg1.cameraAlternate = false
  arg5 = arg3.screwOffsets
  arg5 = arg5[arg2]
  arg5 = arg5.cam
  arg6 = arg1.camera
  arg7 = arg6
  arg6 = arg6.setCamera
  workValue7 = arg5
  workValue8 = false
  arg6(arg7, workValue7, workValue8)
  arg6 = arg1.camera
  arg7 = arg6
  arg6 = arg6.activate
  workValue7 = true
  workValue8 = 1500
  arg6(arg7, workValue7, workValue8)
  arg7 = arg1
  arg6 = arg1.positionScrew
  workValue7 = arg2
  workValue8 = 0
  workValue9 = 0
  arg6(arg7, workValue7, workValue8, workValue9)
  arg7 = arg1
  arg6 = arg1.attachScrewdriver
  workValue7 = arg2
  arg6(arg7, workValue7)
  arg6 = arg1.animator
  arg7 = arg6
  arg6 = arg6.playScrewAnim
  workValue7 = arg2
  arg6(arg7, workValue7)
  arg6 = Wait
  arg7 = 100
  arg6(arg7)
  arg6 = {}
  arg6.start = 0.25
  arg6.finish = 0.75
  arg1.inControlRange = false
  arg7 = false
  workValue7 = 0.0
  workValue8 = 0.0
  workValue9 = SetEntityVisible
  modelHash = arg1.screwObject
  workValue3 = true
  numberValue = false
  workValue9(modelHash, workValue3, numberValue)
  workValue9 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.
  function modelHash()
    local workValue, numberValue2, numberValue3
    while true do
      workValue = arg1.isRunning
      if not workValue then
        break
      end
      workValue = arg1.isInMinigame
      if not workValue then
        break
      end
      workValue = IsDisabledControlJustPressed
      numberValue2 = 0
      numberValue3 = 45
      workValue = workValue(numberValue2, numberValue3)
      if workValue then
        workValue = arg1
        numberValue2 = workValue
        workValue = workValue.switchToAlternateCamera
        workValue(numberValue2)
      end
      workValue = IsControlJustReleased
      numberValue2 = 0
      numberValue3 = 45
      workValue = workValue(numberValue2, numberValue3)
      if workValue then
        workValue = arg1
        numberValue2 = workValue
        workValue = workValue.switchToScrewCamera
        workValue(numberValue2)
      end
      workValue = textValue4
      workValue()
      workValue = Wait
      numberValue2 = 0
      workValue(numberValue2)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  workValue9(modelHash)
  while true do
    workValue9 = arg1.isRunning
    if not workValue9 then
      break
    end
    workValue9 = textValue4
    workValue9()
    workValue9 = arg1.animator
    modelHash = workValue9
    workValue9 = workValue9.getCurrentTime
    workValue9 = workValue9(modelHash)
    modelHash = arg1.animator
    workValue3 = modelHash
    modelHash = modelHash.isInTimeRange
    numberValue = arg6.start
    mathHelper = arg6.finish
    modelHash = modelHash(workValue3, numberValue, mathHelper)
    workValue3 = IsDisabledControlJustPressed
    numberValue = 0
    mathHelper = 73
    workValue3 = workValue3(numberValue, mathHelper)
    if workValue3 then
      workValue3 = SetNuiFocus
      numberValue = false
      mathHelper = false
      -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
      workValue3(numberValue, mathHelper)
      numberValue = arg1
      workValue3 = arg1.cancelWithAnimation
      workValue3(numberValue)
      arg1.isRunning = false
      workValue3 = false
      return workValue3
    end
    if modelHash then
      workValue3 = arg1.inControlRange
      if not workValue3 then
        workValue3 = arg1.animator
        numberValue = workValue3
        workValue3 = workValue3.setSpeed
        mathHelper = 0.0
        workValue3(numberValue, mathHelper)
        arg1.inControlRange = true
        workValue3 = SetNuiFocus
        numberValue = false
        mathHelper = true
        -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
        workValue3(numberValue, mathHelper)
      end
    end
    workValue3 = arg1.inControlRange
    if workValue3 then
      workValue3 = workValue6
      numberValue = arg1.screwObject
      mathHelper = 35.0
      workValue3 = workValue3(numberValue, mathHelper)
      numberValue = IsControlPressed
      mathHelper = 0
      mathHelper2 = 24
      numberValue = numberValue(mathHelper, mathHelper2)
      if not numberValue then
        numberValue = IsDisabledControlPressed
        mathHelper = 0
        mathHelper2 = 24
        numberValue = numberValue(mathHelper, mathHelper2)
      end
      if workValue3 then
        mathHelper = SetEntityDrawOutline
        mathHelper2 = arg1.screwObject
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
        mathHelper2 = arg1.screwObject
        mathHelper3 = false
        mathHelper(mathHelper2, mathHelper3)
      end
      if workValue3 and numberValue then
        if not arg7 then
          mathHelper = arg1.animator
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
          arg7 = true
        end
        workValue8 = workValue8 + 1.0E-4
        if arg4 then
          mathHelper = -2.0
          if mathHelper then
            goto flow_label_163
          end
        end
        mathHelper = 2.0
        ::flow_label_163::
        workValue7 = workValue7 + mathHelper
        mathHelper2 = arg1
        mathHelper = arg1.positionScrew
        mathHelper3 = arg2
        mathHelper4 = workValue8
        mathHelper5 = workValue7
        mathHelper(mathHelper2, mathHelper3, mathHelper4, mathHelper5)
        mathHelper = arg6.finish
        if workValue9 >= mathHelper then
          mathHelper = SetNuiFocus
          mathHelper2 = false
          mathHelper3 = false
          -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
          mathHelper(mathHelper2, mathHelper3)
          mathHelper = SetEntityDrawOutline
          mathHelper2 = arg1.screwObject
          mathHelper3 = false
          mathHelper(mathHelper2, mathHelper3)
          mathHelper = SetEntityVisible
          mathHelper2 = arg1.screwObject
          mathHelper3 = false
          mathHelper4 = false
          mathHelper(mathHelper2, mathHelper3, mathHelper4)
          mathHelper = arg1.camera
          if mathHelper then
            mathHelper = arg1.camera
            mathHelper2 = mathHelper
            mathHelper = mathHelper.destroy
            mathHelper(mathHelper2)
            arg1.camera = nil
          end
          mathHelper = true
          return mathHelper
        end
      elseif arg7 then
        mathHelper = arg1.animator
        mathHelper2 = mathHelper
        mathHelper = mathHelper.setSpeed
        mathHelper3 = 0.0
        mathHelper(mathHelper2, mathHelper3)
        if workValue3 then
          mathHelper = SetEntityDrawOutlineColor
          mathHelper2 = 255
          mathHelper3 = 255
          mathHelper4 = 0
          mathHelper5 = 255
          mathHelper(mathHelper2, mathHelper3, mathHelper4, mathHelper5)
        end
        arg7 = false
      end
    end
    workValue3 = Wait
    numberValue = 0
    workValue3(numberValue)
  end
  workValue9 = SetNuiFocus
  modelHash = false
  workValue3 = false
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  workValue9(modelHash, workValue3)
  workValue9 = SetEntityDrawOutline
  modelHash = arg1.screwObject
  workValue3 = false
  workValue9(modelHash, workValue3)
  arg1.isInMinigame = false
  workValue9 = arg1.camera
  if workValue9 then
    workValue9 = arg1.camera
    modelHash = workValue9
    workValue9 = workValue9.destroy
    workValue9(modelHash)
    arg1.camera = nil
  end
  workValue9 = false
  return workValue9
end
dataTable4.handleScrewMinigame = workValue2
function workValue2(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, workValue7, workValue8, workValue9, modelHash
  arg3 = {}
  arg4 = 1
  arg5 = 4
  arg6 = 1
  for arg7 = arg4, arg5, arg6 do
    workValue7 = textValue
    workValue8 = arg2
    workValue9 = arg7
    workValue7 = workValue7(workValue8, workValue9)
    if not workValue7 then
      workValue7 = #arg3
      workValue7 = workValue7 + 1
      arg3[workValue7] = arg7
    end
  end
  arg4 = #arg3
  if 0 == arg4 then
    arg4 = nil
    return arg4
  end
  arg4 = cmgCall.toiletEscape
  if arg4 then
    arg5 = arg4.screwLabels
    if arg5 then
      goto flow_label_36
    end
  end
  arg5 = {}
  arg6 = "Top left"
  arg7 = "Bottom left"
  workValue7 = "Top right"
  workValue8 = "Bottom right"
  arg5[1] = arg6
  arg5[2] = arg7
  arg5[3] = workValue7
  arg5[4] = workValue8
  ::flow_label_36::
  arg6 = 1
  arg7 = true
  workValue7 = nil
  workValue8 = CreateThread
  -- Beginner: this function is the body of a background FiveM thread.
  function workValue9()
    local workValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, numberValue7
    while true do
      workValue = arg7
      if not workValue then
        break
      end
      workValue = arg1.isRunning
      if not workValue then
        break
      end
      workValue = textValue4
      workValue()
      numberValue2 = arg6
      workValue = arg3
      numberValue2 = workValue[numberValue2]
      workValue = arg5
      workValue = workValue[numberValue2]
      if not workValue then
        workValue = "Screw "
        numberValue3 = arg6
        numberValue2 = arg3
        numberValue2 = numberValue2[numberValue3]
        workValue = workValue .. numberValue2
      end
      numberValue2 = SetTextFont
      numberValue3 = 4
      numberValue2(numberValue3)
      numberValue2 = SetTextScale
      numberValue3 = 0.35
      numberValue4 = 0.35
      numberValue2(numberValue3, numberValue4)
      numberValue2 = SetTextColour
      numberValue3 = 255
      numberValue4 = 255
      numberValue5 = 255
      numberValue6 = 255
      numberValue2(numberValue3, numberValue4, numberValue5, numberValue6)
      numberValue2 = SetTextDropshadow
      numberValue3 = 0
      numberValue4 = 0
      numberValue5 = 0
      numberValue6 = 0
      numberValue7 = 255
      numberValue2(numberValue3, numberValue4, numberValue5, numberValue6, numberValue7)
      numberValue2 = SetTextEdge
      numberValue3 = 1
      numberValue4 = 0
      numberValue5 = 0
      numberValue6 = 0
      numberValue7 = 255
      numberValue2(numberValue3, numberValue4, numberValue5, numberValue6, numberValue7)
      numberValue2 = SetTextEntry
      numberValue3 = "STRING"
      numberValue2(numberValue3)
      numberValue2 = AddTextComponentSubstringPlayerName
      numberValue3 = workValue
      numberValue4 = " - [SCROLL] change [E] select [X] cancel"
      numberValue3 = numberValue3 .. numberValue4
      numberValue2(numberValue3)
      numberValue2 = DrawText
      numberValue3 = 0.4
      numberValue4 = 0.25
      numberValue2(numberValue3, numberValue4)
      numberValue2 = Wait
      numberValue3 = 0
      numberValue2(numberValue3)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  workValue8(workValue9)
  workValue8 = Wait
  workValue9 = 100
  workValue8(workValue9)
  while arg7 do
    workValue8 = textValue4
    workValue8()
    workValue8 = IsDisabledControlJustPressed
    workValue9 = 0
    modelHash = 14
    workValue8 = workValue8(workValue9, modelHash)
    if not workValue8 then
      workValue8 = IsDisabledControlJustPressed
      workValue9 = 0
      modelHash = 172
      workValue8 = workValue8(workValue9, modelHash)
      if not workValue8 then
        goto flow_label_66
      end
    end
    arg6 = arg6 - 1
    if arg6 < 1 then
      arg6 = #arg3
    end
    ::flow_label_66::
    workValue8 = IsDisabledControlJustPressed
    workValue9 = 0
    modelHash = 15
    workValue8 = workValue8(workValue9, modelHash)
    if not workValue8 then
      workValue8 = IsDisabledControlJustPressed
      workValue9 = 0
      modelHash = 173
      workValue8 = workValue8(workValue9, modelHash)
      if not workValue8 then
        goto flow_label_84
      end
    end
    arg6 = arg6 + 1
    workValue8 = #arg3
    if arg6 > workValue8 then
      arg6 = 1
    end
    ::flow_label_84::
    workValue8 = IsDisabledControlJustPressed
    workValue9 = 0
    modelHash = 38
    workValue8 = workValue8(workValue9, modelHash)
    if not workValue8 then
      workValue8 = IsDisabledControlJustPressed
      workValue9 = 0
      modelHash = 191
      workValue8 = workValue8(workValue9, modelHash)
      if not workValue8 then
        goto flow_label_98
      end
    end
    workValue7 = arg3[arg6]
    arg7 = false
    ::flow_label_98::
    workValue8 = IsDisabledControlJustPressed
    workValue9 = 0
    modelHash = 73
    workValue8 = workValue8(workValue9, modelHash)
    if not workValue8 then
      workValue8 = IsDisabledControlJustPressed
      workValue9 = 0
      modelHash = 194
      workValue8 = workValue8(workValue9, modelHash)
      if not workValue8 then
        goto flow_label_111
      end
    end
    arg7 = false
    ::flow_label_111::
    workValue8 = Wait
    workValue9 = 0
    workValue8(workValue9)
  end
  return workValue7
end
dataTable4.selectScrew = workValue2
function workValue2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue7, workValue8, workValue9, modelHash, workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workValue4, flag, flag2, workValue5, flag3, flag4, flag5
  arg2 = SetNuiFocus
  arg3 = false
  arg4 = false
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  arg2(arg3, arg4)
  arg2 = arg1.camera
  if arg2 then
    arg2 = arg1.camera
    arg3 = arg2
    arg2 = arg2.destroy
    arg2(arg3)
    arg1.camera = nil
  end
  arg2 = DetachEntity
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = true
  arg5 = false
  arg2(arg3, arg4, arg5)
  arg2 = GetEntityHeading
  arg3 = arg1.entity
  -- Beginner: result below is heading.
  arg2 = arg2(arg3)
  arg3 = GetEntityCoords
  arg4 = arg1.entity
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4)
  arg4 = GetOffsetFromEntityInWorldCoords
  arg5 = arg1.entity
  arg6 = 0.0
  arg7 = 0.0
  workValue7 = 0.55
  arg4 = arg4(arg5, arg6, arg7, workValue7)
  arg5 = SetEntityCoordsNoOffset
  arg6 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg6 = arg6()
  arg7 = arg4.x
  workValue7 = arg4.y
  workValue8 = arg4.z
  workValue9 = false
  modelHash = false
  workValue3 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg5(arg6, arg7, workValue7, workValue8, workValue9, modelHash, workValue3)
  arg5 = SetEntityHeading
  arg6 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg6 = arg6()
  arg7 = arg2 - 173.0
  -- Beginner: Change the direction an entity is facing.
  arg5(arg6, arg7)
  arg5 = textValue3
  arg6 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg6 = arg6()
  arg7 = "promt@jail_4"
  workValue7 = "jail_exit_open_ped"
  arg5(arg6, arg7, workValue7)
  arg5 = Wait
  arg6 = 4000
  arg5(arg6)
  arg5 = GetOffsetFromEntityInWorldCoords
  arg6 = arg1.entity
  arg7 = -0.5
  workValue7 = 0.0
  workValue8 = 0.0
  arg5 = arg5(arg6, arg7, workValue7, workValue8)
  arg6 = arg5.x
  arg7 = arg3.x
  arg6 = arg6 - arg7
  arg7 = arg5.y
  workValue7 = arg3.y
  arg7 = arg7 - workValue7
  workValue7 = 25
  workValue8 = 80.0
  workValue9 = 1
  modelHash = workValue8
  workValue3 = 1
  for numberValue = workValue9, modelHash, workValue3 do
    mathHelper = numberValue / workValue8
    mathHelper2 = SetEntityCoords
    mathHelper3 = arg1.entity
    mathHelper4 = arg3.x
    mathHelper5 = arg6 * mathHelper
    mathHelper4 = mathHelper4 + mathHelper5
    mathHelper5 = arg3.y
    workValue4 = arg7 * mathHelper
    mathHelper5 = mathHelper5 + workValue4
    workValue4 = arg3.z
    flag = false
    flag2 = false
    workValue5 = false
    flag3 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    mathHelper2(mathHelper3, mathHelper4, mathHelper5, workValue4, flag, flag2, workValue5, flag3)
    mathHelper2 = Wait
    mathHelper3 = workValue7
    mathHelper2(mathHelper3)
  end
  workValue9 = GetOffsetFromEntityInWorldCoords
  modelHash = arg1.entity
  workValue3 = 0.5
  numberValue = 1.5
  mathHelper = 0.0
  workValue9 = workValue9(modelHash, workValue3, numberValue, mathHelper)
  modelHash = Wait
  workValue3 = GetAnimDuration
  numberValue = "promt@jail_4"
  mathHelper = "jail_exit_open_ped"
  workValue3 = workValue3(numberValue, mathHelper)
  workValue3 = workValue3 * 1000
  workValue3 = workValue3 - 7000
  modelHash(workValue3)
  modelHash = GetOffsetFromEntityInWorldCoords
  workValue3 = arg1.entity
  numberValue = 0.5
  mathHelper = -1.0
  mathHelper2 = 0.0
  modelHash = modelHash(workValue3, numberValue, mathHelper, mathHelper2)
  arg5 = modelHash
  modelHash = SetEntityCoordsNoOffset
  workValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue3 = workValue3()
  numberValue = arg5.x
  mathHelper = arg5.y
  mathHelper2 = arg5.z
  mathHelper3 = false
  mathHelper4 = false
  mathHelper5 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  modelHash(workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5)
  modelHash = textValue3
  workValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue3 = workValue3()
  numberValue = "promt@jail_5"
  mathHelper = "jail_exit_ped"
  modelHash(workValue3, numberValue, mathHelper)
  modelHash = SetEntityHeading
  workValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue3 = workValue3()
  numberValue = arg2
  -- Beginner: Change the direction an entity is facing.
  modelHash(workValue3, numberValue)
  modelHash = SetEntityCollision
  workValue3 = arg1.entity
  numberValue = false
  mathHelper = false
  modelHash(workValue3, numberValue, mathHelper)
  modelHash = Wait
  workValue3 = GetAnimDuration
  numberValue = "promt@jail_5"
  mathHelper = "jail_exit_ped"
  workValue3 = workValue3(numberValue, mathHelper)
  workValue3 = workValue3 * 1000
  modelHash(workValue3)
  modelHash = SetEntityCoordsNoOffset
  workValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue3 = workValue3()
  numberValue = workValue9.x
  mathHelper = workValue9.y
  mathHelper2 = workValue9.z
  mathHelper3 = false
  mathHelper4 = false
  mathHelper5 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  modelHash(workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5)
  modelHash = SetEntityHeading
  workValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue3 = workValue3()
  numberValue = arg2 + 180.0
  -- Beginner: Change the direction an entity is facing.
  modelHash(workValue3, numberValue)
  modelHash = SetEntityCollision
  workValue3 = arg1.entity
  numberValue = true
  mathHelper = true
  modelHash(workValue3, numberValue, mathHelper)
  modelHash = textValue3
  workValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue3 = workValue3()
  numberValue = "prompt@jail"
  mathHelper = "jail_exit_close"
  modelHash(workValue3, numberValue, mathHelper)
  modelHash = Wait
  workValue3 = 2500
  modelHash(workValue3)
  modelHash = GetEntityCoords
  workValue3 = arg1.entity
  -- Beginner: result below is entityCoords.
  modelHash = modelHash(workValue3)
  workValue3 = GetOffsetFromEntityInWorldCoords
  numberValue = arg1.entity
  mathHelper = 0.5
  mathHelper2 = 0.0
  mathHelper3 = 0.0
  workValue3 = workValue3(numberValue, mathHelper, mathHelper2, mathHelper3)
  arg5 = workValue3
  workValue3 = arg5.x
  numberValue = modelHash.x
  arg6 = workValue3 - numberValue
  workValue3 = arg5.y
  numberValue = modelHash.y
  arg7 = workValue3 - numberValue
  workValue3 = 1
  numberValue = workValue8
  mathHelper = 1
  for mathHelper2 = workValue3, numberValue, mathHelper do
    mathHelper3 = mathHelper2 / workValue8
    mathHelper4 = SetEntityCoords
    mathHelper5 = arg1.entity
    workValue4 = modelHash.x
    flag = arg6 * mathHelper3
    workValue4 = workValue4 + flag
    flag = modelHash.y
    flag2 = arg7 * mathHelper3
    flag = flag + flag2
    flag2 = modelHash.z
    workValue5 = false
    flag3 = false
    flag4 = false
    flag5 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    mathHelper4(mathHelper5, workValue4, flag, flag2, workValue5, flag3, flag4, flag5)
    mathHelper4 = Wait
    mathHelper5 = workValue7
    mathHelper4(mathHelper5)
  end
  workValue3 = Wait
  numberValue = GetAnimDuration
  mathHelper = "prompt@jail"
  mathHelper2 = "jail_exit_close"
  numberValue = numberValue(mathHelper, mathHelper2)
  numberValue = numberValue * 1000
  numberValue = numberValue - 2500
  numberValue = numberValue - 2000
  workValue3(numberValue)
end
dataTable4.playExitSequence = workValue2
function workValue2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue7, workValue8, workValue9, modelHash
  arg2 = SetNuiFocus
  arg3 = false
  arg4 = false
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  arg2(arg3, arg4)
  arg2 = arg1.camera
  if arg2 then
    arg2 = arg1.camera
    arg3 = arg2
    arg2 = arg2.destroy
    arg2(arg3)
    arg1.camera = nil
  end
  arg2 = DetachEntity
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = true
  arg5 = false
  arg2(arg3, arg4, arg5)
  arg2 = GetEntityHeading
  arg3 = arg1.entity
  -- Beginner: result below is heading.
  arg2 = arg2(arg3)
  arg3 = GetOffsetFromEntityInWorldCoords
  arg4 = arg1.entity
  arg5 = 0.0
  arg6 = 0.0
  arg7 = 0.55
  arg3 = arg3(arg4, arg5, arg6, arg7)
  arg4 = SetEntityCoordsNoOffset
  arg5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  arg6 = arg3.x
  arg7 = arg3.y
  workValue7 = arg3.z
  workValue8 = false
  workValue9 = false
  modelHash = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg4(arg5, arg6, arg7, workValue7, workValue8, workValue9, modelHash)
  arg4 = SetEntityHeading
  arg5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  arg6 = arg2 - 173.0
  -- Beginner: Change the direction an entity is facing.
  arg4(arg5, arg6)
  arg4 = textValue3
  arg5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  arg6 = "promt@jail_2"
  arg7 = "jail_enter_off_ped"
  arg4(arg5, arg6, arg7)
  arg4 = Wait
  arg5 = 1000
  arg4(arg5)
  arg4 = arg1.screwDriver
  if arg4 then
    arg4 = DoesEntityExist
    arg5 = arg1.screwDriver
    arg4 = arg4(arg5)
    if arg4 then
      arg4 = DeleteEntity
      arg5 = arg1.screwDriver
      -- Beginner: Delete a GTA entity.
      arg4(arg5)
      arg1.screwDriver = nil
    end
  end
  arg4 = Wait
  arg5 = GetAnimDuration
  arg6 = "promt@jail_2"
  arg7 = "jail_enter_off_ped"
  arg5 = arg5(arg6, arg7)
  arg5 = arg5 * 1000
  arg5 = arg5 - 1000
  arg4(arg5)
end
dataTable4.cancelWithAnimation = workValue2
function workValue2(arg1)
  local arg2, arg3, arg4, arg5
  arg1.isRunning = false
  arg1.isInMinigame = false
  arg2 = dataTable4.activeInstance
  if arg2 == arg1 then
    dataTable4.activeInstance = nil
  end
  arg2 = SetNuiFocus
  arg3 = false
  arg4 = false
  -- Beginner: Give or remove mouse/keyboard focus from an NUI interface.
  arg2(arg3, arg4)
  arg2 = arg1.screwDriver
  if arg2 then
    arg2 = DoesEntityExist
    arg3 = arg1.screwDriver
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = DeleteEntity
      arg3 = arg1.screwDriver
      -- Beginner: Delete a GTA entity.
      arg2(arg3)
      arg1.screwDriver = nil
    end
  end
  arg2 = arg1.screwObject
  if arg2 then
    arg2 = DoesEntityExist
    arg3 = arg1.screwObject
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = SetEntityDrawOutline
      arg3 = arg1.screwObject
      arg4 = false
      arg2(arg3, arg4)
      arg2 = DeleteEntity
      arg3 = arg1.screwObject
      -- Beginner: Delete a GTA entity.
      arg2(arg3)
      arg1.screwObject = nil
    end
  end
  arg2 = arg1.camera
  if arg2 then
    arg2 = arg1.camera
    arg3 = arg2
    arg2 = arg2.destroy
    arg2(arg3)
    arg1.camera = nil
  end
  arg2 = DetachEntity
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = true
  arg5 = false
  arg2(arg3, arg4, arg5)
  arg2 = arg1.animator
  if arg2 then
    arg2 = arg1.animator
    arg3 = arg2
    arg2 = arg2.stop
    arg2(arg3)
    arg1.animator = nil
  end
end
dataTable4.cleanup = workValue2
function workValue2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, workValue7, workValue8, workValue9, modelHash, workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workValue4, flag, flag2, workValue5, flag3, flag4
  arg2 = false
  arg1.isRunning = true
  dataTable4.activeInstance = arg1
  arg4 = arg1
  arg3 = arg1.createObjects
  arg3 = arg3(arg4)
  if not arg3 then
    arg4 = arg1
    arg3 = arg1.cleanup
    arg3(arg4)
    return
  end
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = ClearPedTasks
  arg5 = arg3
  arg4(arg5)
  arg4 = GetOffsetFromEntityInWorldCoords
  arg5 = arg1.entity
  arg6 = 0.0
  arg7 = -0.5
  workValue7 = 0.55
  arg4 = arg4(arg5, arg6, arg7, workValue7)
  arg5 = SetEntityCoordsNoOffset
  arg6 = arg3
  arg7 = arg4.x
  workValue7 = arg4.y
  workValue8 = arg4.z
  workValue9 = false
  modelHash = false
  workValue3 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg5(arg6, arg7, workValue7, workValue8, workValue9, modelHash, workValue3)
  arg5 = SetEntityHeading
  arg6 = arg3
  arg7 = GetEntityHeading
  workValue7 = arg1.entity
  arg7, workValue7, workValue8, workValue9, modelHash, workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workValue4, flag, flag2, workValue5, flag3, flag4 = arg7(workValue7)
  -- Beginner: Change the direction an entity is facing.
  arg5(arg6, arg7, workValue7, workValue8, workValue9, modelHash, workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workValue4, flag, flag2, workValue5, flag3, flag4)
  arg5 = GetAnimDuration
  arg6 = "promt@jail_3"
  arg7 = "jail_enter_ped"
  arg5 = arg5(arg6, arg7)
  if not arg5 then
    arg5 = 0.0
  end
  arg5 = arg5 * 1000
  if arg5 <= 0 then
    arg5 = 2000
  end
  arg6 = textValue3
  arg7 = arg3
  workValue7 = "promt@jail_3"
  workValue8 = "jail_enter_ped"
  workValue9 = 8.0
  modelHash = -8.0
  workValue3 = -1
  numberValue = 2
  arg6(arg7, workValue7, workValue8, workValue9, modelHash, workValue3, numberValue)
  arg6 = Wait
  arg7 = 2000
  arg6(arg7)
  arg7 = arg1
  arg6 = arg1.attachScrewdriver
  workValue7 = 1
  arg6(arg7, workValue7)
  arg6 = math
  arg6 = arg6.max
  arg7 = 0
  workValue7 = arg5 - 2000
  arg6 = arg6(arg7, workValue7)
  arg7 = Wait
  workValue7 = arg6
  arg7(workValue7)
  arg7 = AttachEntityToEntity
  workValue7 = arg3
  workValue8 = arg1.entity
  workValue9 = 0
  modelHash = 0.0
  workValue3 = 0.0
  numberValue = 0.55
  mathHelper = 0.0
  mathHelper2 = 0.0
  mathHelper3 = 0.0
  mathHelper4 = false
  mathHelper5 = false
  workValue4 = true
  flag = false
  flag2 = 2
  workValue5 = true
  -- Beginner: Attach one entity to another entity.
  arg7(workValue7, workValue8, workValue9, modelHash, workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workValue4, flag, flag2, workValue5)
  arg7 = CMG
  arg7 = arg7.TriggerServerCallback
  workValue7 = "343493b5b7"
  arg7 = arg7(workValue7)
  if not arg7 then
    arg7 = {}
  end
  while true do
    workValue7 = arg1.isRunning
    if not workValue7 then
      break
    end
    workValue7 = #arg7
    if not (workValue7 < 4) then
      break
    end
    workValue8 = arg1
    workValue7 = arg1.selectScrew
    workValue9 = arg7
    workValue7 = workValue7(workValue8, workValue9)
    if not workValue7 then
      workValue9 = arg1
      workValue8 = arg1.cancelWithAnimation
      workValue8(workValue9)
      arg1.isRunning = false
      break
    end
    workValue8 = AttachEntityToEntity
    workValue9 = arg3
    modelHash = arg1.entity
    workValue3 = 0
    numberValue = 0.0
    mathHelper = 0.0
    mathHelper2 = 0.55
    mathHelper3 = 0.0
    mathHelper4 = 0.0
    mathHelper5 = -180.0
    workValue4 = false
    flag = false
    flag2 = true
    workValue5 = false
    flag3 = 2
    flag4 = true
    -- Beginner: Attach one entity to another entity.
    workValue8(workValue9, modelHash, workValue3, numberValue, mathHelper, mathHelper2, mathHelper3, mathHelper4, mathHelper5, workValue4, flag, flag2, workValue5, flag3, flag4)
    workValue9 = arg1
    workValue8 = arg1.handleScrewMinigame
    modelHash = workValue7
    workValue8 = workValue8(workValue9, modelHash)
    workValue9 = arg1.camera
    if workValue9 then
      workValue9 = arg1.camera
      modelHash = workValue9
      workValue9 = workValue9.destroy
      workValue9(modelHash)
      arg1.camera = nil
    end
    if not workValue8 then
      break
    end
    workValue9 = CMG
    workValue9 = workValue9.TriggerServerCallback
    modelHash = "2a18065f82"
    workValue3 = workValue7
    workValue9 = workValue9(modelHash, workValue3)
    if not workValue9 then
      break
    end
    workValue9 = table
    workValue9 = workValue9.insert
    modelHash = arg7
    workValue3 = workValue7
    workValue9(modelHash, workValue3)
    workValue9 = #arg7
    if workValue9 < 4 then
      workValue9 = dataTable.new
      modelHash = arg1.entity
      workValue9 = workValue9(modelHash)
      arg1.camera = workValue9
    end
  end
  workValue7 = arg1.screwDriver
  if workValue7 then
    workValue7 = DoesEntityExist
    workValue8 = arg1.screwDriver
    workValue7 = workValue7(workValue8)
    if workValue7 then
      workValue7 = DeleteEntity
      workValue8 = arg1.screwDriver
      -- Beginner: Delete a GTA entity.
      workValue7(workValue8)
      arg1.screwDriver = nil
    end
  end
  workValue7 = arg1.screwObject
  if workValue7 then
    workValue7 = DoesEntityExist
    workValue8 = arg1.screwObject
    workValue7 = workValue7(workValue8)
    if workValue7 then
      workValue7 = SetEntityDrawOutline
      workValue8 = arg1.screwObject
      workValue9 = false
      workValue7(workValue8, workValue9)
    end
  end
  workValue7 = #arg7
  if workValue7 >= 4 then
    workValue7 = false
    workValue8 = cmgCall.toiletEscape
    if workValue8 then
      workValue9 = workValue8.instructionsEscape
      if workValue9 then
        goto flow_label_197
      end
    end
    workValue9 = "[E] - Escape   [X] - Cancel"
    ::flow_label_197::
    modelHash = CreateThread
    -- Beginner: this function is the body of a background FiveM thread.
    function workValue3()
      local workValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6
      workValue = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      workValue = workValue()
      workValue = workValue + 30000
      while true do
        numberValue2 = arg1.isRunning
        if not numberValue2 then
          break
        end
        numberValue2 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        numberValue2 = numberValue2()
        if not (workValue > numberValue2) then
          break
        end
        numberValue2 = BeginTextCommandDisplayHelp
        numberValue3 = "STRING"
        numberValue2(numberValue3)
        numberValue2 = AddTextComponentSubstringPlayerName
        numberValue3 = workValue9
        numberValue2(numberValue3)
        numberValue2 = EndTextCommandDisplayHelp
        numberValue3 = 0
        numberValue4 = false
        numberValue5 = false
        numberValue6 = -1
        numberValue2(numberValue3, numberValue4, numberValue5, numberValue6)
        numberValue2 = IsDisabledControlJustPressed
        numberValue3 = 0
        numberValue4 = 38
        numberValue2 = numberValue2(numberValue3, numberValue4)
        if numberValue2 then
          numberValue2 = arg1
          numberValue3 = numberValue2
          numberValue2 = numberValue2.playExitSequence
          numberValue2(numberValue3)
          numberValue2 = true
          workValue7 = numberValue2
          break
        end
        numberValue2 = IsDisabledControlJustPressed
        numberValue3 = 0
        numberValue4 = 73
        numberValue2 = numberValue2(numberValue3, numberValue4)
        if numberValue2 then
          numberValue2 = arg1
          numberValue3 = numberValue2
          numberValue2 = numberValue2.cancelWithAnimation
          numberValue2(numberValue3)
          arg1.isRunning = false
          break
        end
        numberValue2 = Wait
        numberValue3 = 0
        numberValue2(numberValue3)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    modelHash(workValue3)
    while true do
      modelHash = arg1.isRunning
      if not modelHash or workValue7 then
        break
      end
      modelHash = Wait
      workValue3 = 100
      modelHash(workValue3)
    end
    arg2 = workValue7
  end
  if arg2 then
    workValue7 = CMG
    workValue7 = workValue7.TriggerServerCallback
    workValue8 = "a44731beab"
    workValue7(workValue8)
  else
    workValue7 = CMG
    workValue7 = workValue7.TriggerServerCallback
    workValue8 = "87baecbdcf"
    workValue7(workValue8)
  end
  workValue8 = arg1
  workValue7 = arg1.cleanup
  workValue7(workValue8)
end
dataTable4.start = workValue2
workValue2 = _G
workValue2.CMG_PrisonToiletScrewGame = dataTable4