--[[
    LEVEL 1 BEGINNER GUIDE — Nhs
    =================================

    File: cmg/prod/client/nhs/cl_nhs.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: health-service/medical gameplay, specifically the Nhs feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 27
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
local localEventCall, text4, eventHandler3, rageUiOperation, text7, cmgOperation3, rageUiOperation2, rageUiOperation3, number10, text11, number, workingValue2, workingValue3, cmgOperation, text2, text3, workingValue4, workingValue5, workingValue6, workingValue7, eventHandler, text5, eventHandler2, text6, workingValue9
localEventCall = RMenu
localEventCall = localEventCall.Add
text4 = "nhs"
eventHandler3 = "main"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text7 = "NHS"
cmgOperation3 = "Status: ~b~Available"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3, number10, text11, number, workingValue2, workingValue3, cmgOperation, text2, text3, workingValue4, workingValue5, workingValue6, workingValue7, eventHandler, text5, eventHandler2, text6, workingValue9 = rageUiOperation3()
rageUiOperation, text7, cmgOperation3, rageUiOperation2, rageUiOperation3, number10, text11, number, workingValue2, workingValue3, cmgOperation, text2, text3, workingValue4, workingValue5, workingValue6, workingValue7, eventHandler, text5, eventHandler2, text6, workingValue9 = rageUiOperation(text7, cmgOperation3, rageUiOperation2, rageUiOperation3, number10, text11, number, workingValue2, workingValue3, cmgOperation, text2, text3, workingValue4, workingValue5, workingValue6, workingValue7, eventHandler, text5, eventHandler2, text6, workingValue9)
localEventCall(text4, eventHandler3, rageUiOperation, text7, cmgOperation3, rageUiOperation2, rageUiOperation3, number10, text11, number, workingValue2, workingValue3, cmgOperation, text2, text3, workingValue4, workingValue5, workingValue6, workingValue7, eventHandler, text5, eventHandler2, text6, workingValue9)
localEventCall = RegisterKeyMapping
text4 = "nhs"
eventHandler3 = "NHS Menu"
rageUiOperation = "keyboard"
text7 = "U"
-- Beginner: Bind a command to a keyboard/controller key.
localEventCall(text4, eventHandler3, rageUiOperation, text7)
localEventCall = TriggerEvent
text4 = "chat:addSuggestion"
eventHandler3 = "/nhs"
rageUiOperation = "Toggle the NHS Menu"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
localEventCall(text4, eventHandler3, rageUiOperation)
localEventCall = 0
text4 = 0
eventHandler3 = RegisterNetEvent
rageUiOperation = "ae21bf16d8"
-- Beginner: this function handles network event "ae21bf16d8".

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1, localValue2) ===
function text7(localValue1, localValue2)
  local coords, cmgOperation2, text8, dataCollection
  coords = GetEntityCoords
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.getPlayerPed
  cmgOperation2, text8, dataCollection = cmgOperation2()
  -- Beginner: result below is entityCoords.
  coords = coords(cmgOperation2, text8, dataCollection)
  cmgOperation2 = coords - localValue1
  cmgOperation2 = #cmgOperation2
  if cmgOperation2 <= 15 then
    text8 = SendNUIMessage
    dataCollection = {}
    dataCollection.transactionType = localValue2
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    text8(dataCollection)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ae21bf16d8".
eventHandler3(rageUiOperation, text7)
eventHandler3 = RegisterCommand
rageUiOperation = "nhs"
-- Beginner: this function is the command handler for "nhs".

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, coords, cmgOperation2, text8, dataCollection, stateFlag5
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "nhs.onduty.permission"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.hasClientPermission
    localValue2 = "lfb.onduty.permission"
    localValue1 = localValue1(localValue2)
    if not localValue1 then
      goto continueAtStep40
    end
  end
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  coords = localValue2
  localValue2 = localValue2.Get
  cmgOperation2 = "nhs"
  text8 = "main"
  localValue2, coords, cmgOperation2, text8, dataCollection, stateFlag5 = localValue2(coords, cmgOperation2, text8)
  -- Beginner: result below is menuVisible.
  localValue1 = localValue1(localValue2, coords, cmgOperation2, text8, dataCollection, stateFlag5)
  if not localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.Visible
    localValue2 = RMenu
    coords = localValue2
    localValue2 = localValue2.Get
    cmgOperation2 = "nhs"
    text8 = "main"
    -- Beginner: result below is menu.
    localValue2 = localValue2(coords, cmgOperation2, text8)
    coords = RageUI
    coords = coords.Visible
    cmgOperation2 = RMenu
    text8 = cmgOperation2
    cmgOperation2 = cmgOperation2.Get
    dataCollection = "nhs"
    stateFlag5 = "main"
    cmgOperation2, text8, dataCollection, stateFlag5 = cmgOperation2(text8, dataCollection, stateFlag5)
    -- Beginner: result below is menuVisible.
    coords = coords(cmgOperation2, text8, dataCollection, stateFlag5)
    coords = not coords
    localValue1(localValue2, coords)
  end
  ::continueAtStep40::
end
cmgOperation3 = false
-- Beginner: Register a chat/console command. Event/command: "nhs".
eventHandler3(rageUiOperation, text7, cmgOperation3)
eventHandler3 = {}
rageUiOperation = 126349499
eventHandler3[rageUiOperation] = true
rageUiOperation = -1554970529
eventHandler3[rageUiOperation] = true
rageUiOperation = -243142012
eventHandler3[rageUiOperation] = true
rageUiOperation = 883325847
eventHandler3[rageUiOperation] = true
rageUiOperation = 101631238
eventHandler3[rageUiOperation] = true
rageUiOperation = -72657034
eventHandler3[rageUiOperation] = true
rageUiOperation = 1953687840
eventHandler3[rageUiOperation] = true
rageUiOperation = 898258641
eventHandler3[rageUiOperation] = true
rageUiOperation = false

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, coords, cmgOperation2, text8, dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4, stateFlag
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "nhs.onduty.permission"
  localValue1 = localValue1(localValue2)
  localValue2 = CMG
  localValue2 = localValue2.isDevMode
  localValue2 = localValue2()
  if not localValue2 then
    if not localValue1 then
      localValue2 = CMG
      localValue2 = localValue2.hasClientPermission
      coords = "lfb.onduty.permission"
      localValue2 = localValue2(coords)
      if not localValue2 then
        localValue2 = CMG
        localValue2 = localValue2.hasClientPermission
        coords = "aa.onduty.permission"
        localValue2 = localValue2(coords)
        if not localValue2 then
          localValue2 = CMG
          localValue2 = localValue2.isWorkingInBusiness
          localValue2 = localValue2()
          if not localValue2 then
            goto continueAtStep72
          end
        end
      end
    end
    localValue2 = rageUiOperation
    if localValue2 then
      localValue2 = DrawAdvancedText
      coords = 0.971
      cmgOperation2 = 0.914
      text8 = 0.005
      dataCollection = 0.0028
      stateFlag5 = 0.6
      text9 = "You are off duty"
      text10 = 255
      mathHelper = 51
      text = 51
      number2 = 255
      number3 = 2
      number4 = 0
      localValue2(coords, cmgOperation2, text8, dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4)
    end
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    coords = GetSelectedPedWeapon
    cmgOperation2 = localValue2
    -- Beginner: result below is weaponHash.
    coords = coords(cmgOperation2)
    if -1569615261 ~= coords then
      cmgOperation2 = eventHandler3
      cmgOperation2 = cmgOperation2[coords]
      if not cmgOperation2 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.hasClientPermission
        text8 = "aa.onduty.permission"
        cmgOperation2 = cmgOperation2(text8)
        if cmgOperation2 then
          cmgOperation2 = notify
          text8 = "~r~You can not equip a weapon whilst on the Mechanic Job"
          -- Beginner: Show a notification to the player.
          cmgOperation2(text8)
        end
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.setWeapon
        text8 = localValue2
        dataCollection = -1569615261
        stateFlag5 = true
        cmgOperation2(text8, dataCollection, stateFlag5)
      end
    end
  end
  ::continueAtStep72::
  if localValue1 then
    localValue2 = localEventCall
    if localValue2 > 0 then
      localValue2 = localEventCall
      coords = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      coords = coords()
      localValue2 = localValue2 - coords
      if localValue2 > 0 then
        coords = DrawAdvancedText
        cmgOperation2 = 0.985
        text8 = 0.805
        dataCollection = 0.005
        stateFlag5 = 0.0028
        text9 = 0.467
        text10 = "REVIVE COOLDOWN: "
        mathHelper = math
        mathHelper = mathHelper.floor
        text = localValue2 / 1000
        mathHelper = mathHelper(text)
        text = " seconds"
        text10 = text10 .. mathHelper .. text
        mathHelper = 51
        text = 255
        number2 = 51
        number3 = 255
        number4 = 7
        stateFlag = 0
        coords(cmgOperation2, text8, dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4, stateFlag)
      else
        coords = 0
        localEventCall = coords
      end
    end
    localValue2 = text4
    if localValue2 > 0 then
      localValue2 = text4
      coords = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      coords = coords()
      localValue2 = localValue2 - coords
      if localValue2 > 0 then
        coords = DrawAdvancedText
        cmgOperation2 = 0.985
        text8 = 0.845
        dataCollection = 0.005
        stateFlag5 = 0.0028
        text9 = 0.467
        text10 = "BODYBAG COOLDOWN: "
        mathHelper = math
        mathHelper = mathHelper.floor
        text = localValue2 / 1000
        mathHelper = mathHelper(text)
        text = " seconds"
        text10 = text10 .. mathHelper .. text
        mathHelper = 51
        text = 255
        number2 = 51
        number3 = 255
        number4 = 7
        stateFlag = 0
        coords(cmgOperation2, text8, dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4, stateFlag)
      else
        coords = 0
        text4 = coords
      end
    end
  end
end
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.createThreadOnTick
rageUiOperation2 = text7
rageUiOperation3 = "NHS Weapon Whitelisting"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation3(rageUiOperation2, rageUiOperation3)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.loadModule
rageUiOperation2 = "cfg/cfg_garages"
-- Beginner: result below is config.
cmgOperation3 = cmgOperation3(rageUiOperation2)
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.loadModule
rageUiOperation3 = "cfg/cfg_stretcher"
-- Beginner: result below is config.
rageUiOperation2 = rageUiOperation2(rageUiOperation3)
if not rageUiOperation2 then
  rageUiOperation2 = {}
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1) ===
function rageUiOperation3(localValue1)
  local localValue2, coords, cmgOperation2
  if 0 ~= localValue1 then
    localValue2 = IsEntityAVehicle
    coords = localValue1
    localValue2 = localValue2(coords)
    if localValue2 then
      goto continueAtStep10
    end
  end
  localValue2 = false
  return localValue2
  ::continueAtStep10::
  localValue2 = GetEntityModel
  coords = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(coords)
  if -956048545 == localValue2 then
    coords = true
    return coords
  end
  coords = rageUiOperation2.stretcherModels
  if coords then
    coords = rageUiOperation2.stretcherModels
    coords = coords[localValue2]
    if coords then
      coords = true
      return coords
    end
  end
  coords = CMG
  coords = coords.getVehicleIdFromModel
  cmgOperation2 = localValue2
  coords = coords(cmgOperation2)
  if coords then
    cmgOperation2 = cmgOperation3.garages
    if cmgOperation2 then
      cmgOperation2 = cmgOperation3.garages
      cmgOperation2 = cmgOperation2["Health Service Vehicles"]
      if cmgOperation2 then
        cmgOperation2 = cmgOperation3.garages
        cmgOperation2 = cmgOperation2["Health Service Vehicles"]
        cmgOperation2 = cmgOperation2[coords]
        if cmgOperation2 then
          cmgOperation2 = true
          return cmgOperation2
        end
      end
      cmgOperation2 = cmgOperation3.garages
      cmgOperation2 = cmgOperation2["Health Service Helicopters"]
      if cmgOperation2 then
        cmgOperation2 = cmgOperation3.garages
        cmgOperation2 = cmgOperation2["Health Service Helicopters"]
        cmgOperation2 = cmgOperation2[coords]
        if cmgOperation2 then
          cmgOperation2 = true
          return cmgOperation2
        end
      end
    end
  end
  cmgOperation2 = false
  return cmgOperation2
