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
local numberValue, numberValue3, numberValue6, numberValue7, numberValue8, dataTable2, vector3Builder, vector3Builder2, vector3Builder3, numberValue13, eventRegistration, textValue, workValue3, workValue4, threadCall, iterator, workValue5, workValue6, workValue7, workValue8, workValue10, cmgCall, textValue2, stringHelper, numberValue4, numberValue5, workValue11, workValue12, workValue13, dataTable
numberValue = 150.0
numberValue3 = 3.0
numberValue6 = 50.0
numberValue7 = 8.0
numberValue8 = 8.0
dataTable2 = {}
vector3Builder = vector3
vector3Builder2 = 455.57122802734
vector3Builder3 = -620.88134765625
numberValue13 = 286.98864746094
vector3Builder = vector3Builder(vector3Builder2, vector3Builder3, numberValue13)
vector3Builder2 = vector3
vector3Builder3 = 455.92523193359
numberValue13 = -601.85333251953
eventRegistration = 286.99536132812
vector3Builder2 = vector3Builder2(vector3Builder3, numberValue13, eventRegistration)
vector3Builder3 = vector3
numberValue13 = 476.18197631836
eventRegistration = -604.80316162109
textValue = 286.99682617188
vector3Builder3, numberValue13, eventRegistration, textValue, workValue3, workValue4, threadCall, iterator, workValue5, workValue6, workValue7, workValue8, workValue10, cmgCall, textValue2, stringHelper, numberValue4, numberValue5, workValue11, workValue12, workValue13, dataTable = vector3Builder3(numberValue13, eventRegistration, textValue)
dataTable2[1] = vector3Builder
dataTable2[2] = vector3Builder2
dataTable2[3] = vector3Builder3
dataTable2[4] = numberValue13
dataTable2[5] = eventRegistration
dataTable2[6] = textValue
dataTable2[7] = workValue3
dataTable2[8] = workValue4
dataTable2[9] = threadCall
dataTable2[10] = iterator
dataTable2[11] = workValue5
dataTable2[12] = workValue6
dataTable2[13] = workValue7
dataTable2[14] = workValue8
dataTable2[15] = workValue10
dataTable2[16] = cmgCall
dataTable2[17] = textValue2
dataTable2[18] = stringHelper
dataTable2[19] = numberValue4
dataTable2[20] = numberValue5
dataTable2[21] = workValue11
dataTable2[22] = workValue12
dataTable2[23] = workValue13
dataTable2[24] = dataTable
vector3Builder = {}
vector3Builder2 = 844159446
vector3Builder[1] = vector3Builder2
vector3Builder2 = false
vector3Builder3 = 0
numberValue13 = numberValue + numberValue3
numberValue13 = numberValue13 * 0.5
eventRegistration = RegisterNetEvent
textValue = "dfb83eb4ef"
-- Beginner: this function handles network event "dfb83eb4ef".

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2
  arg1 = vector3Builder2
  arg1 = not arg1
  vector3Builder2 = arg1
  arg1 = notify
  arg2 = "~b~Using binoculars, press E to close. (W/S to zoom in/out)"
  -- Beginner: Show a notification to the player.
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "dfb83eb4ef".
eventRegistration(textValue, workValue3)
-- Beginner: this function handles network event "dfb83eb4ef".

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2
  arg1 = HideHelpTextThisFrame
  arg1()
  arg1 = HideHudComponentThisFrame
  arg2 = 19
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 1
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 2
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 3
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 4
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 13
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 11
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 12
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 15
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 18
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: textValue; parameters: arg1, arg2) ===
function textValue(arg1, arg2)
  local cmgCall2, workValue15, numberValue9, numberValue10, numberValue11, mathHelper, numberValue12, workValue16, workValue, workValue2, numberValue2
  cmgCall2 = GetCamRot
  workValue15 = arg1
  numberValue9 = 2
  cmgCall2 = cmgCall2(workValue15, numberValue9)
  workValue15 = GetDisabledControlNormal
  numberValue9 = 0
  numberValue10 = 220
  workValue15 = workValue15(numberValue9, numberValue10)
  numberValue9 = GetDisabledControlNormal
  numberValue10 = 0
  numberValue11 = 221
  numberValue9 = numberValue9(numberValue10, numberValue11)
  if 0.0 ~= workValue15 or 0.0 ~= numberValue9 then
    numberValue10 = cmgCall2.z
    numberValue11 = workValue15 * -1.0
    mathHelper = numberValue8
    numberValue11 = numberValue11 * mathHelper
    mathHelper = arg2 + 0.1
    numberValue11 = numberValue11 * mathHelper
    numberValue10 = numberValue10 + numberValue11
    numberValue11 = math
    numberValue11 = numberValue11.max
    mathHelper = math
    mathHelper = mathHelper.min
    numberValue12 = 20.0
    workValue16 = cmgCall2.x
    workValue = numberValue9 * -1.0
    workValue2 = numberValue7
    workValue = workValue * workValue2
    workValue2 = arg2 + 0.1
    workValue = workValue * workValue2
    workValue16 = workValue16 + workValue
    mathHelper = mathHelper(numberValue12, workValue16)
    numberValue12 = -89.5
    numberValue11 = numberValue11(mathHelper, numberValue12)
    mathHelper = SetCamRot
    numberValue12 = arg1
    workValue16 = numberValue11
    workValue = 0.0
    workValue2 = numberValue10
    numberValue2 = 2
    mathHelper(numberValue12, workValue16, workValue, workValue2, numberValue2)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
  local arg2, cmgCall2, workValue15, numberValue9
  arg2 = IsPedInAnyVehicle
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall2 = cmgCall2()
  workValue15 = true
  arg2 = arg2(cmgCall2, workValue15)
  if not arg2 then
    arg2 = IsDisabledControlPressed
    cmgCall2 = 0
    workValue15 = 32
    arg2 = arg2(cmgCall2, workValue15)
    if arg2 then
      arg2 = math
      arg2 = arg2.max
      cmgCall2 = numberValue13
      workValue15 = numberValue6
      numberValue9 = GetFrameTime
      numberValue9 = numberValue9()
      workValue15 = workValue15 * numberValue9
      cmgCall2 = cmgCall2 - workValue15
      workValue15 = numberValue3
      arg2 = arg2(cmgCall2, workValue15)
      numberValue13 = arg2
    end
    arg2 = IsDisabledControlPressed
    cmgCall2 = 0
    workValue15 = 8
    arg2 = arg2(cmgCall2, workValue15)
    if arg2 then
      arg2 = math
      arg2 = arg2.min
      cmgCall2 = numberValue13
      workValue15 = numberValue6
      numberValue9 = GetFrameTime
      numberValue9 = numberValue9()
      workValue15 = workValue15 * numberValue9
      cmgCall2 = cmgCall2 + workValue15
      workValue15 = numberValue
      arg2 = arg2(cmgCall2, workValue15)
      numberValue13 = arg2
    end
    arg2 = GetCamFov
    cmgCall2 = arg1
    arg2 = arg2(cmgCall2)
    cmgCall2 = math
    cmgCall2 = cmgCall2.abs
    workValue15 = numberValue13
    workValue15 = workValue15 - arg2
    cmgCall2 = cmgCall2(workValue15)
    workValue15 = 0.1
    if cmgCall2 < workValue15 then
      numberValue13 = arg2
    end
    cmgCall2 = SetCamFov
    workValue15 = arg1
    numberValue9 = numberValue13
    numberValue9 = numberValue9 - arg2
    numberValue9 = numberValue9 * 0.05
    numberValue9 = arg2 + numberValue9
    cmgCall2(workValue15, numberValue9)
  else
    arg2 = IsDisabledControlPressed
    cmgCall2 = 0
    workValue15 = 241
    arg2 = arg2(cmgCall2, workValue15)
    if arg2 then
      arg2 = math
      arg2 = arg2.max
      cmgCall2 = numberValue13
      workValue15 = numberValue6
      numberValue9 = GetFrameTime
      numberValue9 = numberValue9()
      workValue15 = workValue15 * numberValue9
      cmgCall2 = cmgCall2 - workValue15
      workValue15 = numberValue3
      arg2 = arg2(cmgCall2, workValue15)
      numberValue13 = arg2
    end
    arg2 = IsDisabledControlPressed
    cmgCall2 = 0
    workValue15 = 242
    arg2 = arg2(cmgCall2, workValue15)
    if arg2 then
      arg2 = math
      arg2 = arg2.min
      cmgCall2 = numberValue13
      workValue15 = numberValue6
      numberValue9 = GetFrameTime
      numberValue9 = numberValue9()
      workValue15 = workValue15 * numberValue9
      cmgCall2 = cmgCall2 + workValue15
      workValue15 = numberValue
      arg2 = arg2(cmgCall2, workValue15)
      numberValue13 = arg2
    end
    arg2 = GetCamFov
    cmgCall2 = arg1
    arg2 = arg2(cmgCall2)
    cmgCall2 = math
    cmgCall2 = cmgCall2.abs
    workValue15 = numberValue13
    workValue15 = workValue15 - arg2
    cmgCall2 = cmgCall2(workValue15)
    workValue15 = 0.1
    if cmgCall2 < workValue15 then
      numberValue13 = arg2
    end
    cmgCall2 = SetCamFov
    workValue15 = arg1
    numberValue9 = numberValue13
    numberValue9 = numberValue9 - arg2
    numberValue9 = numberValue9 * 0.05
    numberValue9 = arg2 + numberValue9
    cmgCall2(workValue15, numberValue9)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1) ===
