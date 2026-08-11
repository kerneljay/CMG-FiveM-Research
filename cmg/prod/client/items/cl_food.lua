--[[
    LEVEL 1 BEGINNER GUIDE — Food
    ==================================

    File: cmg/prod/client/items/cl_food.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: usable inventory item behaviour, specifically the Food feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 21
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
local cmgCall, textValue2, numberValue4, numberValue5, numberValue6, textValue3, workValue8, cmgCall5, workValue9, workValue10, cmgCall2, cmgCall3, workValue, workValue2, eventRegistration, textValue, workValue4
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue2 = "cfg/cfg_food"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue2)
textValue2 = 50
numberValue4 = 50
numberValue5 = 0.5555555555555556
numberValue6 = 0.4166666666666667
textValue3 = "cmg_always_food_thirst"

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, arg2
  arg1 = GetResourceKvpInt
  arg2 = textValue3
  arg1 = arg1(arg2)
  arg1 = 1 == arg1
  return arg1
end
cmgCall5 = CMG

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2
  arg1 = workValue8
  return arg1()
end
cmgCall5.getClientAlwaysFoodThirstHudPreference = workValue9
cmgCall5 = CMG

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.isClientClockedOnOrganisation
  arg1 = arg1()
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.isEmergencyService
    arg1 = arg1()
  end
  return arg1
end
cmgCall5.isFoodThirstForcedByRole = workValue9
cmgCall5 = CMG

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.isFoodThirstForcedByRole
  arg1 = arg1()
  if not arg1 then
    arg1 = workValue8
    arg1 = arg1()
  end
  return arg1
end
cmgCall5.isFoodEnabled = workValue9
cmgCall5 = false

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2, arg3
  arg1 = cmgCall5
  if not arg1 then
    return
  end
  arg1 = false
  cmgCall5 = arg1
  arg1 = ClearTimecycleModifier
  arg1()
  arg1 = ShakeGameplayCam
  arg2 = "SMALL_EXPLOSION_SHAKE"
  arg3 = 0.0
  arg1(arg2, arg3)
  arg1 = ResetPedMovementClipset
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = 0
  arg1(arg2, arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
function workValue10()
  local arg1, arg2, arg3, cmgCall4
  arg1 = CMG
  arg1 = arg1.isFoodEnabled
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.sendHudNuiMessage
  arg3 = "SET_BAR_VISIBILITY"
  cmgCall4 = {}
  cmgCall4.type = "hunger"
  cmgCall4.value = arg1
  arg2(arg3, cmgCall4)
  arg2 = CMG
  arg2 = arg2.sendHudNuiMessage
  arg3 = "SET_BAR_VISIBILITY"
  cmgCall4 = {}
  cmgCall4.type = "thirst"
  cmgCall4.value = arg1
  arg2(arg3, cmgCall4)
  if not arg1 then
    arg2 = workValue9
    arg2()
  end
end
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1) ===
function cmgCall3(arg1)
  local arg2, arg3, cmgCall4, numberValue7
  arg2 = true == arg1 or 1 == arg1
  arg3 = SetResourceKvpInt
  cmgCall4 = textValue3
  if arg2 then
    numberValue7 = 1
    if numberValue7 then
      goto flow_label_15
    end
  end
  numberValue7 = 0
  ::flow_label_15::
  arg3(cmgCall4, numberValue7)
  arg3 = workValue10
  arg3()
end
cmgCall2.setClientAlwaysFoodThirstFromHud = cmgCall3
cmgCall2 = AddEventHandler
cmgCall3 = "b51e08118b"
workValue = workValue10
-- Beginner: Register a client-side event handler. Event/command: "b51e08118b".
cmgCall2(cmgCall3, workValue)
cmgCall2 = AddEventHandler
cmgCall3 = "f7b3a54a8f"
workValue = workValue10
cmgCall2(cmgCall3, workValue)
cmgCall2 = AddEventHandler
cmgCall3 = "e892eba4b7"
workValue = workValue10
-- Beginner: Register a client-side event handler. Event/command: "e892eba4b7".
cmgCall2(cmgCall3, workValue)
cmgCall2 = AddEventHandler
cmgCall3 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1, arg2, arg3) ===
function workValue(arg1, arg2, arg3)
  local cmgCall4, numberValue7
  while true do
    cmgCall4 = CMG
    cmgCall4 = cmgCall4.isHudLoaded
    cmgCall4 = cmgCall4()
    if cmgCall4 then
      break
    end
    cmgCall4 = Wait
    numberValue7 = 0
    cmgCall4(numberValue7)
  end
  if arg3 then
    cmgCall4 = workValue10
    cmgCall4()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgCall2(cmgCall3, workValue)