end
number10 = 0
text11 = "~r~You can only use HS vehicles whilst clocked on."
number = 0

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, coords, cmgOperation2, text8
  if 0 ~= localValue1 then
    localValue2 = DoesEntityExist
    coords = localValue1
    localValue2 = localValue2(coords)
    if localValue2 then
      goto continueAtStep9
    end
  end
  return
  ::continueAtStep9::
  localValue2 = NetworkRequestControlOfEntity
  coords = localValue1
  localValue2(coords)
  localValue2 = NetworkHasControlOfEntity
  coords = localValue1
  localValue2 = localValue2(coords)
  if localValue2 then
    localValue2 = SetEntityAsMissionEntity
    coords = localValue1
    cmgOperation2 = true
    text8 = true
    localValue2(coords, cmgOperation2, text8)
    localValue2 = DeleteEntity
    coords = localValue1
    -- Beginner: Delete a GTA entity.
    localValue2(coords)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2, coords, cmgOperation2, text8, dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4, stateFlag, stateFlag2
  localValue1 = number
  if 0 ~= localValue1 then
    localValue1 = number
    localValue2 = DoesEntityExist
    coords = localValue1
    localValue2 = localValue2(coords)
    if not localValue2 then
      localValue2 = 0
      number = localValue2
    else
      localValue2 = workingValue2
      coords = localValue1
      localValue2(coords)
      localValue2 = DoesEntityExist
      coords = localValue1
      localValue2 = localValue2(coords)
      if not localValue2 then
        localValue2 = 0
        number = localValue2
      end
    end
  end
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "nhs.onduty.permission"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.hasClientPermission
    localValue2 = "doctor.permission"
    localValue1 = localValue1(localValue2)
    if not localValue1 then
      goto continueAtStep36
    end
  end
  return
  ::continueAtStep36::
  localValue1 = CMG
  localValue1 = localValue1.isJobTutorialRunning
  localValue1 = localValue1()
  if localValue1 then
    return
  end
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = GetVehiclePedIsEntering
  coords = localValue1
  localValue2 = localValue2(coords)
  if 0 ~= localValue2 then
    coords = rageUiOperation3
    cmgOperation2 = localValue2
    coords = coords(cmgOperation2)
    if not coords then
      coords = ClearPedTasks
      cmgOperation2 = localValue1
      coords(cmgOperation2)
      coords = notify
      cmgOperation2 = text11
      -- Beginner: Show a notification to the player.
      coords(cmgOperation2)
    end
  end
  coords = GetVehiclePedIsIn
  cmgOperation2 = localValue1
  text8 = false
  -- Beginner: result below is currentVehicle.
  coords = coords(cmgOperation2, text8)
  if 0 ~= coords then
    cmgOperation2 = rageUiOperation3
    text8 = coords
    cmgOperation2 = cmgOperation2(text8)
    if not cmgOperation2 then
      cmgOperation2 = GetPedInVehicleSeat
      text8 = coords
      dataCollection = -1
      cmgOperation2 = cmgOperation2(text8, dataCollection)
      cmgOperation2 = cmgOperation2 == localValue1
      text8 = GetOffsetFromEntityInWorldCoords
      dataCollection = coords
      stateFlag5 = 1.8
      text9 = 0.0
      text10 = 0.3
      text8 = text8(dataCollection, stateFlag5, text9, text10)
      dataCollection = GetGroundZFor_3dCoord
      stateFlag5 = text8.x
      text9 = text8.y
      text10 = text8.z
      text10 = text10 + 1.0
      mathHelper = 0
      text = false
      dataCollection, stateFlag5 = dataCollection(stateFlag5, text9, text10, mathHelper, text)
      if dataCollection and stateFlag5 > 0.0 then
        text9 = stateFlag5 + 0.5
        if text9 then
          goto continueAtStep105
        end
      end
      text9 = text8.z
      text9 = text9 + 0.5
      ::continueAtStep105::
      text10 = SetEntityCoordsNoOffset
      mathHelper = localValue1
      text = text8.x
      number2 = text8.y
      number3 = text9
      number4 = false
      stateFlag = false
      stateFlag2 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      text10(mathHelper, text, number2, number3, number4, stateFlag, stateFlag2)
      text10 = ClearPedTasksImmediately
      mathHelper = localValue1
      text10(mathHelper)
      if cmgOperation2 then
        number = coords
        text10 = workingValue2
        mathHelper = coords
        text10(mathHelper)
        text10 = DoesEntityExist
        mathHelper = coords
        text10 = text10(mathHelper)
        if not text10 then
          text10 = 0
          number = text10
        end
      end
      text10 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      text10 = text10()
      mathHelper = number10
      if text10 >= mathHelper then
        mathHelper = text10 + 4000
        number10 = mathHelper
        mathHelper = notify
        text = text11
        -- Beginner: Show a notification to the player.
        mathHelper(text)
      end
    end
  end
