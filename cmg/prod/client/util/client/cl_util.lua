--[[
    LEVEL 1 BEGINNER GUIDE — Util
    ==================================

    File: cmg/prod/client/util/client/cl_util.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: shared utility/framework helper code.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 58
      * Background threads: 0
      * Always-running loops: 12
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
local cmgOperation, text4, text5, dataCollection3, number7, workingValue8, workingValue9, workingValue10, workingValue11, number8, cmgOperation2, text2, stateFlag, cmgOperation3, cmgOperation4, cmgOperation5, cmgOperation6, mathHelper, mathHelper2, mathHelper3, cmgOperation7, cmgOperation8, cmgOperation9, workingValue6
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text4 = "cfg/cfg_attachments"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text4)

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1, localValue2, localValue3) ===
function text4(localValue1, localValue2, localValue3)
  local localValue4
  localValue4 = localValue2 or localValue4
  localValue4 = localValue3 or localValue4
  if (not (localValue1 < localValue2) or not localValue2) and (not (localValue3 < localValue1) or not localValue3) then
    localValue4 = localValue1
  end
  return localValue4
end
Clamp = text4

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue3 = localValue1
  localValue2 = localValue1.sub
  localValue4 = 1
  localValue5 = 3
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  if "~y~" == localValue2 then
    localValue4 = localValue1
    localValue3 = localValue1.sub
    localValue5 = 4
    localValue3 = localValue3(localValue4, localValue5)
    localValue4 = "warn"
    return localValue3, localValue4
  elseif "~r~" == localValue2 then
    localValue4 = localValue1
    localValue3 = localValue1.sub
    localValue5 = 4
    localValue3 = localValue3(localValue4, localValue5)
    localValue4 = "error"
    return localValue3, localValue4
  elseif "~g~" == localValue2 then
    localValue4 = localValue1
    localValue3 = localValue1.sub
    localValue5 = 4
    localValue3 = localValue3(localValue4, localValue5)
    localValue4 = "success"
    return localValue3, localValue4
  elseif "~b~" == localValue2 then
    localValue4 = localValue1
    localValue3 = localValue1.sub
    localValue5 = 4
    localValue3 = localValue3(localValue4, localValue5)
    localValue4 = "blue"
    return localValue3, localValue4
  elseif "~o~" == localValue2 then
    localValue4 = localValue1
    localValue3 = localValue1.sub
    localValue5 = 4
    localValue3 = localValue3(localValue4, localValue5)
    localValue4 = "warn"
    return localValue3, localValue4
  elseif "~p~" == localValue2 then
    localValue4 = localValue1
    localValue3 = localValue1.sub
    localValue5 = 4
    localValue3 = localValue3(localValue4, localValue5)
    localValue4 = "info"
    return localValue3, localValue4
  elseif "~q~" == localValue2 then
    localValue4 = localValue1
    localValue3 = localValue1.sub
    localValue5 = 4
    localValue3 = localValue3(localValue4, localValue5)
    localValue4 = "pink"
    return localValue3, localValue4
  else
    localValue3 = localValue1
    localValue4 = "info"
    return localValue3, localValue4
  end
end
text5 = " Press F11 to set a waypoint."
dataCollection3 = {}
number7 = 0

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  localValue2 = dataCollection3
  localValue2 = #localValue2
  localValue3 = 1
  localValue4 = -1
  for localValue5 = localValue2, localValue3, localValue4 do
    localValue6 = dataCollection3
    localValue6 = localValue6[localValue5]
    localValue6 = localValue6.expiresAt
    if localValue1 >= localValue6 then
      localValue6 = table
      localValue6 = localValue6.remove
      localValue7 = dataCollection3
      localValue8 = localValue5
      localValue6(localValue7, localValue8)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, localValue3
  localValue1 = workingValue8
  localValue1()
  localValue1 = dataCollection3
  localValue1 = localValue1[1]
  if not localValue1 then
    localValue2 = nil
    return localValue2
  end
  localValue2 = {}
  localValue3 = localValue1.x
  localValue2.x = localValue3
  localValue3 = localValue1.y
  localValue2.y = localValue3
  localValue3 = localValue1.z
  localValue2.z = localValue3
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue10(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, gameTime
  localValue5 = number7
  localValue5 = localValue5 + 1
  number7 = localValue5
  localValue5 = table
  localValue5 = localValue5.insert
  localValue6 = dataCollection3
  localValue7 = 1
  localValue8 = {}
  gameTime = number7
  localValue8.id = gameTime
  localValue8.x = localValue1
  localValue8.y = localValue2
  localValue8.z = localValue3
  gameTime = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  gameTime = gameTime()
  gameTime = gameTime + localValue4
  localValue8.expiresAt = gameTime
  localValue5(localValue6, localValue7, localValue8)
  while true do
    localValue5 = dataCollection3
    localValue5 = #localValue5
    if not (localValue5 > 8) then
      break
    end
    localValue5 = table
    localValue5 = localValue5.remove
    localValue6 = dataCollection3
    localValue5(localValue6)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: localValue1) ===
