--[[
    LEVEL 1 BEGINNER GUIDE — Cuffs
    ===================================

    File: cmg/prod/client/police/cl_cuffs.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Cuffs feature.

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
      * Always-running loops: 0
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
local stateFlag, stateFlag10, number10, stateFlag12, number11, stateFlag13, number13, number15, stateFlag16, workingValue4, number, number2, number3, number4, number5, cmgOperation, text, cmgOperation2, text2, text3, number7, number8, eventHandler, text4, cmgOperation3, text5, cmgOperation4, number9, text6, workingValue, workingValue2, workingValue3, dataCollection2
stateFlag = false
stateFlag10 = false
number10 = 0
stateFlag12 = false
number11 = 0
stateFlag13 = false
number13 = 0
number15 = 0
stateFlag16 = false
workingValue4 = DisableControlAction
number = 0
number2 = 0
number3 = 4000
number4 = 2500
number5 = 6000
cmgOperation = CMG

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2
  localValue1 = stateFlag
  return localValue1
end
cmgOperation.isHandcuffed = text
cmgOperation = exports
text = "isHandcuffed"
cmgOperation2 = tCMG
cmgOperation2 = cmgOperation2.isHandcuffed
cmgOperation(text, cmgOperation2)
cmgOperation = TriggerEvent
text = "chat:addSuggestion"
cmgOperation2 = "/cuff"
text2 = "Cuff the nearest player"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
cmgOperation(text, cmgOperation2, text2)
cmgOperation = TriggerEvent
text = "chat:addSuggestion"
cmgOperation2 = "/frontcuff"
text2 = "Frontcuff the nearest player"
cmgOperation(text, cmgOperation2, text2)
cmgOperation = RegisterKeyMapping
text = "cuff"
cmgOperation2 = "Handcuff"
text2 = "keyboard"
text3 = "F11"
-- Beginner: Bind a command to a keyboard/controller key.
cmgOperation(text, cmgOperation2, text2, text3)
cmgOperation = {}
text = vector3
cmgOperation2 = 460.67126464844
text2 = -995.552734375
text3 = 24.915018081665
text = text(cmgOperation2, text2, text3)
cmgOperation2 = vector3
text2 = 459.45010375977
text3 = -1001.6173095703
number7 = 24.914978027344
cmgOperation2 = cmgOperation2(text2, text3, number7)
text2 = vector3
text3 = -1072.6063232422
number7 = -824.88726806641
number8 = 5.479706287384
text2, text3, number7, number8, eventHandler, text4, cmgOperation3, text5, cmgOperation4, number9, text6, workingValue, workingValue2, workingValue3, dataCollection2 = text2(text3, number7, number8)
cmgOperation[1] = text
cmgOperation[2] = cmgOperation2
cmgOperation[3] = text2
cmgOperation[4] = text3
cmgOperation[5] = number7
cmgOperation[6] = number8
cmgOperation[7] = eventHandler
cmgOperation[8] = text4
cmgOperation[9] = cmgOperation3
cmgOperation[10] = text5
cmgOperation[11] = cmgOperation4
cmgOperation[12] = number9
cmgOperation[13] = text6
cmgOperation[14] = workingValue
cmgOperation[15] = workingValue2
cmgOperation[16] = workingValue3
cmgOperation[17] = dataCollection2

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2
  localValue1 = stateFlag
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.setCanOpenPhone
    localValue2 = true
    localValue1(localValue2)
  end
end

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2
  localValue1 = stateFlag
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.setCanOpenPhone
    localValue2 = false
    localValue1(localValue2)
  end
end
text2 = pairs
text3 = cmgOperation
text2, text3, number7, number8 = text2(text3)
for eventHandler, text4 in text2, text3, number7, number8 do
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.createArea
  text5 = "phone_allowed_"
  cmgOperation4 = tostring
  number9 = eventHandler
  cmgOperation4 = cmgOperation4(number9)
  text5 = text5 .. cmgOperation4
  cmgOperation4 = text4
  number9 = 5.0
  text6 = 5.0
  workingValue = text
  workingValue2 = cmgOperation2

  -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
  function workingValue3()
    local localValue1, localValue2
  end
  dataCollection2 = {}
  -- Beginner: Create an interaction area around a world position.
  cmgOperation3(text5, cmgOperation4, number9, text6, workingValue, workingValue2, workingValue3, dataCollection2)
end
text2 = false

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, cmgOperation5, playerIndex, number12, stateFlag14, text9, stateFlag15
  localValue1 = 7
  localValue2 = 38
  cmgOperation5 = 1
  for playerIndex = localValue1, localValue2, cmgOperation5 do
    number12 = workingValue4
    stateFlag14 = 0
    text9 = playerIndex
    stateFlag15 = true
    number12(stateFlag14, text9, stateFlag15)
  end
end

-- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
function number7()
  local localValue1, localValue2, cmgOperation5
  localValue1 = text2
  if not localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.setCanAnim
    localValue2 = false
    localValue1(localValue2)
    localValue1 = CMG
    localValue1 = localValue1.createThreadOnTick
    localValue2 = text3
    cmgOperation5 = "Disable Controls Whilst Cuffing"
    -- Beginner: Run a helper every game frame while this script is active.
    localValue1(localValue2, cmgOperation5)
    localValue1 = true
    text2 = localValue1
    localValue1 = CMG
    localValue1 = localValue1.setSwitchGunEnabled
    localValue2 = false
    localValue1(localValue2)
  end
end

-- === HELPER FUNCTION (decompiler name: number8; parameters: none) ===
function number8()
  local localValue1, localValue2
  localValue1 = text2
  if localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.setCanAnim
    localValue2 = true
    localValue1(localValue2)
    localValue1 = CMG
    localValue1 = localValue1.deleteThreadOnTick
    localValue2 = text3
    localValue1(localValue2)
    localValue1 = false
    text2 = localValue1
    localValue1 = CMG
    localValue1 = localValue1.setSwitchGunEnabled
    localValue2 = true
    localValue1(localValue2)
  end
end
eventHandler = RegisterNetEvent
text4 = "979a90e0cf"
-- Beginner: this function handles network event "979a90e0cf".

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1) ===
function cmgOperation3(localValue1)
  local localValue2, cmgOperation5, playerIndex, number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number6, stateFlag9
  localValue2 = TriggerEvent
  cmgOperation5 = "259d5b120c"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "259d5b120c".
  localValue2(cmgOperation5)
  localValue2 = number7
  localValue2()
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  cmgOperation5 = CMG
  cmgOperation5 = cmgOperation5.setWeapon
  playerIndex = localValue2
  number12 = -273849285
  stateFlag14 = true
  cmgOperation5(playerIndex, number12, stateFlag14)
  cmgOperation5 = GetPlayerPed
  playerIndex = GetPlayerFromServerId
  number12 = localValue1
  playerIndex, number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number6, stateFlag9 = playerIndex(number12)
  -- Beginner: result below is playerPed.
  cmgOperation5 = cmgOperation5(playerIndex, number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number6, stateFlag9)
  playerIndex = true
  stateFlag13 = playerIndex
  playerIndex = CMG
  playerIndex = playerIndex.loadAnimDict
  number12 = "mp_arrest_paired"
  -- Beginner: Load a GTA animation dictionary before using it.
  playerIndex(number12)
  playerIndex = AttachEntityToEntity
  number12 = localValue2
  stateFlag14 = cmgOperation5
  text9 = 11816
  stateFlag15 = -0.1
  number16 = 0.45
  number17 = 0.0
  stateFlag2 = 0.0
  stateFlag3 = 0.0
  stateFlag4 = 20.0
  stateFlag5 = false
  stateFlag6 = false
  stateFlag7 = false
  stateFlag8 = false
  number6 = 20
  stateFlag9 = false
  -- Beginner: Attach one entity to another entity.
  playerIndex(number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number6, stateFlag9)
  playerIndex = TaskPlayAnim
  number12 = localValue2
  stateFlag14 = "mp_arrest_paired"
  text9 = "crook_p2_back_left"
  stateFlag15 = 8.0
  number16 = -8.0
  number17 = 5500
  stateFlag2 = 33
  stateFlag3 = 0
  stateFlag4 = false
  stateFlag5 = false
  stateFlag6 = false
  -- Beginner: Play an animation on a ped.
  playerIndex(number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6)
  playerIndex = RemoveAnimDict
  number12 = "mp_arrest_paired"
  playerIndex(number12)
  playerIndex = Citizen
  playerIndex = playerIndex.Wait
  number12 = 4000
  playerIndex(number12)
  playerIndex = DetachEntity
  number12 = localValue2
  stateFlag14 = true
  text9 = false
  playerIndex(number12, stateFlag14, text9)
  playerIndex = false
  stateFlag13 = playerIndex
  playerIndex = number8
  playerIndex()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "979a90e0cf".
eventHandler(text4, cmgOperation3)
eventHandler = RegisterNetEvent
text4 = "c22d4065c2"
-- Beginner: this function handles network event "c22d4065c2".

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, cmgOperation5, playerIndex, number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4
  localValue1 = number7
  localValue1()
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = CMG
  localValue2 = localValue2.loadAnimDict
  cmgOperation5 = "mp_arrest_paired"
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue2(cmgOperation5)
  localValue2 = TaskPlayAnim
  cmgOperation5 = localValue1
  playerIndex = "mp_arrest_paired"
  number12 = "cop_p2_back_left"
  stateFlag14 = 8.0
  text9 = -8.0
  stateFlag15 = 5500
  number16 = 33
  number17 = 0
  stateFlag2 = false
  stateFlag3 = false
  stateFlag4 = false
  -- Beginner: Play an animation on a ped.
  localValue2(cmgOperation5, playerIndex, number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4)
  localValue2 = RemoveAnimDict
  cmgOperation5 = "mp_arrest_paired"
  localValue2(cmgOperation5)
  localValue2 = math
  localValue2 = localValue2.floor
  cmgOperation5 = GetAnimDuration
  playerIndex = "mp_arrest_paired"
  number12 = "cop_p2_back_left"
  cmgOperation5 = cmgOperation5(playerIndex, number12)
  cmgOperation5 = cmgOperation5 * 1000
  localValue2 = localValue2(cmgOperation5)
  cmgOperation5 = Wait
  playerIndex = localValue2
  cmgOperation5(playerIndex)
  cmgOperation5 = number8
  cmgOperation5()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c22d4065c2".
eventHandler(text4, cmgOperation3)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1) ===
function eventHandler(localValue1)
  local localValue2, cmgOperation5, playerIndex, number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number6, stateFlag9
  if localValue1 then
    localValue2 = number10
    if 0 ~= localValue2 then
      localValue2 = SetEntityVisible
      cmgOperation5 = number10
      playerIndex = false
      number12 = false
      localValue2(cmgOperation5, playerIndex, number12)
      localValue2 = DetachEntity
      cmgOperation5 = number10
      playerIndex = true
      number12 = true
      localValue2(cmgOperation5, playerIndex, number12)
      localValue2 = DeleteEntity
      cmgOperation5 = number10
      -- Beginner: Delete a GTA entity.
      localValue2(cmgOperation5)
    end
    localValue2 = false
    stateFlag12 = localValue2
    localValue2 = 0
    number11 = localValue2
    localValue2 = 0
    number10 = localValue2
    return
  end
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  cmgOperation5 = -1281059971
  localValue2 = localValue2(cmgOperation5)
  if not localValue2 then
    return
  end
  cmgOperation5 = GetEntityCoords
  playerIndex = CMG
  playerIndex = playerIndex.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  playerIndex = playerIndex()
  number12 = true
  -- Beginner: result below is entityCoords.
  cmgOperation5 = cmgOperation5(playerIndex, number12)
  playerIndex = CMG
  playerIndex = playerIndex.requestEntitySpawn
  number12 = "cuff_object"
  playerIndex(number12)
  playerIndex = CreateObject
  number12 = localValue2
  stateFlag14 = cmgOperation5.x
  text9 = cmgOperation5.y
  stateFlag15 = cmgOperation5.z
  number16 = true
  number17 = true
  stateFlag2 = true
  -- Beginner: result below is objectEntity.
  playerIndex = playerIndex(number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2)
  number11 = playerIndex
  playerIndex = SetModelAsNoLongerNeeded
  number12 = localValue2
  playerIndex(number12)
  playerIndex = true
  stateFlag12 = playerIndex
  playerIndex = CMG
  playerIndex = playerIndex.syncNetworkId
  number12 = ObjToNet
  stateFlag14 = number11
  number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number6, stateFlag9 = number12(stateFlag14)
  playerIndex(number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number6, stateFlag9)
  playerIndex = stateFlag10
  if playerIndex then
    playerIndex = AttachEntityToEntity
    number12 = number11
    stateFlag14 = CMG
    stateFlag14 = stateFlag14.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    stateFlag14 = stateFlag14()
    text9 = GetPedBoneIndex
    stateFlag15 = CMG
    stateFlag15 = stateFlag15.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    stateFlag15 = stateFlag15()
    number16 = 60309
    text9 = text9(stateFlag15, number16)
    stateFlag15 = -0.058
    number16 = 0.005
    number17 = 0.09
    stateFlag2 = 290.0
    stateFlag3 = 95.0
    stateFlag4 = 120.0
    stateFlag5 = true
    stateFlag6 = false
    stateFlag7 = false
    stateFlag8 = false
    number6 = 0
    stateFlag9 = false
    -- Beginner: Attach one entity to another entity.
    playerIndex(number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number6, stateFlag9)
  else
    playerIndex = AttachEntityToEntity
    number12 = number11
    stateFlag14 = CMG
    stateFlag14 = stateFlag14.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    stateFlag14 = stateFlag14()
    text9 = GetPedBoneIndex
    stateFlag15 = CMG
    stateFlag15 = stateFlag15.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    stateFlag15 = stateFlag15()
    number16 = 60309
    text9 = text9(stateFlag15, number16)
    stateFlag15 = -0.055
    number16 = 0.06
    number17 = 0.04
    stateFlag2 = 265.0
    stateFlag3 = 155.0
    stateFlag4 = 80.0
    stateFlag5 = true
    stateFlag6 = false
    stateFlag7 = false
    stateFlag8 = false
    number6 = 0
    stateFlag9 = true
    playerIndex(number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number6, stateFlag9)
  end
  playerIndex = number11
  number10 = playerIndex
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, cmgOperation5, playerIndex, number12, stateFlag14
  localValue2 = CMG
  localValue2 = localValue2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  cmgOperation5 = SetEnableHandcuffs
  playerIndex = localValue2
  number12 = stateFlag
  cmgOperation5(playerIndex, number12)
  cmgOperation5 = SetPedCanPlayGestureAnims
  playerIndex = localValue2
  number12 = localValue1
  cmgOperation5(playerIndex, number12)
  cmgOperation5 = SetPedPathCanUseLadders
  playerIndex = localValue2
  number12 = localValue1
  cmgOperation5(playerIndex, number12)
  if localValue1 then
    cmgOperation5 = SetPedStealthMovement
    playerIndex = localValue2
    number12 = false
    stateFlag14 = ""
    cmgOperation5(playerIndex, number12, stateFlag14)
  end
  cmgOperation5 = ClearPedTasks
  playerIndex = localValue2
  cmgOperation5(playerIndex)