end
cmgOperation = CMG
cmgOperation = cmgOperation.createThreadOnTick
text2 = workingValue3
text3 = "NHS Vehicle Restrict"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation(text2, text3)
cmgOperation = RegisterNetEvent
text2 = "767e50aac4"
-- Beginner: this function handles network event "767e50aac4".

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2
  rageUiOperation = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "767e50aac4".
cmgOperation(text2, text3)
cmgOperation = {}
cmgOperation.running = false
cmgOperation.cancelled = false
-- Beginner: this function handles network event "767e50aac4".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, coords, cmgOperation2, text8, dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4, stateFlag, stateFlag2
  localValue2 = localValue1.isMedicTrained
  if localValue2 then
    localValue2 = "mini@cpr@char_b@cpr_def"
    if localValue2 then
      goto continueAtStep8
    end
  end
  localValue2 = "mini@cpr@char_b@cpr_str"
  ::continueAtStep8::
  coords = localValue1.isMedicTrained
  if coords then
    coords = "cpr_intro"
    if coords then
      goto continueAtStep15
    end
  end
  coords = "cpr_pumpchest"
  ::continueAtStep15::
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.loadAnimDict
  text8 = localValue2
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgOperation2(text8)
  cmgOperation2 = localValue1.sceneX
  text8 = localValue1.sceneY
  dataCollection = GetAnimInitialOffsetPosition
  stateFlag5 = localValue2
  text9 = coords
  text10 = cmgOperation2
  mathHelper = text8
  text = localValue1.sceneZ
  number2 = 0.0
  number3 = 0.0
  number4 = localValue1.sceneHeading
  stateFlag = 2
  stateFlag2 = 2
  dataCollection = dataCollection(stateFlag5, text9, text10, mathHelper, text, number2, number3, number4, stateFlag, stateFlag2)
  stateFlag5 = dataCollection.x
  stateFlag5 = stateFlag5 - cmgOperation2
  stateFlag5 = cmgOperation2 - stateFlag5
  localValue1.sceneX = stateFlag5
  stateFlag5 = dataCollection.y
  stateFlag5 = stateFlag5 - text8
  stateFlag5 = text8 - stateFlag5
  localValue1.sceneY = stateFlag5
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, coords, cmgOperation2, text8, dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4, stateFlag, stateFlag2
  localValue2 = true
  coords = localValue1.holdLastFrame
  if false == coords then
    localValue2 = false
  end
  coords = localValue1.speed
  if not coords then
    coords = 1.0
  end
  cmgOperation2 = NetworkCreateSynchronisedScene
  text8 = localValue1.x
  dataCollection = localValue1.y
  stateFlag5 = localValue1.z
  text9 = 0.0
  text10 = 0.0
  mathHelper = localValue1.heading
  text = 2
  number2 = localValue2
  number3 = false
  number4 = 1065353216
  stateFlag = 0
  stateFlag2 = coords
  cmgOperation2 = cmgOperation2(text8, dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4, stateFlag, stateFlag2)
  text8 = NetworkAddPedToSynchronisedScene
  dataCollection = localValue1.ped
  stateFlag5 = cmgOperation2
  text9 = localValue1.animDict
  text10 = localValue1.anim
  mathHelper = 8.0
  text = -8.0
  number2 = 0
  number3 = 0
  number4 = 1000.0
  stateFlag = 0
  text8(dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4, stateFlag)
  text8 = NetworkStartSynchronisedScene
  dataCollection = cmgOperation2
  text8(dataCollection)
  text8 = localValue1.endEarlyMs
  if text8 then
    text8 = math
    text8 = text8.floor
    dataCollection = GetAnimDuration
    stateFlag5 = localValue1.animDict
    text9 = localValue1.anim
    dataCollection = dataCollection(stateFlag5, text9)
    dataCollection = dataCollection * 1000
    text8 = text8(dataCollection)
    dataCollection = localValue1.endEarlyMs
    dataCollection = text8 - dataCollection
    if dataCollection < 0 then
      dataCollection = 0
    end
    stateFlag5 = 0
    while dataCollection > stateFlag5 do
      text9 = cmgOperation.cancelled
      if text9 then
        break
      end
      text9 = math
      text9 = text9.min
      text10 = 100
      mathHelper = dataCollection - stateFlag5
      text9 = text9(text10, mathHelper)
      text10 = Wait
      mathHelper = text9
      text10(mathHelper)
      stateFlag5 = stateFlag5 + text9
    end
    return cmgOperation2
  end
  text8 = localValue1.chainPhase
  if not text8 then
    text8 = 0.92
  end
  dataCollection = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  dataCollection = dataCollection()
  stateFlag5 = math
  stateFlag5 = stateFlag5.floor
  text9 = GetAnimDuration
  text10 = localValue1.animDict
  mathHelper = localValue1.anim
  text9 = text9(text10, mathHelper)
  text9 = text9 * 1000
  text9 = text9 + 250
  stateFlag5 = stateFlag5(text9)
  dataCollection = dataCollection + stateFlag5
  while true do
    stateFlag5 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    stateFlag5 = stateFlag5()
    if not (dataCollection > stateFlag5) then
      break
    end
    stateFlag5 = cmgOperation.cancelled
    if stateFlag5 then
      break
    end
    stateFlag5 = NetworkGetLocalSceneFromNetworkId
    text9 = cmgOperation2
    stateFlag5 = stateFlag5(text9)
    if -1 ~= stateFlag5 then
      text9 = GetSynchronizedScenePhase
      text10 = stateFlag5
      text9 = text9(text10)
      if text8 <= text9 then
        break
      end
    end
    text9 = Wait
    text10 = 0
    text9(text10)
  end
  return cmgOperation2
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2) ===
function workingValue4(localValue1, localValue2)
  local coords, cmgOperation2, text8, dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4, stateFlag
  coords = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  coords = coords()
  cmgOperation2 = math
  cmgOperation2 = cmgOperation2.max
  text8 = 0
  dataCollection = math
  dataCollection = dataCollection.min
  stateFlag5 = 3
  text9 = localValue1.cprPumpReduction
  if not text9 then
    text9 = 0
  end
  dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4, stateFlag = dataCollection(stateFlag5, text9)
  cmgOperation2 = cmgOperation2(text8, dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4, stateFlag)
  text8 = math
  text8 = text8.max
  dataCollection = 1
  stateFlag5 = localValue1.isMedicTrained
  if stateFlag5 then
    stateFlag5 = 8
    if stateFlag5 then
      goto continueAtStep25
    end
  end
  stateFlag5 = 16
  ::continueAtStep25::
  stateFlag5 = stateFlag5 - cmgOperation2
  text8 = text8(dataCollection, stateFlag5)
  dataCollection = CMG
  dataCollection = dataCollection.loadAnimDict
  stateFlag5 = "mini@cpr@char_a@cpr_def"
  -- Beginner: Load a GTA animation dictionary before using it.
  dataCollection(stateFlag5)
  dataCollection = CMG
  dataCollection = dataCollection.loadAnimDict
  stateFlag5 = "mini@cpr@char_a@cpr_str"
  dataCollection(stateFlag5)
  dataCollection = ClearPedTasksImmediately
  stateFlag5 = coords
  dataCollection(stateFlag5)
  dataCollection = FreezeEntityPosition
  stateFlag5 = coords
  text9 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  dataCollection(stateFlag5, text9)
  dataCollection = nil
  stateFlag5 = localValue1.isMedicTrained
  if stateFlag5 then
    stateFlag5 = CMG
    stateFlag5 = stateFlag5.requestEntitySpawn
    text9 = "cpr_medicbag"
    stateFlag5(text9)
    stateFlag5 = GetOffsetFromEntityInWorldCoords
    text9 = coords
    text10 = 0.5
    mathHelper = 0.5
    text = 0.0
    stateFlag5 = stateFlag5(text9, text10, mathHelper, text)
    text9 = CMG
    text9 = text9.loadModel
    text10 = -2140074399
    -- Beginner: Request/load a GTA model before spawning or applying it.
    text9(text10)
    text9 = CreateObject
    text10 = -2140074399
    mathHelper = stateFlag5.x
    text = stateFlag5.y
    number2 = stateFlag5.z
    number3 = true
    number4 = true
    stateFlag = false
    -- Beginner: result below is objectEntity.
    text9 = text9(text10, mathHelper, text, number2, number3, number4, stateFlag)
    dataCollection = text9
    text9 = PlaceObjectOnGroundProperly
    text10 = dataCollection
    text9(text10)
    text9 = SetModelAsNoLongerNeeded
    text10 = -2140074399
    text9(text10)
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: none) ===
  function stateFlag5()
    local workingValue, workingValue8
    workingValue = cmgOperation.cancelled
    if workingValue then
      workingValue = dataCollection
      if workingValue then
        workingValue = DoesEntityExist
        workingValue8 = dataCollection
        workingValue = workingValue(workingValue8)
        if workingValue then
          workingValue = DeleteEntity
          workingValue8 = dataCollection
          -- Beginner: Delete a GTA entity.
          workingValue(workingValue8)
        end
      end
      workingValue = true
      return workingValue
    end
    workingValue = false
    return workingValue
  end
  text9 = localValue1.isMedicTrained
  if text9 then
    text9 = text3
    text10 = {}
    text10.ped = coords
    mathHelper = localValue1.sceneX
    text10.x = mathHelper
    mathHelper = localValue1.sceneY
    text10.y = mathHelper
    mathHelper = localValue1.sceneZ
    text10.z = mathHelper
    mathHelper = localValue1.sceneHeading
    text10.heading = mathHelper
    text10.animDict = "mini@cpr@char_a@cpr_def"
    text10.anim = "cpr_intro"
    text10.chainPhase = 0.98
    text10.holdLastFrame = true
    text9(text10)
    text9 = stateFlag5
    text9 = text9()
    if text9 then
      return
    end
    text9 = 1
    text10 = text8
    mathHelper = 1
    for text = text9, text10, mathHelper do
      number2 = text3
      number3 = {}
      number3.ped = coords
      number4 = localValue1.sceneX
      number3.x = number4
      number4 = localValue1.sceneY
      number3.y = number4
      number4 = localValue1.sceneZ
      number3.z = number4
      number4 = localValue1.sceneHeading
      number3.heading = number4
      number3.animDict = "mini@cpr@char_a@cpr_str"
      number3.anim = "cpr_pumpchest"
      number3.chainPhase = 0.9
      number3.holdLastFrame = true
      number2(number3)
      number2 = stateFlag5
      number2 = number2()
      if number2 then
        return
      end
    end
    text9 = text3
    text10 = {}
    text10.ped = coords
    mathHelper = localValue1.sceneX
    text10.x = mathHelper
    mathHelper = localValue1.sceneY
    text10.y = mathHelper
    mathHelper = localValue1.sceneZ
    text10.z = mathHelper
    mathHelper = localValue1.sceneHeading
    text10.heading = mathHelper
    text10.animDict = "mini@cpr@char_a@cpr_str"
    text10.anim = "cpr_cpr_to_kol"
    text10.chainPhase = 0.98
    text10.holdLastFrame = true
    text9(text10)
    text9 = stateFlag5
    text9 = text9()
    if text9 then
      return
    end
    text9 = text3
    text10 = {}
    text10.ped = coords
    mathHelper = localValue1.sceneX
    text10.x = mathHelper
    mathHelper = localValue1.sceneY
    text10.y = mathHelper
    mathHelper = localValue1.sceneZ
    text10.z = mathHelper
    mathHelper = localValue1.sceneHeading
    text10.heading = mathHelper
    text10.animDict = "mini@cpr@char_a@cpr_str"
    text10.anim = "cpr_kol"
    text10.chainPhase = 0.95
    text10.holdLastFrame = true
    text9(text10)
    text9 = stateFlag5
    text9 = text9()
    if text9 then
      return
    end
    text9 = text3
    text10 = {}
    text10.ped = coords
    mathHelper = localValue1.sceneX
    text10.x = mathHelper
    mathHelper = localValue1.sceneY
    text10.y = mathHelper
    mathHelper = localValue1.sceneZ
    text10.z = mathHelper
    mathHelper = localValue1.sceneHeading
    text10.heading = mathHelper
    text10.animDict = "mini@cpr@char_a@cpr_str"
    text10.anim = "cpr_kol_to_cpr"
    text10.chainPhase = 0.98
    text10.holdLastFrame = true
    text9(text10)
    text9 = stateFlag5
    text9 = text9()
    if text9 then
      return
    end
    text9 = 1
    text10 = text8
    mathHelper = 1
    for text = text9, text10, mathHelper do
      number2 = text3
      number3 = {}
      number3.ped = coords
      number4 = localValue1.sceneX
      number3.x = number4
      number4 = localValue1.sceneY
      number3.y = number4
      number4 = localValue1.sceneZ
      number3.z = number4
      number4 = localValue1.sceneHeading
      number3.heading = number4
      number3.animDict = "mini@cpr@char_a@cpr_str"
      number3.anim = "cpr_pumpchest"
      number3.chainPhase = 0.9
      number3.holdLastFrame = true
      number2(number3)
      number2 = stateFlag5
      number2 = number2()
      if number2 then
        return
      end
    end
  else
    text9 = 1
    text10 = text8
    mathHelper = 1
    for text = text9, text10, mathHelper do
      number2 = text3
      number3 = {}
      number3.ped = coords
      number4 = localValue1.sceneX
      number3.x = number4
      number4 = localValue1.sceneY
      number3.y = number4
      number4 = localValue1.sceneZ
      number3.z = number4
      number4 = localValue1.sceneHeading
      number3.heading = number4
      number3.animDict = "mini@cpr@char_a@cpr_str"
      number3.anim = "cpr_pumpchest"
      number3.chainPhase = 0.9
      number3.holdLastFrame = true
      number2(number3)
      number2 = stateFlag5
      number2 = number2()
      if number2 then
        return
      end
    end
  end
  text9 = stateFlag5
  text9 = text9()
  if text9 then
    return
  end
  if "success" == localValue2 then
    text9 = text3
    text10 = {}
    text10.ped = coords
    mathHelper = localValue1.sceneX
    text10.x = mathHelper
    mathHelper = localValue1.sceneY
    text10.y = mathHelper
    mathHelper = localValue1.sceneZ
    text10.z = mathHelper
    mathHelper = localValue1.sceneHeading
    text10.heading = mathHelper
    text10.animDict = "mini@cpr@char_a@cpr_str"
    text10.anim = "cpr_success"
    text10.holdLastFrame = false
    text10.endEarlyMs = 13500
    text10.speed = 1.5
    text9(text10)
    text9 = stateFlag5
    text9 = text9()
    if text9 then
      return
    end
  elseif "fail" == localValue2 then
    text9 = text3
    text10 = {}
    text10.ped = coords
    mathHelper = localValue1.sceneX
    text10.x = mathHelper
    mathHelper = localValue1.sceneY
    text10.y = mathHelper
    mathHelper = localValue1.sceneZ
    text10.z = mathHelper
    mathHelper = localValue1.sceneHeading
    text10.heading = mathHelper
    text10.animDict = "mini@cpr@char_a@cpr_str"
    text10.anim = "cpr_fail"
    text10.holdLastFrame = false
    text10.endEarlyMs = 21000
    text10.speed = 1.5
    text9(text10)
    text9 = stateFlag5
    text9 = text9()
    if text9 then
      return
    end
  end
  if dataCollection then
    text9 = DoesEntityExist
    text10 = dataCollection
    text9 = text9(text10)
    if text9 then
      text9 = DeleteEntity
      text10 = dataCollection
      -- Beginner: Delete a GTA entity.
      text9(text10)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2) ===