function workingValue11(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = AddTextEntry
  localValue3 = "CMG_LEGACY_NOTIFY"
  localValue4 = localValue1
  localValue2(localValue3, localValue4)
  localValue2 = BeginTextCommandThefeedPost
  localValue3 = "STRING"
  localValue2(localValue3)
  localValue2 = AddTextComponentSubstringTextLabel
  localValue3 = "CMG_LEGACY_NOTIFY"
  localValue2(localValue3)
  localValue2 = EndTextCommandThefeedPostTicker
  localValue3 = true
  localValue4 = false
  localValue2(localValue3, localValue4)
end

-- === HELPER FUNCTION (decompiler name: number8; parameters: localValue1) ===
function number8(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, gameTime
  localValue2 = CMG
  localValue2 = localValue2.isLegacyHudEnabled
  localValue2 = localValue2()
  if localValue2 then
    localValue2 = type
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if "string" == localValue2 then
      localValue2 = workingValue11
      localValue3 = localValue1
      localValue2(localValue3)
    else
      localValue2 = type
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
      if "table" == localValue2 then
        localValue2 = localValue1.message
        if not localValue2 then
          localValue2 = ""
        end
        localValue3 = localValue1.title
        if localValue3 then
          localValue3 = localValue1.title
          if "" ~= localValue3 then
            localValue3 = localValue1.title
            localValue4 = "\n"
            localValue5 = localValue2
            localValue3 = localValue3 .. localValue4 .. localValue5
            localValue2 = localValue3
          end
        end
        localValue3 = localValue1.position
        localValue4 = type
        localValue5 = localValue3
        localValue4 = localValue4(localValue5)
        if "vector3" ~= localValue4 then
          localValue4 = type
          localValue5 = localValue3
          localValue4 = localValue4(localValue5)
          if "vector4" ~= localValue4 then
            goto continueAtStep68
          end
        end
        localValue4 = string
        localValue4 = localValue4.find
        localValue5 = localValue2
        localValue6 = "Press F11 to set a waypoint"
        localValue7 = 1
        localValue8 = true
        localValue4 = localValue4(localValue5, localValue6, localValue7, localValue8)
        if not localValue4 then
          localValue4 = localValue2
          localValue5 = text5
          localValue4 = localValue4 .. localValue5
          localValue2 = localValue4
        end
        localValue4 = workingValue10
        localValue5 = localValue3.x
        localValue6 = localValue3.y
        localValue7 = localValue3.z
        localValue8 = localValue1.duration
        if not localValue8 then
          localValue8 = 8000
        end
        localValue4(localValue5, localValue6, localValue7, localValue8)
        ::continueAtStep68::
        localValue4 = workingValue11
        localValue5 = localValue2
        localValue4(localValue5)
      end
    end
    return
  end
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "string" == localValue2 then
    localValue2 = text4
    localValue3 = localValue1
    localValue2, localValue3 = localValue2(localValue3)
    localValue4 = CMG
    localValue4 = localValue4.sendHudNuiMessage
    localValue5 = "HUD_NOTIFY"
    localValue6 = {}
    localValue6.action = "notify"
    localValue6.message = localValue2
    localValue6.type = localValue3
    localValue6.title = ""
    localValue6.duration = 8000
    localValue6.icon = ""
    localValue6.sound = "notification"
    localValue4(localValue5, localValue6)
  else
    localValue2 = type
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    if "table" == localValue2 then
      localValue2 = localValue1.message
      if not localValue2 then
        localValue2 = ""
      end
      localValue3 = localValue1.duration
      if not localValue3 then
        localValue3 = 8000
      end
      localValue4 = localValue1.position
      localValue5 = type
      localValue6 = localValue4
      localValue5 = localValue5(localValue6)
      if "vector3" ~= localValue5 then
        localValue5 = type
        localValue6 = localValue4
        localValue5 = localValue5(localValue6)
        if "vector4" ~= localValue5 then
          goto continueAtStep137
        end
      end
      localValue5 = string
      localValue5 = localValue5.find
      localValue6 = localValue2
      localValue7 = "Press F11 to set a waypoint"
      localValue8 = 1
      gameTime = true
      localValue5 = localValue5(localValue6, localValue7, localValue8, gameTime)
      if not localValue5 then
        localValue5 = localValue2
        localValue6 = text5
        localValue5 = localValue5 .. localValue6
        localValue2 = localValue5
      end
      localValue5 = workingValue10
      localValue6 = localValue4.x
      localValue7 = localValue4.y
      localValue8 = localValue4.z
      gameTime = localValue3
      localValue5(localValue6, localValue7, localValue8, gameTime)
      ::continueAtStep137::
      localValue5 = CMG
      localValue5 = localValue5.sendHudNuiMessage
      localValue6 = "HUD_NOTIFY"
      localValue7 = {}
      localValue7.action = "notify"
      localValue7.message = localValue2
      localValue8 = localValue1.type
      if not localValue8 then
        localValue8 = "info"
      end
      localValue7.type = localValue8
      localValue8 = localValue1.title
      if not localValue8 then
        localValue8 = ""
      end
      localValue7.title = localValue8
      localValue7.duration = localValue3
      localValue8 = localValue1.icon
      if not localValue8 then
        localValue8 = ""
      end
      localValue7.icon = localValue8
      localValue8 = localValue1.sound
      if not localValue8 then
        localValue8 = "notification"
      end
      localValue7.sound = localValue8
      localValue5(localValue6, localValue7)
    end
  end
end
notify = number8
number8 = RegisterCommand
cmgOperation2 = "cmgNotifyWaypoint"
-- Beginner: this function is the command handler for "cmgNotifyWaypoint".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = workingValue9
  localValue1 = localValue1()
  if not localValue1 then
    return
  end
  localValue2 = SetNewWaypoint
  localValue3 = localValue1.x
  localValue4 = localValue1.y
  localValue2(localValue3, localValue4)
end
stateFlag = false
-- Beginner: Register a chat/console command. Event/command: "cmgNotifyWaypoint".
number8(cmgOperation2, text2, stateFlag)
number8 = RegisterKeyMapping
cmgOperation2 = "cmgNotifyWaypoint"
text2 = "Set notification waypoint"
stateFlag = "keyboard"
cmgOperation3 = "F11"
-- Beginner: Bind a command to a keyboard/controller key.
number8(cmgOperation2, text2, stateFlag, cmgOperation3)
number8 = 20000
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, gameTime
  localValue2 = nil
  localValue3 = type
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if "string" ~= localValue3 then
    localValue2 = localValue1
  else
    localValue3 = GetHashKey
    localValue4 = localValue1
    -- Beginner: result below is hash.
    localValue3 = localValue3(localValue4)
    localValue2 = localValue3
  end
  localValue3 = IsModelInCdimage
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = HasModelLoaded
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if not localValue3 then
      localValue3 = RequestModel
      localValue4 = localValue2
      localValue3(localValue4)
      localValue3 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue3 = localValue3()
      while true do
        localValue4 = HasModelLoaded
        localValue5 = localValue2
        localValue4 = localValue4(localValue5)
        if localValue4 then
          break
        end
        localValue4 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        localValue4 = localValue4()
        localValue4 = localValue4 - localValue3
        localValue5 = number8
        if localValue4 >= localValue5 then
          localValue4 = print
          localValue5 = string
          localValue5 = localValue5.format
          localValue6 = "CMG.loadModel: timed out after %d ms waiting for model %s (hash %d)"
          localValue7 = number8
          localValue8 = tostring
          gameTime = localValue1
          localValue8 = localValue8(gameTime)
          gameTime = localValue2
          localValue5, localValue6, localValue7, localValue8, gameTime = localValue5(localValue6, localValue7, localValue8, gameTime)
          localValue4(localValue5, localValue6, localValue7, localValue8, gameTime)
          localValue4 = nil
          return localValue4
        end
        localValue4 = RequestModel
        localValue5 = localValue2
        localValue4(localValue5)
        localValue4 = Wait
        localValue5 = 0
        localValue4(localValue5)
      end
    end
    return localValue2
  else
    localValue3 = nil
    return localValue3
  end
end
cmgOperation2.loadModel = text2
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = DoesAnimDictExist
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = print
    localValue3 = "Anim dict "
    localValue4 = localValue1
    localValue5 = " does not exist!"
    localValue3 = localValue3 .. localValue4 .. localValue5
    localValue2(localValue3)
    localValue2 = ""
    return localValue2
  end
  localValue2 = HasAnimDictLoaded
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = RequestAnimDict
    localValue3 = localValue1
    localValue2(localValue3)
    while true do
      localValue2 = HasAnimDictLoaded
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
      if localValue2 then
        break
      end
      localValue2 = Wait
      localValue3 = 0
      localValue2(localValue3)
    end
  end
  return localValue1
end
cmgOperation2.loadAnimDict = text2
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3
  localValue2 = HasClipSetLoaded
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = RequestClipSet
    localValue3 = localValue1
    localValue2(localValue3)
    while true do
      localValue2 = HasClipSetLoaded
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
      if localValue2 then
        break
      end
      localValue2 = Wait
      localValue3 = 0
      localValue2(localValue3)
    end
  end
end
cmgOperation2.loadClipSet = text2
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1) ===
function text2(localValue1)
  local localValue2, localValue3
  localValue2 = HasNamedPtfxAssetLoaded
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = RequestNamedPtfxAsset
    localValue3 = localValue1
    localValue2(localValue3)
    while true do
      localValue2 = HasNamedPtfxAssetLoaded
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
      if localValue2 then
        break
      end
      localValue2 = Wait
      localValue3 = 0
      localValue2(localValue3)
    end
  end
  localValue2 = UseParticleFxAsset
  localValue3 = localValue1
  localValue2(localValue3)
end
cmgOperation2.loadPtfx = text2

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, gameTime, text6, text
  localValue2 = tostring
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = localValue2
  localValue2 = localValue2.find
  localValue4 = "([-]?)(%d+)([.]?%d*)"
  localValue2, localValue3, localValue4, localValue5, localValue6 = localValue2(localValue3, localValue4)
  localValue8 = localValue5
  localValue7 = localValue5.reverse
  localValue7 = localValue7(localValue8)
  localValue8 = localValue7
  localValue7 = localValue7.gsub
  gameTime = "(%d%d%d)"
  text6 = "%1,"
  localValue7 = localValue7(localValue8, gameTime, text6)
  localValue5 = localValue7
  localValue7 = localValue4
  gameTime = localValue5
  localValue8 = localValue5.reverse
  localValue8 = localValue8(gameTime)
  gameTime = localValue8
  localValue8 = localValue8.gsub
  text6 = "^,"
  text = ""
  localValue8 = localValue8(gameTime, text6, text)
  gameTime = localValue6
  localValue7 = localValue7 .. localValue8 .. gameTime
  return localValue7
end
getMoneyStringFormatted = cmgOperation2
cmgOperation2 = tCMG

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2, localValue3) ===
function text2(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8
  localValue4 = GetStreetNameFromHashKey
  localValue5 = GetStreetNameAtCoord
  localValue6 = localValue1
  localValue7 = localValue2
  localValue8 = localValue3
  localValue5, localValue6, localValue7, localValue8 = localValue5(localValue6, localValue7, localValue8)
  return localValue4(localValue5, localValue6, localValue7, localValue8)
end
cmgOperation2.getStreetNameAtCoord = text2
cmgOperation2 = RegisterNetEvent
text2 = "6fe9f7f4b0"
-- Beginner: this function handles network event "6fe9f7f4b0".

-- === HELPER FUNCTION (decompiler name: stateFlag; parameters: localValue1) ===
function stateFlag(localValue1)
  local localValue2, localValue3
  localValue2 = notify
  localValue3 = localValue1
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6fe9f7f4b0".
cmgOperation2(text2, stateFlag)
cmgOperation2 = CMG
-- Beginner: this function handles network event "6fe9f7f4b0".

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2) ===
function text2(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, gameTime, text6, text, tableHelper, dataCollection, workingValue, hashValue, workingValue2
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = {}
  localValue5 = CMG
  localValue5 = localValue5.getGivenAttachmentsToRemove
  localValue5 = localValue5()
  if localValue2 then
    localValue6 = pairs
    localValue7 = cmgOperation.attachments
    localValue6, localValue7, localValue8, gameTime = localValue6(localValue7)
    for text6, text in localValue6, localValue7, localValue8, gameTime do
      tableHelper = HasPedGotWeaponComponent
      dataCollection = localValue3
      workingValue = localValue1
      hashValue = GetHashKey
      workingValue2 = text
      hashValue, workingValue2 = hashValue(workingValue2)
      tableHelper = tableHelper(dataCollection, workingValue, hashValue, workingValue2)
      if tableHelper then
        tableHelper = table
        tableHelper = tableHelper.has
        dataCollection = localValue5[localValue1]
        if not dataCollection then
          dataCollection = {}
        end
        workingValue = text
        tableHelper = tableHelper(dataCollection, workingValue)
        if not tableHelper then
          tableHelper = table
          tableHelper = tableHelper.insert
          dataCollection = localValue4
          workingValue = text
          tableHelper(dataCollection, workingValue)
        end
      end
    end
  else
    localValue6 = pairs
    localValue7 = cmgOperation.attachments
    localValue6, localValue7, localValue8, gameTime = localValue6(localValue7)
    for text6, text in localValue6, localValue7, localValue8, gameTime do
      tableHelper = HasPedGotWeaponComponent
      dataCollection = localValue3
      workingValue = localValue1
      hashValue = GetHashKey
      workingValue2 = text
      hashValue, workingValue2 = hashValue(workingValue2)
      tableHelper = tableHelper(dataCollection, workingValue, hashValue, workingValue2)
      if tableHelper then
        tableHelper = table
        tableHelper = tableHelper.insert
        dataCollection = localValue4
        workingValue = text
        tableHelper(dataCollection, workingValue)
      end
    end
  end
  return localValue4
end
cmgOperation2.getAllWeaponAttachments = text2
cmgOperation2 = "nativeHelpMessage"
text2 = 10000
stateFlag = 0

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1, localValue2) ===
function cmgOperation3(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  localValue3 = CMG
  localValue3 = localValue3.hideDisplay
  localValue4 = "chat"
  localValue5 = cmgOperation2
  localValue6 = true
  localValue3(localValue4, localValue5, localValue6)
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  localValue4 = text2
  localValue3 = localValue3 + localValue4
  stateFlag = localValue3
  localValue3 = AddTextEntry
  localValue4 = "HELP_TEXT_BUFFER"
  localValue5 = localValue1 or localValue5
  if not localValue1 then
    localValue5 = ""
  end
  localValue3(localValue4, localValue5)
  localValue3 = BeginTextCommandDisplayHelp
  localValue4 = "STRING"
  localValue3(localValue4)
  localValue3 = AddTextComponentSubstringTextLabel
  localValue4 = "HELP_TEXT_BUFFER"
  localValue3(localValue4)
  if localValue2 then
    localValue3 = EndTextCommandDisplayHelp
    localValue4 = 0
    localValue5 = false
    localValue6 = true
    localValue7 = -1
    localValue3(localValue4, localValue5, localValue6, localValue7)
  else
    localValue3 = EndTextCommandDisplayHelp
    localValue4 = 0
    localValue5 = false
    localValue6 = false
    localValue7 = -1
    localValue3(localValue4, localValue5, localValue6, localValue7)
  end
end
drawNativeNotification = cmgOperation3

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1) ===
function cmgOperation3(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = BeginTextCommandPrint
  localValue3 = "STRING"
  localValue2(localValue3)
  localValue2 = AddTextComponentSubstringPlayerName
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = EndTextCommandPrint
  localValue3 = 1000
  localValue4 = true
  localValue2(localValue3, localValue4)
end
drawNativeText = cmgOperation3

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3
  localValue1 = BeginTextCommandPrint
  localValue2 = "STRING"
  localValue1(localValue2)
  localValue1 = AddTextComponentSubstringPlayerName
  localValue2 = ""
  localValue1(localValue2)
  localValue1 = EndTextCommandPrint
  localValue2 = 1
  localValue3 = true
  localValue1(localValue2, localValue3)
end
clearNativeText = cmgOperation3
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8) ===
function cmgOperation4(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
  local gameTime, text6, text, tableHelper, dataCollection, workingValue, hashValue, workingValue2, stateFlag2
  gameTime = CMG
  gameTime = gameTime.loadModel
  text6 = localValue1
  gameTime = gameTime(text6)
  text6 = CreateVehicle
  text = gameTime
  tableHelper = localValue2
  dataCollection = localValue3
  workingValue = localValue4
  hashValue = localValue5
  workingValue2 = localValue7 or workingValue2
  if not localValue7 then
    workingValue2 = false
  end
  stateFlag2 = localValue8 or stateFlag2
  if not localValue8 then
    stateFlag2 = false
  end
  -- Beginner: result below is vehicleEntity.
  text6 = text6(text, tableHelper, dataCollection, workingValue, hashValue, workingValue2, stateFlag2)
  text = SetModelAsNoLongerNeeded
  tableHelper = gameTime
  text(tableHelper)
  text = SetEntityAsMissionEntity
  tableHelper = text6
  dataCollection = false
  workingValue = false
  text(tableHelper, dataCollection, workingValue)
  text = CMG
  text = text.initLocalVehicle
  tableHelper = text6
  text(tableHelper)
  text = SetModelAsNoLongerNeeded
  tableHelper = gameTime
  text(tableHelper)
  if localValue6 then
    text = SetPedIntoVehicle
    tableHelper = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    tableHelper = tableHelper()
    dataCollection = text6
    workingValue = -1
    text(tableHelper, dataCollection, workingValue)
  end
  text = CMG
  text = text.setVehicleFuel
  tableHelper = text6
  dataCollection = 100
  text(tableHelper, dataCollection)
  text = ModifyVehicleTopSpeed
  tableHelper = text6
  dataCollection = 1.0
  text(tableHelper, dataCollection)
  return text6
end
cmgOperation3.spawnVehicle = cmgOperation4
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2, localValue3, localValue4) ===
function cmgOperation4(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, gameTime
  localValue5 = SetVehicleMod
  localValue6 = localValue1
  localValue7 = localValue2
  localValue8 = localValue3
  gameTime = localValue4
  localValue5(localValue6, localValue7, localValue8, gameTime)
  localValue5 = CMG
  localValue5 = localValue5.getTunableValue
  localValue6 = "speed_mods_hack"
  localValue5 = localValue5(localValue6)
  if localValue5 then
    localValue5 = ModifyVehicleTopSpeed
    localValue6 = localValue1
    localValue7 = 1.0
    localValue5(localValue6, localValue7)
  end
  localValue5 = GetModTextLabel
  localValue6 = localValue1
  localValue7 = localValue2
  localValue8 = localValue3
  localValue5 = localValue5(localValue6, localValue7, localValue8)
  if localValue5 then
    localValue6 = CMG
    localValue6 = localValue6.requestStreamFileClient
    localValue7 = localValue5
    localValue6(localValue7)
  end
end
cmgOperation3.setVehicleMod = cmgOperation4
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1) ===
function cmgOperation4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = localValue1
  localValue3 = type
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if "string" == localValue3 then
    localValue3 = GetHashKey
    localValue4 = localValue1
    -- Beginner: result below is hash.
    localValue3 = localValue3(localValue4)
    localValue2 = localValue3
  end
  localValue3 = RequestWeaponAsset
  localValue4 = localValue2
  localValue5 = 31
  localValue6 = 0
  localValue3(localValue4, localValue5, localValue6)
  while true do
    localValue3 = HasWeaponAssetLoaded
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if localValue3 then
      break
    end
    localValue3 = Wait
    localValue4 = 0
    localValue3(localValue4)
  end
  return localValue2
