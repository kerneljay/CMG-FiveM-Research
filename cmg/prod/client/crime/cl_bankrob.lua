--[[
    LEVEL 1 BEGINNER GUIDE — Bankrob
    =====================================

    File: cmg/prod/client/crime/cl_bankrob.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: crime, robbery, gang, and criminal gameplay, specifically the Bankrob feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 39
      * Background threads: 0
      * Always-running loops: 4
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
local cmgCall, dataTable2, numberValue16, workValue8, workValue9, workValue10, workValue11, workValue12, workValue13, workValue14, workValue, workValue2, workValue3, workValue4, eventRegistration, textValue, workValue5, numberValue3, numberValue4, dataTable, cmgCall3, numberValue5, numberValue6, numberValue7, numberValue8, numberValue10
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable2 = "cfg/cfg_bankrob"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable2)
dataTable2 = {}
numberValue16 = 0

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local arg2, arg3, flag15
  arg2 = TriggerServerEvent
  arg3 = "946c287b9d"
  flag15 = arg1.index
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "946c287b9d".
  arg2(arg3, flag15)
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1) ===
function workValue9(arg1)
  local arg2, arg3, flag15
  arg2 = arg1.handles
  if arg2 then
    arg2 = DeleteEntity
    arg3 = arg1.handles
    arg3 = arg3.object
    -- Beginner: Delete a GTA entity.
    arg2(arg3)
    arg2 = StopParticleFxLooped
    arg3 = arg1.handles
    arg3 = arg3.particle
    flag15 = false
    arg2(arg3, flag15)
    arg2 = arg1.handles
    arg2 = arg2.soundId
    if -1 ~= arg2 then
      arg2 = StopSound
      arg3 = arg1.handles
      arg3 = arg3.soundId
      arg2(arg3)
      arg2 = ReleaseSoundId
      arg3 = arg1.handles
      arg3 = arg3.soundId
      arg2(arg3)
    end
    arg1.handles = nil
  end
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1) ===
function workValue10(arg1)
  local arg2, arg3, flag15, textValue3, position, numberValue21, modelValue, flag17, flag18
  arg3 = arg1.index
  arg2 = dataTable2
  arg2 = arg2[arg3]
  if arg2 then
    arg3 = pairs
    flag15 = arg2.safes
    arg3, flag15, textValue3, position = arg3(flag15)
    for numberValue21, modelValue in arg3, flag15, textValue3, position do
      flag17 = workValue9
      flag18 = modelValue
      flag17(flag18)
    end
    flag15 = arg1.index
    arg3 = dataTable2
    arg3[flag15] = nil
  end
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1, arg2) ===
function workValue11(arg1, arg2)
  local arg3, flag15, textValue3, position
  arg3 = CMG
  arg3 = arg3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg3 = arg3()
  flag15 = arg2.uiPosition
  arg3 = arg3 - flag15
  arg3 = #arg3
  if arg3 > 1.0 then
    return
  end
  arg3 = CMG
  arg3 = arg3.isEmergencyService
  arg3 = arg3()
  if arg3 then
    return
  end
  arg3 = drawNativeNotification
  flag15 = "Press ~INPUT_CONTEXT~ to hack the "
  textValue3 = arg2.type
  if "terminal" == textValue3 then
    textValue3 = "Gate"
    if textValue3 then
      goto flow_label_26
    end
  end
  textValue3 = "Vault"
  ::flow_label_26::
  flag15 = flag15 .. textValue3
  -- Beginner: Show a GTA-style notification/help prompt.
  arg3(flag15)
  arg3 = IsControlJustPressed
  flag15 = 0
  textValue3 = 51
  arg3 = arg3(flag15, textValue3)
  if arg3 then
    arg3 = TriggerServerEvent
    flag15 = "9ff6fe9b05"
    textValue3 = arg1.index
    position = arg2.index
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9ff6fe9b05".
    arg3(flag15, textValue3, position)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: arg1, arg2) ===
function workValue12(arg1, arg2)
  local arg3, flag15, textValue3
  arg3 = nil
  flag15 = nil
  if arg2 < arg1 then
    arg3 = arg1 - arg2
    textValue3 = 360.0
    flag15 = textValue3 - arg3
  else
    flag15 = arg2 - arg1
    textValue3 = 360.0
    arg3 = textValue3 - flag15
  end
  if flag15 < arg3 then
    textValue3 = -1.0
    if textValue3 then
      goto flow_label_21
    end
  end
  textValue3 = 1.0
  ::flow_label_21::
  return textValue3
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: arg1, arg2) ===
function workValue13(arg1, arg2)
  local arg3, flag15, textValue3, position, numberValue21, modelValue, flag17, flag18, flag
  arg3 = GetClosestObjectOfType
  flag15 = arg1.position
  flag15 = flag15.x
  textValue3 = arg1.position
  textValue3 = textValue3.y
  position = arg1.position
  position = position.z
  numberValue21 = 2.0
  modelValue = arg1.model
  flag17 = false
  flag18 = false
  flag = false
  -- Beginner: result below is objectEntity.
  arg3 = arg3(flag15, textValue3, position, numberValue21, modelValue, flag17, flag18, flag)
  if 0 == arg3 then
    return
  end
  flag15 = FreezeEntityPosition
  textValue3 = arg3
  position = arg2.isHacked
  position = not position
  -- Beginner: Freeze or unfreeze an entity in place.
  flag15(textValue3, position)
  flag15 = false
  textValue3 = arg1.type
  if "vault" == textValue3 then
    textValue3 = GetEntityHeading
    position = arg3
    -- Beginner: result below is heading.
    textValue3 = textValue3(position)
    position = arg2.isHacked
    if position then
      position = math
      position = position.abs
      numberValue21 = arg1.openHeading
      numberValue21 = numberValue21 - textValue3
      position = position(numberValue21)
      if position > 2.0 then
        position = SetEntityHeading
        numberValue21 = arg3
        modelValue = GetFrameTime
        modelValue = modelValue()
        modelValue = 15.0 * modelValue
        flag17 = workValue12
        flag18 = arg1.closedHeading
        flag = textValue3
        flag17 = flag17(flag18, flag)
        modelValue = modelValue * flag17
        modelValue = textValue3 - modelValue
        -- Beginner: Change the direction an entity is facing.
        position(numberValue21, modelValue)
        flag15 = true
      end
    else
      position = math
      position = position.abs
      numberValue21 = arg1.closedHeading
      numberValue21 = numberValue21 - textValue3
      position = position(numberValue21)
      if position > 2.0 then
        position = SetEntityHeading
        numberValue21 = arg3
        modelValue = GetFrameTime
        modelValue = modelValue()
        modelValue = 15.0 * modelValue
        flag17 = workValue12
        flag18 = arg1.closedHeading
        flag = textValue3
        flag17 = flag17(flag18, flag)
        modelValue = modelValue * flag17
        modelValue = textValue3 + modelValue
        position(numberValue21, modelValue)
        flag15 = true
      end
    end
  end
  if flag15 then
    textValue3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    textValue3 = textValue3()
    position = numberValue16
    textValue3 = textValue3 - position
    position = 1750
    if textValue3 > position then
      textValue3 = PlaySoundFrontend
      position = -1
      numberValue21 = "OPENING"
      modelValue = "MP_PROPERTIES_ELEVATOR_DOORS"
      flag17 = true
      textValue3(position, numberValue21, modelValue, flag17)
      textValue3 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      textValue3 = textValue3()
      numberValue16 = textValue3
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: arg1, arg2) ===
function workValue14(arg1, arg2)
  local arg3, flag15, textValue3, position, numberValue21, modelValue, flag17, flag18, flag, flag2, flag3
  arg3 = false
  flag15 = pairs
  textValue3 = arg1.doors
  flag15, textValue3, position, numberValue21 = flag15(textValue3)
  for modelValue, flag17 in flag15, textValue3, position, numberValue21 do
    flag18 = arg2.doors
    flag18 = flag18[modelValue]
    flag = flag18.isHacked
    if not flag and not arg3 then
      flag = flag18.hackingUserId
      if 0 == flag then
        flag = workValue11
        flag2 = arg1
        flag3 = flag17
        flag(flag2, flag3)
      end
      arg3 = true
    end
    flag = workValue13
    flag2 = flag17
    flag3 = flag18
    flag(flag2, flag3)
  end
  flag15 = not arg3
  return flag15