function workingValue5(localValue1, localValue2)
  local coords, cmgOperation2, text8, dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3
  coords = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  coords = coords()
  cmgOperation2 = math
  cmgOperation2 = cmgOperation2.max
  text8 = 0
  dataCollection = math
  dataCollection = dataCollection.min
  stateFlag5 = 3
  text9 = localValue1.cprPumpReduction
  if not text9 then
    text9 = 0
  end
  dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3 = dataCollection(stateFlag5, text9)
  cmgOperation2 = cmgOperation2(text8, dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3)
  text8 = math
  text8 = text8.max
  dataCollection = 1
  stateFlag5 = localValue1.isMedicTrained
  if stateFlag5 then
    stateFlag5 = 8
    if stateFlag5 then
      goto continueAtStep25
    end
  end
  stateFlag5 = 16
  ::continueAtStep25::
  stateFlag5 = stateFlag5 - cmgOperation2
  text8 = text8(dataCollection, stateFlag5)
  dataCollection = CMG
  dataCollection = dataCollection.loadAnimDict
  stateFlag5 = "mini@cpr@char_b@cpr_def"
  -- Beginner: Load a GTA animation dictionary before using it.
  dataCollection(stateFlag5)
  dataCollection = CMG
  dataCollection = dataCollection.loadAnimDict
  stateFlag5 = "mini@cpr@char_b@cpr_str"
  dataCollection(stateFlag5)
  dataCollection = FreezeEntityPosition
  stateFlag5 = coords
  text9 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  dataCollection(stateFlag5, text9)

  -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
  function dataCollection()
    local workingValue, workingValue8
    workingValue = cmgOperation.cancelled
    return workingValue
  end
  stateFlag5 = localValue1.isMedicTrained
  if stateFlag5 then
    stateFlag5 = text3
    text9 = {}
    text9.ped = coords
    text10 = localValue1.sceneX
    text9.x = text10
    text10 = localValue1.sceneY
    text9.y = text10
    text10 = localValue1.sceneZ
    text9.z = text10
    text10 = localValue1.sceneHeading
    text9.heading = text10
    text9.animDict = "mini@cpr@char_b@cpr_def"
    text9.anim = "cpr_intro"
    text9.chainPhase = 0.98
    text9.holdLastFrame = true
    stateFlag5(text9)
    stateFlag5 = dataCollection
    stateFlag5 = stateFlag5()
    if stateFlag5 then
      return
    end
    stateFlag5 = 1
    text9 = text8
    text10 = 1
    for mathHelper = stateFlag5, text9, text10 do
      text = text3
      number2 = {}
      number2.ped = coords
      number3 = localValue1.sceneX
      number2.x = number3
      number3 = localValue1.sceneY
      number2.y = number3
      number3 = localValue1.sceneZ
      number2.z = number3
      number3 = localValue1.sceneHeading
      number2.heading = number3
      number2.animDict = "mini@cpr@char_b@cpr_str"
      number2.anim = "cpr_pumpchest"
      number2.chainPhase = 0.9
      number2.holdLastFrame = true
      text(number2)
      text = dataCollection
      text = text()
      if text then
        return
      end
    end
    stateFlag5 = text3
    text9 = {}
    text9.ped = coords
    text10 = localValue1.sceneX
    text9.x = text10
    text10 = localValue1.sceneY
    text9.y = text10
    text10 = localValue1.sceneZ
    text9.z = text10
    text10 = localValue1.sceneHeading
    text9.heading = text10
    text9.animDict = "mini@cpr@char_b@cpr_str"
    text9.anim = "cpr_cpr_to_kol"
    text9.chainPhase = 0.98
    text9.holdLastFrame = true
    stateFlag5(text9)
    stateFlag5 = dataCollection
    stateFlag5 = stateFlag5()
    if stateFlag5 then
      return
    end
    stateFlag5 = text3
    text9 = {}
    text9.ped = coords
    text10 = localValue1.sceneX
    text9.x = text10
    text10 = localValue1.sceneY
    text9.y = text10
    text10 = localValue1.sceneZ
    text9.z = text10
    text10 = localValue1.sceneHeading
    text9.heading = text10
    text9.animDict = "mini@cpr@char_b@cpr_str"
    text9.anim = "cpr_kol"
    text9.chainPhase = 0.95
    text9.holdLastFrame = true
    stateFlag5(text9)
    stateFlag5 = dataCollection
    stateFlag5 = stateFlag5()
    if stateFlag5 then
      return
    end
    stateFlag5 = text3
    text9 = {}
    text9.ped = coords
    text10 = localValue1.sceneX
    text9.x = text10
    text10 = localValue1.sceneY
    text9.y = text10
    text10 = localValue1.sceneZ
    text9.z = text10
    text10 = localValue1.sceneHeading
    text9.heading = text10
    text9.animDict = "mini@cpr@char_b@cpr_str"
    text9.anim = "cpr_kol_to_cpr"
    text9.chainPhase = 0.98
    text9.holdLastFrame = true
    stateFlag5(text9)
    stateFlag5 = dataCollection
    stateFlag5 = stateFlag5()
    if stateFlag5 then
      return
    end
    stateFlag5 = 1
    text9 = text8
    text10 = 1
    for mathHelper = stateFlag5, text9, text10 do
      text = text3
      number2 = {}
      number2.ped = coords
      number3 = localValue1.sceneX
      number2.x = number3
      number3 = localValue1.sceneY
      number2.y = number3
      number3 = localValue1.sceneZ
      number2.z = number3
      number3 = localValue1.sceneHeading
      number2.heading = number3
      number2.animDict = "mini@cpr@char_b@cpr_str"
      number2.anim = "cpr_pumpchest"
      number2.chainPhase = 0.9
      number2.holdLastFrame = true
      text(number2)
      text = dataCollection
      text = text()
      if text then
        return
      end
    end
  else
    stateFlag5 = 1
    text9 = text8
    text10 = 1
    for mathHelper = stateFlag5, text9, text10 do
      text = text3
      number2 = {}
      number2.ped = coords
      number3 = localValue1.sceneX
      number2.x = number3
      number3 = localValue1.sceneY
      number2.y = number3
      number3 = localValue1.sceneZ
      number2.z = number3
      number3 = localValue1.sceneHeading
      number2.heading = number3
      number2.animDict = "mini@cpr@char_b@cpr_str"
      number2.anim = "cpr_pumpchest"
      number2.chainPhase = 0.9
      number2.holdLastFrame = true
      text(number2)
    end
  end
  if "success" == localValue2 then
    stateFlag5 = text3
    text9 = {}
    text9.ped = coords
    text10 = localValue1.sceneX
    text9.x = text10
    text10 = localValue1.sceneY
    text9.y = text10
    text10 = localValue1.sceneZ
    text9.z = text10
    text10 = localValue1.sceneHeading
    text9.heading = text10
    text9.animDict = "mini@cpr@char_b@cpr_str"
    text9.anim = "cpr_success"
    text9.holdLastFrame = false
    text9.endEarlyMs = 13500
    text9.speed = 1.5
    stateFlag5(text9)
    stateFlag5 = dataCollection
    stateFlag5 = stateFlag5()
    if stateFlag5 then
      return
    end
  elseif "fail" == localValue2 then
    stateFlag5 = text3
    text9 = {}
    text9.ped = coords
    text10 = localValue1.sceneX
    text9.x = text10
    text10 = localValue1.sceneY
    text9.y = text10
    text10 = localValue1.sceneZ
    text9.z = text10
    text10 = localValue1.sceneHeading
    text9.heading = text10
    text9.animDict = "mini@cpr@char_b@cpr_str"
    text9.anim = "cpr_fail"
    text9.holdLastFrame = false
    text9.endEarlyMs = 21000
    text9.speed = 1.5
    stateFlag5(text9)
    stateFlag5 = dataCollection
    stateFlag5 = stateFlag5()
    if stateFlag5 then
      return
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, coords, cmgOperation2, text8, dataCollection
  localValue2 = cmgOperation.running
  if localValue2 then
    return
  end
  cmgOperation.running = true
  cmgOperation.cancelled = false
  cmgOperation.isMedic = true
  localValue2 = tCMG
  localValue2 = localValue2.setCanAnim
  coords = false
  localValue2(coords)
  localValue2 = text2
  coords = localValue1
  localValue2(coords)
  localValue2 = workingValue4
  coords = localValue1
  cmgOperation2 = localValue1.ending
  localValue2(coords, cmgOperation2)
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  coords = ClearPedTasksImmediately
  cmgOperation2 = localValue2
  coords(cmgOperation2)
  coords = FreezeEntityPosition
  cmgOperation2 = localValue2
  text8 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  coords(cmgOperation2, text8)
  coords = tCMG
  coords = coords.setCanAnim
  cmgOperation2 = true
  coords(cmgOperation2)
  cmgOperation.running = false
  cmgOperation.isMedic = false
  coords = cmgOperation.cancelled
  if coords then
    coords = TriggerServerEvent
    cmgOperation2 = "8fb0826fdf"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8fb0826fdf".
    coords(cmgOperation2)
  else
    coords = localValue1.targetServerId
    if nil ~= coords then
      coords = TriggerServerEvent
      cmgOperation2 = "d25660a87c"
      text8 = localValue1.targetServerId
      dataCollection = localValue1.ending
      coords(cmgOperation2, text8, dataCollection)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1) ===