end
cmgOperation3.loadWeaponAsset = cmgOperation4
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2, localValue3, localValue4) ===
function cmgOperation4(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, gameTime, text6, text, tableHelper, dataCollection, workingValue
  localValue5 = CMG
  localValue5 = localValue5.loadWeaponAsset
  localValue6 = localValue1
  localValue5 = localValue5(localValue6)
  localValue6 = CreateWeaponObject
  localValue7 = localValue5
  localValue8 = 0
  gameTime = localValue2
  text6 = localValue3
  text = localValue4
  tableHelper = true
  dataCollection = 0
  workingValue = 0
  localValue6 = localValue6(localValue7, localValue8, gameTime, text6, text, tableHelper, dataCollection, workingValue)
  return localValue6
end
cmgOperation3.spawnWeaponObject = cmgOperation4
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1) ===
function cmgOperation4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, gameTime, text6
  localValue2 = GetActivePlayers
  localValue2 = localValue2()
  localValue3 = pairs
  localValue4 = localValue2
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    gameTime = GetPlayerPed
    text6 = localValue8
    -- Beginner: result below is playerPed.
    gameTime = gameTime(text6)
    if localValue1 == gameTime then
      gameTime = GetPlayerServerId
      text6 = localValue8
      -- Beginner: result below is serverId.
      gameTime = gameTime(text6)
      return gameTime
    end
  end
  localValue3 = nil
  return localValue3
