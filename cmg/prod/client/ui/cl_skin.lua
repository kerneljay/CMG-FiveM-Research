--[[
    LEVEL 1 BEGINNER GUIDE — Skin
    ==================================

    File: cmg/prod/client/ui/cl_skin.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: NUI/menu/interface behaviour, specifically the Skin feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 8
      * Background threads: 0
      * Always-running loops: 0
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
local stateFlag, number, dataCollection, dataCollection2, cmgOperation2, text, cmgOperation3, text2, text3
stateFlag = false
number = 0
dataCollection = {}
dataCollection2 = {}
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.uiRegisterCallback
text = "updateSkin"

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1) ===
function cmgOperation3(localValue1)
  local localValue2, workingValue18, workingValue24, workingValue25, workingValue26, workingValue27, workingValue28, workingValue29, workingValue30, workingValue, workingValue2, workingValue3, workingValue4, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14, workingValue15, cmgOperation, number2, workingValue16, workingValue17, number3, workingValue19, number4, number5, workingValue20, workingValue21, workingValue22, workingValue23, number6, stateFlag2
  localValue2 = tonumber
  workingValue18 = localValue1.dad
  localValue2 = localValue2(workingValue18)
  if not localValue2 then
    localValue2 = 0
  end
  workingValue18 = tonumber
  workingValue24 = localValue1.mum
  workingValue18 = workingValue18(workingValue24)
  if not workingValue18 then
    workingValue18 = 0
  end
  workingValue24 = tonumber
  workingValue25 = localValue1.dadmumpercent
  workingValue24 = workingValue24(workingValue25)
  if not workingValue24 then
    workingValue24 = 0
  end
  workingValue25 = tonumber
  workingValue26 = localValue1.skin
  workingValue25 = workingValue25(workingValue26)
  if not workingValue25 then
    workingValue25 = 0
  end
  workingValue26 = tonumber
  workingValue27 = localValue1.eyecolor
  workingValue26 = workingValue26(workingValue27)
  workingValue27 = tonumber
  workingValue28 = localValue1.acne
  workingValue27 = workingValue27(workingValue28)
  workingValue28 = tonumber
  workingValue29 = localValue1.skinproblem
  workingValue28 = workingValue28(workingValue29)
  workingValue29 = tonumber
  workingValue30 = localValue1.freckle
  workingValue29 = workingValue29(workingValue30)
  workingValue30 = tonumber
  workingValue = localValue1.wrinkle
  workingValue30 = workingValue30(workingValue)
  workingValue = tonumber
  workingValue2 = localValue1.wrinkleopacity
  workingValue = workingValue(workingValue2)
  if not workingValue then
    workingValue = 10
  end
  workingValue2 = tonumber
  workingValue3 = localValue1.hair
  workingValue2 = workingValue2(workingValue3)
  workingValue3 = tonumber
  workingValue4 = localValue1.haircolor
  workingValue3 = workingValue3(workingValue4)
  if not workingValue3 then
    workingValue3 = 0
  end
  workingValue4 = tonumber
  workingValue5 = localValue1.hairtint
  workingValue4 = workingValue4(workingValue5)
  if not workingValue4 then
    workingValue4 = 0
  end
  workingValue5 = tonumber
  workingValue6 = localValue1.eyebrow
  workingValue5 = workingValue5(workingValue6)
  workingValue6 = tonumber
  workingValue7 = localValue1.eyebrowopacity
  workingValue6 = workingValue6(workingValue7)
  if not workingValue6 then
    workingValue6 = 10
  end
  workingValue7 = tonumber
  workingValue8 = localValue1.beard
  workingValue7 = workingValue7(workingValue8)
  workingValue8 = tonumber
  workingValue9 = localValue1.beardopacity
  workingValue8 = workingValue8(workingValue9)
  if not workingValue8 then
    workingValue8 = 10
  end
  workingValue9 = tonumber
  workingValue10 = localValue1.beardcolor
  workingValue9 = workingValue9(workingValue10)
  workingValue10 = tonumber
  workingValue11 = localValue1.lipstick
  workingValue10 = workingValue10(workingValue11)
  workingValue11 = tonumber
  workingValue12 = localValue1.lipstickcolour
  workingValue11 = workingValue11(workingValue12)
  workingValue12 = tonumber
  workingValue13 = localValue1.eyeshadow
  workingValue12 = workingValue12(workingValue13)
  workingValue13 = tonumber
  workingValue14 = localValue1.eyeshadowcolour
  workingValue13 = workingValue13(workingValue14)
  workingValue14 = tonumber
  workingValue15 = localValue1.facepaints
  workingValue14 = workingValue14(workingValue15)
  workingValue15 = tonumber
  cmgOperation = localValue1.facepaintscolour
  workingValue15 = workingValue15(cmgOperation)
  cmgOperation = CMG
  cmgOperation = cmgOperation.loadModel
  number2 = 1885233650
  -- Beginner: Request/load a GTA model before spawning or applying it.
  cmgOperation(number2)
  cmgOperation = CMG
  cmgOperation = cmgOperation.loadModel
  number2 = -1667301416
  cmgOperation(number2)
  cmgOperation = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgOperation = cmgOperation()
  number2 = workingValue24 / 10.0
  workingValue16 = SetPedHeadBlendData
  workingValue17 = cmgOperation
  number3 = localValue2
  workingValue19 = workingValue18
  number4 = 0
  number5 = workingValue25
  workingValue20 = workingValue25
  workingValue21 = workingValue25
  workingValue22 = number2
  workingValue23 = number2
  number6 = 0.0
  stateFlag2 = false
  workingValue16(workingValue17, number3, workingValue19, number4, number5, workingValue20, workingValue21, workingValue22, workingValue23, number6, stateFlag2)
  if workingValue26 then
    workingValue16 = SetPedEyeColor
    workingValue17 = cmgOperation
    number3 = workingValue26
    workingValue16(workingValue17, number3)
  end
  if 0 == workingValue27 then
    workingValue16 = SetPedHeadOverlay
    workingValue17 = cmgOperation
    number3 = 0
    workingValue19 = workingValue27
    number4 = 0.0
    workingValue16(workingValue17, number3, workingValue19, number4)
  elseif workingValue27 then
    workingValue16 = SetPedHeadOverlay
    workingValue17 = cmgOperation
    number3 = 0
    workingValue19 = workingValue27
    number4 = 1.0
    workingValue16(workingValue17, number3, workingValue19, number4)
  end
  if workingValue28 then
    workingValue16 = SetPedHeadOverlay
    workingValue17 = cmgOperation
    number3 = 6
    workingValue19 = workingValue28
    number4 = 1.0
    workingValue16(workingValue17, number3, workingValue19, number4)
  end
  if 0 == workingValue29 then
    workingValue16 = SetPedHeadOverlay
    workingValue17 = cmgOperation
    number3 = 9
    workingValue19 = workingValue29
    number4 = 0.0
    workingValue16(workingValue17, number3, workingValue19, number4)
  elseif workingValue29 then
    workingValue16 = SetPedHeadOverlay
    workingValue17 = cmgOperation
    number3 = 9
    workingValue19 = workingValue29
    number4 = 1.0
    workingValue16(workingValue17, number3, workingValue19, number4)
  end
  if workingValue30 then
    workingValue16 = SetPedHeadOverlay
    workingValue17 = cmgOperation
    number3 = 3
    workingValue19 = workingValue30
    number4 = workingValue * 0.1
    workingValue16(workingValue17, number3, workingValue19, number4)
  end
  if workingValue2 then
    workingValue16 = SetPedComponentVariation
    workingValue17 = cmgOperation
    number3 = 2
    workingValue19 = workingValue2
    number4 = 0
    number5 = 2
    workingValue16(workingValue17, number3, workingValue19, number4, number5)
  end
  workingValue16 = SetPedHairColor
  workingValue17 = cmgOperation
  number3 = workingValue3
  workingValue19 = workingValue4
  workingValue16(workingValue17, number3, workingValue19)
  if workingValue5 then
    workingValue16 = SetPedHeadOverlay
    workingValue17 = cmgOperation
    number3 = 2
    workingValue19 = workingValue5
    number4 = workingValue6 * 0.1
    workingValue16(workingValue17, number3, workingValue19, number4)
  end
  if workingValue7 then
    workingValue16 = SetPedHeadOverlay
    workingValue17 = cmgOperation
    number3 = 1
    workingValue19 = workingValue7
    number4 = workingValue8 * 0.1
    workingValue16(workingValue17, number3, workingValue19, number4)
  end
  if workingValue9 then
    workingValue16 = SetPedHeadOverlayColor
    workingValue17 = cmgOperation
    number3 = 1
    workingValue19 = 1
    number4 = workingValue9
    number5 = workingValue9
    workingValue16(workingValue17, number3, workingValue19, number4, number5)
    workingValue16 = SetPedHeadOverlayColor
    workingValue17 = cmgOperation
    number3 = 2
    workingValue19 = 1
    number4 = workingValue9
    number5 = workingValue9
    workingValue16(workingValue17, number3, workingValue19, number4, number5)
  end
  if workingValue14 then
    workingValue16 = SetPedHeadOverlay
    workingValue17 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    workingValue17 = workingValue17()
    number3 = 5
    workingValue19 = workingValue14
    if workingValue14 > 0 then
      number4 = 1.0
      if number4 then
        goto continueAtStep243
      end
    end
    number4 = 0.0
    ::continueAtStep243::
    workingValue16(workingValue17, number3, workingValue19, number4)
  end
  if workingValue15 then
    workingValue16 = SetPedHeadOverlayColor
    workingValue17 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    workingValue17 = workingValue17()
    number3 = 5
    workingValue19 = 2
    number4 = workingValue15
    number5 = workingValue15
    workingValue16(workingValue17, number3, workingValue19, number4, number5)
  end
  workingValue16 = 1.0
  if 0 == workingValue12 then
    workingValue16 = 0.0
  end
  if workingValue12 then
    workingValue17 = SetPedHeadOverlay
    number3 = cmgOperation
    workingValue19 = 4
    number4 = workingValue12
    number5 = workingValue16
    workingValue17(number3, workingValue19, number4, number5)
  end
  workingValue17 = 1.0
  if 0 == workingValue10 then
    workingValue17 = 0.0
  end
  if workingValue10 then
    number3 = SetPedHeadOverlay
    workingValue19 = cmgOperation
    number4 = 8
    number5 = workingValue10
    workingValue20 = workingValue17
    number3(workingValue19, number4, number5, workingValue20)
  end
  if workingValue13 then
    number3 = SetPedHeadOverlayColor
    workingValue19 = cmgOperation
    number4 = 4
    number5 = 1
    workingValue20 = workingValue13
    workingValue21 = workingValue13
    number3(workingValue19, number4, number5, workingValue20, workingValue21)
  end
  if workingValue11 then
    number3 = SetPedHeadOverlayColor
    workingValue19 = cmgOperation
    number4 = 8
    number5 = 1
    workingValue20 = workingValue11
    workingValue21 = workingValue11
    number3(workingValue19, number4, number5, workingValue20, workingValue21)
  end
  number3 = SetPedComponentVariation
  workingValue19 = cmgOperation
  number4 = 1
  number5 = 0
  workingValue20 = 0
  workingValue21 = 2
  number3(workingValue19, number4, number5, workingValue20, workingValue21)
  number3 = SetModelAsNoLongerNeeded
  workingValue19 = 1885233650
  number3(workingValue19)
  number3 = SetModelAsNoLongerNeeded
  workingValue19 = 1885233650
  number3(workingValue19)
  number3 = {}
  number3.dad = localValue2
  number3.mum = workingValue18
  number3.skin = workingValue25
  number3.dadmumpercent = workingValue24
  number3.eyecolor = workingValue26
  number3.acne = workingValue27
  number3.skinproblem = workingValue28
  number3.freckle = workingValue29
  number3.wrinkle = workingValue30
  number3.wrinkleopacity = workingValue
  number3.hair = workingValue2
  number3.haircolor = workingValue3
  number3.hairtint = workingValue4
  number3.eyebrow = workingValue5
  number3.eyebrowopacity = workingValue6
  number3.beard = workingValue7
  number3.beardopacity = workingValue8
  number3.beardcolor = workingValue9
  number3.eyeshadow = workingValue12
  number3.lipstick = workingValue10
  number3.eyeshadowcolour = workingValue13
  number3.lipstickcolour = workingValue11
  number3.facepaints = workingValue14
  number3.facepaintscolour = workingValue15
  workingValue19 = CMG
  workingValue19 = workingValue19.getModelGender
  workingValue19 = workingValue19()
  if "male" == workingValue19 then
    dataCollection = number3
  else
    dataCollection2 = number3
  end
  workingValue19 = TriggerServerEvent
  number4 = "9c3ac4fb9c"
  number5 = dataCollection
  workingValue20 = dataCollection2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c3ac4fb9c".
  workingValue19(number4, number5, workingValue20)
end
cmgOperation2(text, cmgOperation3)
cmgOperation2 = RegisterNetEvent
text = "daf420849d"
-- Beginner: this function handles network event "daf420849d".

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1, localValue2) ===
function cmgOperation3(localValue1, localValue2)
  dataCollection = localValue1
  dataCollection2 = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "daf420849d".