function workingValue7(localValue1)
  local localValue2, coords, cmgOperation2, text8, dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4, stateFlag, stateFlag2
  localValue2 = cmgOperation.running
  if localValue2 then
    return
  end
  localValue2 = TriggerEvent
  coords = "505e07e36a"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "505e07e36a".
  localValue2(coords)
  cmgOperation.running = true
  cmgOperation.cancelled = false
  localValue2 = tCMG
  localValue2 = localValue2.setCanAnim
  coords = false
  localValue2(coords)
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  coords = GetEntityCoords
  cmgOperation2 = localValue2
  text8 = true
  -- Beginner: result below is entityCoords.
  coords = coords(cmgOperation2, text8)
  cmgOperation2 = coords.x
  localValue1.sceneX = cmgOperation2
  cmgOperation2 = coords.y
  localValue1.sceneY = cmgOperation2
  cmgOperation2 = text2
  text8 = localValue1
  cmgOperation2(text8)
  cmgOperation2 = IsEntityDead
  text8 = localValue2
  cmgOperation2 = cmgOperation2(text8)
  if not cmgOperation2 then
    cmgOperation2 = GetEntityHealth
    text8 = localValue2
    -- Beginner: result below is health.
    cmgOperation2 = cmgOperation2(text8)
    if not (cmgOperation2 <= 100) then
      goto continueAtStep44
    end
  end
  cmgOperation2 = SetEntityHealth
  text8 = localValue2
  dataCollection = 102
  cmgOperation2(text8, dataCollection)
  cmgOperation2 = ClearPedTasksImmediately
  text8 = localValue2
  cmgOperation2(text8)
  ::continueAtStep44::
  cmgOperation2 = workingValue5
  text8 = localValue1
  dataCollection = localValue1.ending
  cmgOperation2(text8, dataCollection)
  cmgOperation2 = tCMG
  cmgOperation2 = cmgOperation2.isInComa
  cmgOperation2 = cmgOperation2()
  if cmgOperation2 then
    cmgOperation2 = GetEntityHealth
    text8 = localValue2
    -- Beginner: result below is health.
    cmgOperation2 = cmgOperation2(text8)
    cmgOperation2 = cmgOperation2 <= 102
  end
  if not cmgOperation2 then
    text8 = ClearPedTasksImmediately
    dataCollection = localValue2
    text8(dataCollection)
    text8 = FreezeEntityPosition
    dataCollection = localValue2
    stateFlag5 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    text8(dataCollection, stateFlag5)
    text8 = Wait
    dataCollection = 150
    text8(dataCollection)
    text8 = tCMG
    text8 = text8.setCanAnim
    dataCollection = true
    text8(dataCollection)
    cmgOperation.running = false
    text8 = TriggerEvent
    dataCollection = "43128b61c1"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "43128b61c1".
    text8(dataCollection)
    return
  end
  text8 = cmgOperation.cancelled
  if text8 then
    text8 = ClearPedTasksImmediately
    dataCollection = localValue2
    text8(dataCollection)
    text8 = SetEntityCollision
    dataCollection = localValue2
    stateFlag5 = true
    text9 = true
    text8(dataCollection, stateFlag5, text9)
    text8 = SetEntityVisible
    dataCollection = localValue2
    stateFlag5 = true
    text9 = true
    text8(dataCollection, stateFlag5, text9)
    text8 = SetEntityHealth
    dataCollection = localValue2
    stateFlag5 = 102
    text8(dataCollection, stateFlag5)
    text8 = SetEntityInvincible
    dataCollection = localValue2
    stateFlag5 = true
    text8(dataCollection, stateFlag5)
    text8 = FreezeEntityPosition
    dataCollection = localValue2
    stateFlag5 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    text8(dataCollection, stateFlag5)
    text8 = CMG
    text8 = text8.loadAnimDict
    dataCollection = "misslamar1dead_body"
    -- Beginner: Load a GTA animation dictionary before using it.
    text8(dataCollection)
    text8 = TaskPlayAnim
    dataCollection = localValue2
    stateFlag5 = "misslamar1dead_body"
    text9 = "dead_idle"
    text10 = 3.0
    mathHelper = 1.0
    text = -1
    number2 = 1
    number3 = 0
    number4 = false
    stateFlag = false
    stateFlag2 = false
    -- Beginner: Play an animation on a ped.
    text8(dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4, stateFlag, stateFlag2)
    text8 = RemoveAnimDict
    dataCollection = "misslamar1dead_body"
    text8(dataCollection)
    text8 = TriggerEvent
    dataCollection = "43128b61c1"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "43128b61c1".
    text8(dataCollection)
  else
    text8 = localValue1.ending
    if "success" == text8 then
      text8 = ClearPedTasksImmediately
      dataCollection = localValue2
      text8(dataCollection)
      text8 = FreezeEntityPosition
      dataCollection = localValue2
      stateFlag5 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      text8(dataCollection, stateFlag5)
    else
      text8 = SetEntityCollision
      dataCollection = localValue2
      stateFlag5 = true
      text9 = true
      text8(dataCollection, stateFlag5, text9)
      text8 = SetEntityVisible
      dataCollection = localValue2
      stateFlag5 = true
      text9 = true
      text8(dataCollection, stateFlag5, text9)
      text8 = SetEntityHealth
      dataCollection = localValue2
      stateFlag5 = 102
      text8(dataCollection, stateFlag5)
      text8 = SetEntityInvincible
      dataCollection = localValue2
      stateFlag5 = true
      text8(dataCollection, stateFlag5)
      text8 = FreezeEntityPosition
      dataCollection = localValue2
      stateFlag5 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      text8(dataCollection, stateFlag5)
      text8 = CMG
      text8 = text8.loadAnimDict
      dataCollection = "misslamar1dead_body"
      -- Beginner: Load a GTA animation dictionary before using it.
      text8(dataCollection)
      text8 = TaskPlayAnim
      dataCollection = localValue2
      stateFlag5 = "misslamar1dead_body"
      text9 = "dead_idle"
      text10 = 3.0
      mathHelper = 1.0
      text = -1
      number2 = 1
      number3 = 0
      number4 = false
      stateFlag = false
      stateFlag2 = false
      -- Beginner: Play an animation on a ped.
      text8(dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4, stateFlag, stateFlag2)
      text8 = RemoveAnimDict
      dataCollection = "misslamar1dead_body"
      text8(dataCollection)
    end
  end
  text8 = Wait
  dataCollection = 150
  text8(dataCollection)
  text8 = tCMG
  text8 = text8.setCanAnim
  dataCollection = true
  text8(dataCollection)
  cmgOperation.running = false
  text8 = localValue1.ending
  if "success" ~= text8 then
    text8 = cmgOperation.cancelled
    if not text8 then
      text8 = TriggerEvent
      dataCollection = "43128b61c1"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "43128b61c1".
      text8(dataCollection)
    end
  end