end

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1, arg2) ===
function workValue(arg1, arg2)
  local arg3, flag15, textValue3, position
  arg3 = CMG
  arg3 = arg3.isEmergencyService
  arg3 = arg3()
  if arg3 then
    return
  end
  arg3 = drawNativeNotification
  flag15 = "Press ~INPUT_CONTEXT~ to break open the safe"
  -- Beginner: Show a GTA-style notification/help prompt.
  arg3(flag15)
  arg3 = IsControlJustPressed
  flag15 = 0
  textValue3 = 51
  arg3 = arg3(flag15, textValue3)
  if arg3 then
    arg3 = TriggerServerEvent
    flag15 = "8792ec1a1b"
    textValue3 = arg1.index
    position = arg2.index
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8792ec1a1b".
    arg3(flag15, textValue3, position)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1) ===
function workValue2(arg1)
  local arg2, arg3, flag15, textValue3, position, numberValue21, modelValue, flag17, flag18, flag, flag2, flag3, flag4, numberValue, stringHelper, numberValue2, flag5, tableHelper, flag6, flag7, flag8, flag9, flag10
  arg2 = arg1.handles
  if arg2 then
    return
  end
  arg2 = fullPlayerListData
  arg3 = arg1.lootingUserId
  arg2 = arg2[arg3]
  if not arg2 then
    return
  end
  arg3 = arg2[1]
  if not arg3 then
    return
  end
  flag15 = GetPlayerFromServerId
  textValue3 = arg3
  -- Beginner: result below is playerIndex.
  flag15 = flag15(textValue3)
  if -1 == flag15 then
    return
  end
  textValue3 = GetPlayerPed
  position = flag15
  -- Beginner: result below is playerPed.
  textValue3 = textValue3(position)
  if 0 == textValue3 then
    return
  end
  position = CMG
  position = position.loadModel
  numberValue21 = -443429795
  -- Beginner: Request/load a GTA model before spawning or applying it.
  position(numberValue21)
  position = CMG
  position = position.getPlayerCoords
  -- Beginner: result below is playerCoords.
  position = position()
  numberValue21 = CreateObject
  modelValue = -443429795
  flag17 = position.x
  flag18 = position.y
  flag = position.z
  flag2 = false
  flag3 = false
  flag4 = false
  -- Beginner: result below is objectEntity.
  numberValue21 = numberValue21(modelValue, flag17, flag18, flag, flag2, flag3, flag4)
  modelValue = AttachEntityToEntity
  flag17 = numberValue21
  flag18 = textValue3
  flag = GetPedBoneIndex
  flag2 = textValue3
  flag3 = 28422
  flag = flag(flag2, flag3)
  flag2 = 0.0
  flag3 = 0.0
  flag4 = 0.0
  numberValue = 0.0
  stringHelper = 0.0
  numberValue2 = 0.0
  flag5 = true
  tableHelper = true
  flag6 = false
  flag7 = false
  flag8 = 2
  flag9 = true
  -- Beginner: Attach one entity to another entity.
  modelValue(flag17, flag18, flag, flag2, flag3, flag4, numberValue, stringHelper, numberValue2, flag5, tableHelper, flag6, flag7, flag8, flag9)
  modelValue = {}
  flag17 = "DLC_HEIST_FLEECA_SOUNDSET"
  flag18 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL"
  flag = "DLC_MPHEIST\\HEIST_FLEECA_DRILL_2"
  modelValue[1] = flag17
  modelValue[2] = flag18
  modelValue[3] = flag
  flag17 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  flag17 = flag17()
  flag18 = false
  while not flag18 do
    flag = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    flag = flag()
    flag = flag - flag17
    flag2 = 2000
    if flag > flag2 then
      break
    end
    flag18 = true
    flag = pairs
    flag2 = modelValue
    flag, flag2, flag3, flag4 = flag(flag2)
    for numberValue, stringHelper in flag, flag2, flag3, flag4 do
      numberValue2 = RequestAmbientAudioBank
      flag5 = stringHelper
      tableHelper = false
      numberValue2 = numberValue2(flag5, tableHelper)
      if not numberValue2 then
        flag18 = false
      end
    end
    flag = Citizen
    flag = flag.Wait
    flag2 = 0
    flag(flag2)
  end
  flag = GetSoundId
  -- Beginner: result below is soundHandle.
  flag = flag()
  flag2 = PlaySoundFromEntity
  flag3 = flag
  flag4 = "Drill"
  numberValue = numberValue21
  stringHelper = "DLC_HEIST_FLEECA_SOUNDSET"
  numberValue2 = false
  flag5 = 0
  flag2(flag3, flag4, numberValue, stringHelper, numberValue2, flag5)
  flag2 = CMG
  flag2 = flag2.loadPtfx
  flag3 = "core"
  flag2(flag3)
  flag2 = UseParticleFxAsset
  flag3 = "core"
  flag2(flag3)
  flag2 = StartParticleFxLoopedOnEntity
  flag3 = "ent_anim_pneumatic_drill"
  flag4 = numberValue21
  numberValue = 0.0
  stringHelper = -0.5
  numberValue2 = 0.0
  flag5 = 0.0
  tableHelper = 0.0
  flag6 = 0.0
  flag7 = 0.9
  flag8 = false
  flag9 = false
  flag10 = false
  flag2 = flag2(flag3, flag4, numberValue, stringHelper, numberValue2, flag5, tableHelper, flag6, flag7, flag8, flag9, flag10)
  flag3 = RemoveNamedPtfxAsset
  flag4 = "ent_anim_pneumatic_drill"
  flag3(flag4)
  flag3 = {}
  flag3.object = numberValue21
  flag3.soundId = flag
  flag3.particle = flag2
  arg1.handles = flag3
  flag3 = arg1.lootingUserId
  if 0 == flag3 then
    flag3 = workValue9
    flag4 = arg1
    flag3(flag4)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, flag15, textValue3, position, numberValue21, modelValue, flag17, flag18, flag, flag2, flag3, flag4, numberValue, stringHelper, numberValue2, flag5, tableHelper, flag6, flag7, flag8, flag9, flag10, numberValue9, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue17, numberValue18, flag11, flag12, numberValue19, flag13, workValue6, workValue7, flag14
  arg3 = arg2.delayStartTime
  if arg3 then
    arg3 = arg2.delayStartTime
    if 0 ~= arg3 then
      goto flow_label_9
    end
  end
  arg3 = false
  return arg3
  ::flow_label_9::
  arg3 = GetNetworkTime
  -- Beginner: result below is networkTime.
  arg3 = arg3()
  flag15 = arg2.delayStartTime
  arg3 = arg3 - flag15
  flag15 = math
  flag15 = flag15.ceil
  textValue3 = cmgCall.delayBetweenSafeLoots
  textValue3 = arg3 / textValue3
  flag15 = flag15(textValue3)
  textValue3 = nil
  position = 1.0
  numberValue21 = pairs
  modelValue = arg1.safes
  numberValue21, modelValue, flag17, flag18 = numberValue21(modelValue)
  for flag, flag2 in numberValue21, modelValue, flag17, flag18 do
    if flag > flag15 then
      flag3 = CMG
      flag3 = flag3.createTimerBars
      -- Beginner: result below is timerBars.
      flag3 = flag3()
      flag4 = flag3.push
      numberValue = "~y~FOUND SAFES"
      stringHelper = tostring
      numberValue2 = flag15
      stringHelper = stringHelper(numberValue2)
      numberValue2 = "/"
      flag5 = tostring
      tableHelper = table
      tableHelper = tableHelper.count
      flag6 = arg1.safes
      tableHelper, flag6, flag7, flag8, flag9, flag10, numberValue9, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue17, numberValue18, flag11, flag12, numberValue19, flag13, workValue6, workValue7, flag14 = tableHelper(flag6)
      flag5 = flag5(tableHelper, flag6, flag7, flag8, flag9, flag10, numberValue9, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue17, numberValue18, flag11, flag12, numberValue19, flag13, workValue6, workValue7, flag14)
      stringHelper = stringHelper .. numberValue2 .. flag5
      flag4(numberValue, stringHelper)
      flag4 = flag3.draw
      flag4()
      break
    end
    flag3 = arg2.safes
    flag3 = flag3[flag]
    flag4 = flag3.isLooted
    if not flag4 then
      flag4 = flag3.lootingUserId
      if 0 == flag4 then
        flag4 = CMG
        flag4 = flag4.getPlayerCoords
        -- Beginner: result below is playerCoords.
        flag4 = flag4()
        numberValue = flag2.position
        flag4 = flag4 - numberValue
        flag4 = #flag4
        if position > flag4 then
          textValue3 = flag2
          position = flag4
        end
        if flag4 < 10.0 then
          numberValue = DrawMarker
          stringHelper = 28
          numberValue2 = flag2.position
          numberValue2 = numberValue2.x
          flag5 = flag2.position
          flag5 = flag5.y
          tableHelper = flag2.position
          tableHelper = tableHelper.z
          flag6 = 0.0
          flag7 = 0.0
          flag8 = 0.0
          flag9 = 0.0
          flag10 = 0.0
          numberValue9 = 0.0
          numberValue11 = 0.3
          numberValue12 = 0.3
          numberValue13 = 0.3
          numberValue14 = 255
          numberValue15 = 255
          numberValue17 = 0
          numberValue18 = 40
          flag11 = false
          flag12 = false
          numberValue19 = 2
          flag13 = false
          workValue6 = nil
          workValue7 = nil
          flag14 = false
          numberValue(stringHelper, numberValue2, flag5, tableHelper, flag6, flag7, flag8, flag9, flag10, numberValue9, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, numberValue17, numberValue18, flag11, flag12, numberValue19, flag13, workValue6, workValue7, flag14)
        end
      else
        flag4 = workValue2
        numberValue = flag3
        flag4(numberValue)
      end
    end
  end
  if textValue3 then
    numberValue21 = workValue
    modelValue = arg1
    flag17 = textValue3
    numberValue21(modelValue, flag17)
  end
  numberValue21 = nil ~= textValue3
  return numberValue21
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1) ===
function workValue4(arg1)
  local arg2, arg3, flag15, textValue3
  arg3 = arg1.index
  arg2 = dataTable2
  arg2 = arg2[arg3]
  if arg2 then
    arg3 = workValue14
    flag15 = arg1
    textValue3 = arg2
    arg3 = arg3(flag15, textValue3)
    if arg3 then
      arg3 = workValue3
      flag15 = arg1
      textValue3 = arg2
      arg3(flag15, textValue3)
    end
  end
