--[[
    LEVEL 1 BEGINNER GUIDE — Spectator
    =======================================

    File: cmg/prod/client/events/cl_spectator.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Spectator feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 22
      * Background threads: 0
      * Always-running loops: 1
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
local stateFlag, number5, workingValue12, number7, dataCollection, stateFlag6, workingValue16, workingValue17, workingValue18, workingValue19, workingValue2, workingValue3, workingValue4, workingValue5, cmgOperation2, text2, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, gameTime, stateFlag3, stateFlag4, workingValue11, cmgOperation4, text4, text5
stateFlag = false
number5 = 1
workingValue12 = nil
number7 = 50
dataCollection = {}
stateFlag6 = false

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue1) ===
function workingValue16(localValue1)
  local localValue2, playerPed, workingValue13, stateFlag5, stateFlag7
  workingValue12 = localValue1
  localValue2 = GetPlayerFromServerId
  playerPed = localValue1
  -- Beginner: result below is playerIndex.
  localValue2 = localValue2(playerPed)
  if -1 == localValue2 then
    return
  end
  playerPed = GetPlayerPed
  workingValue13 = localValue2
  -- Beginner: result below is playerPed.
  playerPed = playerPed(workingValue13)
  if 0 == playerPed then
    return
  end
  workingValue13 = NetworkSetInSpectatorMode
  stateFlag5 = true
  stateFlag7 = playerPed
  workingValue13(stateFlag5, stateFlag7)
  workingValue13 = SetMinimapInSpectatorMode
  stateFlag5 = true
  stateFlag7 = playerPed
  workingValue13(stateFlag5, stateFlag7)
end

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: none) ===
function workingValue17()
  local localValue1, localValue2, playerPed
  localValue1 = nil
  workingValue12 = localValue1
  localValue1 = NetworkSetInSpectatorMode
  localValue2 = false
  playerPed = nil
  localValue1(localValue2, playerPed)
  localValue1 = SetMinimapInSpectatorMode
  localValue2 = false
  playerPed = nil
  localValue1(localValue2, playerPed)
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1) ===
function workingValue18(localValue1)
  local localValue2
  workingValue12 = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: none) ===
