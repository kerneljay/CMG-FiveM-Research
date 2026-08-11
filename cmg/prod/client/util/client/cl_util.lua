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
local cmgCall, textValue4, textValue5, dataTable3, numberValue7, workValue8, workValue9, workValue10, workValue11, numberValue8, cmgCall2, textValue2, flag, cmgCall3, cmgCall4, cmgCall5, cmgCall6, mathHelper, mathHelper2, mathHelper3, cmgCall7, cmgCall8, cmgCall9, workValue6
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue4 = "cfg/cfg_attachments"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue4)

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1, arg2, arg3) ===
function textValue4(arg1, arg2, arg3)
  local arg4
  arg4 = arg2 or arg4
  arg4 = arg3 or arg4
  if (not (arg1 < arg2) or not arg2) and (not (arg3 < arg1) or not arg3) then
    arg4 = arg1
  end
  return arg4
end
Clamp = textValue4

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1) ===
function textValue4(arg1)
  local arg2, arg3, arg4, arg5
  arg3 = arg1
  arg2 = arg1.sub
  arg4 = 1
  arg5 = 3
  arg2 = arg2(arg3, arg4, arg5)
  if "~y~" == arg2 then
    arg4 = arg1
    arg3 = arg1.sub
    arg5 = 4
    arg3 = arg3(arg4, arg5)
    arg4 = "warn"
    return arg3, arg4
  elseif "~r~" == arg2 then
    arg4 = arg1
    arg3 = arg1.sub
    arg5 = 4
    arg3 = arg3(arg4, arg5)
    arg4 = "error"
    return arg3, arg4
  elseif "~g~" == arg2 then
    arg4 = arg1
    arg3 = arg1.sub
    arg5 = 4
    arg3 = arg3(arg4, arg5)
    arg4 = "success"
    return arg3, arg4
  elseif "~b~" == arg2 then
    arg4 = arg1
    arg3 = arg1.sub
    arg5 = 4
    arg3 = arg3(arg4, arg5)
    arg4 = "blue"
    return arg3, arg4
  elseif "~o~" == arg2 then
    arg4 = arg1
    arg3 = arg1.sub
    arg5 = 4
    arg3 = arg3(arg4, arg5)
    arg4 = "warn"
    return arg3, arg4
  elseif "~p~" == arg2 then
    arg4 = arg1
    arg3 = arg1.sub
    arg5 = 4
    arg3 = arg3(arg4, arg5)
    arg4 = "info"
    return arg3, arg4
  elseif "~q~" == arg2 then
    arg4 = arg1
    arg3 = arg1.sub
    arg5 = 4
    arg3 = arg3(arg4, arg5)
    arg4 = "pink"
    return arg3, arg4
  else
    arg3 = arg1
    arg4 = "info"
    return arg3, arg4
  end
end
textValue5 = " Press F11 to set a waypoint."
dataTable3 = {}
numberValue7 = 0

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: none) ===
function workValue8()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  arg2 = dataTable3
  arg2 = #arg2
  arg3 = 1
  arg4 = -1
  for arg5 = arg2, arg3, arg4 do
    arg6 = dataTable3
    arg6 = arg6[arg5]
    arg6 = arg6.expiresAt
    if arg1 >= arg6 then
      arg6 = table
      arg6 = arg6.remove
      arg7 = dataTable3
      arg8 = arg5
      arg6(arg7, arg8)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: none) ===
function workValue9()
  local arg1, arg2, arg3
  arg1 = workValue8
  arg1()
  arg1 = dataTable3
  arg1 = arg1[1]
  if not arg1 then
    arg2 = nil
    return arg2
  end
  arg2 = {}
  arg3 = arg1.x
  arg2.x = arg3
  arg3 = arg1.y
  arg2.y = arg3
  arg3 = arg1.z
  arg2.z = arg3
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1, arg2, arg3, arg4) ===
function workValue10(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, gameTime
  arg5 = numberValue7
  arg5 = arg5 + 1
  numberValue7 = arg5
  arg5 = table
  arg5 = arg5.insert
  arg6 = dataTable3
  arg7 = 1
  arg8 = {}
  gameTime = numberValue7
  arg8.id = gameTime
  arg8.x = arg1
  arg8.y = arg2
  arg8.z = arg3
  gameTime = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  gameTime = gameTime()
  gameTime = gameTime + arg4
  arg8.expiresAt = gameTime
  arg5(arg6, arg7, arg8)
  while true do
    arg5 = dataTable3
    arg5 = #arg5
    if not (arg5 > 8) then
      break
    end
    arg5 = table
    arg5 = arg5.remove
    arg6 = dataTable3
    arg5(arg6)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: arg1) ===
function workValue11(arg1)
  local arg2, arg3, arg4
  arg2 = AddTextEntry
  arg3 = "CMG_LEGACY_NOTIFY"
  arg4 = arg1
  arg2(arg3, arg4)
  arg2 = BeginTextCommandThefeedPost
  arg3 = "STRING"
  arg2(arg3)
  arg2 = AddTextComponentSubstringTextLabel
  arg3 = "CMG_LEGACY_NOTIFY"
  arg2(arg3)
  arg2 = EndTextCommandThefeedPostTicker
  arg3 = true
  arg4 = false
  arg2(arg3, arg4)
end