end
eventRegistration = RegisterNetEvent
textValue = "4824ef5e69"
-- Beginner: this function handles network event "4824ef5e69".

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1, arg2) ===
function workValue5(arg1, arg2)
  local arg3
  arg3 = dataTable2
  arg3[arg1] = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4824ef5e69".
eventRegistration(textValue, workValue5)
eventRegistration = RegisterNetEvent
textValue = "6f8b6da635"
-- Beginner: this function handles network event "6f8b6da635".

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1, arg2, arg3) ===
function workValue5(arg1, arg2, arg3)
  local flag15, textValue3
  flag15 = dataTable2
  flag15 = flag15[arg1]
  if flag15 then
    textValue3 = flag15.doors
    textValue3 = textValue3[arg2]
    if textValue3 then
      textValue3.hackingUserId = arg3
    end
  end
end
eventRegistration(textValue, workValue5)
eventRegistration = RegisterNetEvent
textValue = "be099ec876"
-- Beginner: this function handles network event "be099ec876".

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1, arg2, arg3) ===
function workValue5(arg1, arg2, arg3)
  local flag15, textValue3
  flag15 = dataTable2
  flag15 = flag15[arg1]
  if flag15 then
    textValue3 = flag15.doors
    textValue3 = textValue3[arg2]
    if textValue3 then
      textValue3.isHacked = true
      textValue3.hackingUserId = 0
    end
    flag15.delayStartTime = arg3
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "be099ec876".
eventRegistration(textValue, workValue5)
eventRegistration = RegisterNetEvent
textValue = "9ff6fe9b05"
-- Beginner: this function handles network event "9ff6fe9b05".

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1, arg2) ===
function workValue5(arg1, arg2)
  local arg3, flag15, textValue3, position, numberValue21
  arg3 = cmgCall.locations
  arg3 = arg3[arg1]
  arg3 = arg3.doors
  arg3 = arg3[arg2]
  flag15 = arg3.type
  if "vault" == flag15 then
    flag15 = CMG
    flag15 = flag15.hideAllDisplays
    textValue3 = "bankrob"
    flag15(textValue3)
    flag15 = SetPlayerControl
    textValue3 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    textValue3 = textValue3()
    position = false
    numberValue21 = 0
    flag15(textValue3, position, numberValue21)
    flag15 = FreezeEntityPosition
    textValue3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    textValue3 = textValue3()
    position = true
    -- Beginner: Freeze or unfreeze an entity in place.
    flag15(textValue3, position)
    flag15 = CMG
    flag15 = flag15.startDataCrackMinigame
    textValue3 = 5

    -- === HELPER FUNCTION: position(arg12) ===
    function position(arg12)
      local cmgCall2, textValue2, flag16, numberValue20
      if arg12 then
        cmgCall2 = TriggerServerEvent
        textValue2 = "a51f426b65"
        flag16 = arg1
        numberValue20 = arg2
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a51f426b65".
        cmgCall2(textValue2, flag16, numberValue20)
      else
        cmgCall2 = TriggerServerEvent
        textValue2 = "341b26095f"
        flag16 = arg1
        numberValue20 = arg2
        cmgCall2(textValue2, flag16, numberValue20)
      end
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.showAllDisplays
      textValue2 = "bankrob"
      cmgCall2(textValue2)
      cmgCall2 = SetPlayerControl
      textValue2 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      textValue2 = textValue2()
      flag16 = true
      numberValue20 = 0
      cmgCall2(textValue2, flag16, numberValue20)
      cmgCall2 = FreezeEntityPosition
      textValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      textValue2 = textValue2()
      flag16 = false
      -- Beginner: Freeze or unfreeze an entity in place.
      cmgCall2(textValue2, flag16)
    end
    flag15(textValue3, position)
  else
    flag15 = arg3.type
    if "terminal" == flag15 then
      flag15 = CMG
      flag15 = flag15.hideAllDisplays
      textValue3 = "bankrob"
      flag15(textValue3)
      flag15 = SetPlayerControl
      textValue3 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      textValue3 = textValue3()
      position = false
      numberValue21 = 0
      flag15(textValue3, position, numberValue21)
      flag15 = FreezeEntityPosition
      textValue3 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      textValue3 = textValue3()
      position = true
      -- Beginner: Freeze or unfreeze an entity in place.
      flag15(textValue3, position)
      flag15 = TriggerEvent
      textValue3 = "ultra-voltlab"
      position = 60

      -- === HELPER FUNCTION (decompiler name: numberValue21; parameters: arg12) ===
      function numberValue21(arg12)
        local cmgCall2, textValue2, flag16, numberValue20
        if 1 == arg12 then
          cmgCall2 = TriggerServerEvent
          textValue2 = "a51f426b65"
          flag16 = arg1
          numberValue20 = arg2
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a51f426b65".
          cmgCall2(textValue2, flag16, numberValue20)
        else
          cmgCall2 = TriggerServerEvent
          textValue2 = "341b26095f"
          flag16 = arg1
          numberValue20 = arg2
          cmgCall2(textValue2, flag16, numberValue20)
        end
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.showAllDisplays
        textValue2 = "bankrob"
        cmgCall2(textValue2)
        cmgCall2 = SetPlayerControl
        textValue2 = PlayerId
        -- Beginner: result below is localPlayerIndex.
        textValue2 = textValue2()
        flag16 = true
        numberValue20 = 0
        cmgCall2(textValue2, flag16, numberValue20)
        cmgCall2 = FreezeEntityPosition
        textValue2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        textValue2 = textValue2()
        flag16 = false
        -- Beginner: Freeze or unfreeze an entity in place.
        cmgCall2(textValue2, flag16)
      end
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "ultra-voltlab".
      flag15(textValue3, position, numberValue21)
    end
  end
  flag15 = CMG
  flag15 = flag15.setPlayerCombatTimer
  textValue3 = 300
  position = false
  flag15(textValue3, position)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9ff6fe9b05".