function workingValue19()
  local localValue1, localValue2, playerPed, workingValue13, stateFlag5
  localValue1 = nil
  workingValue12 = localValue1
  localValue1 = NetworkSetInSpectatorMode
  localValue2 = false
  playerPed = 0
  localValue1(localValue2, playerPed)
  localValue1 = SetMinimapInSpectatorMode
  localValue2 = false
  playerPed = 0
  localValue1(localValue2, playerPed)
  localValue1 = false
  stateFlag6 = localValue1
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = SetEntityCollision
  playerPed = localValue1
  workingValue13 = true
  stateFlag5 = true
  localValue2(playerPed, workingValue13, stateFlag5)
  localValue2 = SetEntityVisible
  playerPed = localValue1
  workingValue13 = true
  stateFlag5 = false
  localValue2(playerPed, workingValue13, stateFlag5)
  localValue2 = FreezeEntityPosition
  playerPed = localValue1
  workingValue13 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue2(playerPed, workingValue13)
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, playerPed, workingValue13, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag2
  localValue2 = FreezeEntityPosition
  playerPed = localValue1
  workingValue13 = true
  localValue2(playerPed, workingValue13)
  localValue2 = SetEntityCollision
  playerPed = localValue1
  workingValue13 = false
  stateFlag5 = false
  localValue2(playerPed, workingValue13, stateFlag5)
  localValue2 = SetEntityVisible
  playerPed = localValue1
  workingValue13 = false
  stateFlag5 = false
  localValue2(playerPed, workingValue13, stateFlag5)
  localValue2 = SetEntityProofs
  playerPed = localValue1
  workingValue13 = true
  stateFlag5 = true
  stateFlag7 = true
  stateFlag8 = true
  stateFlag10 = true
  stateFlag12 = true
  stateFlag14 = true
  stateFlag2 = true
  localValue2(playerPed, workingValue13, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag2)
  localValue2 = SetEntityInvincible
  playerPed = localValue1
  workingValue13 = true
  localValue2(playerPed, workingValue13)
  localValue2 = SetPlayerInvincible
  playerPed = PlayerId
  -- Beginner: result below is localPlayerIndex.
  playerPed = playerPed()
  workingValue13 = true
  localValue2(playerPed, workingValue13)
  localValue2 = SetPedDiesInWater
  playerPed = localValue1
  workingValue13 = false
  localValue2(playerPed, workingValue13)
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local localValue2, playerPed, workingValue13, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag2
  localValue2 = SetEntityProofs
  playerPed = localValue1
  workingValue13 = false
  stateFlag5 = false
  stateFlag7 = false
  stateFlag8 = false
  stateFlag10 = false
  stateFlag12 = false
  stateFlag14 = false
  stateFlag2 = false
  localValue2(playerPed, workingValue13, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag2)
  localValue2 = SetEntityInvincible
  playerPed = localValue1
  workingValue13 = false
  localValue2(playerPed, workingValue13)
  localValue2 = SetPlayerInvincible
  playerPed = PlayerId
  -- Beginner: result below is localPlayerIndex.
  playerPed = playerPed()
  workingValue13 = false
  localValue2(playerPed, workingValue13)
  localValue2 = SetPedDiesInWater
  playerPed = localValue1
  workingValue13 = true
  localValue2(playerPed, workingValue13)
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, playerPed, workingValue13, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14
  localValue1 = nil
  localValue2 = CMG
  localValue2 = localValue2.inArena
  localValue2 = localValue2()
  if localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.getPlayersInWager
    localValue2 = localValue2()
    localValue1 = localValue2
  else
    localValue2 = CMG
    localValue2 = localValue2.isArenaSpectating
    localValue2 = localValue2()
    if localValue2 then
      localValue2 = CMG
      localValue2 = localValue2.getArenaSpectatePlayers
      localValue2 = localValue2()
      localValue1 = localValue2
    else
      localValue2 = CMG
      localValue2 = localValue2.getActiveEventPlayers
      localValue2 = localValue2()
      localValue1 = localValue2
    end
  end
  localValue2 = GetPlayerServerId
  playerPed = PlayerId
  playerPed, workingValue13, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14 = playerPed()
  -- Beginner: result below is serverId.
  localValue2 = localValue2(playerPed, workingValue13, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14)
  playerPed = {}
  workingValue13 = ipairs
  stateFlag5 = localValue1
  workingValue13, stateFlag5, stateFlag7, stateFlag8 = workingValue13(stateFlag5)
  for stateFlag10, stateFlag12 in workingValue13, stateFlag5, stateFlag7, stateFlag8 do
    stateFlag14 = stateFlag12.source
    if stateFlag14 ~= localValue2 then
      stateFlag14 = stateFlag12.alive
      if false ~= stateFlag14 then
        stateFlag14 = #playerPed
        stateFlag14 = stateFlag14 + 1
        playerPed[stateFlag14] = stateFlag12
      end
    end
  end
  return playerPed
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, playerPed, workingValue13, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12
  localValue1 = workingValue4
  localValue1 = localValue1()
  localValue2 = #localValue1
  if 0 == localValue2 then
    localValue2 = 0
    number5 = localValue2
    localValue2 = nil
    workingValue12 = localValue2
    localValue2 = workingValue17
    localValue2()
    localValue2 = false
    stateFlag6 = localValue2
    return
  end
  localValue2 = ipairs
  playerPed = localValue1
  localValue2, playerPed, workingValue13, stateFlag5 = localValue2(playerPed)
  for stateFlag7, stateFlag8 in localValue2, playerPed, workingValue13, stateFlag5 do
    stateFlag10 = stateFlag8.source
    stateFlag12 = workingValue12
    if stateFlag10 == stateFlag12 then
      number5 = stateFlag7
      return
    end
  end
  localValue2 = 1
  number5 = localValue2
  localValue2 = localValue1[1]
  localValue2 = localValue2.source
  workingValue12 = localValue2
  localValue2 = false
  stateFlag6 = localValue2
end
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, playerPed
  stateFlag = localValue1
  localValue2 = stateFlag
  if localValue2 then
    localValue2 = 0
    number5 = localValue2
    localValue2 = workingValue4
    localValue2 = localValue2()
    localValue2 = localValue2[1]
    if localValue2 then
      localValue2 = 1
      number5 = localValue2
      localValue2 = workingValue18
      playerPed = workingValue4
      playerPed = playerPed()
      playerPed = playerPed[1]
      playerPed = playerPed.source
      localValue2(playerPed)
    end
    localValue2 = workingValue2
    playerPed = CMG
    playerPed = playerPed.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    localValue2(playerPed)
  else
    localValue2 = workingValue3
    playerPed = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    localValue2(playerPed)
    localValue2 = workingValue19
    localValue2()
    localValue2 = ClearFocus
    localValue2()
  end
