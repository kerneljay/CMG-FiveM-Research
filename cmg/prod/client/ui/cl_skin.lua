--[[
    Beginner Guide: cl_skin.lua
    ===========================

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
    BEGINNER GUIDE — Skin
    =====================

    File: cmg/prod/client/ui/cl_skin.lua
    Purpose: This file contains menu/UI logic.

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

    Network/hash identifiers found: 4
      They are intentionally left unchanged because matching server code may use them.
      * 9c3ac4fb9c
      * daf420849d
      * 5554c4f64b
      * b0ae230dba

    Example player-facing text in this file:
      * Press ~INPUT_FRONTEND_LB~ and ~INPUT_FRONTEND_RB~ to rotate your character.

]]
local flag, numberValue, dataTable, dataTable2, cmgCall2, textValue, cmgCall3, textValue2, textValue3
flag = false
numberValue = 0
dataTable = {}
dataTable2 = {}
cmgCall2 = CMG
cmgCall2 = cmgCall2.uiRegisterCallback
textValue = "updateSkin"
function cmgCall3(arg1)
  local arg2, workValue18, workValue24, workValue25, workValue26, workValue27, workValue28, workValue29, workValue30, workValue, workValue2, workValue3, workValue4, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue11, workValue12, workValue13, workValue14, workValue15, cmgCall, numberValue2, workValue16, workValue17, numberValue3, workValue19, numberValue4, numberValue5, workValue20, workValue21, workValue22, workValue23, numberValue6, flag2
  arg2 = tonumber
  workValue18 = arg1.dad
  arg2 = arg2(workValue18)
  if not arg2 then
    arg2 = 0
  end
  workValue18 = tonumber
  workValue24 = arg1.mum
  workValue18 = workValue18(workValue24)
  if not workValue18 then
    workValue18 = 0
  end
  workValue24 = tonumber
  workValue25 = arg1.dadmumpercent
  workValue24 = workValue24(workValue25)
  if not workValue24 then
    workValue24 = 0
  end
  workValue25 = tonumber
  workValue26 = arg1.skin
  workValue25 = workValue25(workValue26)
  if not workValue25 then
    workValue25 = 0
  end
  workValue26 = tonumber
  workValue27 = arg1.eyecolor
  workValue26 = workValue26(workValue27)
  workValue27 = tonumber
  workValue28 = arg1.acne
  workValue27 = workValue27(workValue28)
  workValue28 = tonumber
  workValue29 = arg1.skinproblem
  workValue28 = workValue28(workValue29)
  workValue29 = tonumber
  workValue30 = arg1.freckle
  workValue29 = workValue29(workValue30)
  workValue30 = tonumber
  workValue = arg1.wrinkle
  workValue30 = workValue30(workValue)
  workValue = tonumber
  workValue2 = arg1.wrinkleopacity
  workValue = workValue(workValue2)
  if not workValue then
    workValue = 10
  end
  workValue2 = tonumber
  workValue3 = arg1.hair
  workValue2 = workValue2(workValue3)
  workValue3 = tonumber
  workValue4 = arg1.haircolor
  workValue3 = workValue3(workValue4)
  if not workValue3 then
    workValue3 = 0
  end
  workValue4 = tonumber
  workValue5 = arg1.hairtint
  workValue4 = workValue4(workValue5)
  if not workValue4 then
    workValue4 = 0
  end
  workValue5 = tonumber
  workValue6 = arg1.eyebrow
  workValue5 = workValue5(workValue6)
  workValue6 = tonumber
  workValue7 = arg1.eyebrowopacity
  workValue6 = workValue6(workValue7)
  if not workValue6 then
    workValue6 = 10
  end
  workValue7 = tonumber
  workValue8 = arg1.beard
  workValue7 = workValue7(workValue8)
  workValue8 = tonumber
  workValue9 = arg1.beardopacity
  workValue8 = workValue8(workValue9)
  if not workValue8 then
    workValue8 = 10
  end
  workValue9 = tonumber
  workValue10 = arg1.beardcolor
  workValue9 = workValue9(workValue10)
  workValue10 = tonumber
  workValue11 = arg1.lipstick
  workValue10 = workValue10(workValue11)
  workValue11 = tonumber
  workValue12 = arg1.lipstickcolour
  workValue11 = workValue11(workValue12)
  workValue12 = tonumber
  workValue13 = arg1.eyeshadow
  workValue12 = workValue12(workValue13)
  workValue13 = tonumber
  workValue14 = arg1.eyeshadowcolour
  workValue13 = workValue13(workValue14)
  workValue14 = tonumber
  workValue15 = arg1.facepaints
  workValue14 = workValue14(workValue15)
  workValue15 = tonumber
  cmgCall = arg1.facepaintscolour
  workValue15 = workValue15(cmgCall)
  cmgCall = CMG
  cmgCall = cmgCall.loadModel
  numberValue2 = 1885233650
  -- Beginner: Request/load a GTA model before spawning or applying it.
  cmgCall(numberValue2)
  cmgCall = CMG
  cmgCall = cmgCall.loadModel
  numberValue2 = -1667301416
  cmgCall(numberValue2)
  cmgCall = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgCall = cmgCall()
  numberValue2 = workValue24 / 10.0
  workValue16 = SetPedHeadBlendData
  workValue17 = cmgCall
  numberValue3 = arg2
  workValue19 = workValue18
  numberValue4 = 0
  numberValue5 = workValue25
  workValue20 = workValue25
  workValue21 = workValue25
  workValue22 = numberValue2
  workValue23 = numberValue2
  numberValue6 = 0.0
  flag2 = false
  workValue16(workValue17, numberValue3, workValue19, numberValue4, numberValue5, workValue20, workValue21, workValue22, workValue23, numberValue6, flag2)
  if workValue26 then
    workValue16 = SetPedEyeColor
    workValue17 = cmgCall
    numberValue3 = workValue26
    workValue16(workValue17, numberValue3)
  end
  if 0 == workValue27 then
    workValue16 = SetPedHeadOverlay
    workValue17 = cmgCall
    numberValue3 = 0
    workValue19 = workValue27
    numberValue4 = 0.0
    workValue16(workValue17, numberValue3, workValue19, numberValue4)
  elseif workValue27 then
    workValue16 = SetPedHeadOverlay
    workValue17 = cmgCall
    numberValue3 = 0
    workValue19 = workValue27
    numberValue4 = 1.0
    workValue16(workValue17, numberValue3, workValue19, numberValue4)
  end
  if workValue28 then
    workValue16 = SetPedHeadOverlay
    workValue17 = cmgCall
    numberValue3 = 6
    workValue19 = workValue28
    numberValue4 = 1.0
    workValue16(workValue17, numberValue3, workValue19, numberValue4)
  end
  if 0 == workValue29 then
    workValue16 = SetPedHeadOverlay
    workValue17 = cmgCall
    numberValue3 = 9
    workValue19 = workValue29
    numberValue4 = 0.0
    workValue16(workValue17, numberValue3, workValue19, numberValue4)
  elseif workValue29 then
    workValue16 = SetPedHeadOverlay
    workValue17 = cmgCall
    numberValue3 = 9
    workValue19 = workValue29
    numberValue4 = 1.0
    workValue16(workValue17, numberValue3, workValue19, numberValue4)
  end
  if workValue30 then
    workValue16 = SetPedHeadOverlay
    workValue17 = cmgCall
    numberValue3 = 3
    workValue19 = workValue30
    numberValue4 = workValue * 0.1
    workValue16(workValue17, numberValue3, workValue19, numberValue4)
  end
  if workValue2 then
    workValue16 = SetPedComponentVariation
    workValue17 = cmgCall
    numberValue3 = 2
    workValue19 = workValue2
    numberValue4 = 0
    numberValue5 = 2
    workValue16(workValue17, numberValue3, workValue19, numberValue4, numberValue5)
  end
  workValue16 = SetPedHairColor
  workValue17 = cmgCall
  numberValue3 = workValue3
  workValue19 = workValue4
  workValue16(workValue17, numberValue3, workValue19)
  if workValue5 then
    workValue16 = SetPedHeadOverlay
    workValue17 = cmgCall
    numberValue3 = 2
    workValue19 = workValue5
    numberValue4 = workValue6 * 0.1
    workValue16(workValue17, numberValue3, workValue19, numberValue4)
  end
  if workValue7 then
    workValue16 = SetPedHeadOverlay
    workValue17 = cmgCall
    numberValue3 = 1
    workValue19 = workValue7
    numberValue4 = workValue8 * 0.1
    workValue16(workValue17, numberValue3, workValue19, numberValue4)
  end
  if workValue9 then
    workValue16 = SetPedHeadOverlayColor
    workValue17 = cmgCall
    numberValue3 = 1
    workValue19 = 1
    numberValue4 = workValue9
    numberValue5 = workValue9
    workValue16(workValue17, numberValue3, workValue19, numberValue4, numberValue5)
    workValue16 = SetPedHeadOverlayColor
    workValue17 = cmgCall
    numberValue3 = 2
    workValue19 = 1
    numberValue4 = workValue9
    numberValue5 = workValue9
    workValue16(workValue17, numberValue3, workValue19, numberValue4, numberValue5)
  end
  if workValue14 then
    workValue16 = SetPedHeadOverlay
    workValue17 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    workValue17 = workValue17()
    numberValue3 = 5
    workValue19 = workValue14
    if workValue14 > 0 then
      numberValue4 = 1.0
      if numberValue4 then
        goto flow_label_243
      end
    end
    numberValue4 = 0.0
    ::flow_label_243::
    workValue16(workValue17, numberValue3, workValue19, numberValue4)
  end
  if workValue15 then
    workValue16 = SetPedHeadOverlayColor
    workValue17 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    workValue17 = workValue17()
    numberValue3 = 5
    workValue19 = 2
    numberValue4 = workValue15
    numberValue5 = workValue15
    workValue16(workValue17, numberValue3, workValue19, numberValue4, numberValue5)
  end
  workValue16 = 1.0
  if 0 == workValue12 then
    workValue16 = 0.0
  end
  if workValue12 then
    workValue17 = SetPedHeadOverlay
    numberValue3 = cmgCall
    workValue19 = 4
    numberValue4 = workValue12
    numberValue5 = workValue16
    workValue17(numberValue3, workValue19, numberValue4, numberValue5)
  end
  workValue17 = 1.0
  if 0 == workValue10 then
    workValue17 = 0.0
  end
  if workValue10 then
    numberValue3 = SetPedHeadOverlay
    workValue19 = cmgCall
    numberValue4 = 8
    numberValue5 = workValue10
    workValue20 = workValue17
    numberValue3(workValue19, numberValue4, numberValue5, workValue20)
  end
  if workValue13 then
    numberValue3 = SetPedHeadOverlayColor
    workValue19 = cmgCall
    numberValue4 = 4
    numberValue5 = 1
    workValue20 = workValue13
    workValue21 = workValue13
    numberValue3(workValue19, numberValue4, numberValue5, workValue20, workValue21)
  end
  if workValue11 then
    numberValue3 = SetPedHeadOverlayColor
    workValue19 = cmgCall
    numberValue4 = 8
    numberValue5 = 1
    workValue20 = workValue11
    workValue21 = workValue11
    numberValue3(workValue19, numberValue4, numberValue5, workValue20, workValue21)
  end
  numberValue3 = SetPedComponentVariation
  workValue19 = cmgCall
  numberValue4 = 1
  numberValue5 = 0
  workValue20 = 0
  workValue21 = 2
  numberValue3(workValue19, numberValue4, numberValue5, workValue20, workValue21)
  numberValue3 = SetModelAsNoLongerNeeded
  workValue19 = 1885233650
  numberValue3(workValue19)
  numberValue3 = SetModelAsNoLongerNeeded
  workValue19 = 1885233650
  numberValue3(workValue19)
  numberValue3 = {}
  numberValue3.dad = arg2
  numberValue3.mum = workValue18
  numberValue3.skin = workValue25
  numberValue3.dadmumpercent = workValue24
  numberValue3.eyecolor = workValue26
  numberValue3.acne = workValue27
  numberValue3.skinproblem = workValue28
  numberValue3.freckle = workValue29
  numberValue3.wrinkle = workValue30
  numberValue3.wrinkleopacity = workValue
  numberValue3.hair = workValue2
  numberValue3.haircolor = workValue3
  numberValue3.hairtint = workValue4
  numberValue3.eyebrow = workValue5
  numberValue3.eyebrowopacity = workValue6
  numberValue3.beard = workValue7
  numberValue3.beardopacity = workValue8
  numberValue3.beardcolor = workValue9
  numberValue3.eyeshadow = workValue12
  numberValue3.lipstick = workValue10
  numberValue3.eyeshadowcolour = workValue13
  numberValue3.lipstickcolour = workValue11
  numberValue3.facepaints = workValue14
  numberValue3.facepaintscolour = workValue15
  workValue19 = CMG
  workValue19 = workValue19.getModelGender
  workValue19 = workValue19()
  if "male" == workValue19 then
    dataTable = numberValue3
  else
    dataTable2 = numberValue3
  end
  workValue19 = TriggerServerEvent
  numberValue4 = "9c3ac4fb9c"
  numberValue5 = dataTable
  workValue20 = dataTable2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c3ac4fb9c".
  workValue19(numberValue4, numberValue5, workValue20)
