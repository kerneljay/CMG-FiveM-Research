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
local textValue, numberValue2, flag9, cmgCall, eventRegistration2, flag11, textValue4, workValue7, workValue8, workValue9, workValue2, workValue3, dataTable, vector3Builder, eventRegistration, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, vector3Builder7, vector3Builder8, vector3Builder9, numberValue5, numberValue6, numberValue7
textValue = "anim@mp_fireworks"
numberValue2 = -1118757580
flag9 = false
cmgCall = TriggerEvent
eventRegistration2 = "chat:addSuggestion"
flag11 = "/firework"
textValue4 = "Lights a firework box"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
cmgCall(eventRegistration2, flag11, textValue4)
cmgCall = RegisterNetEvent
eventRegistration2 = "9e8cc9d4c6"
-- Beginner: this function handles network event "9e8cc9d4c6".

-- === HELPER FUNCTION (decompiler name: flag11; parameters: none) ===
function flag11()
  local arg1, arg2, arg3, cmgCall2, numberValue9, textValue3, numberValue11, mathHelper6, mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg1 = arg1()
  if 0 == arg1 then
    arg1 = GetEntityHealth
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    arg2, arg3, cmgCall2, numberValue9, textValue3, numberValue11, mathHelper6, mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5 = arg2()
    -- Beginner: result below is health.
    arg1 = arg1(arg2, arg3, cmgCall2, numberValue9, textValue3, numberValue11, mathHelper6, mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5)
    if arg1 > 102 then
      arg1 = flag9
      if not arg1 then
        arg1 = true
        flag9 = arg1
        arg1 = CMG
        arg1 = arg1.loadAnimDict
        arg2 = "anim@mp_fireworks"
        -- Beginner: Load a GTA animation dictionary before using it.
        arg1(arg2)
        arg1 = CMG
        arg1 = arg1.loadModel
        arg2 = numberValue2
        -- Beginner: Request/load a GTA model before spawning or applying it.
        arg1(arg2)
        arg1 = GetOffsetFromEntityInWorldCoords
        arg2 = CMG
        arg2 = arg2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        arg2 = arg2()
        arg3 = 0.0
        cmgCall2 = 0.5
        numberValue9 = 0.0
        arg1 = arg1(arg2, arg3, cmgCall2, numberValue9)
        arg2 = GetOffsetFromEntityInWorldCoords
        arg3 = CMG
        arg3 = arg3.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        arg3 = arg3()
        cmgCall2 = 0.0
        numberValue9 = 0.5
        textValue3 = -2.5
        arg2 = arg2(arg3, cmgCall2, numberValue9, textValue3)
        arg3 = TaskPlayAnim
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        cmgCall2 = cmgCall2()
        numberValue9 = textValue
        textValue3 = "place_firework_3_box"
        numberValue11 = -1
        mathHelper6 = -8.0
        mathHelper7 = 3000
        mathHelper8 = 0
        mathHelper = 0
        mathHelper3 = false
        mathHelper4 = false
        mathHelper5 = false
        -- Beginner: Play an animation on a ped.
        arg3(cmgCall2, numberValue9, textValue3, numberValue11, mathHelper6, mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5)
        arg3 = RemoveAnimDict
        cmgCall2 = "anim@mp_fireworks"
        arg3(cmgCall2)
        arg3 = Wait
        cmgCall2 = 1000
        arg3(cmgCall2)
        arg3 = CMG
        arg3 = arg3.requestEntitySpawn
        cmgCall2 = "firework_box_object"
        arg3(cmgCall2)
        arg3 = CreateObject
        cmgCall2 = numberValue2
        numberValue9 = arg1.x
        textValue3 = arg1.y
        numberValue11 = arg1.z
        mathHelper6 = true
        mathHelper7 = false
        mathHelper8 = false
        -- Beginner: result below is objectEntity.
        arg3 = arg3(cmgCall2, numberValue9, textValue3, numberValue11, mathHelper6, mathHelper7, mathHelper8)
        cmgCall2 = PlaceObjectOnGroundProperly
        numberValue9 = arg3
        cmgCall2(numberValue9)
        cmgCall2 = FreezeEntityPosition
        numberValue9 = arg3
        textValue3 = true
        -- Beginner: Freeze or unfreeze an entity in place.
        cmgCall2(numberValue9, textValue3)
        cmgCall2 = SetModelAsNoLongerNeeded
        numberValue9 = numberValue2
        cmgCall2(numberValue9)
        cmgCall2 = Wait
        numberValue9 = 3000
        cmgCall2(numberValue9)
        cmgCall2 = TriggerServerEvent
        numberValue9 = "656f5e70a8"
        textValue3 = arg2
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "656f5e70a8".
        cmgCall2(numberValue9, textValue3)
        cmgCall2 = Wait
        numberValue9 = 10000
        cmgCall2(numberValue9)
        cmgCall2 = DeleteEntity
        numberValue9 = arg3
        -- Beginner: Delete a GTA entity.
        cmgCall2(numberValue9)
        cmgCall2 = false
        flag9 = cmgCall2
    end
  end
  else
    arg1 = tCMG
    arg1 = arg1.notify
    arg2 = "You are ~r~not able ~w~to use a ~r~firework box ~w~right now."
    -- Beginner: Show a notification to the player.
    arg1(arg2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9e8cc9d4c6".
cmgCall(eventRegistration2, flag11)
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: eventRegistration2; parameters: arg1, arg2) ===
function eventRegistration2(arg1, arg2)
  local arg3, cmgCall2, numberValue9, textValue3, numberValue11, mathHelper6, mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5, textValue2, workValue4, workValue5, flag4, flag5, numberValue, numberValue3, numberValue4, flag6, flag7, flag8
  arg3 = CMG
  arg3 = arg3.loadPtfx
  cmgCall2 = "scr_indep_fireworks"
  arg3(cmgCall2)
  arg3 = UseParticleFxAsset
  cmgCall2 = "scr_indep_fireworks"
  arg3(cmgCall2)
  arg3 = 100
  if arg2 then
    arg3 = arg2
  end
  cmgCall2 = 1
  numberValue9 = arg3
  textValue3 = 1
  for numberValue11 = cmgCall2, numberValue9, textValue3 do
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
    textValue2 = 25
    mathHelper4 = mathHelper4(mathHelper5, textValue2)
    mathHelper5 = math
    mathHelper5 = mathHelper5.random
    mathHelper5 = mathHelper5()
    mathHelper4 = mathHelper4 + mathHelper5
    mathHelper5 = UseParticleFxAsset
    textValue2 = "scr_indep_fireworks"
    mathHelper5(textValue2)
    mathHelper5 = StartNetworkedParticleFxNonLoopedAtCoord
    textValue2 = "scr_indep_firework_trailburst"
    workValue4 = arg1.x
    workValue4 = workValue4 + mathHelper
    workValue5 = arg1.y
    workValue5 = workValue5 + mathHelper3
    flag4 = arg1.z
    flag4 = flag4 + mathHelper4
    flag5 = 0.0
    numberValue = 0.0
    numberValue3 = 0.0
    numberValue4 = 1.0
    flag6 = false
    flag7 = false
    flag8 = false
    mathHelper5(textValue2, workValue4, workValue5, flag4, flag5, numberValue, numberValue3, numberValue4, flag6, flag7, flag8)
    mathHelper5 = SetParticleFxNonLoopedColour
    textValue2 = mathHelper6
    workValue4 = mathHelper7
    workValue5 = mathHelper8
    mathHelper5(textValue2, workValue4, workValue5)
    mathHelper5 = Wait
    textValue2 = math
    textValue2 = textValue2.random
    workValue4 = 150
    workValue5 = 300
    textValue2, workValue4, workValue5, flag4, flag5, numberValue, numberValue3, numberValue4, flag6, flag7, flag8 = textValue2(workValue4, workValue5)
    mathHelper5(textValue2, workValue4, workValue5, flag4, flag5, numberValue, numberValue3, numberValue4, flag6, flag7, flag8)
  end
  cmgCall2 = RemoveNamedPtfxAsset
  numberValue9 = "scr_indep_fireworks"
  cmgCall2(numberValue9)
