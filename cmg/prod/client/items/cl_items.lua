--[[
    Beginner Guide: cl_items.lua
    ============================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Items
    ======================

    File: cmg/prod/client/items/cl_items.lua
    Purpose: This file contains FiveM client/resource logic.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Decompiled-code note:
      This file came from decompiled Lua. The repeated AI-cleanup boilerplate
      has been removed. Any remaining SHX-style values are compiler/decompiler
      temporaries whose meaning changes repeatedly; follow the surrounding API
      call and the comments rather than treating one SHX variable as one concept.

    Network/hash identifiers found: 9
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * ~r~You dropped the taco on the floor trying to stuff it in your mouth!
      * ~g~You suddenly feel a lot better.
      * ~y~You witness a flash of light.
      * ~y~You notice rocks on the ground whilst eating.
      * ~r~You start coughing up blood...

]]
local flag, flag11, flag14, eventRegistration2, textValue3, workValue6, workValue7, workValue8, workValue9, workValue10, eventRegistration, textValue, workValue2
flag = false
flag11 = false
flag14 = false
eventRegistration2 = RegisterNetEvent
textValue3 = "49d43c2655"
-- Beginner: this function handles network event "49d43c2655".
function workValue6()
  local arg1, arg2, playerPed
  arg1 = flag
  if not arg1 then
    arg1 = true
    flag = arg1
    arg1 = TriggerEvent
    arg2 = "62acadffbf"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "62acadffbf".
    arg1(arg2)
    arg1 = Wait
    arg2 = 5000
    arg1(arg2)
    arg1 = 0
    while arg1 <= 100 do
      arg2 = GetEntityHealth
      playerPed = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerPed = playerPed()
      -- Beginner: result below is health.
      arg2 = arg2(playerPed)
      playerPed = 200
      if arg2 <= playerPed then
        arg2 = GetEntityHealth
        playerPed = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        playerPed = playerPed()
        -- Beginner: result below is health.
        arg2 = arg2(playerPed)
        if arg2 > 102 then
          arg2 = tCMG
          arg2 = arg2.varyHealth
          playerPed = 1
          arg2(playerPed)
        end
      end
      arg1 = arg1 + 1
      arg2 = Wait
      playerPed = 250
      arg2(playerPed)
    end
    arg2 = false
    flag = arg2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "49d43c2655".
eventRegistration2(textValue3, workValue6)
eventRegistration2 = RegisterNetEvent
textValue3 = "30b690a8dd"
-- Beginner: this function handles network event "30b690a8dd".
function workValue6()
  local arg1, arg2, playerPed
  arg1 = flag
  if not arg1 then
    arg1 = true
    flag = arg1
    arg1 = TriggerEvent
    arg2 = "62acadffbf"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "62acadffbf".
    arg1(arg2)
    arg1 = Wait
    arg2 = 5000
    arg1(arg2)
    arg1 = 0
    while arg1 <= 100 do
      arg2 = GetEntityHealth
      playerPed = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerPed = playerPed()
      -- Beginner: result below is health.
      arg2 = arg2(playerPed)
      playerPed = 200
      if arg2 <= playerPed then
        arg2 = GetEntityHealth
        playerPed = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        playerPed = playerPed()
        -- Beginner: result below is health.
        arg2 = arg2(playerPed)
        if arg2 > 102 then
          arg2 = tCMG
          arg2 = arg2.varyHealth
          playerPed = 1
          arg2(playerPed)
        end
      end
      arg1 = arg1 + 1
      arg2 = Wait
      playerPed = 250
      arg2(playerPed)
    end
    arg2 = false
    flag = arg2
  else
    arg1 = tCMG
    arg1 = arg1.notify
    arg2 = "~r~fuck, I don't feel too good..."
    -- Beginner: Show a notification to the player.
    arg1(arg2)
    arg1 = TriggerEvent
    arg2 = "62acadffbf"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "62acadffbf".
    arg1(arg2)
    arg1 = Wait
    arg2 = 5000
    arg1(arg2)
    arg1 = tCMG
    arg1 = arg1.playScreenEffect
    arg2 = "DrugsMichaelAliensFight"
    playerPed = 30
    arg1(arg2, playerPed)
    arg1 = 0
    while arg1 <= 100 do
      arg2 = GetEntityHealth
      playerPed = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      playerPed = playerPed()
      -- Beginner: result below is health.
      arg2 = arg2(playerPed)
      if arg2 > 102 then
        arg2 = tCMG
        arg2 = arg2.varyHealth
        playerPed = -2
        arg2(playerPed)
      end
      arg1 = arg1 + 1
      arg2 = Wait
      playerPed = 250
      arg2(playerPed)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "30b690a8dd".