cmgCall2 = RegisterNetEvent
cmgCall3 = "3cb2982220"
-- Beginner: this function handles network event "3cb2982220".

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1, arg2) ===
function workValue(arg1, arg2)
  textValue2 = arg1
  numberValue4 = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3cb2982220".
cmgCall2(cmgCall3, workValue)
cmgCall2 = CMG
-- Beginner: this function handles network event "3cb2982220".

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2
  arg1 = textValue2
  return arg1
end
cmgCall2.getHunger = cmgCall3
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2
  arg1 = numberValue4
  return arg1
end
cmgCall2.getHydration = cmgCall3
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1) ===
function cmgCall3(arg1)
  local arg2, arg3, cmgCall4, numberValue7
  arg2 = Clamp
  arg3 = arg1
  cmgCall4 = 0
  numberValue7 = 100
  arg2 = arg2(arg3, cmgCall4, numberValue7)
  textValue2 = arg2
end
cmgCall2.setHunger = cmgCall3
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1) ===
function cmgCall3(arg1)
  local arg2, arg3, cmgCall4, numberValue7
  arg2 = Clamp
  arg3 = arg1
  cmgCall4 = 0
  numberValue7 = 100
  arg2 = arg2(arg3, cmgCall4, numberValue7)
  numberValue4 = arg2
end
cmgCall2.setHydration = cmgCall3
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1) ===
function cmgCall3(arg1)
  local arg2, arg3
  arg2 = CMG
  arg2 = arg2.setHunger
  arg3 = textValue2
  arg3 = arg3 + arg1
  arg2(arg3)
end
cmgCall2.addHunger = cmgCall3
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1) ===
function cmgCall3(arg1)
  local arg2, arg3
  arg2 = CMG
  arg2 = arg2.setHydration
  arg3 = numberValue4
  arg3 = arg3 + arg1
  arg2(arg3)
end
cmgCall2.addHydration = cmgCall3
cmgCall2 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, arg3, cmgCall4
  while true do
    arg1 = CMG
    arg1 = arg1.isFoodEnabled
    arg1 = arg1()
    if arg1 then
      arg1 = CMG
      arg1 = arg1.isStaffedOnClient
      arg1 = arg1()
      if not arg1 then
        arg1 = CMG
        arg1 = arg1.addHydration
        arg2 = numberValue5
        arg2 = -arg2
        arg1(arg2)
        arg1 = CMG
        arg1 = arg1.addHunger
        arg2 = numberValue6
        arg2 = -arg2
        arg1(arg2)
        arg1 = TriggerServerEvent
        arg2 = "3772ce2897"
        arg3 = textValue2
        cmgCall4 = numberValue4
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3772ce2897".
        arg1(arg2, arg3, cmgCall4)
      end
    end
    arg1 = Wait
    arg2 = 60000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall2(cmgCall3)
cmgCall2 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, arg3, cmgCall4
  while true do
    arg1 = CMG
    arg1 = arg1.isFoodEnabled
    arg1 = arg1()
    if arg1 then
      arg1 = CMG
      arg1 = arg1.isStaffedOnClient
      arg1 = arg1()
      if not arg1 then
        arg1 = textValue2
        if not (arg1 <= 1) then
          arg1 = numberValue4
          if not (arg1 <= 1) then
            goto flow_label_36
          end
        end
        arg1 = true
        cmgCall5 = arg1
        arg1 = SetTimecycleModifier
        arg2 = "spectator5"
        arg1(arg2)
        arg1 = SetTimecycleModifierStrength
        arg2 = 0.4
        arg1(arg2)
        arg1 = ShakeGameplayCam
        arg2 = "SMALL_EXPLOSION_SHAKE"
        arg3 = 0.03
        arg1(arg2, arg3)
        arg1 = SetPedMovementClipset
        arg2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg2 = arg2()
        arg3 = "move_m@sad@c"
        cmgCall4 = 0.2
        arg1(arg2, arg3, cmgCall4)
        goto flow_label_47
        ::flow_label_36::
        arg1 = textValue2
        if arg1 > 1 then
          arg1 = numberValue4
          if arg1 > 1 then
            arg1 = workValue9
            arg1()
          end
        end
    end
    else
      arg1 = workValue9
      arg1()
    end
    ::flow_label_47::
    arg1 = Wait
    arg2 = 2000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall2(cmgCall3)

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1, arg2, arg3) ===
function cmgCall2(arg1, arg2, arg3)
  local cmgCall4, numberValue7, textValue4, hashValue, cmgCall6
  cmgCall4 = CMG
  cmgCall4 = cmgCall4.requestEntitySpawn
  numberValue7 = arg1
  textValue4 = "_"
  hashValue = GetHashKey
  cmgCall6 = arg2
  -- Beginner: result below is hash.
  hashValue = hashValue(cmgCall6)
  numberValue7 = numberValue7 .. textValue4 .. hashValue
  textValue4 = arg3
  cmgCall4(numberValue7, textValue4)
