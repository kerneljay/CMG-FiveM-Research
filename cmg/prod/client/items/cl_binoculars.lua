--[[
    LEVEL 1 BEGINNER GUIDE — Binoculars
    ========================================

    File: cmg/prod/client/items/cl_binoculars.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: usable inventory item behaviour, specifically the Binoculars feature.

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
      * Always-running loops: 3
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
local number, number3, number6, number7, number8, dataCollection2, createVector3, createVector32, createVector33, number13, eventHandler, text, workingValue3, workingValue4, backgroundThread, iterator, workingValue5, workingValue6, workingValue7, workingValue8, workingValue10, cmgOperation, text2, stringHelper, number4, number5, workingValue11, workingValue12, workingValue13, dataCollection
number = 150.0
number3 = 3.0
number6 = 50.0
number7 = 8.0
number8 = 8.0
dataCollection2 = {}
createVector3 = vector3
createVector32 = 455.57122802734
createVector33 = -620.88134765625
number13 = 286.98864746094
createVector3 = createVector3(createVector32, createVector33, number13)
createVector32 = vector3
createVector33 = 455.92523193359
number13 = -601.85333251953
eventHandler = 286.99536132812
createVector32 = createVector32(createVector33, number13, eventHandler)
createVector33 = vector3
number13 = 476.18197631836
eventHandler = -604.80316162109
text = 286.99682617188
createVector33, number13, eventHandler, text, workingValue3, workingValue4, backgroundThread, iterator, workingValue5, workingValue6, workingValue7, workingValue8, workingValue10, cmgOperation, text2, stringHelper, number4, number5, workingValue11, workingValue12, workingValue13, dataCollection = createVector33(number13, eventHandler, text)
dataCollection2[1] = createVector3
dataCollection2[2] = createVector32
dataCollection2[3] = createVector33
dataCollection2[4] = number13
dataCollection2[5] = eventHandler
dataCollection2[6] = text
dataCollection2[7] = workingValue3
dataCollection2[8] = workingValue4
dataCollection2[9] = backgroundThread
dataCollection2[10] = iterator
dataCollection2[11] = workingValue5
dataCollection2[12] = workingValue6
dataCollection2[13] = workingValue7
dataCollection2[14] = workingValue8
dataCollection2[15] = workingValue10
dataCollection2[16] = cmgOperation
dataCollection2[17] = text2
dataCollection2[18] = stringHelper
dataCollection2[19] = number4
dataCollection2[20] = number5
dataCollection2[21] = workingValue11
dataCollection2[22] = workingValue12
dataCollection2[23] = workingValue13
dataCollection2[24] = dataCollection
createVector3 = {}
createVector32 = 844159446
createVector3[1] = createVector32
createVector32 = false
createVector33 = 0
number13 = number + number3
number13 = number13 * 0.5
eventHandler = RegisterNetEvent
text = "dfb83eb4ef"
-- Beginner: this function handles network event "dfb83eb4ef".

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2
  localValue1 = createVector32
  localValue1 = not localValue1
  createVector32 = localValue1
  localValue1 = notify
  localValue2 = "~b~Using binoculars, press E to close. (W/S to zoom in/out)"
  -- Beginner: Show a notification to the player.
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "dfb83eb4ef".
eventHandler(text, workingValue3)
-- Beginner: this function handles network event "dfb83eb4ef".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2
  localValue1 = HideHelpTextThisFrame
  localValue1()
  localValue1 = HideHudComponentThisFrame
  localValue2 = 19
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 1
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 2
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 3
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 4
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 13
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 11
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 12
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 15
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 18
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1, localValue2) ===
function text(localValue1, localValue2)
  local cmgOperation2, workingValue15, number9, number10, number11, mathHelper, number12, workingValue16, workingValue, workingValue2, number2
  cmgOperation2 = GetCamRot
  workingValue15 = localValue1
  number9 = 2
  cmgOperation2 = cmgOperation2(workingValue15, number9)
  workingValue15 = GetDisabledControlNormal
  number9 = 0
  number10 = 220
  workingValue15 = workingValue15(number9, number10)
  number9 = GetDisabledControlNormal
  number10 = 0
  number11 = 221
  number9 = number9(number10, number11)
  if 0.0 ~= workingValue15 or 0.0 ~= number9 then
    number10 = cmgOperation2.z
    number11 = workingValue15 * -1.0
    mathHelper = number8
    number11 = number11 * mathHelper
    mathHelper = localValue2 + 0.1
    number11 = number11 * mathHelper
    number10 = number10 + number11
    number11 = math
    number11 = number11.max
    mathHelper = math
    mathHelper = mathHelper.min
    number12 = 20.0
    workingValue16 = cmgOperation2.x
    workingValue = number9 * -1.0
    workingValue2 = number7
    workingValue = workingValue * workingValue2
    workingValue2 = localValue2 + 0.1
    workingValue = workingValue * workingValue2
    workingValue16 = workingValue16 + workingValue
    mathHelper = mathHelper(number12, workingValue16)
    number12 = -89.5
    number11 = number11(mathHelper, number12)
    mathHelper = SetCamRot
    number12 = localValue1
    workingValue16 = number11
    workingValue = 0.0
    workingValue2 = number10
    number2 = 2
    mathHelper(number12, workingValue16, workingValue, workingValue2, number2)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local localValue2, cmgOperation2, workingValue15, number9
  localValue2 = IsPedInAnyVehicle
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation2 = cmgOperation2()
  workingValue15 = true
  localValue2 = localValue2(cmgOperation2, workingValue15)
  if not localValue2 then
    localValue2 = IsDisabledControlPressed
    cmgOperation2 = 0
    workingValue15 = 32
    localValue2 = localValue2(cmgOperation2, workingValue15)
    if localValue2 then
      localValue2 = math
      localValue2 = localValue2.max
      cmgOperation2 = number13
      workingValue15 = number6
      number9 = GetFrameTime
      number9 = number9()
      workingValue15 = workingValue15 * number9
      cmgOperation2 = cmgOperation2 - workingValue15
      workingValue15 = number3
      localValue2 = localValue2(cmgOperation2, workingValue15)
      number13 = localValue2
    end
    localValue2 = IsDisabledControlPressed
    cmgOperation2 = 0
    workingValue15 = 8
    localValue2 = localValue2(cmgOperation2, workingValue15)
    if localValue2 then
      localValue2 = math
      localValue2 = localValue2.min
      cmgOperation2 = number13
      workingValue15 = number6
      number9 = GetFrameTime
      number9 = number9()
      workingValue15 = workingValue15 * number9
      cmgOperation2 = cmgOperation2 + workingValue15
      workingValue15 = number
      localValue2 = localValue2(cmgOperation2, workingValue15)
      number13 = localValue2
    end
    localValue2 = GetCamFov
    cmgOperation2 = localValue1
    localValue2 = localValue2(cmgOperation2)
    cmgOperation2 = math
    cmgOperation2 = cmgOperation2.abs
    workingValue15 = number13
    workingValue15 = workingValue15 - localValue2
    cmgOperation2 = cmgOperation2(workingValue15)
    workingValue15 = 0.1
    if cmgOperation2 < workingValue15 then
      number13 = localValue2
    end
    cmgOperation2 = SetCamFov
    workingValue15 = localValue1
    number9 = number13
    number9 = number9 - localValue2
    number9 = number9 * 0.05
    number9 = localValue2 + number9
    cmgOperation2(workingValue15, number9)
  else
    localValue2 = IsDisabledControlPressed
    cmgOperation2 = 0
    workingValue15 = 241
    localValue2 = localValue2(cmgOperation2, workingValue15)
    if localValue2 then
      localValue2 = math
      localValue2 = localValue2.max
      cmgOperation2 = number13
      workingValue15 = number6
      number9 = GetFrameTime
      number9 = number9()
      workingValue15 = workingValue15 * number9
      cmgOperation2 = cmgOperation2 - workingValue15
      workingValue15 = number3
      localValue2 = localValue2(cmgOperation2, workingValue15)
      number13 = localValue2
    end
    localValue2 = IsDisabledControlPressed
    cmgOperation2 = 0
    workingValue15 = 242
    localValue2 = localValue2(cmgOperation2, workingValue15)
    if localValue2 then
      localValue2 = math
      localValue2 = localValue2.min
      cmgOperation2 = number13
      workingValue15 = number6
      number9 = GetFrameTime
      number9 = number9()
      workingValue15 = workingValue15 * number9
      cmgOperation2 = cmgOperation2 + workingValue15
      workingValue15 = number
      localValue2 = localValue2(cmgOperation2, workingValue15)
      number13 = localValue2
    end
    localValue2 = GetCamFov
    cmgOperation2 = localValue1
    localValue2 = localValue2(cmgOperation2)
    cmgOperation2 = math
    cmgOperation2 = cmgOperation2.abs
    workingValue15 = number13
    workingValue15 = workingValue15 - localValue2
    cmgOperation2 = cmgOperation2(workingValue15)
    workingValue15 = 0.1
    if cmgOperation2 < workingValue15 then
      number13 = localValue2
    end
    cmgOperation2 = SetCamFov
    workingValue15 = localValue1
    number9 = number13
    number9 = number9 - localValue2
    number9 = number9 * 0.05
    number9 = localValue2 + number9
    cmgOperation2(workingValue15, number9)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, cmgOperation2, workingValue15, number9, number10, number11, mathHelper, number12, workingValue16, workingValue
  localValue2 = pairs
  cmgOperation2 = GetGamePool
  workingValue15 = "CObject"
  cmgOperation2, workingValue15, number9, number10, number11, mathHelper, number12, workingValue16, workingValue = cmgOperation2(workingValue15)
  localValue2, cmgOperation2, workingValue15, number9 = localValue2(cmgOperation2, workingValue15, number9, number10, number11, mathHelper, number12, workingValue16, workingValue)
  for number10, number11 in localValue2, cmgOperation2, workingValue15, number9 do
    mathHelper = GetEntityModel
    number12 = number11
    -- Beginner: result below is modelHash.
    mathHelper = mathHelper(number12)
    number12 = table
    number12 = number12.has
    workingValue16 = createVector3
    workingValue = mathHelper
    number12 = number12(workingValue16, workingValue)
    if number12 then
      number12 = localValue1
      workingValue16 = number11
      number12(workingValue16)
    end
  end
end
backgroundThread = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION: iterator() ===
function iterator()
  local localValue1, localValue2, cmgOperation2, workingValue15, number9, number10, number11, mathHelper, number12, workingValue16, workingValue, workingValue2, number2
  while true do
    localValue1 = IsControlJustPressed
    localValue2 = 0
    cmgOperation2 = 29
    localValue1 = localValue1(localValue2, cmgOperation2)
    if localValue1 then
      localValue1 = IsControlPressed
      localValue2 = 0
      cmgOperation2 = 21
      localValue1 = localValue1(localValue2, cmgOperation2)
      if localValue1 then
        localValue1 = createVector32
        if not localValue1 then
          localValue1 = CMGclient
          localValue1 = localValue1.useInventoryItem
          localValue2 = {}
          cmgOperation2 = "binos"
          workingValue15 = 1
          localValue2[1] = cmgOperation2
          localValue2[2] = workingValue15
          localValue1(localValue2)
          localValue1 = TriggerServerEvent
          localValue2 = "4499b42011"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4499b42011".
          localValue1(localValue2)
        end
      end
    end
    localValue1 = createVector32
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.setEmotesIgnoreCombatTimer
      localValue2 = true
      localValue1(localValue2)
      localValue1 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue1 = localValue1()
      localValue2 = IsPedInAnyVehicle
      cmgOperation2 = localValue1
      workingValue15 = true
      localValue2 = localValue2(cmgOperation2, workingValue15)
      if not localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.playEmote
        cmgOperation2 = "binoculars"
        localValue2(cmgOperation2)
      end
      localValue2 = CMG
      localValue2 = localValue2.setWeapon
      cmgOperation2 = localValue1
      workingValue15 = "WEAPON_UNARMED"
      number9 = true
      localValue2(cmgOperation2, workingValue15, number9)
      localValue2 = Wait
      cmgOperation2 = 450
      localValue2(cmgOperation2)
      localValue2 = SetTimecycleModifier
      cmgOperation2 = "heliGunCam"
      localValue2(cmgOperation2)
      localValue2 = SetTimecycleModifierStrength
      cmgOperation2 = 0.3
      localValue2(cmgOperation2)
      localValue2 = RequestScaleformMovie
      cmgOperation2 = "binoculars"
      -- Beginner: result below is scaleformHandle.
      localValue2 = localValue2(cmgOperation2)
      while true do
        cmgOperation2 = HasScaleformMovieLoaded
        workingValue15 = localValue2
        cmgOperation2 = cmgOperation2(workingValue15)
        if cmgOperation2 then
          break
        end
        cmgOperation2 = Wait
        workingValue15 = 1
        cmgOperation2(workingValue15)
      end
      cmgOperation2 = DrawScaleformMovieFullscreen
      workingValue15 = localValue2
      number9 = 255
      number10 = 255
      number11 = 255
      mathHelper = 0
      number12 = 0
      cmgOperation2(workingValue15, number9, number10, number11, mathHelper, number12)
      cmgOperation2 = CreateCam
      workingValue15 = "DEFAULT_SCRIPTED_FLY_CAMERA"
      number9 = true
      -- Beginner: result below is cameraHandle.
      cmgOperation2 = cmgOperation2(workingValue15, number9)
      workingValue15 = AttachCamToEntity
      number9 = cmgOperation2
      number10 = CMG
      number10 = number10.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      number10 = number10()
      number11 = 0.0
      mathHelper = 0.0
      number12 = 1.0
      workingValue16 = true
      workingValue15(number9, number10, number11, mathHelper, number12, workingValue16)
      workingValue15 = SetCamRot
      number9 = cmgOperation2
      number10 = 0.0
      number11 = 0.0
      mathHelper = GetEntityHeading
      number12 = CMG
      number12 = number12.getPlayerPed
      number12, workingValue16, workingValue, workingValue2, number2 = number12()
      -- Beginner: result below is heading.
      mathHelper = mathHelper(number12, workingValue16, workingValue, workingValue2, number2)
      number12 = 2
      workingValue15(number9, number10, number11, mathHelper, number12)
      workingValue15 = SetCamFov
      number9 = cmgOperation2
      number10 = number13
      workingValue15(number9, number10)
      workingValue15 = RenderScriptCams
      number9 = true
      number10 = false
      number11 = 0
      mathHelper = true
      number12 = false
      workingValue15(number9, number10, number11, mathHelper, number12)
      workingValue15 = ScaleformMovieMethodAddParamInt
      number9 = 0
      workingValue15(number9)
      workingValue15 = EndScaleformMovieMethod
      workingValue15()
      workingValue15 = workingValue4

      -- === HELPER FUNCTION (decompiler name: number9; parameters: localValue12) ===
      function number9(localValue12)
        local workingValue9, workingValue14, stateFlag, stateFlag2
        workingValue9 = SetEntityVisible
        workingValue14 = localValue12
        stateFlag = false
        stateFlag2 = false
        workingValue9(workingValue14, stateFlag, stateFlag2)
      end
      workingValue15(number9)
      workingValue15 = nil
      while true do
        number9 = createVector32
        if not number9 then
          break
        end
        number9 = IsPedInAnyVehicle
        number10 = CMG
        number10 = number10.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        number10 = number10()
        number11 = true
        number9 = number9(number10, number11)
        if number9 then
          break
        end
        number9 = CMG
        number9 = number9.isPlayingEmote
        number9, number10 = number9()
        number11 = IsControlJustPressed
        mathHelper = 0
        number12 = 38
        number11 = number11(mathHelper, number12)
        if not (not number11 and number9) or "Binoculars" ~= number10 then
          number11 = false
          createVector32 = number11
          break
        end
        if not workingValue15 then
          number11 = number
          mathHelper = number3
          number11 = number11 - mathHelper
          mathHelper = 1.0
          number11 = mathHelper / number11
          mathHelper = number13
          number12 = number3
          mathHelper = mathHelper - number12
          number11 = number11 * mathHelper
          mathHelper = text
          number12 = cmgOperation2
          workingValue16 = number11
          mathHelper(number12, workingValue16)
        end
        number11 = DisableControlAction
        mathHelper = 0
        number12 = 30
        workingValue16 = true
        number11(mathHelper, number12, workingValue16)
        number11 = DisableControlAction
        mathHelper = 0
        number12 = 31
        workingValue16 = true
        number11(mathHelper, number12, workingValue16)
        number11 = DisableControlAction
        mathHelper = 0
        number12 = 32
        workingValue16 = true
        number11(mathHelper, number12, workingValue16)
        number11 = DisableControlAction
        mathHelper = 0
        number12 = 33
        workingValue16 = true
        number11(mathHelper, number12, workingValue16)
        number11 = DisableControlAction
        mathHelper = 0
        number12 = 34
        workingValue16 = true
        number11(mathHelper, number12, workingValue16)
        number11 = DisableControlAction
        mathHelper = 0
        number12 = 35
        workingValue16 = true
        number11(mathHelper, number12, workingValue16)
        number11 = workingValue3
        mathHelper = cmgOperation2
        number11(mathHelper)
        number11 = eventHandler
        -- Beginner: Register a network event handler that the server/other clients can trigger.
        number11()
        number11 = CMG
        number11 = number11.setWeapon
        mathHelper = localValue1
        number12 = "WEAPON_UNARMED"
        workingValue16 = true
        number11(mathHelper, number12, workingValue16)
        number11 = DrawScaleformMovieFullscreen
        mathHelper = localValue2
        number12 = 255
        workingValue16 = 255
        workingValue = 255
        workingValue2 = 255
        number2 = 0
        number11(mathHelper, number12, workingValue16, workingValue, workingValue2, number2)
        number11 = CMG
        number11 = number11.runVigilanteTargetCheckThisFrame
        number11()
        number11 = Wait
        mathHelper = 1
        number11(mathHelper)
      end
      number9 = PlaySoundFrontend
      number10 = -1
      number11 = "SELECT"
      mathHelper = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      number12 = false
      number9(number10, number11, mathHelper, number12)
      number9 = CMG
      number9 = number9.cancelEmote
      number10 = true
      number9(number10)
      number9 = false
      createVector32 = number9
      number9 = GetFrameCount
      number9 = number9()
      createVector33 = number9
      number9 = CMG
      number9 = number9.unregisterVigilanteHeadshots
      number10 = true
      number9(number10)
      number9 = ClearTimecycleModifier
      number9()
      number9 = number
      number10 = number3
      number9 = number9 + number10
      number9 = number9 * 0.5
      number13 = number9
      number9 = RenderScriptCams
      number10 = false
      number11 = false
      mathHelper = 0
      number12 = true
      workingValue16 = false
      number9(number10, number11, mathHelper, number12, workingValue16)
      number9 = SetScaleformMovieAsNoLongerNeeded
      number10 = localValue2
      number9(number10)
      number9 = DestroyCam
      number10 = cmgOperation2
      number11 = false
      number9(number10, number11)
      number9 = SetNightvision
      number10 = false
      number9(number10)
      number9 = SetSeethrough
      number10 = false
      number9(number10)
      number9 = CMG
      number9 = number9.setEmotesIgnoreCombatTimer
      number10 = false
      number9(number10)
      number9 = workingValue4

      -- === HELPER FUNCTION (decompiler name: number10; parameters: localValue12) ===
      function number10(localValue12)
        local workingValue9, workingValue14, stateFlag, stateFlag2
        workingValue9 = SetEntityVisible
        workingValue14 = localValue12
        stateFlag = true
        stateFlag2 = true
        workingValue9(workingValue14, stateFlag, stateFlag2)
      end
      number9(number10)
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(iterator)

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, cmgOperation2
  localValue1 = createVector32
  if localValue1 then
    return
  end
  localValue1 = drawNativeNotification
  localValue2 = "Press ~INPUT_CONTEXT~ to use the binoculars"
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue1(localValue2)
  localValue1 = IsControlJustPressed
  localValue2 = 0
  cmgOperation2 = 51
  localValue1 = localValue1(localValue2, cmgOperation2)
  if localValue1 then
    localValue1 = GetFrameCount
    localValue1 = localValue1()
    localValue2 = createVector33
    if localValue1 ~= localValue2 then
      localValue1 = TriggerEvent
      localValue2 = "dfb83eb4ef"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "dfb83eb4ef".
      localValue1(localValue2)
    end
  end
end
iterator = pairs
workingValue5 = dataCollection2
iterator, workingValue5, workingValue6, workingValue7 = iterator(workingValue5)
for workingValue8, workingValue10 in iterator, workingValue5, workingValue6, workingValue7 do
  cmgOperation = CMG
  cmgOperation = cmgOperation.createArea
  text2 = "static_binos_"
  stringHelper = tostring
  number4 = workingValue8
  stringHelper = stringHelper(number4)
  text2 = text2 .. stringHelper
  stringHelper = workingValue10
  number4 = 0.5
  number5 = 2.0

  -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
  function workingValue11()
    local localValue1, localValue2
  end

  -- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
  function workingValue12()
    local localValue1, localValue2
  end
  workingValue13 = backgroundThread
  dataCollection = {}
  -- Beginner: Create an interaction area around a world position.
  cmgOperation(text2, stringHelper, number4, number5, workingValue11, workingValue12, workingValue13, dataCollection)
end