end
cmgCall2(textValue, cmgCall3)
cmgCall2 = RegisterNetEvent
textValue = "daf420849d"
-- Beginner: this function handles network event "daf420849d".
function cmgCall3(arg1, arg2)
  dataTable = arg1
  dataTable2 = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "daf420849d".
cmgCall2(textValue, cmgCall3)
cmgCall2 = RegisterNetEvent
textValue = "5554c4f64b"
-- Beginner: this function handles network event "5554c4f64b".
function cmgCall3()
  local arg1, arg2
  arg1 = {}
  dataTable = arg1
  arg1 = {}
  dataTable2 = arg1
end
cmgCall2(textValue, cmgCall3)
-- Beginner: this function handles network event "5554c4f64b".
function cmgCall2(arg1)
  local arg2, workValue18, workValue24, workValue25
  flag = arg1
  arg2 = FreezeEntityPosition
  workValue18 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workValue18 = workValue18()
  workValue24 = arg1
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(workValue18, workValue24)
  arg2 = ClearPedTasksImmediately
  workValue18 = PlayerPedId
  workValue18, workValue24, workValue25 = workValue18()
  arg2(workValue18, workValue24, workValue25)
  if not arg1 then
    arg2 = CMG
    arg2 = arg2.uiSendMessage
    workValue18 = {}
    workValue18.type = "APP_TOGGLE"
    workValue18.app = ""
    arg2(workValue18)
    arg2 = CMG
    arg2 = arg2.uiSetFocus
    workValue18 = false
    workValue24 = false
    workValue25 = false
    arg2(workValue18, workValue24, workValue25)
    return
  end
  arg2 = CMG
  arg2 = arg2.uiSendMessage
  workValue18 = {}
  workValue18.type = "APP_TOGGLE"
  workValue18.app = "skin"
  arg2(workValue18)
  arg2 = CMG
  arg2 = arg2.uiSetFocus
  workValue18 = true
  workValue24 = true
  workValue25 = false
  arg2(workValue18, workValue24, workValue25)
  arg2 = {}
  workValue18 = GetPedHeadOverlayNum
  workValue24 = 1
  workValue18 = workValue18(workValue24)
  workValue18 = workValue18 - 1
  arg2.beard = workValue18
  workValue18 = GetPedHeadOverlayNum
  workValue24 = 5
  workValue18 = workValue18(workValue24)
  arg2.facepaints = workValue18
  workValue18 = GetPedHeadOverlayNum
  workValue24 = 8
  workValue18 = workValue18(workValue24)
  workValue18 = workValue18 - 1
  arg2.lipstick = workValue18
  workValue18 = GetPedHeadOverlayNum
  workValue24 = 3
  workValue18 = workValue18(workValue24)
  workValue18 = workValue18 - 1
  arg2.wrinkle = workValue18
  workValue18 = CMG
  workValue18 = workValue18.uiSendMessage
  workValue24 = {}
  workValue24.type = "SET_SKIN_MAX_VALUES"
  workValue24.info = arg2
  workValue18(workValue24)
  workValue18 = CMG
  workValue18 = workValue18.getModelGender
  workValue18 = workValue18()
  if "male" == workValue18 then
    workValue18 = dataTable
    if workValue18 then
      goto flow_label_80
    end
  end
  workValue18 = dataTable2
  ::flow_label_80::
  if workValue18 then
    workValue24 = CMG
    workValue24 = workValue24.uiSendMessage
    workValue25 = {}
    workValue25.type = "SET_SKIN_CACHED_DATA"
    workValue25.info = workValue18
    workValue24(workValue25)
  end