cmgOperation2(text, cmgOperation3)
cmgOperation2 = RegisterNetEvent
text = "5554c4f64b"
-- Beginner: this function handles network event "5554c4f64b".

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2
  localValue1 = {}
  dataCollection = localValue1
  localValue1 = {}
  dataCollection2 = localValue1
end
cmgOperation2(text, cmgOperation3)
-- Beginner: this function handles network event "5554c4f64b".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, workingValue18, workingValue24, workingValue25
  stateFlag = localValue1
  localValue2 = FreezeEntityPosition
  workingValue18 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  workingValue18 = workingValue18()
  workingValue24 = localValue1
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(workingValue18, workingValue24)
  localValue2 = ClearPedTasksImmediately
  workingValue18 = PlayerPedId
  workingValue18, workingValue24, workingValue25 = workingValue18()
  localValue2(workingValue18, workingValue24, workingValue25)
  if not localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.uiSendMessage
    workingValue18 = {}
    workingValue18.type = "APP_TOGGLE"
    workingValue18.app = ""
    localValue2(workingValue18)
    localValue2 = CMG
    localValue2 = localValue2.uiSetFocus
    workingValue18 = false
    workingValue24 = false
    workingValue25 = false
    localValue2(workingValue18, workingValue24, workingValue25)
    return
  end
  localValue2 = CMG
  localValue2 = localValue2.uiSendMessage
  workingValue18 = {}
  workingValue18.type = "APP_TOGGLE"
  workingValue18.app = "skin"
  localValue2(workingValue18)
  localValue2 = CMG
  localValue2 = localValue2.uiSetFocus
  workingValue18 = true
  workingValue24 = true
  workingValue25 = false
  localValue2(workingValue18, workingValue24, workingValue25)
  localValue2 = {}
  workingValue18 = GetPedHeadOverlayNum
  workingValue24 = 1
  workingValue18 = workingValue18(workingValue24)
  workingValue18 = workingValue18 - 1
  localValue2.beard = workingValue18
  workingValue18 = GetPedHeadOverlayNum
  workingValue24 = 5
  workingValue18 = workingValue18(workingValue24)
  localValue2.facepaints = workingValue18
  workingValue18 = GetPedHeadOverlayNum
  workingValue24 = 8
  workingValue18 = workingValue18(workingValue24)
  workingValue18 = workingValue18 - 1
  localValue2.lipstick = workingValue18
  workingValue18 = GetPedHeadOverlayNum
  workingValue24 = 3
  workingValue18 = workingValue18(workingValue24)
  workingValue18 = workingValue18 - 1
  localValue2.wrinkle = workingValue18
  workingValue18 = CMG
  workingValue18 = workingValue18.uiSendMessage
  workingValue24 = {}
  workingValue24.type = "SET_SKIN_MAX_VALUES"
  workingValue24.info = localValue2
  workingValue18(workingValue24)
  workingValue18 = CMG
  workingValue18 = workingValue18.getModelGender
  workingValue18 = workingValue18()
  if "male" == workingValue18 then
    workingValue18 = dataCollection
    if workingValue18 then
      goto continueAtStep80
    end
  end
  workingValue18 = dataCollection2
  ::continueAtStep80::
  if workingValue18 then
    workingValue24 = CMG
    workingValue24 = workingValue24.uiSendMessage
    workingValue25 = {}
    workingValue25.type = "SET_SKIN_CACHED_DATA"
    workingValue25.info = workingValue18
    workingValue24(workingValue25)
  end
