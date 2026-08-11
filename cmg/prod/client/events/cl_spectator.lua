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
local flag, numberValue5, workValue12, numberValue7, dataTable, flag6, workValue16, workValue17, workValue18, workValue19, workValue2, workValue3, workValue4, workValue5, cmgCall2, textValue2, workValue6, workValue7, workValue8, workValue9, workValue10, gameTime, flag3, flag4, workValue11, cmgCall4, textValue4, textValue5
flag = false
numberValue5 = 1
workValue12 = nil
numberValue7 = 50
dataTable = {}
flag6 = false

-- === HELPER FUNCTION (decompiler name: workValue16; parameters: arg1) ===
function workValue16(arg1)
  local arg2, playerPed, workValue13, flag5, flag7
  workValue12 = arg1
  arg2 = GetPlayerFromServerId
  playerPed = arg1
  -- Beginner: result below is playerIndex.
  arg2 = arg2(playerPed)
  if -1 == arg2 then
    return
  end
  playerPed = GetPlayerPed
  workValue13 = arg2
  -- Beginner: result below is playerPed.
  playerPed = playerPed(workValue13)
  if 0 == playerPed then
    return
  end
  workValue13 = NetworkSetInSpectatorMode
  flag5 = true
  flag7 = playerPed
  workValue13(flag5, flag7)
  workValue13 = SetMinimapInSpectatorMode
  flag5 = true
  flag7 = playerPed
  workValue13(flag5, flag7)
end

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: none) ===
function workValue17()
  local arg1, arg2, playerPed
  arg1 = nil
  workValue12 = arg1
  arg1 = NetworkSetInSpectatorMode
  arg2 = false
  playerPed = nil
  arg1(arg2, playerPed)
  arg1 = SetMinimapInSpectatorMode
  arg2 = false
  playerPed = nil
  arg1(arg2, playerPed)
end

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: arg1) ===
function workValue18(arg1)
  local arg2
  workValue12 = arg1
end

-- === HELPER FUNCTION (decompiler name: workValue19; parameters: none) ===
function workValue19()
  local arg1, arg2, playerPed, workValue13, flag5
  arg1 = nil
  workValue12 = arg1
  arg1 = NetworkSetInSpectatorMode
  arg2 = false
  playerPed = 0
  arg1(arg2, playerPed)
  arg1 = SetMinimapInSpectatorMode
  arg2 = false
  playerPed = 0
  arg1(arg2, playerPed)
  arg1 = false
  flag6 = arg1
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = SetEntityCollision
  playerPed = arg1
  workValue13 = true
  flag5 = true
  arg2(playerPed, workValue13, flag5)
  arg2 = SetEntityVisible
  playerPed = arg1
  workValue13 = true
  flag5 = false
  arg2(playerPed, workValue13, flag5)
  arg2 = FreezeEntityPosition
  playerPed = arg1
  workValue13 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(playerPed, workValue13)
