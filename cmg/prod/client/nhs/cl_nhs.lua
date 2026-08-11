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
local localEventCall, textValue4, eventRegistration3, rageUiCall, textValue7, cmgCall3, rageUiCall2, rageUiCall3, numberValue10, textValue11, numberValue, workValue2, workValue3, cmgCall, textValue2, textValue3, workValue4, workValue5, workValue6, workValue7, eventRegistration, textValue5, eventRegistration2, textValue6, workValue9
localEventCall = RMenu
localEventCall = localEventCall.Add
textValue4 = "nhs"
eventRegistration3 = "main"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue7 = "NHS"
cmgCall3 = "Status: ~b~Available"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3, numberValue10, textValue11, numberValue, workValue2, workValue3, cmgCall, textValue2, textValue3, workValue4, workValue5, workValue6, workValue7, eventRegistration, textValue5, eventRegistration2, textValue6, workValue9 = rageUiCall3()
rageUiCall, textValue7, cmgCall3, rageUiCall2, rageUiCall3, numberValue10, textValue11, numberValue, workValue2, workValue3, cmgCall, textValue2, textValue3, workValue4, workValue5, workValue6, workValue7, eventRegistration, textValue5, eventRegistration2, textValue6, workValue9 = rageUiCall(textValue7, cmgCall3, rageUiCall2, rageUiCall3, numberValue10, textValue11, numberValue, workValue2, workValue3, cmgCall, textValue2, textValue3, workValue4, workValue5, workValue6, workValue7, eventRegistration, textValue5, eventRegistration2, textValue6, workValue9)
localEventCall(textValue4, eventRegistration3, rageUiCall, textValue7, cmgCall3, rageUiCall2, rageUiCall3, numberValue10, textValue11, numberValue, workValue2, workValue3, cmgCall, textValue2, textValue3, workValue4, workValue5, workValue6, workValue7, eventRegistration, textValue5, eventRegistration2, textValue6, workValue9)
localEventCall = RegisterKeyMapping
textValue4 = "nhs"
eventRegistration3 = "NHS Menu"
rageUiCall = "keyboard"
textValue7 = "U"
-- Beginner: Bind a command to a keyboard/controller key.
localEventCall(textValue4, eventRegistration3, rageUiCall, textValue7)
localEventCall = TriggerEvent
textValue4 = "chat:addSuggestion"
eventRegistration3 = "/nhs"
rageUiCall = "Toggle the NHS Menu"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
localEventCall(textValue4, eventRegistration3, rageUiCall)
localEventCall = 0
textValue4 = 0
eventRegistration3 = RegisterNetEvent
rageUiCall = "ae21bf16d8"
-- Beginner: this function handles network event "ae21bf16d8".

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1, arg2) ===
function textValue7(arg1, arg2)
  local coords, cmgCall2, textValue8, dataTable
  coords = GetEntityCoords
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.getPlayerPed
  cmgCall2, textValue8, dataTable = cmgCall2()
  -- Beginner: result below is entityCoords.
  coords = coords(cmgCall2, textValue8, dataTable)
  cmgCall2 = coords - arg1
  cmgCall2 = #cmgCall2
  if cmgCall2 <= 15 then
    textValue8 = SendNUIMessage
    dataTable = {}
    dataTable.transactionType = arg2
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    textValue8(dataTable)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ae21bf16d8".
eventRegistration3(rageUiCall, textValue7)
eventRegistration3 = RegisterCommand
rageUiCall = "nhs"
-- Beginner: this function is the command handler for "nhs".

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, coords, cmgCall2, textValue8, dataTable, flag5
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "nhs.onduty.permission"
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.hasClientPermission
    arg2 = "lfb.onduty.permission"
    arg1 = arg1(arg2)
    if not arg1 then
      goto flow_label_40
    end
  end
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  coords = arg2
  arg2 = arg2.Get
  cmgCall2 = "nhs"
  textValue8 = "main"
  arg2, coords, cmgCall2, textValue8, dataTable, flag5 = arg2(coords, cmgCall2, textValue8)
  -- Beginner: result below is menuVisible.
  arg1 = arg1(arg2, coords, cmgCall2, textValue8, dataTable, flag5)
  if not arg1 then
    arg1 = RageUI
    arg1 = arg1.Visible
    arg2 = RMenu
    coords = arg2
    arg2 = arg2.Get
    cmgCall2 = "nhs"
    textValue8 = "main"
    -- Beginner: result below is menu.
    arg2 = arg2(coords, cmgCall2, textValue8)
    coords = RageUI
    coords = coords.Visible
    cmgCall2 = RMenu
    textValue8 = cmgCall2
    cmgCall2 = cmgCall2.Get
    dataTable = "nhs"
    flag5 = "main"
    cmgCall2, textValue8, dataTable, flag5 = cmgCall2(textValue8, dataTable, flag5)
    -- Beginner: result below is menuVisible.
    coords = coords(cmgCall2, textValue8, dataTable, flag5)
    coords = not coords
    arg1(arg2, coords)
  end
  ::flow_label_40::
end
cmgCall3 = false
-- Beginner: Register a chat/console command. Event/command: "nhs".
eventRegistration3(rageUiCall, textValue7, cmgCall3)
eventRegistration3 = {}
rageUiCall = 126349499
eventRegistration3[rageUiCall] = true
rageUiCall = -1554970529
eventRegistration3[rageUiCall] = true
rageUiCall = -243142012
eventRegistration3[rageUiCall] = true
rageUiCall = 883325847
eventRegistration3[rageUiCall] = true
rageUiCall = 101631238
eventRegistration3[rageUiCall] = true
rageUiCall = -72657034
eventRegistration3[rageUiCall] = true
rageUiCall = 1953687840
eventRegistration3[rageUiCall] = true
rageUiCall = 898258641
eventRegistration3[rageUiCall] = true
rageUiCall = false

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, coords, cmgCall2, textValue8, dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "nhs.onduty.permission"
  arg1 = arg1(arg2)
  arg2 = CMG
  arg2 = arg2.isDevMode
  arg2 = arg2()
  if not arg2 then
    if not arg1 then
      arg2 = CMG
      arg2 = arg2.hasClientPermission
      coords = "lfb.onduty.permission"
      arg2 = arg2(coords)
      if not arg2 then
        arg2 = CMG
        arg2 = arg2.hasClientPermission
        coords = "aa.onduty.permission"
        arg2 = arg2(coords)
        if not arg2 then
          arg2 = CMG
          arg2 = arg2.isWorkingInBusiness
          arg2 = arg2()
          if not arg2 then
            goto flow_label_72
          end
        end
      end
    end
    arg2 = rageUiCall
    if arg2 then
      arg2 = DrawAdvancedText
      coords = 0.971
      cmgCall2 = 0.914
      textValue8 = 0.005
      dataTable = 0.0028
      flag5 = 0.6
      textValue9 = "You are off duty"
      textValue10 = 255
      mathHelper = 51
      textValue = 51
      numberValue2 = 255
      numberValue3 = 2
      numberValue4 = 0
      arg2(coords, cmgCall2, textValue8, dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4)
    end
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    coords = GetSelectedPedWeapon
    cmgCall2 = arg2
    -- Beginner: result below is weaponHash.
    coords = coords(cmgCall2)
    if -1569615261 ~= coords then
      cmgCall2 = eventRegistration3
      cmgCall2 = cmgCall2[coords]
      if not cmgCall2 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.hasClientPermission
        textValue8 = "aa.onduty.permission"
        cmgCall2 = cmgCall2(textValue8)
        if cmgCall2 then
          cmgCall2 = notify
          textValue8 = "~r~You can not equip a weapon whilst on the Mechanic Job"
          -- Beginner: Show a notification to the player.
          cmgCall2(textValue8)
        end
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.setWeapon
        textValue8 = arg2
        dataTable = -1569615261
        flag5 = true
        cmgCall2(textValue8, dataTable, flag5)
      end
    end
  end
  ::flow_label_72::
  if arg1 then
    arg2 = localEventCall
    if arg2 > 0 then
      arg2 = localEventCall
      coords = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      coords = coords()
      arg2 = arg2 - coords
      if arg2 > 0 then
        coords = DrawAdvancedText
        cmgCall2 = 0.985
        textValue8 = 0.805
        dataTable = 0.005
        flag5 = 0.0028
        textValue9 = 0.467
        textValue10 = "REVIVE COOLDOWN: "
        mathHelper = math
        mathHelper = mathHelper.floor
        textValue = arg2 / 1000
        mathHelper = mathHelper(textValue)
        textValue = " seconds"
        textValue10 = textValue10 .. mathHelper .. textValue
        mathHelper = 51
        textValue = 255
        numberValue2 = 51
        numberValue3 = 255
        numberValue4 = 7
        flag = 0
        coords(cmgCall2, textValue8, dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag)
      else
        coords = 0
        localEventCall = coords
      end
    end
    arg2 = textValue4
    if arg2 > 0 then
      arg2 = textValue4
      coords = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      coords = coords()
      arg2 = arg2 - coords
      if arg2 > 0 then
        coords = DrawAdvancedText
        cmgCall2 = 0.985
        textValue8 = 0.845
        dataTable = 0.005
        flag5 = 0.0028
        textValue9 = 0.467
        textValue10 = "BODYBAG COOLDOWN: "
        mathHelper = math
        mathHelper = mathHelper.floor
        textValue = arg2 / 1000
        mathHelper = mathHelper(textValue)
        textValue = " seconds"
        textValue10 = textValue10 .. mathHelper .. textValue
        mathHelper = 51
        textValue = 255
        numberValue2 = 51
        numberValue3 = 255
        numberValue4 = 7
        flag = 0
        coords(cmgCall2, textValue8, dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag)
      else
        coords = 0
        textValue4 = coords
      end
    end
  end