eventRegistration(textValue, workValue5)
eventRegistration = RegisterNetEvent
textValue = "36280d9b8c"
-- Beginner: this function handles network event "36280d9b8c".

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1, arg2, arg3) ===
function workValue5(arg1, arg2, arg3)
  local flag15, textValue3, position, numberValue21
  flag15 = dataTable2
  flag15 = flag15[arg1]
  if flag15 then
    textValue3 = flag15.safes
    textValue3 = textValue3[arg2]
    if textValue3 then
      textValue3.lootingUserId = arg3
      position = workValue9
      numberValue21 = textValue3
      position(numberValue21)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "36280d9b8c".
eventRegistration(textValue, workValue5)
eventRegistration = RegisterNetEvent
textValue = "8d7a05103b"
-- Beginner: this function handles network event "8d7a05103b".

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1, arg2) ===
function workValue5(arg1, arg2)
  local arg3, flag15, textValue3, position
  arg3 = dataTable2
  arg3 = arg3[arg1]
  if arg3 then
    flag15 = arg3.safes
    flag15 = flag15[arg2]
    if flag15 then
      flag15.isLooted = true
      flag15.lootingUserId = 0
      textValue3 = workValue9
      position = flag15
      textValue3(position)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8d7a05103b".
eventRegistration(textValue, workValue5)
eventRegistration = RegisterNetEvent
textValue = "8792ec1a1b"
-- Beginner: this function handles network event "8792ec1a1b".

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1, arg2) ===
function workValue5(arg1, arg2)
  local arg3, flag15, textValue3, position, numberValue21, modelValue, flag17, flag18, flag, flag2, flag3, flag4, numberValue, stringHelper, numberValue2, flag5, tableHelper, flag6, flag7, flag8
  arg3 = cmgCall.locations
  arg3 = arg3[arg1]
  arg3 = arg3.safes
  arg3 = arg3[arg2]
  flag15 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  flag15 = flag15()
  textValue3 = CMG
  textValue3 = textValue3.setWeapon
  position = flag15
  numberValue21 = -1569615261
  modelValue = true
  textValue3(position, numberValue21, modelValue)
  textValue3 = FreezeEntityPosition
  position = flag15
  numberValue21 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  textValue3(position, numberValue21)
  textValue3 = tCMG
  textValue3 = textValue3.setCanAnim
  position = false
  textValue3(position)
  textValue3 = SetPlayerControl
  position = PlayerId
  -- Beginner: result below is localPlayerIndex.
  position = position()
  numberValue21 = false
  modelValue = 0
  textValue3(position, numberValue21, modelValue)
  textValue3 = CMG
  textValue3 = textValue3.loadAnimDict
  position = "anim@heists@fleeca_bank@drilling"
  -- Beginner: Load a GTA animation dictionary before using it.
  textValue3(position)
  textValue3 = arg3.animPosition
  position = TaskPlayAnimAdvanced
  numberValue21 = flag15
  modelValue = "anim@heists@fleeca_bank@drilling"
  flag17 = "drill_straight_idle"
  flag18 = textValue3.x
  flag = textValue3.y
  flag2 = textValue3.z
  flag3 = 0.0
  flag4 = 0.0
  numberValue = textValue3.w
  stringHelper = 3.0
  numberValue2 = -4.0
  flag5 = -1
  tableHelper = 2
  flag6 = 0
  flag7 = 0
  flag8 = 0
  position(numberValue21, modelValue, flag17, flag18, flag, flag2, flag3, flag4, numberValue, stringHelper, numberValue2, flag5, tableHelper, flag6, flag7, flag8)
  position = RemoveAnimDict
  numberValue21 = "anim@heists@fleeca_bank@drilling"
  position(numberValue21)
  position = CMG
  position = position.setPlayerCombatTimer
  numberValue21 = 300
  modelValue = false
  position(numberValue21, modelValue)
  position = CMG
  position = position.startDrillingUI

  -- === HELPER FUNCTION (decompiler name: numberValue21; parameters: arg12) ===
  function numberValue21(arg12)
    local cmgCall2, textValue2, flag16, numberValue20
    if 1 == arg12 then
      cmgCall2 = TriggerServerEvent
      textValue2 = "7a0004831f"
      flag16 = arg1
      numberValue20 = arg2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7a0004831f".
      cmgCall2(textValue2, flag16, numberValue20)
    elseif 2 == arg12 then
      cmgCall2 = TriggerServerEvent
      textValue2 = "0585ae58be"
      flag16 = arg1
      numberValue20 = arg2
      cmgCall2(textValue2, flag16, numberValue20)
    elseif 3 == arg12 then
      cmgCall2 = TriggerServerEvent
      textValue2 = "0585ae58be"
      flag16 = arg1
      numberValue20 = arg2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0585ae58be".
      cmgCall2(textValue2, flag16, numberValue20)
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.stopDrillingUI
      cmgCall2()
    end
    cmgCall2 = ClearPedTasksImmediately
    textValue2 = flag15
    cmgCall2(textValue2)
    cmgCall2 = StopGameplayCamShaking
    textValue2 = true
    cmgCall2(textValue2)
    cmgCall2 = FreezeEntityPosition
    textValue2 = flag15
    flag16 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    cmgCall2(textValue2, flag16)
    cmgCall2 = tCMG
    cmgCall2 = cmgCall2.setCanAnim
    textValue2 = true
    cmgCall2(textValue2)
    cmgCall2 = SetPlayerControl
    textValue2 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    textValue2 = textValue2()
    flag16 = true
    numberValue20 = 0
    cmgCall2(textValue2, flag16, numberValue20)
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.setPlayerCombatTimer
    textValue2 = 300
    flag16 = false
    cmgCall2(textValue2, flag16)
  end
  position(numberValue21)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8792ec1a1b".
