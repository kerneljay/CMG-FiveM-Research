--[[
    LEVEL 1 BEGINNER GUIDE — Spectate
    ======================================

    File: cmg/prod/client/staff/cl_spectate.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: staff/admin gameplay and moderation tools, specifically the Spectate feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 18
      * Background threads: 0
      * Always-running loops: 1
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
local stateFlag, workingValue3, number7, number12, number13, workingValue39, createVector3, stateFlag6, createVector32, number23, number, number2, dataCollection, dataCollection2, number4, dataCollection3, cmgOperation, text, eventHandler, eventHandler2, text2, workingValue5, workingValue7, workingValue9, workingValue11, cmgOperation2, eventHandler3, cmgOperation3, text3, text4
stateFlag = false
workingValue3 = nil
number7 = 0
number12 = 90
number13 = -3.5
workingValue39 = nil
createVector3 = vector3
stateFlag6 = 5218.9399414062
createVector32 = -5393.2563476562
number23 = 67.318588256836
createVector3 = createVector3(stateFlag6, createVector32, number23)
stateFlag6 = false
createVector32 = vector3
number23 = 0.0
number = 0.0
number2 = 0.0
createVector32 = createVector32(number23, number, number2)
number23 = 0.0
number = 0
number2 = 0
dataCollection = {}
dataCollection2 = {}
number4 = 0
dataCollection3 = {}
cmgOperation = CMG
cmgOperation = cmgOperation.registerDevMenuState
text = "Spectate"
eventHandler = {}
eventHandler.enabled = false
cmgOperation = cmgOperation(text, eventHandler)

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2, localValue3, localValue4) ===
function text(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, mathHelper, number3
  localValue5 = math
  localValue5 = localValue5.rad
  localValue6 = localValue3
  localValue5 = localValue5(localValue6)
  localValue6 = math
  localValue6 = localValue6.rad
  localValue7 = localValue4
  localValue6 = localValue6(localValue7)
  localValue7 = vector3
  localValue8 = localValue1.x
  localValue9 = math
  localValue9 = localValue9.sin
  localValue10 = localValue6
  localValue9 = localValue9(localValue10)
  localValue10 = math
  localValue10 = localValue10.cos
  mathHelper = localValue5
  localValue10 = localValue10(mathHelper)
  localValue9 = localValue9 * localValue10
  localValue9 = localValue2 * localValue9
  localValue8 = localValue8 + localValue9
  localValue9 = localValue1.y
  localValue10 = math
  localValue10 = localValue10.sin
  mathHelper = localValue6
  localValue10 = localValue10(mathHelper)
  mathHelper = math
  mathHelper = mathHelper.sin
  number3 = localValue5
  mathHelper = mathHelper(number3)
  localValue10 = localValue10 * mathHelper
  localValue10 = localValue2 * localValue10
  localValue9 = localValue9 - localValue10
  localValue10 = localValue1.z
  mathHelper = math
  mathHelper = mathHelper.cos
  number3 = localValue6
  mathHelper = mathHelper(number3)
  mathHelper = localValue2 * mathHelper
  localValue10 = localValue10 - mathHelper
  return localValue7(localValue8, localValue9, localValue10)
end
eventHandler = RegisterNetEvent
eventHandler2 = "d3ac8df566"
-- Beginner: this function handles network event "d3ac8df566".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2, localValue3) ===
function text2(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, mathHelper, number3, stateFlag2, stateFlag3, stateFlag4, number5, stateFlag5, dataCollection4
  localValue4 = CMG
  localValue4 = localValue4.hasClientPermission
  localValue5 = "admin.espspectate"
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue4 = 0
    number = localValue4
  end
  localValue4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  localValue5 = FreezeEntityPosition
  localValue6 = localValue4
  localValue7 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue5(localValue6, localValue7)
  localValue5 = SetEntityCollision
  localValue6 = localValue4
  localValue7 = false
  localValue8 = false
  localValue5(localValue6, localValue7, localValue8)
  localValue5 = SetEntityVisible
  localValue6 = localValue4
  localValue7 = false
  localValue8 = false
  localValue5(localValue6, localValue7, localValue8)
  localValue5 = SetEntityInvincible
  localValue6 = localValue4
  localValue7 = true
  localValue5(localValue6, localValue7)
  localValue5 = math
  localValue5 = localValue5.random
  localValue6 = 7500
  localValue7 = 8900
  localValue5 = localValue5(localValue6, localValue7)
  localValue6 = math
  localValue6 = localValue6.random
  localValue7 = 7500
  localValue8 = 8900
  localValue6 = localValue6(localValue7, localValue8)
  localValue7 = math
  localValue7 = localValue7.random
  localValue8 = 1
  localValue9 = 2
  localValue7 = localValue7(localValue8, localValue9)
  localValue7 = 2 == localValue7
  if localValue7 then
    localValue5 = -localValue5
    localValue6 = -localValue6
  end
  localValue8 = SetEntityCoordsNoOffset
  localValue9 = localValue4
  localValue10 = localValue5 + 0.0
  mathHelper = localValue6 + 0.0
  number3 = 1000.0
  stateFlag2 = false
  stateFlag3 = false
  stateFlag4 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue8(localValue9, localValue10, mathHelper, number3, stateFlag2, stateFlag3, stateFlag4)
  localValue8 = CreateCamWithParams
  localValue9 = "DEFAULT_SCRIPTED_CAMERA"
  localValue10 = localValue2.x
  mathHelper = localValue2.y
  number3 = localValue2.z
  stateFlag2 = 0.0
  stateFlag3 = 0.0
  stateFlag4 = 0.0
  number5 = GetGameplayCamFov
  number5 = number5()
  stateFlag5 = false
  dataCollection4 = 2
  localValue8 = localValue8(localValue9, localValue10, mathHelper, number3, stateFlag2, stateFlag3, stateFlag4, number5, stateFlag5, dataCollection4)
  workingValue39 = localValue8
  localValue8 = SetCamActive
  localValue9 = workingValue39
  localValue10 = true
  localValue8(localValue9, localValue10)
  localValue8 = RenderScriptCams
  localValue9 = true
  localValue10 = false
  mathHelper = 0
  number3 = true
  stateFlag2 = true
  localValue8(localValue9, localValue10, mathHelper, number3, stateFlag2)
  workingValue3 = localValue1
  while true do
    localValue8 = workingValue3
    if not localValue8 then
      return
    end
    localValue8 = SetFocusPosAndVel
    localValue9 = localValue2.x
    localValue10 = localValue2.y
    mathHelper = localValue2.z
    number3 = 0.0
    stateFlag2 = 0.0
    stateFlag3 = 0.0
    localValue8(localValue9, localValue10, mathHelper, number3, stateFlag2, stateFlag3)
    localValue8 = LockMinimapPosition
    localValue9 = localValue2.x
    localValue10 = localValue2.y
    localValue8(localValue9, localValue10)
    localValue8 = SetPlayerBlipPositionThisFrame
    localValue9 = localValue2.x
    localValue10 = localValue2.y
    localValue8(localValue9, localValue10)
    localValue8 = GetPlayerFromServerId
    localValue9 = localValue1
    -- Beginner: result below is playerIndex.
    localValue8 = localValue8(localValue9)
    if -1 ~= localValue8 then
      break
    end
    localValue8 = Citizen
    localValue8 = localValue8.Wait
    localValue9 = 0
    localValue8(localValue9)
  end
  localValue8 = true
  stateFlag = localValue8
  if not localValue3 then
    localValue8 = CMG
    localValue8 = localValue8.setPlayerNameDistance
    localValue9 = 10000.0
    localValue8(localValue9)
    localValue8 = true
    stateFlag6 = localValue8
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d3ac8df566".
eventHandler(eventHandler2, text2)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, mathHelper, number3
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  localValue3 = pairs
  localValue4 = dataCollection3
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    if not localValue1 then
      localValue9 = localValue2 - localValue8
      localValue10 = 1000
      if not (localValue9 > localValue10) then
        goto continueAtStep29
      end
    end
    localValue9 = cmgOperation.enabled
    if localValue9 then
      localValue9 = print
      localValue10 = string
      localValue10 = localValue10.format
      mathHelper = "[Spectate] Unpinning interior %s"
      number3 = localValue7
      localValue10, mathHelper, number3 = localValue10(mathHelper, number3)
      localValue9(localValue10, mathHelper, number3)
    end
    localValue9 = UnpinInterior
    localValue10 = localValue7
    localValue9(localValue10)
    localValue9 = dataCollection3
    localValue9[localValue7] = nil
    ::continueAtStep29::
  end
end
eventHandler2 = RegisterNetEvent
text2 = "9ea813a9a7"
-- Beginner: this function handles network event "9ea813a9a7".

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = false
  stateFlag = localValue1
  localValue1 = ClearFocus
  localValue1()
  localValue1 = nil
  workingValue3 = localValue1
  localValue1 = UnlockMinimapPosition
  localValue1()
  localValue1 = workingValue39
  if localValue1 then
    localValue1 = SetCamActive
    localValue2 = workingValue39
    localValue3 = false
    localValue1(localValue2, localValue3)
    localValue1 = RenderScriptCams
    localValue2 = false
    localValue3 = false
    localValue4 = 0
    localValue5 = false
    localValue6 = false
    localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
    localValue1 = DestroyCam
    localValue2 = workingValue39
    localValue3 = false
    localValue1(localValue2, localValue3)
  end
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = SetEntityInvincible
  localValue3 = localValue1
  localValue4 = false
  localValue2(localValue3, localValue4)
  localValue2 = SetEntityVisible
  localValue3 = localValue1
  localValue4 = true
  localValue5 = false
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = SetEntityCollision
  localValue3 = localValue1
  localValue4 = true
  localValue5 = true
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = FreezeEntityPosition
  localValue3 = localValue1
  localValue4 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(localValue3, localValue4)
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = createVector3
  localValue2 = localValue2 - localValue3
  localValue2 = #localValue2
  localValue3 = 2142.0
  if localValue2 > localValue3 then
    localValue2 = CMG
    localValue2 = localValue2.isInCayoPerico
    localValue2 = localValue2()
    if localValue2 then
      localValue2 = DisableCayoPerico
      localValue3 = true
      localValue2(localValue3)
    end
  end
  localValue2 = stateFlag6
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.setPlayerNameDistance
    localValue3 = -1
    localValue2(localValue3)
    localValue2 = false
    stateFlag6 = localValue2
  end
  localValue2 = eventHandler
  localValue3 = true
  -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: true.
  localValue2(localValue3)
end
eventHandler2(text2, workingValue5)

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10) ===
function eventHandler2(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10)
  local mathHelper, number3, stateFlag2, stateFlag3, stateFlag4, number5, stateFlag5, dataCollection4, workingValue, workingValue2, workingValue4, workingValue6
  mathHelper = CMG
  mathHelper = mathHelper.DrawText
  number3 = localValue3 / 2
  number3 = localValue1 - number3
  stateFlag2 = localValue4 / 2
  stateFlag2 = localValue2 - stateFlag2
  stateFlag2 = stateFlag2 + 0.005
  stateFlag3 = localValue6
  stateFlag4 = localValue5
  number5 = 0
  stateFlag5 = 1
  dataCollection4 = {}
  workingValue = localValue7
  workingValue2 = localValue8
  workingValue4 = localValue9
  workingValue6 = localValue10
  dataCollection4[1] = workingValue
  dataCollection4[2] = workingValue2
  dataCollection4[3] = workingValue4
  dataCollection4[4] = workingValue6
  mathHelper(number3, stateFlag2, stateFlag3, stateFlag4, number5, stateFlag5, dataCollection4)
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue2 = GetScreenCoordFromWorldCoord
  localValue3 = localValue1.x
  localValue4 = localValue1.y
  localValue5 = localValue1.z
  localValue2, localValue3, localValue4 = localValue2(localValue3, localValue4, localValue5)
  localValue5 = localValue2
  localValue6 = vector2
  localValue7 = localValue3
  localValue8 = localValue4
  localValue6, localValue7, localValue8 = localValue6(localValue7, localValue8)
  return localValue5, localValue6, localValue7, localValue8
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2) ===
function workingValue5(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, mathHelper, number3, stateFlag2
  localValue3 = math
  localValue3 = localValue3.min
  localValue4 = math
  localValue4 = localValue4.max
  localValue5 = number23
  localValue5 = localValue5 / 50.0
  localValue6 = 1.0
  localValue5 = localValue6 - localValue5
  localValue6 = 0.1
  localValue4 = localValue4(localValue5, localValue6)
  localValue5 = 1.0
  localValue3 = localValue3(localValue4, localValue5)
  localValue4 = DrawLine_2d
  localValue5 = localValue1.x
  localValue6 = localValue1.y
  localValue7 = localValue2.x
  localValue8 = localValue2.y
  localValue9 = 0.001 * localValue3
  localValue10 = 255
  mathHelper = 255
  number3 = 0
  stateFlag2 = 255
  localValue4(localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, mathHelper, number3, stateFlag2)
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1) ===
function workingValue7(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, mathHelper, number3, stateFlag2, stateFlag3, stateFlag4, number5, stateFlag5, dataCollection4, workingValue, workingValue2, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12, workingValue13, workingValue14, workingValue15, workingValue16, number6, number8, stringHelper, text5, number9, number10, number11, workingValue17, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue25, workingValue26, workingValue27, workingValue28, workingValue29, workingValue30, workingValue31, workingValue32, workingValue33, workingValue34, workingValue35, number14, workingValue36, workingValue37, workingValue38, number15, number16, number17, number18, number19, number20, number21, number22
  localValue2 = GetEntityCoords
  localValue3 = localValue1
  localValue4 = true
  -- Beginner: result below is entityCoords.
  localValue2 = localValue2(localValue3, localValue4)
  localValue3 = text2
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    return
  end
  localValue3 = GetPedBoneIndex
  localValue4 = localValue1
  localValue5 = 39317
  localValue3 = localValue3(localValue4, localValue5)
  localValue4 = GetPedBoneIndex
  localValue5 = localValue1
  localValue6 = 45509
  localValue4 = localValue4(localValue5, localValue6)
  localValue5 = GetPedBoneIndex
  localValue6 = localValue1
  localValue7 = 40269
  localValue5 = localValue5(localValue6, localValue7)
  localValue6 = GetPedBoneIndex
  localValue7 = localValue1
  localValue8 = 22711
  localValue6 = localValue6(localValue7, localValue8)
  localValue7 = GetPedBoneIndex
  localValue8 = localValue1
  localValue9 = 2992
  localValue7 = localValue7(localValue8, localValue9)
  localValue8 = GetPedBoneIndex
  localValue9 = localValue1
  localValue10 = 18905
  localValue8 = localValue8(localValue9, localValue10)
  localValue9 = GetPedBoneIndex
  localValue10 = localValue1
  mathHelper = 57005
  localValue9 = localValue9(localValue10, mathHelper)
  localValue10 = GetPedBoneIndex
  mathHelper = localValue1
  number3 = 11816
  localValue10 = localValue10(mathHelper, number3)
  mathHelper = GetPedBoneIndex
  number3 = localValue1
  stateFlag2 = 46078
  mathHelper = mathHelper(number3, stateFlag2)
  number3 = GetPedBoneIndex
  stateFlag2 = localValue1
  stateFlag3 = 16335
  number3 = number3(stateFlag2, stateFlag3)
  stateFlag2 = GetPedBoneIndex
  stateFlag3 = localValue1
  stateFlag4 = 14201
  stateFlag2 = stateFlag2(stateFlag3, stateFlag4)
  stateFlag3 = GetPedBoneIndex
  stateFlag4 = localValue1
  number5 = 52301
  stateFlag3 = stateFlag3(stateFlag4, number5)
  stateFlag4 = GetPedBoneIndex
  number5 = localValue1
  stateFlag5 = 31086
  stateFlag4 = stateFlag4(number5, stateFlag5)
  number5 = GetWorldPositionOfEntityBone
  stateFlag5 = localValue1
  dataCollection4 = localValue3
  number5 = number5(stateFlag5, dataCollection4)
  stateFlag5 = GetWorldPositionOfEntityBone
  dataCollection4 = localValue1
  workingValue = localValue4
  stateFlag5 = stateFlag5(dataCollection4, workingValue)
  dataCollection4 = GetWorldPositionOfEntityBone
  workingValue = localValue1
  workingValue2 = localValue5
  dataCollection4 = dataCollection4(workingValue, workingValue2)
  workingValue = GetWorldPositionOfEntityBone
  workingValue2 = localValue1
  workingValue4 = localValue6
  workingValue = workingValue(workingValue2, workingValue4)
  workingValue2 = GetWorldPositionOfEntityBone
  workingValue4 = localValue1
  workingValue6 = localValue7
  workingValue2 = workingValue2(workingValue4, workingValue6)
  workingValue4 = GetWorldPositionOfEntityBone
  workingValue6 = localValue1
  workingValue8 = localValue8
  workingValue4 = workingValue4(workingValue6, workingValue8)
  workingValue6 = GetWorldPositionOfEntityBone
  workingValue8 = localValue1
  workingValue10 = localValue9
  workingValue6 = workingValue6(workingValue8, workingValue10)
  workingValue8 = GetWorldPositionOfEntityBone
  workingValue10 = localValue1
  workingValue12 = localValue10
  workingValue8 = workingValue8(workingValue10, workingValue12)
  workingValue10 = GetWorldPositionOfEntityBone
  workingValue12 = localValue1
  workingValue13 = mathHelper
  workingValue10 = workingValue10(workingValue12, workingValue13)
  workingValue12 = GetWorldPositionOfEntityBone
  workingValue13 = localValue1
  workingValue14 = number3
  workingValue12 = workingValue12(workingValue13, workingValue14)
  workingValue13 = GetWorldPositionOfEntityBone
  workingValue14 = localValue1
  workingValue15 = stateFlag2
  workingValue13 = workingValue13(workingValue14, workingValue15)
  workingValue14 = GetWorldPositionOfEntityBone
  workingValue15 = localValue1
  workingValue16 = stateFlag3
  workingValue14 = workingValue14(workingValue15, workingValue16)
  workingValue15 = GetWorldPositionOfEntityBone
  workingValue16 = localValue1
  number6 = stateFlag4
  workingValue15 = workingValue15(workingValue16, number6)
  workingValue16 = text2
  number6 = number5
  workingValue16, number6 = workingValue16(number6)
  number8 = text2
  stringHelper = stateFlag5
  number8, stringHelper = number8(stringHelper)
  text5 = text2
  number9 = dataCollection4
  text5, number9 = text5(number9)
  number10 = text2
  number11 = workingValue
  number10, number11 = number10(number11)
  workingValue17 = text2
  workingValue18 = workingValue2
  workingValue17, workingValue18 = workingValue17(workingValue18)
  workingValue19 = text2
  workingValue20 = workingValue4
  workingValue19, workingValue20 = workingValue19(workingValue20)
  workingValue21 = text2
  workingValue22 = workingValue6
  workingValue21, workingValue22 = workingValue21(workingValue22)
  workingValue23 = text2
  workingValue24 = workingValue8
  workingValue23, workingValue24 = workingValue23(workingValue24)
  workingValue25 = text2
  workingValue26 = workingValue10
  workingValue25, workingValue26 = workingValue25(workingValue26)
  workingValue27 = text2
  workingValue28 = workingValue12
  workingValue27, workingValue28 = workingValue27(workingValue28)
  workingValue29 = text2
  workingValue30 = workingValue13
  workingValue29, workingValue30 = workingValue29(workingValue30)
  workingValue31 = text2
  workingValue32 = workingValue14
  workingValue31, workingValue32 = workingValue31(workingValue32)
  workingValue33 = GetFinalRenderedCamCoord
  workingValue33 = workingValue33()
  workingValue33 = workingValue33 - localValue2
  workingValue33 = #workingValue33
  number23 = workingValue33
  workingValue33 = number
  if 1 ~= workingValue33 then
    workingValue33 = number
    if 2 ~= workingValue33 then
      goto continueAtStep251
    end
  end
  if workingValue16 and number8 then
    workingValue33 = workingValue5
    workingValue34 = number6
    workingValue35 = stringHelper
    workingValue33(workingValue34, workingValue35)
  end
  if number8 and number10 then
    workingValue33 = workingValue5
    workingValue34 = stringHelper
    workingValue35 = number11
    workingValue33(workingValue34, workingValue35)
  end
  if number10 and workingValue19 then
    workingValue33 = workingValue5
    workingValue34 = number11
    workingValue35 = workingValue20
    workingValue33(workingValue34, workingValue35)
  end
  if workingValue16 and text5 then
    workingValue33 = workingValue5
    workingValue34 = number6
    workingValue35 = number9
    workingValue33(workingValue34, workingValue35)
  end
  if text5 and workingValue17 then
    workingValue33 = workingValue5
    workingValue34 = number9
    workingValue35 = workingValue18
    workingValue33(workingValue34, workingValue35)
  end
  if workingValue17 and workingValue21 then
    workingValue33 = workingValue5
    workingValue34 = workingValue18
    workingValue35 = workingValue22
    workingValue33(workingValue34, workingValue35)
  end
  if workingValue16 and workingValue23 then
    workingValue33 = workingValue5
    workingValue34 = number6
    workingValue35 = workingValue24
    workingValue33(workingValue34, workingValue35)
  end
  if workingValue23 and workingValue25 then
    workingValue33 = workingValue5
    workingValue34 = workingValue24
    workingValue35 = workingValue26
    workingValue33(workingValue34, workingValue35)
  end
  if workingValue25 and workingValue29 then
    workingValue33 = workingValue5
    workingValue34 = workingValue26
    workingValue35 = workingValue30
    workingValue33(workingValue34, workingValue35)
  end
  if workingValue23 and workingValue27 then
    workingValue33 = workingValue5
    workingValue34 = workingValue24
    workingValue35 = workingValue28
    workingValue33(workingValue34, workingValue35)
  end
  if workingValue27 and workingValue31 then
    workingValue33 = workingValue5
    workingValue34 = workingValue28
    workingValue35 = workingValue32
    workingValue33(workingValue34, workingValue35)
  end
  ::continueAtStep251::
  workingValue33 = number
  if 1 == workingValue33 then
    workingValue33 = DrawLine
    workingValue34 = createVector32.x
    workingValue35 = createVector32.y
    number14 = createVector32.z
    workingValue36 = localValue2.x
    workingValue37 = localValue2.y
    workingValue38 = localValue2.z
    number15 = 255
    number16 = 0
    number17 = 0
    number18 = 255
    workingValue33(workingValue34, workingValue35, number14, workingValue36, workingValue37, workingValue38, number15, number16, number17, number18)
  end
  workingValue33 = NetworkGetPlayerIndexFromPed
  workingValue34 = localValue1
  workingValue33 = workingValue33(workingValue34)
  if workingValue33 >= 0 then
    workingValue34 = GetFinalRenderedInWhenFriendlyRot
    workingValue35 = workingValue33
    number14 = 2
    workingValue34 = workingValue34(workingValue35, number14)
    workingValue35 = #workingValue34
    number14 = 0.1
    if workingValue35 > number14 then
      workingValue35 = CMG
      workingValue35 = workingValue35.rotationToDirection
      number14 = workingValue34
      workingValue35 = workingValue35(number14)
      number14 = workingValue35 * 3.0
      number14 = workingValue15 + number14
      workingValue36 = DrawLine
      workingValue37 = workingValue15.x
      workingValue38 = workingValue15.y
      number15 = workingValue15.z
      number16 = number14.x
      number17 = number14.y
      number18 = number14.z
      number19 = 0
      number20 = 0
      number21 = 255
      number22 = 255
      workingValue36(workingValue37, workingValue38, number15, number16, number17, number18, number19, number20, number21, number22)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, mathHelper
  localValue2 = GetEntityCoords
  localValue3 = localValue1
  localValue4 = true
  -- Beginner: result below is entityCoords.
  localValue2 = localValue2(localValue3, localValue4)
  createVector32 = localValue2
  localValue2 = IsControlJustPressed
  localValue3 = 0
  localValue4 = 121
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue2 = TriggerServerEvent
    localValue3 = "38142e1d4b"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "38142e1d4b".
    localValue2(localValue3)
    localValue2 = number
    if 0 == localValue2 then
      localValue2 = 1
      number = localValue2
    else
      localValue2 = number
      if 1 == localValue2 then
        localValue2 = 2
        number = localValue2
      else
        localValue2 = number
        if 2 == localValue2 then
          localValue2 = 3
          number = localValue2
        else
          localValue2 = number
          if 3 == localValue2 then
            localValue2 = 0
            number = localValue2
          end
        end
      end
    end
    localValue2 = TriggerServerEvent
    localValue3 = "07f615539e"
    localValue4 = number
    localValue4 = 0 ~= localValue4
    localValue2(localValue3, localValue4)
  end
  localValue2 = number
  if localValue2 > 0 then
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = pairs
    localValue4 = GetActivePlayers
    localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, mathHelper = localValue4()
    localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, mathHelper)
    for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
      localValue9 = GetPlayerPed
      localValue10 = localValue8
      -- Beginner: result below is playerPed.
      localValue9 = localValue9(localValue10)
      if 0 ~= localValue9 and localValue9 ~= localValue2 then
        localValue10 = workingValue7
        mathHelper = localValue9
        localValue10(mathHelper)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, mathHelper, number3, stateFlag2, stateFlag3, stateFlag4, number5, stateFlag5, dataCollection4, workingValue, workingValue2, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12, workingValue13, workingValue14, workingValue15, workingValue16, number6, number8, stringHelper, text5, number9, number10, number11
  localValue1 = stateFlag
  if localValue1 then
    localValue1 = workingValue3
    if localValue1 then
      localValue1 = GetPlayerFromServerId
      localValue2 = workingValue3
      -- Beginner: result below is playerIndex.
      localValue1 = localValue1(localValue2)
      if -1 ~= localValue1 then
        localValue2 = CMG
        localValue2 = localValue2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        localValue2 = localValue2()
        localValue3 = GetPlayerPed
        localValue4 = localValue1
        -- Beginner: result below is playerPed.
        localValue3 = localValue3(localValue4)
        if 0 ~= localValue3 then
          localValue4 = GetEntityCoords
          localValue5 = localValue3
          -- Beginner: result below is entityCoords.
          localValue4 = localValue4(localValue5)
          localValue5 = GetEntityHealth
          localValue6 = localValue3
          -- Beginner: result below is health.
          localValue5 = localValue5(localValue6)
          localValue6 = GetEntityMaxHealth
          localValue7 = localValue3
          localValue6 = localValue6(localValue7)
          localValue7 = GetSelectedPedWeapon
          localValue8 = localValue3
          -- Beginner: result below is weaponHash.
          localValue7 = localValue7(localValue8)
          localValue8 = GetVehiclePedIsUsing
          localValue9 = localValue3
          localValue8 = localValue8(localValue9)
          localValue9 = GetInteriorAtCoords
          localValue10 = localValue4.x
          mathHelper = localValue4.y
          number3 = localValue4.z
          -- Beginner: result below is interiorId.
          localValue9 = localValue9(localValue10, mathHelper, number3)
          if 0 ~= localValue9 then
            localValue10 = cmgOperation.enabled
            if localValue10 then
              localValue10 = dataCollection3
              localValue10 = localValue10[localValue9]
              if not localValue10 then
                localValue10 = print
                mathHelper = string
                mathHelper = mathHelper.format
                number3 = "[Spectate] Pinning interior %s"
                stateFlag2 = localValue9
                mathHelper, number3, stateFlag2, stateFlag3, stateFlag4, number5, stateFlag5, dataCollection4, workingValue, workingValue2, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12, workingValue13, workingValue14, workingValue15, workingValue16, number6, number8, stringHelper, text5, number9, number10, number11 = mathHelper(number3, stateFlag2)
                localValue10(mathHelper, number3, stateFlag2, stateFlag3, stateFlag4, number5, stateFlag5, dataCollection4, workingValue, workingValue2, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12, workingValue13, workingValue14, workingValue15, workingValue16, number6, number8, stringHelper, text5, number9, number10, number11)
              end
            end
            localValue10 = dataCollection3
            mathHelper = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            mathHelper = mathHelper()
            localValue10[localValue9] = mathHelper
            localValue10 = PinInteriorInMemory
            mathHelper = localValue9
            localValue10(mathHelper)
          end
          localValue10 = cmgOperation.enabled
          if localValue10 then
            localValue10 = CMG
            localValue10 = localValue10.drawDebugText
            mathHelper = "---------- Spectate ----------"
            localValue10(mathHelper)
            localValue10 = CMG
            localValue10 = localValue10.drawDebugText
            mathHelper = "Interior ID: %s"
            number3 = localValue9
            localValue10(mathHelper, number3)
            localValue10 = 1
            mathHelper = pairs
            number3 = dataCollection3
            mathHelper, number3, stateFlag2, stateFlag3 = mathHelper(number3)
            for stateFlag4 in mathHelper, number3, stateFlag2, stateFlag3 do
              number5 = CMG
              number5 = number5.drawDebugText
              stateFlag5 = "Pinned (%s): %s"
              dataCollection4 = localValue10
              workingValue = stateFlag4
              number5(stateFlag5, dataCollection4, workingValue)
              localValue10 = localValue10 + 1
            end
          end
          localValue10 = PinInteriorInMemory
          mathHelper = localValue9
          localValue10(mathHelper)
          localValue10 = CMG
          localValue10 = localValue10.getOrganRoomKeyFromInteriorId
          mathHelper = localValue9
          localValue10 = localValue10(mathHelper)
          if localValue10 then
            mathHelper = ForceRoomForGameViewport
            number3 = localValue9
            stateFlag2 = localValue10
            mathHelper(number3, stateFlag2)
          end
          mathHelper = GetPedArmour
          number3 = localValue3
          mathHelper = mathHelper(number3)
          number3 = GetAmmoInPedWeapon
          stateFlag2 = localValue3
          stateFlag3 = localValue7
          number3 = number3(stateFlag2, stateFlag3)
          if 0 == localValue8 then
            stateFlag2 = eventHandler2
            stateFlag3 = 0.76
            stateFlag4 = 1.465
            number5 = 1.0
            stateFlag5 = 1.0
            dataCollection4 = 0.4
            workingValue = string
            workingValue = workingValue.format
            workingValue2 = "Player Speed: %.2f MPH"
            workingValue4 = GetEntitySpeed
            workingValue6 = localValue3
            -- Beginner: result below is speed.
            workingValue4 = workingValue4(workingValue6)
            workingValue4 = workingValue4 * 2.236936
            workingValue = workingValue(workingValue2, workingValue4)
            workingValue2 = 51
            workingValue4 = 153
            workingValue6 = 255
            workingValue8 = 200
            -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: 0.76.
            stateFlag2(stateFlag3, stateFlag4, number5, stateFlag5, dataCollection4, workingValue, workingValue2, workingValue4, workingValue6, workingValue8)
          else
            stateFlag2 = eventHandler2
            stateFlag3 = 0.76
            stateFlag4 = 1.465
            number5 = 1.0
            stateFlag5 = 1.0
            dataCollection4 = 0.4
            workingValue = string
            workingValue = workingValue.format
            workingValue2 = "Vehicle Speed: %.2f MPH"
            workingValue4 = GetEntitySpeed
            workingValue6 = localValue8
            -- Beginner: result below is speed.
            workingValue4 = workingValue4(workingValue6)
            workingValue4 = workingValue4 * 2.236936
            workingValue = workingValue(workingValue2, workingValue4)
            workingValue2 = 51
            workingValue4 = 153
            workingValue6 = 255
            workingValue8 = 200
            stateFlag2(stateFlag3, stateFlag4, number5, stateFlag5, dataCollection4, workingValue, workingValue2, workingValue4, workingValue6, workingValue8)
          end
          stateFlag2 = eventHandler2
          stateFlag3 = 0.76
          stateFlag4 = 1.44
          number5 = 1.0
          stateFlag5 = 1.0
          dataCollection4 = 0.4
          workingValue = "Health: "
          workingValue2 = localValue5
          workingValue4 = "/"
          workingValue6 = localValue6
          workingValue = workingValue .. workingValue2 .. workingValue4 .. workingValue6
          workingValue2 = 51
          workingValue4 = 153
          workingValue6 = 255
          workingValue8 = 200
          -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: 0.76.
          stateFlag2(stateFlag3, stateFlag4, number5, stateFlag5, dataCollection4, workingValue, workingValue2, workingValue4, workingValue6, workingValue8)
          stateFlag2 = eventHandler2
          stateFlag3 = 0.76
          stateFlag4 = 1.415
          number5 = 1.0
          stateFlag5 = 1.0
          dataCollection4 = 0.4
          workingValue = "Armor: "
          workingValue2 = mathHelper
          workingValue = workingValue .. workingValue2
          workingValue2 = 51
          workingValue4 = 153
          workingValue6 = 255
          workingValue8 = 200
          stateFlag2(stateFlag3, stateFlag4, number5, stateFlag5, dataCollection4, workingValue, workingValue2, workingValue4, workingValue6, workingValue8)
          stateFlag2 = eventHandler2
          stateFlag3 = 0.76
          stateFlag4 = 1.39
          number5 = 1.0
          stateFlag5 = 1.0
          dataCollection4 = 0.4
          workingValue = "Vehicle Health: "
          workingValue2 = GetEntityHealth
          workingValue4 = GetVehiclePedIsIn
          workingValue6 = localValue3
          workingValue8 = false
          workingValue4, workingValue6, workingValue8, workingValue10, workingValue12, workingValue13, workingValue14, workingValue15, workingValue16, number6, number8, stringHelper, text5, number9, number10, number11 = workingValue4(workingValue6, workingValue8)
          -- Beginner: result below is health.
          workingValue2 = workingValue2(workingValue4, workingValue6, workingValue8, workingValue10, workingValue12, workingValue13, workingValue14, workingValue15, workingValue16, number6, number8, stringHelper, text5, number9, number10, number11)
          workingValue = workingValue .. workingValue2
          workingValue2 = 51
          workingValue4 = 153
          workingValue6 = 255
          workingValue8 = 200
          -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: 0.76.
          stateFlag2(stateFlag3, stateFlag4, number5, stateFlag5, dataCollection4, workingValue, workingValue2, workingValue4, workingValue6, workingValue8)
          stateFlag2 = tostring
          stateFlag3 = WeaponNames
          stateFlag3 = stateFlag3[localValue7]
          stateFlag2 = stateFlag2(stateFlag3)
          stateFlag3 = eventHandler2
          stateFlag4 = 0.76
          number5 = 1.365
          stateFlag5 = 1.0
          dataCollection4 = 1.0
          workingValue = 0.4
          workingValue2 = "Weapon: "
          workingValue4 = stateFlag2 or workingValue4
          if not stateFlag2 then
            workingValue4 = "N/A"
          end
          workingValue2 = workingValue2 .. workingValue4
          workingValue4 = 51
          workingValue6 = 153
          workingValue8 = 255
          workingValue10 = 200
          stateFlag3(stateFlag4, number5, stateFlag5, dataCollection4, workingValue, workingValue2, workingValue4, workingValue6, workingValue8, workingValue10)
          stateFlag3 = eventHandler2
          stateFlag4 = 0.76
          number5 = 1.34
          stateFlag5 = 1.0
          dataCollection4 = 1.0
          workingValue = 0.4
          workingValue2 = "Ammo: "
          workingValue4 = number3 or workingValue4
          if not number3 then
            workingValue4 = "N/A"
          end
          workingValue2 = workingValue2 .. workingValue4
          workingValue4 = 51
          workingValue6 = 153
          workingValue8 = 255
          workingValue10 = 200
          -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: 0.76.
          stateFlag3(stateFlag4, number5, stateFlag5, dataCollection4, workingValue, workingValue2, workingValue4, workingValue6, workingValue8, workingValue10)
          stateFlag3 = GetActivePlayers
          stateFlag3 = stateFlag3()
          stateFlag4 = pairs
          number5 = stateFlag3
          stateFlag4, number5, stateFlag5, dataCollection4 = stateFlag4(number5)
          for workingValue, workingValue2 in stateFlag4, number5, stateFlag5, dataCollection4 do
            workingValue4 = GetPlayerPed
            workingValue6 = workingValue2
            -- Beginner: result below is playerPed.
            workingValue4 = workingValue4(workingValue6)
            workingValue6 = SetEntityNoCollisionEntity
            workingValue8 = localValue2
            workingValue10 = workingValue4
            workingValue12 = true
            workingValue6(workingValue8, workingValue10, workingValue12)
          end
          stateFlag4 = DisableControlAction
          number5 = 2
          stateFlag5 = 15
          dataCollection4 = true
          stateFlag4(number5, stateFlag5, dataCollection4)
          stateFlag4 = DisableControlAction
          number5 = 2
          stateFlag5 = 17
          dataCollection4 = true
          stateFlag4(number5, stateFlag5, dataCollection4)
          stateFlag4 = IsControlPressed
          number5 = 2
          stateFlag5 = 241
          stateFlag4 = stateFlag4(number5, stateFlag5)
          if stateFlag4 then
            stateFlag4 = number13
            stateFlag4 = stateFlag4 + 0.5
            number13 = stateFlag4
          end
          stateFlag4 = DisableControlAction
          number5 = 2
          stateFlag5 = 14
          dataCollection4 = true
          stateFlag4(number5, stateFlag5, dataCollection4)
          stateFlag4 = DisableControlAction
          number5 = 2
          stateFlag5 = 16
          dataCollection4 = true
          stateFlag4(number5, stateFlag5, dataCollection4)
          stateFlag4 = IsControlPressed
          number5 = 2
          stateFlag5 = 242
          stateFlag4 = stateFlag4(number5, stateFlag5)
          if stateFlag4 then
            stateFlag4 = number13
            stateFlag4 = stateFlag4 - 0.5
            number13 = stateFlag4
          end
          stateFlag4 = number13
          if stateFlag4 > -1 then
            stateFlag4 = -1
            number13 = stateFlag4
          end
          stateFlag4 = GetDisabledControlNormal
          number5 = 0
          stateFlag5 = 1
          stateFlag4 = stateFlag4(number5, stateFlag5)
          number5 = GetDisabledControlNormal
          stateFlag5 = 0
          dataCollection4 = 2
          number5 = number5(stateFlag5, dataCollection4)
          stateFlag5 = number7
          dataCollection4 = stateFlag4 * 10
          stateFlag5 = stateFlag5 + dataCollection4
          number7 = stateFlag5
          stateFlag5 = number7
          dataCollection4 = 360
          if stateFlag5 >= dataCollection4 then
            stateFlag5 = 0
            number7 = stateFlag5
          end
          stateFlag5 = number12
          dataCollection4 = number5 * 10
          stateFlag5 = stateFlag5 - dataCollection4
          number12 = stateFlag5
          stateFlag5 = number12
          dataCollection4 = 360
          if stateFlag5 >= dataCollection4 then
            stateFlag5 = 0
            number12 = stateFlag5
          end
          stateFlag5 = text
          dataCollection4 = localValue4
          workingValue = number13
          workingValue2 = number7
          workingValue4 = number12
          stateFlag5 = stateFlag5(dataCollection4, workingValue, workingValue2, workingValue4)
          dataCollection4 = workingValue39
          if dataCollection4 then
            dataCollection4 = SetCamCoord
            workingValue = workingValue39
            workingValue2 = stateFlag5.x
            workingValue4 = stateFlag5.y
            workingValue6 = stateFlag5.z
            dataCollection4(workingValue, workingValue2, workingValue4, workingValue6)
            dataCollection4 = PointCamAtEntity
            workingValue = workingValue39
            workingValue2 = localValue3
            workingValue4 = 0.0
            workingValue6 = 0.0
            workingValue8 = 0.0
            workingValue10 = false
            dataCollection4(workingValue, workingValue2, workingValue4, workingValue6, workingValue8, workingValue10)
          end
          dataCollection4 = SetFocusPosAndVel
          workingValue = localValue4.x
          workingValue2 = localValue4.y
          workingValue4 = localValue4.z
          workingValue6 = 0.0
          workingValue8 = 0.0
          workingValue10 = 0.0
          dataCollection4(workingValue, workingValue2, workingValue4, workingValue6, workingValue8, workingValue10)
          dataCollection4 = LockMinimapPosition
          workingValue = localValue4.x
          workingValue2 = localValue4.y
          dataCollection4(workingValue, workingValue2)
          dataCollection4 = SetPlayerBlipPositionThisFrame
          workingValue = localValue4.x
          workingValue2 = localValue4.y
          dataCollection4(workingValue, workingValue2)
          dataCollection4 = GetFinalRenderedCamCoord
          dataCollection4 = dataCollection4()
          workingValue = createVector3
          dataCollection4 = dataCollection4 - workingValue
          dataCollection4 = #dataCollection4
          workingValue = 2142.0
          if dataCollection4 < workingValue then
            dataCollection4 = CMG
            dataCollection4 = dataCollection4.isInCayoPerico
            dataCollection4 = dataCollection4()
            if not dataCollection4 then
              dataCollection4 = EnableCayoPerico
              workingValue = true
              dataCollection4(workingValue)
            end
          else
            dataCollection4 = CMG
            dataCollection4 = dataCollection4.isInCayoPerico
            dataCollection4 = dataCollection4()
            if dataCollection4 then
              dataCollection4 = DisableCayoPerico
              workingValue = true
              dataCollection4(workingValue)
            end
          end
          dataCollection4 = CMG
          dataCollection4 = dataCollection4.hasClientPermission
          workingValue = "admin.espspectate"
          dataCollection4 = dataCollection4(workingValue)
          if dataCollection4 then
            dataCollection4 = CMG
            dataCollection4 = dataCollection4.isStreamerMode
            dataCollection4 = dataCollection4()
            if not dataCollection4 then
              dataCollection4 = workingValue9
              workingValue = localValue3
              dataCollection4(workingValue)
            end
          end
          dataCollection4 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          dataCollection4 = dataCollection4()
          workingValue = number2
          workingValue = dataCollection4 - workingValue
          workingValue2 = 2000
          if workingValue > workingValue2 then
            workingValue = TriggerServerEvent
            workingValue2 = "933f9e09bb"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "933f9e09bb".
            workingValue(workingValue2)
            number2 = dataCollection4
          end
          workingValue = dataCollection
          workingValue = #workingValue
          if workingValue > 0 then
            workingValue = CMG
            workingValue = workingValue.hasClientPermission
            workingValue2 = "admin.spectatingnames"
            workingValue = workingValue(workingValue2)
            if workingValue then
              workingValue = eventHandler2
              workingValue2 = 0.76
              workingValue4 = 0.5
              workingValue6 = 1.0
              workingValue8 = 1.0
              workingValue10 = 0.4
              workingValue12 = "Staff Spectating:"
              workingValue13 = 255
              workingValue14 = 143
              workingValue15 = 27
              workingValue16 = 255
              -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: 0.76.
              workingValue(workingValue2, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12, workingValue13, workingValue14, workingValue15, workingValue16)
              workingValue = pairs
              workingValue2 = dataCollection
              workingValue, workingValue2, workingValue4, workingValue6 = workingValue(workingValue2)
              for workingValue8, workingValue10 in workingValue, workingValue2, workingValue4, workingValue6 do
                workingValue12 = fullPlayerListData
                workingValue12 = workingValue12[workingValue10]
                if workingValue12 then
                  workingValue13 = eventHandler2
                  workingValue14 = 0.76
                  workingValue15 = workingValue8 / 30.0
                  workingValue15 = 0.5 + workingValue15
                  workingValue16 = 1.0
                  number6 = 1.0
                  number8 = 0.4
                  stringHelper = string
                  stringHelper = stringHelper.format
                  text5 = "%s (%s)"
                  number9 = workingValue12[2]
                  number10 = workingValue10
                  stringHelper = stringHelper(text5, number9, number10)
                  text5 = 255
                  number9 = 143
                  number10 = 27
                  number11 = 255
                  workingValue13(workingValue14, workingValue15, workingValue16, number6, number8, stringHelper, text5, number9, number10, number11)
                end
              end
            else
              workingValue = eventHandler2
              workingValue2 = 0.76
              workingValue4 = 0.5
              workingValue6 = 1.0
              workingValue8 = 1.0
              workingValue10 = 0.4
              workingValue12 = tostring
              workingValue13 = dataCollection
              workingValue13 = #workingValue13
              workingValue12 = workingValue12(workingValue13)
              workingValue13 = " Staff Spectating"
              workingValue12 = workingValue12 .. workingValue13
              workingValue13 = 255
              workingValue14 = 143
              workingValue15 = 27
              workingValue16 = 255
              -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: 0.76.
              workingValue(workingValue2, workingValue4, workingValue6, workingValue8, workingValue10, workingValue12, workingValue13, workingValue14, workingValue15, workingValue16)
            end
          end
          workingValue = dataCollection2
          workingValue = #workingValue
          if workingValue > 0 then
            workingValue2 = workingValue
            workingValue4 = 1
            workingValue6 = -1
            for workingValue8 = workingValue2, workingValue4, workingValue6 do
              workingValue10 = dataCollection2
              workingValue10 = workingValue10[workingValue8]
              workingValue12 = workingValue10[2]
              workingValue12 = dataCollection4 - workingValue12
              workingValue13 = 3000
              if workingValue12 > workingValue13 then
                workingValue12 = table
                workingValue12 = workingValue12.remove
                workingValue13 = dataCollection2
                workingValue14 = workingValue8
                workingValue12(workingValue13, workingValue14)
              end
            end
            workingValue2 = pairs
            workingValue4 = dataCollection2
            workingValue2, workingValue4, workingValue6, workingValue8 = workingValue2(workingValue4)
            for workingValue10, workingValue12 in workingValue2, workingValue4, workingValue6, workingValue8 do
              workingValue13 = CMG
              workingValue13 = workingValue13.DrawText
              workingValue14 = 0.7
              workingValue15 = workingValue10 / 45.0
              workingValue15 = 0.4 + workingValue15
              workingValue16 = workingValue12[1]
              number6 = 0.4
              number8 = nil
              stringHelper = nil
              text5 = nil
              number9 = true
              workingValue13(workingValue14, workingValue15, workingValue16, number6, number8, stringHelper, text5, number9)
            end
          end
        end
      else
        localValue2 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        localValue2 = localValue2()
        localValue3 = number4
        localValue3 = localValue2 - localValue3
        localValue4 = 5000
        if localValue3 >= localValue4 then
          number4 = localValue2
          localValue3 = tCMG
          localValue3 = localValue3.notify
          localValue4 = "~r~Couldn't spectate, person not in your zone"
          -- Beginner: Show a notification to the player.
          localValue3(localValue4)
        end
      end
      localValue2 = eventHandler
      localValue3 = false
      -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: false.
      localValue2(localValue3)
    end
  end
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
eventHandler3 = workingValue11
cmgOperation3 = "Staff Spectator"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(eventHandler3, cmgOperation3)
cmgOperation2 = {}
eventHandler3 = AddStateBagChangeHandler
cmgOperation3 = "conceal"
text3 = nil

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2, localValue3) ===
function text4(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, localValue9
  localValue4 = tonumber
  localValue5 = stringsplit
  localValue6 = localValue1
  localValue7 = ":"
  localValue5 = localValue5(localValue6, localValue7)
  localValue5 = localValue5[2]
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    return
  end
  if localValue3 then
    localValue5 = cmgOperation2
    localValue5[localValue4] = true
  else
    localValue5 = GetPlayerFromServerId
    localValue6 = localValue4
    -- Beginner: result below is playerIndex.
    localValue5 = localValue5(localValue6)
    if -1 ~= localValue5 then
      localValue6 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      localValue6 = localValue6()
      if localValue5 ~= localValue6 then
        localValue6 = NetworkConcealPlayer
        localValue7 = localValue5
        localValue8 = false
        localValue9 = false
        localValue6(localValue7, localValue8, localValue9)
      end
    end
    localValue6 = cmgOperation2
    localValue6[localValue4] = nil
  end
end
eventHandler3(cmgOperation3, text3, text4)
eventHandler3 = RegisterNetEvent
cmgOperation3 = "onPlayerDropped"
-- Beginner: this function handles network event "onPlayerDropped".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2
  localValue2 = cmgOperation2
  localValue2[localValue1] = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "onPlayerDropped".
eventHandler3(cmgOperation3, text3)
-- Beginner: this function handles network event "onPlayerDropped".

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10
  localValue1 = pairs
  localValue2 = cmgOperation2
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5 in localValue1, localValue2, localValue3, localValue4 do
    localValue6 = GetPlayerFromServerId
    localValue7 = localValue5
    -- Beginner: result below is playerIndex.
    localValue6 = localValue6(localValue7)
    if -1 ~= localValue6 then
      localValue7 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      localValue7 = localValue7()
      if localValue6 ~= localValue7 then
        localValue7 = NetworkConcealPlayer
        localValue8 = localValue6
        localValue9 = true
        localValue10 = true
        localValue7(localValue8, localValue9, localValue10)
      end
    end
  end
end
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.createThreadOnTick
text3 = eventHandler3
text4 = "Staff Spectator Concealing"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation3(text3, text4)
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2
  localValue1 = stateFlag
  return localValue1
end
cmgOperation3.isInSpectate = text3
cmgOperation3 = RegisterNetEvent
text3 = "5126fa6ac5"
-- Beginner: this function handles network event "5126fa6ac5".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  localValue3 = "admin.tickets"
  localValue2 = localValue2(localValue3)
  if localValue2 then
    dataCollection = localValue1
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5126fa6ac5".
cmgOperation3(text3, text4)
cmgOperation3 = RegisterNetEvent
text3 = "90dc9c490b"
-- Beginner: this function handles network event "90dc9c490b".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, localValue9, localValue10, mathHelper, number3, stateFlag2, stateFlag3, stateFlag4, number5, stateFlag5
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  localValue3 = pairs
  localValue4 = localValue1
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    localValue9 = CMG
    localValue9 = localValue9.isKeyboardKeyCaptured
    localValue10 = localValue8[1]
    localValue9 = localValue9(localValue10)
    if localValue9 then
      localValue9 = "~r~"
      if localValue9 then
        goto continueAtStep17
      end
    end
    localValue9 = "~g~"
    ::continueAtStep17::
    localValue10 = localValue8[1]
    mathHelper = table
    mathHelper = mathHelper.insert
    number3 = dataCollection2
    stateFlag2 = {}
    stateFlag3 = string
    stateFlag3 = stateFlag3.format
    stateFlag4 = "%s%s"
    number5 = localValue9
    stateFlag5 = localValue10
    stateFlag3 = stateFlag3(stateFlag4, number5, stateFlag5)
    stateFlag4 = localValue2
    stateFlag2[1] = stateFlag3
    stateFlag2[2] = stateFlag4
    mathHelper(number3, stateFlag2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "90dc9c490b".
cmgOperation3(text3, text4)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.registerDevMenuItems
text3 = "Spectate"

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = RageUI
  localValue1 = localValue1.Checkbox
  localValue2 = "Debug"
  localValue3 = "Display debug information for spectate."
  localValue4 = cmgOperation.enabled
  localValue5 = {}

  -- === HELPER FUNCTION: localValue6(localValue12, localValue22, localValue32, localValue42) ===
  function localValue6(localValue12, localValue22, localValue32, localValue42)
    cmgOperation.enabled = localValue42
  end
  -- Beginner: Draw a RageUI checkbox.
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6)
end
cmgOperation3(text3, text4)