end

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1) ===
function cmgCall3(arg1)
  local arg2, arg3, cmgCall4, numberValue7, textValue4, hashValue, cmgCall6, textValue5, numberValue8, numberValue, numberValue2, flag, flag2, flag3, workValue3, workValue5, workValue6, workValue7, flag4, flag5, flag6, flag7, numberValue3, flag8
  arg2 = arg1.vending
  if arg2 then
    arg3 = arg2.anim
    if arg3 then
      arg3 = arg2.prop
      if arg3 then
        goto flow_label_11
      end
    end
  end
  return
  ::flow_label_11::
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  cmgCall4 = arg2.anim
  cmgCall4 = cmgCall4.dict
  numberValue7 = arg2.anim
  numberValue7 = numberValue7.clip
  textValue4 = type
  hashValue = arg2.prop
  hashValue = hashValue.model
  textValue4 = textValue4(hashValue)
  if "string" == textValue4 then
    textValue4 = GetHashKey
    hashValue = arg2.prop
    hashValue = hashValue.model
    -- Beginner: result below is hash.
    textValue4 = textValue4(hashValue)
    if textValue4 then
      goto flow_label_31
    end
  end
  textValue4 = arg2.prop
  textValue4 = textValue4.model
  ::flow_label_31::
  hashValue = CMG
  hashValue = hashValue.getPlayerCoords
  -- Beginner: result below is playerCoords.
  hashValue = hashValue()
  cmgCall6 = CMG
  cmgCall6 = cmgCall6.requestEntitySpawn
  textValue5 = "vending_pickup"
  numberValue8 = textValue4
  numberValue = hashValue
  cmgCall6(textValue5, numberValue8, numberValue)
  cmgCall6 = CMG
  cmgCall6 = cmgCall6.loadAnimDict
  textValue5 = cmgCall4
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgCall6(textValue5)
  cmgCall6 = CMG
  cmgCall6 = cmgCall6.loadModel
  textValue5 = textValue4
  -- Beginner: Request/load a GTA model before spawning or applying it.
  cmgCall6(textValue5)
  cmgCall6 = CreateObject
  textValue5 = textValue4
  numberValue8 = 0
  numberValue = 0
  numberValue2 = 0
  flag = true
  flag2 = true
  flag3 = false
  -- Beginner: result below is objectEntity.
  cmgCall6 = cmgCall6(textValue5, numberValue8, numberValue, numberValue2, flag, flag2, flag3)
  textValue5 = arg2.prop
  textValue5 = textValue5.bone
  if not textValue5 then
    textValue5 = 18905
  end
  numberValue8 = AttachEntityToEntity
  numberValue = cmgCall6
  numberValue2 = arg3
  flag = GetPedBoneIndex
  flag2 = arg3
  flag3 = textValue5
  flag = flag(flag2, flag3)
  flag2 = arg2.prop
  flag2 = flag2.pos
  flag2 = flag2.x
  flag3 = arg2.prop
  flag3 = flag3.pos
  flag3 = flag3.y
  workValue3 = arg2.prop
  workValue3 = workValue3.pos
  workValue3 = workValue3.z
  workValue5 = arg2.prop
  workValue5 = workValue5.rot
  workValue5 = workValue5.x
  workValue6 = arg2.prop
  workValue6 = workValue6.rot
  workValue6 = workValue6.y
  workValue7 = arg2.prop
  workValue7 = workValue7.rot
  workValue7 = workValue7.z
  flag4 = true
  flag5 = true
  flag6 = false
  flag7 = true
  numberValue3 = 1
  flag8 = true
  -- Beginner: Attach one entity to another entity.
  numberValue8(numberValue, numberValue2, flag, flag2, flag3, workValue3, workValue5, workValue6, workValue7, flag4, flag5, flag6, flag7, numberValue3, flag8)
  numberValue8 = TaskPlayAnim
  numberValue = arg3
  numberValue2 = cmgCall4
  flag = numberValue7
  flag2 = 8.0
  flag3 = -8.0
  workValue3 = arg2.usetime
  if not workValue3 then
    workValue3 = 2500
  end
  workValue5 = 49
  workValue6 = 0
  workValue7 = false
  flag4 = false
  flag5 = false
  -- Beginner: Play an animation on a ped.
  numberValue8(numberValue, numberValue2, flag, flag2, flag3, workValue3, workValue5, workValue6, workValue7, flag4, flag5)
  numberValue8 = Citizen
  numberValue8 = numberValue8.Wait
  numberValue = arg2.usetime
  if not numberValue then
    numberValue = 2500
  end
  numberValue8(numberValue)
  numberValue8 = DeleteEntity
  numberValue = cmgCall6
  -- Beginner: Delete a GTA entity.
  numberValue8(numberValue)
  numberValue8 = RemoveAnimDict
  numberValue = cmgCall4
  numberValue8(numberValue)