eventRegistration2(textValue3, workValue6)
eventRegistration2 = RegisterNetEvent
textValue3 = "e010359692"
-- Beginner: this function handles network event "e010359692".
function workValue6()
  local arg1, arg2, playerPed, cmgCall2, textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4, flag5, flag6
  arg1 = flag14
  if not arg1 then
    arg1 = true
    flag14 = arg1
    arg1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = CMG
    arg2 = arg2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg2 = arg2()
    playerPed = CMG
    playerPed = playerPed.loadModel
    cmgCall2 = 1368637848
    -- Beginner: Request/load a GTA model before spawning or applying it.
    playerPed(cmgCall2)
    playerPed = GetEntityForwardVector
    cmgCall2 = arg1
    playerPed = playerPed(cmgCall2)
    playerPed = playerPed * 0.5
    playerPed = arg2 + playerPed
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.requestEntitySpawn
    textValue4 = "apply_bandage_object"
    cmgCall2(textValue4)
    cmgCall2 = CreateObject
    textValue4 = 1368637848
    numberValue4 = playerPed.x
    gameTime = playerPed.y
    textValue5 = playerPed.z
    flag15 = true
    mathHelper = true
    flag2 = false
    -- Beginner: result below is objectEntity.
    cmgCall2 = cmgCall2(textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2)
    textValue4 = PlaceObjectOnGroundProperly
    numberValue4 = cmgCall2
    textValue4(numberValue4)
    textValue4 = SetModelAsNoLongerNeeded
    numberValue4 = 1368637848
    textValue4(numberValue4)
    textValue4 = CMG
    textValue4 = textValue4.loadAnimDict
    numberValue4 = "anim@heists@box_carry@"
    -- Beginner: Load a GTA animation dictionary before using it.
    textValue4(numberValue4)
    textValue4 = TaskPlayAnim
    numberValue4 = arg1
    gameTime = "anim@heists@box_carry@"
    textValue5 = "base"
    flag15 = 8.0
    mathHelper = 8.0
    flag2 = -1
    numberValue = 3
    flag3 = 1.0
    flag4 = false
    flag5 = false
    flag6 = false
    -- Beginner: Play an animation on a ped.
    textValue4(numberValue4, gameTime, textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4, flag5, flag6)
    textValue4 = RemoveAnimDict
    numberValue4 = "anim@heists@box_carry@"
    textValue4(numberValue4)
    textValue4 = CMG
    textValue4 = textValue4.loadClipSet
    numberValue4 = "move_ped_crouched"
    textValue4(numberValue4)
    textValue4 = RemoveAnimSet
    numberValue4 = "move_ped_crouched"
    textValue4(numberValue4)
    textValue4 = Citizen
    textValue4 = textValue4.CreateThread
    function numberValue4()
      local cmgCall, textValue2, numberValue3, workValue4, workValue5
      cmgCall = CMG
      cmgCall = cmgCall.startCircularProgressBar
      textValue2 = ""
      numberValue3 = 3000
      workValue4 = nil
      function workValue5()
        local workValue, workValue3
      end
      cmgCall(textValue2, numberValue3, workValue4, workValue5)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    textValue4(numberValue4)
    textValue4 = GetSelectedPedWeapon
    numberValue4 = arg1
    -- Beginner: result below is weaponHash.
    textValue4 = textValue4(numberValue4)
    numberValue4 = CMG
    numberValue4 = numberValue4.setWeapon
    gameTime = arg1
    textValue5 = -1569615261
    flag15 = true
    numberValue4(gameTime, textValue5, flag15)
    numberValue4 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    numberValue4 = numberValue4()
    while true do
      gameTime = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      gameTime = gameTime()
      gameTime = gameTime - numberValue4
      textValue5 = 3000
      if not (gameTime < textValue5) then
        break
      end
      gameTime = GetEntityHealth
      textValue5 = arg1
      -- Beginner: result below is health.
      gameTime = gameTime(textValue5)
      if not (gameTime > 102) then
        break
      end
      gameTime = DisablePlayerFiring
      textValue5 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      textValue5 = textValue5()
      flag15 = true
      gameTime(textValue5, flag15)
      gameTime = SetPedMovementClipset
      textValue5 = arg1
      flag15 = "move_ped_crouched"
      mathHelper = 0.6
      gameTime(textValue5, flag15, mathHelper)
      gameTime = SetPedStrafeClipset
      textValue5 = arg1
      flag15 = "move_ped_crouched_strafing"
      gameTime(textValue5, flag15)
      gameTime = Citizen
      gameTime = gameTime.Wait
      textValue5 = 0
      gameTime(textValue5)
    end
    gameTime = CMG
    gameTime = gameTime.stopCircularProgressBar
    gameTime()
    gameTime = ResetPedStrafeClipset
    textValue5 = arg1
    gameTime(textValue5)
    gameTime = ResetPedWeaponMovementClipset
    textValue5 = arg1
    gameTime(textValue5)
    gameTime = ResetPedMovementClipset
    textValue5 = arg1
    flag15 = 0.5
    gameTime(textValue5, flag15)
    gameTime = DeleteEntity
    textValue5 = cmgCall2
    -- Beginner: Delete a GTA entity.
    gameTime(textValue5)
    gameTime = ClearPedTasks
    textValue5 = arg1
    gameTime(textValue5)
    gameTime = GetEntityHealth
    textValue5 = arg1
    -- Beginner: result below is health.
    gameTime = gameTime(textValue5)
    if gameTime > 102 then
      textValue5 = SetEntityHealth
      flag15 = arg1
      mathHelper = math
      mathHelper = mathHelper.min
      flag2 = gameTime + 25
      numberValue = 200
      mathHelper, flag2, numberValue, flag3, flag4, flag5, flag6 = mathHelper(flag2, numberValue)
      textValue5(flag15, mathHelper, flag2, numberValue, flag3, flag4, flag5, flag6)
    end
    textValue5 = CMG
    textValue5 = textValue5.setWeapon
    flag15 = arg1
    mathHelper = textValue4
    flag2 = true
    textValue5(flag15, mathHelper, flag2)
    textValue5 = false
    flag14 = textValue5
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e010359692".
eventRegistration2(textValue3, workValue6)
eventRegistration2 = RegisterNetEvent
textValue3 = "49921b1e25"
-- Beginner: this function handles network event "49921b1e25".
function workValue6()
  local arg1, arg2, playerPed, cmgCall2, textValue4, numberValue4, gameTime, textValue5
  arg1 = flag11
  if not arg1 then
    arg1 = true
    flag11 = arg1
    arg1 = {}
    arg2 = {}
    playerPed = "mp_player_inteat@burger"
    cmgCall2 = "mp_player_int_eat_burger_enter"
    textValue4 = 1
    arg2[1] = playerPed
    arg2[2] = cmgCall2
    arg2[3] = textValue4
    playerPed = {}
    cmgCall2 = "mp_player_inteat@burger"
    textValue4 = "mp_player_int_eat_burger"
    numberValue4 = 1
    playerPed[1] = cmgCall2
    playerPed[2] = textValue4
    playerPed[3] = numberValue4
    cmgCall2 = {}
    textValue4 = "mp_player_inteat@burger"
    numberValue4 = "mp_player_int_eat_burger_fp"
    gameTime = 1
    cmgCall2[1] = textValue4
    cmgCall2[2] = numberValue4
    cmgCall2[3] = gameTime
    textValue4 = {}
    numberValue4 = "mp_player_inteat@burger"
    gameTime = "mp_player_int_eat_exit_burger"
    textValue5 = 1
    textValue4[1] = numberValue4
    textValue4[2] = gameTime
    textValue4[3] = textValue5
    arg1[1] = arg2
    arg1[2] = playerPed
    arg1[3] = cmgCall2
    arg1[4] = textValue4
    arg2 = tCMG
    arg2 = arg2.playAnim
    playerPed = true
    cmgCall2 = arg1
    textValue4 = false
    arg2(playerPed, cmgCall2, textValue4)
    arg2 = Wait
    playerPed = 2500
    arg2(playerPed)
    arg2 = 0
    while arg2 <= 25 do
      playerPed = GetEntityHealth
      cmgCall2 = PlayerPedId
      cmgCall2, textValue4, numberValue4, gameTime, textValue5 = cmgCall2()
      -- Beginner: result below is health.
      playerPed = playerPed(cmgCall2, textValue4, numberValue4, gameTime, textValue5)
      cmgCall2 = 200
      if playerPed <= cmgCall2 then
        playerPed = GetEntityHealth
        cmgCall2 = PlayerPedId
        cmgCall2, textValue4, numberValue4, gameTime, textValue5 = cmgCall2()
        -- Beginner: result below is health.
        playerPed = playerPed(cmgCall2, textValue4, numberValue4, gameTime, textValue5)
        if playerPed > 102 then
          playerPed = tCMG
          playerPed = playerPed.varyHealth
          cmgCall2 = 1
          playerPed(cmgCall2)
        end
      end
      arg2 = arg2 + 1
      playerPed = Wait
      cmgCall2 = 125
      playerPed(cmgCall2)
    end
    playerPed = false
    flag11 = playerPed
  else
    arg1 = tCMG
    arg1 = arg1.notify
    arg2 = "~r~You dropped the taco on the floor trying to stuff it in your mouth!"
    -- Beginner: Show a notification to the player.
    arg1(arg2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "49921b1e25".
eventRegistration2(textValue3, workValue6)
function eventRegistration2(arg1)
  local arg2, playerPed, cmgCall2, textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  playerPed = tCMG
  playerPed = playerPed.setCanAnim
  cmgCall2 = false
  playerPed(cmgCall2)
  playerPed = SetTimecycleModifier
  cmgCall2 = "spectator5"
  playerPed(cmgCall2)
  playerPed = SetPedMotionBlur
  cmgCall2 = arg2
  textValue4 = true
  playerPed(cmgCall2, textValue4)
  playerPed = CMG
  playerPed = playerPed.loadClipSet
  cmgCall2 = "move_m@drunk@verydrunk"
  playerPed(cmgCall2)
  playerPed = SetPedMovementClipset
  cmgCall2 = arg2
  textValue4 = "move_m@drunk@verydrunk"
  numberValue4 = 1.0
  playerPed(cmgCall2, textValue4, numberValue4)
  playerPed = RemoveClipSet
  cmgCall2 = "move_m@drunk@verydrunk"
  playerPed(cmgCall2)
  playerPed = Citizen
  playerPed = playerPed.Wait
  cmgCall2 = 8000
  playerPed(cmgCall2)
  playerPed = DoScreenFadeOut
  cmgCall2 = 3500
  playerPed(cmgCall2)
  playerPed = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  playerPed = playerPed()
  while true do
    cmgCall2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    cmgCall2 = cmgCall2()
    cmgCall2 = cmgCall2 - playerPed
    textValue4 = 12000
    if not (cmgCall2 < textValue4) then
      break
    end
    cmgCall2 = SetPedToRagdoll
    textValue4 = arg2
    numberValue4 = 5000
    gameTime = 5000
    textValue5 = 0
    flag15 = false
    mathHelper = false
    flag2 = false
    cmgCall2(textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2)
    cmgCall2 = Citizen
    cmgCall2 = cmgCall2.Wait
    textValue4 = 0
    cmgCall2(textValue4)
  end
  if arg1 then
    cmgCall2 = DoScreenFadeIn
    textValue4 = 2000
    cmgCall2(textValue4)
    cmgCall2 = Citizen
    cmgCall2 = cmgCall2.Wait
    textValue4 = 2000
    cmgCall2(textValue4)
    cmgCall2 = tCMG
    cmgCall2 = cmgCall2.setCanAnim
    textValue4 = true
    cmgCall2(textValue4)
  end
  cmgCall2 = ClearTimecycleModifier
  cmgCall2()
  cmgCall2 = SetPedMotionBlur
  textValue4 = arg2
  numberValue4 = false
  cmgCall2(textValue4, numberValue4)
  cmgCall2 = ResetPedMovementClipset
  textValue4 = arg2
  numberValue4 = 0.0
  cmgCall2(textValue4, numberValue4)
end
function textValue3()
  local arg1, arg2, playerPed, cmgCall2, textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4, flag5
  arg1 = {}
  arg2 = vector4
  playerPed = -803.1484375
  cmgCall2 = 168.69989013672
  textValue4 = 76.740577697754
  numberValue4 = 117.35
  arg2 = arg2(playerPed, cmgCall2, textValue4, numberValue4)
  playerPed = vector4
  cmgCall2 = 1971.0661621094
  textValue4 = 3819.2163085938
  numberValue4 = 33.428691864014
  gameTime = 301.21
  playerPed = playerPed(cmgCall2, textValue4, numberValue4, gameTime)
  cmgCall2 = vector4
  textValue4 = 951.93359375
  numberValue4 = 459.44088745117
  gameTime = 126.2303237915
  textValue5 = 161.45
  cmgCall2 = cmgCall2(textValue4, numberValue4, gameTime, textValue5)
  textValue4 = vector4
  numberValue4 = 973.404296875
  gameTime = -208.77210998535
  textValue5 = 76.168434143066
  flag15 = 63.13
  textValue4 = textValue4(numberValue4, gameTime, textValue5, flag15)
  numberValue4 = vector4
  gameTime = 1350.5997314453
  textValue5 = -535.03851318359
  flag15 = 74.035507202148
  mathHelper = 253.63
  numberValue4 = numberValue4(gameTime, textValue5, flag15, mathHelper)
  gameTime = vector4
  textValue5 = -17.932209014893
  flag15 = -1436.7879638672
  mathHelper = 31.101530075073
  flag2 = 174.58
  gameTime, textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4, flag5 = gameTime(textValue5, flag15, mathHelper, flag2)
  arg1[1] = arg2
  arg1[2] = playerPed
  arg1[3] = cmgCall2
  arg1[4] = textValue4
  arg1[5] = numberValue4
  arg1[6] = gameTime
  arg1[7] = textValue5
  arg1[8] = flag15
  arg1[9] = mathHelper
  arg1[10] = flag2
  arg1[11] = numberValue
  arg1[12] = flag3
  arg1[13] = flag4
  arg1[14] = flag5
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  playerPed = math
  playerPed = playerPed.random
  cmgCall2 = 1
  textValue4 = #arg1
  playerPed = playerPed(cmgCall2, textValue4)
  playerPed = arg1[playerPed]
  cmgCall2 = FreezeEntityPosition
  textValue4 = arg2
  numberValue4 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  cmgCall2(textValue4, numberValue4)
  cmgCall2 = SetEntityCoordsNoOffset
  textValue4 = arg2
  numberValue4 = playerPed.x
  gameTime = playerPed.y
  textValue5 = playerPed.z
  flag15 = true
  mathHelper = false
  flag2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  cmgCall2(textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2)
  cmgCall2 = SetEntityHeading
  textValue4 = arg2
  numberValue4 = playerPed.w
  -- Beginner: Change the direction an entity is facing.
  cmgCall2(textValue4, numberValue4)
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.loadAnimDict
  textValue4 = "anim@amb@nightclub@lazlow@lo_toilet@"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgCall2(textValue4)
  cmgCall2 = TaskPlayAnim
  textValue4 = arg2
  numberValue4 = "anim@amb@nightclub@lazlow@lo_toilet@"
  gameTime = "lowtoilet_base_laz"
  textValue5 = 800.0
  flag15 = 8.0
  mathHelper = -1
  flag2 = 49
  numberValue = 0
  flag3 = false
  flag4 = false
  flag5 = false
  -- Beginner: Play an animation on a ped.
  cmgCall2(textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4, flag5)
  cmgCall2 = RemoveAnimDict
  textValue4 = "anim@amb@nightclub@lazlow@lo_toilet@"
  cmgCall2(textValue4)
  while true do
    cmgCall2 = HasAnimSetLoaded
    textValue4 = "move_ped_crouched"
    cmgCall2 = cmgCall2(textValue4)
    if cmgCall2 then
      break
    end
    cmgCall2 = RequestAnimSet
    textValue4 = "move_ped_crouched"
    cmgCall2(textValue4)
    cmgCall2 = Citizen
    cmgCall2 = cmgCall2.Wait
    textValue4 = 0
    cmgCall2(textValue4)
  end
  cmgCall2 = SetPedMovementClipset
  textValue4 = arg2
  numberValue4 = "move_ped_crouched"
  gameTime = 0.35
  cmgCall2(textValue4, numberValue4, gameTime)
  cmgCall2 = RemoveAnimSet
  textValue4 = "move_ped_crouched"
  cmgCall2(textValue4)
  cmgCall2 = Citizen
  cmgCall2 = cmgCall2.Wait
  textValue4 = 2000
  cmgCall2(textValue4)
  cmgCall2 = DoScreenFadeIn
  textValue4 = 1000
  cmgCall2(textValue4)
  cmgCall2 = Citizen
  cmgCall2 = cmgCall2.Wait
  textValue4 = 5000
  cmgCall2(textValue4)
  cmgCall2 = tCMG
  cmgCall2 = cmgCall2.setCanAnim
  textValue4 = true
  cmgCall2(textValue4)
  cmgCall2 = StopAnimTask
  textValue4 = arg2
  numberValue4 = "anim@amb@nightclub@lazlow@lo_toilet@"
  gameTime = "lowtoilet_base_laz"
  textValue5 = 1.0
  cmgCall2(textValue4, numberValue4, gameTime, textValue5)
  cmgCall2 = ResetPedMovementClipset
  textValue4 = arg2
  numberValue4 = 0.55
  cmgCall2(textValue4, numberValue4)
  cmgCall2 = FreezeEntityPosition
  textValue4 = arg2
  numberValue4 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  cmgCall2(textValue4, numberValue4)
end
function workValue6()
  local arg1, arg2, playerPed, cmgCall2, textValue4
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  while true do
    arg2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg2 = arg2()
    arg2 = arg2 - arg1
    playerPed = 1000
    if arg2 > playerPed then
      break
    end
    playerPed = 1000
    playerPed = playerPed - arg2
    playerPed = playerPed / 1000
    cmgCall2 = SetTimecycleModifierStrength
    textValue4 = playerPed
    cmgCall2(textValue4)
    cmgCall2 = Citizen
    cmgCall2 = cmgCall2.Wait
    textValue4 = 0
    cmgCall2(textValue4)
  end
  arg2 = ClearTimecycleModifier
  arg2()
end
function workValue7(arg1, arg2)
  local playerPed, cmgCall2, textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag10, flag12, numberValue2, flag13
  playerPed = CMG
  playerPed = playerPed.loadModel
  cmgCall2 = arg1
  -- Beginner: Request/load a GTA model before spawning or applying it.
  playerPed(cmgCall2)
  playerPed = CMG
  playerPed = playerPed.loadModel
  cmgCall2 = arg2
  playerPed(cmgCall2)
  playerPed = CMG
  playerPed = playerPed.getPlayerCoords
  -- Beginner: result below is playerCoords.
  playerPed = playerPed()
  cmgCall2 = GetNthClosestVehicleNode
  textValue4 = playerPed.x
  numberValue4 = playerPed.y
  gameTime = playerPed.z
  textValue5 = 6
  cmgCall2, textValue4 = cmgCall2(textValue4, numberValue4, gameTime, textValue5)
  if cmgCall2 then
    numberValue4 = CreatePed
    gameTime = 0
    textValue5 = arg1
    flag15 = textValue4.x
    mathHelper = textValue4.y
    flag2 = textValue4.z
    numberValue = 0.0
    flag3 = false
    flag4 = true
    -- Beginner: result below is pedEntity.
    numberValue4 = numberValue4(gameTime, textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4)
    gameTime = CreateObject
    textValue5 = arg2
    flag15 = playerPed.x
    mathHelper = playerPed.y
    flag2 = playerPed.z
    numberValue = false
    flag3 = true
    flag4 = false
    -- Beginner: result below is objectEntity.
    gameTime = gameTime(textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4)
    textValue5 = AttachEntityToEntity
    flag15 = gameTime
    mathHelper = numberValue4
    flag2 = GetPedBoneIndex
    numberValue = numberValue4
    flag3 = 17188
    flag2 = flag2(numberValue, flag3)
    numberValue = 0.12
    flag3 = 0.01
    flag4 = 0.01
    flag5 = 5.0
    flag6 = 150.0
    flag7 = 0.0
    flag8 = true
    flag9 = true
    flag10 = false
    flag12 = true
    numberValue2 = 1
    flag13 = true
    -- Beginner: Attach one entity to another entity.
    textValue5(flag15, mathHelper, flag2, numberValue, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag10, flag12, numberValue2, flag13)
    textValue5 = TaskGoToCoordAnyMeans
    flag15 = numberValue4
    mathHelper = playerPed.x
    flag2 = playerPed.y
    numberValue = playerPed.z
    flag3 = 5.0
    flag4 = 0.0
    flag5 = false
    flag6 = 786603
    flag7 = 3212836864
    textValue5(flag15, mathHelper, flag2, numberValue, flag3, flag4, flag5, flag6, flag7)
    textValue5 = CreateCam
    flag15 = "DEFAULT_SCRIPTED_CAMERA"
    mathHelper = true
    -- Beginner: result below is cameraHandle.
    textValue5 = textValue5(flag15, mathHelper)
    flag15 = GetGameplayCamCoord
    flag15 = flag15()
    mathHelper = SetCamCoord
    flag2 = textValue5
    numberValue = flag15.x
    flag3 = flag15.y
    flag4 = flag15.z
    mathHelper(flag2, numberValue, flag3, flag4)
    mathHelper = GetGameplayCamRot
    flag2 = 2
    mathHelper = mathHelper(flag2)
    flag2 = SetCamRot
    numberValue = textValue5
    flag3 = mathHelper.x
    flag4 = mathHelper.y
    flag5 = mathHelper.z
    flag6 = 2
    flag2(numberValue, flag3, flag4, flag5, flag6)
    flag2 = SetCamActive
    numberValue = textValue5
    flag3 = true
    flag2(numberValue, flag3)
    flag2 = RenderScriptCams
    numberValue = true
    flag3 = true
    flag4 = 0
    flag5 = true
    flag6 = true
    flag2(numberValue, flag3, flag4, flag5, flag6)
    flag2 = PointCamAtEntity
    numberValue = textValue5
    flag3 = numberValue4
    flag4 = 0.0
    flag5 = 0.0
    flag6 = 0.0
    flag7 = true
    flag2(numberValue, flag3, flag4, flag5, flag6, flag7)
    flag2 = SetCamFov
    numberValue = textValue5
    flag3 = 30.0
    flag2(numberValue, flag3)
    flag2 = AddBlipForEntity
    numberValue = numberValue4
    -- Beginner: result below is blipHandle.
    flag2 = flag2(numberValue)
    numberValue = SetBlipSprite
    flag3 = flag2
    flag4 = 141
    numberValue(flag3, flag4)
    numberValue = SetBlipColour
    flag3 = flag2
    flag4 = 2
    numberValue(flag3, flag4)
    numberValue = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    numberValue = numberValue()
    while true do
      flag3 = GetEntityCoords
      flag4 = numberValue4
      flag5 = true
      -- Beginner: result below is entityCoords.
      flag3 = flag3(flag4, flag5)
      flag3 = flag3 - playerPed
      flag3 = #flag3
      if not (flag3 > 2.0) then
        break
      end
      flag3 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      flag3 = flag3()
      flag3 = flag3 - numberValue
      flag4 = 10000
      if not (flag3 < flag4) then
        break
      end
      flag3 = Citizen
      flag3 = flag3.Wait
      flag4 = 0
      flag3(flag4)
    end
    flag3 = SetCamActive
    flag4 = textValue5
    flag5 = false
    flag3(flag4, flag5)
    flag3 = RenderScriptCams
    flag4 = false
    flag5 = false
    flag6 = 0
    flag7 = false
    flag8 = false
    flag3(flag4, flag5, flag6, flag7, flag8)
    flag3 = DestroyCam
    flag4 = textValue5
    flag5 = false
    flag3(flag4, flag5)
    flag3 = DetachEntity
    flag4 = gameTime
    flag5 = false
    flag6 = false
    flag3(flag4, flag5, flag6)
    flag3 = Citizen
    flag3 = flag3.Wait
    flag4 = 30000
    flag3(flag4)
    flag3 = DeleteEntity
    flag4 = numberValue4
    -- Beginner: Delete a GTA entity.
    flag3(flag4)
    flag3 = DeleteEntity
    flag4 = gameTime
    flag3(flag4)
  end
  numberValue4 = SetModelAsNoLongerNeeded
  gameTime = arg1
  numberValue4(gameTime)
  numberValue4 = SetModelAsNoLongerNeeded
  gameTime = arg2
  numberValue4(gameTime)
end
function workValue8()
  local arg1, arg2, playerPed, cmgCall2, textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4, flag5
  arg1 = CMG
  arg1 = arg1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg1 = arg1()
  arg2 = GetNthClosestVehicleNode
  playerPed = arg1.x
  cmgCall2 = arg1.y
  textValue4 = arg1.z
  numberValue4 = 6
  arg2, playerPed = arg2(playerPed, cmgCall2, textValue4, numberValue4)
  if not arg2 then
    return
  end
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.loadModel
  textValue4 = -835930287
  -- Beginner: Request/load a GTA model before spawning or applying it.
  cmgCall2(textValue4)
  cmgCall2 = CreatePed
  textValue4 = 0
  numberValue4 = -835930287
  gameTime = playerPed.x
  textValue5 = playerPed.y
  flag15 = playerPed.z
  mathHelper = 0.0
  flag2 = false
  numberValue = false
  -- Beginner: result below is pedEntity.
  cmgCall2 = cmgCall2(textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2, numberValue)
  textValue4 = TaskTurnPedToFaceEntity
  numberValue4 = cmgCall2
  gameTime = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  gameTime = gameTime()
  textValue5 = -1
  textValue4(numberValue4, gameTime, textValue5)
  textValue4 = SetModelAsNoLongerNeeded
  numberValue4 = -835930287
  textValue4(numberValue4)
  textValue4 = SetTimecycleModifier
  numberValue4 = "Kifflom"
  textValue4(numberValue4)
  textValue4 = CreateCam
  numberValue4 = "DEFAULT_SCRIPTED_CAMERA"
  gameTime = true
  -- Beginner: result below is cameraHandle.
  textValue4 = textValue4(numberValue4, gameTime)
  numberValue4 = GetGameplayCamCoord
  numberValue4 = numberValue4()
  gameTime = SetCamCoord
  textValue5 = textValue4
  flag15 = numberValue4.x
  mathHelper = numberValue4.y
  flag2 = numberValue4.z
  gameTime(textValue5, flag15, mathHelper, flag2)
  gameTime = GetGameplayCamRot
  textValue5 = 2
  gameTime = gameTime(textValue5)
  textValue5 = SetCamRot
  flag15 = textValue4
  mathHelper = gameTime.x
  flag2 = gameTime.y
  numberValue = gameTime.z
  flag3 = 2
  textValue5(flag15, mathHelper, flag2, numberValue, flag3)
  textValue5 = SetCamActive
  flag15 = textValue4
  mathHelper = true
  textValue5(flag15, mathHelper)
  textValue5 = RenderScriptCams
  flag15 = true
  mathHelper = true
  flag2 = 0
  numberValue = true
  flag3 = true
  textValue5(flag15, mathHelper, flag2, numberValue, flag3)
  textValue5 = PointCamAtEntity
  flag15 = textValue4
  mathHelper = cmgCall2
  flag2 = 0.0
  numberValue = 0.0
  flag3 = 0.0
  flag4 = true
  textValue5(flag15, mathHelper, flag2, numberValue, flag3, flag4)
  textValue5 = notify
  flag15 = "~y~Is that... jesus?"
  -- Beginner: Show a notification to the player.
  textValue5(flag15)
  textValue5 = GetCamFov
  flag15 = textValue4
  textValue5 = textValue5(flag15)
  flag15 = 30.0
  textValue5 = flag15 - textValue5
  flag15 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  flag15 = flag15()
  while true do
    mathHelper = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    mathHelper = mathHelper()
    mathHelper = mathHelper - flag15
    flag2 = 10000
    if mathHelper > flag2 then
      break
    end
    flag2 = mathHelper / 15000
    numberValue = textValue5 * flag2
    flag3 = SetCamFov
    flag4 = textValue4
    flag5 = 30.0 + numberValue
    flag3(flag4, flag5)
    flag3 = Citizen
    flag3 = flag3.Wait
    flag4 = 0
    flag3(flag4)
  end
  mathHelper = SetCamActive
  flag2 = textValue4
  numberValue = false
  mathHelper(flag2, numberValue)
  mathHelper = RenderScriptCams
  flag2 = false
  numberValue = false
  flag3 = 0
  flag4 = false
  flag5 = false
  mathHelper(flag2, numberValue, flag3, flag4, flag5)
  mathHelper = DestroyCam
  flag2 = textValue4
  numberValue = false
  mathHelper(flag2, numberValue)
  mathHelper = DeleteEntity
  flag2 = cmgCall2
  -- Beginner: Delete a GTA entity.
  mathHelper(flag2)
  mathHelper = workValue6
  mathHelper()
end
function workValue9()
  local arg1, arg2, playerPed, cmgCall2, textValue4, numberValue4, gameTime, textValue5, flag15
  arg1 = CMG
  arg1 = arg1.loadModel
  arg2 = 1814532926
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg1 = arg1()
  arg2 = CreateObject
  playerPed = 1814532926
  cmgCall2 = arg1.x
  textValue4 = arg1.y
  numberValue4 = arg1.z
  gameTime = false
  textValue5 = false
  flag15 = false
  -- Beginner: result below is objectEntity.
  arg2 = arg2(playerPed, cmgCall2, textValue4, numberValue4, gameTime, textValue5, flag15)
  playerPed = PlaceObjectOnGroundProperly
  cmgCall2 = arg2
  playerPed(cmgCall2)
  playerPed = SetModelAsNoLongerNeeded
  cmgCall2 = 1814532926
  playerPed(cmgCall2)
end
function workValue10()
  local arg1, arg2, playerPed, cmgCall2, textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag10
  arg1 = CMG
  arg1 = arg1.loadModel
  arg2 = -290617598
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.loadModel
  arg2 = -413447396
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.overrideTime
  arg2 = 0
  playerPed = 0
  cmgCall2 = 0
  arg1(arg2, playerPed, cmgCall2)
  arg1 = CMG
  arg1 = arg1.setWeather
  arg2 = "THUNDER"
  arg1(arg2)
  arg1 = CreateVehicle
  arg2 = -290617598
  playerPed = 1578.0584716797
  cmgCall2 = 4051.5563964844
  textValue4 = 1084.2967529297
  numberValue4 = 78.9
  gameTime = false
  textValue5 = false
  -- Beginner: result below is vehicleEntity.
  arg1 = arg1(arg2, playerPed, cmgCall2, textValue4, numberValue4, gameTime, textValue5)
  arg2 = CMG
  arg2 = arg2.initLocalVehicle
  playerPed = arg1
  arg2(playerPed)
  arg2 = CreatePedInsideVehicle
  playerPed = arg1
  cmgCall2 = 0
  textValue4 = -413447396
  numberValue4 = -1
  gameTime = false
  textValue5 = false
  arg2 = arg2(playerPed, cmgCall2, textValue4, numberValue4, gameTime, textValue5)
  playerPed = SetModelAsNoLongerNeeded
  cmgCall2 = -290617598
  playerPed(cmgCall2)
  playerPed = SetModelAsNoLongerNeeded
  cmgCall2 = -413447396
  playerPed(cmgCall2)
  playerPed = CreateCam
  cmgCall2 = "DEFAULT_SCRIPTED_CAMERA"
  textValue4 = true
  -- Beginner: result below is cameraHandle.
  playerPed = playerPed(cmgCall2, textValue4)
  cmgCall2 = AttachCamToPedBone
  textValue4 = playerPed
  numberValue4 = arg2
  gameTime = GetPedBoneIndex
  textValue5 = arg2
  flag15 = 12844
  gameTime = gameTime(textValue5, flag15)
  textValue5 = 0.0
  flag15 = 0.0
  mathHelper = 0.7
  flag2 = true
  cmgCall2(textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2)
  cmgCall2 = SetCamActive
  textValue4 = playerPed
  numberValue4 = true
  cmgCall2(textValue4, numberValue4)
  cmgCall2 = RenderScriptCams
  textValue4 = true
  numberValue4 = true
  gameTime = 0
  textValue5 = true
  flag15 = true
  cmgCall2(textValue4, numberValue4, gameTime, textValue5, flag15)
  cmgCall2 = SetFocusEntity
  textValue4 = arg1
  cmgCall2(textValue4)
  function cmgCall2()
    local cmgCall, textValue2, numberValue3
    cmgCall = math
    cmgCall = cmgCall.random
    textValue2 = -2
    numberValue3 = 2
    cmgCall = cmgCall(textValue2, numberValue3)
    cmgCall = cmgCall + 0.0
    return cmgCall
  end
  textValue4 = DoScreenFadeIn
  numberValue4 = 1000
  textValue4(numberValue4)
  textValue4 = 0
  while true do
    numberValue4 = IsEntityDead
    gameTime = arg1
    numberValue4 = numberValue4(gameTime)
    if numberValue4 then
      break
    end
    numberValue4 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    numberValue4 = numberValue4()
    numberValue4 = numberValue4 - textValue4
    gameTime = 200
    if numberValue4 > gameTime then
      numberValue4 = ApplyForceToEntity
      gameTime = arg1
      textValue5 = 1
      flag15 = cmgCall2
      flag15 = flag15()
      mathHelper = cmgCall2
      mathHelper = mathHelper()
      flag2 = cmgCall2
      flag2 = flag2()
      numberValue = 0.0
      flag3 = 0.0
      flag4 = 0.0
      flag5 = -1
      flag6 = true
      flag7 = false
      flag8 = true
      flag9 = false
      flag10 = false
      numberValue4(gameTime, textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4, flag5, flag6, flag7, flag8, flag9, flag10)
      numberValue4 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      numberValue4 = numberValue4()
      textValue4 = numberValue4
    end
    numberValue4 = GetEntityRotation
    gameTime = arg1
    textValue5 = 2
    numberValue4 = numberValue4(gameTime, textValue5)
    gameTime = SetCamRot
    textValue5 = playerPed
    flag15 = numberValue4.x
    mathHelper = numberValue4.y
    flag2 = numberValue4.z
    numberValue = 2
    gameTime(textValue5, flag15, mathHelper, flag2, numberValue)
    gameTime = SetPedToRagdoll
    textValue5 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    textValue5 = textValue5()
    flag15 = 1000
    mathHelper = 1000
    flag2 = 0
    numberValue = false
    flag3 = false
    flag4 = false
    gameTime(textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4)
    gameTime = Citizen
    gameTime = gameTime.Wait
    textValue5 = 0
    gameTime(textValue5)
  end
  numberValue4 = ClearFocus
  numberValue4()
  numberValue4 = SetCamActive
  gameTime = playerPed
  textValue5 = false
  numberValue4(gameTime, textValue5)
  numberValue4 = RenderScriptCams
  gameTime = false
  textValue5 = false
  flag15 = 0
  mathHelper = false
  flag2 = false
  numberValue4(gameTime, textValue5, flag15, mathHelper, flag2)
  numberValue4 = DestroyCam
  gameTime = playerPed
  textValue5 = false
  numberValue4(gameTime, textValue5)
  numberValue4 = DeleteEntity
  gameTime = arg2
  -- Beginner: Delete a GTA entity.
  numberValue4(gameTime)
  numberValue4 = DeleteEntity
  gameTime = arg1
  numberValue4(gameTime)
  numberValue4 = tCMG
  numberValue4 = numberValue4.setCanAnim
  gameTime = true
  numberValue4(gameTime)
  numberValue4 = CMG
  numberValue4 = numberValue4.cancelOverrideTimeWeather
  numberValue4()
end
eventRegistration = RegisterNetEvent
textValue = "46214fe8ae"
-- Beginner: this function handles network event "46214fe8ae".
function workValue2()
  local arg1, arg2, playerPed, cmgCall2, textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4, flag5, flag6, flag7, flag8
  arg1 = CMG
  arg1 = arg1.loadAnimDict
  arg2 = "mp_safehousebeer@"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.loadModel
  arg2 = 883645854
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg1(arg2)
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CreateObject
  playerPed = 883645854
  cmgCall2 = 0.0
  textValue4 = 0.0
  numberValue4 = 0.0
  gameTime = false
  textValue5 = false
  flag15 = false
  -- Beginner: result below is objectEntity.
  arg2 = arg2(playerPed, cmgCall2, textValue4, numberValue4, gameTime, textValue5, flag15)
  playerPed = AttachEntityToEntity
  cmgCall2 = arg2
  textValue4 = arg1
  numberValue4 = GetPedBoneIndex
  gameTime = arg1
  textValue5 = 28422
  numberValue4 = numberValue4(gameTime, textValue5)
  gameTime = 0.0
  textValue5 = 0.0
  flag15 = 0.0
  mathHelper = 0.0
  flag2 = 0.0
  numberValue = 180.0
  flag3 = true
  flag4 = true
  flag5 = false
  flag6 = true
  flag7 = 1
  flag8 = true
  -- Beginner: Attach one entity to another entity.
  playerPed(cmgCall2, textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4, flag5, flag6, flag7, flag8)
  playerPed = TaskPlayAnim
  cmgCall2 = arg1
  textValue4 = "mp_safehousebeer@"
  numberValue4 = "drink_2"
  gameTime = 800.0
  textValue5 = 8.0
  flag15 = -1
  mathHelper = 49
  flag2 = 0
  numberValue = false
  flag3 = false
  flag4 = false
  -- Beginner: Play an animation on a ped.
  playerPed(cmgCall2, textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4)
  playerPed = Citizen
  playerPed = playerPed.Wait
  cmgCall2 = 5000
  playerPed(cmgCall2)
  playerPed = DeleteEntity
  cmgCall2 = arg2
  -- Beginner: Delete a GTA entity.
  playerPed(cmgCall2)
  playerPed = TaskPlayAnim
  cmgCall2 = arg1
  textValue4 = "mp_safehousebeer@"
  numberValue4 = "exit"
  gameTime = 8.0
  textValue5 = 1.0
  flag15 = -1
  mathHelper = 49
  flag2 = 0
  numberValue = false
  flag3 = false
  flag4 = false
  -- Beginner: Play an animation on a ped.
  playerPed(cmgCall2, textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4)
  playerPed = Citizen
  playerPed = playerPed.Wait
  cmgCall2 = 500
  playerPed(cmgCall2)
  playerPed = math
  playerPed = playerPed.random
  cmgCall2 = 1
  textValue4 = 20
  playerPed = playerPed(cmgCall2, textValue4)
  if 1 == playerPed then
    cmgCall2 = DoScreenFadeOut
    textValue4 = 1000
    cmgCall2(textValue4)
    cmgCall2 = SetEntityHealth
    textValue4 = arg1
    numberValue4 = 200
    cmgCall2(textValue4, numberValue4)
    cmgCall2 = Citizen
    cmgCall2 = cmgCall2.Wait
    textValue4 = 2000
    cmgCall2(textValue4)
    cmgCall2 = DoScreenFadeIn
    textValue4 = 1000
    cmgCall2(textValue4)
    cmgCall2 = Citizen
    cmgCall2 = cmgCall2.Wait
    textValue4 = 1000
    cmgCall2(textValue4)
    cmgCall2 = notify
    textValue4 = "~g~You suddenly feel a lot better."
    -- Beginner: Show a notification to the player.
    cmgCall2(textValue4)
  elseif 2 == playerPed then
    cmgCall2 = TriggerEvent
    textValue4 = "770ce54c02"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "770ce54c02".
    cmgCall2(textValue4)
    cmgCall2 = notify
    textValue4 = "~r~That wasn't sugar..."
    -- Beginner: Show a notification to the player.
    cmgCall2(textValue4)
  elseif 3 == playerPed then
    cmgCall2 = TriggerEvent
    textValue4 = "631801299a"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "631801299a".
    cmgCall2(textValue4)
    cmgCall2 = notify
    textValue4 = "~r~What liquid was that?"
    -- Beginner: Show a notification to the player.
    cmgCall2(textValue4)
  elseif 4 == playerPed then
    cmgCall2 = TriggerEvent
    textValue4 = "2155168724"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "2155168724".
    cmgCall2(textValue4)
    cmgCall2 = notify
    textValue4 = "~r~..."
    -- Beginner: Show a notification to the player.
    cmgCall2(textValue4)
  elseif 5 == playerPed then
    cmgCall2 = eventRegistration2
    textValue4 = true
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: true.
    cmgCall2(textValue4)
  elseif 6 == playerPed then
    cmgCall2 = notify
    textValue4 = "~y~You witness a flash of light."
    -- Beginner: Show a notification to the player.
    cmgCall2(textValue4)
    cmgCall2 = ForceLightningFlash
    cmgCall2()
    cmgCall2 = SetTimecycleModifier
    textValue4 = "glasses_purple"
    cmgCall2(textValue4)
    cmgCall2 = Citizen
    cmgCall2 = cmgCall2.Wait
    textValue4 = 1000
    cmgCall2(textValue4)
    cmgCall2 = workValue6
    cmgCall2()
  elseif 7 == playerPed then
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.hideAllDisplays
    textValue4 = "candyeffect"
    cmgCall2(textValue4)
    cmgCall2 = eventRegistration2
    textValue4 = false
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: false.
    cmgCall2(textValue4)
    cmgCall2 = textValue3
    cmgCall2()
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.showAllDisplays
    textValue4 = "candyeffect"
    cmgCall2(textValue4)
  elseif 8 == playerPed then
    cmgCall2 = eventRegistration2
    textValue4 = false
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: false.
    cmgCall2(textValue4)
    cmgCall2 = workValue10
    cmgCall2()
    cmgCall2 = notify
    textValue4 = "~r~Okay..."
    -- Beginner: Show a notification to the player.
    cmgCall2(textValue4)
  elseif 9 == playerPed then
    cmgCall2 = notify
    textValue4 = "~g~Tastes sweet."
    cmgCall2(textValue4)
  elseif 10 == playerPed then
    cmgCall2 = notify
    textValue4 = "~g~Tastes like dark chocolate."
    -- Beginner: Show a notification to the player.
    cmgCall2(textValue4)
  elseif 11 == playerPed then
    cmgCall2 = notify
    textValue4 = "~y~You notice rocks on the ground whilst eating."
    cmgCall2(textValue4)
  elseif 12 == playerPed then
    cmgCall2 = eventRegistration2
    textValue4 = true
    -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: true.
    cmgCall2(textValue4)
    cmgCall2 = notify
    textValue4 = "~r~You start coughing up blood..."
    -- Beginner: Show a notification to the player.
    cmgCall2(textValue4)
    while true do
      cmgCall2 = IsEntityDead
      textValue4 = arg1
      cmgCall2 = cmgCall2(textValue4)
      if cmgCall2 then
        break
      end
      cmgCall2 = GetEntityHealth
      textValue4 = arg1
      -- Beginner: result below is health.
      cmgCall2 = cmgCall2(textValue4)
      if not (cmgCall2 > 102) then
        break
      end
      cmgCall2 = SetEntityHealth
      textValue4 = arg1
      numberValue4 = GetEntityHealth
      gameTime = arg1
      -- Beginner: result below is health.
      numberValue4 = numberValue4(gameTime)
      numberValue4 = numberValue4 - 1
      cmgCall2(textValue4, numberValue4)
      cmgCall2 = Citizen
      cmgCall2 = cmgCall2.Wait
      textValue4 = 200
      cmgCall2(textValue4)
    end
  elseif 13 == playerPed then
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.hideAllDisplays
    textValue4 = "candyeffect"
    cmgCall2(textValue4)
    cmgCall2 = workValue8
    cmgCall2()
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.showAllDisplays
    textValue4 = "candyeffect"
    cmgCall2(textValue4)
  elseif 14 == playerPed then
    cmgCall2 = tCMG
    cmgCall2 = cmgCall2.setCanAnim
    textValue4 = false
    cmgCall2(textValue4)
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.loadAnimDict
    textValue4 = "misscarsteal2peeing"
    -- Beginner: Load a GTA animation dictionary before using it.
    cmgCall2(textValue4)
    cmgCall2 = TaskPlayAnim
    textValue4 = arg1
    numberValue4 = "misscarsteal2peeing"
    gameTime = "peeing_loop"
    textValue5 = 8.0
    flag15 = 1.0
    mathHelper = -1
    flag2 = 49
    numberValue = 0
    flag3 = false
    flag4 = false
    flag5 = false
    -- Beginner: Play an animation on a ped.
    cmgCall2(textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4, flag5)
    cmgCall2 = RemoveAnimDict
    textValue4 = "misscarsteal2peeing"
    cmgCall2(textValue4)
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.loadPtfx
    textValue4 = "scr_amb_chop"
    cmgCall2(textValue4)
    cmgCall2 = UseParticleFxAsset
    textValue4 = "scr_amb_chop"
    cmgCall2(textValue4)
    cmgCall2 = _ENV
    textValue4 = "StartNetworkedParticleFxLoopedOnEntityBone"
    cmgCall2 = cmgCall2[textValue4]
    textValue4 = "ent_anim_dog_peeing"
    numberValue4 = arg1
    gameTime = -0.05
    textValue5 = 0.3
    flag15 = 0.0
    mathHelper = 0.0
    flag2 = 90.0
    numberValue = 90.0
    flag3 = GetEntityBoneIndexByName
    flag4 = arg1
    flag5 = "ent_anim_dog_peeing"
    flag3 = flag3(flag4, flag5)
    flag4 = 1065353216
    flag5 = false
    flag6 = false
    flag7 = false
    cmgCall2 = cmgCall2(textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2, numberValue, flag3, flag4, flag5, flag6, flag7)
    textValue4 = Citizen
    textValue4 = textValue4.Wait
    numberValue4 = 10000
    textValue4(numberValue4)
    textValue4 = StopParticleFxLooped
    numberValue4 = cmgCall2
    gameTime = false
    textValue4(numberValue4, gameTime)
    textValue4 = tCMG
    textValue4 = textValue4.setCanAnim
    numberValue4 = true
    textValue4(numberValue4)
  elseif 15 == playerPed then
    cmgCall2 = notify
    textValue4 = "~g~You notice you're standing on a \194\1635 note."
    -- Beginner: Show a notification to the player.
    cmgCall2(textValue4)
    cmgCall2 = workValue9
    cmgCall2()
  elseif 16 == playerPed then
    cmgCall2 = SetTimecycleModifier
    textValue4 = "hud_def_Trevor"
    cmgCall2(textValue4)
    cmgCall2 = notify
    textValue4 = "~g~You feel a sudden burst of energy."
    -- Beginner: Show a notification to the player.
    cmgCall2(textValue4)
    cmgCall2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    cmgCall2 = cmgCall2()
    while true do
      textValue4 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      textValue4 = textValue4()
      textValue4 = textValue4 - cmgCall2
      numberValue4 = 20000
      if not (textValue4 < numberValue4) then
        break
      end
      textValue4 = SetRunSprintMultiplierForPlayer
      numberValue4 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      numberValue4 = numberValue4()
      gameTime = 1.4
      textValue4(numberValue4, gameTime)
      textValue4 = Citizen
      textValue4 = textValue4.Wait
      numberValue4 = 0
      textValue4(numberValue4)
    end
    textValue4 = SetRunSprintMultiplierForPlayer
    numberValue4 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    numberValue4 = numberValue4()
    gameTime = 1.0
    textValue4(numberValue4, gameTime)
    textValue4 = workValue6
    textValue4()
  elseif 17 == playerPed then
    cmgCall2 = notify
    textValue4 = "~y~That didn't taste of anything."
    -- Beginner: Show a notification to the player.
    cmgCall2(textValue4)
  elseif 18 == playerPed then
    cmgCall2 = notify
    textValue4 = "~r~**chokes**"
    cmgCall2(textValue4)
    cmgCall2 = SetPedToRagdoll
    textValue4 = arg1
    numberValue4 = 1000
    gameTime = 1000
    textValue5 = 0
    flag15 = false
    mathHelper = false
    flag2 = false
    cmgCall2(textValue4, numberValue4, gameTime, textValue5, flag15, mathHelper, flag2)
  elseif 19 == playerPed then
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.hideAllDisplays
    textValue4 = "candyeffect"
    cmgCall2(textValue4)
    cmgCall2 = notify
    textValue4 = "~g~A stray cat brings you a thrown away burger."
    -- Beginner: Show a notification to the player.
    cmgCall2(textValue4)
    cmgCall2 = workValue7
    textValue4 = 1462895032
    numberValue4 = 308173360
    cmgCall2(textValue4, numberValue4)
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.showAllDisplays
    textValue4 = "candyeffect"
    cmgCall2(textValue4)
  elseif 20 == playerPed then
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.hideAllDisplays
    textValue4 = "candyeffect"
    cmgCall2(textValue4)
    cmgCall2 = notify
    textValue4 = "~g~A stray dog brings you a ball."
    -- Beginner: Show a notification to the player.
    cmgCall2(textValue4)
    cmgCall2 = workValue7
    textValue4 = 882848737
    numberValue4 = -1720813907
    cmgCall2(textValue4, numberValue4)
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.showAllDisplays
    textValue4 = "candyeffect"
    cmgCall2(textValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "46214fe8ae".
eventRegistration(textValue, workValue2)