end

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1) ===
function workValue2(arg1)
  local arg2, playerPed, workValue13, flag5, flag7, flag8, flag10, flag12, flag14, flag2
  arg2 = FreezeEntityPosition
  playerPed = arg1
  workValue13 = true
  arg2(playerPed, workValue13)
  arg2 = SetEntityCollision
  playerPed = arg1
  workValue13 = false
  flag5 = false
  arg2(playerPed, workValue13, flag5)
  arg2 = SetEntityVisible
  playerPed = arg1
  workValue13 = false
  flag5 = false
  arg2(playerPed, workValue13, flag5)
  arg2 = SetEntityProofs
  playerPed = arg1
  workValue13 = true
  flag5 = true
  flag7 = true
  flag8 = true
  flag10 = true
  flag12 = true
  flag14 = true
  flag2 = true
  arg2(playerPed, workValue13, flag5, flag7, flag8, flag10, flag12, flag14, flag2)
  arg2 = SetEntityInvincible
  playerPed = arg1
  workValue13 = true
  arg2(playerPed, workValue13)
  arg2 = SetPlayerInvincible
  playerPed = PlayerId
  -- Beginner: result below is localPlayerIndex.
  playerPed = playerPed()
  workValue13 = true
  arg2(playerPed, workValue13)
  arg2 = SetPedDiesInWater
  playerPed = arg1
  workValue13 = false
  arg2(playerPed, workValue13)
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
  local arg2, playerPed, workValue13, flag5, flag7, flag8, flag10, flag12, flag14, flag2
  arg2 = SetEntityProofs
  playerPed = arg1
  workValue13 = false
  flag5 = false
  flag7 = false
  flag8 = false
  flag10 = false
  flag12 = false
  flag14 = false
  flag2 = false
  arg2(playerPed, workValue13, flag5, flag7, flag8, flag10, flag12, flag14, flag2)
  arg2 = SetEntityInvincible
  playerPed = arg1
  workValue13 = false
  arg2(playerPed, workValue13)
  arg2 = SetPlayerInvincible
  playerPed = PlayerId
  -- Beginner: result below is localPlayerIndex.
  playerPed = playerPed()
  workValue13 = false
  arg2(playerPed, workValue13)
  arg2 = SetPedDiesInWater
  playerPed = arg1
  workValue13 = true
  arg2(playerPed, workValue13)
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
function workValue4()
  local arg1, arg2, playerPed, workValue13, flag5, flag7, flag8, flag10, flag12, flag14
  arg1 = nil
  arg2 = CMG
  arg2 = arg2.inArena
  arg2 = arg2()
  if arg2 then
    arg2 = CMG
    arg2 = arg2.getPlayersInWager
    arg2 = arg2()
    arg1 = arg2
  else
    arg2 = CMG
    arg2 = arg2.isArenaSpectating
    arg2 = arg2()
    if arg2 then
      arg2 = CMG
      arg2 = arg2.getArenaSpectatePlayers
      arg2 = arg2()
      arg1 = arg2
    else
      arg2 = CMG
      arg2 = arg2.getActiveEventPlayers
      arg2 = arg2()
      arg1 = arg2
    end
  end
  arg2 = GetPlayerServerId
  playerPed = PlayerId
  playerPed, workValue13, flag5, flag7, flag8, flag10, flag12, flag14 = playerPed()
  -- Beginner: result below is serverId.
  arg2 = arg2(playerPed, workValue13, flag5, flag7, flag8, flag10, flag12, flag14)
  playerPed = {}
  workValue13 = ipairs
  flag5 = arg1
  workValue13, flag5, flag7, flag8 = workValue13(flag5)
  for flag10, flag12 in workValue13, flag5, flag7, flag8 do
    flag14 = flag12.source
    if flag14 ~= arg2 then
      flag14 = flag12.alive
      if false ~= flag14 then
        flag14 = #playerPed
        flag14 = flag14 + 1
        playerPed[flag14] = flag12
      end
    end
  end
  return playerPed
end

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, arg2, playerPed, workValue13, flag5, flag7, flag8, flag10, flag12
  arg1 = workValue4
  arg1 = arg1()
  arg2 = #arg1
  if 0 == arg2 then
    arg2 = 0
    numberValue5 = arg2
    arg2 = nil
    workValue12 = arg2
    arg2 = workValue17
    arg2()
    arg2 = false
    flag6 = arg2
    return
  end
  arg2 = ipairs
  playerPed = arg1
  arg2, playerPed, workValue13, flag5 = arg2(playerPed)
  for flag7, flag8 in arg2, playerPed, workValue13, flag5 do
    flag10 = flag8.source
    flag12 = workValue12
    if flag10 == flag12 then
      numberValue5 = flag7
      return
    end
  end
  arg2 = 1
  numberValue5 = arg2
  arg2 = arg1[1]
  arg2 = arg2.source
  workValue12 = arg2
  arg2 = false
  flag6 = arg2
end
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, playerPed
  flag = arg1
  arg2 = flag
  if arg2 then
    arg2 = 0
    numberValue5 = arg2
    arg2 = workValue4
    arg2 = arg2()
    arg2 = arg2[1]
    if arg2 then
      arg2 = 1
      numberValue5 = arg2
      arg2 = workValue18
      playerPed = workValue4
      playerPed = playerPed()
      playerPed = playerPed[1]
      playerPed = playerPed.source
      arg2(playerPed)
    end
    arg2 = workValue2
    playerPed = CMG
    playerPed = playerPed.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    arg2(playerPed)
  else
    arg2 = workValue3
    playerPed = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    arg2(playerPed)
    arg2 = workValue19
    arg2()
    arg2 = ClearFocus
    arg2()
  end