end
cmgCall3 = CMG
cmgCall3 = cmgCall3.createThreadOnTick
rageUiCall2 = textValue7
rageUiCall3 = "NHS Weapon Whitelisting"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall3(rageUiCall2, rageUiCall3)
cmgCall3 = CMG
cmgCall3 = cmgCall3.loadModule
rageUiCall2 = "cfg/cfg_garages"
-- Beginner: result below is config.
cmgCall3 = cmgCall3(rageUiCall2)
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.loadModule
rageUiCall3 = "cfg/cfg_stretcher"
-- Beginner: result below is config.
rageUiCall2 = rageUiCall2(rageUiCall3)
if not rageUiCall2 then
  rageUiCall2 = {}
end

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: arg1) ===
function rageUiCall3(arg1)
  local arg2, coords, cmgCall2
  if 0 ~= arg1 then
    arg2 = IsEntityAVehicle
    coords = arg1
    arg2 = arg2(coords)
    if arg2 then
      goto flow_label_10
    end
  end
  arg2 = false
  return arg2
  ::flow_label_10::
  arg2 = GetEntityModel
  coords = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(coords)
  if -956048545 == arg2 then
    coords = true
    return coords
  end
  coords = rageUiCall2.stretcherModels
  if coords then
    coords = rageUiCall2.stretcherModels
    coords = coords[arg2]
    if coords then
      coords = true
      return coords
    end
  end
  coords = CMG
  coords = coords.getVehicleIdFromModel
  cmgCall2 = arg2
  coords = coords(cmgCall2)
  if coords then
    cmgCall2 = cmgCall3.garages
    if cmgCall2 then
      cmgCall2 = cmgCall3.garages
      cmgCall2 = cmgCall2["Health Service Vehicles"]
      if cmgCall2 then
        cmgCall2 = cmgCall3.garages
        cmgCall2 = cmgCall2["Health Service Vehicles"]
        cmgCall2 = cmgCall2[coords]
        if cmgCall2 then
          cmgCall2 = true
          return cmgCall2
        end
      end
      cmgCall2 = cmgCall3.garages
      cmgCall2 = cmgCall2["Health Service Helicopters"]
      if cmgCall2 then
        cmgCall2 = cmgCall3.garages
        cmgCall2 = cmgCall2["Health Service Helicopters"]
        cmgCall2 = cmgCall2[coords]
        if cmgCall2 then
          cmgCall2 = true
          return cmgCall2
        end
      end
    end
  end
  cmgCall2 = false
  return cmgCall2
end
numberValue10 = 0
textValue11 = "~r~You can only use HS vehicles whilst clocked on."
numberValue = 0

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1) ===
function workValue2(arg1)
  local arg2, coords, cmgCall2, textValue8
  if 0 ~= arg1 then
    arg2 = DoesEntityExist
    coords = arg1
    arg2 = arg2(coords)
    if arg2 then
      goto flow_label_9
    end
  end
  return
  ::flow_label_9::
  arg2 = NetworkRequestControlOfEntity
  coords = arg1
  arg2(coords)
  arg2 = NetworkHasControlOfEntity
  coords = arg1
  arg2 = arg2(coords)
  if arg2 then
    arg2 = SetEntityAsMissionEntity
    coords = arg1
    cmgCall2 = true
    textValue8 = true
    arg2(coords, cmgCall2, textValue8)
    arg2 = DeleteEntity
    coords = arg1
    -- Beginner: Delete a GTA entity.
    arg2(coords)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
function workValue3()
  local arg1, arg2, coords, cmgCall2, textValue8, dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag, flag2
  arg1 = numberValue
  if 0 ~= arg1 then
    arg1 = numberValue
    arg2 = DoesEntityExist
    coords = arg1
    arg2 = arg2(coords)
    if not arg2 then
      arg2 = 0
      numberValue = arg2
    else
      arg2 = workValue2
      coords = arg1
      arg2(coords)
      arg2 = DoesEntityExist
      coords = arg1
      arg2 = arg2(coords)
      if not arg2 then
        arg2 = 0
        numberValue = arg2
      end
    end
  end
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "nhs.onduty.permission"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = CMG
    arg1 = arg1.hasClientPermission
    arg2 = "doctor.permission"
    arg1 = arg1(arg2)
    if not arg1 then
      goto flow_label_36
    end
  end
  return
  ::flow_label_36::
  arg1 = CMG
  arg1 = arg1.isJobTutorialRunning
  arg1 = arg1()
  if arg1 then
    return
  end
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetVehiclePedIsEntering
  coords = arg1
  arg2 = arg2(coords)
  if 0 ~= arg2 then
    coords = rageUiCall3
    cmgCall2 = arg2
    coords = coords(cmgCall2)
    if not coords then
      coords = ClearPedTasks
      cmgCall2 = arg1
      coords(cmgCall2)
      coords = notify
      cmgCall2 = textValue11
      -- Beginner: Show a notification to the player.
      coords(cmgCall2)
    end
  end
  coords = GetVehiclePedIsIn
  cmgCall2 = arg1
  textValue8 = false
  -- Beginner: result below is currentVehicle.
  coords = coords(cmgCall2, textValue8)
  if 0 ~= coords then
    cmgCall2 = rageUiCall3
    textValue8 = coords
    cmgCall2 = cmgCall2(textValue8)
    if not cmgCall2 then
      cmgCall2 = GetPedInVehicleSeat
      textValue8 = coords
      dataTable = -1
      cmgCall2 = cmgCall2(textValue8, dataTable)
      cmgCall2 = cmgCall2 == arg1
      textValue8 = GetOffsetFromEntityInWorldCoords
      dataTable = coords
      flag5 = 1.8
      textValue9 = 0.0
      textValue10 = 0.3
      textValue8 = textValue8(dataTable, flag5, textValue9, textValue10)
      dataTable = GetGroundZFor_3dCoord
      flag5 = textValue8.x
      textValue9 = textValue8.y
      textValue10 = textValue8.z
      textValue10 = textValue10 + 1.0
      mathHelper = 0
      textValue = false
      dataTable, flag5 = dataTable(flag5, textValue9, textValue10, mathHelper, textValue)
      if dataTable and flag5 > 0.0 then
        textValue9 = flag5 + 0.5
        if textValue9 then
          goto flow_label_105
        end
      end
      textValue9 = textValue8.z
      textValue9 = textValue9 + 0.5
      ::flow_label_105::
      textValue10 = SetEntityCoordsNoOffset
      mathHelper = arg1
      textValue = textValue8.x
      numberValue2 = textValue8.y
      numberValue3 = textValue9
      numberValue4 = false
      flag = false
      flag2 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      textValue10(mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag, flag2)
      textValue10 = ClearPedTasksImmediately
      mathHelper = arg1
      textValue10(mathHelper)
      if cmgCall2 then
        numberValue = coords
        textValue10 = workValue2
        mathHelper = coords
        textValue10(mathHelper)
        textValue10 = DoesEntityExist
        mathHelper = coords
        textValue10 = textValue10(mathHelper)
        if not textValue10 then
          textValue10 = 0
          numberValue = textValue10
        end
      end
      textValue10 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      textValue10 = textValue10()
      mathHelper = numberValue10
      if textValue10 >= mathHelper then
        mathHelper = textValue10 + 4000
        numberValue10 = mathHelper
        mathHelper = notify
        textValue = textValue11
        -- Beginner: Show a notification to the player.
        mathHelper(textValue)
      end
    end
  end