end
cmgOperation3.getPedServerId = cmgOperation4
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1) ===
function cmgOperation4(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = SetNetworkIdExistsOnAllMachines
  localValue3 = localValue1
  localValue4 = true
  localValue2(localValue3, localValue4)
  localValue2 = SetNetworkIdCanMigrate
  localValue3 = localValue1
  localValue4 = false
  localValue2(localValue3, localValue4)
  localValue2 = NetworkUseHighPrecisionBlending
  localValue3 = localValue1
  localValue4 = true
  localValue2(localValue3, localValue4)
end
cmgOperation3.syncNetworkId = cmgOperation4
cmgOperation3 = Citizen
cmgOperation3 = cmgOperation3.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, localValue3
  localValue1 = HasStreamedTextureDictLoaded
  localValue2 = "timerbars"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    localValue1 = RequestStreamedTextureDict
    localValue2 = "timerbars"
    localValue3 = false
    localValue1(localValue2, localValue3)
    while true do
      localValue1 = HasStreamedTextureDictLoaded
      localValue2 = "timerbars"
      localValue1 = localValue1(localValue2)
      if localValue1 then
        break
      end
      localValue1 = Wait
      localValue2 = 0
      localValue1(localValue2)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation3(cmgOperation4)

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6) ===
function cmgOperation3(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6)
  local localValue7, localValue8, gameTime, text6, text, tableHelper, dataCollection, workingValue, hashValue, workingValue2, stateFlag2, stringHelper, text3, workingValue3, workingValue5, stateFlag3, number, number2, number3, number4, number5, number6
  localValue7 = 0.17
  localValue8 = -0.01
  gameTime = 0.038
  text6 = 0.008
  text = 0.005
  if not localValue6 then
    localValue6 = 0.32
  end
  if not localValue4 then
    localValue4 = 0.5
  end
  tableHelper = -0.04
  dataCollection = 0.014
  workingValue = GetSafeZoneSize
  workingValue = workingValue()
  hashValue = dataCollection + workingValue
  hashValue = hashValue - localValue7
  workingValue2 = localValue7 / 2
  hashValue = hashValue + workingValue2
  workingValue2 = tableHelper + workingValue
  workingValue2 = workingValue2 - gameTime
  stateFlag2 = gameTime / 2
  workingValue2 = workingValue2 + stateFlag2
  stateFlag2 = localValue3 - 1
  stringHelper = gameTime + text
  stateFlag2 = stateFlag2 * stringHelper
  workingValue2 = workingValue2 - stateFlag2
  stateFlag2 = DrawSprite
  stringHelper = "timerbars"
  text3 = "all_black_bg"
  workingValue3 = hashValue
  workingValue5 = workingValue2
  stateFlag3 = localValue7
  number = 0.038
  number2 = 0
  number3 = 0
  number4 = 0
  number5 = 0
  number6 = 128
  stateFlag2(stringHelper, text3, workingValue3, workingValue5, stateFlag3, number, number2, number3, number4, number5, number6)
  stateFlag2 = DrawGTAText
  stringHelper = localValue1
  text3 = workingValue - localValue7
  text3 = text3 + 0.06
  workingValue3 = workingValue2 - text6
  workingValue5 = localValue6
  stateFlag2(stringHelper, text3, workingValue3, workingValue5)
  stateFlag2 = DrawGTAText
  stringHelper = string
  stringHelper = stringHelper.upper
  text3 = localValue2
  stringHelper = stringHelper(text3)
  text3 = workingValue - localValue8
  workingValue3 = localValue5 or workingValue3
  if not localValue5 then
    workingValue3 = 0
  end
  text3 = text3 + workingValue3
  workingValue3 = workingValue2 - 0.0175
  workingValue5 = localValue4
  stateFlag3 = true
  number = localValue7 / 2
  stateFlag2(stringHelper, text3, workingValue3, workingValue5, stateFlag3, number)