-- === HELPER FUNCTION (decompiler name: numberValue8; parameters: arg1) ===
function numberValue8(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, gameTime
  arg2 = CMG
  arg2 = arg2.isLegacyHudEnabled
  arg2 = arg2()
  if arg2 then
    arg2 = type
    arg3 = arg1
    arg2 = arg2(arg3)
    if "string" == arg2 then
      arg2 = workValue11
      arg3 = arg1
      arg2(arg3)
    else
      arg2 = type
      arg3 = arg1
      arg2 = arg2(arg3)
      if "table" == arg2 then
        arg2 = arg1.message
        if not arg2 then
          arg2 = ""
        end
        arg3 = arg1.title
        if arg3 then
          arg3 = arg1.title
          if "" ~= arg3 then
            arg3 = arg1.title
            arg4 = "\n"
            arg5 = arg2
            arg3 = arg3 .. arg4 .. arg5
            arg2 = arg3
          end
        end
        arg3 = arg1.position
        arg4 = type
        arg5 = arg3
        arg4 = arg4(arg5)
        if "vector3" ~= arg4 then
          arg4 = type
          arg5 = arg3
          arg4 = arg4(arg5)
          if "vector4" ~= arg4 then
            goto flow_label_68
          end
        end
        arg4 = string
        arg4 = arg4.find
        arg5 = arg2
        arg6 = "Press F11 to set a waypoint"
        arg7 = 1
        arg8 = true
        arg4 = arg4(arg5, arg6, arg7, arg8)
        if not arg4 then
          arg4 = arg2
          arg5 = textValue5
          arg4 = arg4 .. arg5
          arg2 = arg4
        end
        arg4 = workValue10
        arg5 = arg3.x
        arg6 = arg3.y
        arg7 = arg3.z
        arg8 = arg1.duration
        if not arg8 then
          arg8 = 8000
        end
        arg4(arg5, arg6, arg7, arg8)
        ::flow_label_68::
        arg4 = workValue11
        arg5 = arg2
        arg4(arg5)
      end
    end
    return
  end
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "string" == arg2 then
    arg2 = textValue4
    arg3 = arg1
    arg2, arg3 = arg2(arg3)
    arg4 = CMG
    arg4 = arg4.sendHudNuiMessage
    arg5 = "HUD_NOTIFY"
    arg6 = {}
    arg6.action = "notify"
    arg6.message = arg2
    arg6.type = arg3
    arg6.title = ""
    arg6.duration = 8000
    arg6.icon = ""
    arg6.sound = "notification"
    arg4(arg5, arg6)
  else
    arg2 = type
    arg3 = arg1
    arg2 = arg2(arg3)
    if "table" == arg2 then
      arg2 = arg1.message
      if not arg2 then
        arg2 = ""
      end
      arg3 = arg1.duration
      if not arg3 then
        arg3 = 8000
      end
      arg4 = arg1.position
      arg5 = type
      arg6 = arg4
      arg5 = arg5(arg6)
      if "vector3" ~= arg5 then
        arg5 = type
        arg6 = arg4
        arg5 = arg5(arg6)
        if "vector4" ~= arg5 then
          goto flow_label_137
        end
      end
      arg5 = string
      arg5 = arg5.find
      arg6 = arg2
      arg7 = "Press F11 to set a waypoint"
      arg8 = 1
      gameTime = true
      arg5 = arg5(arg6, arg7, arg8, gameTime)
      if not arg5 then
        arg5 = arg2
        arg6 = textValue5
        arg5 = arg5 .. arg6
        arg2 = arg5
      end
      arg5 = workValue10
      arg6 = arg4.x
      arg7 = arg4.y
      arg8 = arg4.z
      gameTime = arg3
      arg5(arg6, arg7, arg8, gameTime)
      ::flow_label_137::
      arg5 = CMG
      arg5 = arg5.sendHudNuiMessage
      arg6 = "HUD_NOTIFY"
      arg7 = {}
      arg7.action = "notify"
      arg7.message = arg2
      arg8 = arg1.type
      if not arg8 then
        arg8 = "info"
      end
      arg7.type = arg8
      arg8 = arg1.title
      if not arg8 then
        arg8 = ""
      end
      arg7.title = arg8
      arg7.duration = arg3
      arg8 = arg1.icon
      if not arg8 then
        arg8 = ""
      end
      arg7.icon = arg8
      arg8 = arg1.sound
      if not arg8 then
        arg8 = "notification"
      end
      arg7.sound = arg8
      arg5(arg6, arg7)
    end
  end
end
notify = numberValue8
numberValue8 = RegisterCommand
cmgCall2 = "cmgNotifyWaypoint"
-- Beginner: this function is the command handler for "cmgNotifyWaypoint".

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, arg4
  arg1 = workValue9
  arg1 = arg1()
  if not arg1 then
    return
  end
  arg2 = SetNewWaypoint
  arg3 = arg1.x
  arg4 = arg1.y
  arg2(arg3, arg4)
end
flag = false
-- Beginner: Register a chat/console command. Event/command: "cmgNotifyWaypoint".
numberValue8(cmgCall2, textValue2, flag)
numberValue8 = RegisterKeyMapping
cmgCall2 = "cmgNotifyWaypoint"
textValue2 = "Set notification waypoint"
flag = "keyboard"
cmgCall3 = "F11"
-- Beginner: Bind a command to a keyboard/controller key.
numberValue8(cmgCall2, textValue2, flag, cmgCall3)
numberValue8 = 20000
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, gameTime
  arg2 = nil
  arg3 = type
  arg4 = arg1
  arg3 = arg3(arg4)
  if "string" ~= arg3 then
    arg2 = arg1
  else
    arg3 = GetHashKey
    arg4 = arg1
    -- Beginner: result below is hash.
    arg3 = arg3(arg4)
    arg2 = arg3
  end
  arg3 = IsModelInCdimage
  arg4 = arg2
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = HasModelLoaded
    arg4 = arg2
    arg3 = arg3(arg4)
    if not arg3 then
      arg3 = RequestModel
      arg4 = arg2
      arg3(arg4)
      arg3 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg3 = arg3()
      while true do
        arg4 = HasModelLoaded
        arg5 = arg2
        arg4 = arg4(arg5)
        if arg4 then
          break
        end
        arg4 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        arg4 = arg4()
        arg4 = arg4 - arg3
        arg5 = numberValue8
        if arg4 >= arg5 then
          arg4 = print
          arg5 = string
          arg5 = arg5.format
          arg6 = "CMG.loadModel: timed out after %d ms waiting for model %s (hash %d)"
          arg7 = numberValue8
          arg8 = tostring
          gameTime = arg1
          arg8 = arg8(gameTime)
          gameTime = arg2
          arg5, arg6, arg7, arg8, gameTime = arg5(arg6, arg7, arg8, gameTime)
          arg4(arg5, arg6, arg7, arg8, gameTime)
          arg4 = nil
          return arg4
        end
        arg4 = RequestModel
        arg5 = arg2
        arg4(arg5)
        arg4 = Wait
        arg5 = 0
        arg4(arg5)
      end
    end
    return arg2
  else
    arg3 = nil
    return arg3
  end
end
cmgCall2.loadModel = textValue2
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = DoesAnimDictExist
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = print
    arg3 = "Anim dict "
    arg4 = arg1
    arg5 = " does not exist!"
    arg3 = arg3 .. arg4 .. arg5
    arg2(arg3)
    arg2 = ""
    return arg2
  end
  arg2 = HasAnimDictLoaded
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = RequestAnimDict
    arg3 = arg1
    arg2(arg3)
    while true do
      arg2 = HasAnimDictLoaded
      arg3 = arg1
      arg2 = arg2(arg3)
      if arg2 then
        break
      end
      arg2 = Wait
      arg3 = 0
      arg2(arg3)
    end
  end
  return arg1
end
cmgCall2.loadAnimDict = textValue2
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, arg3
  arg2 = HasClipSetLoaded
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = RequestClipSet
    arg3 = arg1
    arg2(arg3)
    while true do
      arg2 = HasClipSetLoaded
      arg3 = arg1
      arg2 = arg2(arg3)
      if arg2 then
        break
      end
      arg2 = Wait
      arg3 = 0
      arg2(arg3)
    end
  end
end
cmgCall2.loadClipSet = textValue2
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, arg3
  arg2 = HasNamedPtfxAssetLoaded
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = RequestNamedPtfxAsset
    arg3 = arg1
    arg2(arg3)
    while true do
      arg2 = HasNamedPtfxAssetLoaded
      arg3 = arg1
      arg2 = arg2(arg3)
      if arg2 then
        break
      end
      arg2 = Wait
      arg3 = 0
      arg2(arg3)
    end
  end
  arg2 = UseParticleFxAsset
  arg3 = arg1
  arg2(arg3)
end
cmgCall2.loadPtfx = textValue2

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, gameTime, textValue6, textValue
  arg2 = tostring
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = arg2
  arg2 = arg2.find
  arg4 = "([-]?)(%d+)([.]?%d*)"
  arg2, arg3, arg4, arg5, arg6 = arg2(arg3, arg4)
  arg8 = arg5
  arg7 = arg5.reverse
  arg7 = arg7(arg8)
  arg8 = arg7
  arg7 = arg7.gsub
  gameTime = "(%d%d%d)"
  textValue6 = "%1,"
  arg7 = arg7(arg8, gameTime, textValue6)
  arg5 = arg7
  arg7 = arg4
  gameTime = arg5
  arg8 = arg5.reverse
  arg8 = arg8(gameTime)
  gameTime = arg8
  arg8 = arg8.gsub
  textValue6 = "^,"
  textValue = ""
  arg8 = arg8(gameTime, textValue6, textValue)
  gameTime = arg6
  arg7 = arg7 .. arg8 .. gameTime
  return arg7
end
getMoneyStringFormatted = cmgCall2
cmgCall2 = tCMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1, arg2, arg3) ===
function textValue2(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8
  arg4 = GetStreetNameFromHashKey
  arg5 = GetStreetNameAtCoord
  arg6 = arg1
  arg7 = arg2
  arg8 = arg3
  arg5, arg6, arg7, arg8 = arg5(arg6, arg7, arg8)
  return arg4(arg5, arg6, arg7, arg8)
end
cmgCall2.getStreetNameAtCoord = textValue2
cmgCall2 = RegisterNetEvent
textValue2 = "6fe9f7f4b0"
-- Beginner: this function handles network event "6fe9f7f4b0".

-- === HELPER FUNCTION (decompiler name: flag; parameters: arg1) ===
function flag(arg1)
  local arg2, arg3
  arg2 = notify
  arg3 = arg1
  -- Beginner: Show a notification to the player.
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6fe9f7f4b0".
cmgCall2(textValue2, flag)
cmgCall2 = CMG
-- Beginner: this function handles network event "6fe9f7f4b0".

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1, arg2) ===
function textValue2(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, gameTime, textValue6, textValue, tableHelper, dataTable, workValue, hashValue, workValue2
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = {}
  arg5 = CMG
  arg5 = arg5.getGivenAttachmentsToRemove
  arg5 = arg5()
  if arg2 then
    arg6 = pairs
    arg7 = cmgCall.attachments
    arg6, arg7, arg8, gameTime = arg6(arg7)
    for textValue6, textValue in arg6, arg7, arg8, gameTime do
      tableHelper = HasPedGotWeaponComponent
      dataTable = arg3
      workValue = arg1
      hashValue = GetHashKey
      workValue2 = textValue
      hashValue, workValue2 = hashValue(workValue2)
      tableHelper = tableHelper(dataTable, workValue, hashValue, workValue2)
      if tableHelper then
        tableHelper = table
        tableHelper = tableHelper.has
        dataTable = arg5[arg1]
        if not dataTable then
          dataTable = {}
        end
        workValue = textValue
        tableHelper = tableHelper(dataTable, workValue)
        if not tableHelper then
          tableHelper = table
          tableHelper = tableHelper.insert
          dataTable = arg4
          workValue = textValue
          tableHelper(dataTable, workValue)
        end
      end
    end
  else
    arg6 = pairs
    arg7 = cmgCall.attachments
    arg6, arg7, arg8, gameTime = arg6(arg7)
    for textValue6, textValue in arg6, arg7, arg8, gameTime do
      tableHelper = HasPedGotWeaponComponent
      dataTable = arg3
      workValue = arg1
      hashValue = GetHashKey
      workValue2 = textValue
      hashValue, workValue2 = hashValue(workValue2)
      tableHelper = tableHelper(dataTable, workValue, hashValue, workValue2)
      if tableHelper then
        tableHelper = table
        tableHelper = tableHelper.insert
        dataTable = arg4
        workValue = textValue
        tableHelper(dataTable, workValue)
      end
    end
  end
  return arg4
end
cmgCall2.getAllWeaponAttachments = textValue2
cmgCall2 = "nativeHelpMessage"
textValue2 = 10000
flag = 0

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1, arg2) ===
function cmgCall3(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  arg3 = CMG
  arg3 = arg3.hideDisplay
  arg4 = "chat"
  arg5 = cmgCall2
  arg6 = true
  arg3(arg4, arg5, arg6)
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  arg4 = textValue2
  arg3 = arg3 + arg4
  flag = arg3
  arg3 = AddTextEntry
  arg4 = "HELP_TEXT_BUFFER"
  arg5 = arg1 or arg5
  if not arg1 then
    arg5 = ""
  end
  arg3(arg4, arg5)
  arg3 = BeginTextCommandDisplayHelp
  arg4 = "STRING"
  arg3(arg4)
  arg3 = AddTextComponentSubstringTextLabel
  arg4 = "HELP_TEXT_BUFFER"
  arg3(arg4)
  if arg2 then
    arg3 = EndTextCommandDisplayHelp
    arg4 = 0
    arg5 = false
    arg6 = true
    arg7 = -1
    arg3(arg4, arg5, arg6, arg7)
  else
    arg3 = EndTextCommandDisplayHelp
    arg4 = 0
    arg5 = false
    arg6 = false
    arg7 = -1
    arg3(arg4, arg5, arg6, arg7)
  end
end
drawNativeNotification = cmgCall3

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1) ===
function cmgCall3(arg1)
  local arg2, arg3, arg4
  arg2 = BeginTextCommandPrint
  arg3 = "STRING"
  arg2(arg3)
  arg2 = AddTextComponentSubstringPlayerName
  arg3 = arg1
  arg2(arg3)
  arg2 = EndTextCommandPrint
  arg3 = 1000
  arg4 = true
  arg2(arg3, arg4)