end
cmgCall2.setEventSpectatorMode = textValue2
cmgCall2 = RegisterNetEvent
textValue2 = "a963b1abb7"
-- Beginner: this function handles network event "a963b1abb7".

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, playerPed
  arg2 = true
  flag = arg2
  arg2 = workValue18
  playerPed = arg1
  arg2(playerPed)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a963b1abb7".
cmgCall2(textValue2, workValue6)
cmgCall2 = CMG
-- Beginner: this function handles network event "a963b1abb7".

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2
  arg1 = flag
  return arg1
end
cmgCall2.isSpectatingEvent = textValue2

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, playerPed
  arg2 = BeginTextCommandScaleformString
  playerPed = "STRING"
  arg2(playerPed)
  arg2 = AddTextComponentSubstringKeyboardDisplay
  playerPed = arg1
  arg2(playerPed)
  arg2 = EndTextCommandScaleformString
  arg2()
end

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, playerPed
  arg2 = _ENV
  playerPed = "ScaleformMovieMethodAddParamPlayerNameString"
  arg2 = arg2[playerPed]
  playerPed = arg1
  arg2(playerPed)
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local playerPed, workValue13, flag5, flag7, flag8, flag10, flag12
  playerPed = RequestScaleformMovie
  workValue13 = arg1
  -- Beginner: result below is scaleformHandle.
  playerPed = playerPed(workValue13)
  while true do
    workValue13 = HasScaleformMovieLoaded
    flag5 = playerPed
    workValue13 = workValue13(flag5)
    if workValue13 then
      break
    end
    workValue13 = Wait
    flag5 = 0
    workValue13(flag5)
  end
  workValue13 = BeginScaleformMovieMethod
  flag5 = playerPed
  flag7 = "CLEAR_ALL"
  workValue13(flag5, flag7)
  workValue13 = EndScaleformMovieMethod
  workValue13()
  workValue13 = BeginScaleformMovieMethod
  flag5 = playerPed
  flag7 = "SET_DATA_SLOT"
  workValue13(flag5, flag7)
  workValue13 = ScaleformMovieMethodAddParamInt
  flag5 = 0
  workValue13(flag5)
  workValue13 = textValue2
  flag5 = GetControlInstructionalButton
  flag7 = 0
  flag8 = 0
  flag10 = true
  flag5, flag7, flag8, flag10, flag12 = flag5(flag7, flag8, flag10)
  workValue13(flag5, flag7, flag8, flag10, flag12)
  workValue13 = cmgCall2
  flag5 = "Zoom"
  workValue13(flag5)
  workValue13 = EndScaleformMovieMethod
  workValue13()
  workValue13 = BeginScaleformMovieMethod
  flag5 = playerPed
  flag7 = "SET_DATA_SLOT"
  workValue13(flag5, flag7)
  workValue13 = ScaleformMovieMethodAddParamInt
  flag5 = 1
  workValue13(flag5)
  workValue13 = textValue2
  flag5 = GetControlInstructionalButton
  flag7 = 2
  flag8 = 175
  flag10 = true
  flag5, flag7, flag8, flag10, flag12 = flag5(flag7, flag8, flag10)
  workValue13(flag5, flag7, flag8, flag10, flag12)
  workValue13 = textValue2
  flag5 = GetControlInstructionalButton
  flag7 = 1
  flag8 = 174
  flag10 = true
  flag5, flag7, flag8, flag10, flag12 = flag5(flag7, flag8, flag10)
  workValue13(flag5, flag7, flag8, flag10, flag12)
  workValue13 = cmgCall2
  flag5 = "Switch player"
  workValue13(flag5)
  workValue13 = EndScaleformMovieMethod
  workValue13()
  workValue13 = BeginScaleformMovieMethod
  flag5 = playerPed
  flag7 = "SET_DATA_SLOT"
  workValue13(flag5, flag7)
  workValue13 = ScaleformMovieMethodAddParamInt
  flag5 = 2
  workValue13(flag5)
  workValue13 = cmgCall2
  flag5 = "["
  flag7 = numberValue5
  flag8 = "/"
  flag10 = #arg2
  flag12 = "]"
  flag5 = flag5 .. flag7 .. flag8 .. flag10 .. flag12
  workValue13(flag5)
  workValue13 = EndScaleformMovieMethod
  workValue13()
  workValue13 = BeginScaleformMovieMethod
  flag5 = playerPed
  flag7 = "DRAW_INSTRUCTIONAL_BUTTONS"
  workValue13(flag5, flag7)
  workValue13 = EndScaleformMovieMethod
  workValue13()
  workValue13 = BeginScaleformMovieMethod
  flag5 = playerPed
  flag7 = "SET_BACKGROUND_COLOUR"
  workValue13(flag5, flag7)
  workValue13 = ScaleformMovieMethodAddParamInt
  flag5 = 0
  workValue13(flag5)
  workValue13 = ScaleformMovieMethodAddParamInt
  flag5 = 0
  workValue13(flag5)
  workValue13 = ScaleformMovieMethodAddParamInt
  flag5 = 0
  workValue13(flag5)
  workValue13 = ScaleformMovieMethodAddParamInt
  flag5 = 80
  workValue13(flag5)
  workValue13 = EndScaleformMovieMethod
  workValue13()
  return playerPed
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: none) ===
function workValue7()
  local arg1, arg2, playerPed, workValue13, flag5, flag7, flag8, flag10, flag12, flag14, flag2, numberValue, numberValue2, cmgCall, textValue, cmgCall3, textValue3, numberValue3, numberValue4
  arg1 = 0.3
  arg2 = 0.075
  playerPed = 0.0
  workValue13 = 0.7
  flag5 = GetSafeZoneSize
  flag5 = flag5()
  flag7 = flag5 - playerPed
  flag8 = flag5 - workValue13
  flag10 = DrawSprite
  flag12 = "timerbars"
  flag14 = "all_black_bg"
  flag2 = flag7
  numberValue = flag8
  numberValue2 = arg1
  cmgCall = arg2
  textValue = 0
  cmgCall3 = 0
  textValue3 = 0
  numberValue3 = 0
  numberValue4 = 200
  flag10(flag12, flag14, flag2, numberValue, numberValue2, cmgCall, textValue, cmgCall3, textValue3, numberValue3, numberValue4)
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, arg2, playerPed
  arg1 = workValue4
  arg1 = arg1()
  arg2 = numberValue5
  arg2 = arg2 + 1
  arg2 = arg1[arg2]
  if arg2 then
    arg2 = numberValue5
    arg2 = arg2 + 1
    numberValue5 = arg2
    arg2 = numberValue5
    arg2 = arg1[arg2]
    if arg2 then
      arg2 = numberValue5
      arg2 = arg1[arg2]
      arg2 = arg2.source
      workValue12 = arg2
      arg2 = workValue16
      playerPed = workValue12
      arg2(playerPed)
    end
  else
    arg2 = arg1[1]
    if arg2 then
      arg2 = 1
      numberValue5 = arg2
      arg2 = numberValue5
      arg2 = arg1[arg2]
      arg2 = arg2.source
      workValue12 = arg2
      arg2 = workValue16
      playerPed = workValue12
      arg2(playerPed)
    else
      arg2 = 0
      numberValue5 = arg2
      arg2 = workValue17
      arg2()
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2, playerPed
  arg1 = workValue4
  arg1 = arg1()
  arg2 = numberValue5
  arg2 = arg2 - 1
  arg2 = arg1[arg2]
  if arg2 then
    arg2 = numberValue5
    arg2 = arg2 - 1
    numberValue5 = arg2
    arg2 = numberValue5
    arg2 = arg1[arg2]
    if arg2 then
      arg2 = numberValue5
      arg2 = arg1[arg2]
      arg2 = arg2.source
      workValue12 = arg2
      arg2 = workValue16
      playerPed = workValue12
      arg2(playerPed)
    end
  else
    arg2 = #arg1
    numberValue5 = arg2
    arg2 = numberValue5
    arg2 = arg1[arg2]
    if arg2 then
      arg2 = numberValue5
      arg2 = arg1[arg2]
      arg2 = arg2.source
      workValue12 = arg2
      arg2 = workValue16
      playerPed = workValue12
      arg2(playerPed)
    end
  end
