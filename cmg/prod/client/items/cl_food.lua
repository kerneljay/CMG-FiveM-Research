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
local cmgOperation, text2, number4, number5, number6, text3, workingValue8, cmgOperation5, workingValue9, workingValue10, cmgOperation2, cmgOperation3, workingValue, workingValue2, eventHandler, text, workingValue4
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text2 = "cfg/cfg_food"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text2)
text2 = 50
number4 = 50
number5 = 0.5555555555555556
number6 = 0.4166666666666667
text3 = "cmg_always_food_thirst"

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2
  localValue1 = GetResourceKvpInt
  localValue2 = text3
  localValue1 = localValue1(localValue2)
  localValue1 = 1 == localValue1
  return localValue1
end
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2
  localValue1 = workingValue8
  return localValue1()
end
cmgOperation5.getClientAlwaysFoodThirstHudPreference = workingValue9
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.isClientClockedOnOrganisation
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.isEmergencyService
    localValue1 = localValue1()
  end
  return localValue1
end
cmgOperation5.isFoodThirstForcedByRole = workingValue9
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.isFoodThirstForcedByRole
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = workingValue8
    localValue1 = localValue1()
  end
  return localValue1
end
cmgOperation5.isFoodEnabled = workingValue9
cmgOperation5 = false

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, localValue3
  localValue1 = cmgOperation5
  if not localValue1 then
    return
  end
  localValue1 = false
  cmgOperation5 = localValue1
  localValue1 = ClearTimecycleModifier
  localValue1()
  localValue1 = ShakeGameplayCam
  localValue2 = "SMALL_EXPLOSION_SHAKE"
  localValue3 = 0.0
  localValue1(localValue2, localValue3)
  localValue1 = ResetPedMovementClipset
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = 0
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
function workingValue10()
  local localValue1, localValue2, localValue3, cmgOperation4
  localValue1 = CMG
  localValue1 = localValue1.isFoodEnabled
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.sendHudNuiMessage
  localValue3 = "SET_BAR_VISIBILITY"
  cmgOperation4 = {}
  cmgOperation4.type = "hunger"
  cmgOperation4.value = localValue1
  localValue2(localValue3, cmgOperation4)
  localValue2 = CMG
  localValue2 = localValue2.sendHudNuiMessage
  localValue3 = "SET_BAR_VISIBILITY"
  cmgOperation4 = {}
  cmgOperation4.type = "thirst"
  cmgOperation4.value = localValue1
  localValue2(localValue3, cmgOperation4)
  if not localValue1 then
    localValue2 = workingValue9
    localValue2()
  end
end
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1) ===
function cmgOperation3(localValue1)
  local localValue2, localValue3, cmgOperation4, number7
  localValue2 = true == localValue1 or 1 == localValue1
  localValue3 = SetResourceKvpInt
  cmgOperation4 = text3
  if localValue2 then
    number7 = 1
    if number7 then
      goto continueAtStep15
    end
  end
  number7 = 0
  ::continueAtStep15::
  localValue3(cmgOperation4, number7)
  localValue3 = workingValue10
  localValue3()
end
cmgOperation2.setClientAlwaysFoodThirstFromHud = cmgOperation3
cmgOperation2 = AddEventHandler
cmgOperation3 = "b51e08118b"
workingValue = workingValue10
-- Beginner: Register a client-side event handler. Event/command: "b51e08118b".
cmgOperation2(cmgOperation3, workingValue)
cmgOperation2 = AddEventHandler
cmgOperation3 = "f7b3a54a8f"
workingValue = workingValue10
cmgOperation2(cmgOperation3, workingValue)
cmgOperation2 = AddEventHandler
cmgOperation3 = "e892eba4b7"
workingValue = workingValue10
-- Beginner: Register a client-side event handler. Event/command: "e892eba4b7".
cmgOperation2(cmgOperation3, workingValue)
cmgOperation2 = AddEventHandler
cmgOperation3 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1, localValue2, localValue3) ===
function workingValue(localValue1, localValue2, localValue3)
  local cmgOperation4, number7
  while true do
    cmgOperation4 = CMG
    cmgOperation4 = cmgOperation4.isHudLoaded
    cmgOperation4 = cmgOperation4()
    if cmgOperation4 then
      break
    end
    cmgOperation4 = Wait
    number7 = 0
    cmgOperation4(number7)
  end
  if localValue3 then
    cmgOperation4 = workingValue10
    cmgOperation4()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgOperation2(cmgOperation3, workingValue)
