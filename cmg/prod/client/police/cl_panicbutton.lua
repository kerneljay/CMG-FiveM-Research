--[[
    LEVEL 1 BEGINNER GUIDE — Panicbutton
    =========================================

    File: cmg/prod/client/police/cl_panicbutton.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Panicbutton feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 7
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
local dataTable, dataTable2, flag, workValue5, workValue6, eventRegistration, textValue4, workValue8, flag3
dataTable = {}
dataTable.Cooldown = 15
dataTable.DisableAllMessages = false
dataTable.ChatSuggestions = true
dataTable.Reminder = true
dataTable.Message = "Attention all units, MET officer in distress!"
dataTable2 = {}
dataTable2.Cooling = 0
dataTable2.Tuned = true
flag = false

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: none) ===
function workValue5()
  local arg1, arg2
  arg1 = dataTable.Cooldown
  dataTable2.Cooling = arg1
  arg1 = flag
  if arg1 then
    return
  end
  arg1 = true
  flag = arg1
  arg1 = Citizen
  arg1 = arg1.CreateThread

  -- === HELPER FUNCTION: arg2() ===
  function arg2()
    local waitCall, numberValue
    while true do
      waitCall = dataTable2.Cooling
      if not (waitCall > 0) then
        break
      end
      waitCall = dataTable2.Cooling
      waitCall = waitCall - 1
      dataTable2.Cooling = waitCall
      waitCall = Wait
      numberValue = 1000
      waitCall(numberValue)
    end
    waitCall = false
    flag = waitCall
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1) ===
function workValue6(arg1)
  local arg2, arg3, gameTime, numberValue4, workValue7
  arg2 = RegisterPedheadshot
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = IsPedheadshotValid
  gameTime = arg2
  arg3 = arg3(gameTime)
  if not arg3 then
    arg3 = "CHAR_BLOCKED"
    return arg3
  end
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  while true do
    gameTime = IsPedheadshotReady
    numberValue4 = arg2
    gameTime = gameTime(numberValue4)
    if gameTime then
      break
    end
    gameTime = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    gameTime = gameTime()
    gameTime = gameTime - arg3
    numberValue4 = 2500
    if gameTime > numberValue4 then
      gameTime = UnregisterPedheadshot
      numberValue4 = arg2
      gameTime(numberValue4)
      gameTime = "CHAR_BLOCKED"
      return gameTime
    end
    gameTime = Wait
    numberValue4 = 0
    gameTime(numberValue4)
  end
  gameTime = GetPedheadshotTxdString
  numberValue4 = arg2
  gameTime = gameTime(numberValue4)
  numberValue4 = gameTime
  workValue7 = arg2
  return numberValue4, workValue7