end
workValue = false

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1) ===
function workValue2(arg1)
  local arg2, arg3, cmgCall4, numberValue7, textValue4, hashValue, cmgCall6, textValue5, numberValue8, numberValue, numberValue2, flag
  arg2 = workValue
  if arg2 then
    arg2 = 0
    arg3 = 0
    return arg2, arg3
  end
  arg2 = true
  workValue = arg2
  arg2 = tCMG
  arg2 = arg2.setCanAnim
  arg3 = false
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = cmgCall.food
  arg3 = arg3[arg1]
  if not arg3 then
    cmgCall4 = tCMG
    cmgCall4 = cmgCall4.setCanAnim
    numberValue7 = true
    cmgCall4(numberValue7)
    cmgCall4 = false
    workValue = cmgCall4
    cmgCall4 = TriggerServerEvent
    numberValue7 = "f675f1a973"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f675f1a973".
    cmgCall4(numberValue7)
    cmgCall4 = 0
    numberValue7 = 0
    return cmgCall4, numberValue7
  end
  cmgCall4 = arg3.vending
  if cmgCall4 then
    cmgCall4 = cmgCall3
    numberValue7 = arg3
    cmgCall4(numberValue7)
  else
    cmgCall4 = type
    numberValue7 = arg3.props
    cmgCall4 = cmgCall4(numberValue7)
    if "table" == cmgCall4 then
      cmgCall4 = ipairs
      numberValue7 = arg3.props
      cmgCall4, numberValue7, textValue4, hashValue = cmgCall4(numberValue7)
      for cmgCall6, textValue5 in cmgCall4, numberValue7, textValue4, hashValue do
        numberValue8 = cmgCall2
        numberValue = arg1
        numberValue2 = textValue5
        flag = arg2
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        numberValue8(numberValue, numberValue2, flag)
      end
    end
    cmgCall4 = arg3.use
    if cmgCall4 then
      numberValue7 = cmgCall4.res
      if numberValue7 then
        numberValue7 = cmgCall4.fn
        if numberValue7 then
          numberValue7 = exports
          textValue4 = cmgCall4.res
          numberValue7 = numberValue7[textValue4]
          if numberValue7 then
            numberValue7 = exports
            textValue4 = cmgCall4.res
            numberValue7 = numberValue7[textValue4]
            textValue4 = cmgCall4.fn
            numberValue7 = numberValue7[textValue4]
            if numberValue7 then
              numberValue7 = exports
              textValue4 = cmgCall4.res
              numberValue7 = numberValue7[textValue4]
              textValue4 = cmgCall4.fn
              numberValue7 = numberValue7[textValue4]
              numberValue7()
            end
          end
        end
      end
    end
  end
  cmgCall4 = tonumber
  numberValue7 = arg3.hunger
  cmgCall4 = cmgCall4(numberValue7)
  if not cmgCall4 then
    cmgCall4 = 0
  end
  numberValue7 = tonumber
  textValue4 = arg3.hydration
  numberValue7 = numberValue7(textValue4)
  if not numberValue7 then
    numberValue7 = 0
  end
  textValue4 = tCMG
  textValue4 = textValue4.setCanAnim
  hashValue = true
  textValue4(hashValue)
  textValue4 = false
  workValue = textValue4
  textValue4 = TriggerServerEvent
  hashValue = "f675f1a973"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f675f1a973".
  textValue4(hashValue)
  textValue4 = cmgCall4
  hashValue = numberValue7
  return textValue4, hashValue
end
eventRegistration = RegisterNetEvent
textValue = "c82f62b8de"
-- Beginner: this function handles network event "c82f62b8de".

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1) ===
function workValue4(arg1)
  local arg2, arg3, cmgCall4, numberValue7
  arg2 = workValue2
  arg3 = arg1
  arg2, arg3 = arg2(arg3)
  cmgCall4 = CMG
  cmgCall4 = cmgCall4.addHunger
  numberValue7 = arg2
  cmgCall4(numberValue7)
  cmgCall4 = CMG
  cmgCall4 = cmgCall4.addHydration
  numberValue7 = arg3
  cmgCall4(numberValue7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c82f62b8de".
eventRegistration(textValue, workValue4)