end
DrawGTATimerBar = cmgOperation3

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, gameTime, text6
  localValue1 = {}
  localValue2 = ipairs
  localValue3 = GetActivePlayers
  localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, gameTime, text6 = localValue3()
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, gameTime, text6)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = table
    localValue8 = localValue8.insert
    gameTime = localValue1
    text6 = localValue7
    localValue8(gameTime, text6)
  end
  return localValue1
end
GetPlayers = cmgOperation3

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1) ===
function cmgOperation3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, gameTime, text6, text, tableHelper, dataCollection, workingValue, hashValue, workingValue2
  localValue2 = GetPlayers
  localValue2 = localValue2()
  localValue3 = -1
  localValue4 = -1
  localValue5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  localValue6 = GetEntityCoords
  localValue7 = localValue5
  localValue8 = false
  -- Beginner: result below is entityCoords.
  localValue6 = localValue6(localValue7, localValue8)
  localValue7 = ipairs
  localValue8 = localValue2
  localValue7, localValue8, gameTime, text6 = localValue7(localValue8)
  for text, tableHelper in localValue7, localValue8, gameTime, text6 do
    dataCollection = GetPlayerPed
    workingValue = tableHelper
    -- Beginner: result below is playerPed.
    dataCollection = dataCollection(workingValue)
    if dataCollection ~= localValue5 then
      workingValue = GetEntityCoords
      hashValue = GetPlayerPed
      workingValue2 = tableHelper
      -- Beginner: result below is playerPed.
      hashValue = hashValue(workingValue2)
      workingValue2 = false
      -- Beginner: result below is entityCoords.
      workingValue = workingValue(hashValue, workingValue2)
      hashValue = workingValue - localValue6
      hashValue = #hashValue
      if -1 == localValue3 or localValue3 > hashValue then
        localValue4 = tableHelper
        localValue3 = hashValue
      end
    end
  end
  if localValue1 >= localValue3 then
    return localValue4
  else
    localValue7 = nil
    return localValue7
  end
end
GetClosestPlayer = cmgOperation3
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2) ===
function cmgOperation4(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = math
  localValue3 = localValue3.randomseed
  localValue4 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue4 = localValue4()
  localValue5 = math
  localValue5 = localValue5.random
  localValue5 = localValue5()
  localValue4 = localValue4 * localValue5
  localValue4 = localValue4 * 2
  localValue3(localValue4)
  localValue3 = math
  localValue3 = localValue3.random
  localValue4 = localValue1
  localValue5 = localValue2
  return localValue3(localValue4, localValue5)
end
cmgOperation3.randomNum = cmgOperation4
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7) ===
function cmgOperation4(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  local localValue8, gameTime, text6
  localValue8 = notify
  gameTime = {}
  gameTime.message = localValue3
  gameTime.type = "error"
  text6 = localValue4 or text6
  if not localValue4 then
    text6 = ""
  end
  gameTime.title = text6
  gameTime.duration = 8000
  -- Beginner: Show a notification to the player.
  localValue8(gameTime)
end
cmgOperation3.notifyPicture = cmgOperation4
cmgOperation3 = RegisterNetEvent
cmgOperation4 = "6950d35d8a"
cmgOperation5 = CMG
cmgOperation5 = cmgOperation5.notifyPicture
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6950d35d8a".
cmgOperation3(cmgOperation4, cmgOperation5)
cmgOperation3 = 0
cmgOperation4 = CMG
-- Beginner: this function handles network event "6950d35d8a".

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: none) ===
function cmgOperation5()
  local localValue1, localValue2
  localValue1 = cmgOperation3
  return localValue1
end
cmgOperation4.getSoundEventCode = cmgOperation5
cmgOperation4 = TriggerServerEvent
cmgOperation5 = "eb5c18625c"
-- Beginner: Tell the server that something happened or request a server-side action. Event/command: "eb5c18625c".
cmgOperation4(cmgOperation5)
cmgOperation4 = RegisterNetEvent
cmgOperation5 = "3ca0ceef14"
-- Beginner: this function handles network event "3ca0ceef14".

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: localValue1) ===
function cmgOperation6(localValue1)
  local localValue2
  cmgOperation3 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3ca0ceef14".
cmgOperation4(cmgOperation5, cmgOperation6)
cmgOperation4 = RegisterNetEvent
cmgOperation5 = "6b24c7d390"
-- Beginner: this function handles network event "6b24c7d390".

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation6(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6
  localValue4 = CMG
  localValue4 = localValue4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue4 = localValue4()
  localValue5 = localValue4 - localValue1
  localValue5 = #localValue5
  if localValue3 >= localValue5 then
    localValue5 = SendNUIMessage
    localValue6 = {}
    localValue6.transactionType = localValue2
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    localValue5(localValue6)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6b24c7d390".
cmgOperation4(cmgOperation5, cmgOperation6)
cmgOperation4 = RegisterNetEvent
cmgOperation5 = "__CMG_callback:client"
-- Beginner: this function handles network event "__CMG_callback:client".

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: localValue1, ...) ===
function cmgOperation6(localValue1, ...)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = promise
  localValue2 = localValue2.new
  localValue2 = localValue2()
  localValue3 = TriggerEvent
  localValue4 = string
  localValue4 = localValue4.format
  localValue5 = "c__CMG_callback:%s"
  localValue6 = localValue1
  localValue4 = localValue4(localValue5, localValue6)

  -- === HELPER FUNCTION: localValue5(...) ===
  function localValue5(...)
    local localValue12, workingValue4, dataCollection2, workingValue7
    localValue12 = localValue2
    workingValue4 = localValue12
    localValue12 = localValue12.resolve
    dataCollection2 = {}
    workingValue7 = ...
    dataCollection2[1] = workingValue7
    localValue12(workingValue4, dataCollection2)
  end
  localValue6, localValue7 = ...
  -- Beginner: Trigger another client-side event in this resource/framework.
  localValue3(localValue4, localValue5, localValue6, localValue7)
  localValue3 = Citizen
  localValue3 = localValue3.Await
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  localValue4 = TriggerServerEvent
  localValue5 = string
  localValue5 = localValue5.format
  localValue6 = "__CMG_callback:server:%s"
  localValue7 = localValue1
  localValue5 = localValue5(localValue6, localValue7)
  localValue6 = table
  localValue6 = localValue6.unpack
  localValue7 = localValue3
  localValue6, localValue7 = localValue6(localValue7)
  -- Beginner: Tell the server that something happened or request a server-side action.
  localValue4(localValue5, localValue6, localValue7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "__CMG_callback:client".
cmgOperation4(cmgOperation5, cmgOperation6)
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1, ...) ===
function cmgOperation5(localValue1, ...)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, gameTime
  localValue2 = assert
  localValue3 = type
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  localValue3 = "string" == localValue3
  localValue4 = "Invalid Lua type at argument #1, expected string, got "
  localValue5 = type
  localValue6 = localValue1
  localValue5 = localValue5(localValue6)
  localValue4 = localValue4 .. localValue5
  localValue2(localValue3, localValue4)
  localValue2 = promise
  localValue2 = localValue2.new
  localValue2 = localValue2()
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  localValue4 = RegisterNetEvent
  localValue5 = string
  localValue5 = localValue5.format
  localValue6 = "__CMG_callback:client:%s:%s"
  localValue7 = localValue1
  localValue8 = localValue3
  localValue5, localValue6, localValue7, localValue8, gameTime = localValue5(localValue6, localValue7, localValue8)
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue4(localValue5, localValue6, localValue7, localValue8, gameTime)
  localValue4 = AddEventHandler
  localValue5 = string
  localValue5 = localValue5.format
  localValue6 = "__CMG_callback:client:%s:%s"
  localValue7 = localValue1
  localValue8 = localValue3
  localValue5 = localValue5(localValue6, localValue7, localValue8)
  -- Beginner: this function runs when client event "__CMG_callback:client:%s:%s" fires.

  -- === HELPER FUNCTION: localValue6(...) ===
  function localValue6(...)
    local localValue12, workingValue4, dataCollection2, workingValue7
    localValue12 = localValue2
    workingValue4 = localValue12
    localValue12 = localValue12.resolve
    dataCollection2 = {}
    workingValue7 = ...
    dataCollection2[1] = workingValue7
    localValue12(workingValue4, dataCollection2)
  end
  localValue4 = localValue4(localValue5, localValue6)
  localValue5 = TriggerServerEvent
  localValue6 = "__CMG_callback:server"
  localValue7 = localValue1
  localValue8 = localValue3
  gameTime = ...
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "__CMG_callback:server".
  localValue5(localValue6, localValue7, localValue8, gameTime)
  localValue5 = Citizen
  localValue5 = localValue5.Await
  localValue6 = localValue2
  localValue5 = localValue5(localValue6)
  localValue6 = RemoveEventHandler
  localValue7 = localValue4
  localValue6(localValue7)
  localValue6 = table
  localValue6 = localValue6.unpack
  localValue7 = localValue5
  return localValue6(localValue7)
