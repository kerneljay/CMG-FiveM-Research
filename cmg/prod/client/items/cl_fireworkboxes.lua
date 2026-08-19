--[[
    LEVEL 1 BEGINNER GUIDE — Fireworkboxes
    ===========================================

    File: cmg/prod/client/items/cl_fireworkboxes.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: usable inventory item behaviour, specifically the Fireworkboxes feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 15
      * Background threads: 0
      * Always-running loops: 5
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
local text, number2, stateFlag9, cmgOperation, eventHandler2, stateFlag11, text4, workingValue7, workingValue8, workingValue9, workingValue2, workingValue3, dataCollection, createVector3, eventHandler, createVector32, createVector33, createVector34, createVector35, createVector36, createVector37, createVector38, createVector39, number5, number6, number7
text = "anim@mp_fireworks"
number2 = -1118757580
stateFlag9 = false
cmgOperation = TriggerEvent
eventHandler2 = "chat:addSuggestion"
stateFlag11 = "/firework"
text4 = "Lights a firework box"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
cmgOperation(eventHandler2, stateFlag11, text4)
cmgOperation = RegisterNetEvent
eventHandler2 = "9e8cc9d4c6"
-- Beginner: this function handles network event "9e8cc9d4c6".

-- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: none) ===
function stateFlag11()
  local localValue1, localValue2, localValue3, cmgOperation2, number9, text3, number11, mathHelper6, mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1()
  if 0 == localValue1 then
    localValue1 = GetEntityHealth
    localValue2 = CMG
    localValue2 = localValue2.getPlayerPed
    localValue2, localValue3, cmgOperation2, number9, text3, number11, mathHelper6, mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5 = localValue2()
    -- Beginner: result below is health.
    localValue1 = localValue1(localValue2, localValue3, cmgOperation2, number9, text3, number11, mathHelper6, mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5)
    if localValue1 > 102 then
      localValue1 = stateFlag9
      if not localValue1 then
        localValue1 = true
        stateFlag9 = localValue1
        localValue1 = CMG
        localValue1 = localValue1.loadAnimDict
        localValue2 = "anim@mp_fireworks"
        -- Beginner: Load a GTA animation dictionary before using it.
        localValue1(localValue2)
        localValue1 = CMG
        localValue1 = localValue1.loadModel
        localValue2 = number2
        -- Beginner: Request/load a GTA model before spawning or applying it.
        localValue1(localValue2)
        localValue1 = GetOffsetFromEntityInWorldCoords
        localValue2 = CMG
        localValue2 = localValue2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        localValue2 = localValue2()
        localValue3 = 0.0
        cmgOperation2 = 0.5
        number9 = 0.0
        localValue1 = localValue1(localValue2, localValue3, cmgOperation2, number9)
        localValue2 = GetOffsetFromEntityInWorldCoords
        localValue3 = CMG
        localValue3 = localValue3.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        localValue3 = localValue3()
        cmgOperation2 = 0.0
        number9 = 0.5
        text3 = -2.5
        localValue2 = localValue2(localValue3, cmgOperation2, number9, text3)
        localValue3 = TaskPlayAnim
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgOperation2 = cmgOperation2()
        number9 = text
        text3 = "place_firework_3_box"
        number11 = -1
        mathHelper6 = -8.0
        mathHelper7 = 3000
        mathHelper8 = 0
        mathHelper = 0
        mathHelper3 = false
        mathHelper4 = false
        mathHelper5 = false
        -- Beginner: Play an animation on a ped.
        localValue3(cmgOperation2, number9, text3, number11, mathHelper6, mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5)
        localValue3 = RemoveAnimDict
        cmgOperation2 = "anim@mp_fireworks"
        localValue3(cmgOperation2)
        localValue3 = Wait
        cmgOperation2 = 1000
        localValue3(cmgOperation2)
        localValue3 = CMG
        localValue3 = localValue3.requestEntitySpawn
        cmgOperation2 = "firework_box_object"
        localValue3(cmgOperation2)
        localValue3 = CreateObject
        cmgOperation2 = number2
        number9 = localValue1.x
        text3 = localValue1.y
        number11 = localValue1.z
        mathHelper6 = true
        mathHelper7 = false
        mathHelper8 = false
        -- Beginner: result below is objectEntity.
        localValue3 = localValue3(cmgOperation2, number9, text3, number11, mathHelper6, mathHelper7, mathHelper8)
        cmgOperation2 = PlaceObjectOnGroundProperly
        number9 = localValue3
        cmgOperation2(number9)
        cmgOperation2 = FreezeEntityPosition
        number9 = localValue3
        text3 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        cmgOperation2(number9, text3)
        cmgOperation2 = SetModelAsNoLongerNeeded
        number9 = number2
        cmgOperation2(number9)
        cmgOperation2 = Wait
        number9 = 3000
        cmgOperation2(number9)
        cmgOperation2 = TriggerServerEvent
        number9 = "656f5e70a8"
        text3 = localValue2
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "656f5e70a8".
        cmgOperation2(number9, text3)
        cmgOperation2 = Wait
        number9 = 10000
        cmgOperation2(number9)
        cmgOperation2 = DeleteEntity
        number9 = localValue3
        -- Beginner: Delete a GTA entity.
        cmgOperation2(number9)
        cmgOperation2 = false
        stateFlag9 = cmgOperation2
    end
  end
  else
    localValue1 = tCMG
    localValue1 = localValue1.notify
    localValue2 = "You are ~r~not able ~w~to use a ~r~firework box ~w~right now."
    -- Beginner: Show a notification to the player.
    localValue1(localValue2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9e8cc9d4c6".
cmgOperation(eventHandler2, stateFlag11)
cmgOperation = CMG

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1, localValue2) ===
function eventHandler2(localValue1, localValue2)
  local localValue3, cmgOperation2, number9, text3, number11, mathHelper6, mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5, text2, workingValue4, workingValue5, stateFlag4, stateFlag5, number, number3, number4, stateFlag6, stateFlag7, stateFlag8
  localValue3 = CMG
  localValue3 = localValue3.loadPtfx
  cmgOperation2 = "scr_indep_fireworks"
  localValue3(cmgOperation2)
  localValue3 = UseParticleFxAsset
  cmgOperation2 = "scr_indep_fireworks"
  localValue3(cmgOperation2)
  localValue3 = 100
  if localValue2 then
    localValue3 = localValue2
  end
  cmgOperation2 = 1
  number9 = localValue3
  text3 = 1
  for number11 = cmgOperation2, number9, text3 do
    mathHelper6 = math
    mathHelper6 = mathHelper6.random
    mathHelper6 = mathHelper6()
    mathHelper7 = math
    mathHelper7 = mathHelper7.random
    mathHelper7 = mathHelper7()
    mathHelper8 = math
    mathHelper8 = mathHelper8.random
    mathHelper8 = mathHelper8()
    mathHelper = math
    mathHelper = mathHelper.random
    mathHelper3 = -5
    mathHelper4 = 5
    mathHelper = mathHelper(mathHelper3, mathHelper4)
    mathHelper3 = math
    mathHelper3 = mathHelper3.random
    mathHelper3 = mathHelper3()
    mathHelper = mathHelper + mathHelper3
    mathHelper3 = math
    mathHelper3 = mathHelper3.random
    mathHelper4 = -5
    mathHelper5 = 5
    mathHelper3 = mathHelper3(mathHelper4, mathHelper5)
    mathHelper4 = math
    mathHelper4 = mathHelper4.random
    mathHelper4 = mathHelper4()
    mathHelper3 = mathHelper3 + mathHelper4
    mathHelper4 = math
    mathHelper4 = mathHelper4.random
    mathHelper5 = 5
    text2 = 25
    mathHelper4 = mathHelper4(mathHelper5, text2)
    mathHelper5 = math
    mathHelper5 = mathHelper5.random
    mathHelper5 = mathHelper5()
    mathHelper4 = mathHelper4 + mathHelper5
    mathHelper5 = UseParticleFxAsset
    text2 = "scr_indep_fireworks"
    mathHelper5(text2)
    mathHelper5 = StartNetworkedParticleFxNonLoopedAtCoord
    text2 = "scr_indep_firework_trailburst"
    workingValue4 = localValue1.x
    workingValue4 = workingValue4 + mathHelper
    workingValue5 = localValue1.y
    workingValue5 = workingValue5 + mathHelper3
    stateFlag4 = localValue1.z
    stateFlag4 = stateFlag4 + mathHelper4
    stateFlag5 = 0.0
    number = 0.0
    number3 = 0.0
    number4 = 1.0
    stateFlag6 = false
    stateFlag7 = false
    stateFlag8 = false
    mathHelper5(text2, workingValue4, workingValue5, stateFlag4, stateFlag5, number, number3, number4, stateFlag6, stateFlag7, stateFlag8)
    mathHelper5 = SetParticleFxNonLoopedColour
    text2 = mathHelper6
    workingValue4 = mathHelper7
    workingValue5 = mathHelper8
    mathHelper5(text2, workingValue4, workingValue5)
    mathHelper5 = Wait
    text2 = math
    text2 = text2.random
    workingValue4 = 150
    workingValue5 = 300
    text2, workingValue4, workingValue5, stateFlag4, stateFlag5, number, number3, number4, stateFlag6, stateFlag7, stateFlag8 = text2(workingValue4, workingValue5)
    mathHelper5(text2, workingValue4, workingValue5, stateFlag4, stateFlag5, number, number3, number4, stateFlag6, stateFlag7, stateFlag8)
  end
  cmgOperation2 = RemoveNamedPtfxAsset
  number9 = "scr_indep_fireworks"
  cmgOperation2(number9)
end
cmgOperation.startFireworksAtCoord = eventHandler2
cmgOperation = RegisterNetEvent
eventHandler2 = "9078dfe5bb"
-- Beginner: this function handles network event "9078dfe5bb".

-- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue1) ===
function stateFlag11(localValue1)
  local localValue2, localValue3
  localValue2 = CMG
  localValue2 = localValue2.startFireworksAtCoord
  localValue3 = localValue1
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9078dfe5bb".
cmgOperation(eventHandler2, stateFlag11)
cmgOperation = nil
eventHandler2 = RegisterNetEvent
stateFlag11 = "4e630ebd93"
-- Beginner: this function handles network event "4e630ebd93".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, cmgOperation2, number9, text3, number11, mathHelper6, mathHelper7, mathHelper8
  if localValue1 then
    localValue2 = tCMG
    localValue2 = localValue2.addBlip
    localValue3 = -407.36
    cmgOperation2 = 1189.33
    number9 = 325.62
    text3 = 0
    number11 = 27
    mathHelper6 = nil
    mathHelper7 = 1.0
    mathHelper8 = false
    localValue2 = localValue2(localValue3, cmgOperation2, number9, text3, number11, mathHelper6, mathHelper7, mathHelper8)
    cmgOperation = localValue2
    localValue2 = SetBlipRoute
    localValue3 = cmgOperation
    cmgOperation2 = true
    localValue2(localValue3, cmgOperation2)
  else
    localValue2 = cmgOperation
    if localValue2 then
      localValue2 = tCMG
      localValue2 = localValue2.removeBlip
      localValue3 = cmgOperation
      localValue2(localValue3)
      localValue2 = nil
      cmgOperation = localValue2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4e630ebd93".