cmgOperation2 = RegisterNetEvent
cmgOperation3 = "3cb2982220"
-- Beginner: this function handles network event "3cb2982220".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1, localValue2) ===
function workingValue(localValue1, localValue2)
  text2 = localValue1
  number4 = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3cb2982220".
cmgOperation2(cmgOperation3, workingValue)
cmgOperation2 = CMG
-- Beginner: this function handles network event "3cb2982220".

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2
  localValue1 = text2
  return localValue1
end
cmgOperation2.getHunger = cmgOperation3
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2
  localValue1 = number4
  return localValue1
end
cmgOperation2.getHydration = cmgOperation3
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1) ===
function cmgOperation3(localValue1)
  local localValue2, localValue3, cmgOperation4, number7
  localValue2 = Clamp
  localValue3 = localValue1
  cmgOperation4 = 0
  number7 = 100
  localValue2 = localValue2(localValue3, cmgOperation4, number7)
  text2 = localValue2
end
cmgOperation2.setHunger = cmgOperation3
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1) ===
function cmgOperation3(localValue1)
  local localValue2, localValue3, cmgOperation4, number7
  localValue2 = Clamp
  localValue3 = localValue1
  cmgOperation4 = 0
  number7 = 100
  localValue2 = localValue2(localValue3, cmgOperation4, number7)
  number4 = localValue2
end
cmgOperation2.setHydration = cmgOperation3
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1) ===
function cmgOperation3(localValue1)
  local localValue2, localValue3
  localValue2 = CMG
  localValue2 = localValue2.setHunger
  localValue3 = text2
  localValue3 = localValue3 + localValue1
  localValue2(localValue3)
end
cmgOperation2.addHunger = cmgOperation3
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1) ===
function cmgOperation3(localValue1)
  local localValue2, localValue3
  localValue2 = CMG
  localValue2 = localValue2.setHydration
  localValue3 = number4
  localValue3 = localValue3 + localValue1
  localValue2(localValue3)
end
cmgOperation2.addHydration = cmgOperation3
cmgOperation2 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3, cmgOperation4
  while true do
    localValue1 = CMG
    localValue1 = localValue1.isFoodEnabled
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.isStaffedOnClient
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = CMG
        localValue1 = localValue1.addHydration
        localValue2 = number5
        localValue2 = -localValue2
        localValue1(localValue2)
        localValue1 = CMG
        localValue1 = localValue1.addHunger
        localValue2 = number6
        localValue2 = -localValue2
        localValue1(localValue2)
        localValue1 = TriggerServerEvent
        localValue2 = "3772ce2897"
        localValue3 = text2
        cmgOperation4 = number4
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3772ce2897".
        localValue1(localValue2, localValue3, cmgOperation4)
      end
    end
    localValue1 = Wait
    localValue2 = 60000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation2(cmgOperation3)
cmgOperation2 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3, cmgOperation4
  while true do
    localValue1 = CMG
    localValue1 = localValue1.isFoodEnabled
    localValue1 = localValue1()
    if localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.isStaffedOnClient
      localValue1 = localValue1()
      if not localValue1 then
        localValue1 = text2
        if not (localValue1 <= 1) then
          localValue1 = number4
          if not (localValue1 <= 1) then
            goto continueAtStep36
          end
        end
        localValue1 = true
        cmgOperation5 = localValue1
        localValue1 = SetTimecycleModifier
        localValue2 = "spectator5"
        localValue1(localValue2)
        localValue1 = SetTimecycleModifierStrength
        localValue2 = 0.4
        localValue1(localValue2)
        localValue1 = ShakeGameplayCam
        localValue2 = "SMALL_EXPLOSION_SHAKE"
        localValue3 = 0.03
        localValue1(localValue2, localValue3)
        localValue1 = SetPedMovementClipset
        localValue2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue2 = localValue2()
        localValue3 = "move_m@sad@c"
        cmgOperation4 = 0.2
        localValue1(localValue2, localValue3, cmgOperation4)
        goto continueAtStep47
        ::continueAtStep36::
        localValue1 = text2
        if localValue1 > 1 then
          localValue1 = number4
          if localValue1 > 1 then
            localValue1 = workingValue9
            localValue1()
          end
        end
    end
    else
      localValue1 = workingValue9
      localValue1()
    end
    ::continueAtStep47::
    localValue1 = Wait
    localValue2 = 2000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation2(cmgOperation3)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation2(localValue1, localValue2, localValue3)
  local cmgOperation4, number7, text4, hashValue, cmgOperation6
  cmgOperation4 = CMG
  cmgOperation4 = cmgOperation4.requestEntitySpawn
  number7 = localValue1
  text4 = "_"
  hashValue = GetHashKey
  cmgOperation6 = localValue2
  -- Beginner: result below is hash.
  hashValue = hashValue(cmgOperation6)
  number7 = number7 .. text4 .. hashValue
  text4 = localValue3
  cmgOperation4(number7, text4)