end
cmgCall = CMG
cmgCall = cmgCall.createThreadOnTick
textValue2 = workValue3
textValue3 = "NHS Vehicle Restrict"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall(textValue2, textValue3)
cmgCall = RegisterNetEvent
textValue2 = "767e50aac4"
-- Beginner: this function handles network event "767e50aac4".

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2
  rageUiCall = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "767e50aac4".
cmgCall(textValue2, textValue3)
cmgCall = {}
cmgCall.running = false
cmgCall.cancelled = false
-- Beginner: this function handles network event "767e50aac4".

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, coords, cmgCall2, textValue8, dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag, flag2
  arg2 = arg1.isMedicTrained
  if arg2 then
    arg2 = "mini@cpr@char_b@cpr_def"
    if arg2 then
      goto flow_label_8
    end
  end
  arg2 = "mini@cpr@char_b@cpr_str"
  ::flow_label_8::
  coords = arg1.isMedicTrained
  if coords then
    coords = "cpr_intro"
    if coords then
      goto flow_label_15
    end
  end
  coords = "cpr_pumpchest"
  ::flow_label_15::
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.loadAnimDict
  textValue8 = arg2
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgCall2(textValue8)
  cmgCall2 = arg1.sceneX
  textValue8 = arg1.sceneY
  dataTable = GetAnimInitialOffsetPosition
  flag5 = arg2
  textValue9 = coords
  textValue10 = cmgCall2
  mathHelper = textValue8
  textValue = arg1.sceneZ
  numberValue2 = 0.0
  numberValue3 = 0.0
  numberValue4 = arg1.sceneHeading
  flag = 2
  flag2 = 2
  dataTable = dataTable(flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag, flag2)
  flag5 = dataTable.x
  flag5 = flag5 - cmgCall2
  flag5 = cmgCall2 - flag5
  arg1.sceneX = flag5
  flag5 = dataTable.y
  flag5 = flag5 - textValue8
  flag5 = textValue8 - flag5
  arg1.sceneY = flag5