end
drawNativeText = cmgCall3

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, arg3
  arg1 = BeginTextCommandPrint
  arg2 = "STRING"
  arg1(arg2)
  arg1 = AddTextComponentSubstringPlayerName
  arg2 = ""
  arg1(arg2)
  arg1 = EndTextCommandPrint
  arg2 = 1
  arg3 = true
  arg1(arg2, arg3)
end
clearNativeText = cmgCall3
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) ===
function cmgCall4(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
  local gameTime, textValue6, textValue, tableHelper, dataTable, workValue, hashValue, workValue2, flag2
  gameTime = CMG
  gameTime = gameTime.loadModel
  textValue6 = arg1
  gameTime = gameTime(textValue6)
  textValue6 = CreateVehicle
  textValue = gameTime
  tableHelper = arg2
  dataTable = arg3
  workValue = arg4
  hashValue = arg5
  workValue2 = arg7 or workValue2
  if not arg7 then
    workValue2 = false
  end
  flag2 = arg8 or flag2
  if not arg8 then
    flag2 = false
  end
  -- Beginner: result below is vehicleEntity.
  textValue6 = textValue6(textValue, tableHelper, dataTable, workValue, hashValue, workValue2, flag2)
  textValue = SetModelAsNoLongerNeeded
  tableHelper = gameTime
  textValue(tableHelper)
  textValue = SetEntityAsMissionEntity
  tableHelper = textValue6
  dataTable = false
  workValue = false
  textValue(tableHelper, dataTable, workValue)
  textValue = CMG
  textValue = textValue.initLocalVehicle
  tableHelper = textValue6
  textValue(tableHelper)
  textValue = SetModelAsNoLongerNeeded
  tableHelper = gameTime
  textValue(tableHelper)
  if arg6 then
    textValue = SetPedIntoVehicle
    tableHelper = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    tableHelper = tableHelper()
    dataTable = textValue6
    workValue = -1
    textValue(tableHelper, dataTable, workValue)
  end
  textValue = CMG
  textValue = textValue.setVehicleFuel
  tableHelper = textValue6
  dataTable = 100
  textValue(tableHelper, dataTable)
  textValue = ModifyVehicleTopSpeed
  tableHelper = textValue6
  dataTable = 1.0
  textValue(tableHelper, dataTable)
  return textValue6
end
cmgCall3.spawnVehicle = cmgCall4
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2, arg3, arg4) ===
function cmgCall4(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, gameTime
  arg5 = SetVehicleMod
  arg6 = arg1
  arg7 = arg2
  arg8 = arg3
  gameTime = arg4
  arg5(arg6, arg7, arg8, gameTime)
  arg5 = CMG
  arg5 = arg5.getTunableValue
  arg6 = "speed_mods_hack"
  arg5 = arg5(arg6)
  if arg5 then
    arg5 = ModifyVehicleTopSpeed
    arg6 = arg1
    arg7 = 1.0
    arg5(arg6, arg7)
  end
  arg5 = GetModTextLabel
  arg6 = arg1
  arg7 = arg2
  arg8 = arg3
  arg5 = arg5(arg6, arg7, arg8)
  if arg5 then
    arg6 = CMG
    arg6 = arg6.requestStreamFileClient
    arg7 = arg5
    arg6(arg7)
  end
end
cmgCall3.setVehicleMod = cmgCall4
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1) ===
function cmgCall4(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = arg1
  arg3 = type
  arg4 = arg1
  arg3 = arg3(arg4)
  if "string" == arg3 then
    arg3 = GetHashKey
    arg4 = arg1
    -- Beginner: result below is hash.
    arg3 = arg3(arg4)
    arg2 = arg3
  end
  arg3 = RequestWeaponAsset
  arg4 = arg2
  arg5 = 31
  arg6 = 0
  arg3(arg4, arg5, arg6)
  while true do
    arg3 = HasWeaponAssetLoaded
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      break
    end
    arg3 = Wait
    arg4 = 0
    arg3(arg4)
  end
  return arg2
end
cmgCall3.loadWeaponAsset = cmgCall4
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2, arg3, arg4) ===
function cmgCall4(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, gameTime, textValue6, textValue, tableHelper, dataTable, workValue
  arg5 = CMG
  arg5 = arg5.loadWeaponAsset
  arg6 = arg1
  arg5 = arg5(arg6)
  arg6 = CreateWeaponObject
  arg7 = arg5
  arg8 = 0
  gameTime = arg2
  textValue6 = arg3
  textValue = arg4
  tableHelper = true
  dataTable = 0
  workValue = 0
  arg6 = arg6(arg7, arg8, gameTime, textValue6, textValue, tableHelper, dataTable, workValue)
  return arg6
end
cmgCall3.spawnWeaponObject = cmgCall4
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1) ===
function cmgCall4(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, gameTime, textValue6
  arg2 = GetActivePlayers
  arg2 = arg2()
  arg3 = pairs
  arg4 = arg2
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    gameTime = GetPlayerPed
    textValue6 = arg8
    -- Beginner: result below is playerPed.
    gameTime = gameTime(textValue6)
    if arg1 == gameTime then
      gameTime = GetPlayerServerId
      textValue6 = arg8
      -- Beginner: result below is serverId.
      gameTime = gameTime(textValue6)
      return gameTime
    end
  end
  arg3 = nil
  return arg3
end
cmgCall3.getPedServerId = cmgCall4
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1) ===
function cmgCall4(arg1)
  local arg2, arg3, arg4
  arg2 = SetNetworkIdExistsOnAllMachines
  arg3 = arg1
  arg4 = true
  arg2(arg3, arg4)
  arg2 = SetNetworkIdCanMigrate
  arg3 = arg1
  arg4 = false
  arg2(arg3, arg4)
  arg2 = NetworkUseHighPrecisionBlending
  arg3 = arg1
  arg4 = true
  arg2(arg3, arg4)