end
eventRegistration = RegisterCommand
textValue4 = "panic"
-- Beginner: this function is the command handler for "panic".

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, arg2, arg3, gameTime, numberValue4, workValue7, playerIndex
  arg1 = CMG
  arg1 = arg1.hasRadioItem
  arg1 = arg1()
  if not arg1 then
    return
  end
  arg1 = IsEntityDead
  arg2 = PlayerPedId
  arg2, arg3, gameTime, numberValue4, workValue7, playerIndex = arg2()
  arg1 = arg1(arg2, arg3, gameTime, numberValue4, workValue7, playerIndex)
  if arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "police.onduty.permission"
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.hasClientPermission
    arg2 = "nhs.onduty.permission"
    arg1 = arg1(arg2)
    if not arg1 then
      arg1 = CMG
      arg1 = arg1.hasClientPermission
      arg2 = "prisonguard.onduty.permission"
      arg1 = arg1(arg2)
      if not arg1 then
        arg1 = CMG
        arg1 = arg1.hasClientPermission
        arg2 = "lfb.onduty.permission"
        arg1 = arg1(arg2)
        if not arg1 then
          arg1 = CMG
          arg1 = arg1.isSelectedGangAdvanced
          arg1 = arg1()
          if not arg1 then
            arg1 = CMG
            arg1 = arg1.hasClientPermission
            arg2 = "borderforce.onduty.permission"
            arg1 = arg1(arg2)
            if not arg1 then
              goto flow_label_190
            end
          end
        end
      end
    end
  end
  arg1 = dataTable2.Cooling
  if 0 == arg1 then
    arg1 = {}
    arg2 = CMG
    arg2 = arg2.getPlayerId
    -- Beginner: result below is localPlayerIndex.
    arg2 = arg2()
    arg1.Player = arg2
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg1.Ped = arg2
    arg2 = CMG
    arg2 = arg2.getPlayerName
    arg3 = arg1.Player
    arg2 = arg2(arg3)
    arg1.Name = arg2
    arg2 = GetEntityCoords
    arg3 = arg1.Ped
    -- Beginner: result below is entityCoords.
    arg2 = arg2(arg3)
    arg1.Coords = arg2
    arg2 = {}
    arg1.Location = arg2
    arg2 = arg1.Location
    arg3 = arg1.Location
    gameTime = GetStreetNameAtCoord
    numberValue4 = arg1.Coords
    numberValue4 = numberValue4.x
    workValue7 = arg1.Coords
    workValue7 = workValue7.y
    playerIndex = arg1.Coords
    playerIndex = playerIndex.z
    gameTime, numberValue4 = gameTime(numberValue4, workValue7, playerIndex)
    arg3.CrossStreetHash = numberValue4
    arg2.StreetHash = gameTime
    arg2 = arg1.Location
    arg3 = GetStreetNameFromHashKey
    gameTime = arg1.Location
    gameTime = gameTime.StreetHash
    arg3 = arg3(gameTime)
    arg2.Street = arg3
    arg2 = arg1.Location
    arg2 = arg2.CrossStreet
    if 0 ~= arg2 then
      arg2 = arg1.Location
      arg3 = GetStreetNameFromHashKey
      gameTime = arg1.Location
      gameTime = gameTime.CrossStreetHash
      arg3 = arg3(gameTime)
      arg2.CrossStreet = arg3
      arg2 = arg1.Location
      arg2 = arg2.Street
      arg3 = " X "
      gameTime = arg1.Location
      gameTime = gameTime.CrossStreet
      arg2 = arg2 .. arg3 .. gameTime
      arg1.Location = arg2
    else
      arg2 = arg1.Location
      arg2 = arg2.Street
      arg1.Location = arg2
    end
    arg2 = CMG
    arg2 = arg2.hasClientPermission
    arg3 = "police.onduty.permission"
    arg2 = arg2(arg3)
    if arg2 then
      arg2 = TriggerServerEvent
      arg3 = "9baa82cbda"
      gameTime = arg1
      numberValue4 = 3
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9baa82cbda".
      arg2(arg3, gameTime, numberValue4)
    else
      arg2 = CMG
      arg2 = arg2.hasClientPermission
      arg3 = "nhs.onduty.permission"
      arg2 = arg2(arg3)
      if arg2 then
        arg2 = TriggerServerEvent
        arg3 = "9baa82cbda"
        gameTime = arg1
        numberValue4 = 2
        arg2(arg3, gameTime, numberValue4)
      else
        arg2 = CMG
        arg2 = arg2.hasClientPermission
        arg3 = "prisonguard.onduty.permission"
        arg2 = arg2(arg3)
        if arg2 then
          arg2 = TriggerServerEvent
          arg3 = "9baa82cbda"
          gameTime = arg1
          numberValue4 = 4
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9baa82cbda".
          arg2(arg3, gameTime, numberValue4)
        else
          arg2 = CMG
          arg2 = arg2.hasClientPermission
          arg3 = "lfb.onduty.permission"
          arg2 = arg2(arg3)
          if arg2 then
            arg2 = TriggerServerEvent
            arg3 = "9baa82cbda"
            gameTime = arg1
            numberValue4 = 5
            arg2(arg3, gameTime, numberValue4)
          else
            arg2 = CMG
            arg2 = arg2.hasClientPermission
            arg3 = "borderforce.onduty.permission"
            arg2 = arg2(arg3)
            if arg2 then
              arg2 = TriggerServerEvent
              arg3 = "9baa82cbda"
              gameTime = arg1
              numberValue4 = 7
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9baa82cbda".
              arg2(arg3, gameTime, numberValue4)
            else
              arg2 = CMG
              arg2 = arg2.isSelectedGangAdvanced
              arg2 = arg2()
              if arg2 then
                arg2 = TriggerServerEvent
                arg3 = "2d588b850f"
                gameTime = arg1
                numberValue4 = false
                arg2(arg3, gameTime, numberValue4)
              end
            end
          end
        end
      end
    end
    arg2 = workValue5
    arg2()
  else
    arg1 = notify
    arg2 = "~r~Panic Button still cooling down."
    arg3 = true
    -- Beginner: Show a notification to the player.
    arg1(arg2, arg3)
  end
  ::flow_label_190::