end
eventHandler = RegisterNetEvent
text5 = "2114f6e305"
-- Beginner: this function handles network event "2114f6e305".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2, coords
  localValue2 = workingValue6
  coords = localValue1
  localValue2(coords)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2114f6e305".
eventHandler(text5, eventHandler2)
eventHandler = RegisterNetEvent
text5 = "505e07e36a"
-- Beginner: this function handles network event "505e07e36a".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2, coords
  if localValue1 then
    localValue2 = workingValue7
    coords = localValue1
    localValue2(coords)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "505e07e36a".
eventHandler(text5, eventHandler2)
eventHandler = RegisterNetEvent
text5 = "a23fad560e"
-- Beginner: this function handles network event "a23fad560e".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, localValue2
  cmgOperation.cancelled = true
end
eventHandler(text5, eventHandler2)
eventHandler = RegisterNetEvent
text5 = "4935c71079"
-- Beginner: this function handles network event "4935c71079".

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, localValue2
  cmgOperation.cancelled = true
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4935c71079".
eventHandler(text5, eventHandler2)
-- Beginner: this function handles network event "4935c71079".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, coords, cmgOperation2, text8
  localValue1 = BeginTextCommandDisplayHelp
  localValue2 = "STRING"
  localValue1(localValue2)
  localValue1 = AddTextEntry
  localValue2 = "CPR_CANCEL_HELP"
  coords = "~INPUT_CELLPHONE_CANCEL~ Cancel CPR"
  localValue1(localValue2, coords)
  localValue1 = AddTextComponentSubstringTextLabel
  localValue2 = "CPR_CANCEL_HELP"
  localValue1(localValue2)
  localValue1 = EndTextCommandDisplayHelp
  localValue2 = 0
  coords = false
  cmgOperation2 = false
  text8 = 0
  localValue1(localValue2, coords, cmgOperation2, text8)