end

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, workingValue18
  localValue1 = stateFlag
  if not localValue1 then
    return
  end
  localValue1 = InvalidateIdleCam
  localValue1()
  localValue1 = drawNativeNotification
  localValue2 = "Press ~INPUT_FRONTEND_LB~ and ~INPUT_FRONTEND_RB~ to rotate your character."
  workingValue18 = true
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue1(localValue2, workingValue18)
end
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.createThreadOnTick
text2 = text
text3 = "Skin"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation3(text2, text3)
cmgOperation3 = AddEventHandler
text2 = "b0ae230dba"
-- Beginner: this function runs when client event "b0ae230dba" fires.

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, workingValue18, workingValue24, workingValue25, workingValue26, workingValue27, workingValue28
  localValue1 = stateFlag
  if localValue1 then
    return
  end
  localValue1 = cmgOperation2
  localValue2 = true
  -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: true.
  localValue1(localValue2)
  localValue1 = CreateCam
  localValue2 = "DEFAULT_SCRIPTED_CAMERA"
  workingValue18 = true
  -- Beginner: result below is cameraHandle.
  localValue1 = localValue1(localValue2, workingValue18)
  number = localValue1
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetEntityCoords
  workingValue18 = localValue1
  -- Beginner: result below is entityCoords.
  localValue2 = localValue2(workingValue18)
  workingValue18 = SetCamCoord
  workingValue24 = number
  workingValue25 = localValue2.x
  workingValue26 = localValue2.y
  workingValue27 = localValue2.z
  workingValue18(workingValue24, workingValue25, workingValue26, workingValue27)
  workingValue18 = SetCamRot
  workingValue24 = number
  workingValue25 = 0.0
  workingValue26 = 0.0
  workingValue27 = 0.0
  workingValue28 = 2
  workingValue18(workingValue24, workingValue25, workingValue26, workingValue27, workingValue28)
  workingValue18 = SetCamActive
  workingValue24 = number
  workingValue25 = true
  workingValue18(workingValue24, workingValue25)
  workingValue18 = RenderScriptCams
  workingValue24 = true
  workingValue25 = false
  workingValue26 = 0
  workingValue27 = true
  workingValue28 = true
  workingValue18(workingValue24, workingValue25, workingValue26, workingValue27, workingValue28)
  workingValue18 = SetCamCoord
  workingValue24 = number
  workingValue25 = localValue2.x
  workingValue26 = localValue2.y
  workingValue27 = localValue2.z
  workingValue18(workingValue24, workingValue25, workingValue26, workingValue27)
  workingValue18 = SetCamCoord
  workingValue24 = number
  workingValue25 = localValue2.x
  workingValue25 = workingValue25 + 0.2
  workingValue26 = localValue2.y
  workingValue26 = workingValue26 + 0.5
  workingValue27 = localValue2.z
  workingValue27 = workingValue27 + 0.7
  workingValue18(workingValue24, workingValue25, workingValue26, workingValue27)
  workingValue18 = SetCamRot
  workingValue24 = number
  workingValue25 = 0.0
  workingValue26 = 0.0
  workingValue27 = 150.0
  workingValue28 = 2
  workingValue18(workingValue24, workingValue25, workingValue26, workingValue27, workingValue28)