eventRegistration(textValue, workValue5)
eventRegistration = Citizen
eventRegistration = eventRegistration.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, arg3, flag15, textValue3, position, numberValue21, modelValue, flag17, flag18, flag, flag2, flag3, flag4, numberValue
  arg1 = pairs
  arg2 = cmgCall.locations
  arg1, arg2, arg3, flag15 = arg1(arg2)
  for textValue3, position in arg1, arg2, arg3, flag15 do
    numberValue21 = CMG
    numberValue21 = numberValue21.createArea
    modelValue = "bankrob_"
    flag17 = tostring
    flag18 = textValue3
    flag17 = flag17(flag18)
    modelValue = modelValue .. flag17
    flag17 = position.doors
    flag17 = flag17[1]
    flag17 = flag17.position
    flag18 = 50.0
    flag = 100.0
    flag2 = workValue8
    flag3 = workValue10
    flag4 = workValue4
    numberValue = position
    -- Beginner: Create an interaction area around a world position.
    numberValue21(modelValue, flag17, flag18, flag, flag2, flag3, flag4, numberValue)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(textValue)
eventRegistration = RegisterNetEvent
textValue = "6241081128"
-- Beginner: this function handles network event "6241081128".

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1) ===
function workValue5(arg1)
  local arg2, arg3, flag15, textValue3, position, numberValue21, modelValue, flag17, flag18, flag, flag2
  while true do
    arg2 = RequestScriptAudioBank
    arg3 = "Alarms"
    flag15 = false
    arg2 = arg2(arg3, flag15)
    if arg2 then
      break
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = GetSoundId
  -- Beginner: result below is soundHandle.
  arg2 = arg2()
  arg3 = PlaySoundFromCoord
  flag15 = arg2
  textValue3 = "Burglar_Bell"
  position = arg1.x
  numberValue21 = arg1.y
  modelValue = arg1.z
  flag17 = "Generic_Alarms"
  flag18 = false
  flag = 0.05
  flag2 = false
  arg3(flag15, textValue3, position, numberValue21, modelValue, flag17, flag18, flag, flag2)
  arg3 = Citizen
  arg3 = arg3.Wait
  flag15 = 300000
  arg3(flag15)
  arg3 = StopSound
  flag15 = arg2
  arg3(flag15)
  arg3 = ReleaseSoundId
  flag15 = arg2
  arg3(flag15)
  arg3 = ReleaseNamedScriptAudioBank
  flag15 = "Alarms"
  arg3(flag15)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6241081128".
eventRegistration(textValue, workValue5)
eventRegistration = {}
textValue = {}
workValue5 = vector2
numberValue3 = 0.21359223
numberValue4 = 0.3446602
workValue5 = workValue5(numberValue3, numberValue4)
numberValue3 = vector2
numberValue4 = 0.5048544
dataTable = 0.6359223
numberValue3 = numberValue3(numberValue4, dataTable)
numberValue4 = vector2
dataTable = 0.79611653
cmgCall3 = 0.92718446
numberValue4, dataTable, cmgCall3, numberValue5, numberValue6, numberValue7, numberValue8, numberValue10 = numberValue4(dataTable, cmgCall3)
textValue[1] = workValue5
textValue[2] = numberValue3
textValue[3] = numberValue4
textValue[4] = dataTable
textValue[5] = cmgCall3
textValue[6] = numberValue5
textValue[7] = numberValue6
textValue[8] = numberValue7
textValue[9] = numberValue8
textValue[10] = numberValue10

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1) ===
function workValue5(arg1)
  local arg2, arg3
  arg2 = BeginTextCommandScaleformString
  arg3 = "STRING"
  arg2(arg3)
  arg2 = AddTextComponentScaleform
  arg3 = arg1
  arg2(arg3)
  arg2 = EndTextCommandScaleformString
  arg2()
end

-- === HELPER FUNCTION (decompiler name: numberValue3; parameters: arg1) ===
function numberValue3(arg1)
  local arg2, arg3
  arg2 = N_0xe83a3e3557a56640
  arg3 = arg1
  arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: numberValue4; parameters: arg1) ===