end

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2, coords, cmgCall2, textValue8, dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag, flag2
  arg2 = true
  coords = arg1.holdLastFrame
  if false == coords then
    arg2 = false
  end
  coords = arg1.speed
  if not coords then
    coords = 1.0
  end
  cmgCall2 = NetworkCreateSynchronisedScene
  textValue8 = arg1.x
  dataTable = arg1.y
  flag5 = arg1.z
  textValue9 = 0.0
  textValue10 = 0.0
  mathHelper = arg1.heading
  textValue = 2
  numberValue2 = arg2
  numberValue3 = false
  numberValue4 = 1065353216
  flag = 0
  flag2 = coords
  cmgCall2 = cmgCall2(textValue8, dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag, flag2)
  textValue8 = NetworkAddPedToSynchronisedScene
  dataTable = arg1.ped
  flag5 = cmgCall2
  textValue9 = arg1.animDict
  textValue10 = arg1.anim
  mathHelper = 8.0
  textValue = -8.0
  numberValue2 = 0
  numberValue3 = 0
  numberValue4 = 1000.0
  flag = 0
  textValue8(dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag)
  textValue8 = NetworkStartSynchronisedScene
  dataTable = cmgCall2
  textValue8(dataTable)
  textValue8 = arg1.endEarlyMs
  if textValue8 then
    textValue8 = math
    textValue8 = textValue8.floor
    dataTable = GetAnimDuration
    flag5 = arg1.animDict
    textValue9 = arg1.anim
    dataTable = dataTable(flag5, textValue9)
    dataTable = dataTable * 1000
    textValue8 = textValue8(dataTable)
    dataTable = arg1.endEarlyMs
    dataTable = textValue8 - dataTable
    if dataTable < 0 then
      dataTable = 0
    end
    flag5 = 0
    while dataTable > flag5 do
      textValue9 = cmgCall.cancelled
      if textValue9 then
        break
      end
      textValue9 = math
      textValue9 = textValue9.min
      textValue10 = 100
      mathHelper = dataTable - flag5
      textValue9 = textValue9(textValue10, mathHelper)
      textValue10 = Wait
      mathHelper = textValue9
      textValue10(mathHelper)
      flag5 = flag5 + textValue9
    end
    return cmgCall2
  end
  textValue8 = arg1.chainPhase
  if not textValue8 then
    textValue8 = 0.92
  end
  dataTable = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  dataTable = dataTable()
  flag5 = math
  flag5 = flag5.floor
  textValue9 = GetAnimDuration
  textValue10 = arg1.animDict
  mathHelper = arg1.anim
  textValue9 = textValue9(textValue10, mathHelper)
  textValue9 = textValue9 * 1000
  textValue9 = textValue9 + 250
  flag5 = flag5(textValue9)
  dataTable = dataTable + flag5
  while true do
    flag5 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    flag5 = flag5()
    if not (dataTable > flag5) then
      break
    end
    flag5 = cmgCall.cancelled
    if flag5 then
      break
    end
    flag5 = NetworkGetLocalSceneFromNetworkId
    textValue9 = cmgCall2
    flag5 = flag5(textValue9)
    if -1 ~= flag5 then
      textValue9 = GetSynchronizedScenePhase
      textValue10 = flag5
      textValue9 = textValue9(textValue10)
      if textValue8 <= textValue9 then
        break
      end
    end
    textValue9 = Wait
    textValue10 = 0
    textValue9(textValue10)
  end
  return cmgCall2
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1, arg2) ===
function workValue4(arg1, arg2)
  local coords, cmgCall2, textValue8, dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag
  coords = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  coords = coords()
  cmgCall2 = math
  cmgCall2 = cmgCall2.max
  textValue8 = 0
  dataTable = math
  dataTable = dataTable.min
  flag5 = 3
  textValue9 = arg1.cprPumpReduction
  if not textValue9 then
    textValue9 = 0
  end
  dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag = dataTable(flag5, textValue9)
  cmgCall2 = cmgCall2(textValue8, dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag)
  textValue8 = math
  textValue8 = textValue8.max
  dataTable = 1
  flag5 = arg1.isMedicTrained
  if flag5 then
    flag5 = 8
    if flag5 then
      goto flow_label_25
    end
  end
  flag5 = 16
  ::flow_label_25::
  flag5 = flag5 - cmgCall2
  textValue8 = textValue8(dataTable, flag5)
  dataTable = CMG
  dataTable = dataTable.loadAnimDict
  flag5 = "mini@cpr@char_a@cpr_def"
  -- Beginner: Load a GTA animation dictionary before using it.
  dataTable(flag5)
  dataTable = CMG
  dataTable = dataTable.loadAnimDict
  flag5 = "mini@cpr@char_a@cpr_str"
  dataTable(flag5)
  dataTable = ClearPedTasksImmediately
  flag5 = coords
  dataTable(flag5)
  dataTable = FreezeEntityPosition
  flag5 = coords
  textValue9 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  dataTable(flag5, textValue9)
  dataTable = nil
  flag5 = arg1.isMedicTrained
  if flag5 then
    flag5 = CMG
    flag5 = flag5.requestEntitySpawn
    textValue9 = "cpr_medicbag"
    flag5(textValue9)
    flag5 = GetOffsetFromEntityInWorldCoords
    textValue9 = coords
    textValue10 = 0.5
    mathHelper = 0.5
    textValue = 0.0
    flag5 = flag5(textValue9, textValue10, mathHelper, textValue)
    textValue9 = CMG
    textValue9 = textValue9.loadModel
    textValue10 = -2140074399
    -- Beginner: Request/load a GTA model before spawning or applying it.
    textValue9(textValue10)
    textValue9 = CreateObject
    textValue10 = -2140074399
    mathHelper = flag5.x
    textValue = flag5.y
    numberValue2 = flag5.z
    numberValue3 = true
    numberValue4 = true
    flag = false
    -- Beginner: result below is objectEntity.
    textValue9 = textValue9(textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag)
    dataTable = textValue9
    textValue9 = PlaceObjectOnGroundProperly
    textValue10 = dataTable
    textValue9(textValue10)
    textValue9 = SetModelAsNoLongerNeeded
    textValue10 = -2140074399
    textValue9(textValue10)
  end

  -- === HELPER FUNCTION (decompiler name: flag5; parameters: none) ===
  function flag5()
    local workValue, workValue8
    workValue = cmgCall.cancelled
    if workValue then
      workValue = dataTable
      if workValue then
        workValue = DoesEntityExist
        workValue8 = dataTable
        workValue = workValue(workValue8)
        if workValue then
          workValue = DeleteEntity
          workValue8 = dataTable
          -- Beginner: Delete a GTA entity.
          workValue(workValue8)
        end
      end
      workValue = true
      return workValue
    end
    workValue = false
    return workValue
  end
  textValue9 = arg1.isMedicTrained
  if textValue9 then
    textValue9 = textValue3
    textValue10 = {}
    textValue10.ped = coords
    mathHelper = arg1.sceneX
    textValue10.x = mathHelper
    mathHelper = arg1.sceneY
    textValue10.y = mathHelper
    mathHelper = arg1.sceneZ
    textValue10.z = mathHelper
    mathHelper = arg1.sceneHeading
    textValue10.heading = mathHelper
    textValue10.animDict = "mini@cpr@char_a@cpr_def"
    textValue10.anim = "cpr_intro"
    textValue10.chainPhase = 0.98
    textValue10.holdLastFrame = true
    textValue9(textValue10)
    textValue9 = flag5
    textValue9 = textValue9()
    if textValue9 then
      return
    end
    textValue9 = 1
    textValue10 = textValue8
    mathHelper = 1
    for textValue = textValue9, textValue10, mathHelper do
      numberValue2 = textValue3
      numberValue3 = {}
      numberValue3.ped = coords
      numberValue4 = arg1.sceneX
      numberValue3.x = numberValue4
      numberValue4 = arg1.sceneY
      numberValue3.y = numberValue4
      numberValue4 = arg1.sceneZ
      numberValue3.z = numberValue4
      numberValue4 = arg1.sceneHeading
      numberValue3.heading = numberValue4
      numberValue3.animDict = "mini@cpr@char_a@cpr_str"
      numberValue3.anim = "cpr_pumpchest"
      numberValue3.chainPhase = 0.9
      numberValue3.holdLastFrame = true
      numberValue2(numberValue3)
      numberValue2 = flag5
      numberValue2 = numberValue2()
      if numberValue2 then
        return
      end
    end
    textValue9 = textValue3
    textValue10 = {}
    textValue10.ped = coords
    mathHelper = arg1.sceneX
    textValue10.x = mathHelper
    mathHelper = arg1.sceneY
    textValue10.y = mathHelper
    mathHelper = arg1.sceneZ
    textValue10.z = mathHelper
    mathHelper = arg1.sceneHeading
    textValue10.heading = mathHelper
    textValue10.animDict = "mini@cpr@char_a@cpr_str"
    textValue10.anim = "cpr_cpr_to_kol"
    textValue10.chainPhase = 0.98
    textValue10.holdLastFrame = true
    textValue9(textValue10)
    textValue9 = flag5
    textValue9 = textValue9()
    if textValue9 then
      return
    end
    textValue9 = textValue3
    textValue10 = {}
    textValue10.ped = coords
    mathHelper = arg1.sceneX
    textValue10.x = mathHelper
    mathHelper = arg1.sceneY
    textValue10.y = mathHelper
    mathHelper = arg1.sceneZ
    textValue10.z = mathHelper
    mathHelper = arg1.sceneHeading
    textValue10.heading = mathHelper
    textValue10.animDict = "mini@cpr@char_a@cpr_str"
    textValue10.anim = "cpr_kol"
    textValue10.chainPhase = 0.95
    textValue10.holdLastFrame = true
    textValue9(textValue10)
    textValue9 = flag5
    textValue9 = textValue9()
    if textValue9 then
      return
    end
    textValue9 = textValue3
    textValue10 = {}
    textValue10.ped = coords
    mathHelper = arg1.sceneX
    textValue10.x = mathHelper
    mathHelper = arg1.sceneY
    textValue10.y = mathHelper
    mathHelper = arg1.sceneZ
    textValue10.z = mathHelper
    mathHelper = arg1.sceneHeading
    textValue10.heading = mathHelper
    textValue10.animDict = "mini@cpr@char_a@cpr_str"
    textValue10.anim = "cpr_kol_to_cpr"
    textValue10.chainPhase = 0.98
    textValue10.holdLastFrame = true
    textValue9(textValue10)
    textValue9 = flag5
    textValue9 = textValue9()
    if textValue9 then
      return
    end
    textValue9 = 1
    textValue10 = textValue8
    mathHelper = 1
    for textValue = textValue9, textValue10, mathHelper do
      numberValue2 = textValue3
      numberValue3 = {}
      numberValue3.ped = coords
      numberValue4 = arg1.sceneX
      numberValue3.x = numberValue4
      numberValue4 = arg1.sceneY
      numberValue3.y = numberValue4
      numberValue4 = arg1.sceneZ
      numberValue3.z = numberValue4
      numberValue4 = arg1.sceneHeading
      numberValue3.heading = numberValue4
      numberValue3.animDict = "mini@cpr@char_a@cpr_str"
      numberValue3.anim = "cpr_pumpchest"
      numberValue3.chainPhase = 0.9
      numberValue3.holdLastFrame = true
      numberValue2(numberValue3)
      numberValue2 = flag5
      numberValue2 = numberValue2()
      if numberValue2 then
        return
      end
    end
  else
    textValue9 = 1
    textValue10 = textValue8
    mathHelper = 1
    for textValue = textValue9, textValue10, mathHelper do
      numberValue2 = textValue3
      numberValue3 = {}
      numberValue3.ped = coords
      numberValue4 = arg1.sceneX
      numberValue3.x = numberValue4
      numberValue4 = arg1.sceneY
      numberValue3.y = numberValue4
      numberValue4 = arg1.sceneZ
      numberValue3.z = numberValue4
      numberValue4 = arg1.sceneHeading
      numberValue3.heading = numberValue4
      numberValue3.animDict = "mini@cpr@char_a@cpr_str"
      numberValue3.anim = "cpr_pumpchest"
      numberValue3.chainPhase = 0.9
      numberValue3.holdLastFrame = true
      numberValue2(numberValue3)
      numberValue2 = flag5
      numberValue2 = numberValue2()
      if numberValue2 then
        return
      end
    end
  end
  textValue9 = flag5
  textValue9 = textValue9()
  if textValue9 then
    return
  end
  if "success" == arg2 then
    textValue9 = textValue3
    textValue10 = {}
    textValue10.ped = coords
    mathHelper = arg1.sceneX
    textValue10.x = mathHelper
    mathHelper = arg1.sceneY
    textValue10.y = mathHelper
    mathHelper = arg1.sceneZ
    textValue10.z = mathHelper
    mathHelper = arg1.sceneHeading
    textValue10.heading = mathHelper
    textValue10.animDict = "mini@cpr@char_a@cpr_str"
    textValue10.anim = "cpr_success"
    textValue10.holdLastFrame = false
    textValue10.endEarlyMs = 13500
    textValue10.speed = 1.5
    textValue9(textValue10)
    textValue9 = flag5
    textValue9 = textValue9()
    if textValue9 then
      return
    end
  elseif "fail" == arg2 then
    textValue9 = textValue3
    textValue10 = {}
    textValue10.ped = coords
    mathHelper = arg1.sceneX
    textValue10.x = mathHelper
    mathHelper = arg1.sceneY
    textValue10.y = mathHelper
    mathHelper = arg1.sceneZ
    textValue10.z = mathHelper
    mathHelper = arg1.sceneHeading
    textValue10.heading = mathHelper
    textValue10.animDict = "mini@cpr@char_a@cpr_str"
    textValue10.anim = "cpr_fail"
    textValue10.holdLastFrame = false
    textValue10.endEarlyMs = 21000
    textValue10.speed = 1.5
    textValue9(textValue10)
    textValue9 = flag5
    textValue9 = textValue9()
    if textValue9 then
      return
    end
  end
  if dataTable then
    textValue9 = DoesEntityExist
    textValue10 = dataTable
    textValue9 = textValue9(textValue10)
    if textValue9 then
      textValue9 = DeleteEntity
      textValue10 = dataTable
      -- Beginner: Delete a GTA entity.
      textValue9(textValue10)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1, arg2) ===