end
workValue10 = RequestStreamedTextureDict
gameTime = "mphud"
flag3 = false
workValue10(gameTime, flag3)

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
function workValue10()
  local arg1, arg2, playerPed, workValue13, flag5, flag7, flag8, flag10, flag12, flag14, flag2, numberValue, numberValue2, cmgCall, textValue, cmgCall3, textValue3
  arg1 = flag
  if arg1 then
    arg1 = workValue5
    arg1()
    arg1 = workValue4
    arg1 = arg1()
    arg2 = workValue6
    playerPed = "instructional_buttons"
    workValue13 = arg1
    arg2 = arg2(playerPed, workValue13)
    playerPed = DrawScaleformMovieFullscreen
    workValue13 = arg2
    flag5 = 0
    flag7 = 0
    flag8 = 0
    flag10 = 0
    flag12 = 0
    playerPed(workValue13, flag5, flag7, flag8, flag10, flag12)
    playerPed = workValue7
    playerPed()
    playerPed = DrawAdvancedTextNoOutline
    workValue13 = 1.054
    flag5 = 0.247
    flag7 = 0.005
    flag8 = 0.0028
    flag10 = 0.45
    flag12 = "SPECTATING"
    flag14 = 255
    flag2 = 255
    numberValue = 255
    numberValue2 = 255
    cmgCall = CMG
    cmgCall = cmgCall.getFontId
    textValue = "Akrobat-Regular"
    cmgCall = cmgCall(textValue)
    textValue = 0
    playerPed(workValue13, flag5, flag7, flag8, flag10, flag12, flag14, flag2, numberValue, numberValue2, cmgCall, textValue)
    playerPed = "N/A"
    workValue13 = numberValue5
    workValue13 = arg1[workValue13]
    if workValue13 then
      workValue13 = numberValue5
      workValue13 = arg1[workValue13]
      workValue13 = workValue13.name
      if workValue13 then
        workValue13 = numberValue5
        workValue13 = arg1[workValue13]
        playerPed = workValue13.name
      end
      workValue13 = numberValue5
      workValue13 = arg1[workValue13]
      workValue13 = workValue13.source
      workValue12 = workValue13
    end
    workValue13 = string
    workValue13 = workValue13.gsub
    flag5 = playerPed
    flag7 = "[^%a%d%p%s]"
    flag8 = ""
    workValue13 = workValue13(flag5, flag7, flag8)
    flag5 = DrawAdvancedTextNoOutline
    flag7 = 1.025
    flag8 = 0.27
    flag10 = 0.005
    flag12 = 0.0028
    flag14 = 0.71
    flag2 = workValue13
    numberValue = 255
    numberValue2 = 255
    cmgCall = 255
    textValue = 255
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.getFontId
    textValue3 = "Akrobat-Regular"
    cmgCall3 = cmgCall3(textValue3)
    textValue3 = 0
    flag5(flag7, flag8, flag10, flag12, flag14, flag2, numberValue, numberValue2, cmgCall, textValue, cmgCall3, textValue3)
    flag5 = SetScriptGfxDrawOrder
    flag7 = 7
    flag5(flag7)
    flag5 = DrawRect
    flag7 = 0.999
    flag8 = 0.27
    flag10 = -0.003
    flag12 = 0.075
    flag14 = 198
    flag2 = 167
    numberValue = 73
    numberValue2 = 255
    flag5(flag7, flag8, flag10, flag12, flag14, flag2, numberValue, numberValue2)
    flag5 = DrawSprite
    flag7 = "mphud"
    flag8 = "spectating"
    flag10 = 0.915
    flag12 = 0.249
    flag14 = 0.018
    flag2 = 0.036
    numberValue = 0.0
    numberValue2 = 255
    cmgCall = 255
    textValue = 255
    cmgCall3 = 255
    flag5(flag7, flag8, flag10, flag12, flag14, flag2, numberValue, numberValue2, cmgCall, textValue, cmgCall3)
    flag5 = IsControlJustPressed
    flag7 = 0
    flag8 = 174
    flag5 = flag5(flag7, flag8)
    if flag5 then
      flag5 = workValue9
      flag5()
    else
      flag5 = IsControlJustPressed
      flag7 = 0
      flag8 = 175
      flag5 = flag5(flag7, flag8)
      if flag5 then
        flag5 = workValue8
        flag5()
      end
    end
    flag5 = numberValue5
    if 1 ~= flag5 then
      flag5 = numberValue5
      flag5 = arg1[flag5]
      if not flag5 then
        flag5 = workValue9
        flag5()
      end
    end
    flag5 = CMG
    flag5 = flag5.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    flag5 = flag5()
    flag7 = workValue2
    flag8 = flag5
    flag7(flag8)
    flag7 = DisablePlayerFiring
    flag8 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    flag8 = flag8()
    flag10 = true
    flag7(flag8, flag10)
    flag7 = SetCurrentPedWeapon
    flag8 = flag5
    flag10 = -1569615261
    flag12 = true
    flag7(flag8, flag10, flag12)
    flag7 = DisableControlAction
    flag8 = 0
    flag10 = 24
    flag12 = true
    flag7(flag8, flag10, flag12)
    flag7 = DisableControlAction
    flag8 = 0
    flag10 = 25
    flag12 = true
    flag7(flag8, flag10, flag12)
    flag7 = DisableControlAction
    flag8 = 0
    flag10 = 37
    flag12 = true
    flag7(flag8, flag10, flag12)
    flag7 = DisableControlAction
    flag8 = 0
    flag10 = 44
    flag12 = true
    flag7(flag8, flag10, flag12)
    flag7 = DisableControlAction
    flag8 = 0
    flag10 = 47
    flag12 = true
    flag7(flag8, flag10, flag12)
    flag7 = DisableControlAction
    flag8 = 0
    flag10 = 58
    flag12 = true
    flag7(flag8, flag10, flag12)
    flag7 = DisableControlAction
    flag8 = 0
    flag10 = 140
    flag12 = true
    flag7(flag8, flag10, flag12)
    flag7 = DisableControlAction
    flag8 = 0
    flag10 = 141
    flag12 = true
    flag7(flag8, flag10, flag12)
    flag7 = DisableControlAction
    flag8 = 0
    flag10 = 142
    flag12 = true
    flag7(flag8, flag10, flag12)
    flag7 = DisableControlAction
    flag8 = 0
    flag10 = 257
    flag12 = true
    flag7(flag8, flag10, flag12)
    flag7 = DisableControlAction
    flag8 = 0
    flag10 = 263
    flag12 = true
    flag7(flag8, flag10, flag12)
  end