end
cmgOperation3 = RegisterNetEvent
text5 = "667b6c018e"
-- Beginner: this function handles network event "667b6c018e".

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2) ===
function cmgOperation4(localValue1, localValue2)
  local cmgOperation5, playerIndex, number12, stateFlag14, text9, stateFlag15, number16
  cmgOperation5 = TriggerEvent
  playerIndex = "259d5b120c"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "259d5b120c".
  cmgOperation5(playerIndex)
  cmgOperation5 = true
  stateFlag13 = cmgOperation5
  stateFlag = localValue2
  cmgOperation5 = globalInPrison
  if not cmgOperation5 then
    cmgOperation5 = CMG
    cmgOperation5 = cmgOperation5.setCanOpenPhone
    playerIndex = stateFlag
    playerIndex = not playerIndex
    cmgOperation5(playerIndex)
  end
  cmgOperation5 = stateFlag
  if cmgOperation5 then
    cmgOperation5 = 0
    number13 = cmgOperation5
    cmgOperation5 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    cmgOperation5 = cmgOperation5()
    playerIndex = math
    playerIndex = playerIndex.random
    number12 = 5000
    stateFlag14 = 45000
    playerIndex = playerIndex(number12, stateFlag14)
    cmgOperation5 = cmgOperation5 + playerIndex
    number15 = cmgOperation5
    cmgOperation5 = false
    stateFlag16 = cmgOperation5
    cmgOperation5 = TriggerEvent
    playerIndex = "56e6172373"
    number12 = false
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "56e6172373".
    cmgOperation5(playerIndex, number12)
    cmgOperation5 = TriggerEvent
    playerIndex = "2a70dddd80"
    cmgOperation5(playerIndex)
  end
  stateFlag10 = localValue1
  cmgOperation5 = eventHandler
  playerIndex = stateFlag
  playerIndex = not playerIndex
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  cmgOperation5(playerIndex)
  if localValue1 then
    cmgOperation5 = stateFlag
    if cmgOperation5 then
      cmgOperation5 = tCMG
      cmgOperation5 = cmgOperation5.playAnim
      playerIndex = true
      number12 = {}
      stateFlag14 = {}
      text9 = "anim@move_m@prisoner_cuffed"
      stateFlag15 = "idle"
      number16 = 1
      stateFlag14[1] = text9
      stateFlag14[2] = stateFlag15
      stateFlag14[3] = number16
      number12[1] = stateFlag14
      stateFlag14 = true
      cmgOperation5(playerIndex, number12, stateFlag14)
    end
  end
  cmgOperation5 = stateFlag
  if cmgOperation5 and not localValue1 then
    cmgOperation5 = Wait
    playerIndex = 3000
    cmgOperation5(playerIndex)
    cmgOperation5 = text4
    playerIndex = false
    cmgOperation5(playerIndex)
    cmgOperation5 = Citizen
    cmgOperation5 = cmgOperation5.CreateThread

    -- === HELPER FUNCTION: playerIndex() ===
    function playerIndex()
      local localValue12, stateFlag11, dataCollection, dataCollection3, text7, text8, number14
      localValue12 = Wait
      stateFlag11 = 1000
      localValue12(stateFlag11)
      localValue12 = localValue1
      if localValue12 then
        localValue12 = tCMG
        localValue12 = localValue12.playAnim
        stateFlag11 = true
        dataCollection = {}
        dataCollection3 = {}
        text7 = "anim@move_m@prisoner_cuffed"
        text8 = "idle"
        number14 = 1
        dataCollection3[1] = text7
        dataCollection3[2] = text8
        dataCollection3[3] = number14
        dataCollection[1] = dataCollection3
        dataCollection3 = true
        localValue12(stateFlag11, dataCollection, dataCollection3)
      else
        localValue12 = tCMG
        localValue12 = localValue12.playAnim
        stateFlag11 = true
        dataCollection = {}
        dataCollection3 = {}
        text7 = "mp_arresting"
        text8 = "idle"
        number14 = 1
        dataCollection3[1] = text7
        dataCollection3[2] = text8
        dataCollection3[3] = number14
        dataCollection[1] = dataCollection3
        dataCollection3 = true
        localValue12(stateFlag11, dataCollection, dataCollection3)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    cmgOperation5(playerIndex)
  else
    cmgOperation5 = tCMG
    cmgOperation5 = cmgOperation5.stopAnim
    playerIndex = true
    cmgOperation5(playerIndex)
    cmgOperation5 = text4
    playerIndex = true
    cmgOperation5(playerIndex)
    cmgOperation5 = ClearPedTasks
    playerIndex = CMG
    playerIndex = playerIndex.getPlayerPed
    playerIndex, number12, stateFlag14, text9, stateFlag15, number16 = playerIndex()
    cmgOperation5(playerIndex, number12, stateFlag14, text9, stateFlag15, number16)
    cmgOperation5 = UncuffPed
    playerIndex = CMG
    playerIndex = playerIndex.getPlayerPed
    playerIndex, number12, stateFlag14, text9, stateFlag15, number16 = playerIndex()
    cmgOperation5(playerIndex, number12, stateFlag14, text9, stateFlag15, number16)
    cmgOperation5 = SetPedUsingActionMode
    playerIndex = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerIndex = playerIndex()
    number12 = false
    stateFlag14 = -1
    text9 = "DEFAULT_ACTION"
    cmgOperation5(playerIndex, number12, stateFlag14, text9)
  end
  cmgOperation5 = false
  stateFlag13 = cmgOperation5
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "667b6c018e".
cmgOperation3(text5, cmgOperation4)
cmgOperation3 = RegisterNetEvent
text5 = "edd7dc445b"
-- Beginner: this function handles network event "edd7dc445b".

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1) ===
function cmgOperation4(localValue1)
  local localValue2, cmgOperation5, playerIndex, number12, stateFlag14, text9, stateFlag15
  localValue2 = true
  stateFlag13 = localValue2
  localValue2 = stateFlag
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.setCanOpenPhone
    cmgOperation5 = true
    localValue2(cmgOperation5)
  end
  localValue2 = false
  stateFlag = localValue2
  stateFlag10 = localValue1
  localValue2 = eventHandler
  cmgOperation5 = stateFlag
  cmgOperation5 = not cmgOperation5
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue2(cmgOperation5)
  if localValue1 then
    localValue2 = stateFlag
    if localValue2 then
      localValue2 = tCMG
      localValue2 = localValue2.playAnim
      cmgOperation5 = true
      playerIndex = {}
      number12 = {}
      stateFlag14 = "anim@move_m@prisoner_cuffed"
      text9 = "idle"
      stateFlag15 = 1
      number12[1] = stateFlag14
      number12[2] = text9
      number12[3] = stateFlag15
      playerIndex[1] = number12
      number12 = true
      localValue2(cmgOperation5, playerIndex, number12)
    end
  end
  localValue2 = GetEntityAttachedTo
  cmgOperation5 = PlayerPedId
  cmgOperation5, playerIndex, number12, stateFlag14, text9, stateFlag15 = cmgOperation5()
  localValue2 = localValue2(cmgOperation5, playerIndex, number12, stateFlag14, text9, stateFlag15)
  if 0 ~= localValue2 then
    cmgOperation5 = IsPedAPlayer
    playerIndex = localValue2
    cmgOperation5 = cmgOperation5(playerIndex)
    if cmgOperation5 then
      cmgOperation5 = TriggerEvent
      playerIndex = "2ce9e6535d"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "2ce9e6535d".
      cmgOperation5(playerIndex)
    end
  end
  cmgOperation5 = tCMG
  cmgOperation5 = cmgOperation5.stopAnim
  playerIndex = true
  cmgOperation5(playerIndex)
  cmgOperation5 = text4
  playerIndex = true
  cmgOperation5(playerIndex)
  cmgOperation5 = ClearPedTasks
  playerIndex = CMG
  playerIndex = playerIndex.getPlayerPed
  playerIndex, number12, stateFlag14, text9, stateFlag15 = playerIndex()
  cmgOperation5(playerIndex, number12, stateFlag14, text9, stateFlag15)
  cmgOperation5 = UncuffPed
  playerIndex = CMG
  playerIndex = playerIndex.getPlayerPed
  playerIndex, number12, stateFlag14, text9, stateFlag15 = playerIndex()
  cmgOperation5(playerIndex, number12, stateFlag14, text9, stateFlag15)
  cmgOperation5 = false
  stateFlag13 = cmgOperation5
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "edd7dc445b".
cmgOperation3(text5, cmgOperation4)

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, cmgOperation5, playerIndex, number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5
  localValue1 = false
  localValue2 = true
  cmgOperation5 = CMG
  cmgOperation5 = cmgOperation5.minigameCircularProgressBar
  playerIndex = {}
  playerIndex.Difficulty = "VeryHard"
  playerIndex.Timeout = 10000

  -- === HELPER FUNCTION (decompiler name: number12; parameters: localValue12) ===
  function number12(localValue12)
    local stateFlag11
    localValue1 = localValue12
    stateFlag11 = false
    localValue2 = stateFlag11
  end
  playerIndex.onComplete = number12

  -- === HELPER FUNCTION (decompiler name: number12; parameters: none) ===
  function number12()
    local localValue12, stateFlag11
    localValue12 = false
    localValue1 = localValue12
    localValue12 = false
    localValue2 = localValue12
    localValue12 = notify
    stateFlag11 = "~r~You have failed to break out in time."
    -- Beginner: Show a notification to the player.
    localValue12(stateFlag11)
  end
  playerIndex.onTimeout = number12
  cmgOperation5(playerIndex)
  cmgOperation5 = CMG
  cmgOperation5 = cmgOperation5.loadAnimDict
  playerIndex = "misschinese2_crystalmazemcs1_cs"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgOperation5(playerIndex)
  while localValue2 do
    cmgOperation5 = CMG
    cmgOperation5 = cmgOperation5.isHandcuffed
    cmgOperation5 = cmgOperation5()
    if not cmgOperation5 then
      localValue1 = false
      break
    end
    cmgOperation5 = IsEntityPlayingAnim
    playerIndex = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerIndex = playerIndex()
    number12 = "misschinese2_crystalmazemcs1_cs"
    stateFlag14 = "dance_loop_tao"
    text9 = 3
    cmgOperation5 = cmgOperation5(playerIndex, number12, stateFlag14, text9)
    if not cmgOperation5 then
      cmgOperation5 = TaskPlayAnim
      playerIndex = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerIndex = playerIndex()
      number12 = "misschinese2_crystalmazemcs1_cs"
      stateFlag14 = "dance_loop_tao"
      text9 = 8.0
      stateFlag15 = -8.0
      number16 = -1
      number17 = 1
      stateFlag2 = 1.0
      stateFlag3 = false
      stateFlag4 = false
      stateFlag5 = false
      -- Beginner: Play an animation on a ped.
      cmgOperation5(playerIndex, number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5)
    end
    cmgOperation5 = Citizen
    cmgOperation5 = cmgOperation5.Wait
    playerIndex = 0
    cmgOperation5(playerIndex)
  end
  cmgOperation5 = RemoveAnimDict
  playerIndex = "misschinese2_crystalmazemcs1_cs"
  cmgOperation5(playerIndex)
  cmgOperation5 = ClearPedTasks
  playerIndex = PlayerPedId
  playerIndex, number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5 = playerIndex()
  cmgOperation5(playerIndex, number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5)
  if localValue1 then
    cmgOperation5 = TriggerServerEvent
    playerIndex = "79e57a55d8"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "79e57a55d8".
    cmgOperation5(playerIndex)
  end
  cmgOperation5 = number13
  cmgOperation5 = cmgOperation5 + 1
  number13 = cmgOperation5
  cmgOperation5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  cmgOperation5 = cmgOperation5()
  playerIndex = math
  playerIndex = playerIndex.random
  number12 = 30000
  stateFlag14 = 90000
  playerIndex = playerIndex(number12, stateFlag14)
  cmgOperation5 = cmgOperation5 + playerIndex
  number15 = cmgOperation5
  cmgOperation5 = false
  stateFlag16 = cmgOperation5