end
cmgCall.startFireworksAtCoord = eventRegistration2
cmgCall = RegisterNetEvent
eventRegistration2 = "9078dfe5bb"
-- Beginner: this function handles network event "9078dfe5bb".

-- === HELPER FUNCTION (decompiler name: flag11; parameters: arg1) ===
function flag11(arg1)
  local arg2, arg3
  arg2 = CMG
  arg2 = arg2.startFireworksAtCoord
  arg3 = arg1
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9078dfe5bb".
cmgCall(eventRegistration2, flag11)
cmgCall = nil
eventRegistration2 = RegisterNetEvent
flag11 = "4e630ebd93"
-- Beginner: this function handles network event "4e630ebd93".

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2, arg3, cmgCall2, numberValue9, textValue3, numberValue11, mathHelper6, mathHelper7, mathHelper8
  if arg1 then
    arg2 = tCMG
    arg2 = arg2.addBlip
    arg3 = -407.36
    cmgCall2 = 1189.33
    numberValue9 = 325.62
    textValue3 = 0
    numberValue11 = 27
    mathHelper6 = nil
    mathHelper7 = 1.0
    mathHelper8 = false
    arg2 = arg2(arg3, cmgCall2, numberValue9, textValue3, numberValue11, mathHelper6, mathHelper7, mathHelper8)
    cmgCall = arg2
    arg2 = SetBlipRoute
    arg3 = cmgCall
    cmgCall2 = true
    arg2(arg3, cmgCall2)
  else
    arg2 = cmgCall
    if arg2 then
      arg2 = tCMG
      arg2 = arg2.removeBlip
      arg3 = cmgCall
      arg2(arg3)
      arg2 = nil
      cmgCall = arg2
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4e630ebd93".
eventRegistration2(flag11, textValue4)
eventRegistration2 = nil
flag11 = false
textValue4 = 0

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2) ===
function workValue7(arg1, arg2)
  local arg3, cmgCall2
  arg3 = Citizen
  arg3 = arg3.CreateThreadNow

  -- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
  function cmgCall2()
    local workValue, workValue6, waitCall, numberValue8, flag10, numberValue10, numberValue12, numberValue13, numberValue14, workValue10, mathHelper2, flag, flag2, flag3
    workValue = textValue4
    while true do
      workValue6 = eventRegistration2
      if not workValue6 then
        break
      end
      workValue6 = eventRegistration2
      workValue6 = workValue6[workValue]
      if not workValue6 then
        break
      end
      workValue6 = UseParticleFxAsset
      waitCall = "scr_indep_fireworks"
      workValue6(waitCall)
      workValue6 = StartParticleFxLoopedAtCoord
      waitCall = "scr_indep_firework_fountain"
      numberValue8 = arg1.x
      flag10 = arg1.y
      numberValue10 = arg1.z
      numberValue12 = 0.0
      numberValue13 = 0.0
      numberValue14 = 0.0
      workValue10 = arg2
      mathHelper2 = false
      flag = false
      flag2 = false
      flag3 = false
      workValue6 = workValue6(waitCall, numberValue8, flag10, numberValue10, numberValue12, numberValue13, numberValue14, workValue10, mathHelper2, flag, flag2, flag3)
      waitCall = Citizen
      waitCall = waitCall.Wait
      numberValue8 = 5000
      waitCall(numberValue8)
      waitCall = StopParticleFxLooped
      numberValue8 = workValue6
      flag10 = false
      waitCall(numberValue8, flag10)
    end
  end
  arg3(cmgCall2)
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1, arg2) ===
function workValue8(arg1, arg2)
  local arg3, cmgCall2
  arg3 = Citizen
  arg3 = arg3.CreateThreadNow

  -- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
  function cmgCall2()
    local workValue, workValue6, waitCall, numberValue8, flag10, numberValue10, numberValue12, numberValue13, numberValue14, workValue10, mathHelper2, flag, flag2, flag3
    workValue = textValue4
    while true do
      workValue6 = eventRegistration2
      if not workValue6 then
        break
      end
      workValue6 = eventRegistration2
      workValue6 = workValue6[workValue]
      if not workValue6 then
        break
      end
      workValue6 = UseParticleFxAsset
      waitCall = "scr_indep_fireworks"
      workValue6(waitCall)
      workValue6 = StartParticleFxLoopedAtCoord
      waitCall = "scr_indep_firework_starburst"
      numberValue8 = arg1.x
      flag10 = arg1.y
      numberValue10 = arg1.z
      numberValue12 = 0.0
      numberValue13 = 0.0
      numberValue14 = 0.0
      workValue10 = arg2
      mathHelper2 = math
      mathHelper2 = mathHelper2.random
      mathHelper2 = mathHelper2()
      mathHelper2 = mathHelper2 * 2.0
      workValue10 = workValue10 * mathHelper2
      mathHelper2 = false
      flag = false
      flag2 = false
      flag3 = false
      workValue6 = workValue6(waitCall, numberValue8, flag10, numberValue10, numberValue12, numberValue13, numberValue14, workValue10, mathHelper2, flag, flag2, flag3)
      waitCall = Citizen
      waitCall = waitCall.Wait
      numberValue8 = math
      numberValue8 = numberValue8.random
      flag10 = 500
      numberValue10 = 2500
      numberValue8, flag10, numberValue10, numberValue12, numberValue13, numberValue14, workValue10, mathHelper2, flag, flag2, flag3 = numberValue8(flag10, numberValue10)
      waitCall(numberValue8, flag10, numberValue10, numberValue12, numberValue13, numberValue14, workValue10, mathHelper2, flag, flag2, flag3)
      waitCall = StopParticleFxLooped
      numberValue8 = workValue6
      flag10 = false
      waitCall(numberValue8, flag10)
    end
  end
  arg3(cmgCall2)
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2) ===
function workValue9(arg1, arg2)
  local arg3, cmgCall2
  arg3 = Citizen
  arg3 = arg3.CreateThreadNow

  -- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
  function cmgCall2()
    local workValue, workValue6, waitCall, numberValue8, flag10, numberValue10, numberValue12, numberValue13, numberValue14, workValue10, mathHelper2, flag, flag2, flag3
    workValue = textValue4
    while true do
      workValue6 = eventRegistration2
      if not workValue6 then
        break
      end
      workValue6 = eventRegistration2
      workValue6 = workValue6[workValue]
      if not workValue6 then
        break
      end
      workValue6 = UseParticleFxAsset
      waitCall = "scr_indep_fireworks"
      workValue6(waitCall)
      workValue6 = StartParticleFxLoopedAtCoord
      waitCall = "scr_indep_firework_trailburst"
      numberValue8 = arg1.x
      flag10 = arg1.y
      numberValue10 = arg1.z
      numberValue12 = 0.0
      numberValue13 = 0.0
      numberValue14 = 0.0
      workValue10 = arg2
      mathHelper2 = math
      mathHelper2 = mathHelper2.random
      mathHelper2 = mathHelper2()
      mathHelper2 = mathHelper2 * 2.0
      workValue10 = workValue10 * mathHelper2
      mathHelper2 = false
      flag = false
      flag2 = false
      flag3 = false
      workValue6 = workValue6(waitCall, numberValue8, flag10, numberValue10, numberValue12, numberValue13, numberValue14, workValue10, mathHelper2, flag, flag2, flag3)
      waitCall = Citizen
      waitCall = waitCall.Wait
      numberValue8 = math
      numberValue8 = numberValue8.random
      flag10 = 500
      numberValue10 = 2500
      numberValue8, flag10, numberValue10, numberValue12, numberValue13, numberValue14, workValue10, mathHelper2, flag, flag2, flag3 = numberValue8(flag10, numberValue10)
      waitCall(numberValue8, flag10, numberValue10, numberValue12, numberValue13, numberValue14, workValue10, mathHelper2, flag, flag2, flag3)
      waitCall = StopParticleFxLooped
      numberValue8 = workValue6
      flag10 = false
      waitCall(numberValue8, flag10)
    end
  end
  arg3(cmgCall2)