function workValue5(arg1, arg2)
  local coords, cmgCall2, textValue8, dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3
  coords = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  coords = coords()
  cmgCall2 = math
  cmgCall2 = cmgCall2.max
  textValue8 = 0
  dataTable = math
  dataTable = dataTable.min
  flag5 = 3
  textValue9 = arg1.cprPumpReduction
  if not textValue9 then
    textValue9 = 0
  end
  dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3 = dataTable(flag5, textValue9)
  cmgCall2 = cmgCall2(textValue8, dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3)
  textValue8 = math
  textValue8 = textValue8.max
  dataTable = 1
  flag5 = arg1.isMedicTrained
  if flag5 then
    flag5 = 8
    if flag5 then
      goto flow_label_25
    end
  end
  flag5 = 16
  ::flow_label_25::
  flag5 = flag5 - cmgCall2
  textValue8 = textValue8(dataTable, flag5)
  dataTable = CMG
  dataTable = dataTable.loadAnimDict
  flag5 = "mini@cpr@char_b@cpr_def"
  -- Beginner: Load a GTA animation dictionary before using it.
  dataTable(flag5)
  dataTable = CMG
  dataTable = dataTable.loadAnimDict
  flag5 = "mini@cpr@char_b@cpr_str"
  dataTable(flag5)
  dataTable = FreezeEntityPosition
  flag5 = coords
  textValue9 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  dataTable(flag5, textValue9)

  -- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
  function dataTable()
    local workValue, workValue8
    workValue = cmgCall.cancelled
    return workValue
  end
  flag5 = arg1.isMedicTrained
  if flag5 then
    flag5 = textValue3
    textValue9 = {}
    textValue9.ped = coords
    textValue10 = arg1.sceneX
    textValue9.x = textValue10
    textValue10 = arg1.sceneY
    textValue9.y = textValue10
    textValue10 = arg1.sceneZ
    textValue9.z = textValue10
    textValue10 = arg1.sceneHeading
    textValue9.heading = textValue10
    textValue9.animDict = "mini@cpr@char_b@cpr_def"
    textValue9.anim = "cpr_intro"
    textValue9.chainPhase = 0.98
    textValue9.holdLastFrame = true
    flag5(textValue9)
    flag5 = dataTable
    flag5 = flag5()
    if flag5 then
      return
    end
    flag5 = 1
    textValue9 = textValue8
    textValue10 = 1
    for mathHelper = flag5, textValue9, textValue10 do
      textValue = textValue3
      numberValue2 = {}
      numberValue2.ped = coords
      numberValue3 = arg1.sceneX
      numberValue2.x = numberValue3
      numberValue3 = arg1.sceneY
      numberValue2.y = numberValue3
      numberValue3 = arg1.sceneZ
      numberValue2.z = numberValue3
      numberValue3 = arg1.sceneHeading
      numberValue2.heading = numberValue3
      numberValue2.animDict = "mini@cpr@char_b@cpr_str"
      numberValue2.anim = "cpr_pumpchest"
      numberValue2.chainPhase = 0.9
      numberValue2.holdLastFrame = true
      textValue(numberValue2)
      textValue = dataTable
      textValue = textValue()
      if textValue then
        return
      end
    end
    flag5 = textValue3
    textValue9 = {}
    textValue9.ped = coords
    textValue10 = arg1.sceneX
    textValue9.x = textValue10
    textValue10 = arg1.sceneY
    textValue9.y = textValue10
    textValue10 = arg1.sceneZ
    textValue9.z = textValue10
    textValue10 = arg1.sceneHeading
    textValue9.heading = textValue10
    textValue9.animDict = "mini@cpr@char_b@cpr_str"
    textValue9.anim = "cpr_cpr_to_kol"
    textValue9.chainPhase = 0.98
    textValue9.holdLastFrame = true
    flag5(textValue9)
    flag5 = dataTable
    flag5 = flag5()
    if flag5 then
      return
    end
    flag5 = textValue3
    textValue9 = {}
    textValue9.ped = coords
    textValue10 = arg1.sceneX
    textValue9.x = textValue10
    textValue10 = arg1.sceneY
    textValue9.y = textValue10
    textValue10 = arg1.sceneZ
    textValue9.z = textValue10
    textValue10 = arg1.sceneHeading
    textValue9.heading = textValue10
    textValue9.animDict = "mini@cpr@char_b@cpr_str"
    textValue9.anim = "cpr_kol"
    textValue9.chainPhase = 0.95
    textValue9.holdLastFrame = true
    flag5(textValue9)
    flag5 = dataTable
    flag5 = flag5()
    if flag5 then
      return
    end
    flag5 = textValue3
    textValue9 = {}
    textValue9.ped = coords
    textValue10 = arg1.sceneX
    textValue9.x = textValue10
    textValue10 = arg1.sceneY
    textValue9.y = textValue10
    textValue10 = arg1.sceneZ
    textValue9.z = textValue10
    textValue10 = arg1.sceneHeading
    textValue9.heading = textValue10
    textValue9.animDict = "mini@cpr@char_b@cpr_str"
    textValue9.anim = "cpr_kol_to_cpr"
    textValue9.chainPhase = 0.98
    textValue9.holdLastFrame = true
    flag5(textValue9)
    flag5 = dataTable
    flag5 = flag5()
    if flag5 then
      return
    end
    flag5 = 1
    textValue9 = textValue8
    textValue10 = 1
    for mathHelper = flag5, textValue9, textValue10 do
      textValue = textValue3
      numberValue2 = {}
      numberValue2.ped = coords
      numberValue3 = arg1.sceneX
      numberValue2.x = numberValue3
      numberValue3 = arg1.sceneY
      numberValue2.y = numberValue3
      numberValue3 = arg1.sceneZ
      numberValue2.z = numberValue3
      numberValue3 = arg1.sceneHeading
      numberValue2.heading = numberValue3
      numberValue2.animDict = "mini@cpr@char_b@cpr_str"
      numberValue2.anim = "cpr_pumpchest"
      numberValue2.chainPhase = 0.9
      numberValue2.holdLastFrame = true
      textValue(numberValue2)
      textValue = dataTable
      textValue = textValue()
      if textValue then
        return
      end
    end
  else
    flag5 = 1
    textValue9 = textValue8
    textValue10 = 1
    for mathHelper = flag5, textValue9, textValue10 do
      textValue = textValue3
      numberValue2 = {}
      numberValue2.ped = coords
      numberValue3 = arg1.sceneX
      numberValue2.x = numberValue3
      numberValue3 = arg1.sceneY
      numberValue2.y = numberValue3
      numberValue3 = arg1.sceneZ
      numberValue2.z = numberValue3
      numberValue3 = arg1.sceneHeading
      numberValue2.heading = numberValue3
      numberValue2.animDict = "mini@cpr@char_b@cpr_str"
      numberValue2.anim = "cpr_pumpchest"
      numberValue2.chainPhase = 0.9
      numberValue2.holdLastFrame = true
      textValue(numberValue2)
    end
  end
  if "success" == arg2 then
    flag5 = textValue3
    textValue9 = {}
    textValue9.ped = coords
    textValue10 = arg1.sceneX
    textValue9.x = textValue10
    textValue10 = arg1.sceneY
    textValue9.y = textValue10
    textValue10 = arg1.sceneZ
    textValue9.z = textValue10
    textValue10 = arg1.sceneHeading
    textValue9.heading = textValue10
    textValue9.animDict = "mini@cpr@char_b@cpr_str"
    textValue9.anim = "cpr_success"
    textValue9.holdLastFrame = false
    textValue9.endEarlyMs = 13500
    textValue9.speed = 1.5
    flag5(textValue9)
    flag5 = dataTable
    flag5 = flag5()
    if flag5 then
      return
    end
  elseif "fail" == arg2 then
    flag5 = textValue3
    textValue9 = {}
    textValue9.ped = coords
    textValue10 = arg1.sceneX
    textValue9.x = textValue10
    textValue10 = arg1.sceneY
    textValue9.y = textValue10
    textValue10 = arg1.sceneZ
    textValue9.z = textValue10
    textValue10 = arg1.sceneHeading
    textValue9.heading = textValue10
    textValue9.animDict = "mini@cpr@char_b@cpr_str"
    textValue9.anim = "cpr_fail"
    textValue9.holdLastFrame = false
    textValue9.endEarlyMs = 21000
    textValue9.speed = 1.5
    flag5(textValue9)
    flag5 = dataTable
    flag5 = flag5()
    if flag5 then
      return
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, coords, cmgCall2, textValue8, dataTable
  arg2 = cmgCall.running
  if arg2 then
    return
  end
  cmgCall.running = true
  cmgCall.cancelled = false
  cmgCall.isMedic = true
  arg2 = tCMG
  arg2 = arg2.setCanAnim
  coords = false
  arg2(coords)
  arg2 = textValue2
  coords = arg1
  arg2(coords)
  arg2 = workValue4
  coords = arg1
  cmgCall2 = arg1.ending
  arg2(coords, cmgCall2)
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  coords = ClearPedTasksImmediately
  cmgCall2 = arg2
  coords(cmgCall2)
  coords = FreezeEntityPosition
  cmgCall2 = arg2
  textValue8 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  coords(cmgCall2, textValue8)
  coords = tCMG
  coords = coords.setCanAnim
  cmgCall2 = true
  coords(cmgCall2)
  cmgCall.running = false
  cmgCall.isMedic = false
  coords = cmgCall.cancelled
  if coords then
    coords = TriggerServerEvent
    cmgCall2 = "8fb0826fdf"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8fb0826fdf".
    coords(cmgCall2)
  else
    coords = arg1.targetServerId
    if nil ~= coords then
      coords = TriggerServerEvent
      cmgCall2 = "d25660a87c"
      textValue8 = arg1.targetServerId
      dataTable = arg1.ending
      coords(cmgCall2, textValue8, dataTable)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1) ===