eventHandler2(stateFlag11, text4)
eventHandler2 = nil
stateFlag11 = false
text4 = 0

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, cmgOperation2
  localValue3 = Citizen
  localValue3 = localValue3.CreateThreadNow

  -- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
  function cmgOperation2()
    local workingValue, workingValue6, waitCall, number8, stateFlag10, number10, number12, number13, number14, workingValue10, mathHelper2, stateFlag, stateFlag2, stateFlag3
    workingValue = text4
    while true do
      workingValue6 = eventHandler2
      if not workingValue6 then
        break
      end
      workingValue6 = eventHandler2
      workingValue6 = workingValue6[workingValue]
      if not workingValue6 then
        break
      end
      workingValue6 = UseParticleFxAsset
      waitCall = "scr_indep_fireworks"
      workingValue6(waitCall)
      workingValue6 = StartParticleFxLoopedAtCoord
      waitCall = "scr_indep_firework_fountain"
      number8 = localValue1.x
      stateFlag10 = localValue1.y
      number10 = localValue1.z
      number12 = 0.0
      number13 = 0.0
      number14 = 0.0
      workingValue10 = localValue2
      mathHelper2 = false
      stateFlag = false
      stateFlag2 = false
      stateFlag3 = false
      workingValue6 = workingValue6(waitCall, number8, stateFlag10, number10, number12, number13, number14, workingValue10, mathHelper2, stateFlag, stateFlag2, stateFlag3)
      waitCall = Citizen
      waitCall = waitCall.Wait
      number8 = 5000
      waitCall(number8)
      waitCall = StopParticleFxLooped
      number8 = workingValue6
      stateFlag10 = false
      waitCall(number8, stateFlag10)
    end
  end
  localValue3(cmgOperation2)
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1, localValue2) ===
function workingValue8(localValue1, localValue2)
  local localValue3, cmgOperation2
  localValue3 = Citizen
  localValue3 = localValue3.CreateThreadNow

  -- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
  function cmgOperation2()
    local workingValue, workingValue6, waitCall, number8, stateFlag10, number10, number12, number13, number14, workingValue10, mathHelper2, stateFlag, stateFlag2, stateFlag3
    workingValue = text4
    while true do
      workingValue6 = eventHandler2
      if not workingValue6 then
        break
      end
      workingValue6 = eventHandler2
      workingValue6 = workingValue6[workingValue]
      if not workingValue6 then
        break
      end
      workingValue6 = UseParticleFxAsset
      waitCall = "scr_indep_fireworks"
      workingValue6(waitCall)
      workingValue6 = StartParticleFxLoopedAtCoord
      waitCall = "scr_indep_firework_starburst"
      number8 = localValue1.x
      stateFlag10 = localValue1.y
      number10 = localValue1.z
      number12 = 0.0
      number13 = 0.0
      number14 = 0.0
      workingValue10 = localValue2
      mathHelper2 = math
      mathHelper2 = mathHelper2.random
      mathHelper2 = mathHelper2()
      mathHelper2 = mathHelper2 * 2.0
      workingValue10 = workingValue10 * mathHelper2
      mathHelper2 = false
      stateFlag = false
      stateFlag2 = false
      stateFlag3 = false
      workingValue6 = workingValue6(waitCall, number8, stateFlag10, number10, number12, number13, number14, workingValue10, mathHelper2, stateFlag, stateFlag2, stateFlag3)
      waitCall = Citizen
      waitCall = waitCall.Wait
      number8 = math
      number8 = number8.random
      stateFlag10 = 500
      number10 = 2500
      number8, stateFlag10, number10, number12, number13, number14, workingValue10, mathHelper2, stateFlag, stateFlag2, stateFlag3 = number8(stateFlag10, number10)
      waitCall(number8, stateFlag10, number10, number12, number13, number14, workingValue10, mathHelper2, stateFlag, stateFlag2, stateFlag3)
      waitCall = StopParticleFxLooped
      number8 = workingValue6
      stateFlag10 = false
      waitCall(number8, stateFlag10)
    end
  end
  localValue3(cmgOperation2)
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2) ===
function workingValue9(localValue1, localValue2)
  local localValue3, cmgOperation2
  localValue3 = Citizen
  localValue3 = localValue3.CreateThreadNow

  -- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
  function cmgOperation2()
    local workingValue, workingValue6, waitCall, number8, stateFlag10, number10, number12, number13, number14, workingValue10, mathHelper2, stateFlag, stateFlag2, stateFlag3
    workingValue = text4
    while true do
      workingValue6 = eventHandler2
      if not workingValue6 then
        break
      end
      workingValue6 = eventHandler2
      workingValue6 = workingValue6[workingValue]
      if not workingValue6 then
        break
      end
      workingValue6 = UseParticleFxAsset
      waitCall = "scr_indep_fireworks"
      workingValue6(waitCall)
      workingValue6 = StartParticleFxLoopedAtCoord
      waitCall = "scr_indep_firework_trailburst"
      number8 = localValue1.x
      stateFlag10 = localValue1.y
      number10 = localValue1.z
      number12 = 0.0
      number13 = 0.0
      number14 = 0.0
      workingValue10 = localValue2
      mathHelper2 = math
      mathHelper2 = mathHelper2.random
      mathHelper2 = mathHelper2()
      mathHelper2 = mathHelper2 * 2.0
      workingValue10 = workingValue10 * mathHelper2
      mathHelper2 = false
      stateFlag = false
      stateFlag2 = false
      stateFlag3 = false
      workingValue6 = workingValue6(waitCall, number8, stateFlag10, number10, number12, number13, number14, workingValue10, mathHelper2, stateFlag, stateFlag2, stateFlag3)
      waitCall = Citizen
      waitCall = waitCall.Wait
      number8 = math
      number8 = number8.random
      stateFlag10 = 500
      number10 = 2500
      number8, stateFlag10, number10, number12, number13, number14, workingValue10, mathHelper2, stateFlag, stateFlag2, stateFlag3 = number8(stateFlag10, number10)
      waitCall(number8, stateFlag10, number10, number12, number13, number14, workingValue10, mathHelper2, stateFlag, stateFlag2, stateFlag3)
      waitCall = StopParticleFxLooped
      number8 = workingValue6
      stateFlag10 = false
      waitCall(number8, stateFlag10)
    end
  end
  localValue3(cmgOperation2)
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local localValue3, cmgOperation2, number9, text3, number11, mathHelper6, mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5, text2, workingValue4, workingValue5, stateFlag4, stateFlag5, number
  localValue3 = math
  localValue3 = localValue3.random
  localValue3 = localValue3()
  localValue3 = localValue3 - 0.5
  localValue3 = localValue3 * localValue2
  localValue3 = localValue3 * 2
  cmgOperation2 = math
  cmgOperation2 = cmgOperation2.random
  cmgOperation2 = cmgOperation2()
  cmgOperation2 = cmgOperation2 - 0.5
  cmgOperation2 = cmgOperation2 * localValue2
  cmgOperation2 = cmgOperation2 * 2
  number9 = math
  number9 = number9.random
  number9 = number9()
  number9 = number9 * 75.0
  text3 = vector3
  number11 = localValue1.x
  number11 = number11 + localValue3
  mathHelper6 = localValue1.y
  mathHelper6 = mathHelper6 + cmgOperation2
  mathHelper7 = localValue1.z
  mathHelper7 = mathHelper7 + 25.0
  mathHelper7 = mathHelper7 + number9
  text3 = text3(number11, mathHelper6, mathHelper7)
  text3 = localValue1 - text3
  text3 = #text3
  number11 = ShootSingleBulletBetweenCoords
  mathHelper6 = localValue1.x
  mathHelper7 = localValue1.y
  mathHelper8 = localValue1.z
  mathHelper = localValue1.x
  mathHelper = mathHelper + localValue3
  mathHelper3 = localValue1.y
  mathHelper3 = mathHelper3 + cmgOperation2
  mathHelper4 = localValue1.z
  mathHelper4 = mathHelper4 + number9
  mathHelper4 = mathHelper4 + 25.0
  mathHelper5 = 10
  text2 = true
  workingValue4 = 2138347493
  workingValue5 = 0
  stateFlag4 = true
  stateFlag5 = false
  number = text3 * 2.0
  number11(mathHelper6, mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5, text2, workingValue4, workingValue5, stateFlag4, stateFlag5, number)
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1, localValue2, localValue3) ===
function workingValue3(localValue1, localValue2, localValue3)
  local cmgOperation2, number9
  cmgOperation2 = Citizen
  cmgOperation2 = cmgOperation2.CreateThreadNow

  -- === HELPER FUNCTION (decompiler name: number9; parameters: none) ===
  function number9()
    local workingValue, workingValue6, waitCall, number8
    workingValue = text4
    while true do
      workingValue6 = eventHandler2
      if not workingValue6 then
        break
      end
      workingValue6 = eventHandler2
      workingValue6 = workingValue6[workingValue]
      if not workingValue6 then
        break
      end
      workingValue6 = workingValue2
      waitCall = localValue1
      number8 = localValue2
      workingValue6(waitCall, number8)
      workingValue6 = Citizen
      workingValue6 = workingValue6.Wait
      waitCall = localValue3
      workingValue6(waitCall)
    end
  end
  cmgOperation2(number9)