end
cmgOperation4.TriggerServerCallback = cmgOperation5
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1, localValue2) ===
function cmgOperation5(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  localValue3 = assert
  localValue4 = type
  localValue5 = localValue1
  localValue4 = localValue4(localValue5)
  localValue4 = "string" == localValue4
  localValue5 = "Invalid Lua type at argument #1, expected string, got "
  localValue6 = type
  localValue7 = localValue1
  localValue6 = localValue6(localValue7)
  localValue5 = localValue5 .. localValue6
  localValue3(localValue4, localValue5)
  localValue3 = assert
  localValue4 = type
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  localValue4 = "function" == localValue4
  localValue5 = "Invalid Lua type at argument #2, expected function, got "
  localValue6 = type
  localValue7 = localValue2
  localValue6 = localValue6(localValue7)
  localValue5 = localValue5 .. localValue6
  localValue3(localValue4, localValue5)
  localValue3 = AddEventHandler
  localValue4 = string
  localValue4 = localValue4.format
  localValue5 = "c__CMG_callback:%s"
  localValue6 = localValue1
  localValue4 = localValue4(localValue5, localValue6)
  -- Beginner: this function runs when client event "c__CMG_callback:%s" fires.

  -- === HELPER FUNCTION: localValue5(localValue12, ...) ===
  function localValue5(localValue12, ...)
    local workingValue4, dataCollection2, workingValue7
    workingValue4 = localValue12
    dataCollection2 = localValue2
    workingValue7 = ...
    dataCollection2, workingValue7 = dataCollection2(workingValue7)
    workingValue4(dataCollection2, workingValue7)
  end
  -- Beginner: Register a client-side event handler.
  localValue3(localValue4, localValue5)
end
cmgOperation4.RegisterClientCallback = cmgOperation5

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2) ===
function cmgOperation4(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, gameTime, text6, text
  localValue3 = {}
  localValue4 = pairs
  localValue5 = localValue1
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for localValue8 in localValue4, localValue5, localValue6, localValue7 do
    gameTime = table
    gameTime = gameTime.insert
    text6 = localValue3
    text = localValue8
    gameTime(text6, text)
  end
  localValue4 = table
  localValue4 = localValue4.sort
  localValue5 = localValue3
  localValue6 = localValue2
  localValue4(localValue5, localValue6)
  localValue4 = 0

  -- === HELPER FUNCTION: localValue5() ===
  function localValue5()
    local localValue12, workingValue4, dataCollection2
    localValue12 = localValue4
    localValue12 = localValue12 + 1
    localValue4 = localValue12
    workingValue4 = localValue4
    localValue12 = localValue3
    localValue12 = localValue12[workingValue4]
    if nil == localValue12 then
      localValue12 = nil
      return localValue12
    else
      workingValue4 = localValue4
      localValue12 = localValue3
      localValue12 = localValue12[workingValue4]
      dataCollection2 = localValue4
      workingValue4 = localValue3
      dataCollection2 = workingValue4[dataCollection2]
      workingValue4 = localValue1
      workingValue4 = workingValue4[dataCollection2]
      return localValue12, workingValue4
    end
  end
  return localValue5
end
pairsByKeys = cmgOperation4

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1) ===
function cmgOperation4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, gameTime, text6, text
  localValue2 = {}
  localValue3 = pairsByKeys
  localValue4 = localValue1
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    gameTime = table
    gameTime = gameTime.insert
    text6 = localValue2
    text = {}
    text.title = localValue7
    text.value = localValue8
    gameTime(text6, text)
  end
  localValue1 = localValue2
  return localValue1