function workValue7(arg1)
  local arg2, coords, cmgCall2, textValue8, dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag, flag2
  arg2 = cmgCall.running
  if arg2 then
    return
  end
  arg2 = TriggerEvent
  coords = "505e07e36a"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "505e07e36a".
  arg2(coords)
  cmgCall.running = true
  cmgCall.cancelled = false
  arg2 = tCMG
  arg2 = arg2.setCanAnim
  coords = false
  arg2(coords)
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  coords = GetEntityCoords
  cmgCall2 = arg2
  textValue8 = true
  -- Beginner: result below is entityCoords.
  coords = coords(cmgCall2, textValue8)
  cmgCall2 = coords.x
  arg1.sceneX = cmgCall2
  cmgCall2 = coords.y
  arg1.sceneY = cmgCall2
  cmgCall2 = textValue2
  textValue8 = arg1
  cmgCall2(textValue8)
  cmgCall2 = IsEntityDead
  textValue8 = arg2
  cmgCall2 = cmgCall2(textValue8)
  if not cmgCall2 then
    cmgCall2 = GetEntityHealth
    textValue8 = arg2
    -- Beginner: result below is health.
    cmgCall2 = cmgCall2(textValue8)
    if not (cmgCall2 <= 100) then
      goto flow_label_44
    end
  end
  cmgCall2 = SetEntityHealth
  textValue8 = arg2
  dataTable = 102
  cmgCall2(textValue8, dataTable)
  cmgCall2 = ClearPedTasksImmediately
  textValue8 = arg2
  cmgCall2(textValue8)
  ::flow_label_44::
  cmgCall2 = workValue5
  textValue8 = arg1
  dataTable = arg1.ending
  cmgCall2(textValue8, dataTable)
  cmgCall2 = tCMG
  cmgCall2 = cmgCall2.isInComa
  cmgCall2 = cmgCall2()
  if cmgCall2 then
    cmgCall2 = GetEntityHealth
    textValue8 = arg2
    -- Beginner: result below is health.
    cmgCall2 = cmgCall2(textValue8)
    cmgCall2 = cmgCall2 <= 102
  end
  if not cmgCall2 then
    textValue8 = ClearPedTasksImmediately
    dataTable = arg2
    textValue8(dataTable)
    textValue8 = FreezeEntityPosition
    dataTable = arg2
    flag5 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    textValue8(dataTable, flag5)
    textValue8 = Wait
    dataTable = 150
    textValue8(dataTable)
    textValue8 = tCMG
    textValue8 = textValue8.setCanAnim
    dataTable = true
    textValue8(dataTable)
    cmgCall.running = false
    textValue8 = TriggerEvent
    dataTable = "43128b61c1"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "43128b61c1".
    textValue8(dataTable)
    return
  end
  textValue8 = cmgCall.cancelled
  if textValue8 then
    textValue8 = ClearPedTasksImmediately
    dataTable = arg2
    textValue8(dataTable)
    textValue8 = SetEntityCollision
    dataTable = arg2
    flag5 = true
    textValue9 = true
    textValue8(dataTable, flag5, textValue9)
    textValue8 = SetEntityVisible
    dataTable = arg2
    flag5 = true
    textValue9 = true
    textValue8(dataTable, flag5, textValue9)
    textValue8 = SetEntityHealth
    dataTable = arg2
    flag5 = 102
    textValue8(dataTable, flag5)
    textValue8 = SetEntityInvincible
    dataTable = arg2
    flag5 = true
    textValue8(dataTable, flag5)
    textValue8 = FreezeEntityPosition
    dataTable = arg2
    flag5 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    textValue8(dataTable, flag5)
    textValue8 = CMG
    textValue8 = textValue8.loadAnimDict
    dataTable = "misslamar1dead_body"
    -- Beginner: Load a GTA animation dictionary before using it.
    textValue8(dataTable)
    textValue8 = TaskPlayAnim
    dataTable = arg2
    flag5 = "misslamar1dead_body"
    textValue9 = "dead_idle"
    textValue10 = 3.0
    mathHelper = 1.0
    textValue = -1
    numberValue2 = 1
    numberValue3 = 0
    numberValue4 = false
    flag = false
    flag2 = false
    -- Beginner: Play an animation on a ped.
    textValue8(dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag, flag2)
    textValue8 = RemoveAnimDict
    dataTable = "misslamar1dead_body"
    textValue8(dataTable)
    textValue8 = TriggerEvent
    dataTable = "43128b61c1"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "43128b61c1".
    textValue8(dataTable)
  else
    textValue8 = arg1.ending
    if "success" == textValue8 then
      textValue8 = ClearPedTasksImmediately
      dataTable = arg2
      textValue8(dataTable)
      textValue8 = FreezeEntityPosition
      dataTable = arg2
      flag5 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      textValue8(dataTable, flag5)
    else
      textValue8 = SetEntityCollision
      dataTable = arg2
      flag5 = true
      textValue9 = true
      textValue8(dataTable, flag5, textValue9)
      textValue8 = SetEntityVisible
      dataTable = arg2
      flag5 = true
      textValue9 = true
      textValue8(dataTable, flag5, textValue9)
      textValue8 = SetEntityHealth
      dataTable = arg2
      flag5 = 102
      textValue8(dataTable, flag5)
      textValue8 = SetEntityInvincible
      dataTable = arg2
      flag5 = true
      textValue8(dataTable, flag5)
      textValue8 = FreezeEntityPosition
      dataTable = arg2
      flag5 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      textValue8(dataTable, flag5)
      textValue8 = CMG
      textValue8 = textValue8.loadAnimDict
      dataTable = "misslamar1dead_body"
      -- Beginner: Load a GTA animation dictionary before using it.
      textValue8(dataTable)
      textValue8 = TaskPlayAnim
      dataTable = arg2
      flag5 = "misslamar1dead_body"
      textValue9 = "dead_idle"
      textValue10 = 3.0
      mathHelper = 1.0
      textValue = -1
      numberValue2 = 1
      numberValue3 = 0
      numberValue4 = false
      flag = false
      flag2 = false
      -- Beginner: Play an animation on a ped.
      textValue8(dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag, flag2)
      textValue8 = RemoveAnimDict
      dataTable = "misslamar1dead_body"
      textValue8(dataTable)
    end
  end
  textValue8 = Wait
  dataTable = 150
  textValue8(dataTable)
  textValue8 = tCMG
  textValue8 = textValue8.setCanAnim
  dataTable = true
  textValue8(dataTable)
  cmgCall.running = false
  textValue8 = arg1.ending
  if "success" ~= textValue8 then
    textValue8 = cmgCall.cancelled
    if not textValue8 then
      textValue8 = TriggerEvent
      dataTable = "43128b61c1"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "43128b61c1".
      textValue8(dataTable)
    end
  end
end
eventRegistration = RegisterNetEvent
textValue5 = "2114f6e305"
-- Beginner: this function handles network event "2114f6e305".

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: arg1) ===
function eventRegistration2(arg1)
  local arg2, coords
  arg2 = workValue6
  coords = arg1
  arg2(coords)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2114f6e305".
eventRegistration(textValue5, eventRegistration2)
eventRegistration = RegisterNetEvent
textValue5 = "505e07e36a"
-- Beginner: this function handles network event "505e07e36a".

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: arg1) ===
function eventRegistration2(arg1)
  local arg2, coords
  if arg1 then
    arg2 = workValue7
    coords = arg1
    arg2(coords)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "505e07e36a".
eventRegistration(textValue5, eventRegistration2)
eventRegistration = RegisterNetEvent
textValue5 = "a23fad560e"
-- Beginner: this function handles network event "a23fad560e".

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: none) ===
function eventRegistration2()
  local arg1, arg2
  cmgCall.cancelled = true