end
cmgOperation2.setEventSpectatorMode = text2
cmgOperation2 = RegisterNetEvent
text2 = "a963b1abb7"
-- Beginner: this function handles network event "a963b1abb7".

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, playerPed
  localValue2 = true
  stateFlag = localValue2
  localValue2 = workingValue18
  playerPed = localValue1
  localValue2(playerPed)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a963b1abb7".
cmgOperation2(text2, workingValue6)
cmgOperation2 = CMG
-- Beginner: this function handles network event "a963b1abb7".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2
  localValue1 = stateFlag
  return localValue1
end
cmgOperation2.isSpectatingEvent = text2

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, playerPed
  localValue2 = BeginTextCommandScaleformString
  playerPed = "STRING"
  localValue2(playerPed)
  localValue2 = AddTextComponentSubstringKeyboardDisplay
  playerPed = localValue1
  localValue2(playerPed)
  localValue2 = EndTextCommandScaleformString
  localValue2()
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, playerPed
  localValue2 = _ENV
  playerPed = "ScaleformMovieMethodAddParamPlayerNameString"
  localValue2 = localValue2[playerPed]
  playerPed = localValue1
  localValue2(playerPed)
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local playerPed, workingValue13, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12
  playerPed = RequestScaleformMovie
  workingValue13 = localValue1
  -- Beginner: result below is scaleformHandle.
  playerPed = playerPed(workingValue13)
  while true do
    workingValue13 = HasScaleformMovieLoaded
    stateFlag5 = playerPed
    workingValue13 = workingValue13(stateFlag5)
    if workingValue13 then
      break
    end
    workingValue13 = Wait
    stateFlag5 = 0
    workingValue13(stateFlag5)
  end
  workingValue13 = BeginScaleformMovieMethod
  stateFlag5 = playerPed
  stateFlag7 = "CLEAR_ALL"
  workingValue13(stateFlag5, stateFlag7)
  workingValue13 = EndScaleformMovieMethod
  workingValue13()
  workingValue13 = BeginScaleformMovieMethod
  stateFlag5 = playerPed
  stateFlag7 = "SET_DATA_SLOT"
  workingValue13(stateFlag5, stateFlag7)
  workingValue13 = ScaleformMovieMethodAddParamInt
  stateFlag5 = 0
  workingValue13(stateFlag5)
  workingValue13 = text2
  stateFlag5 = GetControlInstructionalButton
  stateFlag7 = 0
  stateFlag8 = 0
  stateFlag10 = true
  stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12 = stateFlag5(stateFlag7, stateFlag8, stateFlag10)
  workingValue13(stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12)
  workingValue13 = cmgOperation2
  stateFlag5 = "Zoom"
  workingValue13(stateFlag5)
  workingValue13 = EndScaleformMovieMethod
  workingValue13()
  workingValue13 = BeginScaleformMovieMethod
  stateFlag5 = playerPed
  stateFlag7 = "SET_DATA_SLOT"
  workingValue13(stateFlag5, stateFlag7)
  workingValue13 = ScaleformMovieMethodAddParamInt
  stateFlag5 = 1
  workingValue13(stateFlag5)
  workingValue13 = text2
  stateFlag5 = GetControlInstructionalButton
  stateFlag7 = 2
  stateFlag8 = 175
  stateFlag10 = true
  stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12 = stateFlag5(stateFlag7, stateFlag8, stateFlag10)
  workingValue13(stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12)
  workingValue13 = text2
  stateFlag5 = GetControlInstructionalButton
  stateFlag7 = 1
  stateFlag8 = 174
  stateFlag10 = true
  stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12 = stateFlag5(stateFlag7, stateFlag8, stateFlag10)
  workingValue13(stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12)
  workingValue13 = cmgOperation2
  stateFlag5 = "Switch player"
  workingValue13(stateFlag5)
  workingValue13 = EndScaleformMovieMethod
  workingValue13()
  workingValue13 = BeginScaleformMovieMethod
  stateFlag5 = playerPed
  stateFlag7 = "SET_DATA_SLOT"
  workingValue13(stateFlag5, stateFlag7)
  workingValue13 = ScaleformMovieMethodAddParamInt
  stateFlag5 = 2
  workingValue13(stateFlag5)
  workingValue13 = cmgOperation2
  stateFlag5 = "["
  stateFlag7 = number5
  stateFlag8 = "/"
  stateFlag10 = #localValue2
  stateFlag12 = "]"
  stateFlag5 = stateFlag5 .. stateFlag7 .. stateFlag8 .. stateFlag10 .. stateFlag12
  workingValue13(stateFlag5)
  workingValue13 = EndScaleformMovieMethod
  workingValue13()
  workingValue13 = BeginScaleformMovieMethod
  stateFlag5 = playerPed
  stateFlag7 = "DRAW_INSTRUCTIONAL_BUTTONS"
  workingValue13(stateFlag5, stateFlag7)
  workingValue13 = EndScaleformMovieMethod
  workingValue13()
  workingValue13 = BeginScaleformMovieMethod
  stateFlag5 = playerPed
  stateFlag7 = "SET_BACKGROUND_COLOUR"
  workingValue13(stateFlag5, stateFlag7)
  workingValue13 = ScaleformMovieMethodAddParamInt
  stateFlag5 = 0
  workingValue13(stateFlag5)
  workingValue13 = ScaleformMovieMethodAddParamInt
  stateFlag5 = 0
  workingValue13(stateFlag5)
  workingValue13 = ScaleformMovieMethodAddParamInt
  stateFlag5 = 0
  workingValue13(stateFlag5)
  workingValue13 = ScaleformMovieMethodAddParamInt
  stateFlag5 = 80
  workingValue13(stateFlag5)
  workingValue13 = EndScaleformMovieMethod
  workingValue13()
  return playerPed
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, localValue2, playerPed, workingValue13, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag2, number, number2, cmgOperation, text, cmgOperation3, text3, number3, number4
  localValue1 = 0.3
  localValue2 = 0.075
  playerPed = 0.0
  workingValue13 = 0.7
  stateFlag5 = GetSafeZoneSize
  stateFlag5 = stateFlag5()
  stateFlag7 = stateFlag5 - playerPed
  stateFlag8 = stateFlag5 - workingValue13
  stateFlag10 = DrawSprite
  stateFlag12 = "timerbars"
  stateFlag14 = "all_black_bg"
  stateFlag2 = stateFlag7
  number = stateFlag8
  number2 = localValue1
  cmgOperation = localValue2
  text = 0
  cmgOperation3 = 0
  text3 = 0
  number3 = 0
  number4 = 200
  stateFlag10(stateFlag12, stateFlag14, stateFlag2, number, number2, cmgOperation, text, cmgOperation3, text3, number3, number4)
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, playerPed
  localValue1 = workingValue4
  localValue1 = localValue1()
  localValue2 = number5
  localValue2 = localValue2 + 1
  localValue2 = localValue1[localValue2]
  if localValue2 then
    localValue2 = number5
    localValue2 = localValue2 + 1
    number5 = localValue2
    localValue2 = number5
    localValue2 = localValue1[localValue2]
    if localValue2 then
      localValue2 = number5
      localValue2 = localValue1[localValue2]
      localValue2 = localValue2.source
      workingValue12 = localValue2
      localValue2 = workingValue16
      playerPed = workingValue12
      localValue2(playerPed)
    end
  else
    localValue2 = localValue1[1]
    if localValue2 then
      localValue2 = 1
      number5 = localValue2
      localValue2 = number5
      localValue2 = localValue1[localValue2]
      localValue2 = localValue2.source
      workingValue12 = localValue2
      localValue2 = workingValue16
      playerPed = workingValue12
      localValue2(playerPed)
    else
      localValue2 = 0
      number5 = localValue2
      localValue2 = workingValue17
      localValue2()
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, playerPed
  localValue1 = workingValue4
  localValue1 = localValue1()
  localValue2 = number5
  localValue2 = localValue2 - 1
  localValue2 = localValue1[localValue2]
  if localValue2 then
    localValue2 = number5
    localValue2 = localValue2 - 1
    number5 = localValue2
    localValue2 = number5
    localValue2 = localValue1[localValue2]
    if localValue2 then
      localValue2 = number5
      localValue2 = localValue1[localValue2]
      localValue2 = localValue2.source
      workingValue12 = localValue2
      localValue2 = workingValue16
      playerPed = workingValue12
      localValue2(playerPed)
    end
  else
    localValue2 = #localValue1
    number5 = localValue2
    localValue2 = number5
    localValue2 = localValue1[localValue2]
    if localValue2 then
      localValue2 = number5
      localValue2 = localValue1[localValue2]
      localValue2 = localValue2.source
      workingValue12 = localValue2
      localValue2 = workingValue16
      playerPed = workingValue12
      localValue2(playerPed)
    end
  end