end

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1, arg2) ===
function workValue2(arg1, arg2)
  local arg3, cmgCall2, numberValue9, textValue3, numberValue11, mathHelper6, mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5, textValue2, workValue4, workValue5, flag4, flag5, numberValue
  arg3 = math
  arg3 = arg3.random
  arg3 = arg3()
  arg3 = arg3 - 0.5
  arg3 = arg3 * arg2
  arg3 = arg3 * 2
  cmgCall2 = math
  cmgCall2 = cmgCall2.random
  cmgCall2 = cmgCall2()
  cmgCall2 = cmgCall2 - 0.5
  cmgCall2 = cmgCall2 * arg2
  cmgCall2 = cmgCall2 * 2
  numberValue9 = math
  numberValue9 = numberValue9.random
  numberValue9 = numberValue9()
  numberValue9 = numberValue9 * 75.0
  textValue3 = vector3
  numberValue11 = arg1.x
  numberValue11 = numberValue11 + arg3
  mathHelper6 = arg1.y
  mathHelper6 = mathHelper6 + cmgCall2
  mathHelper7 = arg1.z
  mathHelper7 = mathHelper7 + 25.0
  mathHelper7 = mathHelper7 + numberValue9
  textValue3 = textValue3(numberValue11, mathHelper6, mathHelper7)
  textValue3 = arg1 - textValue3
  textValue3 = #textValue3
  numberValue11 = ShootSingleBulletBetweenCoords
  mathHelper6 = arg1.x
  mathHelper7 = arg1.y
  mathHelper8 = arg1.z
  mathHelper = arg1.x
  mathHelper = mathHelper + arg3
  mathHelper3 = arg1.y
  mathHelper3 = mathHelper3 + cmgCall2
  mathHelper4 = arg1.z
  mathHelper4 = mathHelper4 + numberValue9
  mathHelper4 = mathHelper4 + 25.0
  mathHelper5 = 10
  textValue2 = true
  workValue4 = 2138347493
  workValue5 = 0
  flag4 = true
  flag5 = false
  numberValue = textValue3 * 2.0
  numberValue11(mathHelper6, mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5, textValue2, workValue4, workValue5, flag4, flag5, numberValue)
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2, arg3) ===
function workValue3(arg1, arg2, arg3)
  local cmgCall2, numberValue9
  cmgCall2 = Citizen
  cmgCall2 = cmgCall2.CreateThreadNow

  -- === HELPER FUNCTION (decompiler name: numberValue9; parameters: none) ===
  function numberValue9()
    local workValue, workValue6, waitCall, numberValue8
    workValue = textValue4
    while true do
      workValue6 = eventRegistration2
      if not workValue6 then
        break
      end
      workValue6 = eventRegistration2
      workValue6 = workValue6[workValue]
      if not workValue6 then
        break
      end
      workValue6 = workValue2
      waitCall = arg1
      numberValue8 = arg2
      workValue6(waitCall, numberValue8)
      workValue6 = Citizen
      workValue6 = workValue6.Wait
      waitCall = arg3
      workValue6(waitCall)
    end
  end
  cmgCall2(numberValue9)
