--[[
    LEVEL 1 BEGINNER GUIDE — Items
    ===================================

    File: cmg/prod/client/items/cl_items.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: usable inventory item behaviour, specifically the Items feature.

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
      * Always-running loops: 9
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
local stateFlag, stateFlag11, stateFlag14, eventHandler2, text3, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, eventHandler, text, workingValue2
stateFlag = false
stateFlag11 = false
stateFlag14 = false
eventHandler2 = RegisterNetEvent
text3 = "49d43c2655"
-- Beginner: this function handles network event "49d43c2655".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, playerPed
  localValue1 = stateFlag
  if not localValue1 then
    localValue1 = true
    stateFlag = localValue1
    localValue1 = TriggerEvent
    localValue2 = "62acadffbf"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "62acadffbf".
    localValue1(localValue2)
    localValue1 = Wait
    localValue2 = 5000
    localValue1(localValue2)
    localValue1 = 0
    while localValue1 <= 100 do
      localValue2 = GetEntityHealth
      playerPed = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerPed = playerPed()
      -- Beginner: result below is health.
      localValue2 = localValue2(playerPed)
      playerPed = 200
      if localValue2 <= playerPed then
        localValue2 = GetEntityHealth
        playerPed = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        playerPed = playerPed()
        -- Beginner: result below is health.
        localValue2 = localValue2(playerPed)
        if localValue2 > 102 then
          localValue2 = tCMG
          localValue2 = localValue2.varyHealth
          playerPed = 1
          localValue2(playerPed)
        end
      end
      localValue1 = localValue1 + 1
      localValue2 = Wait
      playerPed = 250
      localValue2(playerPed)
    end
    localValue2 = false
    stateFlag = localValue2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "49d43c2655".
eventHandler2(text3, workingValue6)
eventHandler2 = RegisterNetEvent
text3 = "30b690a8dd"
-- Beginner: this function handles network event "30b690a8dd".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, playerPed
  localValue1 = stateFlag
  if not localValue1 then
    localValue1 = true
    stateFlag = localValue1
    localValue1 = TriggerEvent
    localValue2 = "62acadffbf"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "62acadffbf".
    localValue1(localValue2)
    localValue1 = Wait
    localValue2 = 5000
    localValue1(localValue2)
    localValue1 = 0
    while localValue1 <= 100 do
      localValue2 = GetEntityHealth
      playerPed = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerPed = playerPed()
      -- Beginner: result below is health.
      localValue2 = localValue2(playerPed)
      playerPed = 200
      if localValue2 <= playerPed then
        localValue2 = GetEntityHealth
        playerPed = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        playerPed = playerPed()
        -- Beginner: result below is health.
        localValue2 = localValue2(playerPed)
        if localValue2 > 102 then
          localValue2 = tCMG
          localValue2 = localValue2.varyHealth
          playerPed = 1
          localValue2(playerPed)
        end
      end
      localValue1 = localValue1 + 1
      localValue2 = Wait
      playerPed = 250
      localValue2(playerPed)
    end
    localValue2 = false
    stateFlag = localValue2
  else
    localValue1 = tCMG
    localValue1 = localValue1.notify
    localValue2 = "~r~fuck, I don't feel too good..."
    -- Beginner: Show a notification to the player.
    localValue1(localValue2)
    localValue1 = TriggerEvent
    localValue2 = "62acadffbf"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "62acadffbf".
    localValue1(localValue2)
    localValue1 = Wait
    localValue2 = 5000
    localValue1(localValue2)
    localValue1 = tCMG
    localValue1 = localValue1.playScreenEffect
    localValue2 = "DrugsMichaelAliensFight"
    playerPed = 30
    localValue1(localValue2, playerPed)
    localValue1 = 0
    while localValue1 <= 100 do
      localValue2 = GetEntityHealth
      playerPed = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerPed = playerPed()
      -- Beginner: result below is health.
      localValue2 = localValue2(playerPed)
      if localValue2 > 102 then
        localValue2 = tCMG
        localValue2 = localValue2.varyHealth
        playerPed = -2
        localValue2(playerPed)
      end
      localValue1 = localValue1 + 1
      localValue2 = Wait
      playerPed = 250
      localValue2(playerPed)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "30b690a8dd".
eventHandler2(text3, workingValue6)
eventHandler2 = RegisterNetEvent
text3 = "e010359692"
-- Beginner: this function handles network event "e010359692".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, playerPed, cmgOperation2, text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4, stateFlag5, stateFlag6
  localValue1 = stateFlag14
  if not localValue1 then
    localValue1 = true
    stateFlag14 = localValue1
    localValue1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    localValue2 = CMG
    localValue2 = localValue2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue2 = localValue2()
    playerPed = CMG
    playerPed = playerPed.loadModel
    cmgOperation2 = 1368637848
    -- Beginner: Request/load a GTA model before spawning or applying it.
    playerPed(cmgOperation2)
    playerPed = GetEntityForwardVector
    cmgOperation2 = localValue1
    playerPed = playerPed(cmgOperation2)
    playerPed = playerPed * 0.5
    playerPed = localValue2 + playerPed
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.requestEntitySpawn
    text4 = "apply_bandage_object"
    cmgOperation2(text4)
    cmgOperation2 = CreateObject
    text4 = 1368637848
    number4 = playerPed.x
    gameTime = playerPed.y
    text5 = playerPed.z
    stateFlag15 = true
    mathHelper = true
    stateFlag2 = false
    -- Beginner: result below is objectEntity.
    cmgOperation2 = cmgOperation2(text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2)
    text4 = PlaceObjectOnGroundProperly
    number4 = cmgOperation2
    text4(number4)
    text4 = SetModelAsNoLongerNeeded
    number4 = 1368637848
    text4(number4)
    text4 = CMG
    text4 = text4.loadAnimDict
    number4 = "anim@heists@box_carry@"
    -- Beginner: Load a GTA animation dictionary before using it.
    text4(number4)
    text4 = TaskPlayAnim
    number4 = localValue1
    gameTime = "anim@heists@box_carry@"
    text5 = "base"
    stateFlag15 = 8.0
    mathHelper = 8.0
    stateFlag2 = -1
    number = 3
    stateFlag3 = 1.0
    stateFlag4 = false
    stateFlag5 = false
    stateFlag6 = false
    -- Beginner: Play an animation on a ped.
    text4(number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4, stateFlag5, stateFlag6)
    text4 = RemoveAnimDict
    number4 = "anim@heists@box_carry@"
    text4(number4)
    text4 = CMG
    text4 = text4.loadClipSet
    number4 = "move_ped_crouched"
    text4(number4)
    text4 = RemoveAnimSet
    number4 = "move_ped_crouched"
    text4(number4)
    text4 = Citizen
    text4 = text4.CreateThread

    -- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
    function number4()
      local cmgOperation, text2, number3, workingValue4, workingValue5
      cmgOperation = CMG
      cmgOperation = cmgOperation.startCircularProgressBar
      text2 = ""
      number3 = 3000
      workingValue4 = nil

      -- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
      function workingValue5()
        local workingValue, workingValue3
      end
      cmgOperation(text2, number3, workingValue4, workingValue5)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    text4(number4)
    text4 = GetSelectedPedWeapon
    number4 = localValue1
    -- Beginner: result below is weaponHash.
    text4 = text4(number4)
    number4 = CMG
    number4 = number4.setWeapon
    gameTime = localValue1
    text5 = -1569615261
    stateFlag15 = true
    number4(gameTime, text5, stateFlag15)
    number4 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    number4 = number4()
    while true do
      gameTime = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      gameTime = gameTime()
      gameTime = gameTime - number4
      text5 = 3000
      if not (gameTime < text5) then
        break
      end
      gameTime = GetEntityHealth
      text5 = localValue1
      -- Beginner: result below is health.
      gameTime = gameTime(text5)
      if not (gameTime > 102) then
        break
      end
      gameTime = DisablePlayerFiring
      text5 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      text5 = text5()
      stateFlag15 = true
      gameTime(text5, stateFlag15)
      gameTime = SetPedMovementClipset
      text5 = localValue1
      stateFlag15 = "move_ped_crouched"
      mathHelper = 0.6
      gameTime(text5, stateFlag15, mathHelper)
      gameTime = SetPedStrafeClipset
      text5 = localValue1
      stateFlag15 = "move_ped_crouched_strafing"
      gameTime(text5, stateFlag15)
      gameTime = Citizen
      gameTime = gameTime.Wait
      text5 = 0
      gameTime(text5)
    end
    gameTime = CMG
    gameTime = gameTime.stopCircularProgressBar
    gameTime()
    gameTime = ResetPedStrafeClipset
    text5 = localValue1
    gameTime(text5)
    gameTime = ResetPedWeaponMovementClipset
    text5 = localValue1
    gameTime(text5)
    gameTime = ResetPedMovementClipset
    text5 = localValue1
    stateFlag15 = 0.5
    gameTime(text5, stateFlag15)
    gameTime = DeleteEntity
    text5 = cmgOperation2
    -- Beginner: Delete a GTA entity.
    gameTime(text5)
    gameTime = ClearPedTasks
    text5 = localValue1
    gameTime(text5)
    gameTime = GetEntityHealth
    text5 = localValue1
    -- Beginner: result below is health.
    gameTime = gameTime(text5)
    if gameTime > 102 then
      text5 = SetEntityHealth
      stateFlag15 = localValue1
      mathHelper = math
      mathHelper = mathHelper.min
      stateFlag2 = gameTime + 25
      number = 200
      mathHelper, stateFlag2, number, stateFlag3, stateFlag4, stateFlag5, stateFlag6 = mathHelper(stateFlag2, number)
      text5(stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4, stateFlag5, stateFlag6)
    end
    text5 = CMG
    text5 = text5.setWeapon
    stateFlag15 = localValue1
    mathHelper = text4
    stateFlag2 = true
    text5(stateFlag15, mathHelper, stateFlag2)
    text5 = false
    stateFlag14 = text5
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e010359692".
eventHandler2(text3, workingValue6)
eventHandler2 = RegisterNetEvent
text3 = "49921b1e25"
-- Beginner: this function handles network event "49921b1e25".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, playerPed, cmgOperation2, text4, number4, gameTime, text5
  localValue1 = stateFlag11
  if not localValue1 then
    localValue1 = true
    stateFlag11 = localValue1
    localValue1 = {}
    localValue2 = {}
    playerPed = "mp_player_inteat@burger"
    cmgOperation2 = "mp_player_int_eat_burger_enter"
    text4 = 1
    localValue2[1] = playerPed
    localValue2[2] = cmgOperation2
    localValue2[3] = text4
    playerPed = {}
    cmgOperation2 = "mp_player_inteat@burger"
    text4 = "mp_player_int_eat_burger"
    number4 = 1
    playerPed[1] = cmgOperation2
    playerPed[2] = text4
    playerPed[3] = number4
    cmgOperation2 = {}
    text4 = "mp_player_inteat@burger"
    number4 = "mp_player_int_eat_burger_fp"
    gameTime = 1
    cmgOperation2[1] = text4
    cmgOperation2[2] = number4
    cmgOperation2[3] = gameTime
    text4 = {}
    number4 = "mp_player_inteat@burger"
    gameTime = "mp_player_int_eat_exit_burger"
    text5 = 1
    text4[1] = number4
    text4[2] = gameTime
    text4[3] = text5
    localValue1[1] = localValue2
    localValue1[2] = playerPed
    localValue1[3] = cmgOperation2
    localValue1[4] = text4
    localValue2 = tCMG
    localValue2 = localValue2.playAnim
    playerPed = true
    cmgOperation2 = localValue1
    text4 = false
    localValue2(playerPed, cmgOperation2, text4)
    localValue2 = Wait
    playerPed = 2500
    localValue2(playerPed)
    localValue2 = 0
    while localValue2 <= 25 do
      playerPed = GetEntityHealth
      cmgOperation2 = PlayerPedId
      cmgOperation2, text4, number4, gameTime, text5 = cmgOperation2()
      -- Beginner: result below is health.
      playerPed = playerPed(cmgOperation2, text4, number4, gameTime, text5)
      cmgOperation2 = 200
      if playerPed <= cmgOperation2 then
        playerPed = GetEntityHealth
        cmgOperation2 = PlayerPedId
        cmgOperation2, text4, number4, gameTime, text5 = cmgOperation2()
        -- Beginner: result below is health.
        playerPed = playerPed(cmgOperation2, text4, number4, gameTime, text5)
        if playerPed > 102 then
          playerPed = tCMG
          playerPed = playerPed.varyHealth
          cmgOperation2 = 1
          playerPed(cmgOperation2)
        end
      end
      localValue2 = localValue2 + 1
      playerPed = Wait
      cmgOperation2 = 125
      playerPed(cmgOperation2)
    end
    playerPed = false
    stateFlag11 = playerPed
  else
    localValue1 = tCMG
    localValue1 = localValue1.notify
    localValue2 = "~r~You dropped the taco on the floor trying to stuff it in your mouth!"
    -- Beginner: Show a notification to the player.
    localValue1(localValue2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "49921b1e25".
eventHandler2(text3, workingValue6)

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: localValue1) ===
function eventHandler2(localValue1)
  local localValue2, playerPed, cmgOperation2, text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  playerPed = tCMG
  playerPed = playerPed.setCanAnim
  cmgOperation2 = false
  playerPed(cmgOperation2)
  playerPed = SetTimecycleModifier
  cmgOperation2 = "spectator5"
  playerPed(cmgOperation2)
  playerPed = SetPedMotionBlur
  cmgOperation2 = localValue2
  text4 = true
  playerPed(cmgOperation2, text4)
  playerPed = CMG
  playerPed = playerPed.loadClipSet
  cmgOperation2 = "move_m@drunk@verydrunk"
  playerPed(cmgOperation2)
  playerPed = SetPedMovementClipset
  cmgOperation2 = localValue2
  text4 = "move_m@drunk@verydrunk"
  number4 = 1.0
  playerPed(cmgOperation2, text4, number4)
  playerPed = RemoveClipSet
  cmgOperation2 = "move_m@drunk@verydrunk"
  playerPed(cmgOperation2)
  playerPed = Citizen
  playerPed = playerPed.Wait
  cmgOperation2 = 8000
  playerPed(cmgOperation2)
  playerPed = DoScreenFadeOut
  cmgOperation2 = 3500
  playerPed(cmgOperation2)
  playerPed = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  playerPed = playerPed()
  while true do
    cmgOperation2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    cmgOperation2 = cmgOperation2()
    cmgOperation2 = cmgOperation2 - playerPed
    text4 = 12000
    if not (cmgOperation2 < text4) then
      break
    end
    cmgOperation2 = SetPedToRagdoll
    text4 = localValue2
    number4 = 5000
    gameTime = 5000
    text5 = 0
    stateFlag15 = false
    mathHelper = false
    stateFlag2 = false
    cmgOperation2(text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2)
    cmgOperation2 = Citizen
    cmgOperation2 = cmgOperation2.Wait
    text4 = 0
    cmgOperation2(text4)
  end
  if localValue1 then
    cmgOperation2 = DoScreenFadeIn
    text4 = 2000
    cmgOperation2(text4)
    cmgOperation2 = Citizen
    cmgOperation2 = cmgOperation2.Wait
    text4 = 2000
    cmgOperation2(text4)
    cmgOperation2 = tCMG
    cmgOperation2 = cmgOperation2.setCanAnim
    text4 = true
    cmgOperation2(text4)
  end
  cmgOperation2 = ClearTimecycleModifier
  cmgOperation2()
  cmgOperation2 = SetPedMotionBlur
  text4 = localValue2
  number4 = false
  cmgOperation2(text4, number4)
  cmgOperation2 = ResetPedMovementClipset
  text4 = localValue2
  number4 = 0.0
  cmgOperation2(text4, number4)
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, localValue2, playerPed, cmgOperation2, text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4, stateFlag5
  localValue1 = {}
  localValue2 = vector4
  playerPed = -803.1484375
  cmgOperation2 = 168.69989013672
  text4 = 76.740577697754
  number4 = 117.35
  localValue2 = localValue2(playerPed, cmgOperation2, text4, number4)
  playerPed = vector4
  cmgOperation2 = 1971.0661621094
  text4 = 3819.2163085938
  number4 = 33.428691864014
  gameTime = 301.21
  playerPed = playerPed(cmgOperation2, text4, number4, gameTime)
  cmgOperation2 = vector4
  text4 = 951.93359375
  number4 = 459.44088745117
  gameTime = 126.2303237915
  text5 = 161.45
  cmgOperation2 = cmgOperation2(text4, number4, gameTime, text5)
  text4 = vector4
  number4 = 973.404296875
  gameTime = -208.77210998535
  text5 = 76.168434143066
  stateFlag15 = 63.13
  text4 = text4(number4, gameTime, text5, stateFlag15)
  number4 = vector4
  gameTime = 1350.5997314453
  text5 = -535.03851318359
  stateFlag15 = 74.035507202148
  mathHelper = 253.63
  number4 = number4(gameTime, text5, stateFlag15, mathHelper)
  gameTime = vector4
  text5 = -17.932209014893
  stateFlag15 = -1436.7879638672
  mathHelper = 31.101530075073
  stateFlag2 = 174.58
  gameTime, text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4, stateFlag5 = gameTime(text5, stateFlag15, mathHelper, stateFlag2)
  localValue1[1] = localValue2
  localValue1[2] = playerPed
  localValue1[3] = cmgOperation2
  localValue1[4] = text4
  localValue1[5] = number4
  localValue1[6] = gameTime
  localValue1[7] = text5
  localValue1[8] = stateFlag15
  localValue1[9] = mathHelper
  localValue1[10] = stateFlag2
  localValue1[11] = number
  localValue1[12] = stateFlag3
  localValue1[13] = stateFlag4
  localValue1[14] = stateFlag5
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  playerPed = math
  playerPed = playerPed.random
  cmgOperation2 = 1
  text4 = #localValue1
  playerPed = playerPed(cmgOperation2, text4)
  playerPed = localValue1[playerPed]
  cmgOperation2 = FreezeEntityPosition
  text4 = localValue2
  number4 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  cmgOperation2(text4, number4)
  cmgOperation2 = SetEntityCoordsNoOffset
  text4 = localValue2
  number4 = playerPed.x
  gameTime = playerPed.y
  text5 = playerPed.z
  stateFlag15 = true
  mathHelper = false
  stateFlag2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  cmgOperation2(text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2)
  cmgOperation2 = SetEntityHeading
  text4 = localValue2
  number4 = playerPed.w
  -- Beginner: Change the direction an entity is facing.
  cmgOperation2(text4, number4)
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.loadAnimDict
  text4 = "anim@amb@nightclub@lazlow@lo_toilet@"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgOperation2(text4)
  cmgOperation2 = TaskPlayAnim
  text4 = localValue2
  number4 = "anim@amb@nightclub@lazlow@lo_toilet@"
  gameTime = "lowtoilet_base_laz"
  text5 = 800.0
  stateFlag15 = 8.0
  mathHelper = -1
  stateFlag2 = 49
  number = 0
  stateFlag3 = false
  stateFlag4 = false
  stateFlag5 = false
  -- Beginner: Play an animation on a ped.
  cmgOperation2(text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4, stateFlag5)
  cmgOperation2 = RemoveAnimDict
  text4 = "anim@amb@nightclub@lazlow@lo_toilet@"
  cmgOperation2(text4)
  while true do
    cmgOperation2 = HasAnimSetLoaded
    text4 = "move_ped_crouched"
    cmgOperation2 = cmgOperation2(text4)
    if cmgOperation2 then
      break
    end
    cmgOperation2 = RequestAnimSet
    text4 = "move_ped_crouched"
    cmgOperation2(text4)
    cmgOperation2 = Citizen
    cmgOperation2 = cmgOperation2.Wait
    text4 = 0
    cmgOperation2(text4)
  end
  cmgOperation2 = SetPedMovementClipset
  text4 = localValue2
  number4 = "move_ped_crouched"
  gameTime = 0.35
  cmgOperation2(text4, number4, gameTime)
  cmgOperation2 = RemoveAnimSet
  text4 = "move_ped_crouched"
  cmgOperation2(text4)
  cmgOperation2 = Citizen
  cmgOperation2 = cmgOperation2.Wait
  text4 = 2000
  cmgOperation2(text4)
  cmgOperation2 = DoScreenFadeIn
  text4 = 1000
  cmgOperation2(text4)
  cmgOperation2 = Citizen
  cmgOperation2 = cmgOperation2.Wait
  text4 = 5000
  cmgOperation2(text4)
  cmgOperation2 = tCMG
  cmgOperation2 = cmgOperation2.setCanAnim
  text4 = true
  cmgOperation2(text4)
  cmgOperation2 = StopAnimTask
  text4 = localValue2
  number4 = "anim@amb@nightclub@lazlow@lo_toilet@"
  gameTime = "lowtoilet_base_laz"
  text5 = 1.0
  cmgOperation2(text4, number4, gameTime, text5)
  cmgOperation2 = ResetPedMovementClipset
  text4 = localValue2
  number4 = 0.55
  cmgOperation2(text4, number4)
  cmgOperation2 = FreezeEntityPosition
  text4 = localValue2
  number4 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  cmgOperation2(text4, number4)
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, playerPed, cmgOperation2, text4
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  while true do
    localValue2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue2 = localValue2()
    localValue2 = localValue2 - localValue1
    playerPed = 1000
    if localValue2 > playerPed then
      break
    end
    playerPed = 1000
    playerPed = playerPed - localValue2
    playerPed = playerPed / 1000
    cmgOperation2 = SetTimecycleModifierStrength
    text4 = playerPed
    cmgOperation2(text4)
    cmgOperation2 = Citizen
    cmgOperation2 = cmgOperation2.Wait
    text4 = 0
    cmgOperation2(text4)
  end
  localValue2 = ClearTimecycleModifier
  localValue2()
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local playerPed, cmgOperation2, text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag12, number2, stateFlag13
  playerPed = CMG
  playerPed = playerPed.loadModel
  cmgOperation2 = localValue1
  -- Beginner: Request/load a GTA model before spawning or applying it.
  playerPed(cmgOperation2)
  playerPed = CMG
  playerPed = playerPed.loadModel
  cmgOperation2 = localValue2
  playerPed(cmgOperation2)
  playerPed = CMG
  playerPed = playerPed.getPlayerCoords
  -- Beginner: result below is playerCoords.
  playerPed = playerPed()
  cmgOperation2 = GetNthClosestVehicleNode
  text4 = playerPed.x
  number4 = playerPed.y
  gameTime = playerPed.z
  text5 = 6
  cmgOperation2, text4 = cmgOperation2(text4, number4, gameTime, text5)
  if cmgOperation2 then
    number4 = CreatePed
    gameTime = 0
    text5 = localValue1
    stateFlag15 = text4.x
    mathHelper = text4.y
    stateFlag2 = text4.z
    number = 0.0
    stateFlag3 = false
    stateFlag4 = true
    -- Beginner: result below is pedEntity.
    number4 = number4(gameTime, text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4)
    gameTime = CreateObject
    text5 = localValue2
    stateFlag15 = playerPed.x
    mathHelper = playerPed.y
    stateFlag2 = playerPed.z
    number = false
    stateFlag3 = true
    stateFlag4 = false
    -- Beginner: result below is objectEntity.
    gameTime = gameTime(text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4)
    text5 = AttachEntityToEntity
    stateFlag15 = gameTime
    mathHelper = number4
    stateFlag2 = GetPedBoneIndex
    number = number4
    stateFlag3 = 17188
    stateFlag2 = stateFlag2(number, stateFlag3)
    number = 0.12
    stateFlag3 = 0.01
    stateFlag4 = 0.01
    stateFlag5 = 5.0
    stateFlag6 = 150.0
    stateFlag7 = 0.0
    stateFlag8 = true
    stateFlag9 = true
    stateFlag10 = false
    stateFlag12 = true
    number2 = 1
    stateFlag13 = true
    -- Beginner: Attach one entity to another entity.
    text5(stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10, stateFlag12, number2, stateFlag13)
    text5 = TaskGoToCoordAnyMeans
    stateFlag15 = number4
    mathHelper = playerPed.x
    stateFlag2 = playerPed.y
    number = playerPed.z
    stateFlag3 = 5.0
    stateFlag4 = 0.0
    stateFlag5 = false
    stateFlag6 = 786603
    stateFlag7 = 3212836864
    text5(stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
    text5 = CreateCam
    stateFlag15 = "DEFAULT_SCRIPTED_CAMERA"
    mathHelper = true
    -- Beginner: result below is cameraHandle.
    text5 = text5(stateFlag15, mathHelper)
    stateFlag15 = GetGameplayCamCoord
    stateFlag15 = stateFlag15()
    mathHelper = SetCamCoord
    stateFlag2 = text5
    number = stateFlag15.x
    stateFlag3 = stateFlag15.y
    stateFlag4 = stateFlag15.z
    mathHelper(stateFlag2, number, stateFlag3, stateFlag4)
    mathHelper = GetGameplayCamRot
    stateFlag2 = 2
    mathHelper = mathHelper(stateFlag2)
    stateFlag2 = SetCamRot
    number = text5
    stateFlag3 = mathHelper.x
    stateFlag4 = mathHelper.y
    stateFlag5 = mathHelper.z
    stateFlag6 = 2
    stateFlag2(number, stateFlag3, stateFlag4, stateFlag5, stateFlag6)
    stateFlag2 = SetCamActive
    number = text5
    stateFlag3 = true
    stateFlag2(number, stateFlag3)
    stateFlag2 = RenderScriptCams
    number = true
    stateFlag3 = true
    stateFlag4 = 0
    stateFlag5 = true
    stateFlag6 = true
    stateFlag2(number, stateFlag3, stateFlag4, stateFlag5, stateFlag6)
    stateFlag2 = PointCamAtEntity
    number = text5
    stateFlag3 = number4
    stateFlag4 = 0.0
    stateFlag5 = 0.0
    stateFlag6 = 0.0
    stateFlag7 = true
    stateFlag2(number, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
    stateFlag2 = SetCamFov
    number = text5
    stateFlag3 = 30.0
    stateFlag2(number, stateFlag3)
    stateFlag2 = AddBlipForEntity
    number = number4
    -- Beginner: result below is blipHandle.
    stateFlag2 = stateFlag2(number)
    number = SetBlipSprite
    stateFlag3 = stateFlag2
    stateFlag4 = 141
    number(stateFlag3, stateFlag4)
    number = SetBlipColour
    stateFlag3 = stateFlag2
    stateFlag4 = 2
    number(stateFlag3, stateFlag4)
    number = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    number = number()
    while true do
      stateFlag3 = GetEntityCoords
      stateFlag4 = number4
      stateFlag5 = true
      -- Beginner: result below is entityCoords.
      stateFlag3 = stateFlag3(stateFlag4, stateFlag5)
      stateFlag3 = stateFlag3 - playerPed
      stateFlag3 = #stateFlag3
      if not (stateFlag3 > 2.0) then
        break
      end
      stateFlag3 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      stateFlag3 = stateFlag3()
      stateFlag3 = stateFlag3 - number
      stateFlag4 = 10000
      if not (stateFlag3 < stateFlag4) then
        break
      end
      stateFlag3 = Citizen
      stateFlag3 = stateFlag3.Wait
      stateFlag4 = 0
      stateFlag3(stateFlag4)
    end
    stateFlag3 = SetCamActive
    stateFlag4 = text5
    stateFlag5 = false
    stateFlag3(stateFlag4, stateFlag5)
    stateFlag3 = RenderScriptCams
    stateFlag4 = false
    stateFlag5 = false
    stateFlag6 = 0
    stateFlag7 = false
    stateFlag8 = false
    stateFlag3(stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
    stateFlag3 = DestroyCam
    stateFlag4 = text5
    stateFlag5 = false
    stateFlag3(stateFlag4, stateFlag5)
    stateFlag3 = DetachEntity
    stateFlag4 = gameTime
    stateFlag5 = false
    stateFlag6 = false
    stateFlag3(stateFlag4, stateFlag5, stateFlag6)
    stateFlag3 = Citizen
    stateFlag3 = stateFlag3.Wait
    stateFlag4 = 30000
    stateFlag3(stateFlag4)
    stateFlag3 = DeleteEntity
    stateFlag4 = number4
    -- Beginner: Delete a GTA entity.
    stateFlag3(stateFlag4)
    stateFlag3 = DeleteEntity
    stateFlag4 = gameTime
    stateFlag3(stateFlag4)
  end
  number4 = SetModelAsNoLongerNeeded
  gameTime = localValue1
  number4(gameTime)
  number4 = SetModelAsNoLongerNeeded
  gameTime = localValue2
  number4(gameTime)
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, playerPed, cmgOperation2, text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4, stateFlag5
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue1 = localValue1()
  localValue2 = GetNthClosestVehicleNode
  playerPed = localValue1.x
  cmgOperation2 = localValue1.y
  text4 = localValue1.z
  number4 = 6
  localValue2, playerPed = localValue2(playerPed, cmgOperation2, text4, number4)
  if not localValue2 then
    return
  end
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.loadModel
  text4 = -835930287
  -- Beginner: Request/load a GTA model before spawning or applying it.
  cmgOperation2(text4)
  cmgOperation2 = CreatePed
  text4 = 0
  number4 = -835930287
  gameTime = playerPed.x
  text5 = playerPed.y
  stateFlag15 = playerPed.z
  mathHelper = 0.0
  stateFlag2 = false
  number = false
  -- Beginner: result below is pedEntity.
  cmgOperation2 = cmgOperation2(text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2, number)
  text4 = TaskTurnPedToFaceEntity
  number4 = cmgOperation2
  gameTime = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  gameTime = gameTime()
  text5 = -1
  text4(number4, gameTime, text5)
  text4 = SetModelAsNoLongerNeeded
  number4 = -835930287
  text4(number4)
  text4 = SetTimecycleModifier
  number4 = "Kifflom"
  text4(number4)
  text4 = CreateCam
  number4 = "DEFAULT_SCRIPTED_CAMERA"
  gameTime = true
  -- Beginner: result below is cameraHandle.
  text4 = text4(number4, gameTime)
  number4 = GetGameplayCamCoord
  number4 = number4()
  gameTime = SetCamCoord
  text5 = text4
  stateFlag15 = number4.x
  mathHelper = number4.y
  stateFlag2 = number4.z
  gameTime(text5, stateFlag15, mathHelper, stateFlag2)
  gameTime = GetGameplayCamRot
  text5 = 2
  gameTime = gameTime(text5)
  text5 = SetCamRot
  stateFlag15 = text4
  mathHelper = gameTime.x
  stateFlag2 = gameTime.y
  number = gameTime.z
  stateFlag3 = 2
  text5(stateFlag15, mathHelper, stateFlag2, number, stateFlag3)
  text5 = SetCamActive
  stateFlag15 = text4
  mathHelper = true
  text5(stateFlag15, mathHelper)
  text5 = RenderScriptCams
  stateFlag15 = true
  mathHelper = true
  stateFlag2 = 0
  number = true
  stateFlag3 = true
  text5(stateFlag15, mathHelper, stateFlag2, number, stateFlag3)
  text5 = PointCamAtEntity
  stateFlag15 = text4
  mathHelper = cmgOperation2
  stateFlag2 = 0.0
  number = 0.0
  stateFlag3 = 0.0
  stateFlag4 = true
  text5(stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4)
  text5 = notify
  stateFlag15 = "~y~Is that... jesus?"
  -- Beginner: Show a notification to the player.
  text5(stateFlag15)
  text5 = GetCamFov
  stateFlag15 = text4
  text5 = text5(stateFlag15)
  stateFlag15 = 30.0
  text5 = stateFlag15 - text5
  stateFlag15 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  stateFlag15 = stateFlag15()
  while true do
    mathHelper = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    mathHelper = mathHelper()
    mathHelper = mathHelper - stateFlag15
    stateFlag2 = 10000
    if mathHelper > stateFlag2 then
      break
    end
    stateFlag2 = mathHelper / 15000
    number = text5 * stateFlag2
    stateFlag3 = SetCamFov
    stateFlag4 = text4
    stateFlag5 = 30.0 + number
    stateFlag3(stateFlag4, stateFlag5)
    stateFlag3 = Citizen
    stateFlag3 = stateFlag3.Wait
    stateFlag4 = 0
    stateFlag3(stateFlag4)
  end
  mathHelper = SetCamActive
  stateFlag2 = text4
  number = false
  mathHelper(stateFlag2, number)
  mathHelper = RenderScriptCams
  stateFlag2 = false
  number = false
  stateFlag3 = 0
  stateFlag4 = false
  stateFlag5 = false
  mathHelper(stateFlag2, number, stateFlag3, stateFlag4, stateFlag5)
  mathHelper = DestroyCam
  stateFlag2 = text4
  number = false
  mathHelper(stateFlag2, number)
  mathHelper = DeleteEntity
  stateFlag2 = cmgOperation2
  -- Beginner: Delete a GTA entity.
  mathHelper(stateFlag2)
  mathHelper = workingValue6
  mathHelper()
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, playerPed, cmgOperation2, text4, number4, gameTime, text5, stateFlag15
  localValue1 = CMG
  localValue1 = localValue1.loadModel
  localValue2 = 1814532926
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue1 = localValue1()
  localValue2 = CreateObject
  playerPed = 1814532926
  cmgOperation2 = localValue1.x
  text4 = localValue1.y
  number4 = localValue1.z
  gameTime = false
  text5 = false
  stateFlag15 = false
  -- Beginner: result below is objectEntity.
  localValue2 = localValue2(playerPed, cmgOperation2, text4, number4, gameTime, text5, stateFlag15)
  playerPed = PlaceObjectOnGroundProperly
  cmgOperation2 = localValue2
  playerPed(cmgOperation2)
  playerPed = SetModelAsNoLongerNeeded
  cmgOperation2 = 1814532926
  playerPed(cmgOperation2)
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
function workingValue10()
  local localValue1, localValue2, playerPed, cmgOperation2, text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10
  localValue1 = CMG
  localValue1 = localValue1.loadModel
  localValue2 = -290617598
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.loadModel
  localValue2 = -413447396
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.overrideTime
  localValue2 = 0
  playerPed = 0
  cmgOperation2 = 0
  localValue1(localValue2, playerPed, cmgOperation2)
  localValue1 = CMG
  localValue1 = localValue1.setWeather
  localValue2 = "THUNDER"
  localValue1(localValue2)
  localValue1 = CreateVehicle
  localValue2 = -290617598
  playerPed = 1578.0584716797
  cmgOperation2 = 4051.5563964844
  text4 = 1084.2967529297
  number4 = 78.9
  gameTime = false
  text5 = false
  -- Beginner: result below is vehicleEntity.
  localValue1 = localValue1(localValue2, playerPed, cmgOperation2, text4, number4, gameTime, text5)
  localValue2 = CMG
  localValue2 = localValue2.initLocalVehicle
  playerPed = localValue1
  localValue2(playerPed)
  localValue2 = CreatePedInsideVehicle
  playerPed = localValue1
  cmgOperation2 = 0
  text4 = -413447396
  number4 = -1
  gameTime = false
  text5 = false
  localValue2 = localValue2(playerPed, cmgOperation2, text4, number4, gameTime, text5)
  playerPed = SetModelAsNoLongerNeeded
  cmgOperation2 = -290617598
  playerPed(cmgOperation2)
  playerPed = SetModelAsNoLongerNeeded
  cmgOperation2 = -413447396
  playerPed(cmgOperation2)
  playerPed = CreateCam
  cmgOperation2 = "DEFAULT_SCRIPTED_CAMERA"
  text4 = true
  -- Beginner: result below is cameraHandle.
  playerPed = playerPed(cmgOperation2, text4)
  cmgOperation2 = AttachCamToPedBone
  text4 = playerPed
  number4 = localValue2
  gameTime = GetPedBoneIndex
  text5 = localValue2
  stateFlag15 = 12844
  gameTime = gameTime(text5, stateFlag15)
  text5 = 0.0
  stateFlag15 = 0.0
  mathHelper = 0.7
  stateFlag2 = true
  cmgOperation2(text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2)
  cmgOperation2 = SetCamActive
  text4 = playerPed
  number4 = true
  cmgOperation2(text4, number4)
  cmgOperation2 = RenderScriptCams
  text4 = true
  number4 = true
  gameTime = 0
  text5 = true
  stateFlag15 = true
  cmgOperation2(text4, number4, gameTime, text5, stateFlag15)
  cmgOperation2 = SetFocusEntity
  text4 = localValue1
  cmgOperation2(text4)

  -- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
  function cmgOperation2()
    local cmgOperation, text2, number3
    cmgOperation = math
    cmgOperation = cmgOperation.random
    text2 = -2
    number3 = 2
    cmgOperation = cmgOperation(text2, number3)
    cmgOperation = cmgOperation + 0.0
    return cmgOperation
  end
  text4 = DoScreenFadeIn
  number4 = 1000
  text4(number4)
  text4 = 0
  while true do
    number4 = IsEntityDead
    gameTime = localValue1
    number4 = number4(gameTime)
    if number4 then
      break
    end
    number4 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    number4 = number4()
    number4 = number4 - text4
    gameTime = 200
    if number4 > gameTime then
      number4 = ApplyForceToEntity
      gameTime = localValue1
      text5 = 1
      stateFlag15 = cmgOperation2
      stateFlag15 = stateFlag15()
      mathHelper = cmgOperation2
      mathHelper = mathHelper()
      stateFlag2 = cmgOperation2
      stateFlag2 = stateFlag2()
      number = 0.0
      stateFlag3 = 0.0
      stateFlag4 = 0.0
      stateFlag5 = -1
      stateFlag6 = true
      stateFlag7 = false
      stateFlag8 = true
      stateFlag9 = false
      stateFlag10 = false
      number4(gameTime, text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8, stateFlag9, stateFlag10)
      number4 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      number4 = number4()
      text4 = number4
    end
    number4 = GetEntityRotation
    gameTime = localValue1
    text5 = 2
    number4 = number4(gameTime, text5)
    gameTime = SetCamRot
    text5 = playerPed
    stateFlag15 = number4.x
    mathHelper = number4.y
    stateFlag2 = number4.z
    number = 2
    gameTime(text5, stateFlag15, mathHelper, stateFlag2, number)
    gameTime = SetPedToRagdoll
    text5 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    text5 = text5()
    stateFlag15 = 1000
    mathHelper = 1000
    stateFlag2 = 0
    number = false
    stateFlag3 = false
    stateFlag4 = false
    gameTime(text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4)
    gameTime = Citizen
    gameTime = gameTime.Wait
    text5 = 0
    gameTime(text5)
  end
  number4 = ClearFocus
  number4()
  number4 = SetCamActive
  gameTime = playerPed
  text5 = false
  number4(gameTime, text5)
  number4 = RenderScriptCams
  gameTime = false
  text5 = false
  stateFlag15 = 0
  mathHelper = false
  stateFlag2 = false
  number4(gameTime, text5, stateFlag15, mathHelper, stateFlag2)
  number4 = DestroyCam
  gameTime = playerPed
  text5 = false
  number4(gameTime, text5)
  number4 = DeleteEntity
  gameTime = localValue2
  -- Beginner: Delete a GTA entity.
  number4(gameTime)
  number4 = DeleteEntity
  gameTime = localValue1
  number4(gameTime)
  number4 = tCMG
  number4 = number4.setCanAnim
  gameTime = true
  number4(gameTime)
  number4 = CMG
  number4 = number4.cancelOverrideTimeWeather
  number4()
end
eventHandler = RegisterNetEvent
text = "46214fe8ae"
-- Beginner: this function handles network event "46214fe8ae".

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2, playerPed, cmgOperation2, text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8
  localValue1 = CMG
  localValue1 = localValue1.loadAnimDict
  localValue2 = "mp_safehousebeer@"
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.loadModel
  localValue2 = 883645854
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue1(localValue2)
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = CreateObject
  playerPed = 883645854
  cmgOperation2 = 0.0
  text4 = 0.0
  number4 = 0.0
  gameTime = false
  text5 = false
  stateFlag15 = false
  -- Beginner: result below is objectEntity.
  localValue2 = localValue2(playerPed, cmgOperation2, text4, number4, gameTime, text5, stateFlag15)
  playerPed = AttachEntityToEntity
  cmgOperation2 = localValue2
  text4 = localValue1
  number4 = GetPedBoneIndex
  gameTime = localValue1
  text5 = 28422
  number4 = number4(gameTime, text5)
  gameTime = 0.0
  text5 = 0.0
  stateFlag15 = 0.0
  mathHelper = 0.0
  stateFlag2 = 0.0
  number = 180.0
  stateFlag3 = true
  stateFlag4 = true
  stateFlag5 = false
  stateFlag6 = true
  stateFlag7 = 1
  stateFlag8 = true
  -- Beginner: Attach one entity to another entity.
  playerPed(cmgOperation2, text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
  playerPed = TaskPlayAnim
  cmgOperation2 = localValue1
  text4 = "mp_safehousebeer@"
  number4 = "drink_2"
  gameTime = 800.0
  text5 = 8.0
  stateFlag15 = -1
  mathHelper = 49
  stateFlag2 = 0
  number = false
  stateFlag3 = false
  stateFlag4 = false
  -- Beginner: Play an animation on a ped.
  playerPed(cmgOperation2, text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4)
  playerPed = Citizen
  playerPed = playerPed.Wait
  cmgOperation2 = 5000
  playerPed(cmgOperation2)
  playerPed = DeleteEntity
  cmgOperation2 = localValue2
  -- Beginner: Delete a GTA entity.
  playerPed(cmgOperation2)
  playerPed = TaskPlayAnim
  cmgOperation2 = localValue1
  text4 = "mp_safehousebeer@"
  number4 = "exit"
  gameTime = 8.0
  text5 = 1.0
  stateFlag15 = -1
  mathHelper = 49
  stateFlag2 = 0
  number = false
  stateFlag3 = false
  stateFlag4 = false
  -- Beginner: Play an animation on a ped.
  playerPed(cmgOperation2, text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4)
  playerPed = Citizen
  playerPed = playerPed.Wait
  cmgOperation2 = 500
  playerPed(cmgOperation2)
  playerPed = math
  playerPed = playerPed.random
  cmgOperation2 = 1
  text4 = 20
  playerPed = playerPed(cmgOperation2, text4)
  if 1 == playerPed then
    cmgOperation2 = DoScreenFadeOut
    text4 = 1000
    cmgOperation2(text4)
    cmgOperation2 = SetEntityHealth
    text4 = localValue1
    number4 = 200
    cmgOperation2(text4, number4)
    cmgOperation2 = Citizen
    cmgOperation2 = cmgOperation2.Wait
    text4 = 2000
    cmgOperation2(text4)
    cmgOperation2 = DoScreenFadeIn
    text4 = 1000
    cmgOperation2(text4)
    cmgOperation2 = Citizen
    cmgOperation2 = cmgOperation2.Wait
    text4 = 1000
    cmgOperation2(text4)
    cmgOperation2 = notify
    text4 = "~g~You suddenly feel a lot better."
    -- Beginner: Show a notification to the player.
    cmgOperation2(text4)
  elseif 2 == playerPed then
    cmgOperation2 = TriggerEvent
    text4 = "770ce54c02"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "770ce54c02".
    cmgOperation2(text4)
    cmgOperation2 = notify
    text4 = "~r~That wasn't sugar..."
    -- Beginner: Show a notification to the player.
    cmgOperation2(text4)
  elseif 3 == playerPed then
    cmgOperation2 = TriggerEvent
    text4 = "631801299a"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "631801299a".
    cmgOperation2(text4)
    cmgOperation2 = notify
    text4 = "~r~What liquid was that?"
    -- Beginner: Show a notification to the player.
    cmgOperation2(text4)
  elseif 4 == playerPed then
    cmgOperation2 = TriggerEvent
    text4 = "2155168724"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "2155168724".
    cmgOperation2(text4)
    cmgOperation2 = notify
    text4 = "~r~..."
    -- Beginner: Show a notification to the player.
    cmgOperation2(text4)
  elseif 5 == playerPed then
    cmgOperation2 = eventHandler2
    text4 = true
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: true.
    cmgOperation2(text4)
  elseif 6 == playerPed then
    cmgOperation2 = notify
    text4 = "~y~You witness a flash of light."
    -- Beginner: Show a notification to the player.
    cmgOperation2(text4)
    cmgOperation2 = ForceLightningFlash
    cmgOperation2()
    cmgOperation2 = SetTimecycleModifier
    text4 = "glasses_purple"
    cmgOperation2(text4)
    cmgOperation2 = Citizen
    cmgOperation2 = cmgOperation2.Wait
    text4 = 1000
    cmgOperation2(text4)
    cmgOperation2 = workingValue6
    cmgOperation2()
  elseif 7 == playerPed then
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.hideAllDisplays
    text4 = "candyeffect"
    cmgOperation2(text4)
    cmgOperation2 = eventHandler2
    text4 = false
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: false.
    cmgOperation2(text4)
    cmgOperation2 = text3
    cmgOperation2()
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.showAllDisplays
    text4 = "candyeffect"
    cmgOperation2(text4)
  elseif 8 == playerPed then
    cmgOperation2 = eventHandler2
    text4 = false
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: false.
    cmgOperation2(text4)
    cmgOperation2 = workingValue10
    cmgOperation2()
    cmgOperation2 = notify
    text4 = "~r~Okay..."
    -- Beginner: Show a notification to the player.
    cmgOperation2(text4)
  elseif 9 == playerPed then
    cmgOperation2 = notify
    text4 = "~g~Tastes sweet."
    cmgOperation2(text4)
  elseif 10 == playerPed then
    cmgOperation2 = notify
    text4 = "~g~Tastes like dark chocolate."
    -- Beginner: Show a notification to the player.
    cmgOperation2(text4)
  elseif 11 == playerPed then
    cmgOperation2 = notify
    text4 = "~y~You notice rocks on the ground whilst eating."
    cmgOperation2(text4)
  elseif 12 == playerPed then
    cmgOperation2 = eventHandler2
    text4 = true
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: true.
    cmgOperation2(text4)
    cmgOperation2 = notify
    text4 = "~r~You start coughing up blood..."
    -- Beginner: Show a notification to the player.
    cmgOperation2(text4)
    while true do
      cmgOperation2 = IsEntityDead
      text4 = localValue1
      cmgOperation2 = cmgOperation2(text4)
      if cmgOperation2 then
        break
      end
      cmgOperation2 = GetEntityHealth
      text4 = localValue1
      -- Beginner: result below is health.
      cmgOperation2 = cmgOperation2(text4)
      if not (cmgOperation2 > 102) then
        break
      end
      cmgOperation2 = SetEntityHealth
      text4 = localValue1
      number4 = GetEntityHealth
      gameTime = localValue1
      -- Beginner: result below is health.
      number4 = number4(gameTime)
      number4 = number4 - 1
      cmgOperation2(text4, number4)
      cmgOperation2 = Citizen
      cmgOperation2 = cmgOperation2.Wait
      text4 = 200
      cmgOperation2(text4)
    end
  elseif 13 == playerPed then
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.hideAllDisplays
    text4 = "candyeffect"
    cmgOperation2(text4)
    cmgOperation2 = workingValue8
    cmgOperation2()
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.showAllDisplays
    text4 = "candyeffect"
    cmgOperation2(text4)
  elseif 14 == playerPed then
    cmgOperation2 = tCMG
    cmgOperation2 = cmgOperation2.setCanAnim
    text4 = false
    cmgOperation2(text4)
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.loadAnimDict
    text4 = "misscarsteal2peeing"
    -- Beginner: Load a GTA animation dictionary before using it.
    cmgOperation2(text4)
    cmgOperation2 = TaskPlayAnim
    text4 = localValue1
    number4 = "misscarsteal2peeing"
    gameTime = "peeing_loop"
    text5 = 8.0
    stateFlag15 = 1.0
    mathHelper = -1
    stateFlag2 = 49
    number = 0
    stateFlag3 = false
    stateFlag4 = false
    stateFlag5 = false
    -- Beginner: Play an animation on a ped.
    cmgOperation2(text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4, stateFlag5)
    cmgOperation2 = RemoveAnimDict
    text4 = "misscarsteal2peeing"
    cmgOperation2(text4)
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.loadPtfx
    text4 = "scr_amb_chop"
    cmgOperation2(text4)
    cmgOperation2 = UseParticleFxAsset
    text4 = "scr_amb_chop"
    cmgOperation2(text4)
    cmgOperation2 = _ENV
    text4 = "StartNetworkedParticleFxLoopedOnEntityBone"
    cmgOperation2 = cmgOperation2[text4]
    text4 = "ent_anim_dog_peeing"
    number4 = localValue1
    gameTime = -0.05
    text5 = 0.3
    stateFlag15 = 0.0
    mathHelper = 0.0
    stateFlag2 = 90.0
    number = 90.0
    stateFlag3 = GetEntityBoneIndexByName
    stateFlag4 = localValue1
    stateFlag5 = "ent_anim_dog_peeing"
    stateFlag3 = stateFlag3(stateFlag4, stateFlag5)
    stateFlag4 = 1065353216
    stateFlag5 = false
    stateFlag6 = false
    stateFlag7 = false
    cmgOperation2 = cmgOperation2(text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2, number, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
    text4 = Citizen
    text4 = text4.Wait
    number4 = 10000
    text4(number4)
    text4 = StopParticleFxLooped
    number4 = cmgOperation2
    gameTime = false
    text4(number4, gameTime)
    text4 = tCMG
    text4 = text4.setCanAnim
    number4 = true
    text4(number4)
  elseif 15 == playerPed then
    cmgOperation2 = notify
    text4 = "~g~You notice you're standing on a \194\1635 note."
    -- Beginner: Show a notification to the player.
    cmgOperation2(text4)
    cmgOperation2 = workingValue9
    cmgOperation2()
  elseif 16 == playerPed then
    cmgOperation2 = SetTimecycleModifier
    text4 = "hud_def_Trevor"
    cmgOperation2(text4)
    cmgOperation2 = notify
    text4 = "~g~You feel a sudden burst of energy."
    -- Beginner: Show a notification to the player.
    cmgOperation2(text4)
    cmgOperation2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    cmgOperation2 = cmgOperation2()
    while true do
      text4 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      text4 = text4()
      text4 = text4 - cmgOperation2
      number4 = 20000
      if not (text4 < number4) then
        break
      end
      text4 = SetRunSprintMultiplierForPlayer
      number4 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      number4 = number4()
      gameTime = 1.4
      text4(number4, gameTime)
      text4 = Citizen
      text4 = text4.Wait
      number4 = 0
      text4(number4)
    end
    text4 = SetRunSprintMultiplierForPlayer
    number4 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    number4 = number4()
    gameTime = 1.0
    text4(number4, gameTime)
    text4 = workingValue6
    text4()
  elseif 17 == playerPed then
    cmgOperation2 = notify
    text4 = "~y~That didn't taste of anything."
    -- Beginner: Show a notification to the player.
    cmgOperation2(text4)
  elseif 18 == playerPed then
    cmgOperation2 = notify
    text4 = "~r~**chokes**"
    cmgOperation2(text4)
    cmgOperation2 = SetPedToRagdoll
    text4 = localValue1
    number4 = 1000
    gameTime = 1000
    text5 = 0
    stateFlag15 = false
    mathHelper = false
    stateFlag2 = false
    cmgOperation2(text4, number4, gameTime, text5, stateFlag15, mathHelper, stateFlag2)
  elseif 19 == playerPed then
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.hideAllDisplays
    text4 = "candyeffect"
    cmgOperation2(text4)
    cmgOperation2 = notify
    text4 = "~g~A stray cat brings you a thrown away burger."
    -- Beginner: Show a notification to the player.
    cmgOperation2(text4)
    cmgOperation2 = workingValue7
    text4 = 1462895032
    number4 = 308173360
    cmgOperation2(text4, number4)
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.showAllDisplays
    text4 = "candyeffect"
    cmgOperation2(text4)
  elseif 20 == playerPed then
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.hideAllDisplays
    text4 = "candyeffect"
    cmgOperation2(text4)
    cmgOperation2 = notify
    text4 = "~g~A stray dog brings you a ball."
    -- Beginner: Show a notification to the player.
    cmgOperation2(text4)
    cmgOperation2 = workingValue7
    text4 = 882848737
    number4 = -1720813907
    cmgOperation2(text4, number4)
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.showAllDisplays
    text4 = "candyeffect"
    cmgOperation2(text4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "46214fe8ae".
eventHandler(text, workingValue2)