end
dataCollection = {}
createVector3 = vector3
eventHandler = -421.4
createVector32 = 1108.81
createVector33 = 332.53
createVector3 = createVector3(eventHandler, createVector32, createVector33)
eventHandler = vector3
createVector32 = -436.92
createVector33 = 1112.98
createVector34 = 332.54
eventHandler = eventHandler(createVector32, createVector33, createVector34)
createVector32 = vector3
createVector33 = -401.12
createVector34 = 1100.29
createVector35 = 332.53
createVector32 = createVector32(createVector33, createVector34, createVector35)
createVector33 = vector3
createVector34 = -458.45
createVector35 = 1115.95
createVector36 = 332.55
createVector33 = createVector33(createVector34, createVector35, createVector36)
createVector34 = vector3
createVector35 = -413.05
createVector36 = 1097.44
createVector37 = 332.53
createVector34 = createVector34(createVector35, createVector36, createVector37)
createVector35 = vector3
createVector36 = -449.77
createVector37 = 1107.41
createVector38 = 332.53
createVector35 = createVector35(createVector36, createVector37, createVector38)
createVector36 = vector3
createVector37 = -431.66
createVector38 = 1101.79
createVector39 = 340.52
createVector36 = createVector36(createVector37, createVector38, createVector39)
createVector37 = vector3
createVector38 = -401.41
createVector39 = 1092.78
number5 = 343.85
createVector37 = createVector37(createVector38, createVector39, number5)
createVector38 = vector3
createVector39 = -439.14
number5 = 1075.14
number6 = 352.42
createVector38 = createVector38(createVector39, number5, number6)
createVector39 = vector3
number5 = -462.21
number6 = 1109.73
number7 = 343.85
createVector39, number5, number6, number7 = createVector39(number5, number6, number7)
dataCollection[1] = createVector3
dataCollection[2] = eventHandler
dataCollection[3] = createVector32
dataCollection[4] = createVector33
dataCollection[5] = createVector34
dataCollection[6] = createVector35
dataCollection[7] = createVector36
dataCollection[8] = createVector37
dataCollection[9] = createVector38
dataCollection[10] = createVector39
dataCollection[11] = number5
dataCollection[12] = number6
dataCollection[13] = number7

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: none) ===
function createVector3()
  local localValue1, localValue2, localValue3, cmgOperation2, number9, text3, number11, mathHelper6, mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5, text2, workingValue4
  while true do
    localValue1 = stateFlag11
    if not localValue1 then
      break
    end
    localValue1 = CMG
    localValue1 = localValue1.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue1 = localValue1()
    localValue2 = ipairs
    localValue3 = dataCollection
    localValue2, localValue3, cmgOperation2, number9 = localValue2(localValue3)
    for text3, number11 in localValue2, localValue3, cmgOperation2, number9 do
      mathHelper6 = localValue1 - number11
      mathHelper6 = #mathHelper6
      if mathHelper6 < 10.0 then
        mathHelper6 = SetEntityCoords
        mathHelper7 = CMG
        mathHelper7 = mathHelper7.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        mathHelper7 = mathHelper7()
        mathHelper8 = -410.52
        mathHelper = 1181.81
        mathHelper3 = 325.59
        mathHelper4 = false
        mathHelper5 = false
        text2 = false
        workingValue4 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        mathHelper6(mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5, text2, workingValue4)
        break
      end
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 0
    localValue2(localValue3)
  end