end

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1) ===
function cmgOperation3(localValue1)
  local localValue2, localValue3, cmgOperation4, number7, text4, hashValue, cmgOperation6, text5, number8, number, number2, stateFlag, stateFlag2, stateFlag3, workingValue3, workingValue5, workingValue6, workingValue7, stateFlag4, stateFlag5, stateFlag6, stateFlag7, number3, stateFlag8
  localValue2 = localValue1.vending
  if localValue2 then
    localValue3 = localValue2.anim
    if localValue3 then
      localValue3 = localValue2.prop
      if localValue3 then
        goto continueAtStep11
      end
    end
  end
  return
  ::continueAtStep11::
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  cmgOperation4 = localValue2.anim
  cmgOperation4 = cmgOperation4.dict
  number7 = localValue2.anim
  number7 = number7.clip
  text4 = type
  hashValue = localValue2.prop
  hashValue = hashValue.model
  text4 = text4(hashValue)
  if "string" == text4 then
    text4 = GetHashKey
    hashValue = localValue2.prop
    hashValue = hashValue.model
    -- Beginner: result below is hash.
    text4 = text4(hashValue)
    if text4 then
      goto continueAtStep31
    end
  end
  text4 = localValue2.prop
  text4 = text4.model
  ::continueAtStep31::
  hashValue = CMG
  hashValue = hashValue.getPlayerCoords
  -- Beginner: result below is playerCoords.
  hashValue = hashValue()
  cmgOperation6 = CMG
  cmgOperation6 = cmgOperation6.requestEntitySpawn
  text5 = "vending_pickup"
  number8 = text4
  number = hashValue
  cmgOperation6(text5, number8, number)
  cmgOperation6 = CMG
  cmgOperation6 = cmgOperation6.loadAnimDict
  text5 = cmgOperation4
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgOperation6(text5)
  cmgOperation6 = CMG
  cmgOperation6 = cmgOperation6.loadModel
  text5 = text4
  -- Beginner: Request/load a GTA model before spawning or applying it.
  cmgOperation6(text5)
  cmgOperation6 = CreateObject
  text5 = text4
  number8 = 0
  number = 0
  number2 = 0
  stateFlag = true
  stateFlag2 = true
  stateFlag3 = false
  -- Beginner: result below is objectEntity.
  cmgOperation6 = cmgOperation6(text5, number8, number, number2, stateFlag, stateFlag2, stateFlag3)
  text5 = localValue2.prop
  text5 = text5.bone
  if not text5 then
    text5 = 18905
  end
  number8 = AttachEntityToEntity
  number = cmgOperation6
  number2 = localValue3
  stateFlag = GetPedBoneIndex
  stateFlag2 = localValue3
  stateFlag3 = text5
  stateFlag = stateFlag(stateFlag2, stateFlag3)
  stateFlag2 = localValue2.prop
  stateFlag2 = stateFlag2.pos
  stateFlag2 = stateFlag2.x
  stateFlag3 = localValue2.prop
  stateFlag3 = stateFlag3.pos
  stateFlag3 = stateFlag3.y
  workingValue3 = localValue2.prop
  workingValue3 = workingValue3.pos
  workingValue3 = workingValue3.z
  workingValue5 = localValue2.prop
  workingValue5 = workingValue5.rot
  workingValue5 = workingValue5.x
  workingValue6 = localValue2.prop
  workingValue6 = workingValue6.rot
  workingValue6 = workingValue6.y
  workingValue7 = localValue2.prop
  workingValue7 = workingValue7.rot
  workingValue7 = workingValue7.z
  stateFlag4 = true
  stateFlag5 = true
  stateFlag6 = false
  stateFlag7 = true
  number3 = 1
  stateFlag8 = true
  -- Beginner: Attach one entity to another entity.
  number8(number, number2, stateFlag, stateFlag2, stateFlag3, workingValue3, workingValue5, workingValue6, workingValue7, stateFlag4, stateFlag5, stateFlag6, stateFlag7, number3, stateFlag8)
  number8 = TaskPlayAnim
  number = localValue3
  number2 = cmgOperation4
  stateFlag = number7
  stateFlag2 = 8.0
  stateFlag3 = -8.0
  workingValue3 = localValue2.usetime
  if not workingValue3 then
    workingValue3 = 2500
  end
  workingValue5 = 49
  workingValue6 = 0
  workingValue7 = false
  stateFlag4 = false
  stateFlag5 = false
  -- Beginner: Play an animation on a ped.
  number8(number, number2, stateFlag, stateFlag2, stateFlag3, workingValue3, workingValue5, workingValue6, workingValue7, stateFlag4, stateFlag5)
  number8 = Citizen
  number8 = number8.Wait
  number = localValue2.usetime
  if not number then
    number = 2500
  end
  number8(number)
  number8 = DeleteEntity
  number = cmgOperation6
  -- Beginner: Delete a GTA entity.
  number8(number)
  number8 = RemoveAnimDict
  number = cmgOperation4
  number8(number)