end
dataTable = {}
vector3Builder = vector3
eventRegistration = -421.4
vector3Builder2 = 1108.81
vector3Builder3 = 332.53
vector3Builder = vector3Builder(eventRegistration, vector3Builder2, vector3Builder3)
eventRegistration = vector3
vector3Builder2 = -436.92
vector3Builder3 = 1112.98
vector3Builder4 = 332.54
eventRegistration = eventRegistration(vector3Builder2, vector3Builder3, vector3Builder4)
vector3Builder2 = vector3
vector3Builder3 = -401.12
vector3Builder4 = 1100.29
vector3Builder5 = 332.53
vector3Builder2 = vector3Builder2(vector3Builder3, vector3Builder4, vector3Builder5)
vector3Builder3 = vector3
vector3Builder4 = -458.45
vector3Builder5 = 1115.95
vector3Builder6 = 332.55
vector3Builder3 = vector3Builder3(vector3Builder4, vector3Builder5, vector3Builder6)
vector3Builder4 = vector3
vector3Builder5 = -413.05
vector3Builder6 = 1097.44
vector3Builder7 = 332.53
vector3Builder4 = vector3Builder4(vector3Builder5, vector3Builder6, vector3Builder7)
vector3Builder5 = vector3
vector3Builder6 = -449.77
vector3Builder7 = 1107.41
vector3Builder8 = 332.53
vector3Builder5 = vector3Builder5(vector3Builder6, vector3Builder7, vector3Builder8)
vector3Builder6 = vector3
vector3Builder7 = -431.66
vector3Builder8 = 1101.79
vector3Builder9 = 340.52
vector3Builder6 = vector3Builder6(vector3Builder7, vector3Builder8, vector3Builder9)
vector3Builder7 = vector3
vector3Builder8 = -401.41
vector3Builder9 = 1092.78
numberValue5 = 343.85
vector3Builder7 = vector3Builder7(vector3Builder8, vector3Builder9, numberValue5)
vector3Builder8 = vector3
vector3Builder9 = -439.14
numberValue5 = 1075.14
numberValue6 = 352.42
vector3Builder8 = vector3Builder8(vector3Builder9, numberValue5, numberValue6)
vector3Builder9 = vector3
numberValue5 = -462.21
numberValue6 = 1109.73
numberValue7 = 343.85
vector3Builder9, numberValue5, numberValue6, numberValue7 = vector3Builder9(numberValue5, numberValue6, numberValue7)
dataTable[1] = vector3Builder
dataTable[2] = eventRegistration
dataTable[3] = vector3Builder2
dataTable[4] = vector3Builder3
dataTable[5] = vector3Builder4
dataTable[6] = vector3Builder5
dataTable[7] = vector3Builder6
dataTable[8] = vector3Builder7
dataTable[9] = vector3Builder8
dataTable[10] = vector3Builder9
dataTable[11] = numberValue5
dataTable[12] = numberValue6
dataTable[13] = numberValue7