end
eventHandler = RegisterNetEvent
createVector32 = "698a9bf67f"
-- Beginner: this function handles network event "698a9bf67f".

-- === HELPER FUNCTION (decompiler name: createVector33; parameters: localValue1) ===
function createVector33(localValue1)
  local localValue2, localValue3, cmgOperation2, number9, text3
  localValue2 = CMG
  localValue2 = localValue2.loadPtfx
  localValue3 = "scr_indep_fireworks"
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.loadWeaponAsset
  localValue3 = "weapon_firework"
  localValue2(localValue3)
  localValue2 = eventHandler2
  if not localValue2 then
    localValue2 = {}
    eventHandler2 = localValue2
  end
  localValue2 = eventHandler2
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    localValue2 = eventHandler2
    localValue3 = {}
    localValue2[localValue1] = localValue3
  end
  text4 = localValue1
  localValue2 = stateFlag11
  if not localValue2 then
    localValue2 = true
    stateFlag11 = localValue2
    localValue2 = Citizen
    localValue2 = localValue2.CreateThreadNow
    localValue3 = createVector3
    localValue2(localValue3)
  end
  if 1 == localValue1 then
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -421.4
    number9 = 1108.81
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -436.92
    number9 = 1112.98
    text3 = 332.54
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -401.12
    number9 = 1100.29
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -458.45
    number9 = 1115.95
    text3 = 332.55
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
  elseif 2 == localValue1 then
    localValue2 = eventHandler2
    localValue2[1] = nil
    localValue2 = workingValue3
    localValue3 = vector3
    cmgOperation2 = -413.05
    number9 = 1097.44
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 25.0
    number9 = 1000
    localValue2(localValue3, cmgOperation2, number9)
    localValue2 = workingValue3
    localValue3 = vector3
    cmgOperation2 = -449.77
    number9 = 1107.41
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 25.0
    number9 = 1000
    localValue2(localValue3, cmgOperation2, number9)
  elseif 3 == localValue1 then
    localValue2 = workingValue8
    localValue3 = vector3
    cmgOperation2 = -431.66
    number9 = 1101.79
    text3 = 340.52
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue8
    localValue3 = vector3
    cmgOperation2 = -401.41
    number9 = 1092.78
    text3 = 343.85
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue8
    localValue3 = vector3
    cmgOperation2 = -439.14
    number9 = 1075.14
    text3 = 352.42
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue8
    localValue3 = vector3
    cmgOperation2 = -462.21
    number9 = 1109.73
    text3 = 343.85
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
  elseif 4 == localValue1 then
    localValue2 = eventHandler2
    localValue2[2] = nil
    localValue2 = eventHandler2
    localValue2[3] = nil
  elseif 5 == localValue1 then
    localValue2 = workingValue9
    localValue3 = vector3
    cmgOperation2 = -431.66
    number9 = 1101.79
    text3 = 340.52
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue9
    localValue3 = vector3
    cmgOperation2 = -401.41
    number9 = 1092.78
    text3 = 343.85
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue9
    localValue3 = vector3
    cmgOperation2 = -439.14
    number9 = 1075.14
    text3 = 352.42
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue9
    localValue3 = vector3
    cmgOperation2 = -462.21
    number9 = 1109.73
    text3 = 343.85
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
  elseif 6 == localValue1 then
    localValue2 = eventHandler2
    localValue2[5] = nil
  elseif 7 == localValue1 then
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -413.05
    number9 = 1097.44
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 1.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -449.77
    number9 = 1107.41
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 1.0
    localValue2(localValue3, cmgOperation2)
  elseif 8 == localValue1 then
    localValue2 = eventHandler2
    localValue2[7] = nil
    localValue2 = workingValue3
    localValue3 = vector3
    cmgOperation2 = -401.41
    number9 = 1092.78
    text3 = 343.85
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 100.0
    number9 = 400
    localValue2(localValue3, cmgOperation2, number9)
    localValue2 = workingValue3
    localValue3 = vector3
    cmgOperation2 = -439.14
    number9 = 1075.14
    text3 = 352.42
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 100.0
    number9 = 400
    localValue2(localValue3, cmgOperation2, number9)
    localValue2 = workingValue3
    localValue3 = vector3
    cmgOperation2 = -462.21
    number9 = 1109.73
    text3 = 343.85
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 100.0
    number9 = 400
    localValue2(localValue3, cmgOperation2, number9)
  elseif 9 == localValue1 then
    localValue2 = eventHandler2
    localValue2[8] = nil
  elseif 10 == localValue1 then
    localValue2 = workingValue8
    localValue3 = vector3
    cmgOperation2 = -431.66
    number9 = 1101.79
    text3 = 340.52
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 4.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue8
    localValue3 = vector3
    cmgOperation2 = -401.41
    number9 = 1092.78
    text3 = 343.85
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 4.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue8
    localValue3 = vector3
    cmgOperation2 = -439.14
    number9 = 1075.14
    text3 = 352.42
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 4.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue8
    localValue3 = vector3
    cmgOperation2 = -462.21
    number9 = 1109.73
    text3 = 343.85
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 4.0
    localValue2(localValue3, cmgOperation2)
  elseif 11 == localValue1 then
    localValue2 = eventHandler2
    localValue2[10] = nil
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -421.4
    number9 = 1108.81
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -436.92
    number9 = 1112.98
    text3 = 332.54
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -401.12
    number9 = 1100.29
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -458.45
    number9 = 1115.95
    text3 = 332.55
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue9
    localValue3 = vector3
    cmgOperation2 = -431.66
    number9 = 1101.79
    text3 = 340.52
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 4.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue9
    localValue3 = vector3
    cmgOperation2 = -401.41
    number9 = 1092.78
    text3 = 343.85
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 4.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue9
    localValue3 = vector3
    cmgOperation2 = -439.14
    number9 = 1075.14
    text3 = 352.42
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 4.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue9
    localValue3 = vector3
    cmgOperation2 = -462.21
    number9 = 1109.73
    text3 = 343.85
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 4.0
    localValue2(localValue3, cmgOperation2)
  elseif 12 == localValue1 then
    localValue2 = eventHandler2
    localValue2[11] = nil
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -421.4
    number9 = 1108.81
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -436.92
    number9 = 1112.98
    text3 = 332.54
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -401.12
    number9 = 1100.29
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -458.45
    number9 = 1115.95
    text3 = 332.55
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue3
    localValue3 = vector3
    cmgOperation2 = -413.05
    number9 = 1097.44
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 25.0
    number9 = 1000
    localValue2(localValue3, cmgOperation2, number9)
    localValue2 = workingValue3
    localValue3 = vector3
    cmgOperation2 = -449.77
    number9 = 1107.41
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 25.0
    number9 = 1000
    localValue2(localValue3, cmgOperation2, number9)
  elseif 13 == localValue1 then
    localValue2 = eventHandler2
    localValue2[12] = nil
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -413.05
    number9 = 1097.44
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 1.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -449.77
    number9 = 1107.41
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 1.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue9
    localValue3 = vector3
    cmgOperation2 = -431.66
    number9 = 1101.79
    text3 = 340.52
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 4.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue9
    localValue3 = vector3
    cmgOperation2 = -401.41
    number9 = 1092.78
    text3 = 343.85
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 4.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue9
    localValue3 = vector3
    cmgOperation2 = -439.14
    number9 = 1075.14
    text3 = 352.42
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 4.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue9
    localValue3 = vector3
    cmgOperation2 = -462.21
    number9 = 1109.73
    text3 = 343.85
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 4.0
    localValue2(localValue3, cmgOperation2)
  elseif 14 == localValue1 then
    localValue2 = eventHandler2
    localValue2[13] = nil
    localValue2 = workingValue3
    localValue3 = vector3
    cmgOperation2 = -401.41
    number9 = 1092.78
    text3 = 343.85
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 100.0
    number9 = 400
    localValue2(localValue3, cmgOperation2, number9)
    localValue2 = workingValue3
    localValue3 = vector3
    cmgOperation2 = -439.14
    number9 = 1075.14
    text3 = 352.42
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 100.0
    number9 = 400
    localValue2(localValue3, cmgOperation2, number9)
    localValue2 = workingValue3
    localValue3 = vector3
    cmgOperation2 = -462.21
    number9 = 1109.73
    text3 = 343.85
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 100.0
    number9 = 400
    localValue2(localValue3, cmgOperation2, number9)
  elseif 15 == localValue1 then
    localValue2 = eventHandler2
    localValue2[14] = nil
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -413.05
    number9 = 1097.44
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -449.77
    number9 = 1107.41
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -421.4
    number9 = 1108.81
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -436.92
    number9 = 1112.98
    text3 = 332.54
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -401.12
    number9 = 1100.29
    text3 = 332.53
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -458.45
    number9 = 1115.95
    text3 = 332.55
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -383.67
    number9 = 1185.89
    text3 = 325.79
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
    localValue2 = workingValue7
    localValue3 = vector3
    cmgOperation2 = -430.62
    number9 = 1197.46
    text3 = 325.64
    localValue3 = localValue3(cmgOperation2, number9, text3)
    cmgOperation2 = 2.0
    localValue2(localValue3, cmgOperation2)
  elseif 16 == localValue1 then
    localValue2 = eventHandler2
    localValue2[15] = nil
    localValue2 = false
    stateFlag11 = localValue2
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 5000
    localValue2(localValue3)
    localValue2 = nil
    eventHandler2 = localValue2
    localValue2 = 0
    text4 = localValue2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "698a9bf67f".
eventHandler(createVector32, createVector33)