end
eventRegistration(textValue5, eventRegistration2)
eventRegistration = RegisterNetEvent
textValue5 = "4935c71079"
-- Beginner: this function handles network event "4935c71079".

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: none) ===
function eventRegistration2()
  local arg1, arg2
  cmgCall.cancelled = true
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4935c71079".
eventRegistration(textValue5, eventRegistration2)
-- Beginner: this function handles network event "4935c71079".

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2, coords, cmgCall2, textValue8
  arg1 = BeginTextCommandDisplayHelp
  arg2 = "STRING"
  arg1(arg2)
  arg1 = AddTextEntry
  arg2 = "CPR_CANCEL_HELP"
  coords = "~INPUT_CELLPHONE_CANCEL~ Cancel CPR"
  arg1(arg2, coords)
  arg1 = AddTextComponentSubstringTextLabel
  arg2 = "CPR_CANCEL_HELP"
  arg1(arg2)
  arg1 = EndTextCommandDisplayHelp
  arg2 = 0
  coords = false
  cmgCall2 = false
  textValue8 = 0
  arg1(arg2, coords, cmgCall2, textValue8)
end
textValue5 = CMG
textValue5 = textValue5.createThreadOnTick

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: none) ===
function eventRegistration2()
  local arg1, arg2, coords
  arg1 = cmgCall.running
  if arg1 then
    arg1 = cmgCall.isMedic
    if arg1 then
      arg1 = eventRegistration
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      arg1()
      arg1 = IsControlJustPressed
      arg2 = 0
      coords = 202
      arg1 = arg1(arg2, coords)
      if not arg1 then
        arg1 = IsDisabledControlJustPressed
        arg2 = 0
        coords = 177
        arg1 = arg1(arg2, coords)
        if not arg1 then
          goto flow_label_23
        end
      end
      cmgCall.cancelled = true
      goto flow_label_30
      ::flow_label_23::
      arg1 = IsEntityDead
      arg2 = PlayerPedId
      arg2, coords = arg2()
      arg1 = arg1(arg2, coords)
      if arg1 then
        cmgCall.cancelled = true
      end
    end
  end
  ::flow_label_30::
end
textValue6 = "CPR Cancel Tick"
-- Beginner: Run a helper every game frame while this script is active.
textValue5(eventRegistration2, textValue6)
textValue5 = CMG
textValue5 = textValue5.RegisterClientCallback
eventRegistration2 = "9f2bde707e"

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2, coords, cmgCall2, textValue8, dataTable, flag5, textValue9, textValue10
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  if 0 == arg1 then
    arg2 = nil
    return arg2
  end
  arg2 = GetEntityCoords
  coords = arg1
  -- Beginner: result below is entityCoords.
  arg2 = arg2(coords)
  coords = GetEntityHeading
  cmgCall2 = arg1
  -- Beginner: result below is heading.
  coords = coords(cmgCall2)
  cmgCall2 = GetGroundZFor_3dCoord
  textValue8 = arg2.x
  dataTable = arg2.y
  flag5 = arg2.z
  flag5 = flag5 + 2.0
  textValue9 = 0
  textValue10 = false
  cmgCall2, textValue8 = cmgCall2(textValue8, dataTable, flag5, textValue9, textValue10)
  if cmgCall2 then
    dataTable = type
    flag5 = textValue8
    dataTable = dataTable(flag5)
    if "number" == dataTable then
      goto flow_label_30
    end
  end
  textValue8 = arg2.z
  ::flow_label_30::
  dataTable = {}
  flag5 = arg2.x
  dataTable.x = flag5
  flag5 = arg2.y
  dataTable.y = flag5
  flag5 = arg2.z
  dataTable.z = flag5
  dataTable.heading = coords
  dataTable.groundZ = textValue8
  return dataTable
end
textValue5(eventRegistration2, textValue6)
textValue5 = false
eventRegistration2 = RegisterNetEvent
textValue6 = "676d7f86f9"
-- Beginner: this function handles network event "676d7f86f9".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2, coords, cmgCall2, textValue8, dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4
  arg1 = CMG
  arg1 = arg1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg1 = arg1()
  arg2 = textValue5
  if arg2 then
    arg2 = notify
    coords = "~r~You are using morphine currently. Please try again later."
    -- Beginner: Show a notification to the player.
    arg2(coords)
    return
  end
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg2 = arg2()
  if 0 ~= arg2 then
    arg2 = notify
    coords = "~r~You can not do this whilst in a vehicle."
    arg2(coords)
    return
  end
  arg2 = -1
  coords = 0
  cmgCall2 = 3.0
  textValue8 = pairs
  dataTable = GetActivePlayers
  dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4 = dataTable()
  textValue8, dataTable, flag5, textValue9 = textValue8(dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4)
  for textValue10, mathHelper in textValue8, dataTable, flag5, textValue9 do
    textValue = GetPlayerPed
    numberValue2 = mathHelper
    -- Beginner: result below is playerPed.
    textValue = textValue(numberValue2)
    if 0 ~= textValue then
      numberValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      numberValue2 = numberValue2()
      if textValue ~= numberValue2 then
        numberValue2 = GetEntityCoords
        numberValue3 = textValue
        numberValue4 = true
        -- Beginner: result below is entityCoords.
        numberValue2 = numberValue2(numberValue3, numberValue4)
        numberValue2 = numberValue2 - arg1
        numberValue2 = #numberValue2
        if cmgCall2 > numberValue2 then
          arg2 = mathHelper
          coords = textValue
          cmgCall2 = numberValue2
        end
      end
    end
  end
  if -1 == arg2 then
    textValue8 = notify
    dataTable = "~r~No nearby player found."
    -- Beginner: Show a notification to the player.
    textValue8(dataTable)
    return
  end
  textValue8 = GetEntityHealth
  dataTable = coords
  -- Beginner: result below is health.
  textValue8 = textValue8(dataTable)
  if textValue8 <= 102 then
    dataTable = notify
    flag5 = "~r~This player is dead and can not have morphine injected."
    dataTable(flag5)
  else
    dataTable = 200
    if textValue8 >= dataTable then
      dataTable = notify
      flag5 = "~r~This player is healthy and does not require morphine."
      -- Beginner: Show a notification to the player.
      dataTable(flag5)
    else
      dataTable = GetPlayerServerId
      flag5 = arg2
      -- Beginner: result below is serverId.
      dataTable = dataTable(flag5)
      if dataTable > 0 then
        flag5 = TriggerServerEvent
        textValue9 = "a00a7ed7df"
        textValue10 = dataTable
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a00a7ed7df".
        flag5(textValue9, textValue10)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "676d7f86f9".