end
workingValue = false

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, localValue3, cmgOperation4, number7, text4, hashValue, cmgOperation6, text5, number8, number, number2, stateFlag
  localValue2 = workingValue
  if localValue2 then
    localValue2 = 0
    localValue3 = 0
    return localValue2, localValue3
  end
  localValue2 = true
  workingValue = localValue2
  localValue2 = tCMG
  localValue2 = localValue2.setCanAnim
  localValue3 = false
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = cmgOperation.food
  localValue3 = localValue3[localValue1]
  if not localValue3 then
    cmgOperation4 = tCMG
    cmgOperation4 = cmgOperation4.setCanAnim
    number7 = true
    cmgOperation4(number7)
    cmgOperation4 = false
    workingValue = cmgOperation4
    cmgOperation4 = TriggerServerEvent
    number7 = "f675f1a973"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f675f1a973".
    cmgOperation4(number7)
    cmgOperation4 = 0
    number7 = 0
    return cmgOperation4, number7
  end
  cmgOperation4 = localValue3.vending
  if cmgOperation4 then
    cmgOperation4 = cmgOperation3
    number7 = localValue3
    cmgOperation4(number7)
  else
    cmgOperation4 = type
    number7 = localValue3.props
    cmgOperation4 = cmgOperation4(number7)
    if "table" == cmgOperation4 then
      cmgOperation4 = ipairs
      number7 = localValue3.props
      cmgOperation4, number7, text4, hashValue = cmgOperation4(number7)
      for cmgOperation6, text5 in cmgOperation4, number7, text4, hashValue do
        number8 = cmgOperation2
        number = localValue1
        number2 = text5
        stateFlag = localValue2
        -- Beginner: Start a separate FiveM thread so this code can run independently.
        number8(number, number2, stateFlag)
      end
    end
    cmgOperation4 = localValue3.use
    if cmgOperation4 then
      number7 = cmgOperation4.res
      if number7 then
        number7 = cmgOperation4.fn
        if number7 then
          number7 = exports
          text4 = cmgOperation4.res
          number7 = number7[text4]
          if number7 then
            number7 = exports
            text4 = cmgOperation4.res
            number7 = number7[text4]
            text4 = cmgOperation4.fn
            number7 = number7[text4]
            if number7 then
              number7 = exports
              text4 = cmgOperation4.res
              number7 = number7[text4]
              text4 = cmgOperation4.fn
              number7 = number7[text4]
              number7()
            end
          end
        end
      end
    end
  end
  cmgOperation4 = tonumber
  number7 = localValue3.hunger
  cmgOperation4 = cmgOperation4(number7)
  if not cmgOperation4 then
    cmgOperation4 = 0
  end
  number7 = tonumber
  text4 = localValue3.hydration
  number7 = number7(text4)
  if not number7 then
    number7 = 0
  end
  text4 = tCMG
  text4 = text4.setCanAnim
  hashValue = true
  text4(hashValue)
  text4 = false
  workingValue = text4
  text4 = TriggerServerEvent
  hashValue = "f675f1a973"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f675f1a973".
  text4(hashValue)
  text4 = cmgOperation4
  hashValue = number7
  return text4, hashValue
end
eventHandler = RegisterNetEvent
text = "c82f62b8de"
-- Beginner: this function handles network event "c82f62b8de".

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, cmgOperation4, number7
  localValue2 = workingValue2
  localValue3 = localValue1
  localValue2, localValue3 = localValue2(localValue3)
  cmgOperation4 = CMG
  cmgOperation4 = cmgOperation4.addHunger
  number7 = localValue2
  cmgOperation4(number7)
  cmgOperation4 = CMG
  cmgOperation4 = cmgOperation4.addHydration
  number7 = localValue3
  cmgOperation4(number7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c82f62b8de".
eventHandler(text, workingValue4)