end

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, cmgOperation5, playerIndex, number12, stateFlag14, text9, stateFlag15, number16, number17
  localValue1 = stateFlag
  if localValue1 then
    localValue1 = workingValue4
    localValue2 = 0
    cmgOperation5 = 24
    playerIndex = true
    localValue1(localValue2, cmgOperation5, playerIndex)
    localValue1 = workingValue4
    localValue2 = 0
    cmgOperation5 = 25
    playerIndex = true
    localValue1(localValue2, cmgOperation5, playerIndex)
    localValue1 = workingValue4
    localValue2 = 0
    cmgOperation5 = 47
    playerIndex = true
    localValue1(localValue2, cmgOperation5, playerIndex)
    localValue1 = workingValue4
    localValue2 = 0
    cmgOperation5 = 58
    playerIndex = true
    localValue1(localValue2, cmgOperation5, playerIndex)
    localValue1 = workingValue4
    localValue2 = 0
    cmgOperation5 = 23
    playerIndex = true
    localValue1(localValue2, cmgOperation5, playerIndex)
    localValue1 = workingValue4
    localValue2 = 0
    cmgOperation5 = 263
    playerIndex = true
    localValue1(localValue2, cmgOperation5, playerIndex)
    localValue1 = workingValue4
    localValue2 = 0
    cmgOperation5 = 264
    playerIndex = true
    localValue1(localValue2, cmgOperation5, playerIndex)
    localValue1 = workingValue4
    localValue2 = 0
    cmgOperation5 = 257
    playerIndex = true
    localValue1(localValue2, cmgOperation5, playerIndex)
    localValue1 = workingValue4
    localValue2 = 0
    cmgOperation5 = 140
    playerIndex = true
    localValue1(localValue2, cmgOperation5, playerIndex)
    localValue1 = workingValue4
    localValue2 = 0
    cmgOperation5 = 141
    playerIndex = true
    localValue1(localValue2, cmgOperation5, playerIndex)
    localValue1 = workingValue4
    localValue2 = 0
    cmgOperation5 = 142
    playerIndex = true
    localValue1(localValue2, cmgOperation5, playerIndex)
    localValue1 = workingValue4
    localValue2 = 0
    cmgOperation5 = 143
    playerIndex = true
    localValue1(localValue2, cmgOperation5, playerIndex)
    localValue1 = workingValue4
    localValue2 = 0
    cmgOperation5 = 75
    playerIndex = true
    localValue1(localValue2, cmgOperation5, playerIndex)
    localValue1 = workingValue4
    localValue2 = 27
    cmgOperation5 = 75
    playerIndex = true
    localValue1(localValue2, cmgOperation5, playerIndex)
    localValue1 = workingValue4
    localValue2 = 0
    cmgOperation5 = 22
    playerIndex = true
    localValue1(localValue2, cmgOperation5, playerIndex)
    localValue1 = workingValue4
    localValue2 = 0
    cmgOperation5 = 170
    playerIndex = true
    localValue1(localValue2, cmgOperation5, playerIndex)
    localValue1 = 12
    localValue2 = 17
    cmgOperation5 = 1
    for playerIndex = localValue1, localValue2, cmgOperation5 do
      number12 = workingValue4
      stateFlag14 = 0
      text9 = playerIndex
      stateFlag15 = true
      number12(stateFlag14, text9, stateFlag15)
    end
    localValue1 = stateFlag13
    if not localValue1 then
      localValue1 = SetPedStealthMovement
      localValue2 = CMG
      localValue2 = localValue2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      cmgOperation5 = false
      playerIndex = ""
      localValue1(localValue2, cmgOperation5, playerIndex)
      localValue1 = CMG
      localValue1 = localValue1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue1 = localValue1()
      localValue2 = IsPedStill
      cmgOperation5 = localValue1
      localValue2 = localValue2(cmgOperation5)
      if localValue2 then
        localValue2 = stateFlag10
        if localValue2 then
          localValue2 = IsEntityPlayingAnim
          cmgOperation5 = localValue1
          playerIndex = "anim@move_m@prisoner_cuffed"
          number12 = "idle"
          stateFlag14 = 3
          localValue2 = localValue2(cmgOperation5, playerIndex, number12, stateFlag14)
          if not localValue2 then
            localValue2 = CMG
            localValue2 = localValue2.loadAnimDict
            cmgOperation5 = "anim@move_m@prisoner_cuffed"
            -- Beginner: Load a GTA animation dictionary before using it.
            localValue2(cmgOperation5)
            localValue2 = tCMG
            localValue2 = localValue2.playAnim
            cmgOperation5 = true
            playerIndex = {}
            number12 = {}
            stateFlag14 = "anim@move_m@prisoner_cuffed"
            text9 = "idle"
            stateFlag15 = 1
            number12[1] = stateFlag14
            number12[2] = text9
            number12[3] = stateFlag15
            playerIndex[1] = number12
            number12 = true
            localValue2(cmgOperation5, playerIndex, number12)
            localValue2 = RemoveAnimDict
            cmgOperation5 = "anim@move_m@prisoner_cuffed"
            localValue2(cmgOperation5)
          end
        else
          localValue2 = IsEntityPlayingAnim
          cmgOperation5 = localValue1
          playerIndex = "mp_arresting"
          number12 = "idle"
          stateFlag14 = 3
          localValue2 = localValue2(cmgOperation5, playerIndex, number12, stateFlag14)
          if not localValue2 then
            localValue2 = CMG
            localValue2 = localValue2.loadAnimDict
            cmgOperation5 = "mp_arresting"
            -- Beginner: Load a GTA animation dictionary before using it.
            localValue2(cmgOperation5)
            localValue2 = tCMG
            localValue2 = localValue2.playAnim
            cmgOperation5 = true
            playerIndex = {}
            number12 = {}
            stateFlag14 = "mp_arresting"
            text9 = "idle"
            stateFlag15 = 1
            number12[1] = stateFlag14
            number12[2] = text9
            number12[3] = stateFlag15
            playerIndex[1] = number12
            number12 = true
            localValue2(cmgOperation5, playerIndex, number12)
            localValue2 = RemoveAnimDict
            cmgOperation5 = "mp_arresting"
            localValue2(cmgOperation5)
          end
        end
      end
    end
    localValue1 = CMG
    localValue1 = localValue1.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    localValue1 = localValue1()
    if 0 ~= localValue1 then
      localValue1 = stateFlag12
      if localValue1 then
        localValue1 = number11
        if 0 ~= localValue1 then
          localValue1 = SetEntityVisible
          localValue2 = number11
          cmgOperation5 = false
          playerIndex = false
          localValue1(localValue2, cmgOperation5, playerIndex)
          localValue1 = false
          stateFlag12 = localValue1
        end
      end
    else
      localValue1 = stateFlag12
      if not localValue1 then
        localValue1 = number11
        if 0 ~= localValue1 then
          localValue1 = SetEntityVisible
          localValue2 = number11
          cmgOperation5 = true
          playerIndex = false
          localValue1(localValue2, cmgOperation5, playerIndex)
          localValue1 = true
          stateFlag12 = localValue1
        end
      end
    end
    localValue1 = GetSelectedPedWeapon
    localValue2 = PlayerPedId
    localValue2, cmgOperation5, playerIndex, number12, stateFlag14, text9, stateFlag15, number16, number17 = localValue2()
    -- Beginner: result below is weaponHash.
    localValue1 = localValue1(localValue2, cmgOperation5, playerIndex, number12, stateFlag14, text9, stateFlag15, number16, number17)
    if -1569615261 ~= localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.setWeapon
      localValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      cmgOperation5 = -1569615261
      playerIndex = true
      localValue1(localValue2, cmgOperation5, playerIndex)
    end
    localValue1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue2 = localValue2()
    cmgOperation5 = IsPedSprinting
    playerIndex = localValue1
    cmgOperation5 = cmgOperation5(playerIndex)
    if cmgOperation5 then
      cmgOperation5 = GetEntityAttachedTo
      playerIndex = localValue1
      cmgOperation5 = cmgOperation5(playerIndex)
      if 0 == cmgOperation5 then
        cmgOperation5 = number2
        if localValue2 >= cmgOperation5 then
          cmgOperation5 = number
          playerIndex = GetFrameTime
          playerIndex = playerIndex()
          playerIndex = playerIndex * 1000.0
          cmgOperation5 = cmgOperation5 + playerIndex
          number = cmgOperation5
          cmgOperation5 = number
          playerIndex = number3
          if cmgOperation5 >= playerIndex then
            cmgOperation5 = ShakeGameplayCam
            playerIndex = "SMALL_EXPLOSION_SHAKE"
            number12 = 0.1
            cmgOperation5(playerIndex, number12)
            cmgOperation5 = SetPedToRagdoll
            playerIndex = localValue1
            number12 = number4
            stateFlag14 = number4
            text9 = 0
            stateFlag15 = false
            number16 = false
            number17 = false
            cmgOperation5(playerIndex, number12, stateFlag14, text9, stateFlag15, number16, number17)
            cmgOperation5 = number5
            cmgOperation5 = localValue2 + cmgOperation5
            number2 = cmgOperation5
            cmgOperation5 = 0
            number = cmgOperation5
          end
        end
    end
    else
      cmgOperation5 = number
      if cmgOperation5 > 0 then
        cmgOperation5 = math
        cmgOperation5 = cmgOperation5.max
        playerIndex = 0
        number12 = number
        stateFlag14 = GetFrameTime
        stateFlag14 = stateFlag14()
        stateFlag14 = stateFlag14 * 1000.0
        stateFlag14 = stateFlag14 * 2.0
        number12 = number12 - stateFlag14
        cmgOperation5 = cmgOperation5(playerIndex, number12)
        number = cmgOperation5
      end
    end
    cmgOperation5 = stateFlag16
    if not cmgOperation5 then
      cmgOperation5 = number13
      if cmgOperation5 < 20 then
        cmgOperation5 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        cmgOperation5 = cmgOperation5()
        playerIndex = number15
        if cmgOperation5 > playerIndex then
          cmgOperation5 = IsPedStill
          playerIndex = localValue1
          cmgOperation5 = cmgOperation5(playerIndex)
          if cmgOperation5 then
            cmgOperation5 = GetEntityAttachedTo
            playerIndex = localValue1
            cmgOperation5 = cmgOperation5(playerIndex)
            if 0 == cmgOperation5 then
              cmgOperation5 = drawNativeNotification
              playerIndex = "Press ~INPUT_VEH_DUCK~ to attempt breaking out of cuffs"
              -- Beginner: Show a GTA-style notification/help prompt.
              cmgOperation5(playerIndex)
              cmgOperation5 = IsControlJustPressed
              playerIndex = 0
              number12 = 73
              cmgOperation5 = cmgOperation5(playerIndex, number12)
              if cmgOperation5 then
                cmgOperation5 = true
                stateFlag16 = cmgOperation5
                cmgOperation5 = Citizen
                cmgOperation5 = cmgOperation5.CreateThread
                playerIndex = cmgOperation3
                -- Beginner: Start a separate FiveM thread so this code can run independently.
                cmgOperation5(playerIndex)
              end
            end
          end
        end
      end
    end
  end
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createThreadOnTick
number9 = text5
text6 = "Cuff Control Disabling"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation4(number9, text6)
cmgOperation4 = RegisterNetEvent
number9 = "ce0419a8ee"
-- Beginner: this function handles network event "ce0419a8ee".

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1, localValue2) ===
function text6(localValue1, localValue2)
  local cmgOperation5, playerIndex, number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number6, stateFlag9
  cmgOperation5 = number7
  cmgOperation5()
  cmgOperation5 = CMG
  cmgOperation5 = cmgOperation5.loadAnimDict
  playerIndex = "mp_arresting"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgOperation5(playerIndex)
  cmgOperation5 = tCMG
  cmgOperation5 = cmgOperation5.playAnim
  playerIndex = false
  number12 = {}
  stateFlag14 = {}
  text9 = "mp_arresting"
  stateFlag15 = "a_uncuff"
  number16 = 1
  stateFlag14[1] = text9
  stateFlag14[2] = stateFlag15
  stateFlag14[3] = number16
  number12[1] = stateFlag14
  stateFlag14 = false
  cmgOperation5(playerIndex, number12, stateFlag14)
  cmgOperation5 = GetPlayerPed
  playerIndex = GetPlayerFromServerId
  number12 = localValue1
  playerIndex, number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number6, stateFlag9 = playerIndex(number12)
  -- Beginner: result below is playerPed.
  cmgOperation5 = cmgOperation5(playerIndex, number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number6, stateFlag9)
  if 0 ~= cmgOperation5 then
    if localValue2 then
      playerIndex = AttachEntityToEntity
      number12 = CMG
      number12 = number12.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      number12 = number12()
      stateFlag14 = cmgOperation5
      text9 = 11816
      stateFlag15 = 0.0
      number16 = 0.6
      number17 = 0.0
      stateFlag2 = 0.0
      stateFlag3 = 0.0
      stateFlag4 = 180.0
      stateFlag5 = false
      stateFlag6 = false
      stateFlag7 = false
      stateFlag8 = false
      number6 = 0
      stateFlag9 = false
      -- Beginner: Attach one entity to another entity.
      playerIndex(number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number6, stateFlag9)
    else
      playerIndex = AttachEntityToEntity
      number12 = CMG
      number12 = number12.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      number12 = number12()
      stateFlag14 = cmgOperation5
      text9 = 11816
      stateFlag15 = 0.0
      number16 = -0.75
      number17 = 0.0
      stateFlag2 = 0.0
      stateFlag3 = 0.0
      stateFlag4 = 0.0
      stateFlag5 = false
      stateFlag6 = false
      stateFlag7 = false
      stateFlag8 = false
      number6 = 0
      stateFlag9 = false
      playerIndex(number12, stateFlag14, text9, stateFlag15, number16, number17, stateFlag2, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, number6, stateFlag9)
    end
    playerIndex = Wait
    number12 = 5000
    playerIndex(number12)
    playerIndex = DetachEntity
    number12 = CMG
    number12 = number12.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    number12 = number12()
    stateFlag14 = true
    text9 = false
    playerIndex(number12, stateFlag14, text9)
  end
  playerIndex = number8
  playerIndex()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ce0419a8ee".
cmgOperation4(number9, text6)
cmgOperation4 = RegisterNetEvent
number9 = "b88765332f"
-- Beginner: this function handles network event "b88765332f".

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, cmgOperation5, playerIndex, number12
  localValue2 = GetEntityCoords
  cmgOperation5 = CMG
  cmgOperation5 = cmgOperation5.getPlayerPed
  cmgOperation5, playerIndex, number12 = cmgOperation5()
  -- Beginner: result below is entityCoords.
  localValue2 = localValue2(cmgOperation5, playerIndex, number12)
  cmgOperation5 = localValue2 - localValue1
  cmgOperation5 = #cmgOperation5
  if cmgOperation5 <= 15 then
    playerIndex = SendNUIMessage
    number12 = {}
    number12.transactionType = "playHandcuff"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    playerIndex(number12)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b88765332f".
cmgOperation4(number9, text6)
cmgOperation4 = RegisterNetEvent
number9 = "f5674fc7a7"
-- Beginner: this function handles network event "f5674fc7a7".

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2
  localValue1 = number7
  localValue1()
  localValue1 = Wait
  localValue2 = 5000
  localValue1(localValue2)
  localValue1 = number8
  localValue1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f5674fc7a7".
cmgOperation4(number9, text6)