end
cmgCall3.syncNetworkId = cmgCall4
cmgCall3 = Citizen
cmgCall3 = cmgCall3.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2, arg3
  arg1 = HasStreamedTextureDictLoaded
  arg2 = "timerbars"
  arg1 = arg1(arg2)
  if not arg1 then
    arg1 = RequestStreamedTextureDict
    arg2 = "timerbars"
    arg3 = false
    arg1(arg2, arg3)
    while true do
      arg1 = HasStreamedTextureDictLoaded
      arg2 = "timerbars"
      arg1 = arg1(arg2)
      if arg1 then
        break
      end
      arg1 = Wait
      arg2 = 0
      arg1(arg2)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall3(cmgCall4)

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1, arg2, arg3, arg4, arg5, arg6) ===
function cmgCall3(arg1, arg2, arg3, arg4, arg5, arg6)
  local arg7, arg8, gameTime, textValue6, textValue, tableHelper, dataTable, workValue, hashValue, workValue2, flag2, stringHelper, textValue3, workValue3, workValue5, flag3, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6
  arg7 = 0.17
  arg8 = -0.01
  gameTime = 0.038
  textValue6 = 0.008
  textValue = 0.005
  if not arg6 then
    arg6 = 0.32
  end
  if not arg4 then
    arg4 = 0.5
  end
  tableHelper = -0.04
  dataTable = 0.014
  workValue = GetSafeZoneSize
  workValue = workValue()
  hashValue = dataTable + workValue
  hashValue = hashValue - arg7
  workValue2 = arg7 / 2
  hashValue = hashValue + workValue2
  workValue2 = tableHelper + workValue
  workValue2 = workValue2 - gameTime
  flag2 = gameTime / 2
  workValue2 = workValue2 + flag2
  flag2 = arg3 - 1
  stringHelper = gameTime + textValue
  flag2 = flag2 * stringHelper
  workValue2 = workValue2 - flag2
  flag2 = DrawSprite
  stringHelper = "timerbars"
  textValue3 = "all_black_bg"
  workValue3 = hashValue
  workValue5 = workValue2
  flag3 = arg7
  numberValue = 0.038
  numberValue2 = 0
  numberValue3 = 0
  numberValue4 = 0
  numberValue5 = 0
  numberValue6 = 128
  flag2(stringHelper, textValue3, workValue3, workValue5, flag3, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6)
  flag2 = DrawGTAText
  stringHelper = arg1
  textValue3 = workValue - arg7
  textValue3 = textValue3 + 0.06
  workValue3 = workValue2 - textValue6
  workValue5 = arg6
  flag2(stringHelper, textValue3, workValue3, workValue5)
  flag2 = DrawGTAText
  stringHelper = string
  stringHelper = stringHelper.upper
  textValue3 = arg2
  stringHelper = stringHelper(textValue3)
  textValue3 = workValue - arg8
  workValue3 = arg5 or workValue3
  if not arg5 then
    workValue3 = 0
  end
  textValue3 = textValue3 + workValue3
  workValue3 = workValue2 - 0.0175
  workValue5 = arg4
  flag3 = true
  numberValue = arg7 / 2
  flag2(stringHelper, textValue3, workValue3, workValue5, flag3, numberValue)