end
workingValue10 = RequestStreamedTextureDict
gameTime = "mphud"
stateFlag3 = false
workingValue10(gameTime, stateFlag3)

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
function workingValue10()
  local localValue1, localValue2, playerPed, workingValue13, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag2, number, number2, cmgOperation, text, cmgOperation3, text3
  localValue1 = stateFlag
  if localValue1 then
    localValue1 = workingValue5
    localValue1()
    localValue1 = workingValue4
    localValue1 = localValue1()
    localValue2 = workingValue6
    playerPed = "instructional_buttons"
    workingValue13 = localValue1
    localValue2 = localValue2(playerPed, workingValue13)
    playerPed = DrawScaleformMovieFullscreen
    workingValue13 = localValue2
    stateFlag5 = 0
    stateFlag7 = 0
    stateFlag8 = 0
    stateFlag10 = 0
    stateFlag12 = 0
    playerPed(workingValue13, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12)
    playerPed = workingValue7
    playerPed()
    playerPed = DrawAdvancedTextNoOutline
    workingValue13 = 1.054
    stateFlag5 = 0.247
    stateFlag7 = 0.005
    stateFlag8 = 0.0028
    stateFlag10 = 0.45
    stateFlag12 = "SPECTATING"
    stateFlag14 = 255
    stateFlag2 = 255
    number = 255
    number2 = 255
    cmgOperation = CMG
    cmgOperation = cmgOperation.getFontId
    text = "Akrobat-Regular"
    cmgOperation = cmgOperation(text)
    text = 0
    playerPed(workingValue13, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag2, number, number2, cmgOperation, text)
    playerPed = "N/A"
    workingValue13 = number5
    workingValue13 = localValue1[workingValue13]
    if workingValue13 then
      workingValue13 = number5
      workingValue13 = localValue1[workingValue13]
      workingValue13 = workingValue13.name
      if workingValue13 then
        workingValue13 = number5
        workingValue13 = localValue1[workingValue13]
        playerPed = workingValue13.name
      end
      workingValue13 = number5
      workingValue13 = localValue1[workingValue13]
      workingValue13 = workingValue13.source
      workingValue12 = workingValue13
    end
    workingValue13 = string
    workingValue13 = workingValue13.gsub
    stateFlag5 = playerPed
    stateFlag7 = "[^%a%d%p%s]"
    stateFlag8 = ""
    workingValue13 = workingValue13(stateFlag5, stateFlag7, stateFlag8)
    stateFlag5 = DrawAdvancedTextNoOutline
    stateFlag7 = 1.025
    stateFlag8 = 0.27
    stateFlag10 = 0.005
    stateFlag12 = 0.0028
    stateFlag14 = 0.71
    stateFlag2 = workingValue13
    number = 255
    number2 = 255
    cmgOperation = 255
    text = 255
    cmgOperation3 = CMG
    cmgOperation3 = cmgOperation3.getFontId
    text3 = "Akrobat-Regular"
    cmgOperation3 = cmgOperation3(text3)
    text3 = 0
    stateFlag5(stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag2, number, number2, cmgOperation, text, cmgOperation3, text3)
    stateFlag5 = SetScriptGfxDrawOrder
    stateFlag7 = 7
    stateFlag5(stateFlag7)
    stateFlag5 = DrawRect
    stateFlag7 = 0.999
    stateFlag8 = 0.27
    stateFlag10 = -0.003
    stateFlag12 = 0.075
    stateFlag14 = 198
    stateFlag2 = 167
    number = 73
    number2 = 255
    stateFlag5(stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag2, number, number2)
    stateFlag5 = DrawSprite
    stateFlag7 = "mphud"
    stateFlag8 = "spectating"
    stateFlag10 = 0.915
    stateFlag12 = 0.249
    stateFlag14 = 0.018
    stateFlag2 = 0.036
    number = 0.0
    number2 = 255
    cmgOperation = 255
    text = 255
    cmgOperation3 = 255
    stateFlag5(stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag2, number, number2, cmgOperation, text, cmgOperation3)
    stateFlag5 = IsControlJustPressed
    stateFlag7 = 0
    stateFlag8 = 174
    stateFlag5 = stateFlag5(stateFlag7, stateFlag8)
    if stateFlag5 then
      stateFlag5 = workingValue9
      stateFlag5()
    else
      stateFlag5 = IsControlJustPressed
      stateFlag7 = 0
      stateFlag8 = 175
      stateFlag5 = stateFlag5(stateFlag7, stateFlag8)
      if stateFlag5 then
        stateFlag5 = workingValue8
        stateFlag5()
      end
    end
    stateFlag5 = number5
    if 1 ~= stateFlag5 then
      stateFlag5 = number5
      stateFlag5 = localValue1[stateFlag5]
      if not stateFlag5 then
        stateFlag5 = workingValue9
        stateFlag5()
      end
    end
    stateFlag5 = CMG
    stateFlag5 = stateFlag5.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    stateFlag5 = stateFlag5()
    stateFlag7 = workingValue2
    stateFlag8 = stateFlag5
    stateFlag7(stateFlag8)
    stateFlag7 = DisablePlayerFiring
    stateFlag8 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    stateFlag8 = stateFlag8()
    stateFlag10 = true
    stateFlag7(stateFlag8, stateFlag10)
    stateFlag7 = SetCurrentPedWeapon
    stateFlag8 = stateFlag5
    stateFlag10 = -1569615261
    stateFlag12 = true
    stateFlag7(stateFlag8, stateFlag10, stateFlag12)
    stateFlag7 = DisableControlAction
    stateFlag8 = 0
    stateFlag10 = 24
    stateFlag12 = true
    stateFlag7(stateFlag8, stateFlag10, stateFlag12)
    stateFlag7 = DisableControlAction
    stateFlag8 = 0
    stateFlag10 = 25
    stateFlag12 = true
    stateFlag7(stateFlag8, stateFlag10, stateFlag12)
    stateFlag7 = DisableControlAction
    stateFlag8 = 0
    stateFlag10 = 37
    stateFlag12 = true
    stateFlag7(stateFlag8, stateFlag10, stateFlag12)
    stateFlag7 = DisableControlAction
    stateFlag8 = 0
    stateFlag10 = 44
    stateFlag12 = true
    stateFlag7(stateFlag8, stateFlag10, stateFlag12)
    stateFlag7 = DisableControlAction
    stateFlag8 = 0
    stateFlag10 = 47
    stateFlag12 = true
    stateFlag7(stateFlag8, stateFlag10, stateFlag12)
    stateFlag7 = DisableControlAction
    stateFlag8 = 0
    stateFlag10 = 58
    stateFlag12 = true
    stateFlag7(stateFlag8, stateFlag10, stateFlag12)
    stateFlag7 = DisableControlAction
    stateFlag8 = 0
    stateFlag10 = 140
    stateFlag12 = true
    stateFlag7(stateFlag8, stateFlag10, stateFlag12)
    stateFlag7 = DisableControlAction
    stateFlag8 = 0
    stateFlag10 = 141
    stateFlag12 = true
    stateFlag7(stateFlag8, stateFlag10, stateFlag12)
    stateFlag7 = DisableControlAction
    stateFlag8 = 0
    stateFlag10 = 142
    stateFlag12 = true
    stateFlag7(stateFlag8, stateFlag10, stateFlag12)
    stateFlag7 = DisableControlAction
    stateFlag8 = 0
    stateFlag10 = 257
    stateFlag12 = true
    stateFlag7(stateFlag8, stateFlag10, stateFlag12)
    stateFlag7 = DisableControlAction
    stateFlag8 = 0
    stateFlag10 = 263
    stateFlag12 = true
    stateFlag7(stateFlag8, stateFlag10, stateFlag12)
  end