end
function textValue()
  local arg1, arg2, workValue18
  arg1 = flag
  if not arg1 then
    return
  end
  arg1 = InvalidateIdleCam
  arg1()
  arg1 = drawNativeNotification
  arg2 = "Press ~INPUT_FRONTEND_LB~ and ~INPUT_FRONTEND_RB~ to rotate your character."
  workValue18 = true
  -- Beginner: Show a GTA-style notification/help prompt.
  arg1(arg2, workValue18)
end
cmgCall3 = CMG
cmgCall3 = cmgCall3.createThreadOnTick
textValue2 = textValue
textValue3 = "Skin"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall3(textValue2, textValue3)
cmgCall3 = AddEventHandler
textValue2 = "b0ae230dba"
-- Beginner: this function runs when client event "b0ae230dba" fires.
function textValue3()
  local arg1, arg2, workValue18, workValue24, workValue25, workValue26, workValue27, workValue28
  arg1 = flag
  if arg1 then
    return
  end
  arg1 = cmgCall2
  arg2 = true
  -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: true.
  arg1(arg2)
  arg1 = CreateCam
  arg2 = "DEFAULT_SCRIPTED_CAMERA"
  workValue18 = true
  -- Beginner: result below is cameraHandle.
  arg1 = arg1(arg2, workValue18)
  numberValue = arg1
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetEntityCoords
  workValue18 = arg1
  -- Beginner: result below is entityCoords.
  arg2 = arg2(workValue18)
  workValue18 = SetCamCoord
  workValue24 = numberValue
  workValue25 = arg2.x
  workValue26 = arg2.y
  workValue27 = arg2.z
  workValue18(workValue24, workValue25, workValue26, workValue27)
  workValue18 = SetCamRot
  workValue24 = numberValue
  workValue25 = 0.0
  workValue26 = 0.0
  workValue27 = 0.0
  workValue28 = 2
  workValue18(workValue24, workValue25, workValue26, workValue27, workValue28)
  workValue18 = SetCamActive
  workValue24 = numberValue
  workValue25 = true
  workValue18(workValue24, workValue25)
  workValue18 = RenderScriptCams
  workValue24 = true
  workValue25 = false
  workValue26 = 0
  workValue27 = true
  workValue28 = true
  workValue18(workValue24, workValue25, workValue26, workValue27, workValue28)
  workValue18 = SetCamCoord
  workValue24 = numberValue
  workValue25 = arg2.x
  workValue26 = arg2.y
  workValue27 = arg2.z
  workValue18(workValue24, workValue25, workValue26, workValue27)
  workValue18 = SetCamCoord
  workValue24 = numberValue
  workValue25 = arg2.x
  workValue25 = workValue25 + 0.2
  workValue26 = arg2.y
  workValue26 = workValue26 + 0.5
  workValue27 = arg2.z
  workValue27 = workValue27 + 0.7
  workValue18(workValue24, workValue25, workValue26, workValue27)
  workValue18 = SetCamRot
  workValue24 = numberValue
  workValue25 = 0.0
  workValue26 = 0.0
  workValue27 = 150.0
  workValue28 = 2
  workValue18(workValue24, workValue25, workValue26, workValue27, workValue28)