end
sortAlphabetically = cmgOperation4
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1, localValue2) ===
function cmgOperation5(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  if nil == localValue2 then
    localValue2 = ""
  end
  localValue3 = 0
  localValue4 = DoesEntityExist
  localValue5 = localValue1
  localValue4 = localValue4(localValue5)
  if not localValue4 then
    localValue5 = CMG
    localValue5 = localValue5.debugLog
    localValue6 = string
    localValue6 = localValue6.format
    localValue7 = "no such entity %s"
    localValue8 = localValue2
    localValue6, localValue7, localValue8 = localValue6(localValue7, localValue8)
    localValue5(localValue6, localValue7, localValue8)
  else
    localValue5 = NetworkGetNetworkIdFromEntity
    localValue6 = localValue1
    localValue5 = localValue5(localValue6)
    localValue3 = localValue5
    if localValue3 == localValue1 then
      localValue5 = CMG
      localValue5 = localValue5.debugLog
      localValue6 = string
      localValue6 = localValue6.format
      localValue7 = "no such networked entity %s"
      localValue8 = localValue2
      localValue6, localValue7, localValue8 = localValue6(localValue7, localValue8)
      localValue5(localValue6, localValue7, localValue8)
    end
  end
  return localValue3
end
cmgOperation4.getNetId = cmgOperation5
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1, localValue2) ===
function cmgOperation5(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  if nil == localValue2 then
    localValue2 = ""
  end
  localValue3 = NetworkDoesNetworkIdExist
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue4 = CMG
    localValue4 = localValue4.debugLog
    localValue5 = string
    localValue5 = localValue5.format
    localValue6 = [[
no object by ID %s
%s]]
    localValue7 = localValue1
    localValue8 = localValue2
    localValue5, localValue6, localValue7, localValue8 = localValue5(localValue6, localValue7, localValue8)
    localValue4(localValue5, localValue6, localValue7, localValue8)
  else
    localValue4 = NetworkGetEntityFromNetworkId
    localValue5 = localValue1
    return localValue4(localValue5)
  end
end
cmgOperation4.getObjectId = cmgOperation5
cmgOperation4 = {}
cmgOperation5 = {}
cmgOperation6 = Citizen
cmgOperation6 = cmgOperation6.CreateThread

-- === HELPER FUNCTION: mathHelper() ===
function mathHelper()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, gameTime, text6, text, tableHelper, dataCollection, workingValue, hashValue, workingValue2, stateFlag2
  localValue1 = CMG
  localValue1 = localValue1.loadModule
  localValue2 = "cfg/cfg_garages"
  -- Beginner: result below is config.
  localValue1 = localValue1(localValue2)
  localValue2 = pairs
  localValue3 = localValue1.garages
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for localValue6, localValue7 in localValue2, localValue3, localValue4, localValue5 do
    localValue8 = pairs
    gameTime = localValue7
    localValue8, gameTime, text6, text = localValue8(gameTime)
    for tableHelper, dataCollection in localValue8, gameTime, text6, text do
      if "_config" ~= localValue6 then
        workingValue = dataCollection.name
        hashValue = string
        hashValue = hashValue.lower
        workingValue2 = tableHelper
        hashValue = hashValue(workingValue2)
        workingValue2 = cmgOperation4
        workingValue2 = workingValue2[hashValue]
        if not workingValue2 then
          workingValue2 = cmgOperation4
          stateFlag2 = {}
          stateFlag2.name = workingValue
          stateFlag2.garageType = localValue6
          workingValue2[hashValue] = stateFlag2
          workingValue2 = GetHashKey
          stateFlag2 = hashValue
          -- Beginner: result below is hash.
          workingValue2 = workingValue2(stateFlag2)
          stateFlag2 = cmgOperation5
          stateFlag2[workingValue2] = hashValue
        end
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation6(mathHelper)
cmgOperation6 = CMG

-- === HELPER FUNCTION: mathHelper(localValue1) ===
function mathHelper(localValue1)
  local localValue2, localValue3
  localValue2 = string
  localValue2 = localValue2.lower
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = cmgOperation4
  localValue2 = localValue3[localValue2]
  if localValue2 then
    localValue2 = string
    localValue2 = localValue2.lower
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    localValue3 = cmgOperation4
    localValue2 = localValue3[localValue2]
    localValue2 = localValue2.name
    return localValue2
  end
  localValue2 = ""
  return localValue2
end
cmgOperation6.getVehicleNameFromId = mathHelper
cmgOperation6 = CMG

-- === HELPER FUNCTION: mathHelper(localValue1) ===
function mathHelper(localValue1)
  local localValue2, localValue3
  localValue2 = string
  localValue2 = localValue2.lower
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = cmgOperation4
  localValue2 = localValue3[localValue2]
  localValue2 = localValue2.garageType
  return localValue2
end
cmgOperation6.getGarageNameFromId = mathHelper
cmgOperation6 = CMG

-- === HELPER FUNCTION: mathHelper(localValue1) ===
function mathHelper(localValue1)
  local localValue2
  localValue2 = cmgOperation5
  localValue2 = localValue2[localValue1]
  return localValue2
end
cmgOperation6.getVehicleIdFromModel = mathHelper
cmgOperation6 = math
cmgOperation6 = cmgOperation6.rad
mathHelper = math
mathHelper = mathHelper.cos
mathHelper2 = math
mathHelper2 = mathHelper2.sin
mathHelper3 = math
mathHelper3 = mathHelper3.abs
cmgOperation7 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation8; parameters: localValue1) ===
function cmgOperation8(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, gameTime
  localValue2 = cmgOperation6
  localValue3 = localValue1.x
  localValue2 = localValue2(localValue3)
  localValue3 = cmgOperation6
  localValue4 = localValue1.z
  localValue3 = localValue3(localValue4)
  localValue4 = vector3
  localValue5 = mathHelper2
  localValue6 = localValue3
  localValue5 = localValue5(localValue6)
  localValue5 = -localValue5
  localValue6 = mathHelper3
  localValue7 = mathHelper
  localValue8 = localValue2
  localValue7, localValue8, gameTime = localValue7(localValue8)
  localValue6 = localValue6(localValue7, localValue8, gameTime)
  localValue5 = localValue5 * localValue6
  localValue6 = mathHelper
  localValue7 = localValue3
  localValue6 = localValue6(localValue7)
  localValue7 = mathHelper3
  localValue8 = mathHelper
  gameTime = localValue2
  localValue8, gameTime = localValue8(gameTime)
  localValue7 = localValue7(localValue8, gameTime)
  localValue6 = localValue6 * localValue7
  localValue7 = mathHelper2
  localValue8 = localValue2
  localValue7, localValue8, gameTime = localValue7(localValue8)
  return localValue4(localValue5, localValue6, localValue7, localValue8, gameTime)
end
cmgOperation7.rotationToDirection = cmgOperation8
cmgOperation7 = {}
cmgOperation7.b_116 = "WheelMouseMove.Up"
cmgOperation7.b_115 = "WheelMouseMove.Up"
cmgOperation7.b_100 = "MouseClick.LeftClick"
cmgOperation7.b_101 = "MouseClick.RightClick"
cmgOperation7.b_102 = "MouseClick.MiddleClick"
cmgOperation7.b_103 = "MouseClick.ExtraBtn1"
cmgOperation7.b_104 = "MouseClick.ExtraBtn2"
cmgOperation7.b_105 = "MouseClick.ExtraBtn3"
cmgOperation7.b_106 = "MouseClick.ExtraBtn4"
cmgOperation7.b_107 = "MouseClick.ExtraBtn5"
cmgOperation7.b_108 = "MouseClick.ExtraBtn6"
cmgOperation7.b_109 = "MouseClick.ExtraBtn7"
cmgOperation7.b_110 = "MouseClick.ExtraBtn8"
cmgOperation7.b_1015 = "AltLeft"
cmgOperation7.b_1000 = "ShiftLeft"
cmgOperation7.b_2000 = "Space"
cmgOperation7.b_1013 = "ControlLeft"
cmgOperation7.b_1014 = "ControlRight"
cmgOperation7.b_140 = "Numpad4"
cmgOperation7.b_142 = "Numpad6"
cmgOperation7.b_144 = "Numpad8"
cmgOperation7.b_141 = "Numpad5"
cmgOperation7.b_143 = "Numpad7"
cmgOperation7.b_145 = "Numpad9"
cmgOperation7.b_200 = "Insert"
cmgOperation7.b_1012 = "CapsLock"
cmgOperation7.b_170 = "F1"
cmgOperation7.b_171 = "F2"
cmgOperation7.b_172 = "F3"
cmgOperation7.b_173 = "F4"
cmgOperation7.b_174 = "F5"
cmgOperation7.b_175 = "F6"
cmgOperation7.b_176 = "F7"
cmgOperation7.b_177 = "F8"
cmgOperation7.b_178 = "F9"
cmgOperation7.b_179 = "F10"
cmgOperation7.b_180 = "F11"
cmgOperation7.b_181 = "F12"
cmgOperation7.b_194 = "ArrowUp"
cmgOperation7.b_195 = "ArrowDown"
cmgOperation7.b_196 = "ArrowLeft"
cmgOperation7.b_197 = "ArrowRight"
cmgOperation7.b_1003 = "Enter"
cmgOperation7.b_1004 = "Backspace"
cmgOperation7.b_198 = "Delete"
cmgOperation7.b_199 = "Escape"
cmgOperation7.b_1009 = "PageUp"
cmgOperation7.b_1010 = "PageDown"
cmgOperation7.b_1008 = "Home"
cmgOperation7.b_131 = "NumpadAdd"
cmgOperation7.b_130 = "NumpadSubstract"
cmgOperation7.b_1002 = "CapsLock"
cmgOperation7.b_211 = "Insert"
cmgOperation7.b_210 = "Delete"
cmgOperation7.b_212 = "End"
cmgOperation7.b_1055 = "Home"
cmgOperation7.b_1056 = "PageUp"
cmgOperation8 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: localValue1) ===
function cmgOperation9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = string
  localValue2 = localValue2.find
  localValue3 = localValue1
  localValue4 = "t_"
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue2 = select
    localValue3 = 1
    localValue4 = string
    localValue4 = localValue4.gsub
    localValue5 = localValue1
    localValue6 = "t_"
    localValue7 = ""
    localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5, localValue6, localValue7)
    return localValue2(localValue3, localValue4, localValue5, localValue6, localValue7)
  else
    localValue2 = cmgOperation7
    localValue2 = localValue2[localValue1]
    return localValue2
  end