end
gameTime = CMG
gameTime = gameTime.createThreadOnTick
stateFlag3 = workingValue10
stateFlag4 = "Event Spectator UI"
-- Beginner: Run a helper every game frame while this script is active.
gameTime(stateFlag3, stateFlag4)
gameTime = GetGameTimer
-- Beginner: result below is gameTimeMs.
gameTime = gameTime()
stateFlag3 = 0
stateFlag4 = false

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2, playerPed, workingValue13, stateFlag5, stateFlag7, stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag2, number, number2, cmgOperation, text, cmgOperation3, text3
  localValue1 = stateFlag
  if localValue1 then
    localValue1 = workingValue12
    if localValue1 then
      localValue1 = workingValue5
      localValue1()
      localValue1 = workingValue12
      if not localValue1 then
        return
      end
      localValue1 = DisablePlayerFiring
      localValue2 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      localValue2 = localValue2()
      playerPed = true
      localValue1(localValue2, playerPed)
      localValue1 = DisableControlAction
      localValue2 = 0
      playerPed = 24
      workingValue13 = true
      localValue1(localValue2, playerPed, workingValue13)
      localValue1 = DisableControlAction
      localValue2 = 0
      playerPed = 25
      workingValue13 = true
      localValue1(localValue2, playerPed, workingValue13)
      localValue1 = DisableControlAction
      localValue2 = 0
      playerPed = 37
      workingValue13 = true
      localValue1(localValue2, playerPed, workingValue13)
      localValue1 = DisableControlAction
      localValue2 = 0
      playerPed = 44
      workingValue13 = true
      localValue1(localValue2, playerPed, workingValue13)
      localValue1 = DisableControlAction
      localValue2 = 0
      playerPed = 47
      workingValue13 = true
      localValue1(localValue2, playerPed, workingValue13)
      localValue1 = DisableControlAction
      localValue2 = 0
      playerPed = 58
      workingValue13 = true
      localValue1(localValue2, playerPed, workingValue13)
      localValue1 = DisableControlAction
      localValue2 = 0
      playerPed = 140
      workingValue13 = true
      localValue1(localValue2, playerPed, workingValue13)
      localValue1 = DisableControlAction
      localValue2 = 0
      playerPed = 141
      workingValue13 = true
      localValue1(localValue2, playerPed, workingValue13)
      localValue1 = DisableControlAction
      localValue2 = 0
      playerPed = 142
      workingValue13 = true
      localValue1(localValue2, playerPed, workingValue13)
      localValue1 = DisableControlAction
      localValue2 = 0
      playerPed = 257
      workingValue13 = true
      localValue1(localValue2, playerPed, workingValue13)
      localValue1 = DisableControlAction
      localValue2 = 0
      playerPed = 263
      workingValue13 = true
      localValue1(localValue2, playerPed, workingValue13)
      localValue1 = CMG
      localValue1 = localValue1.isArenaSpectating
      localValue1 = localValue1()
      if localValue1 then
      else
        localValue1 = drawNativeNotification
        localValue2 = "To stop spectating and return to the main world run /leaveevent."
        -- Beginner: Show a GTA-style notification/help prompt.
        localValue1(localValue2)
      end
      localValue1 = GetPlayerFromServerId
      localValue2 = workingValue12
      -- Beginner: result below is playerIndex.
      localValue1 = localValue1(localValue2)
      if -1 ~= localValue1 then
        localValue2 = CMG
        localValue2 = localValue2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        localValue2 = localValue2()
        playerPed = workingValue2
        workingValue13 = localValue2
        playerPed(workingValue13)
        playerPed = GetPlayerPed
        workingValue13 = localValue1
        -- Beginner: result below is playerPed.
        playerPed = playerPed(workingValue13)
        workingValue13 = GetEntityCoords
        stateFlag5 = playerPed
        -- Beginner: result below is entityCoords.
        workingValue13 = workingValue13(stateFlag5)
        stateFlag5 = CMG
        stateFlag5 = stateFlag5.isArenaSpectating
        stateFlag5 = stateFlag5()
        if stateFlag5 then
          stateFlag5 = CMG
          stateFlag5 = stateFlag5.getArenaSpectatePedOffsetZ
          stateFlag5 = stateFlag5()
          if stateFlag5 then
            goto continueAtStep110
          end
        end
        stateFlag5 = number7
        ::continueAtStep110::
        stateFlag7 = SetFocusPosAndVel
        stateFlag8 = workingValue13.x
        stateFlag10 = workingValue13.y
        stateFlag12 = workingValue13.z
        stateFlag14 = 0.0
        stateFlag2 = 0.0
        number = 0.0
        stateFlag7(stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag2, number)
        stateFlag7 = SetEntityCoordsNoOffset
        stateFlag8 = localValue2
        stateFlag10 = workingValue13.x
        stateFlag12 = workingValue13.y
        stateFlag14 = workingValue13.z
        stateFlag14 = stateFlag14 - stateFlag5
        stateFlag2 = true
        number = false
        number2 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        stateFlag7(stateFlag8, stateFlag10, stateFlag12, stateFlag14, stateFlag2, number, number2)
        stateFlag7 = stateFlag6
        if not stateFlag7 then
          stateFlag7 = workingValue16
          stateFlag8 = workingValue12
          stateFlag7(stateFlag8)
          stateFlag7 = true
          stateFlag6 = stateFlag7
        end
        stateFlag7 = GetActivePlayers
        stateFlag7 = stateFlag7()
        stateFlag8 = pairs
        stateFlag10 = stateFlag7
        stateFlag8, stateFlag10, stateFlag12, stateFlag14 = stateFlag8(stateFlag10)
        for stateFlag2, number in stateFlag8, stateFlag10, stateFlag12, stateFlag14 do
          number2 = GetPlayerPed
          cmgOperation = number
          -- Beginner: result below is playerPed.
          number2 = number2(cmgOperation)
          cmgOperation = SetEntityNoCollisionEntity
          text = localValue2
          cmgOperation3 = number2
          text3 = true
          cmgOperation(text, cmgOperation3, text3)
        end
      else
        localValue2 = false
        stateFlag6 = localValue2
        localValue2 = CMG
        localValue2 = localValue2.isArenaSpectating
        localValue2 = localValue2()
        if not localValue2 then
          playerPed = workingValue12
          localValue2 = dataCollection
          localValue2 = localValue2[playerPed]
          if localValue2 then
            localValue2 = stateFlag4
            if not localValue2 then
              localValue2 = true
              stateFlag4 = localValue2
              localValue2 = Citizen
              localValue2 = localValue2.CreateThread

              -- === HELPER FUNCTION: playerPed() ===
              function playerPed()
                local workingValue, number6, playerPed2, workingValue14, workingValue15, number8, stateFlag9, stateFlag11, stateFlag13, stateFlag15
                workingValue = DoScreenFadeOut
                number6 = 250
                workingValue(number6)
                number6 = workingValue12
                workingValue = dataCollection
                workingValue = workingValue[number6]
                number6 = SetFocusPosAndVel
                playerPed2 = workingValue.x
                workingValue14 = workingValue.y
                workingValue15 = workingValue.z
                number8 = 0.0
                stateFlag9 = 0.0
                stateFlag11 = 0.0
                number6(playerPed2, workingValue14, workingValue15, number8, stateFlag9, stateFlag11)
                number6 = SetEntityCoords
                playerPed2 = PlayerPedId
                -- Beginner: result below is localPlayerPed.
                playerPed2 = playerPed2()
                workingValue14 = workingValue.x
                workingValue15 = workingValue.y
                number8 = workingValue.z
                stateFlag9 = number7
                number8 = number8 - stateFlag9
                stateFlag9 = true
                stateFlag11 = false
                stateFlag13 = false
                stateFlag15 = false
                -- Beginner: Move/teleport an entity to new coordinates.
                number6(playerPed2, workingValue14, workingValue15, number8, stateFlag9, stateFlag11, stateFlag13, stateFlag15)
                number6 = Wait
                playerPed2 = 250
                number6(playerPed2)
                number6 = DoScreenFadeIn
                playerPed2 = 250
                number6(playerPed2)
                number6 = false
                stateFlag4 = number6
              end
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              localValue2(playerPed)
            end
          end
        end
        localValue2 = CMG
        localValue2 = localValue2.isArenaSpectating
        localValue2 = localValue2()
        if not localValue2 then
          localValue2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          localValue2 = localValue2()
          playerPed = gameTime
          localValue2 = localValue2 - playerPed
          playerPed = 5000
          if localValue2 > playerPed then
            localValue2 = TriggerServerEvent
            playerPed = "b7ce7ba79c"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b7ce7ba79c".
            localValue2(playerPed)
            localValue2 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            localValue2 = localValue2()
            gameTime = localValue2
          end
          localValue2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          localValue2 = localValue2()
          playerPed = stateFlag3
          playerPed = localValue2 - playerPed
          workingValue13 = 5000
          if playerPed >= workingValue13 then
            stateFlag3 = localValue2
            playerPed = notify
            workingValue13 = "~r~Couldn't spectate, person not in your zone"
            -- Beginner: Show a notification to the player.
            playerPed(workingValue13)
          end
        end
      end
    end
  end
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createThreadOnTick
text4 = workingValue11
text5 = "Event Spectator Controls"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation4(text4, text5)
cmgOperation4 = RegisterNetEvent
text4 = "87a29fa0b5"
-- Beginner: this function handles network event "87a29fa0b5".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2
  dataCollection = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "87a29fa0b5".
cmgOperation4(text4, text5)
cmgOperation4 = RegisterNetEvent
text4 = "e0d0f4d443"
-- Beginner: this function handles network event "e0d0f4d443".

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, playerPed, workingValue13, stateFlag5, stateFlag7
  localValue1 = CMG
  localValue1 = localValue1.markArenaPlayerDead
  localValue1()
  localValue1 = TriggerEvent
  localValue2 = "193ee4e15e"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "193ee4e15e".
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue1 = localValue1()
  if 0 ~= localValue1 then
    localValue2 = DeleteEntity
    playerPed = localValue1
    -- Beginner: Delete a GTA entity.
    localValue2(playerPed)
  end
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  playerPed = RemoveAllPedWeapons
  workingValue13 = localValue2
  stateFlag5 = false
  playerPed(workingValue13, stateFlag5)
  playerPed = SetCurrentPedWeapon
  workingValue13 = localValue2
  stateFlag5 = -1569615261
  stateFlag7 = true
  playerPed(workingValue13, stateFlag5, stateFlag7)
  playerPed = CMG
  playerPed = playerPed.setEventSpectatorMode
  workingValue13 = true
  playerPed(workingValue13)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e0d0f4d443".
cmgOperation4(text4, text5)