end
-- Beginner: Register a client-side event handler. Event/command: "b0ae230dba".
cmgOperation3(text2, text3)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.uiRegisterCallback
text2 = "closeSkinUI"

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, workingValue18, workingValue24, workingValue25, workingValue26
  localValue1 = stateFlag
  if not localValue1 then
    return
  end
  localValue1 = cmgOperation2
  localValue2 = false
  -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: false.
  localValue1(localValue2)
  localValue1 = number
  if 0 ~= localValue1 then
    localValue1 = SetCamActive
    localValue2 = number
    workingValue18 = false
    localValue1(localValue2, workingValue18)
    localValue1 = RenderScriptCams
    localValue2 = false
    workingValue18 = true
    workingValue24 = 500
    workingValue25 = true
    workingValue26 = true
    localValue1(localValue2, workingValue18, workingValue24, workingValue25, workingValue26)
    localValue1 = 0
    number = localValue1
  end
end
cmgOperation3(text2, text3)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.uiRegisterCallback
text2 = "rotateSkinCharacter"

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, workingValue18, workingValue24, workingValue25, workingValue26
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  workingValue18 = SetEntityHeading
  workingValue24 = localValue2
  workingValue25 = GetEntityHeading
  workingValue26 = localValue2
  -- Beginner: result below is heading.
  workingValue25 = workingValue25(workingValue26)
  workingValue26 = localValue1.isLeft
  if workingValue26 then
    workingValue26 = 10.0
    if workingValue26 then
      goto continueAtStep15
    end
  end
  workingValue26 = -10.0
  ::continueAtStep15::
  workingValue25 = workingValue25 + workingValue26
  -- Beginner: Change the direction an entity is facing.
  workingValue18(workingValue24, workingValue25)
end
cmgOperation3(text2, text3)