end
flag3 = false
-- Beginner: Register a chat/console command. Event/command: "panic".
eventRegistration(textValue4, workValue8, flag3)
eventRegistration = RegisterNetEvent
textValue4 = "9d185ee4de"
-- Beginner: this function handles network event "9d185ee4de".

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1, arg2, arg3) ===
function workValue8(arg1, arg2, arg3)
  local gameTime, numberValue4, workValue7, playerIndex, workValue9, numberValue6, stringHelper, textValue, textValue2, workValue, textValue3, workValue2, workValue3
  gameTime = CMG
  gameTime = gameTime.hasRadioItem
  gameTime = gameTime()
  if not gameTime then
    return
  end
  if 6 == arg3 then
    gameTime = CMG
    gameTime = gameTime.isGangPanicsPinnedOnly
    gameTime = gameTime()
    if gameTime then
      gameTime = CMG
      gameTime = gameTime.isPlayerPinnedInGang
      numberValue4 = arg2.user_id
      gameTime = gameTime(numberValue4)
      if not gameTime then
        gameTime = arg2.user_id
        numberValue4 = CMG
        numberValue4 = numberValue4.getClientUserId
        -- Beginner: result below is userId.
        numberValue4 = numberValue4()
        if gameTime ~= numberValue4 then
          return
        end
      end
    end
  end
  gameTime = CMG
  gameTime = gameTime.getClientUserId
  -- Beginner: result below is userId.
  gameTime = gameTime()
  numberValue4 = CMG
  numberValue4 = numberValue4.hasClientPermission
  workValue7 = "police.onduty.permission"
  numberValue4 = numberValue4(workValue7)
  if not numberValue4 then
    numberValue4 = CMG
    numberValue4 = numberValue4.hasClientPermission
    workValue7 = "nhs.onduty.permission"
    numberValue4 = numberValue4(workValue7)
    if not numberValue4 or 1 == gameTime then
      numberValue4 = CMG
      numberValue4 = numberValue4.hasClientPermission
      workValue7 = "prisonguard.onduty.permission"
      numberValue4 = numberValue4(workValue7)
      if not numberValue4 or 4 ~= arg3 and 7 ~= arg3 then
        numberValue4 = CMG
        numberValue4 = numberValue4.hasClientPermission
        workValue7 = "lfb.onduty.permission"
        numberValue4 = numberValue4(workValue7)
        if not numberValue4 or 5 ~= arg3 then
          if 6 == arg3 then
            numberValue4 = CMG
            numberValue4 = numberValue4.isEmergencyService
            numberValue4 = numberValue4()
            if not numberValue4 then
              goto flow_label_75
            end
          end
          numberValue4 = CMG
          numberValue4 = numberValue4.hasClientPermission
          workValue7 = "borderforce.onduty.permission"
          numberValue4 = numberValue4(workValue7)
          if not numberValue4 then
            goto flow_label_223
          end
        end
      end
    end
  end
  ::flow_label_75::
  numberValue4 = SendNUIMessage
  workValue7 = {}
  workValue7.PayloadType = "Panic"
  workValue7.Payload = arg1
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  numberValue4(workValue7)
  numberValue4 = workValue6
  workValue7 = GetPlayerPed
  playerIndex = GetPlayerFromServerId
  workValue9 = arg2.Source
  playerIndex, workValue9, numberValue6, stringHelper, textValue, textValue2, workValue, textValue3, workValue2, workValue3 = playerIndex(workValue9)
  workValue7, playerIndex, workValue9, numberValue6, stringHelper, textValue, textValue2, workValue, textValue3, workValue2, workValue3 = workValue7(playerIndex, workValue9, numberValue6, stringHelper, textValue, textValue2, workValue, textValue3, workValue2, workValue3)
  numberValue4, workValue7 = numberValue4(workValue7, playerIndex, workValue9, numberValue6, stringHelper, textValue, textValue2, workValue, textValue3, workValue2, workValue3)
  arg2.Headshot = numberValue4
  if 2 == arg3 then
    playerIndex = tCMG
    playerIndex = playerIndex.notifyPicture
    workValue9 = arg2.Headshot
    numberValue6 = 2
    stringHelper = string
    stringHelper = stringHelper.format
    textValue = "NHS - %s"
    textValue2 = arg2.Name
    stringHelper = stringHelper(textValue, textValue2)
    textValue = nil
    textValue2 = "~r~NHS Paramedic in distress! - "
    workValue = arg2.Location
    textValue2 = textValue2 .. workValue
    playerIndex(workValue9, numberValue6, stringHelper, textValue, textValue2)
  elseif 3 == arg3 then
    playerIndex = tCMG
    playerIndex = playerIndex.notifyPicture
    workValue9 = arg2.Headshot
    numberValue6 = 2
    stringHelper = string
    stringHelper = stringHelper.format
    textValue = "MET Police - %s"
    textValue2 = arg2.Name
    stringHelper = stringHelper(textValue, textValue2)
    textValue = nil
    textValue2 = "~r~Officer in distress! - "
    workValue = arg2.Location
    textValue2 = textValue2 .. workValue
    playerIndex(workValue9, numberValue6, stringHelper, textValue, textValue2)
  elseif 4 == arg3 then
    playerIndex = tCMG
    playerIndex = playerIndex.notifyPicture
    workValue9 = arg2.Headshot
    numberValue6 = 2
    stringHelper = string
    stringHelper = stringHelper.format
    textValue = "HM Prison - %s"
    textValue2 = arg2.Name
    stringHelper = stringHelper(textValue, textValue2)
    textValue = nil
    textValue2 = "~r~Prison Guard in distress! - "
    workValue = arg2.Location
    textValue2 = textValue2 .. workValue
    playerIndex(workValue9, numberValue6, stringHelper, textValue, textValue2)
  elseif 5 == arg3 then
    playerIndex = tCMG
    playerIndex = playerIndex.notifyPicture
    workValue9 = arg2.Headshot
    numberValue6 = 2
    stringHelper = string
    stringHelper = stringHelper.format
    textValue = "LFB - %s"
    textValue2 = arg2.Name
    stringHelper = stringHelper(textValue, textValue2)
    textValue = nil
    textValue2 = "~r~LFB Panic Alarm Activated! - "
    workValue = arg2.Location
    textValue2 = textValue2 .. workValue
    playerIndex(workValue9, numberValue6, stringHelper, textValue, textValue2)
  elseif 6 == arg3 then
    playerIndex = arg2.Name
    if playerIndex then
      playerIndex = arg2.Name
      if "" ~= playerIndex then
        playerIndex = arg2.Name
        if playerIndex then
          goto flow_label_169
        end
      end
    end
    playerIndex = "Unknown"
    ::flow_label_169::
    workValue9 = tCMG
    workValue9 = workValue9.notifyPicture
    numberValue6 = arg2.Headshot
    stringHelper = 2
    textValue = string
    textValue = textValue.format
    textValue2 = "Gang Panic - %s"
    workValue = playerIndex
    textValue = textValue(textValue2, workValue)
    textValue2 = nil
    workValue = string
    workValue = workValue.format
    textValue3 = "~r~%s triggered a gang panic - %s"
    workValue2 = playerIndex
    workValue3 = arg2.Location
    workValue, textValue3, workValue2, workValue3 = workValue(textValue3, workValue2, workValue3)
    workValue9(numberValue6, stringHelper, textValue, textValue2, workValue, textValue3, workValue2, workValue3)
  elseif 7 == arg3 then
    playerIndex = tCMG
    playerIndex = playerIndex.notifyPicture
    workValue9 = arg2.Headshot
    numberValue6 = 2
    stringHelper = string
    stringHelper = stringHelper.format
    textValue = "Border Force - %s"
    textValue2 = arg2.Name
    stringHelper = stringHelper(textValue, textValue2)
    textValue = nil
    textValue2 = "~r~Border Force Panic Alarm Activated! - "
    workValue = arg2.Location
    textValue2 = textValue2 .. workValue
    playerIndex(workValue9, numberValue6, stringHelper, textValue, textValue2)
  end
  if nil ~= workValue7 then
    playerIndex = UnregisterPedheadshot
    workValue9 = workValue7
    playerIndex(workValue9)
  end
  playerIndex = Citizen
  playerIndex = playerIndex.CreateThread

  -- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
  function workValue9()
    local waitCall, numberValue, workValue4, flag2, numberValue5
    waitCall = CMG
    waitCall = waitCall.isDoingTruckRoute
    waitCall = waitCall()
    if waitCall then
      return
    end
    waitCall = AddBlipForRadius
    numberValue = arg2.Coords
    numberValue = numberValue.x
    workValue4 = arg2.Coords
    workValue4 = workValue4.y
    flag2 = arg2.Coords
    flag2 = flag2.z
    numberValue5 = 100.0
    -- Beginner: result below is blipHandle.
    waitCall = waitCall(numberValue, workValue4, flag2, numberValue5)
    numberValue = SetBlipRoute
    workValue4 = waitCall
    flag2 = true
    numberValue(workValue4, flag2)
    numberValue = Citizen
    numberValue = numberValue.CreateThread

    -- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
    function workValue4()
      local waitCall2, numberValue2, numberValue3
      while true do
        waitCall2 = waitCall
        if not waitCall2 then
          break
        end
        waitCall2 = SetBlipRouteColour
        numberValue2 = waitCall
        numberValue3 = 1
        waitCall2(numberValue2, numberValue3)
        waitCall2 = Citizen
        waitCall2 = waitCall2.Wait
        numberValue2 = 150
        waitCall2(numberValue2)
        waitCall2 = SetBlipRouteColour
        numberValue2 = waitCall
        numberValue3 = 6
        waitCall2(numberValue2, numberValue3)
        waitCall2 = Citizen
        waitCall2 = waitCall2.Wait
        numberValue2 = 150
        waitCall2(numberValue2)
        waitCall2 = SetBlipRouteColour
        numberValue2 = waitCall
        numberValue3 = 35
        waitCall2(numberValue2, numberValue3)
        waitCall2 = Citizen
        waitCall2 = waitCall2.Wait
        numberValue2 = 150
        waitCall2(numberValue2)
        waitCall2 = SetBlipRouteColour
        numberValue2 = waitCall
        numberValue3 = 6
        waitCall2(numberValue2, numberValue3)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    numberValue(workValue4)
    numberValue = SetBlipColour
    workValue4 = waitCall
    flag2 = arg3
    numberValue(workValue4, flag2)
    numberValue = SetBlipAlpha
    workValue4 = waitCall
    flag2 = 60
    numberValue(workValue4, flag2)
    numberValue = SetBlipFlashes
    workValue4 = waitCall
    flag2 = true
    numberValue(workValue4, flag2)
    numberValue = SetBlipFlashInterval
    workValue4 = waitCall
    flag2 = 200
    numberValue(workValue4, flag2)
    numberValue = Citizen
    numberValue = numberValue.Wait
    workValue4 = 90000
    numberValue(workValue4)
    numberValue = RemoveBlip
    workValue4 = waitCall
    numberValue(workValue4)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  playerIndex(workValue9)
  playerIndex = GetSoundId
  -- Beginner: result below is soundHandle.
  playerIndex = playerIndex()
  workValue9 = PlaySoundFrontend
  numberValue6 = playerIndex
  stringHelper = "police_notification"
  textValue = "DLC_AS_VNT_Sounds"
  textValue2 = true
  workValue9(numberValue6, stringHelper, textValue, textValue2)
  workValue9 = ReleaseSoundId
  numberValue6 = playerIndex
  workValue9(numberValue6)
  ::flow_label_223::
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9d185ee4de".
eventRegistration(textValue4, workValue8)