-- === HELPER FUNCTION (decompiler name: vector3Builder; parameters: none) ===
function vector3Builder()
  local arg1, arg2, arg3, cmgCall2, numberValue9, textValue3, numberValue11, mathHelper6, mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5, textValue2, workValue4
  while true do
    arg1 = flag11
    if not arg1 then
      break
    end
    arg1 = CMG
    arg1 = arg1.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg1 = arg1()
    arg2 = ipairs
    arg3 = dataTable
    arg2, arg3, cmgCall2, numberValue9 = arg2(arg3)
    for textValue3, numberValue11 in arg2, arg3, cmgCall2, numberValue9 do
      mathHelper6 = arg1 - numberValue11
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
        textValue2 = false
        workValue4 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        mathHelper6(mathHelper7, mathHelper8, mathHelper, mathHelper3, mathHelper4, mathHelper5, textValue2, workValue4)
        break
      end
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
end
eventRegistration = RegisterNetEvent
vector3Builder2 = "698a9bf67f"
-- Beginner: this function handles network event "698a9bf67f".

-- === HELPER FUNCTION (decompiler name: vector3Builder3; parameters: arg1) ===
function vector3Builder3(arg1)
  local arg2, arg3, cmgCall2, numberValue9, textValue3
  arg2 = CMG
  arg2 = arg2.loadPtfx
  arg3 = "scr_indep_fireworks"
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.loadWeaponAsset
  arg3 = "weapon_firework"
  arg2(arg3)
  arg2 = eventRegistration2
  if not arg2 then
    arg2 = {}
    eventRegistration2 = arg2
  end
  arg2 = eventRegistration2
  arg2 = arg2[arg1]
  if not arg2 then
    arg2 = eventRegistration2
    arg3 = {}
    arg2[arg1] = arg3
  end
  textValue4 = arg1
  arg2 = flag11
  if not arg2 then
    arg2 = true
    flag11 = arg2
    arg2 = Citizen
    arg2 = arg2.CreateThreadNow
    arg3 = vector3Builder
    arg2(arg3)
  end
  if 1 == arg1 then
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -421.4
    numberValue9 = 1108.81
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -436.92
    numberValue9 = 1112.98
    textValue3 = 332.54
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -401.12
    numberValue9 = 1100.29
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -458.45
    numberValue9 = 1115.95
    textValue3 = 332.55
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
  elseif 2 == arg1 then
    arg2 = eventRegistration2
    arg2[1] = nil
    arg2 = workValue3
    arg3 = vector3
    cmgCall2 = -413.05
    numberValue9 = 1097.44
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 25.0
    numberValue9 = 1000
    arg2(arg3, cmgCall2, numberValue9)
    arg2 = workValue3
    arg3 = vector3
    cmgCall2 = -449.77
    numberValue9 = 1107.41
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 25.0
    numberValue9 = 1000
    arg2(arg3, cmgCall2, numberValue9)
  elseif 3 == arg1 then
    arg2 = workValue8
    arg3 = vector3
    cmgCall2 = -431.66
    numberValue9 = 1101.79
    textValue3 = 340.52
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue8
    arg3 = vector3
    cmgCall2 = -401.41
    numberValue9 = 1092.78
    textValue3 = 343.85
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue8
    arg3 = vector3
    cmgCall2 = -439.14
    numberValue9 = 1075.14
    textValue3 = 352.42
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue8
    arg3 = vector3
    cmgCall2 = -462.21
    numberValue9 = 1109.73
    textValue3 = 343.85
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
  elseif 4 == arg1 then
    arg2 = eventRegistration2
    arg2[2] = nil
    arg2 = eventRegistration2
    arg2[3] = nil
  elseif 5 == arg1 then
    arg2 = workValue9
    arg3 = vector3
    cmgCall2 = -431.66
    numberValue9 = 1101.79
    textValue3 = 340.52
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue9
    arg3 = vector3
    cmgCall2 = -401.41
    numberValue9 = 1092.78
    textValue3 = 343.85
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue9
    arg3 = vector3
    cmgCall2 = -439.14
    numberValue9 = 1075.14
    textValue3 = 352.42
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue9
    arg3 = vector3
    cmgCall2 = -462.21
    numberValue9 = 1109.73
    textValue3 = 343.85
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
  elseif 6 == arg1 then
    arg2 = eventRegistration2
    arg2[5] = nil
  elseif 7 == arg1 then
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -413.05
    numberValue9 = 1097.44
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 1.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -449.77
    numberValue9 = 1107.41
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 1.0
    arg2(arg3, cmgCall2)
  elseif 8 == arg1 then
    arg2 = eventRegistration2
    arg2[7] = nil
    arg2 = workValue3
    arg3 = vector3
    cmgCall2 = -401.41
    numberValue9 = 1092.78
    textValue3 = 343.85
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 100.0
    numberValue9 = 400
    arg2(arg3, cmgCall2, numberValue9)
    arg2 = workValue3
    arg3 = vector3
    cmgCall2 = -439.14
    numberValue9 = 1075.14
    textValue3 = 352.42
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 100.0
    numberValue9 = 400
    arg2(arg3, cmgCall2, numberValue9)
    arg2 = workValue3
    arg3 = vector3
    cmgCall2 = -462.21
    numberValue9 = 1109.73
    textValue3 = 343.85
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 100.0
    numberValue9 = 400
    arg2(arg3, cmgCall2, numberValue9)
  elseif 9 == arg1 then
    arg2 = eventRegistration2
    arg2[8] = nil
  elseif 10 == arg1 then
    arg2 = workValue8
    arg3 = vector3
    cmgCall2 = -431.66
    numberValue9 = 1101.79
    textValue3 = 340.52
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 4.0
    arg2(arg3, cmgCall2)
    arg2 = workValue8
    arg3 = vector3
    cmgCall2 = -401.41
    numberValue9 = 1092.78
    textValue3 = 343.85
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 4.0
    arg2(arg3, cmgCall2)
    arg2 = workValue8
    arg3 = vector3
    cmgCall2 = -439.14
    numberValue9 = 1075.14
    textValue3 = 352.42
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 4.0
    arg2(arg3, cmgCall2)
    arg2 = workValue8
    arg3 = vector3
    cmgCall2 = -462.21
    numberValue9 = 1109.73
    textValue3 = 343.85
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 4.0
    arg2(arg3, cmgCall2)
  elseif 11 == arg1 then
    arg2 = eventRegistration2
    arg2[10] = nil
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -421.4
    numberValue9 = 1108.81
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -436.92
    numberValue9 = 1112.98
    textValue3 = 332.54
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -401.12
    numberValue9 = 1100.29
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -458.45
    numberValue9 = 1115.95
    textValue3 = 332.55
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue9
    arg3 = vector3
    cmgCall2 = -431.66
    numberValue9 = 1101.79
    textValue3 = 340.52
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 4.0
    arg2(arg3, cmgCall2)
    arg2 = workValue9
    arg3 = vector3
    cmgCall2 = -401.41
    numberValue9 = 1092.78
    textValue3 = 343.85
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 4.0
    arg2(arg3, cmgCall2)
    arg2 = workValue9
    arg3 = vector3
    cmgCall2 = -439.14
    numberValue9 = 1075.14
    textValue3 = 352.42
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 4.0
    arg2(arg3, cmgCall2)
    arg2 = workValue9
    arg3 = vector3
    cmgCall2 = -462.21
    numberValue9 = 1109.73
    textValue3 = 343.85
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 4.0
    arg2(arg3, cmgCall2)
  elseif 12 == arg1 then
    arg2 = eventRegistration2
    arg2[11] = nil
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -421.4
    numberValue9 = 1108.81
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -436.92
    numberValue9 = 1112.98
    textValue3 = 332.54
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -401.12
    numberValue9 = 1100.29
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -458.45
    numberValue9 = 1115.95
    textValue3 = 332.55
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue3
    arg3 = vector3
    cmgCall2 = -413.05
    numberValue9 = 1097.44
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 25.0
    numberValue9 = 1000
    arg2(arg3, cmgCall2, numberValue9)
    arg2 = workValue3
    arg3 = vector3
    cmgCall2 = -449.77
    numberValue9 = 1107.41
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 25.0
    numberValue9 = 1000
    arg2(arg3, cmgCall2, numberValue9)
  elseif 13 == arg1 then
    arg2 = eventRegistration2
    arg2[12] = nil
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -413.05
    numberValue9 = 1097.44
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 1.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -449.77
    numberValue9 = 1107.41
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 1.0
    arg2(arg3, cmgCall2)
    arg2 = workValue9
    arg3 = vector3
    cmgCall2 = -431.66
    numberValue9 = 1101.79
    textValue3 = 340.52
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 4.0
    arg2(arg3, cmgCall2)
    arg2 = workValue9
    arg3 = vector3
    cmgCall2 = -401.41
    numberValue9 = 1092.78
    textValue3 = 343.85
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 4.0
    arg2(arg3, cmgCall2)
    arg2 = workValue9
    arg3 = vector3
    cmgCall2 = -439.14
    numberValue9 = 1075.14
    textValue3 = 352.42
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 4.0
    arg2(arg3, cmgCall2)
    arg2 = workValue9
    arg3 = vector3
    cmgCall2 = -462.21
    numberValue9 = 1109.73
    textValue3 = 343.85
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 4.0
    arg2(arg3, cmgCall2)
  elseif 14 == arg1 then
    arg2 = eventRegistration2
    arg2[13] = nil
    arg2 = workValue3
    arg3 = vector3
    cmgCall2 = -401.41
    numberValue9 = 1092.78
    textValue3 = 343.85
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 100.0
    numberValue9 = 400
    arg2(arg3, cmgCall2, numberValue9)
    arg2 = workValue3
    arg3 = vector3
    cmgCall2 = -439.14
    numberValue9 = 1075.14
    textValue3 = 352.42
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 100.0
    numberValue9 = 400
    arg2(arg3, cmgCall2, numberValue9)
    arg2 = workValue3
    arg3 = vector3
    cmgCall2 = -462.21
    numberValue9 = 1109.73
    textValue3 = 343.85
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 100.0
    numberValue9 = 400
    arg2(arg3, cmgCall2, numberValue9)
  elseif 15 == arg1 then
    arg2 = eventRegistration2
    arg2[14] = nil
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -413.05
    numberValue9 = 1097.44
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -449.77
    numberValue9 = 1107.41
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -421.4
    numberValue9 = 1108.81
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -436.92
    numberValue9 = 1112.98
    textValue3 = 332.54
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -401.12
    numberValue9 = 1100.29
    textValue3 = 332.53
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -458.45
    numberValue9 = 1115.95
    textValue3 = 332.55
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -383.67
    numberValue9 = 1185.89
    textValue3 = 325.79
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
    arg2 = workValue7
    arg3 = vector3
    cmgCall2 = -430.62
    numberValue9 = 1197.46
    textValue3 = 325.64
    arg3 = arg3(cmgCall2, numberValue9, textValue3)
    cmgCall2 = 2.0
    arg2(arg3, cmgCall2)
  elseif 16 == arg1 then
    arg2 = eventRegistration2
    arg2[15] = nil
    arg2 = false
    flag11 = arg2
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 5000
    arg2(arg3)
    arg2 = nil
    eventRegistration2 = arg2
    arg2 = 0
    textValue4 = arg2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "698a9bf67f".
eventRegistration(vector3Builder2, vector3Builder3)