eventRegistration2(textValue6, workValue9)
eventRegistration2 = RegisterNetEvent
textValue6 = "73be4abad8"
-- Beginner: this function handles network event "73be4abad8".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, coords, cmgCall2, textValue8, dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4
  arg2 = textValue5
  if arg2 then
    return
  end
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg2 = arg2()
  if 0 ~= arg2 then
    return
  end
  arg2 = GetPlayerFromServerId
  coords = arg1
  -- Beginner: result below is playerIndex.
  arg2 = arg2(coords)
  if -1 == arg2 then
    return
  end
  coords = GetPlayerPed
  cmgCall2 = arg2
  -- Beginner: result below is playerPed.
  coords = coords(cmgCall2)
  if 0 == coords then
    return
  end
  cmgCall2 = notify
  textValue8 = "~g~Injecting morphine into player..."
  -- Beginner: Show a notification to the player.
  cmgCall2(textValue8)
  cmgCall2 = true
  textValue5 = cmgCall2
  cmgCall2 = tCMG
  cmgCall2 = cmgCall2.setCanAnim
  textValue8 = false
  cmgCall2(textValue8)
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.loadClipSet
  textValue8 = "move_ped_crouched"
  cmgCall2(textValue8)
  cmgCall2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgCall2 = cmgCall2()
  textValue8 = GetEntityCoords
  dataTable = coords
  flag5 = true
  -- Beginner: result below is entityCoords.
  textValue8 = textValue8(dataTable, flag5)
  dataTable = GetEntityForwardVector
  flag5 = coords
  dataTable = dataTable(flag5)
  dataTable = dataTable * 0.75
  textValue8 = textValue8 + dataTable
  dataTable = vector3
  flag5 = 0.0
  textValue9 = 0.0
  textValue10 = -0.5
  dataTable = dataTable(flag5, textValue9, textValue10)
  textValue8 = textValue8 + dataTable
  dataTable = SetEntityCoords
  flag5 = cmgCall2
  textValue9 = textValue8.x
  textValue10 = textValue8.y
  mathHelper = textValue8.z
  textValue = true
  numberValue2 = false
  numberValue3 = false
  numberValue4 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  dataTable(flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4)
  dataTable = SetEntityHeading
  flag5 = cmgCall2
  textValue9 = GetEntityHeading
  textValue10 = coords
  -- Beginner: result below is heading.
  textValue9 = textValue9(textValue10)
  textValue9 = textValue9 + 180.0
  -- Beginner: Change the direction an entity is facing.
  dataTable(flag5, textValue9)
  dataTable = true
  flag5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  flag5 = flag5()
  while true do
    textValue9 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    textValue9 = textValue9()
    textValue9 = textValue9 - flag5
    textValue10 = 5000
    if not (textValue9 < textValue10) then
      break
    end
    textValue9 = GetEntityHealth
    textValue10 = cmgCall2
    -- Beginner: result below is health.
    textValue9 = textValue9(textValue10)
    if not (textValue9 < 102) then
      textValue9 = IsEntityDead
      textValue10 = cmgCall2
      textValue9 = textValue9(textValue10)
      if not textValue9 then
        goto flow_label_96
      end
    end
    dataTable = false
    do break end
    ::flow_label_96::
    textValue9 = SetPedMovementClipset
    textValue10 = cmgCall2
    mathHelper = "move_ped_crouched"
    textValue = 0.6
    textValue9(textValue10, mathHelper, textValue)
    textValue9 = SetPedStrafeClipset
    textValue10 = cmgCall2
    mathHelper = "move_ped_crouched_strafing"
    textValue9(textValue10, mathHelper)
    textValue9 = Citizen
    textValue9 = textValue9.Wait
    textValue10 = 5000
    textValue9(textValue10)
  end
  if dataTable then
    textValue9 = ResetPedStrafeClipset
    textValue10 = cmgCall2
    textValue9(textValue10)
    textValue9 = ResetPedMovementClipset
    textValue10 = cmgCall2
    mathHelper = 0.5
    textValue9(textValue10, mathHelper)
  end
  textValue9 = RemoveAnimSet
  textValue10 = "move_ped_crouched"
  textValue9(textValue10)
  textValue9 = tCMG
  textValue9 = textValue9.setCanAnim
  textValue10 = true
  textValue9(textValue10)
  textValue9 = false
  textValue5 = textValue9
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "73be4abad8".
eventRegistration2(textValue6, workValue9)
eventRegistration2 = RegisterNetEvent
textValue6 = "da84b34be7"
-- Beginner: this function handles network event "da84b34be7".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, coords, cmgCall2, textValue8, dataTable, flag5, textValue9, textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag, flag2, heading, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, flag3, flag4
  arg2 = textValue5
  if arg2 then
    return
  end
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg2 = arg2()
  if 0 ~= arg2 then
    return
  end
  arg2 = GetPlayerFromServerId
  coords = arg1
  -- Beginner: result below is playerIndex.
  arg2 = arg2(coords)
  if -1 == arg2 then
    return
  end
  coords = GetPlayerPed
  cmgCall2 = arg2
  -- Beginner: result below is playerPed.
  coords = coords(cmgCall2)
  if 0 == coords then
    return
  end
  cmgCall2 = notify
  textValue8 = "~g~Waiting for morphine to be injected..."
  -- Beginner: Show a notification to the player.
  cmgCall2(textValue8)
  cmgCall2 = true
  textValue5 = cmgCall2
  cmgCall2 = tCMG
  cmgCall2 = cmgCall2.setCanAnim
  textValue8 = false
  cmgCall2(textValue8)
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.loadAnimDict
  textValue8 = "timetable@tracy@ig_14@"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgCall2(textValue8)
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  cmgCall2 = cmgCall2()
  textValue8 = vector3
  dataTable = 0.0
  flag5 = 0.0
  textValue9 = -0.2
  textValue8 = textValue8(dataTable, flag5, textValue9)
  cmgCall2 = cmgCall2 + textValue8
  textValue8 = true
  dataTable = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  dataTable = dataTable()
  flag5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  flag5 = flag5()
  while true do
    textValue9 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    textValue9 = textValue9()
    textValue9 = textValue9 - flag5
    textValue10 = 5000
    if not (textValue9 < textValue10) then
      break
    end
    textValue9 = GetEntityHealth
    textValue10 = dataTable
    -- Beginner: result below is health.
    textValue9 = textValue9(textValue10)
    if not (textValue9 < 102) then
      textValue9 = IsEntityDead
      textValue10 = dataTable
      textValue9 = textValue9(textValue10)
      if not textValue9 then
        goto flow_label_70
      end
    end
    textValue8 = false
    do break end
    ::flow_label_70::
    textValue9 = IsEntityPlayingAnim
    textValue10 = dataTable
    mathHelper = "timetable@tracy@ig_14@"
    textValue = "ig_14_base_tracy"
    numberValue2 = 3
    textValue9 = textValue9(textValue10, mathHelper, textValue, numberValue2)
    if not textValue9 then
      textValue9 = FreezeEntityPosition
      textValue10 = dataTable
      mathHelper = true
      -- Beginner: Freeze or unfreeze an entity in place.
      textValue9(textValue10, mathHelper)
      textValue9 = TaskPlayAnimAdvanced
      textValue10 = dataTable
      mathHelper = "timetable@tracy@ig_14@"
      textValue = "ig_14_base_tracy"
      numberValue2 = cmgCall2.x
      numberValue3 = cmgCall2.y
      numberValue4 = cmgCall2.z
      flag = 0.0
      flag2 = 0.0
      heading = GetEntityHeading
      numberValue5 = dataTable
      -- Beginner: result below is heading.
      heading = heading(numberValue5)
      numberValue5 = 8.0
      numberValue6 = 8.0
      numberValue7 = -1
      numberValue8 = 1
      numberValue9 = 1.0
      flag3 = false
      flag4 = false
      textValue9(textValue10, mathHelper, textValue, numberValue2, numberValue3, numberValue4, flag, flag2, heading, numberValue5, numberValue6, numberValue7, numberValue8, numberValue9, flag3, flag4)
    end
    textValue9 = Citizen
    textValue9 = textValue9.Wait
    textValue10 = 0
    textValue9(textValue10)
  end
  textValue9 = FreezeEntityPosition
  textValue10 = dataTable
  mathHelper = false
  -- Beginner: Freeze or unfreeze an entity in place.
  textValue9(textValue10, mathHelper)
  if textValue8 then
    textValue9 = StopAnimTask
    textValue10 = dataTable
    mathHelper = "timetable@tracy@ig_14@"
    textValue = "ig_14_base_tracy"
    numberValue2 = 1.0
    textValue9(textValue10, mathHelper, textValue, numberValue2)
    textValue9 = GetEntityHealth
    textValue10 = dataTable
    -- Beginner: result below is health.
    textValue9 = textValue9(textValue10)
    if textValue9 > 102 then
      textValue10 = 200
      if textValue9 < textValue10 then
        textValue10 = SetEntityHealth
        mathHelper = dataTable
        textValue = 200
        textValue10(mathHelper, textValue)
        textValue10 = notify
        mathHelper = "~g~Morphine applied free of charge by the NHS!"
        -- Beginner: Show a notification to the player.
        textValue10(mathHelper)
        textValue10 = TriggerEvent
        mathHelper = "TriggerTazer"
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "TriggerTazer".
        textValue10(mathHelper)
    end
    else
      textValue10 = notify
      mathHelper = "~r~The morphine had no affect on you."
      -- Beginner: Show a notification to the player.
      textValue10(mathHelper)
    end
  end
  textValue9 = RemoveAnimDict
  textValue10 = "timetable@tracy@ig_14@"
  textValue9(textValue10)
  textValue9 = tCMG
  textValue9 = textValue9.setCanAnim
  textValue10 = true
  textValue9(textValue10)
  textValue9 = false
  textValue5 = textValue9
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "da84b34be7".
eventRegistration2(textValue6, workValue9)
eventRegistration2 = RegisterNetEvent
textValue6 = "cefef09c49"
-- Beginner: this function handles network event "cefef09c49".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2
  if 0 == arg1 then
    arg2 = 0
    localEventCall = arg2
  else
    arg2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg2 = arg2()
    arg2 = arg2 + arg1
    localEventCall = arg2
  end
end
eventRegistration2(textValue6, workValue9)
eventRegistration2 = RegisterNetEvent
textValue6 = "3ea9b56577"
-- Beginner: this function handles network event "3ea9b56577".

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2
  if 0 == arg1 then
    arg2 = 0
    textValue4 = arg2
  else
    arg2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg2 = arg2()
    arg2 = arg2 + arg1
    textValue4 = arg2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3ea9b56577".
eventRegistration2(textValue6, workValue9)