function numberValue4(arg1)
  local arg2, arg3, flag15, textValue3, position, numberValue21
  arg2 = RequestScaleformMovie
  arg3 = arg1
  -- Beginner: result below is scaleformHandle.
  arg2 = arg2(arg3)
  while true do
    arg3 = HasScaleformMovieLoaded
    flag15 = arg2
    arg3 = arg3(flag15)
    if arg3 then
      break
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    flag15 = 0
    arg3(flag15)
  end
  arg3 = PushScaleformMovieFunction
  flag15 = arg2
  textValue3 = "CLEAR_ALL"
  arg3(flag15, textValue3)
  arg3 = PopScaleformMovieFunctionVoid
  arg3()
  arg3 = PushScaleformMovieFunction
  flag15 = arg2
  textValue3 = "SET_CLEAR_SPACE"
  arg3(flag15, textValue3)
  arg3 = PushScaleformMovieFunctionParameterInt
  flag15 = 200
  arg3(flag15)
  arg3 = PopScaleformMovieFunctionVoid
  arg3()
  arg3 = PushScaleformMovieFunction
  flag15 = arg2
  textValue3 = "SET_DATA_SLOT"
  arg3(flag15, textValue3)
  arg3 = PushScaleformMovieFunctionParameterInt
  flag15 = 0
  arg3(flag15)
  arg3 = numberValue3
  flag15 = GetControlInstructionalButton
  textValue3 = 2
  position = 172
  numberValue21 = true
  flag15, textValue3, position, numberValue21 = flag15(textValue3, position, numberValue21)
  arg3(flag15, textValue3, position, numberValue21)
  arg3 = workValue5
  flag15 = "Drill Forward"
  arg3(flag15)
  arg3 = PopScaleformMovieFunctionVoid
  arg3()
  arg3 = PushScaleformMovieFunction
  flag15 = arg2
  textValue3 = "SET_DATA_SLOT"
  arg3(flag15, textValue3)
  arg3 = PushScaleformMovieFunctionParameterInt
  flag15 = 1
  arg3(flag15)
  arg3 = numberValue3
  flag15 = GetControlInstructionalButton
  textValue3 = 2
  position = 173
  numberValue21 = true
  flag15, textValue3, position, numberValue21 = flag15(textValue3, position, numberValue21)
  arg3(flag15, textValue3, position, numberValue21)
  arg3 = workValue5
  flag15 = "Drill Backward"
  arg3(flag15)
  arg3 = PopScaleformMovieFunctionVoid
  arg3()
  arg3 = PushScaleformMovieFunction
  flag15 = arg2
  textValue3 = "SET_DATA_SLOT"
  arg3(flag15, textValue3)
  arg3 = PushScaleformMovieFunctionParameterInt
  flag15 = 2
  arg3(flag15)
  arg3 = numberValue3
  flag15 = GetControlInstructionalButton
  textValue3 = 2
  position = 175
  numberValue21 = true
  flag15, textValue3, position, numberValue21 = flag15(textValue3, position, numberValue21)
  arg3(flag15, textValue3, position, numberValue21)
  arg3 = workValue5
  flag15 = "Drill Faster"
  arg3(flag15)
  arg3 = PopScaleformMovieFunctionVoid
  arg3()
  arg3 = PushScaleformMovieFunction
  flag15 = arg2
  textValue3 = "SET_DATA_SLOT"
  arg3(flag15, textValue3)
  arg3 = PushScaleformMovieFunctionParameterInt
  flag15 = 3
  arg3(flag15)
  arg3 = numberValue3
  flag15 = GetControlInstructionalButton
  textValue3 = 2
  position = 174
  numberValue21 = true
  flag15, textValue3, position, numberValue21 = flag15(textValue3, position, numberValue21)
  arg3(flag15, textValue3, position, numberValue21)
  arg3 = workValue5
  flag15 = "Drill Slower"
  arg3(flag15)
  arg3 = PopScaleformMovieFunctionVoid
  arg3()
  arg3 = PushScaleformMovieFunction
  flag15 = arg2
  textValue3 = "SET_DATA_SLOT"
  arg3(flag15, textValue3)
  arg3 = PushScaleformMovieFunctionParameterInt
  flag15 = 4
  arg3(flag15)
  arg3 = numberValue3
  flag15 = GetControlInstructionalButton
  textValue3 = 2
  position = 202
  numberValue21 = true
  flag15, textValue3, position, numberValue21 = flag15(textValue3, position, numberValue21)
  arg3(flag15, textValue3, position, numberValue21)
  arg3 = workValue5
  flag15 = "Stop Drilling"
  arg3(flag15)
  arg3 = PopScaleformMovieFunctionVoid
  arg3()
  arg3 = PushScaleformMovieFunction
  flag15 = arg2
  textValue3 = "DRAW_INSTRUCTIONAL_BUTTONS"
  arg3(flag15, textValue3)
  arg3 = PopScaleformMovieFunctionVoid
  arg3()
  arg3 = PushScaleformMovieFunction
  flag15 = arg2
  textValue3 = "SET_BACKGROUND_COLOUR"
  arg3(flag15, textValue3)
  arg3 = PushScaleformMovieFunctionParameterInt
  flag15 = 0
  arg3(flag15)
  arg3 = PushScaleformMovieFunctionParameterInt
  flag15 = 0
  arg3(flag15)
  arg3 = PushScaleformMovieFunctionParameterInt
  flag15 = 0
  arg3(flag15)
  arg3 = PushScaleformMovieFunctionParameterInt
  flag15 = 80
  arg3(flag15)
  arg3 = PopScaleformMovieFunctionVoid
  arg3()
  return arg2
end
dataTable = {}
cmgCall3 = 30
numberValue5 = 31
numberValue6 = 32
numberValue7 = 33
numberValue8 = 34
numberValue10 = 35
dataTable[1] = cmgCall3
dataTable[2] = numberValue5
dataTable[3] = numberValue6
dataTable[4] = numberValue7
dataTable[5] = numberValue8
dataTable[6] = numberValue10
eventRegistration.DisabledControls = dataTable

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg1) ===
function dataTable(arg1)
  local arg2, arg3
  arg2 = eventRegistration.Active
  if not arg2 then
    eventRegistration.Active = true
    arg2 = eventRegistration.Pause
    if not arg2 then
      arg2 = eventRegistration.Init
      arg2()
    end
    arg2 = eventRegistration.Update
    arg3 = arg1
    arg2(arg3)
  end
end
eventRegistration.Start = dataTable

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
function dataTable()
  local arg1, arg2
  arg1 = eventRegistration.Active
  if arg1 then
    eventRegistration.Active = false
    eventRegistration.Result = 3
    eventRegistration.Pause = true
  end
end
eventRegistration.Stop = dataTable

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
function dataTable()
  local arg1, arg2, arg3
  arg1 = eventRegistration.Scaleform
  if arg1 then
    arg1 = SetScaleformMovieAsNoLongerNeeded
    arg2 = eventRegistration.Scaleform
    arg1(arg2)
  end
  arg1 = RequestScaleformMovie
  arg2 = "VAULT_DRILL"
  -- Beginner: result below is scaleformHandle.
  arg1 = arg1(arg2)
  eventRegistration.Scaleform = arg1
  while true do
    arg1 = HasScaleformMovieLoaded
    arg2 = eventRegistration.Scaleform
    arg1 = arg1(arg2)
    if arg1 then
      break
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 0
    arg1(arg2)
  end
  eventRegistration.DrillSpeed = 0.0
  eventRegistration.DrillPos = 0.0
  eventRegistration.DrillTemp = 0.0
  eventRegistration.HoleDepth = 0.0
  arg1 = PushScaleformMovieFunction
  arg2 = eventRegistration.Scaleform
  arg3 = "REVEAL"
  arg1(arg2, arg3)
  arg1 = PopScaleformMovieFunctionVoid
  arg1()
  arg1 = PushScaleformMovieFunction
  arg2 = eventRegistration.Scaleform
  arg3 = "SET_SPEED"
  arg1(arg2, arg3)
  arg1 = PushScaleformMovieFunctionParameterFloat
  arg2 = 0.0
  arg1(arg2)
  arg1 = PopScaleformMovieFunctionVoid
  arg1()
  arg1 = PushScaleformMovieFunction
  arg2 = eventRegistration.Scaleform
  arg3 = "SET_DRILL_POSITION"
  arg1(arg2, arg3)
  arg1 = PushScaleformMovieFunctionParameterFloat
  arg2 = 0.0
  arg1(arg2)
  arg1 = PopScaleformMovieFunctionVoid
  arg1()
  arg1 = PushScaleformMovieFunction
  arg2 = eventRegistration.Scaleform
  arg3 = "SET_TEMPERATURE"
  arg1(arg2, arg3)
  arg1 = PushScaleformMovieFunctionParameterFloat
  arg2 = 0.0
  arg1(arg2)
  arg1 = PopScaleformMovieFunctionVoid
  arg1()
  arg1 = PushScaleformMovieFunction
  arg2 = eventRegistration.Scaleform
  arg3 = "SET_HOLE_DEPTH"
  arg1(arg2, arg3)
  arg1 = PushScaleformMovieFunctionParameterFloat
  arg2 = 0.0
  arg1(arg2)
  arg1 = PopScaleformMovieFunctionVoid
  arg1()
  arg1 = PushScaleformMovieFunction
  arg2 = eventRegistration.Scaleform
  arg3 = "SET_NUM_DISCS"
  arg1(arg2, arg3)
  arg1 = PushScaleformMovieFunctionParameterInt
  arg2 = 3
  arg1(arg2)
  arg1 = PopScaleformMovieFunctionVoid
  arg1()