end
text5 = CMG
text5 = text5.createThreadOnTick

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, localValue2, coords
  localValue1 = cmgOperation.running
  if localValue1 then
    localValue1 = cmgOperation.isMedic
    if localValue1 then
      localValue1 = eventHandler
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      localValue1()
      localValue1 = IsControlJustPressed
      localValue2 = 0
      coords = 202
      localValue1 = localValue1(localValue2, coords)
      if not localValue1 then
        localValue1 = IsDisabledControlJustPressed
        localValue2 = 0
        coords = 177
        localValue1 = localValue1(localValue2, coords)
        if not localValue1 then
          goto continueAtStep23
        end
      end
      cmgOperation.cancelled = true
      goto continueAtStep30
      ::continueAtStep23::
      localValue1 = IsEntityDead
      localValue2 = PlayerPedId
      localValue2, coords = localValue2()
      localValue1 = localValue1(localValue2, coords)
      if localValue1 then
        cmgOperation.cancelled = true
      end
    end
  end
  ::continueAtStep30::
end
text6 = "CPR Cancel Tick"
-- Beginner: Run a helper every game frame while this script is active.
text5(eventHandler2, text6)
text5 = CMG
text5 = text5.RegisterClientCallback
eventHandler2 = "9f2bde707e"

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, coords, cmgOperation2, text8, dataCollection, stateFlag5, text9, text10
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  if 0 == localValue1 then
    localValue2 = nil
    return localValue2
  end
  localValue2 = GetEntityCoords
  coords = localValue1
  -- Beginner: result below is entityCoords.
  localValue2 = localValue2(coords)
  coords = GetEntityHeading
  cmgOperation2 = localValue1
  -- Beginner: result below is heading.
  coords = coords(cmgOperation2)
  cmgOperation2 = GetGroundZFor_3dCoord
  text8 = localValue2.x
  dataCollection = localValue2.y
  stateFlag5 = localValue2.z
  stateFlag5 = stateFlag5 + 2.0
  text9 = 0
  text10 = false
  cmgOperation2, text8 = cmgOperation2(text8, dataCollection, stateFlag5, text9, text10)
  if cmgOperation2 then
    dataCollection = type
    stateFlag5 = text8
    dataCollection = dataCollection(stateFlag5)
    if "number" == dataCollection then
      goto continueAtStep30
    end
  end
  text8 = localValue2.z
  ::continueAtStep30::
  dataCollection = {}
  stateFlag5 = localValue2.x
  dataCollection.x = stateFlag5
  stateFlag5 = localValue2.y
  dataCollection.y = stateFlag5
  stateFlag5 = localValue2.z
  dataCollection.z = stateFlag5
  dataCollection.heading = coords
  dataCollection.groundZ = text8
  return dataCollection
end
text5(eventHandler2, text6)
text5 = false
eventHandler2 = RegisterNetEvent
text6 = "676d7f86f9"
-- Beginner: this function handles network event "676d7f86f9".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, coords, cmgOperation2, text8, dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue1 = localValue1()
  localValue2 = text5
  if localValue2 then
    localValue2 = notify
    coords = "~r~You are using morphine currently. Please try again later."
    -- Beginner: Show a notification to the player.
    localValue2(coords)
    return
  end
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2()
  if 0 ~= localValue2 then
    localValue2 = notify
    coords = "~r~You can not do this whilst in a vehicle."
    localValue2(coords)
    return
  end
  localValue2 = -1
  coords = 0
  cmgOperation2 = 3.0
  text8 = pairs
  dataCollection = GetActivePlayers
  dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4 = dataCollection()
  text8, dataCollection, stateFlag5, text9 = text8(dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4)
  for text10, mathHelper in text8, dataCollection, stateFlag5, text9 do
    text = GetPlayerPed
    number2 = mathHelper
    -- Beginner: result below is playerPed.
    text = text(number2)
    if 0 ~= text then
      number2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      number2 = number2()
      if text ~= number2 then
        number2 = GetEntityCoords
        number3 = text
        number4 = true
        -- Beginner: result below is entityCoords.
        number2 = number2(number3, number4)
        number2 = number2 - localValue1
        number2 = #number2
        if cmgOperation2 > number2 then
          localValue2 = mathHelper
          coords = text
          cmgOperation2 = number2
        end
      end
    end
  end
  if -1 == localValue2 then
    text8 = notify
    dataCollection = "~r~No nearby player found."
    -- Beginner: Show a notification to the player.
    text8(dataCollection)
    return
  end
  text8 = GetEntityHealth
  dataCollection = coords
  -- Beginner: result below is health.
  text8 = text8(dataCollection)
  if text8 <= 102 then
    dataCollection = notify
    stateFlag5 = "~r~This player is dead and can not have morphine injected."
    dataCollection(stateFlag5)
  else
    dataCollection = 200
    if text8 >= dataCollection then
      dataCollection = notify
      stateFlag5 = "~r~This player is healthy and does not require morphine."
      -- Beginner: Show a notification to the player.
      dataCollection(stateFlag5)
    else
      dataCollection = GetPlayerServerId
      stateFlag5 = localValue2
      -- Beginner: result below is serverId.
      dataCollection = dataCollection(stateFlag5)
      if dataCollection > 0 then
        stateFlag5 = TriggerServerEvent
        text9 = "a00a7ed7df"
        text10 = dataCollection
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a00a7ed7df".
        stateFlag5(text9, text10)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "676d7f86f9".