end
cmgOperation8.getLocalKeyNameFromButton = cmgOperation9
cmgOperation8 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: localValue1) ===
function cmgOperation9(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = string
  localValue2 = localValue2.find
  localValue3 = localValue1
  localValue4 = "t_"
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue2 = select
    localValue3 = 1
    localValue4 = string
    localValue4 = localValue4.gsub
    localValue5 = localValue1
    localValue6 = "t_"
    localValue7 = ""
    localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5, localValue6, localValue7)
    return localValue2(localValue3, localValue4, localValue5, localValue6, localValue7)
  else
    localValue2 = "SpecialCharacter."
    localValue3 = cmgOperation7
    localValue3 = localValue3[localValue1]
    localValue2 = localValue2 .. localValue3
    return localValue2
  end
end
cmgOperation8.getJavascriptKeyNameFromButton = cmgOperation9
cmgOperation8 = false
cmgOperation9 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, gameTime, text6, text, tableHelper, dataCollection, workingValue, hashValue, workingValue2
  while true do
    localValue3 = cmgOperation8
    if not localValue3 then
      break
    end
    localValue3 = Wait
    localValue4 = 0
    localValue3(localValue4)
  end
  localValue3 = true
  cmgOperation8 = localValue3
  localValue3 = AddTextEntry
  localValue4 = "WARNING_TITLE"
  localValue5 = localValue1
  localValue3(localValue4, localValue5)
  localValue3 = AddTextEntry
  localValue4 = "WARNING_SUBTITLE"
  localValue5 = localValue2
  localValue3(localValue4, localValue5)
  localValue3 = false
  while true do
    localValue4 = SetWarningMessageWithAlert
    localValue5 = "WARNING_TITLE"
    localValue6 = "WARNING_SUBTITLE"
    localValue7 = 36
    localValue8 = 0
    gameTime = ""
    text6 = false
    text = -1
    tableHelper = 0
    dataCollection = "FM_NXT_RAC"
    workingValue = "QM_NO_1"
    hashValue = true
    workingValue2 = 0
    localValue4(localValue5, localValue6, localValue7, localValue8, gameTime, text6, text, tableHelper, dataCollection, workingValue, hashValue, workingValue2)
    localValue4 = IsDisabledControlJustPressed
    localValue5 = 2
    localValue6 = 215
    localValue4 = localValue4(localValue5, localValue6)
    if localValue4 then
      localValue3 = true
      break
    else
      localValue4 = IsDisabledControlJustPressed
      localValue5 = 2
      localValue6 = 200
      localValue4 = localValue4(localValue5, localValue6)
      if localValue4 then
        break
      end
    end
    localValue4 = Wait
    localValue5 = 0
    localValue4(localValue5)
  end
  localValue4 = Wait
  localValue5 = 0
  localValue4(localValue5)
  localValue4 = false
  cmgOperation8 = localValue4
  return localValue3
end
cmgOperation9.showWarningMessage = workingValue6
cmgOperation9 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue6(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, gameTime, text6, text, tableHelper, dataCollection, workingValue, hashValue, workingValue2, stateFlag2
  while true do
    localValue5 = cmgOperation8
    if not localValue5 then
      break
    end
    localValue5 = Wait
    localValue6 = 0
    localValue5(localValue6)
  end
  localValue5 = true
  cmgOperation8 = localValue5
  localValue5 = AddTextEntry
  localValue6 = "WARNING_TITLE"
  localValue7 = localValue1
  localValue5(localValue6, localValue7)
  localValue5 = AddTextEntry
  localValue6 = "WARNING_SUBTITLE"
  localValue7 = localValue2
  localValue5(localValue6, localValue7)
  while true do
    localValue5 = SetWarningMessageWithAlert
    localValue6 = "WARNING_TITLE"
    localValue7 = "WARNING_SUBTITLE"
    localValue8 = localValue3
    gameTime = 0
    text6 = ""
    text = false
    tableHelper = -1
    dataCollection = 0
    workingValue = "FM_NXT_RAC"
    hashValue = "QM_NO_1"
    workingValue2 = true
    stateFlag2 = 0
    localValue5(localValue6, localValue7, localValue8, gameTime, text6, text, tableHelper, dataCollection, workingValue, hashValue, workingValue2, stateFlag2)
    localValue5 = localValue4
    localValue5 = localValue5()
    if localValue5 then
      break
    end
    localValue5 = Wait
    localValue6 = 0
    localValue5(localValue6)
  end
  localValue5 = Wait
  localValue6 = 0
  localValue5(localValue6)
  localValue5 = false
  cmgOperation8 = localValue5
end
cmgOperation9.showWarningMessageAdvanced = workingValue6
cmgOperation9 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, gameTime, text6
  localValue3 = type
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if "table" == localValue3 then
    localValue3 = type
    localValue4 = localValue2
    localValue3 = localValue3(localValue4)
    if "function" == localValue3 then
      goto continueAtStep13
    end
  end
  localValue3 = nil
  localValue4 = nil
  return localValue3, localValue4
  ::continueAtStep13::
  localValue3 = ipairs
  localValue4 = localValue1
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    gameTime = localValue2
    text6 = localValue8
    gameTime = gameTime(text6)
    if gameTime then
      gameTime = localValue8
      text6 = localValue7
      return gameTime, text6
    end
  end
  localValue3 = nil
  localValue4 = nil
  return localValue3, localValue4
end
cmgOperation9.findByPredicate = workingValue6
cmgOperation9 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, localValue3, localValue4
  while true do
    localValue1 = Wait
    localValue2 = 100
    localValue1(localValue2)
    localValue1 = stateFlag
    if 0 ~= localValue1 then
      localValue1 = false
      localValue2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue2 = localValue2()
      localValue3 = stateFlag
      if localValue2 >= localValue3 then
        localValue1 = true
      else
        localValue2 = GetResourceState
        localValue3 = "chat"
        localValue2 = localValue2(localValue3)
        if "started" == localValue2 then
          localValue2 = pcall

          -- === HELPER FUNCTION: localValue3() ===
          function localValue3()
            local localValue12, workingValue4
            localValue12 = exports
            localValue12 = localValue12.chat
            workingValue4 = localValue12
            localValue12 = localValue12.isChatActive
            return localValue12(workingValue4)
          end
          localValue2, localValue3 = localValue2(localValue3)
          if localValue2 and localValue3 then
            localValue1 = true
          end
        end
      end
      if localValue1 then
        localValue2 = 0
        stateFlag = localValue2
        localValue2 = CMG
        localValue2 = localValue2.showDisplay
        localValue3 = "chat"
        localValue4 = cmgOperation2
        localValue2(localValue3, localValue4)
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgOperation9(workingValue6)

-- === HELPER FUNCTION (decompiler name: cmgOperation9; parameters: localValue1) ===
function cmgOperation9(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = BeginTextCommandPrint
  localValue3 = "STRING"
  localValue2(localValue3)
  localValue2 = AddTextComponentSubstringPlayerName
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = EndTextCommandPrint
  localValue3 = 1000
  localValue4 = true
  localValue2(localValue3, localValue4)
end
subtitleText = cmgOperation9