end
eventRegistration.Init = dataTable

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg1) ===
function dataTable(arg1)
  local arg2, arg3, flag15, textValue3, position, numberValue21, modelValue, flag17
  arg2 = numberValue4
  arg3 = "instructional_buttons"
  arg2 = arg2(arg3)
  while true do
    arg3 = eventRegistration.Active
    if not arg3 then
      break
    end
    arg3 = eventRegistration.Draw
    arg3()
    arg3 = eventRegistration.DisableControls
    arg3()
    arg3 = eventRegistration.HandleControls
    arg3()
    arg3 = DrawScaleformMovieFullscreen
    flag15 = arg2
    textValue3 = 255
    position = 255
    numberValue21 = 255
    modelValue = 255
    flag17 = 0
    arg3(flag15, textValue3, position, numberValue21, modelValue, flag17)
    arg3 = Wait
    flag15 = 0
    arg3(flag15)
  end
  arg3 = arg1
  flag15 = eventRegistration.Result
  arg3(flag15)
end
eventRegistration.Update = dataTable

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
function dataTable()
  local arg1, arg2, arg3, flag15, textValue3, position, numberValue21
  arg1 = DrawScaleformMovieFullscreen
  arg2 = eventRegistration.Scaleform
  arg3 = 255
  flag15 = 255
  textValue3 = 255
  position = 255
  numberValue21 = 255
  arg1(arg2, arg3, flag15, textValue3, position, numberValue21)
end
eventRegistration.Draw = dataTable

-- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
function dataTable()
  local arg1, arg2, arg3, flag15, textValue3, position, numberValue21, modelValue
  arg1 = pairs
  arg2 = textValue
  arg1, arg2, arg3, flag15 = arg1(arg2)
  for textValue3, position in arg1, arg2, arg3, flag15 do
    numberValue21 = eventRegistration.DrillPos
    modelValue = position.x
    if numberValue21 >= modelValue then
      numberValue21 = eventRegistration.DrillPos
      modelValue = position.y
      if numberValue21 <= modelValue then
        numberValue21 = true
        return numberValue21
      end
    end
  end
  arg1 = false
  return arg1
