--[[
    Beginner Guide: cl_spectate.lua
    ===============================

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
    BEGINNER GUIDE — Spectate
    =========================

    File: cmg/prod/client/staff/cl_spectate.lua
    Purpose: This file contains staff/admin tools.

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

    Network/hash identifiers found: 7
      They are intentionally left unchanged because matching server code may use them.
      * d3ac8df566
      * 9ea813a9a7
      * 38142e1d4b
      * 07f615539e
      * 933f9e09bb
      * 5126fa6ac5
      * 90dc9c490b

    Example player-facing text in this file:
      * Player Speed: %.2f MPH
      * Vehicle Speed: %.2f MPH
      * Vehicle Health: 
      * onPlayerDropped

]]
local flag, workValue3, numberValue7, numberValue12, numberValue13, workValue39, vector3Builder, flag6, vector3Builder2, numberValue23, numberValue, numberValue2, dataTable, dataTable2, numberValue4, dataTable3, cmgCall, textValue, eventRegistration, eventRegistration2, textValue2, workValue5, workValue7, workValue9, workValue11, cmgCall2, eventRegistration3, cmgCall3, textValue3, textValue4
flag = false
workValue3 = nil
numberValue7 = 0
numberValue12 = 90
numberValue13 = -3.5
workValue39 = nil
vector3Builder = vector3
flag6 = 5218.9399414062
vector3Builder2 = -5393.2563476562
numberValue23 = 67.318588256836
vector3Builder = vector3Builder(flag6, vector3Builder2, numberValue23)
flag6 = false
vector3Builder2 = vector3
numberValue23 = 0.0
numberValue = 0.0
numberValue2 = 0.0
vector3Builder2 = vector3Builder2(numberValue23, numberValue, numberValue2)
numberValue23 = 0.0
numberValue = 0
numberValue2 = 0
dataTable = {}
dataTable2 = {}
numberValue4 = 0
dataTable3 = {}
cmgCall = CMG
cmgCall = cmgCall.registerDevMenuState
textValue = "Spectate"
eventRegistration = {}
eventRegistration.enabled = false
cmgCall = cmgCall(textValue, eventRegistration)
function textValue(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, arg9, arg10, mathHelper, numberValue3
  arg5 = math
  arg5 = arg5.rad
  arg6 = arg3
  arg5 = arg5(arg6)
  arg6 = math
  arg6 = arg6.rad
  arg7 = arg4
  arg6 = arg6(arg7)
  arg7 = vector3
  arg8 = arg1.x
  arg9 = math
  arg9 = arg9.sin
  arg10 = arg6
  arg9 = arg9(arg10)
  arg10 = math
  arg10 = arg10.cos
  mathHelper = arg5
  arg10 = arg10(mathHelper)
  arg9 = arg9 * arg10
  arg9 = arg2 * arg9
  arg8 = arg8 + arg9
  arg9 = arg1.y
  arg10 = math
  arg10 = arg10.sin
  mathHelper = arg6
  arg10 = arg10(mathHelper)
  mathHelper = math
  mathHelper = mathHelper.sin
  numberValue3 = arg5
  mathHelper = mathHelper(numberValue3)
  arg10 = arg10 * mathHelper
  arg10 = arg2 * arg10
  arg9 = arg9 - arg10
  arg10 = arg1.z
  mathHelper = math
  mathHelper = mathHelper.cos
  numberValue3 = arg6
  mathHelper = mathHelper(numberValue3)
  mathHelper = arg2 * mathHelper
  arg10 = arg10 - mathHelper
  return arg7(arg8, arg9, arg10)
end
eventRegistration = RegisterNetEvent
eventRegistration2 = "d3ac8df566"
-- Beginner: this function handles network event "d3ac8df566".
function textValue2(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, arg9, arg10, mathHelper, numberValue3, flag2, flag3, flag4, numberValue5, flag5, dataTable4
  arg4 = CMG
  arg4 = arg4.hasClientPermission
  arg5 = "admin.espspectate"
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = 0
    numberValue = arg4
  end
  arg4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  arg5 = FreezeEntityPosition
  arg6 = arg4
  arg7 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg5(arg6, arg7)
  arg5 = SetEntityCollision
  arg6 = arg4
  arg7 = false
  arg8 = false
  arg5(arg6, arg7, arg8)
  arg5 = SetEntityVisible
  arg6 = arg4
  arg7 = false
  arg8 = false
  arg5(arg6, arg7, arg8)
  arg5 = SetEntityInvincible
  arg6 = arg4
  arg7 = true
  arg5(arg6, arg7)
  arg5 = math
  arg5 = arg5.random
  arg6 = 7500
  arg7 = 8900
  arg5 = arg5(arg6, arg7)
  arg6 = math
  arg6 = arg6.random
  arg7 = 7500
  arg8 = 8900
  arg6 = arg6(arg7, arg8)
  arg7 = math
  arg7 = arg7.random
  arg8 = 1
  arg9 = 2
  arg7 = arg7(arg8, arg9)
  arg7 = 2 == arg7
  if arg7 then
    arg5 = -arg5
    arg6 = -arg6
  end
  arg8 = SetEntityCoordsNoOffset
  arg9 = arg4
  arg10 = arg5 + 0.0
  mathHelper = arg6 + 0.0
  numberValue3 = 1000.0
  flag2 = false
  flag3 = false
  flag4 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg8(arg9, arg10, mathHelper, numberValue3, flag2, flag3, flag4)
  arg8 = CreateCamWithParams
  arg9 = "DEFAULT_SCRIPTED_CAMERA"
  arg10 = arg2.x
  mathHelper = arg2.y
  numberValue3 = arg2.z
  flag2 = 0.0
  flag3 = 0.0
  flag4 = 0.0
  numberValue5 = GetGameplayCamFov
  numberValue5 = numberValue5()
  flag5 = false
  dataTable4 = 2
  arg8 = arg8(arg9, arg10, mathHelper, numberValue3, flag2, flag3, flag4, numberValue5, flag5, dataTable4)
  workValue39 = arg8
  arg8 = SetCamActive
  arg9 = workValue39
  arg10 = true
  arg8(arg9, arg10)
  arg8 = RenderScriptCams
  arg9 = true
  arg10 = false
  mathHelper = 0
  numberValue3 = true
  flag2 = true
  arg8(arg9, arg10, mathHelper, numberValue3, flag2)
  workValue3 = arg1
  while true do
    arg8 = workValue3
    if not arg8 then
      return
    end
    arg8 = SetFocusPosAndVel
    arg9 = arg2.x
    arg10 = arg2.y
    mathHelper = arg2.z
    numberValue3 = 0.0
    flag2 = 0.0
    flag3 = 0.0
    arg8(arg9, arg10, mathHelper, numberValue3, flag2, flag3)
    arg8 = LockMinimapPosition
    arg9 = arg2.x
    arg10 = arg2.y
    arg8(arg9, arg10)
    arg8 = SetPlayerBlipPositionThisFrame
    arg9 = arg2.x
    arg10 = arg2.y
    arg8(arg9, arg10)
    arg8 = GetPlayerFromServerId
    arg9 = arg1
    -- Beginner: result below is playerIndex.
    arg8 = arg8(arg9)
    if -1 ~= arg8 then
      break
    end
    arg8 = Citizen
    arg8 = arg8.Wait
    arg9 = 0
    arg8(arg9)
  end
  arg8 = true
  flag = arg8
  if not arg3 then
    arg8 = CMG
    arg8 = arg8.setPlayerNameDistance
    arg9 = 10000.0
    arg8(arg9)
    arg8 = true
    flag6 = arg8
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d3ac8df566".
eventRegistration(eventRegistration2, textValue2)
function eventRegistration(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, mathHelper, numberValue3
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  arg3 = pairs
  arg4 = dataTable3
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    if not arg1 then
      arg9 = arg2 - arg8
      arg10 = 1000
      if not (arg9 > arg10) then
        goto flow_label_29
      end
    end
    arg9 = cmgCall.enabled
    if arg9 then
      arg9 = print
      arg10 = string
      arg10 = arg10.format
      mathHelper = "[Spectate] Unpinning interior %s"
      numberValue3 = arg7
      arg10, mathHelper, numberValue3 = arg10(mathHelper, numberValue3)
      arg9(arg10, mathHelper, numberValue3)
    end
    arg9 = UnpinInterior
    arg10 = arg7
    arg9(arg10)
    arg9 = dataTable3
    arg9[arg7] = nil
    ::flow_label_29::
  end
end
eventRegistration2 = RegisterNetEvent
textValue2 = "9ea813a9a7"
-- Beginner: this function handles network event "9ea813a9a7".
function workValue5()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = false
  flag = arg1
  arg1 = ClearFocus
  arg1()
  arg1 = nil
  workValue3 = arg1
  arg1 = UnlockMinimapPosition
  arg1()
  arg1 = workValue39
  if arg1 then
    arg1 = SetCamActive
    arg2 = workValue39
    arg3 = false
    arg1(arg2, arg3)
    arg1 = RenderScriptCams
    arg2 = false
    arg3 = false
    arg4 = 0
    arg5 = false
    arg6 = false
    arg1(arg2, arg3, arg4, arg5, arg6)
    arg1 = DestroyCam
    arg2 = workValue39
    arg3 = false
    arg1(arg2, arg3)
  end
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = SetEntityInvincible
  arg3 = arg1
  arg4 = false
  arg2(arg3, arg4)
  arg2 = SetEntityVisible
  arg3 = arg1
  arg4 = true
  arg5 = false
  arg2(arg3, arg4, arg5)
  arg2 = SetEntityCollision
  arg3 = arg1
  arg4 = true
  arg5 = true
  arg2(arg3, arg4, arg5)
  arg2 = FreezeEntityPosition
  arg3 = arg1
  arg4 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(arg3, arg4)
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = vector3Builder
  arg2 = arg2 - arg3
  arg2 = #arg2
  arg3 = 2142.0
  if arg2 > arg3 then
    arg2 = CMG
    arg2 = arg2.isInCayoPerico
    arg2 = arg2()
    if arg2 then
      arg2 = DisableCayoPerico
      arg3 = true
      arg2(arg3)
    end
  end
  arg2 = flag6
  if arg2 then
    arg2 = CMG
    arg2 = arg2.setPlayerNameDistance
    arg3 = -1
    arg2(arg3)
    arg2 = false
    flag6 = arg2
  end
  arg2 = eventRegistration
  arg3 = true
  -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: true.
  arg2(arg3)
end
eventRegistration2(textValue2, workValue5)
function eventRegistration2(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
  local mathHelper, numberValue3, flag2, flag3, flag4, numberValue5, flag5, dataTable4, workValue, workValue2, workValue4, workValue6
  mathHelper = CMG
  mathHelper = mathHelper.DrawText
  numberValue3 = arg3 / 2
  numberValue3 = arg1 - numberValue3
  flag2 = arg4 / 2
  flag2 = arg2 - flag2
  flag2 = flag2 + 0.005
  flag3 = arg6
  flag4 = arg5
  numberValue5 = 0
  flag5 = 1
  dataTable4 = {}
  workValue = arg7
  workValue2 = arg8
  workValue4 = arg9
  workValue6 = arg10
  dataTable4[1] = workValue
  dataTable4[2] = workValue2
  dataTable4[3] = workValue4
  dataTable4[4] = workValue6
  mathHelper(numberValue3, flag2, flag3, flag4, numberValue5, flag5, dataTable4)
end
function textValue2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg2 = GetScreenCoordFromWorldCoord
  arg3 = arg1.x
  arg4 = arg1.y
  arg5 = arg1.z
  arg2, arg3, arg4 = arg2(arg3, arg4, arg5)
  arg5 = arg2
  arg6 = vector2
  arg7 = arg3
  arg8 = arg4
  arg6, arg7, arg8 = arg6(arg7, arg8)
  return arg5, arg6, arg7, arg8
end
function workValue5(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, mathHelper, numberValue3, flag2
  arg3 = math
  arg3 = arg3.min
  arg4 = math
  arg4 = arg4.max
  arg5 = numberValue23
  arg5 = arg5 / 50.0
  arg6 = 1.0
  arg5 = arg6 - arg5
  arg6 = 0.1
  arg4 = arg4(arg5, arg6)
  arg5 = 1.0
  arg3 = arg3(arg4, arg5)
  arg4 = DrawLine_2d
  arg5 = arg1.x
  arg6 = arg1.y
  arg7 = arg2.x
  arg8 = arg2.y
  arg9 = 0.001 * arg3
  arg10 = 255
  mathHelper = 255
  numberValue3 = 0
  flag2 = 255
  arg4(arg5, arg6, arg7, arg8, arg9, arg10, mathHelper, numberValue3, flag2)
end
function workValue7(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, mathHelper, numberValue3, flag2, flag3, flag4, numberValue5, flag5, dataTable4, workValue, workValue2, workValue4, workValue6, workValue8, workValue10, workValue12, workValue13, workValue14, workValue15, workValue16, numberValue6, numberValue8, stringHelper, textValue5, numberValue9, numberValue10, numberValue11, workValue17, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue25, workValue26, workValue27, workValue28, workValue29, workValue30, workValue31, workValue32, workValue33, workValue34, workValue35, numberValue14, workValue36, workValue37, workValue38, numberValue15, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22
  arg2 = GetEntityCoords
  arg3 = arg1
  arg4 = true
  -- Beginner: result below is entityCoords.
  arg2 = arg2(arg3, arg4)
  arg3 = textValue2
  arg4 = arg2
  arg3 = arg3(arg4)
  if not arg3 then
    return
  end
  arg3 = GetPedBoneIndex
  arg4 = arg1
  arg5 = 39317
  arg3 = arg3(arg4, arg5)
  arg4 = GetPedBoneIndex
  arg5 = arg1
  arg6 = 45509
  arg4 = arg4(arg5, arg6)
  arg5 = GetPedBoneIndex
  arg6 = arg1
  arg7 = 40269
  arg5 = arg5(arg6, arg7)
  arg6 = GetPedBoneIndex
  arg7 = arg1
  arg8 = 22711
  arg6 = arg6(arg7, arg8)
  arg7 = GetPedBoneIndex
  arg8 = arg1
  arg9 = 2992
  arg7 = arg7(arg8, arg9)
  arg8 = GetPedBoneIndex
  arg9 = arg1
  arg10 = 18905
  arg8 = arg8(arg9, arg10)
  arg9 = GetPedBoneIndex
  arg10 = arg1
  mathHelper = 57005
  arg9 = arg9(arg10, mathHelper)
  arg10 = GetPedBoneIndex
  mathHelper = arg1
  numberValue3 = 11816
  arg10 = arg10(mathHelper, numberValue3)
  mathHelper = GetPedBoneIndex
  numberValue3 = arg1
  flag2 = 46078
  mathHelper = mathHelper(numberValue3, flag2)
  numberValue3 = GetPedBoneIndex
  flag2 = arg1
  flag3 = 16335
  numberValue3 = numberValue3(flag2, flag3)
  flag2 = GetPedBoneIndex
  flag3 = arg1
  flag4 = 14201
  flag2 = flag2(flag3, flag4)
  flag3 = GetPedBoneIndex
  flag4 = arg1
  numberValue5 = 52301
  flag3 = flag3(flag4, numberValue5)
  flag4 = GetPedBoneIndex
  numberValue5 = arg1
  flag5 = 31086
  flag4 = flag4(numberValue5, flag5)
  numberValue5 = GetWorldPositionOfEntityBone
  flag5 = arg1
  dataTable4 = arg3
  numberValue5 = numberValue5(flag5, dataTable4)
  flag5 = GetWorldPositionOfEntityBone
  dataTable4 = arg1
  workValue = arg4
  flag5 = flag5(dataTable4, workValue)
  dataTable4 = GetWorldPositionOfEntityBone
  workValue = arg1
  workValue2 = arg5
  dataTable4 = dataTable4(workValue, workValue2)
  workValue = GetWorldPositionOfEntityBone
  workValue2 = arg1
  workValue4 = arg6
  workValue = workValue(workValue2, workValue4)
  workValue2 = GetWorldPositionOfEntityBone
  workValue4 = arg1
  workValue6 = arg7
  workValue2 = workValue2(workValue4, workValue6)
  workValue4 = GetWorldPositionOfEntityBone
  workValue6 = arg1
  workValue8 = arg8
  workValue4 = workValue4(workValue6, workValue8)
  workValue6 = GetWorldPositionOfEntityBone
  workValue8 = arg1
  workValue10 = arg9
  workValue6 = workValue6(workValue8, workValue10)
  workValue8 = GetWorldPositionOfEntityBone
  workValue10 = arg1
  workValue12 = arg10
  workValue8 = workValue8(workValue10, workValue12)
  workValue10 = GetWorldPositionOfEntityBone
  workValue12 = arg1
  workValue13 = mathHelper
  workValue10 = workValue10(workValue12, workValue13)
  workValue12 = GetWorldPositionOfEntityBone
  workValue13 = arg1
  workValue14 = numberValue3
  workValue12 = workValue12(workValue13, workValue14)
  workValue13 = GetWorldPositionOfEntityBone
  workValue14 = arg1
  workValue15 = flag2
  workValue13 = workValue13(workValue14, workValue15)
  workValue14 = GetWorldPositionOfEntityBone
  workValue15 = arg1
  workValue16 = flag3
  workValue14 = workValue14(workValue15, workValue16)
  workValue15 = GetWorldPositionOfEntityBone
  workValue16 = arg1
  numberValue6 = flag4
  workValue15 = workValue15(workValue16, numberValue6)
  workValue16 = textValue2
  numberValue6 = numberValue5
  workValue16, numberValue6 = workValue16(numberValue6)
  numberValue8 = textValue2
  stringHelper = flag5
  numberValue8, stringHelper = numberValue8(stringHelper)
  textValue5 = textValue2
  numberValue9 = dataTable4
  textValue5, numberValue9 = textValue5(numberValue9)
  numberValue10 = textValue2
  numberValue11 = workValue
  numberValue10, numberValue11 = numberValue10(numberValue11)
  workValue17 = textValue2
  workValue18 = workValue2
  workValue17, workValue18 = workValue17(workValue18)
  workValue19 = textValue2
  workValue20 = workValue4
  workValue19, workValue20 = workValue19(workValue20)
  workValue21 = textValue2
  workValue22 = workValue6
  workValue21, workValue22 = workValue21(workValue22)
  workValue23 = textValue2
  workValue24 = workValue8
  workValue23, workValue24 = workValue23(workValue24)
  workValue25 = textValue2
  workValue26 = workValue10
  workValue25, workValue26 = workValue25(workValue26)
  workValue27 = textValue2
  workValue28 = workValue12
  workValue27, workValue28 = workValue27(workValue28)
  workValue29 = textValue2
  workValue30 = workValue13
  workValue29, workValue30 = workValue29(workValue30)
  workValue31 = textValue2
  workValue32 = workValue14
  workValue31, workValue32 = workValue31(workValue32)
  workValue33 = GetFinalRenderedCamCoord
  workValue33 = workValue33()
  workValue33 = workValue33 - arg2
  workValue33 = #workValue33
  numberValue23 = workValue33
  workValue33 = numberValue
  if 1 ~= workValue33 then
    workValue33 = numberValue
    if 2 ~= workValue33 then
      goto flow_label_251
    end
  end
  if workValue16 and numberValue8 then
    workValue33 = workValue5
    workValue34 = numberValue6
    workValue35 = stringHelper
    workValue33(workValue34, workValue35)
  end
  if numberValue8 and numberValue10 then
    workValue33 = workValue5
    workValue34 = stringHelper
    workValue35 = numberValue11
    workValue33(workValue34, workValue35)
  end
  if numberValue10 and workValue19 then
    workValue33 = workValue5
    workValue34 = numberValue11
    workValue35 = workValue20
    workValue33(workValue34, workValue35)
  end
  if workValue16 and textValue5 then
    workValue33 = workValue5
    workValue34 = numberValue6
    workValue35 = numberValue9
    workValue33(workValue34, workValue35)
  end
  if textValue5 and workValue17 then
    workValue33 = workValue5
    workValue34 = numberValue9
    workValue35 = workValue18
    workValue33(workValue34, workValue35)
  end
  if workValue17 and workValue21 then
    workValue33 = workValue5
    workValue34 = workValue18
    workValue35 = workValue22
    workValue33(workValue34, workValue35)
  end
  if workValue16 and workValue23 then
    workValue33 = workValue5
    workValue34 = numberValue6
    workValue35 = workValue24
    workValue33(workValue34, workValue35)
  end
  if workValue23 and workValue25 then
    workValue33 = workValue5
    workValue34 = workValue24
    workValue35 = workValue26
    workValue33(workValue34, workValue35)
  end
  if workValue25 and workValue29 then
    workValue33 = workValue5
    workValue34 = workValue26
    workValue35 = workValue30
    workValue33(workValue34, workValue35)
  end
  if workValue23 and workValue27 then
    workValue33 = workValue5
    workValue34 = workValue24
    workValue35 = workValue28
    workValue33(workValue34, workValue35)
  end
  if workValue27 and workValue31 then
    workValue33 = workValue5
    workValue34 = workValue28
    workValue35 = workValue32
    workValue33(workValue34, workValue35)
  end
  ::flow_label_251::
  workValue33 = numberValue
  if 1 == workValue33 then
    workValue33 = DrawLine
    workValue34 = vector3Builder2.x
    workValue35 = vector3Builder2.y
    numberValue14 = vector3Builder2.z
    workValue36 = arg2.x
    workValue37 = arg2.y
    workValue38 = arg2.z
    numberValue15 = 255
    numberValue16 = 0
    numberValue17 = 0
    numberValue18 = 255
    workValue33(workValue34, workValue35, numberValue14, workValue36, workValue37, workValue38, numberValue15, numberValue16, numberValue17, numberValue18)
  end
  workValue33 = NetworkGetPlayerIndexFromPed
  workValue34 = arg1
  workValue33 = workValue33(workValue34)
  if workValue33 >= 0 then
    workValue34 = GetFinalRenderedInWhenFriendlyRot
    workValue35 = workValue33
    numberValue14 = 2
    workValue34 = workValue34(workValue35, numberValue14)
    workValue35 = #workValue34
    numberValue14 = 0.1
    if workValue35 > numberValue14 then
      workValue35 = CMG
      workValue35 = workValue35.rotationToDirection
      numberValue14 = workValue34
      workValue35 = workValue35(numberValue14)
      numberValue14 = workValue35 * 3.0
      numberValue14 = workValue15 + numberValue14
      workValue36 = DrawLine
      workValue37 = workValue15.x
      workValue38 = workValue15.y
      numberValue15 = workValue15.z
      numberValue16 = numberValue14.x
      numberValue17 = numberValue14.y
      numberValue18 = numberValue14.z
      numberValue19 = 0
      numberValue20 = 0
      numberValue21 = 255
      numberValue22 = 255
      workValue36(workValue37, workValue38, numberValue15, numberValue16, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22)
    end
  end
end
function workValue9(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, mathHelper
  arg2 = GetEntityCoords
  arg3 = arg1
  arg4 = true
  -- Beginner: result below is entityCoords.
  arg2 = arg2(arg3, arg4)
  vector3Builder2 = arg2
  arg2 = IsControlJustPressed
  arg3 = 0
  arg4 = 121
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg2 = TriggerServerEvent
    arg3 = "38142e1d4b"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "38142e1d4b".
    arg2(arg3)
    arg2 = numberValue
    if 0 == arg2 then
      arg2 = 1
      numberValue = arg2
    else
      arg2 = numberValue
      if 1 == arg2 then
        arg2 = 2
        numberValue = arg2
      else
        arg2 = numberValue
        if 2 == arg2 then
          arg2 = 3
          numberValue = arg2
        else
          arg2 = numberValue
          if 3 == arg2 then
            arg2 = 0
            numberValue = arg2
          end
        end
      end
    end
    arg2 = TriggerServerEvent
    arg3 = "07f615539e"
    arg4 = numberValue
    arg4 = 0 ~= arg4
    arg2(arg3, arg4)
  end
  arg2 = numberValue
  if arg2 > 0 then
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = pairs
    arg4 = GetActivePlayers
    arg4, arg5, arg6, arg7, arg8, arg9, arg10, mathHelper = arg4()
    arg3, arg4, arg5, arg6 = arg3(arg4, arg5, arg6, arg7, arg8, arg9, arg10, mathHelper)
    for arg7, arg8 in arg3, arg4, arg5, arg6 do
      arg9 = GetPlayerPed
      arg10 = arg8
      -- Beginner: result below is playerPed.
      arg9 = arg9(arg10)
      if 0 ~= arg9 and arg9 ~= arg2 then
        arg10 = workValue7
        mathHelper = arg9
        arg10(mathHelper)
      end
    end
  end
end
function workValue11()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, mathHelper, numberValue3, flag2, flag3, flag4, numberValue5, flag5, dataTable4, workValue, workValue2, workValue4, workValue6, workValue8, workValue10, workValue12, workValue13, workValue14, workValue15, workValue16, numberValue6, numberValue8, stringHelper, textValue5, numberValue9, numberValue10, numberValue11
  arg1 = flag
  if arg1 then
    arg1 = workValue3
    if arg1 then
      arg1 = GetPlayerFromServerId
      arg2 = workValue3
      -- Beginner: result below is playerIndex.
      arg1 = arg1(arg2)
      if -1 ~= arg1 then
        arg2 = CMG
        arg2 = arg2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        arg2 = arg2()
        arg3 = GetPlayerPed
        arg4 = arg1
        -- Beginner: result below is playerPed.
        arg3 = arg3(arg4)
        if 0 ~= arg3 then
          arg4 = GetEntityCoords
          arg5 = arg3
          -- Beginner: result below is entityCoords.
          arg4 = arg4(arg5)
          arg5 = GetEntityHealth
          arg6 = arg3
          -- Beginner: result below is health.
          arg5 = arg5(arg6)
          arg6 = GetEntityMaxHealth
          arg7 = arg3
          arg6 = arg6(arg7)
          arg7 = GetSelectedPedWeapon
          arg8 = arg3
          -- Beginner: result below is weaponHash.
          arg7 = arg7(arg8)
          arg8 = GetVehiclePedIsUsing
          arg9 = arg3
          arg8 = arg8(arg9)
          arg9 = GetInteriorAtCoords
          arg10 = arg4.x
          mathHelper = arg4.y
          numberValue3 = arg4.z
          -- Beginner: result below is interiorId.
          arg9 = arg9(arg10, mathHelper, numberValue3)
          if 0 ~= arg9 then
            arg10 = cmgCall.enabled
            if arg10 then
              arg10 = dataTable3
              arg10 = arg10[arg9]
              if not arg10 then
                arg10 = print
                mathHelper = string
                mathHelper = mathHelper.format
                numberValue3 = "[Spectate] Pinning interior %s"
                flag2 = arg9
                mathHelper, numberValue3, flag2, flag3, flag4, numberValue5, flag5, dataTable4, workValue, workValue2, workValue4, workValue6, workValue8, workValue10, workValue12, workValue13, workValue14, workValue15, workValue16, numberValue6, numberValue8, stringHelper, textValue5, numberValue9, numberValue10, numberValue11 = mathHelper(numberValue3, flag2)
                arg10(mathHelper, numberValue3, flag2, flag3, flag4, numberValue5, flag5, dataTable4, workValue, workValue2, workValue4, workValue6, workValue8, workValue10, workValue12, workValue13, workValue14, workValue15, workValue16, numberValue6, numberValue8, stringHelper, textValue5, numberValue9, numberValue10, numberValue11)
              end
            end
            arg10 = dataTable3
            mathHelper = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            mathHelper = mathHelper()
            arg10[arg9] = mathHelper
            arg10 = PinInteriorInMemory
            mathHelper = arg9
            arg10(mathHelper)
          end
          arg10 = cmgCall.enabled
          if arg10 then
            arg10 = CMG
            arg10 = arg10.drawDebugText
            mathHelper = "---------- Spectate ----------"
            arg10(mathHelper)
            arg10 = CMG
            arg10 = arg10.drawDebugText
            mathHelper = "Interior ID: %s"
            numberValue3 = arg9
            arg10(mathHelper, numberValue3)
            arg10 = 1
            mathHelper = pairs
            numberValue3 = dataTable3
            mathHelper, numberValue3, flag2, flag3 = mathHelper(numberValue3)
            for flag4 in mathHelper, numberValue3, flag2, flag3 do
              numberValue5 = CMG
              numberValue5 = numberValue5.drawDebugText
              flag5 = "Pinned (%s): %s"
              dataTable4 = arg10
              workValue = flag4
              numberValue5(flag5, dataTable4, workValue)
              arg10 = arg10 + 1
            end
          end
          arg10 = PinInteriorInMemory
          mathHelper = arg9
          arg10(mathHelper)
          arg10 = CMG
          arg10 = arg10.getOrganRoomKeyFromInteriorId
          mathHelper = arg9
          arg10 = arg10(mathHelper)
          if arg10 then
            mathHelper = ForceRoomForGameViewport
            numberValue3 = arg9
            flag2 = arg10
            mathHelper(numberValue3, flag2)
          end
          mathHelper = GetPedArmour
          numberValue3 = arg3
          mathHelper = mathHelper(numberValue3)
          numberValue3 = GetAmmoInPedWeapon
          flag2 = arg3
          flag3 = arg7
          numberValue3 = numberValue3(flag2, flag3)
          if 0 == arg8 then
            flag2 = eventRegistration2
            flag3 = 0.76
            flag4 = 1.465
            numberValue5 = 1.0
            flag5 = 1.0
            dataTable4 = 0.4
            workValue = string
            workValue = workValue.format
            workValue2 = "Player Speed: %.2f MPH"
            workValue4 = GetEntitySpeed
            workValue6 = arg3
            -- Beginner: result below is speed.
            workValue4 = workValue4(workValue6)
            workValue4 = workValue4 * 2.236936
            workValue = workValue(workValue2, workValue4)
            workValue2 = 51
            workValue4 = 153
            workValue6 = 255
            workValue8 = 200
            -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: 0.76.
            flag2(flag3, flag4, numberValue5, flag5, dataTable4, workValue, workValue2, workValue4, workValue6, workValue8)
          else
            flag2 = eventRegistration2
            flag3 = 0.76
            flag4 = 1.465
            numberValue5 = 1.0
            flag5 = 1.0
            dataTable4 = 0.4
            workValue = string
            workValue = workValue.format
            workValue2 = "Vehicle Speed: %.2f MPH"
            workValue4 = GetEntitySpeed
            workValue6 = arg8
            -- Beginner: result below is speed.
            workValue4 = workValue4(workValue6)
            workValue4 = workValue4 * 2.236936
            workValue = workValue(workValue2, workValue4)
            workValue2 = 51
            workValue4 = 153
            workValue6 = 255
            workValue8 = 200
            flag2(flag3, flag4, numberValue5, flag5, dataTable4, workValue, workValue2, workValue4, workValue6, workValue8)
          end
          flag2 = eventRegistration2
          flag3 = 0.76
          flag4 = 1.44
          numberValue5 = 1.0
          flag5 = 1.0
          dataTable4 = 0.4
          workValue = "Health: "
          workValue2 = arg5
          workValue4 = "/"
          workValue6 = arg6
          workValue = workValue .. workValue2 .. workValue4 .. workValue6
          workValue2 = 51
          workValue4 = 153
          workValue6 = 255
          workValue8 = 200
          -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: 0.76.
          flag2(flag3, flag4, numberValue5, flag5, dataTable4, workValue, workValue2, workValue4, workValue6, workValue8)
          flag2 = eventRegistration2
          flag3 = 0.76
          flag4 = 1.415
          numberValue5 = 1.0
          flag5 = 1.0
          dataTable4 = 0.4
          workValue = "Armor: "
          workValue2 = mathHelper
          workValue = workValue .. workValue2
          workValue2 = 51
          workValue4 = 153
          workValue6 = 255
          workValue8 = 200
          flag2(flag3, flag4, numberValue5, flag5, dataTable4, workValue, workValue2, workValue4, workValue6, workValue8)
          flag2 = eventRegistration2
          flag3 = 0.76
          flag4 = 1.39
          numberValue5 = 1.0
          flag5 = 1.0
          dataTable4 = 0.4
          workValue = "Vehicle Health: "
          workValue2 = GetEntityHealth
          workValue4 = GetVehiclePedIsIn
          workValue6 = arg3
          workValue8 = false
          workValue4, workValue6, workValue8, workValue10, workValue12, workValue13, workValue14, workValue15, workValue16, numberValue6, numberValue8, stringHelper, textValue5, numberValue9, numberValue10, numberValue11 = workValue4(workValue6, workValue8)
          -- Beginner: result below is health.
          workValue2 = workValue2(workValue4, workValue6, workValue8, workValue10, workValue12, workValue13, workValue14, workValue15, workValue16, numberValue6, numberValue8, stringHelper, textValue5, numberValue9, numberValue10, numberValue11)
          workValue = workValue .. workValue2
          workValue2 = 51
          workValue4 = 153
          workValue6 = 255
          workValue8 = 200
          -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: 0.76.
          flag2(flag3, flag4, numberValue5, flag5, dataTable4, workValue, workValue2, workValue4, workValue6, workValue8)
          flag2 = tostring
          flag3 = WeaponNames
          flag3 = flag3[arg7]
          flag2 = flag2(flag3)
          flag3 = eventRegistration2
          flag4 = 0.76
          numberValue5 = 1.365
          flag5 = 1.0
          dataTable4 = 1.0
          workValue = 0.4
          workValue2 = "Weapon: "
          workValue4 = flag2 or workValue4
          if not flag2 then
            workValue4 = "N/A"
          end
          workValue2 = workValue2 .. workValue4
          workValue4 = 51
          workValue6 = 153
          workValue8 = 255
          workValue10 = 200
          flag3(flag4, numberValue5, flag5, dataTable4, workValue, workValue2, workValue4, workValue6, workValue8, workValue10)
          flag3 = eventRegistration2
          flag4 = 0.76
          numberValue5 = 1.34
          flag5 = 1.0
          dataTable4 = 1.0
          workValue = 0.4
          workValue2 = "Ammo: "
          workValue4 = numberValue3 or workValue4
          if not numberValue3 then
            workValue4 = "N/A"
          end
          workValue2 = workValue2 .. workValue4
          workValue4 = 51
          workValue6 = 153
          workValue8 = 255
          workValue10 = 200
          -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: 0.76.
          flag3(flag4, numberValue5, flag5, dataTable4, workValue, workValue2, workValue4, workValue6, workValue8, workValue10)
          flag3 = GetActivePlayers
          flag3 = flag3()
          flag4 = pairs
          numberValue5 = flag3
          flag4, numberValue5, flag5, dataTable4 = flag4(numberValue5)
          for workValue, workValue2 in flag4, numberValue5, flag5, dataTable4 do
            workValue4 = GetPlayerPed
            workValue6 = workValue2
            -- Beginner: result below is playerPed.
            workValue4 = workValue4(workValue6)
            workValue6 = SetEntityNoCollisionEntity
            workValue8 = arg2
            workValue10 = workValue4
            workValue12 = true
            workValue6(workValue8, workValue10, workValue12)
          end
          flag4 = DisableControlAction
          numberValue5 = 2
          flag5 = 15
          dataTable4 = true
          flag4(numberValue5, flag5, dataTable4)
          flag4 = DisableControlAction
          numberValue5 = 2
          flag5 = 17
          dataTable4 = true
          flag4(numberValue5, flag5, dataTable4)
          flag4 = IsControlPressed
          numberValue5 = 2
          flag5 = 241
          flag4 = flag4(numberValue5, flag5)
          if flag4 then
            flag4 = numberValue13
            flag4 = flag4 + 0.5
            numberValue13 = flag4
          end
          flag4 = DisableControlAction
          numberValue5 = 2
          flag5 = 14
          dataTable4 = true
          flag4(numberValue5, flag5, dataTable4)
          flag4 = DisableControlAction
          numberValue5 = 2
          flag5 = 16
          dataTable4 = true
          flag4(numberValue5, flag5, dataTable4)
          flag4 = IsControlPressed
          numberValue5 = 2
          flag5 = 242
          flag4 = flag4(numberValue5, flag5)
          if flag4 then
            flag4 = numberValue13
            flag4 = flag4 - 0.5
            numberValue13 = flag4
          end
          flag4 = numberValue13
          if flag4 > -1 then
            flag4 = -1
            numberValue13 = flag4
          end
          flag4 = GetDisabledControlNormal
          numberValue5 = 0
          flag5 = 1
          flag4 = flag4(numberValue5, flag5)
          numberValue5 = GetDisabledControlNormal
          flag5 = 0
          dataTable4 = 2
          numberValue5 = numberValue5(flag5, dataTable4)
          flag5 = numberValue7
          dataTable4 = flag4 * 10
          flag5 = flag5 + dataTable4
          numberValue7 = flag5
          flag5 = numberValue7
          dataTable4 = 360
          if flag5 >= dataTable4 then
            flag5 = 0
            numberValue7 = flag5
          end
          flag5 = numberValue12
          dataTable4 = numberValue5 * 10
          flag5 = flag5 - dataTable4
          numberValue12 = flag5
          flag5 = numberValue12
          dataTable4 = 360
          if flag5 >= dataTable4 then
            flag5 = 0
            numberValue12 = flag5
          end
          flag5 = textValue
          dataTable4 = arg4
          workValue = numberValue13
          workValue2 = numberValue7
          workValue4 = numberValue12
          flag5 = flag5(dataTable4, workValue, workValue2, workValue4)
          dataTable4 = workValue39
          if dataTable4 then
            dataTable4 = SetCamCoord
            workValue = workValue39
            workValue2 = flag5.x
            workValue4 = flag5.y
            workValue6 = flag5.z
            dataTable4(workValue, workValue2, workValue4, workValue6)
            dataTable4 = PointCamAtEntity
            workValue = workValue39
            workValue2 = arg3
            workValue4 = 0.0
            workValue6 = 0.0
            workValue8 = 0.0
            workValue10 = false
            dataTable4(workValue, workValue2, workValue4, workValue6, workValue8, workValue10)
          end
          dataTable4 = SetFocusPosAndVel
          workValue = arg4.x
          workValue2 = arg4.y
          workValue4 = arg4.z
          workValue6 = 0.0
          workValue8 = 0.0
          workValue10 = 0.0
          dataTable4(workValue, workValue2, workValue4, workValue6, workValue8, workValue10)
          dataTable4 = LockMinimapPosition
          workValue = arg4.x
          workValue2 = arg4.y
          dataTable4(workValue, workValue2)
          dataTable4 = SetPlayerBlipPositionThisFrame
          workValue = arg4.x
          workValue2 = arg4.y
          dataTable4(workValue, workValue2)
          dataTable4 = GetFinalRenderedCamCoord
          dataTable4 = dataTable4()
          workValue = vector3Builder
          dataTable4 = dataTable4 - workValue
          dataTable4 = #dataTable4
          workValue = 2142.0
          if dataTable4 < workValue then
            dataTable4 = CMG
            dataTable4 = dataTable4.isInCayoPerico
            dataTable4 = dataTable4()
            if not dataTable4 then
              dataTable4 = EnableCayoPerico
              workValue = true
              dataTable4(workValue)
            end
          else
            dataTable4 = CMG
            dataTable4 = dataTable4.isInCayoPerico
            dataTable4 = dataTable4()
            if dataTable4 then
              dataTable4 = DisableCayoPerico
              workValue = true
              dataTable4(workValue)
            end
          end
          dataTable4 = CMG
          dataTable4 = dataTable4.hasClientPermission
          workValue = "admin.espspectate"
          dataTable4 = dataTable4(workValue)
          if dataTable4 then
            dataTable4 = CMG
            dataTable4 = dataTable4.isStreamerMode
            dataTable4 = dataTable4()
            if not dataTable4 then
              dataTable4 = workValue9
              workValue = arg3
              dataTable4(workValue)
            end
          end
          dataTable4 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          dataTable4 = dataTable4()
          workValue = numberValue2
          workValue = dataTable4 - workValue
          workValue2 = 2000
          if workValue > workValue2 then
            workValue = TriggerServerEvent
            workValue2 = "933f9e09bb"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "933f9e09bb".
            workValue(workValue2)
            numberValue2 = dataTable4
          end
          workValue = dataTable
          workValue = #workValue
          if workValue > 0 then
            workValue = CMG
            workValue = workValue.hasClientPermission
            workValue2 = "admin.spectatingnames"
            workValue = workValue(workValue2)
            if workValue then
              workValue = eventRegistration2
              workValue2 = 0.76
              workValue4 = 0.5
              workValue6 = 1.0
              workValue8 = 1.0
              workValue10 = 0.4
              workValue12 = "Staff Spectating:"
              workValue13 = 255
              workValue14 = 143
              workValue15 = 27
              workValue16 = 255
              -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: 0.76.
              workValue(workValue2, workValue4, workValue6, workValue8, workValue10, workValue12, workValue13, workValue14, workValue15, workValue16)
              workValue = pairs
              workValue2 = dataTable
              workValue, workValue2, workValue4, workValue6 = workValue(workValue2)
              for workValue8, workValue10 in workValue, workValue2, workValue4, workValue6 do
                workValue12 = fullPlayerListData
                workValue12 = workValue12[workValue10]
                if workValue12 then
                  workValue13 = eventRegistration2
                  workValue14 = 0.76
                  workValue15 = workValue8 / 30.0
                  workValue15 = 0.5 + workValue15
                  workValue16 = 1.0
                  numberValue6 = 1.0
                  numberValue8 = 0.4
                  stringHelper = string
                  stringHelper = stringHelper.format
                  textValue5 = "%s (%s)"
                  numberValue9 = workValue12[2]
                  numberValue10 = workValue10
                  stringHelper = stringHelper(textValue5, numberValue9, numberValue10)
                  textValue5 = 255
                  numberValue9 = 143
                  numberValue10 = 27
                  numberValue11 = 255
                  workValue13(workValue14, workValue15, workValue16, numberValue6, numberValue8, stringHelper, textValue5, numberValue9, numberValue10, numberValue11)
                end
              end
            else
              workValue = eventRegistration2
              workValue2 = 0.76
              workValue4 = 0.5
              workValue6 = 1.0
              workValue8 = 1.0
              workValue10 = 0.4
              workValue12 = tostring
              workValue13 = dataTable
              workValue13 = #workValue13
              workValue12 = workValue12(workValue13)
              workValue13 = " Staff Spectating"
              workValue12 = workValue12 .. workValue13
              workValue13 = 255
              workValue14 = 143
              workValue15 = 27
              workValue16 = 255
              -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: 0.76.
              workValue(workValue2, workValue4, workValue6, workValue8, workValue10, workValue12, workValue13, workValue14, workValue15, workValue16)
            end
          end
          workValue = dataTable2
          workValue = #workValue
          if workValue > 0 then
            workValue2 = workValue
            workValue4 = 1
            workValue6 = -1
            for workValue8 = workValue2, workValue4, workValue6 do
              workValue10 = dataTable2
              workValue10 = workValue10[workValue8]
              workValue12 = workValue10[2]
              workValue12 = dataTable4 - workValue12
              workValue13 = 3000
              if workValue12 > workValue13 then
                workValue12 = table
                workValue12 = workValue12.remove
                workValue13 = dataTable2
                workValue14 = workValue8
                workValue12(workValue13, workValue14)
              end
            end
            workValue2 = pairs
            workValue4 = dataTable2
            workValue2, workValue4, workValue6, workValue8 = workValue2(workValue4)
            for workValue10, workValue12 in workValue2, workValue4, workValue6, workValue8 do
              workValue13 = CMG
              workValue13 = workValue13.DrawText
              workValue14 = 0.7
              workValue15 = workValue10 / 45.0
              workValue15 = 0.4 + workValue15
              workValue16 = workValue12[1]
              numberValue6 = 0.4
              numberValue8 = nil
              stringHelper = nil
              textValue5 = nil
              numberValue9 = true
              workValue13(workValue14, workValue15, workValue16, numberValue6, numberValue8, stringHelper, textValue5, numberValue9)
            end
          end
        end
      else
        arg2 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        arg2 = arg2()
        arg3 = numberValue4
        arg3 = arg2 - arg3
        arg4 = 5000
        if arg3 >= arg4 then
          numberValue4 = arg2
          arg3 = tCMG
          arg3 = arg3.notify
          arg4 = "~r~Couldn't spectate, person not in your zone"
          -- Beginner: Show a notification to the player.
          arg3(arg4)
        end
      end
      arg2 = eventRegistration
      arg3 = false
      -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: false.
      arg2(arg3)
    end
  end
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
eventRegistration3 = workValue11
cmgCall3 = "Staff Spectator"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(eventRegistration3, cmgCall3)
cmgCall2 = {}
eventRegistration3 = AddStateBagChangeHandler
cmgCall3 = "conceal"
textValue3 = nil
function textValue4(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, arg9
  arg4 = tonumber
  arg5 = stringsplit
  arg6 = arg1
  arg7 = ":"
  arg5 = arg5(arg6, arg7)
  arg5 = arg5[2]
  arg4 = arg4(arg5)
  if not arg4 then
    return
  end
  if arg3 then
    arg5 = cmgCall2
    arg5[arg4] = true
  else
    arg5 = GetPlayerFromServerId
    arg6 = arg4
    -- Beginner: result below is playerIndex.
    arg5 = arg5(arg6)
    if -1 ~= arg5 then
      arg6 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      arg6 = arg6()
      if arg5 ~= arg6 then
        arg6 = NetworkConcealPlayer
        arg7 = arg5
        arg8 = false
        arg9 = false
        arg6(arg7, arg8, arg9)
      end
    end
    arg6 = cmgCall2
    arg6[arg4] = nil
  end
end
eventRegistration3(cmgCall3, textValue3, textValue4)
eventRegistration3 = RegisterNetEvent
cmgCall3 = "onPlayerDropped"
-- Beginner: this function handles network event "onPlayerDropped".
function textValue3(arg1)
  local arg2
  arg2 = cmgCall2
  arg2[arg1] = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "onPlayerDropped".
eventRegistration3(cmgCall3, textValue3)
-- Beginner: this function handles network event "onPlayerDropped".
function eventRegistration3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10
  arg1 = pairs
  arg2 = cmgCall2
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5 in arg1, arg2, arg3, arg4 do
    arg6 = GetPlayerFromServerId
    arg7 = arg5
    -- Beginner: result below is playerIndex.
    arg6 = arg6(arg7)
    if -1 ~= arg6 then
      arg7 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      arg7 = arg7()
      if arg6 ~= arg7 then
        arg7 = NetworkConcealPlayer
        arg8 = arg6
        arg9 = true
        arg10 = true
        arg7(arg8, arg9, arg10)
      end
    end
  end
end
cmgCall3 = CMG
cmgCall3 = cmgCall3.createThreadOnTick
textValue3 = eventRegistration3
textValue4 = "Staff Spectator Concealing"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall3(textValue3, textValue4)
cmgCall3 = CMG
function textValue3()
  local arg1, arg2
  arg1 = flag
  return arg1
end
cmgCall3.isInSpectate = textValue3
cmgCall3 = RegisterNetEvent
textValue3 = "5126fa6ac5"
-- Beginner: this function handles network event "5126fa6ac5".
function textValue4(arg1)
  local arg2, arg3
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  arg3 = "admin.tickets"
  arg2 = arg2(arg3)
  if arg2 then
    dataTable = arg1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5126fa6ac5".
cmgCall3(textValue3, textValue4)
cmgCall3 = RegisterNetEvent
textValue3 = "90dc9c490b"
-- Beginner: this function handles network event "90dc9c490b".
function textValue4(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, mathHelper, numberValue3, flag2, flag3, flag4, numberValue5, flag5
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  arg3 = pairs
  arg4 = arg1
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    arg9 = CMG
    arg9 = arg9.isKeyboardKeyCaptured
    arg10 = arg8[1]
    arg9 = arg9(arg10)
    if arg9 then
      arg9 = "~r~"
      if arg9 then
        goto flow_label_17
      end
    end
    arg9 = "~g~"
    ::flow_label_17::
    arg10 = arg8[1]
    mathHelper = table
    mathHelper = mathHelper.insert
    numberValue3 = dataTable2
    flag2 = {}
    flag3 = string
    flag3 = flag3.format
    flag4 = "%s%s"
    numberValue5 = arg9
    flag5 = arg10
    flag3 = flag3(flag4, numberValue5, flag5)
    flag4 = arg2
    flag2[1] = flag3
    flag2[2] = flag4
    mathHelper(numberValue3, flag2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "90dc9c490b".
cmgCall3(textValue3, textValue4)
cmgCall3 = CMG
cmgCall3 = cmgCall3.registerDevMenuItems
textValue3 = "Spectate"
function textValue4()
  local arg1, arg2, arg3, arg4, arg5, arg6
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Debug"
  arg3 = "Display debug information for spectate."
  arg4 = cmgCall.enabled
  arg5 = {}
  function arg6(arg12, arg22, arg32, arg42)
    cmgCall.enabled = arg42
  end
  -- Beginner: Draw a RageUI checkbox.
  arg1(arg2, arg3, arg4, arg5, arg6)
end
cmgCall3(textValue3, textValue4)