end
DrawGTATimerBar = cmgCall3

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, gameTime, textValue6
  arg1 = {}
  arg2 = ipairs
  arg3 = GetActivePlayers
  arg3, arg4, arg5, arg6, arg7, arg8, gameTime, textValue6 = arg3()
  arg2, arg3, arg4, arg5 = arg2(arg3, arg4, arg5, arg6, arg7, arg8, gameTime, textValue6)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = table
    arg8 = arg8.insert
    gameTime = arg1
    textValue6 = arg7
    arg8(gameTime, textValue6)
  end
  return arg1
end
GetPlayers = cmgCall3

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1) ===
function cmgCall3(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, gameTime, textValue6, textValue, tableHelper, dataTable, workValue, hashValue, workValue2
  arg2 = GetPlayers
  arg2 = arg2()
  arg3 = -1
  arg4 = -1
  arg5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  arg6 = GetEntityCoords
  arg7 = arg5
  arg8 = false
  -- Beginner: result below is entityCoords.
  arg6 = arg6(arg7, arg8)
  arg7 = ipairs
  arg8 = arg2
  arg7, arg8, gameTime, textValue6 = arg7(arg8)
  for textValue, tableHelper in arg7, arg8, gameTime, textValue6 do
    dataTable = GetPlayerPed
    workValue = tableHelper
    -- Beginner: result below is playerPed.
    dataTable = dataTable(workValue)
    if dataTable ~= arg5 then
      workValue = GetEntityCoords
      hashValue = GetPlayerPed
      workValue2 = tableHelper
      -- Beginner: result below is playerPed.
      hashValue = hashValue(workValue2)
      workValue2 = false
      -- Beginner: result below is entityCoords.
      workValue = workValue(hashValue, workValue2)
      hashValue = workValue - arg6
      hashValue = #hashValue
      if -1 == arg3 or arg3 > hashValue then
        arg4 = tableHelper
        arg3 = hashValue
      end
    end
  end
  if arg1 >= arg3 then
    return arg4
  else
    arg7 = nil
    return arg7
  end
end
GetClosestPlayer = cmgCall3
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2) ===
function cmgCall4(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = math
  arg3 = arg3.randomseed
  arg4 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg4 = arg4()
  arg5 = math
  arg5 = arg5.random
  arg5 = arg5()
  arg4 = arg4 * arg5
  arg4 = arg4 * 2
  arg3(arg4)
  arg3 = math
  arg3 = arg3.random
  arg4 = arg1
  arg5 = arg2
  return arg3(arg4, arg5)
end
cmgCall3.randomNum = cmgCall4
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7) ===
function cmgCall4(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local arg8, gameTime, textValue6
  arg8 = notify
  gameTime = {}
  gameTime.message = arg3
  gameTime.type = "error"
  textValue6 = arg4 or textValue6
  if not arg4 then
    textValue6 = ""
  end
  gameTime.title = textValue6
  gameTime.duration = 8000
  -- Beginner: Show a notification to the player.
  arg8(gameTime)
end
cmgCall3.notifyPicture = cmgCall4
cmgCall3 = RegisterNetEvent
cmgCall4 = "6950d35d8a"
cmgCall5 = CMG
cmgCall5 = cmgCall5.notifyPicture
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6950d35d8a".
cmgCall3(cmgCall4, cmgCall5)
cmgCall3 = 0
cmgCall4 = CMG
-- Beginner: this function handles network event "6950d35d8a".

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: none) ===
function cmgCall5()
  local arg1, arg2
  arg1 = cmgCall3
  return arg1
end
cmgCall4.getSoundEventCode = cmgCall5
cmgCall4 = TriggerServerEvent
cmgCall5 = "eb5c18625c"
-- Beginner: Tell the server that something happened or request a server-side action. Event/command: "eb5c18625c".
cmgCall4(cmgCall5)
cmgCall4 = RegisterNetEvent
cmgCall5 = "3ca0ceef14"
-- Beginner: this function handles network event "3ca0ceef14".

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: arg1) ===
function cmgCall6(arg1)
  local arg2
  cmgCall3 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3ca0ceef14".
cmgCall4(cmgCall5, cmgCall6)
cmgCall4 = RegisterNetEvent
cmgCall5 = "6b24c7d390"
-- Beginner: this function handles network event "6b24c7d390".

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: arg1, arg2, arg3) ===
function cmgCall6(arg1, arg2, arg3)
  local arg4, arg5, arg6
  arg4 = CMG
  arg4 = arg4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg4 = arg4()
  arg5 = arg4 - arg1
  arg5 = #arg5
  if arg3 >= arg5 then
    arg5 = SendNUIMessage
    arg6 = {}
    arg6.transactionType = arg2
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    arg5(arg6)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6b24c7d390".
cmgCall4(cmgCall5, cmgCall6)
cmgCall4 = RegisterNetEvent
cmgCall5 = "__CMG_callback:client"
-- Beginner: this function handles network event "__CMG_callback:client".

-- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: arg1, ...) ===
function cmgCall6(arg1, ...)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = promise
  arg2 = arg2.new
  arg2 = arg2()
  arg3 = TriggerEvent
  arg4 = string
  arg4 = arg4.format
  arg5 = "c__CMG_callback:%s"
  arg6 = arg1
  arg4 = arg4(arg5, arg6)

  -- === HELPER FUNCTION: arg5(...) ===
  function arg5(...)
    local arg12, workValue4, dataTable2, workValue7
    arg12 = arg2
    workValue4 = arg12
    arg12 = arg12.resolve
    dataTable2 = {}
    workValue7 = ...
    dataTable2[1] = workValue7
    arg12(workValue4, dataTable2)
  end
  arg6, arg7 = ...
  -- Beginner: Trigger another client-side event in this resource/framework.
  arg3(arg4, arg5, arg6, arg7)
  arg3 = Citizen
  arg3 = arg3.Await
  arg4 = arg2
  arg3 = arg3(arg4)
  arg4 = TriggerServerEvent
  arg5 = string
  arg5 = arg5.format
  arg6 = "__CMG_callback:server:%s"
  arg7 = arg1
  arg5 = arg5(arg6, arg7)
  arg6 = table
  arg6 = arg6.unpack
  arg7 = arg3
  arg6, arg7 = arg6(arg7)
  -- Beginner: Tell the server that something happened or request a server-side action.
  arg4(arg5, arg6, arg7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "__CMG_callback:client".
cmgCall4(cmgCall5, cmgCall6)
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1, ...) ===
function cmgCall5(arg1, ...)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, gameTime
  arg2 = assert
  arg3 = type
  arg4 = arg1
  arg3 = arg3(arg4)
  arg3 = "string" == arg3
  arg4 = "Invalid Lua type at argument #1, expected string, got "
  arg5 = type
  arg6 = arg1
  arg5 = arg5(arg6)
  arg4 = arg4 .. arg5
  arg2(arg3, arg4)
  arg2 = promise
  arg2 = arg2.new
  arg2 = arg2()
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  arg4 = RegisterNetEvent
  arg5 = string
  arg5 = arg5.format
  arg6 = "__CMG_callback:client:%s:%s"
  arg7 = arg1
  arg8 = arg3
  arg5, arg6, arg7, arg8, gameTime = arg5(arg6, arg7, arg8)
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg4(arg5, arg6, arg7, arg8, gameTime)
  arg4 = AddEventHandler
  arg5 = string
  arg5 = arg5.format
  arg6 = "__CMG_callback:client:%s:%s"
  arg7 = arg1
  arg8 = arg3
  arg5 = arg5(arg6, arg7, arg8)
  -- Beginner: this function runs when client event "__CMG_callback:client:%s:%s" fires.

  -- === HELPER FUNCTION: arg6(...) ===
  function arg6(...)
    local arg12, workValue4, dataTable2, workValue7
    arg12 = arg2
    workValue4 = arg12
    arg12 = arg12.resolve
    dataTable2 = {}
    workValue7 = ...
    dataTable2[1] = workValue7
    arg12(workValue4, dataTable2)
  end
  arg4 = arg4(arg5, arg6)
  arg5 = TriggerServerEvent
  arg6 = "__CMG_callback:server"
  arg7 = arg1
  arg8 = arg3
  gameTime = ...
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "__CMG_callback:server".
  arg5(arg6, arg7, arg8, gameTime)
  arg5 = Citizen
  arg5 = arg5.Await
  arg6 = arg2
  arg5 = arg5(arg6)
  arg6 = RemoveEventHandler
  arg7 = arg4
  arg6(arg7)
  arg6 = table
  arg6 = arg6.unpack
  arg7 = arg5
  return arg6(arg7)