function workValue4(arg1)
  local arg2, cmgCall2, workValue15, numberValue9, numberValue10, numberValue11, mathHelper, numberValue12, workValue16, workValue
  arg2 = pairs
  cmgCall2 = GetGamePool
  workValue15 = "CObject"
  cmgCall2, workValue15, numberValue9, numberValue10, numberValue11, mathHelper, numberValue12, workValue16, workValue = cmgCall2(workValue15)
  arg2, cmgCall2, workValue15, numberValue9 = arg2(cmgCall2, workValue15, numberValue9, numberValue10, numberValue11, mathHelper, numberValue12, workValue16, workValue)
  for numberValue10, numberValue11 in arg2, cmgCall2, workValue15, numberValue9 do
    mathHelper = GetEntityModel
    numberValue12 = numberValue11
    -- Beginner: result below is modelHash.
    mathHelper = mathHelper(numberValue12)
    numberValue12 = table
    numberValue12 = numberValue12.has
    workValue16 = vector3Builder
    workValue = mathHelper
    numberValue12 = numberValue12(workValue16, workValue)
    if numberValue12 then
      numberValue12 = arg1
      workValue16 = numberValue11
      numberValue12(workValue16)
    end
  end
end
threadCall = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION: iterator() ===
function iterator()
  local arg1, arg2, cmgCall2, workValue15, numberValue9, numberValue10, numberValue11, mathHelper, numberValue12, workValue16, workValue, workValue2, numberValue2
  while true do
    arg1 = IsControlJustPressed
    arg2 = 0
    cmgCall2 = 29
    arg1 = arg1(arg2, cmgCall2)
    if arg1 then
      arg1 = IsControlPressed
      arg2 = 0
      cmgCall2 = 21
      arg1 = arg1(arg2, cmgCall2)
      if arg1 then
        arg1 = vector3Builder2
        if not arg1 then
          arg1 = CMGclient
          arg1 = arg1.useInventoryItem
          arg2 = {}
          cmgCall2 = "binos"
          workValue15 = 1
          arg2[1] = cmgCall2
          arg2[2] = workValue15
          arg1(arg2)
          arg1 = TriggerServerEvent
          arg2 = "4499b42011"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "4499b42011".
          arg1(arg2)
        end
      end
    end
    arg1 = vector3Builder2
    if arg1 then
      arg1 = CMG
      arg1 = arg1.setEmotesIgnoreCombatTimer
      arg2 = true
      arg1(arg2)
      arg1 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg1 = arg1()
      arg2 = IsPedInAnyVehicle
      cmgCall2 = arg1
      workValue15 = true
      arg2 = arg2(cmgCall2, workValue15)
      if not arg2 then
        arg2 = CMG
        arg2 = arg2.playEmote
        cmgCall2 = "binoculars"
        arg2(cmgCall2)
      end
      arg2 = CMG
      arg2 = arg2.setWeapon
      cmgCall2 = arg1
      workValue15 = "WEAPON_UNARMED"
      numberValue9 = true
      arg2(cmgCall2, workValue15, numberValue9)
      arg2 = Wait
      cmgCall2 = 450
      arg2(cmgCall2)
      arg2 = SetTimecycleModifier
      cmgCall2 = "heliGunCam"
      arg2(cmgCall2)
      arg2 = SetTimecycleModifierStrength
      cmgCall2 = 0.3
      arg2(cmgCall2)
      arg2 = RequestScaleformMovie
      cmgCall2 = "binoculars"
      -- Beginner: result below is scaleformHandle.
      arg2 = arg2(cmgCall2)
      while true do
        cmgCall2 = HasScaleformMovieLoaded
        workValue15 = arg2
        cmgCall2 = cmgCall2(workValue15)
        if cmgCall2 then
          break
        end
        cmgCall2 = Wait
        workValue15 = 1
        cmgCall2(workValue15)
      end
      cmgCall2 = DrawScaleformMovieFullscreen
      workValue15 = arg2
      numberValue9 = 255
      numberValue10 = 255
      numberValue11 = 255
      mathHelper = 0
      numberValue12 = 0
      cmgCall2(workValue15, numberValue9, numberValue10, numberValue11, mathHelper, numberValue12)
      cmgCall2 = CreateCam
      workValue15 = "DEFAULT_SCRIPTED_FLY_CAMERA"
      numberValue9 = true
      -- Beginner: result below is cameraHandle.
      cmgCall2 = cmgCall2(workValue15, numberValue9)
      workValue15 = AttachCamToEntity
      numberValue9 = cmgCall2
      numberValue10 = CMG
      numberValue10 = numberValue10.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      numberValue10 = numberValue10()
      numberValue11 = 0.0
      mathHelper = 0.0
      numberValue12 = 1.0
      workValue16 = true
      workValue15(numberValue9, numberValue10, numberValue11, mathHelper, numberValue12, workValue16)
      workValue15 = SetCamRot
      numberValue9 = cmgCall2
      numberValue10 = 0.0
      numberValue11 = 0.0
      mathHelper = GetEntityHeading
      numberValue12 = CMG
      numberValue12 = numberValue12.getPlayerPed
      numberValue12, workValue16, workValue, workValue2, numberValue2 = numberValue12()
      -- Beginner: result below is heading.
      mathHelper = mathHelper(numberValue12, workValue16, workValue, workValue2, numberValue2)
      numberValue12 = 2
      workValue15(numberValue9, numberValue10, numberValue11, mathHelper, numberValue12)
      workValue15 = SetCamFov
      numberValue9 = cmgCall2
      numberValue10 = numberValue13
      workValue15(numberValue9, numberValue10)
      workValue15 = RenderScriptCams
      numberValue9 = true
      numberValue10 = false
      numberValue11 = 0
      mathHelper = true
      numberValue12 = false
      workValue15(numberValue9, numberValue10, numberValue11, mathHelper, numberValue12)
      workValue15 = ScaleformMovieMethodAddParamInt
      numberValue9 = 0
      workValue15(numberValue9)
      workValue15 = EndScaleformMovieMethod
      workValue15()
      workValue15 = workValue4

      -- === HELPER FUNCTION (decompiler name: numberValue9; parameters: arg12) ===
      function numberValue9(arg12)
        local workValue9, workValue14, flag, flag2
        workValue9 = SetEntityVisible
        workValue14 = arg12
        flag = false
        flag2 = false
        workValue9(workValue14, flag, flag2)
      end
      workValue15(numberValue9)
      workValue15 = nil
      while true do
        numberValue9 = vector3Builder2
        if not numberValue9 then
          break
        end
        numberValue9 = IsPedInAnyVehicle
        numberValue10 = CMG
        numberValue10 = numberValue10.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        numberValue10 = numberValue10()
        numberValue11 = true
        numberValue9 = numberValue9(numberValue10, numberValue11)
        if numberValue9 then
          break
        end
        numberValue9 = CMG
        numberValue9 = numberValue9.isPlayingEmote
        numberValue9, numberValue10 = numberValue9()
        numberValue11 = IsControlJustPressed
        mathHelper = 0
        numberValue12 = 38
        numberValue11 = numberValue11(mathHelper, numberValue12)
        if not (not numberValue11 and numberValue9) or "Binoculars" ~= numberValue10 then
          numberValue11 = false
          vector3Builder2 = numberValue11
          break
        end
        if not workValue15 then
          numberValue11 = numberValue
          mathHelper = numberValue3
          numberValue11 = numberValue11 - mathHelper
          mathHelper = 1.0
          numberValue11 = mathHelper / numberValue11
          mathHelper = numberValue13
          numberValue12 = numberValue3
          mathHelper = mathHelper - numberValue12
          numberValue11 = numberValue11 * mathHelper
          mathHelper = textValue
          numberValue12 = cmgCall2
          workValue16 = numberValue11
          mathHelper(numberValue12, workValue16)
        end
        numberValue11 = DisableControlAction
        mathHelper = 0
        numberValue12 = 30
        workValue16 = true
        numberValue11(mathHelper, numberValue12, workValue16)
        numberValue11 = DisableControlAction
        mathHelper = 0
        numberValue12 = 31
        workValue16 = true
        numberValue11(mathHelper, numberValue12, workValue16)
        numberValue11 = DisableControlAction
        mathHelper = 0
        numberValue12 = 32
        workValue16 = true
        numberValue11(mathHelper, numberValue12, workValue16)
        numberValue11 = DisableControlAction
        mathHelper = 0
        numberValue12 = 33
        workValue16 = true
        numberValue11(mathHelper, numberValue12, workValue16)
        numberValue11 = DisableControlAction
        mathHelper = 0
        numberValue12 = 34
        workValue16 = true
        numberValue11(mathHelper, numberValue12, workValue16)
        numberValue11 = DisableControlAction
        mathHelper = 0
        numberValue12 = 35
        workValue16 = true
        numberValue11(mathHelper, numberValue12, workValue16)
        numberValue11 = workValue3
        mathHelper = cmgCall2
        numberValue11(mathHelper)
        numberValue11 = eventRegistration
        -- Beginner: Register a network event handler that the server/other clients can trigger.
        numberValue11()
        numberValue11 = CMG
        numberValue11 = numberValue11.setWeapon
        mathHelper = arg1
        numberValue12 = "WEAPON_UNARMED"
        workValue16 = true
        numberValue11(mathHelper, numberValue12, workValue16)
        numberValue11 = DrawScaleformMovieFullscreen
        mathHelper = arg2
        numberValue12 = 255
        workValue16 = 255
        workValue = 255
        workValue2 = 255
        numberValue2 = 0
        numberValue11(mathHelper, numberValue12, workValue16, workValue, workValue2, numberValue2)
        numberValue11 = CMG
        numberValue11 = numberValue11.runVigilanteTargetCheckThisFrame
        numberValue11()
        numberValue11 = Wait
        mathHelper = 1
        numberValue11(mathHelper)
      end
      numberValue9 = PlaySoundFrontend
      numberValue10 = -1
      numberValue11 = "SELECT"
      mathHelper = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      numberValue12 = false
      numberValue9(numberValue10, numberValue11, mathHelper, numberValue12)
      numberValue9 = CMG
      numberValue9 = numberValue9.cancelEmote
      numberValue10 = true
      numberValue9(numberValue10)
      numberValue9 = false
      vector3Builder2 = numberValue9
      numberValue9 = GetFrameCount
      numberValue9 = numberValue9()
      vector3Builder3 = numberValue9
      numberValue9 = CMG
      numberValue9 = numberValue9.unregisterVigilanteHeadshots
      numberValue10 = true
      numberValue9(numberValue10)
      numberValue9 = ClearTimecycleModifier
      numberValue9()
      numberValue9 = numberValue
      numberValue10 = numberValue3
      numberValue9 = numberValue9 + numberValue10
      numberValue9 = numberValue9 * 0.5
      numberValue13 = numberValue9
      numberValue9 = RenderScriptCams
      numberValue10 = false
      numberValue11 = false
      mathHelper = 0
      numberValue12 = true
      workValue16 = false
      numberValue9(numberValue10, numberValue11, mathHelper, numberValue12, workValue16)
      numberValue9 = SetScaleformMovieAsNoLongerNeeded
      numberValue10 = arg2
      numberValue9(numberValue10)
      numberValue9 = DestroyCam
      numberValue10 = cmgCall2
      numberValue11 = false
      numberValue9(numberValue10, numberValue11)
      numberValue9 = SetNightvision
      numberValue10 = false
      numberValue9(numberValue10)
      numberValue9 = SetSeethrough
      numberValue10 = false
      numberValue9(numberValue10)
      numberValue9 = CMG
      numberValue9 = numberValue9.setEmotesIgnoreCombatTimer
      numberValue10 = false
      numberValue9(numberValue10)
      numberValue9 = workValue4

      -- === HELPER FUNCTION (decompiler name: numberValue10; parameters: arg12) ===
      function numberValue10(arg12)
        local workValue9, workValue14, flag, flag2
        workValue9 = SetEntityVisible
        workValue14 = arg12
        flag = true
        flag2 = true
        workValue9(workValue14, flag, flag2)
      end
      numberValue9(numberValue10)
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(iterator)

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: none) ===
function threadCall()
  local arg1, arg2, cmgCall2
  arg1 = vector3Builder2
  if arg1 then
    return
  end
  arg1 = drawNativeNotification
  arg2 = "Press ~INPUT_CONTEXT~ to use the binoculars"
  -- Beginner: Show a GTA-style notification/help prompt.
  arg1(arg2)
  arg1 = IsControlJustPressed
  arg2 = 0
  cmgCall2 = 51
  arg1 = arg1(arg2, cmgCall2)
  if arg1 then
    arg1 = GetFrameCount
    arg1 = arg1()
    arg2 = vector3Builder3
    if arg1 ~= arg2 then
      arg1 = TriggerEvent
      arg2 = "dfb83eb4ef"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "dfb83eb4ef".
      arg1(arg2)
    end
  end
end
iterator = pairs
workValue5 = dataTable2
iterator, workValue5, workValue6, workValue7 = iterator(workValue5)
for workValue8, workValue10 in iterator, workValue5, workValue6, workValue7 do
  cmgCall = CMG
  cmgCall = cmgCall.createArea
  textValue2 = "static_binos_"
  stringHelper = tostring
  numberValue4 = workValue8
  stringHelper = stringHelper(numberValue4)
  textValue2 = textValue2 .. stringHelper
  stringHelper = workValue10
  numberValue4 = 0.5
  numberValue5 = 2.0

  -- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
  function workValue11()
    local arg1, arg2
  end

  -- === HELPER FUNCTION (decompiler name: workValue12; parameters: none) ===
  function workValue12()
    local arg1, arg2
  end
  workValue13 = threadCall
  dataTable = {}
  -- Beginner: Create an interaction area around a world position.
  cmgCall(textValue2, stringHelper, numberValue4, numberValue5, workValue11, workValue12, workValue13, dataTable)
end