end
gameTime = CMG
gameTime = gameTime.createThreadOnTick
flag3 = workValue10
flag4 = "Event Spectator UI"
-- Beginner: Run a helper every game frame while this script is active.
gameTime(flag3, flag4)
gameTime = GetGameTimer
-- Beginner: result below is gameTimeMs.
gameTime = gameTime()
flag3 = 0
flag4 = false

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
function workValue11()
  local arg1, arg2, playerPed, workValue13, flag5, flag7, flag8, flag10, flag12, flag14, flag2, numberValue, numberValue2, cmgCall, textValue, cmgCall3, textValue3
  arg1 = flag
  if arg1 then
    arg1 = workValue12
    if arg1 then
      arg1 = workValue5
      arg1()
      arg1 = workValue12
      if not arg1 then
        return
      end
      arg1 = DisablePlayerFiring
      arg2 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      arg2 = arg2()
      playerPed = true
      arg1(arg2, playerPed)
      arg1 = DisableControlAction
      arg2 = 0
      playerPed = 24
      workValue13 = true
      arg1(arg2, playerPed, workValue13)
      arg1 = DisableControlAction
      arg2 = 0
      playerPed = 25
      workValue13 = true
      arg1(arg2, playerPed, workValue13)
      arg1 = DisableControlAction
      arg2 = 0
      playerPed = 37
      workValue13 = true
      arg1(arg2, playerPed, workValue13)
      arg1 = DisableControlAction
      arg2 = 0
      playerPed = 44
      workValue13 = true
      arg1(arg2, playerPed, workValue13)
      arg1 = DisableControlAction
      arg2 = 0
      playerPed = 47
      workValue13 = true
      arg1(arg2, playerPed, workValue13)
      arg1 = DisableControlAction
      arg2 = 0
      playerPed = 58
      workValue13 = true
      arg1(arg2, playerPed, workValue13)
      arg1 = DisableControlAction
      arg2 = 0
      playerPed = 140
      workValue13 = true
      arg1(arg2, playerPed, workValue13)
      arg1 = DisableControlAction
      arg2 = 0
      playerPed = 141
      workValue13 = true
      arg1(arg2, playerPed, workValue13)
      arg1 = DisableControlAction
      arg2 = 0
      playerPed = 142
      workValue13 = true
      arg1(arg2, playerPed, workValue13)
      arg1 = DisableControlAction
      arg2 = 0
      playerPed = 257
      workValue13 = true
      arg1(arg2, playerPed, workValue13)
      arg1 = DisableControlAction
      arg2 = 0
      playerPed = 263
      workValue13 = true
      arg1(arg2, playerPed, workValue13)
      arg1 = CMG
      arg1 = arg1.isArenaSpectating
      arg1 = arg1()
      if arg1 then
      else
        arg1 = drawNativeNotification
        arg2 = "To stop spectating and return to the main world run /leaveevent."
        -- Beginner: Show a GTA-style notification/help prompt.
        arg1(arg2)
      end
      arg1 = GetPlayerFromServerId
      arg2 = workValue12
      -- Beginner: result below is playerIndex.
      arg1 = arg1(arg2)
      if -1 ~= arg1 then
        arg2 = CMG
        arg2 = arg2.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        arg2 = arg2()
        playerPed = workValue2
        workValue13 = arg2
        playerPed(workValue13)
        playerPed = GetPlayerPed
        workValue13 = arg1
        -- Beginner: result below is playerPed.
        playerPed = playerPed(workValue13)
        workValue13 = GetEntityCoords
        flag5 = playerPed
        -- Beginner: result below is entityCoords.
        workValue13 = workValue13(flag5)
        flag5 = CMG
        flag5 = flag5.isArenaSpectating
        flag5 = flag5()
        if flag5 then
          flag5 = CMG
          flag5 = flag5.getArenaSpectatePedOffsetZ
          flag5 = flag5()
          if flag5 then
            goto flow_label_110
          end
        end
        flag5 = numberValue7
        ::flow_label_110::
        flag7 = SetFocusPosAndVel
        flag8 = workValue13.x
        flag10 = workValue13.y
        flag12 = workValue13.z
        flag14 = 0.0
        flag2 = 0.0
        numberValue = 0.0
        flag7(flag8, flag10, flag12, flag14, flag2, numberValue)
        flag7 = SetEntityCoordsNoOffset
        flag8 = arg2
        flag10 = workValue13.x
        flag12 = workValue13.y
        flag14 = workValue13.z
        flag14 = flag14 - flag5
        flag2 = true
        numberValue = false
        numberValue2 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        flag7(flag8, flag10, flag12, flag14, flag2, numberValue, numberValue2)
        flag7 = flag6
        if not flag7 then
          flag7 = workValue16
          flag8 = workValue12
          flag7(flag8)
          flag7 = true
          flag6 = flag7
        end
        flag7 = GetActivePlayers
        flag7 = flag7()
        flag8 = pairs
        flag10 = flag7
        flag8, flag10, flag12, flag14 = flag8(flag10)
        for flag2, numberValue in flag8, flag10, flag12, flag14 do
          numberValue2 = GetPlayerPed
          cmgCall = numberValue
          -- Beginner: result below is playerPed.
          numberValue2 = numberValue2(cmgCall)
          cmgCall = SetEntityNoCollisionEntity
          textValue = arg2
          cmgCall3 = numberValue2
          textValue3 = true
          cmgCall(textValue, cmgCall3, textValue3)
        end
      else
        arg2 = false
        flag6 = arg2
        arg2 = CMG
        arg2 = arg2.isArenaSpectating
        arg2 = arg2()
        if not arg2 then
          playerPed = workValue12
          arg2 = dataTable
          arg2 = arg2[playerPed]
          if arg2 then
            arg2 = flag4
            if not arg2 then
              arg2 = true
              flag4 = arg2
              arg2 = Citizen
              arg2 = arg2.CreateThread

              -- === HELPER FUNCTION: playerPed() ===
              function playerPed()
                local workValue, numberValue6, playerPed2, workValue14, workValue15, numberValue8, flag9, flag11, flag13, flag15
                workValue = DoScreenFadeOut
                numberValue6 = 250
                workValue(numberValue6)
                numberValue6 = workValue12
                workValue = dataTable
                workValue = workValue[numberValue6]
                numberValue6 = SetFocusPosAndVel
                playerPed2 = workValue.x
                workValue14 = workValue.y
                workValue15 = workValue.z
                numberValue8 = 0.0
                flag9 = 0.0
                flag11 = 0.0
                numberValue6(playerPed2, workValue14, workValue15, numberValue8, flag9, flag11)
                numberValue6 = SetEntityCoords
                playerPed2 = PlayerPedId
                -- Beginner: result below is localPlayerPed.
                playerPed2 = playerPed2()
                workValue14 = workValue.x
                workValue15 = workValue.y
                numberValue8 = workValue.z
                flag9 = numberValue7
                numberValue8 = numberValue8 - flag9
                flag9 = true
                flag11 = false
                flag13 = false
                flag15 = false
                -- Beginner: Move/teleport an entity to new coordinates.
                numberValue6(playerPed2, workValue14, workValue15, numberValue8, flag9, flag11, flag13, flag15)
                numberValue6 = Wait
                playerPed2 = 250
                numberValue6(playerPed2)
                numberValue6 = DoScreenFadeIn
                playerPed2 = 250
                numberValue6(playerPed2)
                numberValue6 = false
                flag4 = numberValue6
              end
              -- Beginner: Start a separate FiveM thread so this code can run independently.
              arg2(playerPed)
            end
          end
        end
        arg2 = CMG
        arg2 = arg2.isArenaSpectating
        arg2 = arg2()
        if not arg2 then
          arg2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          arg2 = arg2()
          playerPed = gameTime
          arg2 = arg2 - playerPed
          playerPed = 5000
          if arg2 > playerPed then
            arg2 = TriggerServerEvent
            playerPed = "b7ce7ba79c"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b7ce7ba79c".
            arg2(playerPed)
            arg2 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            arg2 = arg2()
            gameTime = arg2
          end
          arg2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          arg2 = arg2()
          playerPed = flag3
          playerPed = arg2 - playerPed
          workValue13 = 5000
          if playerPed >= workValue13 then
            flag3 = arg2
            playerPed = notify
            workValue13 = "~r~Couldn't spectate, person not in your zone"
            -- Beginner: Show a notification to the player.
            playerPed(workValue13)
          end
        end
      end
    end
  end
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.createThreadOnTick
textValue4 = workValue11
textValue5 = "Event Spectator Controls"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall4(textValue4, textValue5)
cmgCall4 = RegisterNetEvent
textValue4 = "87a29fa0b5"
-- Beginner: this function handles network event "87a29fa0b5".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1) ===
function textValue5(arg1)
  local arg2
  dataTable = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "87a29fa0b5".
cmgCall4(textValue4, textValue5)
cmgCall4 = RegisterNetEvent
textValue4 = "e0d0f4d443"
-- Beginner: this function handles network event "e0d0f4d443".

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2, playerPed, workValue13, flag5, flag7
  arg1 = CMG
  arg1 = arg1.markArenaPlayerDead
  arg1()
  arg1 = TriggerEvent
  arg2 = "193ee4e15e"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "193ee4e15e".
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg1 = arg1()
  if 0 ~= arg1 then
    arg2 = DeleteEntity
    playerPed = arg1
    -- Beginner: Delete a GTA entity.
    arg2(playerPed)
  end
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  playerPed = RemoveAllPedWeapons
  workValue13 = arg2
  flag5 = false
  playerPed(workValue13, flag5)
  playerPed = SetCurrentPedWeapon
  workValue13 = arg2
  flag5 = -1569615261
  flag7 = true
  playerPed(workValue13, flag5, flag7)
  playerPed = CMG
  playerPed = playerPed.setEventSpectatorMode
  workValue13 = true
  playerPed(workValue13)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e0d0f4d443".
cmgCall4(textValue4, textValue5)