end

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, arg3, flag15, textValue3, position, numberValue21, modelValue, flag17, flag18
  arg1 = eventRegistration.DrillPos
  arg2 = IsDisabledControlJustPressed
  arg3 = 0
  flag15 = 172
  arg2 = arg2(arg3, flag15)
  if arg2 then
    arg2 = math
    arg2 = arg2.min
    arg3 = 1.0
    flag15 = eventRegistration.DrillPos
    flag15 = flag15 + 0.01
    arg2 = arg2(arg3, flag15)
    eventRegistration.DrillPos = arg2
  else
    arg2 = IsDisabledControlPressed
    arg3 = 0
    flag15 = 172
    arg2 = arg2(arg3, flag15)
    if arg2 then
      arg2 = math
      arg2 = arg2.min
      arg3 = 1.0
      flag15 = eventRegistration.DrillPos
      textValue3 = GetFrameTime
      textValue3 = textValue3()
      textValue3 = 0.1 * textValue3
      position = math
      position = position.max
      numberValue21 = 0.1
      modelValue = eventRegistration.DrillTemp
      position = position(numberValue21, modelValue)
      position = position * 10
      textValue3 = textValue3 / position
      flag15 = flag15 + textValue3
      arg2 = arg2(arg3, flag15)
      eventRegistration.DrillPos = arg2
    else
      arg2 = IsDisabledControlJustPressed
      arg3 = 0
      flag15 = 173
      arg2 = arg2(arg3, flag15)
      if arg2 then
        arg2 = math
        arg2 = arg2.max
        arg3 = 0.0
        flag15 = eventRegistration.DrillPos
        flag15 = flag15 - 0.01
        arg2 = arg2(arg3, flag15)
        eventRegistration.DrillPos = arg2
      else
        arg2 = IsDisabledControlPressed
        arg3 = 0
        flag15 = 173
        arg2 = arg2(arg3, flag15)
        if arg2 then
          arg2 = math
          arg2 = arg2.max
          arg3 = 0.0
          flag15 = eventRegistration.DrillPos
          textValue3 = GetFrameTime
          textValue3 = textValue3()
          textValue3 = 0.1 * textValue3
          flag15 = flag15 - textValue3
          arg2 = arg2(arg3, flag15)
          eventRegistration.DrillPos = arg2
        end
      end
    end
  end
  arg2 = eventRegistration.DrillSpeed
  arg3 = IsDisabledControlJustPressed
  flag15 = 0
  textValue3 = 175
  arg3 = arg3(flag15, textValue3)
  if arg3 then
    arg3 = math
    arg3 = arg3.min
    flag15 = 1.0
    textValue3 = eventRegistration.DrillSpeed
    textValue3 = textValue3 + 0.05
    arg3 = arg3(flag15, textValue3)
    eventRegistration.DrillSpeed = arg3
  else
    arg3 = IsDisabledControlPressed
    flag15 = 0
    textValue3 = 175
    arg3 = arg3(flag15, textValue3)
    if arg3 then
      arg3 = math
      arg3 = arg3.min
      flag15 = 1.0
      textValue3 = eventRegistration.DrillSpeed
      position = GetFrameTime
      position = position()
      position = 0.5 * position
      textValue3 = textValue3 + position
      arg3 = arg3(flag15, textValue3)
      eventRegistration.DrillSpeed = arg3
    else
      arg3 = IsControlJustPressed
      flag15 = 0
      textValue3 = 174
      arg3 = arg3(flag15, textValue3)
      if arg3 then
        arg3 = math
        arg3 = arg3.max
        flag15 = 0.0
        textValue3 = eventRegistration.DrillSpeed
        textValue3 = textValue3 - 0.05
        arg3 = arg3(flag15, textValue3)
        eventRegistration.DrillSpeed = arg3
      else
        arg3 = IsDisabledControlPressed
        flag15 = 0
        textValue3 = 174
        arg3 = arg3(flag15, textValue3)
        if arg3 then
          arg3 = math
          arg3 = arg3.max
          flag15 = 0.0
          textValue3 = eventRegistration.DrillSpeed
          position = GetFrameTime
          position = position()
          position = 0.5 * position
          textValue3 = textValue3 - position
          arg3 = arg3(flag15, textValue3)
          eventRegistration.DrillSpeed = arg3
        end
      end
    end
  end
  arg3 = IsDisabledControlJustPressed
  flag15 = 0
  textValue3 = 202
  arg3 = arg3(flag15, textValue3)
  if arg3 then
    eventRegistration.Active = false
    eventRegistration.Result = 3
  end
  arg3 = eventRegistration.DrillTemp
  flag15 = eventRegistration.DrillPos
  if arg1 < flag15 then
    flag15 = eventRegistration.DrillSpeed
    textValue3 = 0.4
    if flag15 > textValue3 then
      flag15 = dataTable
      flag15 = flag15()
      if flag15 then
        flag15 = math
        flag15 = flag15.min
        textValue3 = 1.0
        position = eventRegistration.DrillTemp
        numberValue21 = GetFrameTime
        numberValue21 = numberValue21()
        numberValue21 = 0.05 * numberValue21
        modelValue = eventRegistration.DrillSpeed
        modelValue = modelValue * 10
        numberValue21 = numberValue21 * modelValue
        position = position + numberValue21
        flag15 = flag15(textValue3, position)
        eventRegistration.DrillTemp = flag15
      end
      flag15 = PushScaleformMovieFunction
      textValue3 = eventRegistration.Scaleform
      position = "SET_DRILL_POSITION"
      flag15(textValue3, position)
      flag15 = PushScaleformMovieFunctionParameterFloat
      textValue3 = eventRegistration.DrillPos
      flag15(textValue3)
      flag15 = PopScaleformMovieFunctionVoid
      flag15()
    else
      flag15 = eventRegistration.DrillPos
      textValue3 = 0.1
      if not (flag15 < textValue3) then
        flag15 = eventRegistration.DrillPos
        textValue3 = eventRegistration.HoleDepth
        if not (flag15 < textValue3) then
          goto flow_label_211
        end
      end
      flag15 = PushScaleformMovieFunction
      textValue3 = eventRegistration.Scaleform
      position = "SET_DRILL_POSITION"
      flag15(textValue3, position)
      flag15 = PushScaleformMovieFunctionParameterFloat
      textValue3 = eventRegistration.DrillPos
      flag15(textValue3)
      flag15 = PopScaleformMovieFunctionVoid
      flag15()
      goto flow_label_269
      ::flow_label_211::
      eventRegistration.DrillPos = arg1
      flag15 = dataTable
      flag15 = flag15()
      if flag15 then
        flag15 = math
        flag15 = flag15.min
        textValue3 = 1.0
        position = eventRegistration.DrillTemp
        numberValue21 = GetFrameTime
        numberValue21 = numberValue21()
        numberValue21 = 0.01 * numberValue21
        position = position + numberValue21
        flag15 = flag15(textValue3, position)
        eventRegistration.DrillTemp = flag15
      end
    end
  else
    flag15 = eventRegistration.DrillPos
    textValue3 = eventRegistration.HoleDepth
    if flag15 < textValue3 then
      flag15 = math
      flag15 = flag15.max
      textValue3 = 0.0
      position = eventRegistration.DrillTemp
      numberValue21 = GetFrameTime
      numberValue21 = numberValue21()
      numberValue21 = 0.05 * numberValue21
      modelValue = math
      modelValue = modelValue.max
      flag17 = 0.005
      flag18 = eventRegistration.DrillSpeed
      flag18 = flag18 * 10
      flag18 = flag18 / 2
      modelValue = modelValue(flag17, flag18)
      numberValue21 = numberValue21 * modelValue
      position = position - numberValue21
      flag15 = flag15(textValue3, position)
      eventRegistration.DrillTemp = flag15
    end
    flag15 = eventRegistration.DrillPos
    textValue3 = eventRegistration.HoleDepth
    if flag15 ~= textValue3 then
      flag15 = PushScaleformMovieFunction
      textValue3 = eventRegistration.Scaleform
      position = "SET_DRILL_POSITION"
      flag15(textValue3, position)
      flag15 = PushScaleformMovieFunctionParameterFloat
      textValue3 = eventRegistration.DrillPos
      flag15(textValue3)
      flag15 = PopScaleformMovieFunctionVoid
      flag15()
    end
  end
  ::flow_label_269::
  flag15 = eventRegistration.DrillSpeed
  if arg2 ~= flag15 then
    flag15 = PushScaleformMovieFunction
    textValue3 = eventRegistration.Scaleform
    position = "SET_SPEED"
    flag15(textValue3, position)
    flag15 = PushScaleformMovieFunctionParameterFloat
    textValue3 = eventRegistration.DrillSpeed
    flag15(textValue3)
    flag15 = PopScaleformMovieFunctionVoid
    flag15()
  end
  flag15 = eventRegistration.DrillTemp
  if arg3 ~= flag15 then
    flag15 = PushScaleformMovieFunction
    textValue3 = eventRegistration.Scaleform
    position = "SET_TEMPERATURE"
    flag15(textValue3, position)
    flag15 = PushScaleformMovieFunctionParameterFloat
    textValue3 = eventRegistration.DrillTemp
    flag15(textValue3)
    flag15 = PopScaleformMovieFunctionVoid
    flag15()
  end
  flag15 = eventRegistration.DrillTemp
  if flag15 >= 1.0 then
    eventRegistration.Result = 2
    eventRegistration.Active = false
    eventRegistration.Pause = false
    flag15 = PushScaleformMovieFunction
    textValue3 = eventRegistration.Scaleform
    position = "RESET"
    flag15(textValue3, position)
    flag15 = PopScaleformMovieFunctionVoid
    flag15()
  else
    flag15 = eventRegistration.DrillPos
    if flag15 >= 1.0 then
      eventRegistration.Result = 1
      eventRegistration.Active = false
      eventRegistration.Pause = false
      flag15 = PushScaleformMovieFunction
      textValue3 = eventRegistration.Scaleform
      position = "RESET"
      flag15(textValue3, position)
      flag15 = PopScaleformMovieFunctionVoid
      flag15()
    end
  end
  flag15 = eventRegistration.DrillPos
  textValue3 = eventRegistration.HoleDepth
  if flag15 > textValue3 then
    flag15 = eventRegistration.DrillPos
    if flag15 then
      goto flow_label_326
    end
  end
  flag15 = eventRegistration.HoleDepth
  ::flow_label_326::
  eventRegistration.HoleDepth = flag15
end
eventRegistration.HandleControls = cmgCall3

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, arg3, flag15, textValue3, position, numberValue21, modelValue, flag17, flag18
  arg1 = ipairs
  arg2 = eventRegistration.DisabledControls
  arg1, arg2, arg3, flag15 = arg1(arg2)
  for textValue3, position in arg1, arg2, arg3, flag15 do
    numberValue21 = DisableControlAction
    modelValue = 0
    flag17 = position
    flag18 = true
    numberValue21(modelValue, flag17, flag18)
  end
end
eventRegistration.DisableControls = cmgCall3

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, arg3, flag15, textValue3, position, numberValue21, modelValue, flag17, flag18
  arg1 = ipairs
  arg2 = eventRegistration.DisabledControls
  arg1, arg2, arg3, flag15 = arg1(arg2)
  for textValue3, position in arg1, arg2, arg3, flag15 do
    numberValue21 = DisableControlAction
    modelValue = 0
    flag17 = position
    flag18 = true
    numberValue21(modelValue, flag17, flag18)
  end
end
eventRegistration.EnableControls = cmgCall3
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue5; parameters: arg1) ===
function numberValue5(arg1)
  local arg2, arg3
  arg2 = Citizen
  arg2 = arg2.CreateThread

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local arg12, cmgCall2
    arg12 = eventRegistration.Start
    cmgCall2 = arg1
    arg12(cmgCall2)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end
cmgCall3.startDrillingUI = numberValue5
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue5; parameters: none) ===
function numberValue5()
  local arg1, arg2
  arg1 = Citizen
  arg1 = arg1.CreateThread

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local arg12, cmgCall2
    arg12 = eventRegistration.Stop
    arg12()
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end
cmgCall3.stopDrillingUI = numberValue5