end
cmgCall4.TriggerServerCallback = cmgCall5
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1, arg2) ===
function cmgCall5(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  arg3 = assert
  arg4 = type
  arg5 = arg1
  arg4 = arg4(arg5)
  arg4 = "string" == arg4
  arg5 = "Invalid Lua type at argument #1, expected string, got "
  arg6 = type
  arg7 = arg1
  arg6 = arg6(arg7)
  arg5 = arg5 .. arg6
  arg3(arg4, arg5)
  arg3 = assert
  arg4 = type
  arg5 = arg2
  arg4 = arg4(arg5)
  arg4 = "function" == arg4
  arg5 = "Invalid Lua type at argument #2, expected function, got "
  arg6 = type
  arg7 = arg2
  arg6 = arg6(arg7)
  arg5 = arg5 .. arg6
  arg3(arg4, arg5)
  arg3 = AddEventHandler
  arg4 = string
  arg4 = arg4.format
  arg5 = "c__CMG_callback:%s"
  arg6 = arg1
  arg4 = arg4(arg5, arg6)
  -- Beginner: this function runs when client event "c__CMG_callback:%s" fires.

  -- === HELPER FUNCTION: arg5(arg12, ...) ===
  function arg5(arg12, ...)
    local workValue4, dataTable2, workValue7
    workValue4 = arg12
    dataTable2 = arg2
    workValue7 = ...
    dataTable2, workValue7 = dataTable2(workValue7)
    workValue4(dataTable2, workValue7)
  end
  -- Beginner: Register a client-side event handler.
  arg3(arg4, arg5)
end
cmgCall4.RegisterClientCallback = cmgCall5

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2) ===
function cmgCall4(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, gameTime, textValue6, textValue
  arg3 = {}
  arg4 = pairs
  arg5 = arg1
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for arg8 in arg4, arg5, arg6, arg7 do
    gameTime = table
    gameTime = gameTime.insert
    textValue6 = arg3
    textValue = arg8
    gameTime(textValue6, textValue)
  end
  arg4 = table
  arg4 = arg4.sort
  arg5 = arg3
  arg6 = arg2
  arg4(arg5, arg6)
  arg4 = 0

  -- === HELPER FUNCTION: arg5() ===
  function arg5()
    local arg12, workValue4, dataTable2
    arg12 = arg4
    arg12 = arg12 + 1
    arg4 = arg12
    workValue4 = arg4
    arg12 = arg3
    arg12 = arg12[workValue4]
    if nil == arg12 then
      arg12 = nil
      return arg12
    else
      workValue4 = arg4
      arg12 = arg3
      arg12 = arg12[workValue4]
      dataTable2 = arg4
      workValue4 = arg3
      dataTable2 = workValue4[dataTable2]
      workValue4 = arg1
      workValue4 = workValue4[dataTable2]
      return arg12, workValue4
    end
  end
  return arg5
end
pairsByKeys = cmgCall4

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1) ===
function cmgCall4(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, gameTime, textValue6, textValue
  arg2 = {}
  arg3 = pairsByKeys
  arg4 = arg1
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    gameTime = table
    gameTime = gameTime.insert
    textValue6 = arg2
    textValue = {}
    textValue.title = arg7
    textValue.value = arg8
    gameTime(textValue6, textValue)
  end
  arg1 = arg2
  return arg1
end
sortAlphabetically = cmgCall4
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1, arg2) ===
function cmgCall5(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8
  if nil == arg2 then
    arg2 = ""
  end
  arg3 = 0
  arg4 = DoesEntityExist
  arg5 = arg1
  arg4 = arg4(arg5)
  if not arg4 then
    arg5 = CMG
    arg5 = arg5.debugLog
    arg6 = string
    arg6 = arg6.format
    arg7 = "no such entity %s"
    arg8 = arg2
    arg6, arg7, arg8 = arg6(arg7, arg8)
    arg5(arg6, arg7, arg8)
  else
    arg5 = NetworkGetNetworkIdFromEntity
    arg6 = arg1
    arg5 = arg5(arg6)
    arg3 = arg5
    if arg3 == arg1 then
      arg5 = CMG
      arg5 = arg5.debugLog
      arg6 = string
      arg6 = arg6.format
      arg7 = "no such networked entity %s"
      arg8 = arg2
      arg6, arg7, arg8 = arg6(arg7, arg8)
      arg5(arg6, arg7, arg8)
    end
  end
  return arg3
end
cmgCall4.getNetId = cmgCall5
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1, arg2) ===
function cmgCall5(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8
  if nil == arg2 then
    arg2 = ""
  end
  arg3 = NetworkDoesNetworkIdExist
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    arg4 = CMG
    arg4 = arg4.debugLog
    arg5 = string
    arg5 = arg5.format
    arg6 = [[
no object by ID %s
%s]]
    arg7 = arg1
    arg8 = arg2
    arg5, arg6, arg7, arg8 = arg5(arg6, arg7, arg8)
    arg4(arg5, arg6, arg7, arg8)
  else
    arg4 = NetworkGetEntityFromNetworkId
    arg5 = arg1
    return arg4(arg5)
  end
end
cmgCall4.getObjectId = cmgCall5
cmgCall4 = {}
cmgCall5 = {}
cmgCall6 = Citizen
cmgCall6 = cmgCall6.CreateThread

-- === HELPER FUNCTION: mathHelper() ===
function mathHelper()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, gameTime, textValue6, textValue, tableHelper, dataTable, workValue, hashValue, workValue2, flag2
  arg1 = CMG
  arg1 = arg1.loadModule
  arg2 = "cfg/cfg_garages"
  -- Beginner: result below is config.
  arg1 = arg1(arg2)
  arg2 = pairs
  arg3 = arg1.garages
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    arg8 = pairs
    gameTime = arg7
    arg8, gameTime, textValue6, textValue = arg8(gameTime)
    for tableHelper, dataTable in arg8, gameTime, textValue6, textValue do
      if "_config" ~= arg6 then
        workValue = dataTable.name
        hashValue = string
        hashValue = hashValue.lower
        workValue2 = tableHelper
        hashValue = hashValue(workValue2)
        workValue2 = cmgCall4
        workValue2 = workValue2[hashValue]
        if not workValue2 then
          workValue2 = cmgCall4
          flag2 = {}
          flag2.name = workValue
          flag2.garageType = arg6
          workValue2[hashValue] = flag2
          workValue2 = GetHashKey
          flag2 = hashValue
          -- Beginner: result below is hash.
          workValue2 = workValue2(flag2)
          flag2 = cmgCall5
          flag2[workValue2] = hashValue
        end
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall6(mathHelper)
cmgCall6 = CMG

-- === HELPER FUNCTION: mathHelper(arg1) ===
function mathHelper(arg1)
  local arg2, arg3
  arg2 = string
  arg2 = arg2.lower
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = cmgCall4
  arg2 = arg3[arg2]
  if arg2 then
    arg2 = string
    arg2 = arg2.lower
    arg3 = arg1
    arg2 = arg2(arg3)
    arg3 = cmgCall4
    arg2 = arg3[arg2]
    arg2 = arg2.name
    return arg2
  end
  arg2 = ""
  return arg2
end
cmgCall6.getVehicleNameFromId = mathHelper
cmgCall6 = CMG

-- === HELPER FUNCTION: mathHelper(arg1) ===
function mathHelper(arg1)
  local arg2, arg3
  arg2 = string
  arg2 = arg2.lower
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = cmgCall4
  arg2 = arg3[arg2]
  arg2 = arg2.garageType
  return arg2
end
cmgCall6.getGarageNameFromId = mathHelper
cmgCall6 = CMG

-- === HELPER FUNCTION: mathHelper(arg1) ===
function mathHelper(arg1)
  local arg2
  arg2 = cmgCall5
  arg2 = arg2[arg1]
  return arg2
end
cmgCall6.getVehicleIdFromModel = mathHelper
cmgCall6 = math
cmgCall6 = cmgCall6.rad
mathHelper = math
mathHelper = mathHelper.cos
mathHelper2 = math
mathHelper2 = mathHelper2.sin
mathHelper3 = math
mathHelper3 = mathHelper3.abs
cmgCall7 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall8; parameters: arg1) ===
function cmgCall8(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, gameTime
  arg2 = cmgCall6
  arg3 = arg1.x
  arg2 = arg2(arg3)
  arg3 = cmgCall6
  arg4 = arg1.z
  arg3 = arg3(arg4)
  arg4 = vector3
  arg5 = mathHelper2
  arg6 = arg3
  arg5 = arg5(arg6)
  arg5 = -arg5
  arg6 = mathHelper3
  arg7 = mathHelper
  arg8 = arg2
  arg7, arg8, gameTime = arg7(arg8)
  arg6 = arg6(arg7, arg8, gameTime)
  arg5 = arg5 * arg6
  arg6 = mathHelper
  arg7 = arg3
  arg6 = arg6(arg7)
  arg7 = mathHelper3
  arg8 = mathHelper
  gameTime = arg2
  arg8, gameTime = arg8(gameTime)
  arg7 = arg7(arg8, gameTime)
  arg6 = arg6 * arg7
  arg7 = mathHelper2
  arg8 = arg2
  arg7, arg8, gameTime = arg7(arg8)
  return arg4(arg5, arg6, arg7, arg8, gameTime)
end
cmgCall7.rotationToDirection = cmgCall8
cmgCall7 = {}
cmgCall7.b_116 = "WheelMouseMove.Up"
cmgCall7.b_115 = "WheelMouseMove.Up"
cmgCall7.b_100 = "MouseClick.LeftClick"
cmgCall7.b_101 = "MouseClick.RightClick"
cmgCall7.b_102 = "MouseClick.MiddleClick"
cmgCall7.b_103 = "MouseClick.ExtraBtn1"
cmgCall7.b_104 = "MouseClick.ExtraBtn2"
cmgCall7.b_105 = "MouseClick.ExtraBtn3"
cmgCall7.b_106 = "MouseClick.ExtraBtn4"
cmgCall7.b_107 = "MouseClick.ExtraBtn5"
cmgCall7.b_108 = "MouseClick.ExtraBtn6"
cmgCall7.b_109 = "MouseClick.ExtraBtn7"
cmgCall7.b_110 = "MouseClick.ExtraBtn8"
cmgCall7.b_1015 = "AltLeft"
cmgCall7.b_1000 = "ShiftLeft"
cmgCall7.b_2000 = "Space"
cmgCall7.b_1013 = "ControlLeft"
cmgCall7.b_1014 = "ControlRight"
cmgCall7.b_140 = "Numpad4"
cmgCall7.b_142 = "Numpad6"
cmgCall7.b_144 = "Numpad8"
cmgCall7.b_141 = "Numpad5"
cmgCall7.b_143 = "Numpad7"
cmgCall7.b_145 = "Numpad9"
cmgCall7.b_200 = "Insert"
cmgCall7.b_1012 = "CapsLock"
cmgCall7.b_170 = "F1"
cmgCall7.b_171 = "F2"
cmgCall7.b_172 = "F3"
cmgCall7.b_173 = "F4"
cmgCall7.b_174 = "F5"
cmgCall7.b_175 = "F6"
cmgCall7.b_176 = "F7"
cmgCall7.b_177 = "F8"
cmgCall7.b_178 = "F9"
cmgCall7.b_179 = "F10"
cmgCall7.b_180 = "F11"
cmgCall7.b_181 = "F12"
cmgCall7.b_194 = "ArrowUp"
cmgCall7.b_195 = "ArrowDown"
cmgCall7.b_196 = "ArrowLeft"
cmgCall7.b_197 = "ArrowRight"
cmgCall7.b_1003 = "Enter"
cmgCall7.b_1004 = "Backspace"
cmgCall7.b_198 = "Delete"
cmgCall7.b_199 = "Escape"
cmgCall7.b_1009 = "PageUp"
cmgCall7.b_1010 = "PageDown"
cmgCall7.b_1008 = "Home"
cmgCall7.b_131 = "NumpadAdd"
cmgCall7.b_130 = "NumpadSubstract"
cmgCall7.b_1002 = "CapsLock"
cmgCall7.b_211 = "Insert"
cmgCall7.b_210 = "Delete"
cmgCall7.b_212 = "End"
cmgCall7.b_1055 = "Home"
cmgCall7.b_1056 = "PageUp"
cmgCall8 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall9; parameters: arg1) ===
function cmgCall9(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = string
  arg2 = arg2.find
  arg3 = arg1
  arg4 = "t_"
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg2 = select
    arg3 = 1
    arg4 = string
    arg4 = arg4.gsub
    arg5 = arg1
    arg6 = "t_"
    arg7 = ""
    arg4, arg5, arg6, arg7 = arg4(arg5, arg6, arg7)
    return arg2(arg3, arg4, arg5, arg6, arg7)
  else
    arg2 = cmgCall7
    arg2 = arg2[arg1]
    return arg2
  end
end
cmgCall8.getLocalKeyNameFromButton = cmgCall9
cmgCall8 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall9; parameters: arg1) ===
function cmgCall9(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = string
  arg2 = arg2.find
  arg3 = arg1
  arg4 = "t_"
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg2 = select
    arg3 = 1
    arg4 = string
    arg4 = arg4.gsub
    arg5 = arg1
    arg6 = "t_"
    arg7 = ""
    arg4, arg5, arg6, arg7 = arg4(arg5, arg6, arg7)
    return arg2(arg3, arg4, arg5, arg6, arg7)
  else
    arg2 = "SpecialCharacter."
    arg3 = cmgCall7
    arg3 = arg3[arg1]
    arg2 = arg2 .. arg3
    return arg2
  end
end
cmgCall8.getJavascriptKeyNameFromButton = cmgCall9
cmgCall8 = false
cmgCall9 = CMG

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, gameTime, textValue6, textValue, tableHelper, dataTable, workValue, hashValue, workValue2
  while true do
    arg3 = cmgCall8
    if not arg3 then
      break
    end
    arg3 = Wait
    arg4 = 0
    arg3(arg4)
  end
  arg3 = true
  cmgCall8 = arg3
  arg3 = AddTextEntry
  arg4 = "WARNING_TITLE"
  arg5 = arg1
  arg3(arg4, arg5)
  arg3 = AddTextEntry
  arg4 = "WARNING_SUBTITLE"
  arg5 = arg2
  arg3(arg4, arg5)
  arg3 = false
  while true do
    arg4 = SetWarningMessageWithAlert
    arg5 = "WARNING_TITLE"
    arg6 = "WARNING_SUBTITLE"
    arg7 = 36
    arg8 = 0
    gameTime = ""
    textValue6 = false
    textValue = -1
    tableHelper = 0
    dataTable = "FM_NXT_RAC"
    workValue = "QM_NO_1"
    hashValue = true
    workValue2 = 0
    arg4(arg5, arg6, arg7, arg8, gameTime, textValue6, textValue, tableHelper, dataTable, workValue, hashValue, workValue2)
    arg4 = IsDisabledControlJustPressed
    arg5 = 2
    arg6 = 215
    arg4 = arg4(arg5, arg6)
    if arg4 then
      arg3 = true
      break
    else
      arg4 = IsDisabledControlJustPressed
      arg5 = 2
      arg6 = 200
      arg4 = arg4(arg5, arg6)
      if arg4 then
        break
      end
    end
    arg4 = Wait
    arg5 = 0
    arg4(arg5)
  end
  arg4 = Wait
  arg5 = 0
  arg4(arg5)
  arg4 = false
  cmgCall8 = arg4
  return arg3
end
cmgCall9.showWarningMessage = workValue6
cmgCall9 = CMG

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2, arg3, arg4) ===
function workValue6(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, gameTime, textValue6, textValue, tableHelper, dataTable, workValue, hashValue, workValue2, flag2
  while true do
    arg5 = cmgCall8
    if not arg5 then
      break
    end
    arg5 = Wait
    arg6 = 0
    arg5(arg6)
  end
  arg5 = true
  cmgCall8 = arg5
  arg5 = AddTextEntry
  arg6 = "WARNING_TITLE"
  arg7 = arg1
  arg5(arg6, arg7)
  arg5 = AddTextEntry
  arg6 = "WARNING_SUBTITLE"
  arg7 = arg2
  arg5(arg6, arg7)
  while true do
    arg5 = SetWarningMessageWithAlert
    arg6 = "WARNING_TITLE"
    arg7 = "WARNING_SUBTITLE"
    arg8 = arg3
    gameTime = 0
    textValue6 = ""
    textValue = false
    tableHelper = -1
    dataTable = 0
    workValue = "FM_NXT_RAC"
    hashValue = "QM_NO_1"
    workValue2 = true
    flag2 = 0
    arg5(arg6, arg7, arg8, gameTime, textValue6, textValue, tableHelper, dataTable, workValue, hashValue, workValue2, flag2)
    arg5 = arg4
    arg5 = arg5()
    if arg5 then
      break
    end
    arg5 = Wait
    arg6 = 0
    arg5(arg6)
  end
  arg5 = Wait
  arg6 = 0
  arg5(arg6)
  arg5 = false
  cmgCall8 = arg5
end
cmgCall9.showWarningMessageAdvanced = workValue6
cmgCall9 = CMG

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, gameTime, textValue6
  arg3 = type
  arg4 = arg1
  arg3 = arg3(arg4)
  if "table" == arg3 then
    arg3 = type
    arg4 = arg2
    arg3 = arg3(arg4)
    if "function" == arg3 then
      goto flow_label_13
    end
  end
  arg3 = nil
  arg4 = nil
  return arg3, arg4
  ::flow_label_13::
  arg3 = ipairs
  arg4 = arg1
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    gameTime = arg2
    textValue6 = arg8
    gameTime = gameTime(textValue6)
    if gameTime then
      gameTime = arg8
      textValue6 = arg7
      return gameTime, textValue6
    end
  end
  arg3 = nil
  arg4 = nil
  return arg3, arg4
end
cmgCall9.findByPredicate = workValue6
cmgCall9 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
function workValue6()
  local arg1, arg2, arg3, arg4
  while true do
    arg1 = Wait
    arg2 = 100
    arg1(arg2)
    arg1 = flag
    if 0 ~= arg1 then
      arg1 = false
      arg2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg2 = arg2()
      arg3 = flag
      if arg2 >= arg3 then
        arg1 = true
      else
        arg2 = GetResourceState
        arg3 = "chat"
        arg2 = arg2(arg3)
        if "started" == arg2 then
          arg2 = pcall

          -- === HELPER FUNCTION: arg3() ===
          function arg3()
            local arg12, workValue4
            arg12 = exports
            arg12 = arg12.chat
            workValue4 = arg12
            arg12 = arg12.isChatActive
            return arg12(workValue4)
          end
          arg2, arg3 = arg2(arg3)
          if arg2 and arg3 then
            arg1 = true
          end
        end
      end
      if arg1 then
        arg2 = 0
        flag = arg2
        arg2 = CMG
        arg2 = arg2.showDisplay
        arg3 = "chat"
        arg4 = cmgCall2
        arg2(arg3, arg4)
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall9(workValue6)

-- === HELPER FUNCTION (decompiler name: cmgCall9; parameters: arg1) ===
function cmgCall9(arg1)
  local arg2, arg3, arg4
  arg2 = BeginTextCommandPrint
  arg3 = "STRING"
  arg2(arg3)
  arg2 = AddTextComponentSubstringPlayerName
  arg3 = arg1
  arg2(arg3)
  arg2 = EndTextCommandPrint
  arg3 = 1000
  arg4 = true
  arg2(arg3, arg4)
end
subtitleText = cmgCall9