end
-- Beginner: Register a client-side event handler. Event/command: "b0ae230dba".
cmgCall3(textValue2, textValue3)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue2 = "closeSkinUI"
function textValue3()
  local arg1, arg2, workValue18, workValue24, workValue25, workValue26
  arg1 = flag
  if not arg1 then
    return
  end
  arg1 = cmgCall2
  arg2 = false
  -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: false.
  arg1(arg2)
  arg1 = numberValue
  if 0 ~= arg1 then
    arg1 = SetCamActive
    arg2 = numberValue
    workValue18 = false
    arg1(arg2, workValue18)
    arg1 = RenderScriptCams
    arg2 = false
    workValue18 = true
    workValue24 = 500
    workValue25 = true
    workValue26 = true
    arg1(arg2, workValue18, workValue24, workValue25, workValue26)
    arg1 = 0
    numberValue = arg1
  end
end
cmgCall3(textValue2, textValue3)
cmgCall3 = CMG
cmgCall3 = cmgCall3.uiRegisterCallback
textValue2 = "rotateSkinCharacter"
function textValue3(arg1)
  local arg2, workValue18, workValue24, workValue25, workValue26
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  workValue18 = SetEntityHeading
  workValue24 = arg2
  workValue25 = GetEntityHeading
  workValue26 = arg2
  -- Beginner: result below is heading.
  workValue25 = workValue25(workValue26)
  workValue26 = arg1.isLeft
  if workValue26 then
    workValue26 = 10.0
    if workValue26 then
      goto flow_label_15
    end
  end
  workValue26 = -10.0
  ::flow_label_15::
  workValue25 = workValue25 + workValue26
  -- Beginner: Change the direction an entity is facing.
  workValue18(workValue24, workValue25)
end
cmgCall3(textValue2, textValue3)