eventHandler2(text6, workingValue9)
eventHandler2 = RegisterNetEvent
text6 = "73be4abad8"
-- Beginner: this function handles network event "73be4abad8".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, coords, cmgOperation2, text8, dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4
  localValue2 = text5
  if localValue2 then
    return
  end
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2()
  if 0 ~= localValue2 then
    return
  end
  localValue2 = GetPlayerFromServerId
  coords = localValue1
  -- Beginner: result below is playerIndex.
  localValue2 = localValue2(coords)
  if -1 == localValue2 then
    return
  end
  coords = GetPlayerPed
  cmgOperation2 = localValue2
  -- Beginner: result below is playerPed.
  coords = coords(cmgOperation2)
  if 0 == coords then
    return
  end
  cmgOperation2 = notify
  text8 = "~g~Injecting morphine into player..."
  -- Beginner: Show a notification to the player.
  cmgOperation2(text8)
  cmgOperation2 = true
  text5 = cmgOperation2
  cmgOperation2 = tCMG
  cmgOperation2 = cmgOperation2.setCanAnim
  text8 = false
  cmgOperation2(text8)
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.loadClipSet
  text8 = "move_ped_crouched"
  cmgOperation2(text8)
  cmgOperation2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgOperation2 = cmgOperation2()
  text8 = GetEntityCoords
  dataCollection = coords
  stateFlag5 = true
  -- Beginner: result below is entityCoords.
  text8 = text8(dataCollection, stateFlag5)
  dataCollection = GetEntityForwardVector
  stateFlag5 = coords
  dataCollection = dataCollection(stateFlag5)
  dataCollection = dataCollection * 0.75
  text8 = text8 + dataCollection
  dataCollection = vector3
  stateFlag5 = 0.0
  text9 = 0.0
  text10 = -0.5
  dataCollection = dataCollection(stateFlag5, text9, text10)
  text8 = text8 + dataCollection
  dataCollection = SetEntityCoords
  stateFlag5 = cmgOperation2
  text9 = text8.x
  text10 = text8.y
  mathHelper = text8.z
  text = true
  number2 = false
  number3 = false
  number4 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  dataCollection(stateFlag5, text9, text10, mathHelper, text, number2, number3, number4)
  dataCollection = SetEntityHeading
  stateFlag5 = cmgOperation2
  text9 = GetEntityHeading
  text10 = coords
  -- Beginner: result below is heading.
  text9 = text9(text10)
  text9 = text9 + 180.0
  -- Beginner: Change the direction an entity is facing.
  dataCollection(stateFlag5, text9)
  dataCollection = true
  stateFlag5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  stateFlag5 = stateFlag5()
  while true do
    text9 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    text9 = text9()
    text9 = text9 - stateFlag5
    text10 = 5000
    if not (text9 < text10) then
      break
    end
    text9 = GetEntityHealth
    text10 = cmgOperation2
    -- Beginner: result below is health.
    text9 = text9(text10)
    if not (text9 < 102) then
      text9 = IsEntityDead
      text10 = cmgOperation2
      text9 = text9(text10)
      if not text9 then
        goto continueAtStep96
      end
    end
    dataCollection = false
    do break end
    ::continueAtStep96::
    text9 = SetPedMovementClipset
    text10 = cmgOperation2
    mathHelper = "move_ped_crouched"
    text = 0.6
    text9(text10, mathHelper, text)
    text9 = SetPedStrafeClipset
    text10 = cmgOperation2
    mathHelper = "move_ped_crouched_strafing"
    text9(text10, mathHelper)
    text9 = Citizen
    text9 = text9.Wait
    text10 = 5000
    text9(text10)
  end
  if dataCollection then
    text9 = ResetPedStrafeClipset
    text10 = cmgOperation2
    text9(text10)
    text9 = ResetPedMovementClipset
    text10 = cmgOperation2
    mathHelper = 0.5
    text9(text10, mathHelper)
  end
  text9 = RemoveAnimSet
  text10 = "move_ped_crouched"
  text9(text10)
  text9 = tCMG
  text9 = text9.setCanAnim
  text10 = true
  text9(text10)
  text9 = false
  text5 = text9
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "73be4abad8".
eventHandler2(text6, workingValue9)
eventHandler2 = RegisterNetEvent
text6 = "da84b34be7"
-- Beginner: this function handles network event "da84b34be7".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, coords, cmgOperation2, text8, dataCollection, stateFlag5, text9, text10, mathHelper, text, number2, number3, number4, stateFlag, stateFlag2, heading, number5, number6, number7, number8, number9, stateFlag3, stateFlag4
  localValue2 = text5
  if localValue2 then
    return
  end
  localValue2 = CMG
  localValue2 = localValue2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue2 = localValue2()
  if 0 ~= localValue2 then
    return
  end
  localValue2 = GetPlayerFromServerId
  coords = localValue1
  -- Beginner: result below is playerIndex.
  localValue2 = localValue2(coords)
  if -1 == localValue2 then
    return
  end
  coords = GetPlayerPed
  cmgOperation2 = localValue2
  -- Beginner: result below is playerPed.
  coords = coords(cmgOperation2)
  if 0 == coords then
    return
  end
  cmgOperation2 = notify
  text8 = "~g~Waiting for morphine to be injected..."
  -- Beginner: Show a notification to the player.
  cmgOperation2(text8)
  cmgOperation2 = true
  text5 = cmgOperation2
  cmgOperation2 = tCMG
  cmgOperation2 = cmgOperation2.setCanAnim
  text8 = false
  cmgOperation2(text8)
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.loadAnimDict
  text8 = "timetable@tracy@ig_14@"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgOperation2(text8)
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  cmgOperation2 = cmgOperation2()
  text8 = vector3
  dataCollection = 0.0
  stateFlag5 = 0.0
  text9 = -0.2
  text8 = text8(dataCollection, stateFlag5, text9)
  cmgOperation2 = cmgOperation2 + text8
  text8 = true
  dataCollection = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  dataCollection = dataCollection()
  stateFlag5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  stateFlag5 = stateFlag5()
  while true do
    text9 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    text9 = text9()
    text9 = text9 - stateFlag5
    text10 = 5000
    if not (text9 < text10) then
      break
    end
    text9 = GetEntityHealth
    text10 = dataCollection
    -- Beginner: result below is health.
    text9 = text9(text10)
    if not (text9 < 102) then
      text9 = IsEntityDead
      text10 = dataCollection
      text9 = text9(text10)
      if not text9 then
        goto continueAtStep70
      end
    end
    text8 = false
    do break end
    ::continueAtStep70::
    text9 = IsEntityPlayingAnim
    text10 = dataCollection
    mathHelper = "timetable@tracy@ig_14@"
    text = "ig_14_base_tracy"
    number2 = 3
    text9 = text9(text10, mathHelper, text, number2)
    if not text9 then
      text9 = FreezeEntityPosition
      text10 = dataCollection
      mathHelper = true
      -- Beginner: Freeze or unfreeze an entity in place.
      text9(text10, mathHelper)
      text9 = TaskPlayAnimAdvanced
      text10 = dataCollection
      mathHelper = "timetable@tracy@ig_14@"
      text = "ig_14_base_tracy"
      number2 = cmgOperation2.x
      number3 = cmgOperation2.y
      number4 = cmgOperation2.z
      stateFlag = 0.0
      stateFlag2 = 0.0
      heading = GetEntityHeading
      number5 = dataCollection
      -- Beginner: result below is heading.
      heading = heading(number5)
      number5 = 8.0
      number6 = 8.0
      number7 = -1
      number8 = 1
      number9 = 1.0
      stateFlag3 = false
      stateFlag4 = false
      text9(text10, mathHelper, text, number2, number3, number4, stateFlag, stateFlag2, heading, number5, number6, number7, number8, number9, stateFlag3, stateFlag4)
    end
    text9 = Citizen
    text9 = text9.Wait
    text10 = 0
    text9(text10)
  end
  text9 = FreezeEntityPosition
  text10 = dataCollection
  mathHelper = false
  -- Beginner: Freeze or unfreeze an entity in place.
  text9(text10, mathHelper)
  if text8 then
    text9 = StopAnimTask
    text10 = dataCollection
    mathHelper = "timetable@tracy@ig_14@"
    text = "ig_14_base_tracy"
    number2 = 1.0
    text9(text10, mathHelper, text, number2)
    text9 = GetEntityHealth
    text10 = dataCollection
    -- Beginner: result below is health.
    text9 = text9(text10)
    if text9 > 102 then
      text10 = 200
      if text9 < text10 then
        text10 = SetEntityHealth
        mathHelper = dataCollection
        text = 200
        text10(mathHelper, text)
        text10 = notify
        mathHelper = "~g~Morphine applied free of charge by the NHS!"
        -- Beginner: Show a notification to the player.
        text10(mathHelper)
        text10 = TriggerEvent
        mathHelper = "TriggerTazer"
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "TriggerTazer".
        text10(mathHelper)
    end
    else
      text10 = notify
      mathHelper = "~r~The morphine had no affect on you."
      -- Beginner: Show a notification to the player.
      text10(mathHelper)
    end
  end
  text9 = RemoveAnimDict
  text10 = "timetable@tracy@ig_14@"
  text9(text10)
  text9 = tCMG
  text9 = text9.setCanAnim
  text10 = true
  text9(text10)
  text9 = false
  text5 = text9
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "da84b34be7".
eventHandler2(text6, workingValue9)
eventHandler2 = RegisterNetEvent
text6 = "cefef09c49"
-- Beginner: this function handles network event "cefef09c49".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2
  if 0 == localValue1 then
    localValue2 = 0
    localEventCall = localValue2
  else
    localValue2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue2 = localValue2()
    localValue2 = localValue2 + localValue1
    localEventCall = localValue2
  end
end
eventHandler2(text6, workingValue9)
eventHandler2 = RegisterNetEvent
text6 = "3ea9b56577"
-- Beginner: this function handles network event "3ea9b56577".

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2
  if 0 == localValue1 then
    localValue2 = 0
    text4 = localValue2
  else
    localValue2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue2 = localValue2()
    localValue2 = localValue2 + localValue1
    text4 = localValue2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3ea9b56577".
eventHandler2(text6, workingValue9)
