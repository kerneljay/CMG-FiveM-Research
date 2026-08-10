--[[
    Beginner Guide: cl_bankheists.lua
    =================================

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
    BEGINNER GUIDE — Bankheists
    ===========================

    File: cmg/prod/client/crime/cl_bankheists.lua
    Purpose: This file contains crime/gang/heist gameplay.

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

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

    Config/data used:
      * cfg/heists/cfg_heist
      * cfg/heists/client/cfg_%s.lua

    Network/hash identifiers found: 28
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * You can return to the factory office at any time to exit the setup
      * Main Menu
      * Joined Players (%d/10)
      * ~b~Invite Player
      * ~b~Start Heist (\194\163%s)

]]
local cmgCall, eventRegistration3, vector3Builder, vector3Builder2, vector3Builder3, numberValue9, numberValue10, numberValue11, workValue18, workValue20, eventRegistration, eventRegistration2, flag3, workValue2, workValue3, workValue4, rageUiCall, textValue2, textValue3, rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, cmgCall2, textValue6, numberValue5, numberValue6, numberValue7, numberValue8, flag16, flag17, eventRegistration4, textValue8, workValue6, workValue7, workValue8, workValue9, eventRegistration5, textValue9, workValue10, workValue11, workValue12, workValue13, workValue14, workValue15, cmgCall5, textValue11, textValue12, rageUiCall5, textValue16, threadCall, rageUiCall6, rageUiCall7, textValue17, textValue18
cmgCall = CMG
cmgCall = cmgCall.loadModule
eventRegistration3 = "cfg/heists/cfg_heist"
-- Beginner: result below is config.
cmgCall = cmgCall(eventRegistration3)
eventRegistration3 = RegisterNetEvent
RegisterHeistEvent = eventRegistration3
-- Beginner: this function handles network event (event name set just above).
function eventRegistration3()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "6342feb8da"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6342feb8da".
  arg1(arg2)
end
vector3Builder = vector3
vector3Builder2 = 707.01
vector3Builder3 = -966.64
numberValue9 = 30.41
vector3Builder = vector3Builder(vector3Builder2, vector3Builder3, numberValue9)
vector3Builder2 = vector3
vector3Builder3 = 707.95
numberValue9 = -960.6
numberValue10 = 30.4
vector3Builder2 = vector3Builder2(vector3Builder3, numberValue9, numberValue10)
vector3Builder3 = vector3
numberValue9 = 717.9912109375
numberValue10 = -982.55493164062
numberValue11 = 24.130674362183
vector3Builder3 = vector3Builder3(numberValue9, numberValue10, numberValue11)
function numberValue9(arg1, arg2, arg3)
  local cmgCall3, textValue13, serverEventCall2, textValue20, flag20
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.isDevMode
  cmgCall3 = cmgCall3()
  if cmgCall3 then
    cmgCall3 = arg1
    textValue13 = arg2
    cmgCall3(textValue13)
  else
    cmgCall3 = pcall
    textValue13 = arg1
    serverEventCall2 = arg2
    cmgCall3, textValue13 = cmgCall3(textValue13, serverEventCall2)
    if not cmgCall3 then
      if arg3 then
        serverEventCall2 = TriggerServerEvent
        textValue20 = "6c3cf6a94e"
        flag20 = true
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6c3cf6a94e".
        serverEventCall2(textValue20, flag20)
      end
      serverEventCall2 = error
      textValue20 = textValue13
      serverEventCall2(textValue20)
    end
  end
end
function numberValue10(arg1)
  local arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20
  arg2 = CMG
  arg2 = arg2.setGameplayTask
  arg3 = true
  cmgCall3 = GetFrameCount
  cmgCall3, textValue13, serverEventCall2, textValue20, flag20 = cmgCall3()
  arg2(arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20)
  arg2 = CMG
  arg2 = arg2.loadResourceFile
  arg3 = GetCurrentResourceName
  arg3 = arg3()
  cmgCall3 = string
  cmgCall3 = cmgCall3.format
  textValue13 = "cfg/heists/client/cfg_%s.lua"
  serverEventCall2 = arg1
  cmgCall3, textValue13, serverEventCall2, textValue20, flag20 = cmgCall3(textValue13, serverEventCall2)
  arg2 = arg2(arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20)
  arg3 = CMG
  arg3 = arg3.setGameplayTask
  cmgCall3 = false
  textValue13 = GetFrameCount
  textValue13, serverEventCall2, textValue20, flag20 = textValue13()
  arg3(cmgCall3, textValue13, serverEventCall2, textValue20, flag20)
  arg3 = assert
  cmgCall3 = nil ~= arg2
  textValue13 = string
  textValue13 = textValue13.format
  serverEventCall2 = "Failed to read bank heist setup file (name: %s)"
  textValue20 = arg1
  textValue13, serverEventCall2, textValue20, flag20 = textValue13(serverEventCall2, textValue20)
  arg3(cmgCall3, textValue13, serverEventCall2, textValue20, flag20)
  arg3 = load
  cmgCall3 = arg2
  arg3 = arg3(cmgCall3)
  cmgCall3 = assert
  textValue13 = nil ~= arg3
  serverEventCall2 = string
  serverEventCall2 = serverEventCall2.format
  textValue20 = "Failed to load chunks for bank heist setup (name: %s)"
  flag20 = arg1
  serverEventCall2, textValue20, flag20 = serverEventCall2(textValue20, flag20)
  cmgCall3(textValue13, serverEventCall2, textValue20, flag20)
  cmgCall3 = pcall
  textValue13 = arg3
  cmgCall3, textValue13 = cmgCall3(textValue13)
  serverEventCall2 = assert
  textValue20 = cmgCall3
  flag20 = textValue13
  serverEventCall2(textValue20, flag20)
  return textValue13
end
numberValue11 = nil
function workValue18(arg1)
  local arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag
  arg2 = ipairs
  arg3 = GetGamePool
  cmgCall3 = "CPed"
  arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag = arg3(cmgCall3)
  arg2, arg3, cmgCall3, textValue13 = arg2(arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag)
  for serverEventCall2, textValue20 in arg2, arg3, cmgCall3, textValue13 do
    flag20 = SetPedDropsWeaponsWhenDead
    workValue19 = textValue20
    flag21 = false
    flag20(workValue19, flag21)
  end
  arg2 = ipairs
  arg3 = GetGamePool
  cmgCall3 = "CPickup"
  arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag = arg3(cmgCall3)
  arg2, arg3, cmgCall3, textValue13 = arg2(arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag)
  for serverEventCall2, textValue20 in arg2, arg3, cmgCall3, textValue13 do
    flag20 = RemovePickup
    workValue19 = textValue20
    flag20(workValue19)
    flag20 = DeleteEntity
    workValue19 = textValue20
    -- Beginner: Delete a GTA entity.
    flag20(workValue19)
  end
  arg2 = arg1.usedWeapons
  if arg2 then
    arg2 = type
    arg3 = arg1.usedWeapons
    arg2 = arg2(arg3)
    if "table" == arg2 then
      arg2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = ipairs
      cmgCall3 = arg1.usedWeapons
      arg3, cmgCall3, textValue13, serverEventCall2 = arg3(cmgCall3)
      for textValue20, flag20 in arg3, cmgCall3, textValue13, serverEventCall2 do
        workValue19 = HasPedGotWeapon
        flag21 = arg2
        workValue = flag20
        flag = false
        workValue19 = workValue19(flag21, workValue, flag)
        if workValue19 then
          workValue19 = RemoveWeaponFromPed
          flag21 = arg2
          workValue = flag20
          workValue19(flag21, workValue)
        end
        workValue19 = SetCanPedEquipWeapon
        flag21 = arg2
        workValue = flag20
        flag = false
        workValue19(flag21, workValue, flag)
        workValue19 = ToggleUsePickupsForPlayer
        flag21 = PlayerId
        -- Beginner: result below is localPlayerIndex.
        flag21 = flag21()
        workValue = flag20
        flag = false
        workValue19(flag21, workValue, flag)
      end
    end
  end
end
function workValue20()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2
  while true do
    arg1 = numberValue11
    if not arg1 then
      break
    end
    arg1 = numberValue11.stageIndex
    if arg1 then
      arg1 = numberValue11.stages
      arg2 = numberValue11.stageIndex
      arg1 = arg1[arg2]
      arg2 = numberValue11.stageSetup
      if not arg2 then
        arg2 = print
        arg3 = string
        arg3 = arg3.format
        cmgCall3 = "Switching stage (stage: %s)"
        textValue13 = arg1.name
        arg3, cmgCall3, textValue13, serverEventCall2 = arg3(cmgCall3, textValue13)
        arg2(arg3, cmgCall3, textValue13, serverEventCall2)
        arg2 = numberValue11.prevStageIndex
        if arg2 then
          arg2 = numberValue11.stages
          arg3 = numberValue11.prevStageIndex
          arg2 = arg2[arg3]
          arg3 = arg2.clean
          if arg3 then
            arg3 = numberValue11.inited
            cmgCall3 = numberValue11.prevStageIndex
            arg3 = arg3[cmgCall3]
            if arg3 then
              arg3 = print
              cmgCall3 = string
              cmgCall3 = cmgCall3.format
              textValue13 = "Cleaning previous stage (prevStage: %s)"
              serverEventCall2 = arg2.name
              cmgCall3, textValue13, serverEventCall2 = cmgCall3(textValue13, serverEventCall2)
              arg3(cmgCall3, textValue13, serverEventCall2)
              arg3 = numberValue9
              cmgCall3 = arg2.clean
              textValue13 = numberValue11.info
              serverEventCall2 = true
              arg3(cmgCall3, textValue13, serverEventCall2)
            end
          end
        end
        arg2 = arg1.init
        if arg2 then
          arg2 = print
          arg3 = string
          arg3 = arg3.format
          cmgCall3 = "Initialising stage (stage: %s)"
          textValue13 = arg1.name
          arg3, cmgCall3, textValue13, serverEventCall2 = arg3(cmgCall3, textValue13)
          arg2(arg3, cmgCall3, textValue13, serverEventCall2)
          arg2 = numberValue9
          arg3 = arg1.init
          cmgCall3 = numberValue11.info
          textValue13 = true
          arg2(arg3, cmgCall3, textValue13)
          arg2 = numberValue11.inited
          arg3 = numberValue11.stageIndex
          arg2[arg3] = true
          arg2 = print
          arg3 = string
          arg3 = arg3.format
          cmgCall3 = "Finished initialising stage (stage: %s)"
          textValue13 = arg1.name
          arg3, cmgCall3, textValue13, serverEventCall2 = arg3(cmgCall3, textValue13)
          arg2(arg3, cmgCall3, textValue13, serverEventCall2)
        end
        arg2 = numberValue11.info
        arg3 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        arg3 = arg3()
        arg2.lastInit = arg3
        numberValue11.stageSetup = true
        arg2 = print
        arg3 = string
        arg3 = arg3.format
        cmgCall3 = "Finished switching stage (stage: %s)"
        textValue13 = arg1.name
        arg3, cmgCall3, textValue13, serverEventCall2 = arg3(cmgCall3, textValue13)
        arg2(arg3, cmgCall3, textValue13, serverEventCall2)
      end
      arg2 = workValue18
      arg3 = numberValue11.info
      arg2(arg3)
      arg2 = arg1.run
      if arg2 then
        arg2 = numberValue9
        arg3 = arg1.run
        cmgCall3 = numberValue11.info
        textValue13 = true
        arg2(arg3, cmgCall3, textValue13)
      end
      arg2 = arg1.isFinishStage
      if arg2 then
        arg2 = numberValue11.isLeaving
        if not arg2 then
          arg2 = CMG
          arg2 = arg2.getPlayerCoords
          -- Beginner: result below is playerCoords.
          arg2 = arg2()
          arg3 = vector3Builder
          arg2 = arg2 - arg3
          arg2 = #arg2
          if arg2 < 15.0 then
            arg2 = TriggerServerEvent
            arg3 = "6c3cf6a94e"
            cmgCall3 = false
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6c3cf6a94e".
            arg2(arg3, cmgCall3)
            numberValue11.isLeaving = true
          end
        end
      end
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 0
    arg1(arg2)
  end
end
eventRegistration = RegisterNetEvent
eventRegistration2 = "fb4882a7e3"
-- Beginner: this function handles network event "fb4882a7e3".
function flag3(arg1)
  local arg2, arg3, cmgCall3, textValue13
  arg2 = print
  arg3 = string
  arg3 = arg3.format
  cmgCall3 = "Received new setup request (name: %s)"
  textValue13 = arg1.name
  arg3, cmgCall3, textValue13 = arg3(cmgCall3, textValue13)
  arg2(arg3, cmgCall3, textValue13)
  arg2 = numberValue10
  arg3 = arg1.name
  arg2 = arg2(arg3)
  numberValue11 = arg2
  numberValue11.info = arg1
  numberValue11.isLeaving = false
  numberValue11.stageSetup = false
  arg2 = {}
  numberValue11.inited = arg2
  arg2 = ExecuteCommand
  arg3 = "hideids"
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.setRedzoneTimerDisabled
  if arg2 then
    arg2 = CMG
    arg2 = arg2.setRedzoneTimerDisabled
    arg3 = true
    arg2(arg3)
  end
  arg2 = CMG
  arg2 = arg2.setTime
  arg3 = arg1.time
  arg3 = arg3.hour
  cmgCall3 = arg1.time
  cmgCall3 = cmgCall3.minute
  textValue13 = 0
  arg2(arg3, cmgCall3, textValue13)
  arg2 = CMG
  arg2 = arg2.setWeather
  arg3 = arg1.weather
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.setPolice
  arg3 = true
  arg2(arg3)
  arg2 = Citizen
  arg2 = arg2.CreateThreadNow
  function arg3()
    local arg12, arg22, textValue7
    arg12 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg12 = arg12()
    while true do
      arg22 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg22 = arg22()
      arg22 = arg22 - arg12
      textValue7 = 10000
      if not (arg22 < textValue7) then
        break
      end
      arg22 = drawNativeNotification
      textValue7 = "You can return to the factory office at any time to exit the setup"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg22(textValue7)
      arg22 = Citizen
      arg22 = arg22.Wait
      textValue7 = 0
      arg22(textValue7)
    end
  end
  arg2(arg3)
  arg2 = workValue20
  arg2()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fb4882a7e3".
eventRegistration(eventRegistration2, flag3)
eventRegistration = RegisterNetEvent
eventRegistration2 = "0b3ad3a2af"
-- Beginner: this function handles network event "0b3ad3a2af".
function flag3(arg1)
  local arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20
  arg2 = numberValue11
  if not arg2 then
    return
  end
  arg2 = ipairs
  arg3 = numberValue11.stages
  arg2, arg3, cmgCall3, textValue13 = arg2(arg3)
  for serverEventCall2, textValue20 in arg2, arg3, cmgCall3, textValue13 do
    flag20 = textValue20.name
    if flag20 == arg1 then
      flag20 = numberValue11.stageIndex
      numberValue11.prevStageIndex = flag20
      numberValue11.stageIndex = serverEventCall2
      break
    end
  end
  numberValue11.stageSetup = false
end
eventRegistration(eventRegistration2, flag3)
eventRegistration = RegisterNetEvent
eventRegistration2 = "db46bf9497"
-- Beginner: this function handles network event "db46bf9497".
function flag3(arg1)
  local arg2, arg3, cmgCall3, textValue13
  arg2 = numberValue11
  if not arg2 then
    return
  end
  arg2 = print
  arg3 = string
  arg3 = arg3.format
  cmgCall3 = "Received player removed (server: %d)"
  textValue13 = arg1
  arg3, cmgCall3, textValue13 = arg3(cmgCall3, textValue13)
  arg2(arg3, cmgCall3, textValue13)
  arg2 = table
  arg2 = arg2.find
  arg3 = numberValue11.info
  arg3 = arg3.players
  cmgCall3 = arg1
  arg2 = arg2(arg3, cmgCall3)
  if arg2 then
    arg3 = table
    arg3 = arg3.remove
    cmgCall3 = numberValue11.info
    cmgCall3 = cmgCall3.players
    textValue13 = arg2
    arg3(cmgCall3, textValue13)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "db46bf9497".
eventRegistration(eventRegistration2, flag3)
function eventRegistration(arg1, arg2)
  local arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag
  arg3 = print
  cmgCall3 = string
  cmgCall3 = cmgCall3.format
  textValue13 = "Started invoking leaveSetup(%s, %s)"
  serverEventCall2 = arg1
  textValue20 = arg2
  cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag = cmgCall3(textValue13, serverEventCall2, textValue20)
  arg3(cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag)
  arg3 = assert
  cmgCall3 = numberValue11
  textValue13 = "Unable to leave non-existant setup"
  arg3(cmgCall3, textValue13)
  arg3 = CMG
  arg3 = arg3.hideAllDisplays
  cmgCall3 = "setupleave"
  arg3(cmgCall3)
  arg3 = SetPlayerControl
  cmgCall3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  cmgCall3 = cmgCall3()
  textValue13 = true
  serverEventCall2 = 0
  arg3(cmgCall3, textValue13, serverEventCall2)
  arg3 = numberValue11.stages
  cmgCall3 = numberValue11.stageIndex
  arg3 = arg3[cmgCall3]
  cmgCall3 = arg3.clean
  if cmgCall3 then
    cmgCall3 = numberValue11.inited
    textValue13 = numberValue11.stageIndex
    cmgCall3 = cmgCall3[textValue13]
    if cmgCall3 then
      cmgCall3 = numberValue9
      textValue13 = arg3.clean
      serverEventCall2 = numberValue11.info
      textValue20 = false
      cmgCall3(textValue13, serverEventCall2, textValue20)
    end
  end
  cmgCall3 = numberValue11.finish
  if cmgCall3 then
    cmgCall3 = numberValue9
    textValue13 = numberValue11.finish
    serverEventCall2 = numberValue11.info
    textValue20 = false
    cmgCall3(textValue13, serverEventCall2, textValue20)
  end
  cmgCall3 = nil
  numberValue11 = cmgCall3
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.setPolice
  textValue13 = false
  cmgCall3(textValue13)
  cmgCall3 = SwitchOutPlayer
  textValue13 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  textValue13 = textValue13()
  serverEventCall2 = 0
  textValue20 = 1
  cmgCall3(textValue13, serverEventCall2, textValue20)
  cmgCall3 = Citizen
  cmgCall3 = cmgCall3.Wait
  textValue13 = 5000
  cmgCall3(textValue13)
  cmgCall3 = SetEntityCoords
  textValue13 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  textValue13 = textValue13()
  serverEventCall2 = vector3Builder2.x
  textValue20 = vector3Builder2.y
  flag20 = vector3Builder2.z
  workValue19 = false
  flag21 = false
  workValue = false
  flag = false
  -- Beginner: Move/teleport an entity to new coordinates.
  cmgCall3(textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag)
  cmgCall3 = SwitchInPlayer
  textValue13 = PlayerPedId
  textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag = textValue13()
  cmgCall3(textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag)
  cmgCall3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  cmgCall3 = cmgCall3()
  while true do
    textValue13 = IsPlayerSwitchInProgress
    textValue13 = textValue13()
    if not textValue13 then
      break
    end
    textValue13 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    textValue13 = textValue13()
    textValue13 = textValue13 - cmgCall3
    serverEventCall2 = 10000
    if textValue13 > serverEventCall2 then
      textValue13 = StopPlayerSwitch
      textValue13()
      textValue13 = print
      serverEventCall2 = "Breaking out of player switch in leaveSetup"
      textValue13(serverEventCall2)
      break
    end
    textValue13 = SwitchInPlayer
    serverEventCall2 = PlayerPedId
    serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag = serverEventCall2()
    textValue13(serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag)
    textValue13 = print
    serverEventCall2 = "Waiting for player switch to complete in leaveSetup..."
    textValue13(serverEventCall2)
    textValue13 = Citizen
    textValue13 = textValue13.Wait
    serverEventCall2 = 0
    textValue13(serverEventCall2)
  end
  textValue13 = SetPlayerControl
  serverEventCall2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  serverEventCall2 = serverEventCall2()
  textValue20 = true
  flag20 = 0
  textValue13(serverEventCall2, textValue20, flag20)
  textValue13 = CMG
  textValue13 = textValue13.showAllDisplays
  serverEventCall2 = "setupleave"
  textValue13(serverEventCall2)
  textValue13 = ExecuteCommand
  serverEventCall2 = "showids"
  textValue13(serverEventCall2)
  textValue13 = CMG
  textValue13 = textValue13.setRedzoneTimerDisabled
  if textValue13 then
    textValue13 = CMG
    textValue13 = textValue13.setRedzoneTimerDisabled
    serverEventCall2 = false
    textValue13(serverEventCall2)
  end
  textValue13 = TriggerEvent
  serverEventCall2 = "193ee4e15e"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "193ee4e15e".
  textValue13(serverEventCall2)
  textValue13 = CMG
  textValue13 = textValue13.announceMpBigMsg
  serverEventCall2 = arg1
  textValue20 = arg2
  flag20 = 10000
  textValue13(serverEventCall2, textValue20, flag20)
  textValue13 = eventRegistration3
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  textValue13()
  textValue13 = print
  serverEventCall2 = string
  serverEventCall2 = serverEventCall2.format
  textValue20 = "Finished invoking leaveSetup"
  serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag = serverEventCall2(textValue20)
  textValue13(serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag)
end
eventRegistration2 = RegisterNetEvent
flag3 = "6c3cf6a94e"
-- Beginner: this function handles network event "6c3cf6a94e".
function workValue2(arg1, arg2)
  local arg3, cmgCall3, textValue13, serverEventCall2, textValue20
  arg3 = print
  cmgCall3 = string
  cmgCall3 = cmgCall3.format
  textValue13 = "Receieved leave setup request (title: %s subtitle: %s)"
  serverEventCall2 = arg1
  textValue20 = arg2
  cmgCall3, textValue13, serverEventCall2, textValue20 = cmgCall3(textValue13, serverEventCall2, textValue20)
  arg3(cmgCall3, textValue13, serverEventCall2, textValue20)
  arg3 = eventRegistration
  cmgCall3 = arg1
  textValue13 = arg2
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg3(cmgCall3, textValue13)
end
eventRegistration2(flag3, workValue2)
eventRegistration2 = nil
flag3 = false
function workValue2(arg1)
  local arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6
  arg2 = print
  arg3 = string
  arg3 = arg3.format
  cmgCall3 = "Started invoking transitionToSetup(%s)"
  textValue13 = arg1
  arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6 = arg3(cmgCall3, textValue13)
  arg2(arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6)
  arg2 = assert
  arg3 = eventRegistration2
  cmgCall3 = "A valid transition table is required to transition"
  arg2(arg3, cmgCall3)
  eventRegistration2.moving = true
  arg2 = RageUI
  arg2 = arg2.Visible
  arg3 = RMenu
  cmgCall3 = arg3
  arg3 = arg3.Get
  textValue13 = "bankheistssetup"
  serverEventCall2 = "mainmenu"
  -- Beginner: result below is menu.
  arg3 = arg3(cmgCall3, textValue13, serverEventCall2)
  cmgCall3 = false
  arg2(arg3, cmgCall3)
  arg2 = eventRegistration2.camera
  if arg2 then
    arg2 = SetCamActive
    arg3 = eventRegistration2.camera
    cmgCall3 = false
    arg2(arg3, cmgCall3)
    arg2 = RenderScriptCams
    arg3 = false
    cmgCall3 = false
    textValue13 = 0
    serverEventCall2 = false
    textValue20 = false
    arg2(arg3, cmgCall3, textValue13, serverEventCall2, textValue20)
    arg2 = DestroyCam
    arg3 = eventRegistration2.camera
    cmgCall3 = false
    arg2(arg3, cmgCall3)
    eventRegistration2.camera = nil
  end
  eventRegistration2.setupNumber = arg1
  arg2 = eventRegistration2.isHost
  if arg2 then
    arg2 = TriggerServerEvent
    arg3 = "9f645124da"
    cmgCall3 = arg1
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9f645124da".
    arg2(arg3, cmgCall3)
  end
  arg2 = cmgCall.setups
  arg2 = arg2[arg1]
  arg3 = SwitchOutPlayer
  cmgCall3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgCall3 = cmgCall3()
  textValue13 = 0
  serverEventCall2 = 1
  arg3(cmgCall3, textValue13, serverEventCall2)
  arg3 = Citizen
  arg3 = arg3.Wait
  cmgCall3 = 1000
  arg3(cmgCall3)
  arg3 = SetEntityCoords
  cmgCall3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgCall3 = cmgCall3()
  textValue13 = arg2.position
  textValue13 = textValue13.x
  serverEventCall2 = arg2.position
  serverEventCall2 = serverEventCall2.y
  textValue20 = arg2.position
  textValue20 = textValue20.z
  flag20 = false
  workValue19 = false
  flag21 = false
  workValue = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg3(cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue)
  arg3 = SetEntityHeading
  cmgCall3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgCall3 = cmgCall3()
  textValue13 = arg2.heading
  -- Beginner: Change the direction an entity is facing.
  arg3(cmgCall3, textValue13)
  arg3 = FreezeEntityPosition
  cmgCall3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgCall3 = cmgCall3()
  textValue13 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(cmgCall3, textValue13)
  arg3 = SetEntityVisible
  cmgCall3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  cmgCall3 = cmgCall3()
  textValue13 = false
  serverEventCall2 = false
  arg3(cmgCall3, textValue13, serverEventCall2)
  arg3 = SwitchInPlayer
  cmgCall3 = PlayerPedId
  cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6 = cmgCall3()
  arg3(cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6)
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  while true do
    cmgCall3 = IsPlayerSwitchInProgress
    cmgCall3 = cmgCall3()
    if not cmgCall3 then
      break
    end
    cmgCall3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    cmgCall3 = cmgCall3()
    cmgCall3 = cmgCall3 - arg3
    textValue13 = 10000
    if cmgCall3 > textValue13 then
      cmgCall3 = StopPlayerSwitch
      cmgCall3()
      cmgCall3 = print
      textValue13 = "Breaking out of player switch in transitionToSetup"
      cmgCall3(textValue13)
      break
    end
    cmgCall3 = SwitchInPlayer
    textValue13 = PlayerPedId
    textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6 = textValue13()
    cmgCall3(textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6)
    cmgCall3 = print
    textValue13 = "Waiting for player switch to complete in transitionToSetup..."
    cmgCall3(textValue13)
    cmgCall3 = Citizen
    cmgCall3 = cmgCall3.Wait
    textValue13 = 0
    cmgCall3(textValue13)
  end
  cmgCall3 = BeginScaleformMovieMethod
  textValue13 = eventRegistration2.scaleform
  serverEventCall2 = "SET_MENU_TITLE"
  cmgCall3(textValue13, serverEventCall2)
  cmgCall3 = BeginTextCommandScaleformString
  textValue13 = "STRING"
  cmgCall3(textValue13)
  cmgCall3 = AddTextComponentSubstringKeyboardDisplay
  textValue13 = arg2.title
  cmgCall3(textValue13)
  cmgCall3 = EndTextCommandScaleformString
  cmgCall3()
  cmgCall3 = EndScaleformMovieMethod
  cmgCall3()
  cmgCall3 = BeginScaleformMovieMethod
  textValue13 = eventRegistration2.scaleform
  serverEventCall2 = "SET_MENU_HELP_TEXT"
  cmgCall3(textValue13, serverEventCall2)
  cmgCall3 = BeginTextCommandScaleformString
  textValue13 = "STRING"
  cmgCall3(textValue13)
  cmgCall3 = AddTextComponentSubstringKeyboardDisplay
  textValue13 = arg2.description
  cmgCall3(textValue13)
  cmgCall3 = EndTextCommandScaleformString
  cmgCall3()
  cmgCall3 = EndScaleformMovieMethod
  cmgCall3()
  cmgCall3 = CreateCamWithParams
  textValue13 = "DEFAULT_SCRIPTED_CAMERA"
  serverEventCall2 = arg2.position
  serverEventCall2 = serverEventCall2.x
  textValue20 = arg2.position
  textValue20 = textValue20.y
  flag20 = arg2.position
  flag20 = flag20.z
  workValue19 = arg2.rotation
  workValue19 = workValue19.x
  flag21 = arg2.rotation
  flag21 = flag21.y
  workValue = arg2.rotation
  workValue = workValue.z
  flag = 70.0
  flag4 = false
  flag6 = 2
  cmgCall3 = cmgCall3(textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6)
  eventRegistration2.camera = cmgCall3
  cmgCall3 = SetCamActive
  textValue13 = eventRegistration2.camera
  serverEventCall2 = true
  cmgCall3(textValue13, serverEventCall2)
  cmgCall3 = RenderScriptCams
  textValue13 = true
  serverEventCall2 = false
  textValue20 = 0
  flag20 = false
  workValue19 = false
  cmgCall3(textValue13, serverEventCall2, textValue20, flag20, workValue19)
  eventRegistration2.moving = false
  cmgCall3 = print
  textValue13 = string
  textValue13 = textValue13.format
  serverEventCall2 = "Finished invoking transitionToSetup"
  textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6 = textValue13(serverEventCall2)
  cmgCall3(textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6)
end
function workValue3(arg1)
  local arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21
  arg2 = print
  arg3 = string
  arg3 = arg3.format
  cmgCall3 = "Started invoking exitSetupSelection(%s)"
  textValue13 = arg1
  arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21 = arg3(cmgCall3, textValue13)
  arg2(arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21)
  arg2 = assert
  arg3 = eventRegistration2
  cmgCall3 = "A valid transition is required to exit setup selection"
  arg2(arg3, cmgCall3)
  while true do
    arg2 = eventRegistration2.moving
    if not arg2 then
      break
    end
    arg2 = print
    arg3 = "Waiting for transition to stop moving in exitSetupSelection..."
    arg2(arg3)
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = RageUI
  arg2 = arg2.Visible
  arg3 = RMenu
  cmgCall3 = arg3
  arg3 = arg3.Get
  textValue13 = "bankheistssetup"
  serverEventCall2 = "mainmenu"
  -- Beginner: result below is menu.
  arg3 = arg3(cmgCall3, textValue13, serverEventCall2)
  cmgCall3 = false
  arg2(arg3, cmgCall3)
  arg2 = eventRegistration2.camera
  if arg2 then
    arg2 = SetCamActive
    arg3 = eventRegistration2.camera
    cmgCall3 = false
    arg2(arg3, cmgCall3)
    arg2 = RenderScriptCams
    arg3 = false
    cmgCall3 = false
    textValue13 = 0
    serverEventCall2 = false
    textValue20 = false
    arg2(arg3, cmgCall3, textValue13, serverEventCall2, textValue20)
    arg2 = DestroyCam
    arg3 = eventRegistration2.camera
    cmgCall3 = false
    arg2(arg3, cmgCall3)
    eventRegistration2.camera = nil
  end
  arg2 = SetScaleformMovieAsNoLongerNeeded
  arg3 = eventRegistration2.scaleform
  arg2(arg3)
  eventRegistration2.scaleform = nil
  arg2 = SwitchOutPlayer
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  cmgCall3 = 0
  textValue13 = 1
  arg2(arg3, cmgCall3, textValue13)
  arg2 = Citizen
  arg2 = arg2.Wait
  arg3 = 5000
  arg2(arg3)
  if arg1 then
    arg2 = SetEntityCoords
    arg3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    cmgCall3 = vector3Builder3.x
    textValue13 = vector3Builder3.y
    serverEventCall2 = vector3Builder3.z
    textValue20 = false
    flag20 = false
    workValue19 = false
    flag21 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    arg2(arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21)
  else
    arg2 = SetEntityCoords
    arg3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    cmgCall3 = vector3Builder.x
    textValue13 = vector3Builder.y
    serverEventCall2 = vector3Builder.z
    textValue20 = false
    flag20 = false
    workValue19 = false
    flag21 = false
    arg2(arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21)
  end
  arg2 = FreezeEntityPosition
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  cmgCall3 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(arg3, cmgCall3)
  arg2 = SetEntityVisible
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  cmgCall3 = true
  textValue13 = true
  arg2(arg3, cmgCall3, textValue13)
  arg2 = SwitchInPlayer
  arg3 = PlayerPedId
  arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21 = arg3()
  arg2(arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21)
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  while true do
    arg3 = IsPlayerSwitchInProgress
    arg3 = arg3()
    if not arg3 then
      break
    end
    arg3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg3 = arg3()
    arg3 = arg3 - arg2
    cmgCall3 = 10000
    if arg3 > cmgCall3 then
      arg3 = StopPlayerSwitch
      arg3()
      arg3 = print
      cmgCall3 = "Breaking out of player switch in exitSetupSelection"
      arg3(cmgCall3)
      break
    end
    arg3 = SwitchInPlayer
    cmgCall3 = PlayerPedId
    cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21 = cmgCall3()
    arg3(cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21)
    arg3 = print
    cmgCall3 = "Waiting for player switch to complete in exitSetupSelection..."
    arg3(cmgCall3)
    arg3 = Citizen
    arg3 = arg3.Wait
    cmgCall3 = 0
    arg3(cmgCall3)
  end
  arg3 = SetPlayerControl
  cmgCall3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  cmgCall3 = cmgCall3()
  textValue13 = true
  serverEventCall2 = 0
  arg3(cmgCall3, textValue13, serverEventCall2)
  arg3 = AnimpostfxStop
  cmgCall3 = "MP_OrbitalCannon"
  arg3(cmgCall3)
  arg3 = CMG
  arg3 = arg3.showAllDisplays
  cmgCall3 = "setupselection"
  arg3(cmgCall3)
  arg3 = nil
  eventRegistration2 = arg3
  if not arg1 then
    arg3 = eventRegistration3
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    arg3()
  end
  arg3 = print
  cmgCall3 = string
  cmgCall3 = cmgCall3.format
  textValue13 = "Finished invoking exitSetupSelection"
  cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21 = cmgCall3(textValue13)
  arg3(cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21)
end
function workValue4(arg1)
  local arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19
  arg2 = print
  arg3 = string
  arg3 = arg3.format
  cmgCall3 = "Started invoking enterSetupSelection(%s)"
  textValue13 = arg1
  arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19 = arg3(cmgCall3, textValue13)
  arg2(arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19)
  if arg1 then
    arg2 = TriggerServerEvent
    arg3 = "66789e23ac"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "66789e23ac".
    arg2(arg3)
  end
  arg2 = SetPlayerControl
  arg3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg3 = arg3()
  cmgCall3 = false
  textValue13 = 0
  arg2(arg3, cmgCall3, textValue13)
  arg2 = AnimpostfxPlay
  arg3 = "MP_OrbitalCannon"
  cmgCall3 = 0
  textValue13 = true
  arg2(arg3, cmgCall3, textValue13)
  arg2 = CMG
  arg2 = arg2.hideAllDisplays
  arg3 = "setupselection"
  arg2(arg3)
  arg2 = {}
  eventRegistration2 = arg2
  eventRegistration2.isHost = arg1
  arg2 = {}
  eventRegistration2.players = arg2
  eventRegistration2.setupNumber = 1
  arg2 = RequestScaleformMovie
  arg3 = "ORBITAL_CANNON_CAM"
  -- Beginner: result below is scaleformHandle.
  arg2 = arg2(arg3)
  eventRegistration2.scaleform = arg2
  while true do
    arg2 = HasScaleformMovieLoaded
    arg3 = eventRegistration2.scaleform
    arg2 = arg2(arg3)
    if arg2 then
      break
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = BeginScaleformMovieMethod
  arg3 = eventRegistration2.scaleform
  cmgCall3 = "SET_STATE"
  arg2(arg3, cmgCall3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 1
  arg2(arg3)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = Citizen
  arg2 = arg2.Wait
  arg3 = 0
  arg2(arg3)
  arg2 = workValue2
  arg3 = eventRegistration2.setupNumber
  arg2(arg3)
  while true do
    arg2 = eventRegistration2
    if not arg2 then
      break
    end
    arg2 = eventRegistration2.camera
    if arg2 then
      arg2 = eventRegistration2.isHost
      if arg2 then
        arg2 = eventRegistration2.blockInteraction
        if not arg2 then
          arg2 = IsDisabledControlJustPressed
          arg3 = 0
          cmgCall3 = 174
          arg2 = arg2(arg3, cmgCall3)
          if arg2 then
            arg2 = eventRegistration2.setupNumber
            arg2 = arg2 - 1
            if arg2 > 0 then
              arg2 = workValue2
              arg3 = eventRegistration2.setupNumber
              arg3 = arg3 - 1
              arg2(arg3)
            end
          end
          arg2 = IsDisabledControlJustPressed
          arg3 = 0
          cmgCall3 = 175
          arg2 = arg2(arg3, cmgCall3)
          if arg2 then
            arg2 = eventRegistration2.setupNumber
            arg2 = arg2 + 1
            arg3 = cmgCall.setups
            arg3 = #arg3
            if arg2 <= arg3 then
              arg2 = workValue2
              arg3 = eventRegistration2.setupNumber
              arg3 = arg3 + 1
              arg2(arg3)
            end
          end
        end
      end
      arg2 = eventRegistration2.blockInteraction
      if not arg2 then
        arg2 = IsDisabledControlJustPressed
        arg3 = 0
        cmgCall3 = 200
        arg2 = arg2(arg3, cmgCall3)
        if arg2 then
          arg2 = TriggerServerEvent
          arg3 = "fcbc43097b"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fcbc43097b".
          arg2(arg3)
          arg2 = print
          arg3 = string
          arg3 = arg3.format
          cmgCall3 = "Finished invoking enterSetupSelection"
          arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19 = arg3(cmgCall3)
          arg2(arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19)
          return
        end
      end
      arg2 = DrawScaleformMovieFullscreen
      arg3 = eventRegistration2.scaleform
      cmgCall3 = 255
      textValue13 = 255
      serverEventCall2 = 255
      textValue20 = 255
      flag20 = 0
      arg2(arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20)
      arg2 = cmgCall.setups
      arg3 = eventRegistration2.setupNumber
      arg2 = arg2[arg3]
      if arg2 then
        arg3 = CMG
        arg3 = arg3.DrawText
        cmgCall3 = 0.5
        textValue13 = 0.9
        serverEventCall2 = "~r~This setup is part of the ~h~"
        textValue20 = arg2.series
        flag20 = "~h~ series."
        serverEventCall2 = serverEventCall2 .. textValue20 .. flag20
        textValue20 = 0.8
        flag20 = nil
        workValue19 = 0
        arg3(cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19)
      end
      arg3 = RageUI
      arg3 = arg3.Visible
      cmgCall3 = RMenu
      textValue13 = cmgCall3
      cmgCall3 = cmgCall3.Get
      serverEventCall2 = "bankheistssetup"
      textValue20 = "mainmenu"
      -- Beginner: result below is menu.
      cmgCall3 = cmgCall3(textValue13, serverEventCall2, textValue20)
      textValue13 = true
      arg3(cmgCall3, textValue13)
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
end
rageUiCall = RMenu
rageUiCall = rageUiCall.Add
textValue2 = "bankheistssetup"
textValue3 = "mainmenu"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue4 = "Heist Setup"
textValue5 = "Main Menu"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, cmgCall2, textValue6, numberValue5, numberValue6, numberValue7, numberValue8, flag16, flag17, eventRegistration4, textValue8, workValue6, workValue7, workValue8, workValue9, eventRegistration5, textValue9, workValue10, workValue11, workValue12, workValue13, workValue14, workValue15, cmgCall5, textValue11, textValue12, rageUiCall5, textValue16, threadCall, rageUiCall6, rageUiCall7, textValue17, textValue18 = rageUiCall4()
rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, cmgCall2, textValue6, numberValue5, numberValue6, numberValue7, numberValue8, flag16, flag17, eventRegistration4, textValue8, workValue6, workValue7, workValue8, workValue9, eventRegistration5, textValue9, workValue10, workValue11, workValue12, workValue13, workValue14, workValue15, cmgCall5, textValue11, textValue12, rageUiCall5, textValue16, threadCall, rageUiCall6, rageUiCall7, textValue17, textValue18 = rageUiCall2(textValue4, textValue5, rageUiCall3, rageUiCall4, cmgCall2, textValue6, numberValue5, numberValue6, numberValue7, numberValue8, flag16, flag17, eventRegistration4, textValue8, workValue6, workValue7, workValue8, workValue9, eventRegistration5, textValue9, workValue10, workValue11, workValue12, workValue13, workValue14, workValue15, cmgCall5, textValue11, textValue12, rageUiCall5, textValue16, threadCall, rageUiCall6, rageUiCall7, textValue17, textValue18)
rageUiCall(textValue2, textValue3, rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, cmgCall2, textValue6, numberValue5, numberValue6, numberValue7, numberValue8, flag16, flag17, eventRegistration4, textValue8, workValue6, workValue7, workValue8, workValue9, eventRegistration5, textValue9, workValue10, workValue11, workValue12, workValue13, workValue14, workValue15, cmgCall5, textValue11, textValue12, rageUiCall5, textValue16, threadCall, rageUiCall6, rageUiCall7, textValue17, textValue18)
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateWhile
textValue2 = 1.0
textValue3 = RMenu
rageUiCall2 = textValue3
textValue3 = textValue3.Get
textValue4 = "bankheistssetup"
textValue5 = "mainmenu"
-- Beginner: result below is menu.
textValue3 = textValue3(rageUiCall2, textValue4, textValue5)
rageUiCall2 = nil
function textValue4()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  cmgCall3 = "bankheistssetup"
  textValue13 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, cmgCall3, textValue13)
  arg3 = true
  cmgCall3 = true
  textValue13 = true
  function serverEventCall2()
    local arg12, arg22, textValue7, flag18, textValue14, flag19, rageUiCall8, numberValue12, textValue21, dataTable, textValue, flag2
    arg12 = eventRegistration2
    if not arg12 then
      return
    end
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = string
    arg22 = arg22.format
    textValue7 = "Joined Players (%d/10)"
    flag18 = eventRegistration2.players
    flag18 = #flag18
    arg22, textValue7, flag18, textValue14, flag19, rageUiCall8, numberValue12, textValue21, dataTable, textValue, flag2 = arg22(textValue7, flag18)
    arg12(arg22, textValue7, flag18, textValue14, flag19, rageUiCall8, numberValue12, textValue21, dataTable, textValue, flag2)
    arg12 = ipairs
    arg22 = eventRegistration2.players
    arg12, arg22, textValue7, flag18 = arg12(arg22)
    for textValue14, flag19 in arg12, arg22, textValue7, flag18 do
      rageUiCall8 = RageUI
      rageUiCall8 = rageUiCall8.ButtonWithStyle
      numberValue12 = flag19.name
      textValue21 = ""
      dataTable = {}
      textValue = flag19.isHost
      if textValue then
        textValue = "HOST"
        if textValue then
          goto flow_label_31
        end
      end
      textValue = "CREW"
      ::flow_label_31::
      dataTable.RightLabel = textValue
      textValue = true
      function flag2()
        local arg13, arg23
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall8(numberValue12, textValue21, dataTable, textValue, flag2)
    end
    arg12 = eventRegistration2.blockInteraction
    if arg12 then
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "Waiting for heist preparation..."
      arg12(arg22)
    else
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "Heist Options"
      arg12(arg22)
      arg12 = RageUI
      arg12 = arg12.Button
      arg22 = "~b~Buy Full Armour"
      textValue7 = ""
      flag18 = true
      function textValue14(arg13, arg23, arg32)
        local cmgCall4, textValue15
        if arg32 then
          cmgCall4 = TriggerServerEvent
          textValue15 = "9c0126b3c7"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c0126b3c7".
          cmgCall4(textValue15)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, textValue7, flag18, textValue14)
      arg12 = eventRegistration2.isHost
      if arg12 then
        arg12 = eventRegistration2.players
        arg12 = #arg12
        if arg12 < 10 then
          arg12 = RageUI
          arg12 = arg12.Button
          arg22 = "~b~Invite Player"
          textValue7 = ""
          flag18 = true
          function textValue14(arg13, arg23, arg32)
            local cmgCall4, textValue15, textValue19, workValue17
            if arg32 then
              cmgCall4 = CMG
              cmgCall4 = cmgCall4.clientPrompt
              textValue15 = "User's Perm Id"
              textValue19 = ""
              function workValue17(arg14)
                local workValue5, serverEventCall, textValue10, workValue16
                workValue5 = tonumber
                serverEventCall = arg14
                workValue5 = workValue5(serverEventCall)
                if workValue5 then
                  serverEventCall = TriggerServerEvent
                  textValue10 = "e35887ab2f"
                  workValue16 = workValue5
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e35887ab2f".
                  serverEventCall(textValue10, workValue16)
                end
              end
              cmgCall4(textValue15, textValue19, workValue17)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          arg12(arg22, textValue7, flag18, textValue14)
        end
        arg12 = cmgCall.setups
        arg22 = eventRegistration2.setupNumber
        arg12 = arg12[arg22]
        arg22 = CMG
        textValue7 = "getClientGangRpHeistSetupCostAfterDiscount"
        arg22 = arg22[textValue7]
        textValue7 = arg12.cost
        arg22 = arg22(textValue7)
        textValue7 = RageUI
        textValue7 = textValue7.Button
        flag18 = string
        flag18 = flag18.format
        textValue14 = "~b~Start Heist (\194\163%s)"
        flag19 = getMoneyStringFormatted
        rageUiCall8 = arg22
        flag19, rageUiCall8, numberValue12, textValue21, dataTable, textValue, flag2 = flag19(rageUiCall8)
        flag18 = flag18(textValue14, flag19, rageUiCall8, numberValue12, textValue21, dataTable, textValue, flag2)
        textValue14 = ""
        flag19 = true
        function rageUiCall8(arg13, arg23, arg32)
          local cmgCall4, textValue15, textValue19
          if arg32 then
            cmgCall4 = TriggerServerEvent
            textValue15 = "ed75e47264"
            textValue19 = eventRegistration2.setupNumber
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ed75e47264".
            cmgCall4(textValue15, textValue19)
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        textValue7(flag18, textValue14, flag19, rageUiCall8)
      else
        arg12 = RageUI
        arg12 = arg12.Separator
        arg22 = "Waiting for host..."
        arg12(arg22)
      end
    end
  end
  arg1(arg2, arg3, cmgCall3, textValue13, serverEventCall2)
end
rageUiCall(textValue2, textValue3, rageUiCall2, textValue4)
rageUiCall = RMenu
textValue2 = rageUiCall
rageUiCall = rageUiCall.Get
textValue3 = "bankheistssetup"
rageUiCall2 = "mainmenu"
-- Beginner: result below is menu.
rageUiCall = rageUiCall(textValue2, textValue3, rageUiCall2)
textValue2 = rageUiCall
rageUiCall = rageUiCall.AddInstructionButton
textValue3 = {}
rageUiCall2 = "~INPUT_CELLPHONE_CANCEL~"
textValue4 = "Exit Selection"
textValue3[1] = rageUiCall2
textValue3[2] = textValue4
rageUiCall(textValue2, textValue3)
rageUiCall = RMenu
textValue2 = rageUiCall
rageUiCall = rageUiCall.Get
textValue3 = "bankheistssetup"
rageUiCall2 = "mainmenu"
-- Beginner: result below is menu.
rageUiCall = rageUiCall(textValue2, textValue3, rageUiCall2)
textValue2 = rageUiCall
rageUiCall = rageUiCall.AddInstructionButton
textValue3 = {}
rageUiCall2 = "~INPUT_CELLPHONE_RIGHT~"
textValue4 = "Next Setup"
textValue3[1] = rageUiCall2
textValue3[2] = textValue4
rageUiCall(textValue2, textValue3)
rageUiCall = RMenu
textValue2 = rageUiCall
rageUiCall = rageUiCall.Get
textValue3 = "bankheistssetup"
rageUiCall2 = "mainmenu"
-- Beginner: result below is menu.
rageUiCall = rageUiCall(textValue2, textValue3, rageUiCall2)
textValue2 = rageUiCall
rageUiCall = rageUiCall.AddInstructionButton
textValue3 = {}
rageUiCall2 = "~INPUT_CELLPHONE_LEFT~"
textValue4 = "Previous Setup"
textValue3[1] = rageUiCall2
textValue3[2] = textValue4
rageUiCall(textValue2, textValue3)
rageUiCall = RegisterNetEvent
textValue2 = "cbe753a39d"
-- Beginner: this function handles network event "cbe753a39d".
function textValue3(arg1, arg2)
  local arg3, cmgCall3, textValue13
  arg3 = eventRegistration2
  if not arg3 then
    arg3 = Citizen
    arg3 = arg3.CreateThreadNow
    -- Beginner: this function handles network event "cbe753a39d".
    function cmgCall3()
      local arg12, arg22
      arg12 = workValue4
      arg22 = false
      arg12(arg22)
    end
    arg3(cmgCall3)
    arg3 = assert
    cmgCall3 = eventRegistration2
    textValue13 = "Attempted to set transition information to an invalid table"
    arg3(cmgCall3, textValue13)
    eventRegistration2.players = arg1
    eventRegistration2.setupNumber = arg2
  else
    eventRegistration2.players = arg1
    arg3 = eventRegistration2.setupNumber
    if arg3 ~= arg2 then
      arg3 = eventRegistration2.isHost
      if not arg3 then
        arg3 = workValue2
        cmgCall3 = arg2
        arg3(cmgCall3)
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cbe753a39d".
rageUiCall(textValue2, textValue3)
rageUiCall = RegisterNetEvent
textValue2 = "fcbc43097b"
-- Beginner: this function handles network event "fcbc43097b".
function textValue3(arg1)
  local arg2, arg3
  arg2 = workValue3
  arg3 = arg1
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fcbc43097b".
rageUiCall(textValue2, textValue3)
rageUiCall = RegisterNetEvent
textValue2 = "ed75e47264"
-- Beginner: this function handles network event "ed75e47264".
function textValue3()
  local arg1, arg2, arg3
  arg1 = assert
  arg2 = eventRegistration2
  arg3 = "Attempted to block interaction for an invalid transition"
  arg1(arg2, arg3)
  eventRegistration2.blockInteraction = true
  arg1 = BeginTextCommandBusyspinnerOn
  arg2 = "CELEB_WPLYRS"
  arg1(arg2)
  arg1 = EndTextCommandBusyspinnerOn
  arg2 = 4
  arg1(arg2)
  arg1 = Citizen
  arg1 = arg1.Wait
  arg2 = 15000
  arg1(arg2)
  arg1 = BusyspinnerOff
  arg1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ed75e47264".
rageUiCall(textValue2, textValue3)
rageUiCall = RegisterNetEvent
textValue2 = "252fb6769b"
-- Beginner: this function handles network event "252fb6769b".
function textValue3(arg1)
  local arg2, arg3, cmgCall3, textValue13, serverEventCall2
  arg2 = flag3
  if arg2 then
    arg2 = false
    flag3 = arg2
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = true
  flag3 = arg2
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  while true do
    arg3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg3 = arg3()
    arg3 = arg3 - arg2
    cmgCall3 = 10000
    if not (arg3 < cmgCall3) then
      break
    end
    arg3 = flag3
    if not arg3 then
      return
    end
    arg3 = tCMG
    arg3 = arg3.notify
    cmgCall3 = string
    cmgCall3 = cmgCall3.format
    textValue13 = "%s has invited you to a setup, press (~y~Y~w~) to accept (~r~L~w~) to refuse"
    serverEventCall2 = arg1
    cmgCall3, textValue13, serverEventCall2 = cmgCall3(textValue13, serverEventCall2)
    -- Beginner: Show a notification to the player.
    arg3(cmgCall3, textValue13, serverEventCall2)
    arg3 = IsControlJustPressed
    cmgCall3 = 0
    textValue13 = 246
    arg3 = arg3(cmgCall3, textValue13)
    if arg3 then
      arg3 = tCMG
      arg3 = arg3.notify
      cmgCall3 = "~g~Request Accepted"
      arg3(cmgCall3)
      arg3 = TriggerServerEvent
      cmgCall3 = "de439b7711"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "de439b7711".
      arg3(cmgCall3)
      arg3 = false
      flag3 = arg3
    else
      arg3 = IsControlJustPressed
      cmgCall3 = 0
      textValue13 = 182
      arg3 = arg3(cmgCall3, textValue13)
      if arg3 then
        arg3 = tCMG
        arg3 = arg3.notify
        cmgCall3 = "~g~Request Refused"
        -- Beginner: Show a notification to the player.
        arg3(cmgCall3)
        arg3 = false
        flag3 = arg3
      end
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    cmgCall3 = 0
    arg3(cmgCall3)
  end
  arg3 = false
  flag3 = arg3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "252fb6769b".
rageUiCall(textValue2, textValue3)
function rageUiCall()
  local arg1, arg2, arg3, cmgCall3
  arg1 = eventRegistration2
  if not arg1 then
    arg1 = numberValue11
    if arg1 then
      arg1 = numberValue11.isLeaving
      if not arg1 then
        arg1 = drawNativeNotification
        arg2 = "Press ~INPUT_PICKUP~ to exit setup"
        -- Beginner: Show a GTA-style notification/help prompt.
        arg1(arg2)
        arg1 = DisableControlAction
        arg2 = 0
        arg3 = 38
        cmgCall3 = true
        arg1(arg2, arg3, cmgCall3)
        arg1 = IsDisabledControlJustPressed
        arg2 = 0
        arg3 = 38
        arg1 = arg1(arg2, arg3)
        if arg1 then
          arg1 = TriggerServerEvent
          arg2 = "6c3cf6a94e"
          arg3 = false
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6c3cf6a94e".
          arg1(arg2, arg3)
          numberValue11.isLeaving = true
        end
      end
    else
      arg1 = drawNativeNotification
      arg2 = "Press ~INPUT_PICKUP~ to enter setups"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg1(arg2)
      arg1 = DisableControlAction
      arg2 = 0
      arg3 = 38
      cmgCall3 = true
      arg1(arg2, arg3, cmgCall3)
      arg1 = IsDisabledControlJustPressed
      arg2 = 0
      arg3 = 38
      arg1 = arg1(arg2, arg3)
      if arg1 then
        arg1 = CMG
        arg1 = arg1.isEmergencyService
        arg1 = arg1()
        if arg1 then
          arg1 = notify
          arg2 = "~r~You can not be clocked on to enter the bank heist."
          -- Beginner: Show a notification to the player.
          arg1(arg2)
        else
          arg1 = Citizen
          arg1 = arg1.CreateThreadNow
          function arg2()
            local arg12, arg22
            arg12 = workValue4
            arg22 = true
            arg12(arg22)
          end
          arg1(arg2)
        end
      end
    end
  end
end
textValue2 = tCMG
textValue2 = textValue2.addMarker
textValue3 = vector3Builder.x
rageUiCall2 = vector3Builder.y
textValue4 = vector3Builder.z
textValue5 = 0.5
rageUiCall3 = 0.5
rageUiCall4 = 0.5
cmgCall2 = 10
textValue6 = 255
numberValue5 = 81
numberValue6 = 170
numberValue7 = 50
numberValue8 = 2
flag16 = false
flag17 = false
eventRegistration4 = true
-- Beginner: Create a world marker.
textValue2(textValue3, rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, cmgCall2, textValue6, numberValue5, numberValue6, numberValue7, numberValue8, flag16, flag17, eventRegistration4)
textValue2 = CMG
textValue2 = textValue2.addBlipContext
textValue3 = "Civilian"
rageUiCall2 = tCMG
rageUiCall2 = rageUiCall2.addBlip
textValue4 = vector3Builder.x
textValue5 = vector3Builder.y
rageUiCall3 = vector3Builder.z
rageUiCall4 = 363
cmgCall2 = 26
textValue6 = "Heist Setup Factory"
rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, cmgCall2, textValue6, numberValue5, numberValue6, numberValue7, numberValue8, flag16, flag17, eventRegistration4, textValue8, workValue6, workValue7, workValue8, workValue9, eventRegistration5, textValue9, workValue10, workValue11, workValue12, workValue13, workValue14, workValue15, cmgCall5, textValue11, textValue12, rageUiCall5, textValue16, threadCall, rageUiCall6, rageUiCall7, textValue17, textValue18 = rageUiCall2(textValue4, textValue5, rageUiCall3, rageUiCall4, cmgCall2, textValue6)
textValue2(textValue3, rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, cmgCall2, textValue6, numberValue5, numberValue6, numberValue7, numberValue8, flag16, flag17, eventRegistration4, textValue8, workValue6, workValue7, workValue8, workValue9, eventRegistration5, textValue9, workValue10, workValue11, workValue12, workValue13, workValue14, workValue15, cmgCall5, textValue11, textValue12, rageUiCall5, textValue16, threadCall, rageUiCall6, rageUiCall7, textValue17, textValue18)
textValue2 = CMG
textValue2 = textValue2.createArea
textValue3 = "bankheists_select_setups"
rageUiCall2 = vector3Builder
textValue4 = 2.0
textValue5 = 5.0
function rageUiCall3()
  local arg1, arg2
end
function rageUiCall4()
  local arg1, arg2
end
cmgCall2 = rageUiCall
textValue6 = nil
-- Beginner: Create an interaction area around a world position.
textValue2(textValue3, rageUiCall2, textValue4, textValue5, rageUiCall3, rageUiCall4, cmgCall2, textValue6)
textValue2 = {}
textValue2.state = "INACTIVE"
textValue2.lastStateChange = 0
textValue3 = {}
textValue3.scaleform = nil
textValue3.buttons = nil
textValue3.lives = nil
textValue3.text = nil
textValue3.type = nil
textValue2.hacking = textValue3
textValue3 = {}
textValue2.trollies = textValue3
textValue2.lastHurt = 0
textValue2.lootedAmount = 0
textValue2.alarmDisabled = false
textValue3 = false
rageUiCall2 = false
textValue4 = false
textValue5 = CMG
function rageUiCall3()
  local arg1, arg2
  arg1 = eventRegistration2
  arg1 = nil ~= arg1
  return arg1
end
textValue5.isPlayerInBankHeistSetup = rageUiCall3
function textValue5(arg1)
  local arg2, arg3, cmgCall3, textValue13
  arg2 = print
  arg3 = string
  arg3 = arg3.format
  cmgCall3 = "[BankHeist] %s"
  textValue13 = arg1
  arg3, cmgCall3, textValue13 = arg3(cmgCall3, textValue13)
  arg2(arg3, cmgCall3, textValue13)
end
rageUiCall3 = RegisterNetEvent
rageUiCall4 = "f074d4afdf"
-- Beginner: this function handles network event "f074d4afdf".
function cmgCall2()
  local arg1, arg2, arg3, cmgCall3, textValue13
  arg1 = CMG
  arg1 = arg1.announceMpSmallMsg
  arg2 = "ALERT"
  arg3 = "An alarm has been triggered at the Bank of England"
  cmgCall3 = 9
  textValue13 = 10000
  arg1(arg2, arg3, cmgCall3, textValue13)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f074d4afdf".
rageUiCall3(rageUiCall4, cmgCall2)
rageUiCall3 = RegisterNetEvent
rageUiCall4 = "bb09d4cd38"
-- Beginner: this function handles network event "bb09d4cd38".
function cmgCall2(arg1)
  local arg2
  textValue2.alarmDisabled = arg1
end
rageUiCall3(rageUiCall4, cmgCall2)
-- Beginner: this function handles network event "bb09d4cd38".
function rageUiCall3()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "police.onduty.permission"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = textValue2.alarmDisabled
    if not arg1 then
      arg1 = textValue2.state
      if "INACTIVE" ~= arg1 then
        arg1 = drawNativeNotification
        arg2 = "Press ~INPUT_PICKUP~ to turn off the alarm"
        -- Beginner: Show a GTA-style notification/help prompt.
        arg1(arg2)
      end
    end
  end
end
function rageUiCall4()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "police.onduty.permission"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = textValue2.alarmDisabled
    if not arg1 then
      arg1 = textValue2.state
      if "INACTIVE" ~= arg1 then
        arg1 = IsControlJustPressed
        arg2 = 0
        arg3 = 38
        arg1 = arg1(arg2, arg3)
        if arg1 then
          arg1 = TriggerServerEvent
          arg2 = "bb09d4cd38"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bb09d4cd38".
          arg1(arg2)
        end
      end
    end
  end
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createArea
textValue6 = "bankheists_alarm_disable"
numberValue5 = cmgCall.alarmDisablePos
numberValue6 = 2.0
numberValue7 = 2.0
numberValue8 = rageUiCall3
function flag16()
  local arg1, arg2
end
flag17 = rageUiCall4
eventRegistration4 = nil
-- Beginner: Create an interaction area around a world position.
cmgCall2(textValue6, numberValue5, numberValue6, numberValue7, numberValue8, flag16, flag17, eventRegistration4)
function cmgCall2()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21
  arg1 = GetResourceKvpInt
  arg2 = "cmg_bankheists_lastdone"
  arg1 = arg1(arg2)
  if arg1 then
    arg2 = type
    arg3 = arg1
    arg2 = arg2(arg3)
    if "number" == arg2 and arg1 > 0 then
      arg2 = cmgCall.playerDelayBetweenHeists
      arg3 = GetCloudTimeAsInt
      -- Beginner: result below is unixTime.
      arg3 = arg3()
      arg3 = arg3 - arg1
      arg2 = arg2 - arg3
      arg3 = math
      arg3 = arg3.floor
      cmgCall3 = arg2 / 60
      arg3 = arg3(cmgCall3)
      cmgCall3 = math
      cmgCall3 = cmgCall3.floor
      textValue13 = arg3 / 60
      cmgCall3 = cmgCall3(textValue13)
      textValue13 = math
      textValue13 = textValue13.floor
      serverEventCall2 = cmgCall3 / 24
      textValue13 = textValue13(serverEventCall2)
      if textValue13 > 0 then
        serverEventCall2 = cmgCall3 * 60
        arg3 = arg3 - serverEventCall2
        serverEventCall2 = textValue13 * 24
        cmgCall3 = cmgCall3 - serverEventCall2
        serverEventCall2 = string
        serverEventCall2 = serverEventCall2.format
        textValue20 = "%dd %dh %dm"
        flag20 = textValue13
        workValue19 = cmgCall3
        flag21 = arg3
        return serverEventCall2(textValue20, flag20, workValue19, flag21)
      elseif cmgCall3 > 0 then
        serverEventCall2 = cmgCall3 * 60
        arg3 = arg3 - serverEventCall2
        serverEventCall2 = string
        serverEventCall2 = serverEventCall2.format
        textValue20 = "%dh %dm"
        flag20 = cmgCall3
        workValue19 = arg3
        return serverEventCall2(textValue20, flag20, workValue19)
      else
        serverEventCall2 = string
        serverEventCall2 = serverEventCall2.format
        textValue20 = "%dm"
        flag20 = arg3
        return serverEventCall2(textValue20, flag20)
      end
  end
  else
    arg2 = "no time"
    return arg2
  end
end
function textValue6()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2
  arg1 = GetResourceKvpInt
  arg2 = "cmg_bankheists_lastdone"
  arg1 = arg1(arg2)
  if arg1 then
    arg2 = type
    arg3 = arg1
    arg2 = arg2(arg3)
    if "number" == arg2 and arg1 > 0 then
      arg2 = GetCloudTimeAsInt
      -- Beginner: result below is unixTime.
      arg2 = arg2()
      arg2 = arg2 - arg1
      arg3 = 1800
      if not (arg2 < arg3) then
        arg3 = cmgCall.playerDelayBetweenHeists
        if not (arg2 > arg3) then
          goto flow_label_26
        end
      end
      arg3 = false
      return arg3
      goto flow_label_39
      ::flow_label_26::
      arg3 = drawNativeNotification
      cmgCall3 = string
      cmgCall3 = cmgCall3.format
      textValue13 = "You can not interact with a heist for another %s"
      serverEventCall2 = cmgCall2
      serverEventCall2 = serverEventCall2()
      cmgCall3, textValue13, serverEventCall2 = cmgCall3(textValue13, serverEventCall2)
      -- Beginner: Show a GTA-style notification/help prompt.
      arg3(cmgCall3, textValue13, serverEventCall2)
      arg3 = true
      return arg3
  end
  else
    arg2 = false
    return arg2
  end
  ::flow_label_39::
end
function numberValue5()
  local arg1, arg2, arg3
  arg1 = SetResourceKvpInt
  arg2 = "cmg_bankheists_lastdone"
  arg3 = GetCloudTimeAsInt
  -- Beginner: result below is unixTime.
  arg3 = arg3()
  arg1(arg2, arg3)
  arg1 = CMG
  arg1 = arg1.setPlayerCombatTimer
  arg2 = 300
  arg3 = false
  arg1(arg2, arg3)
end
function numberValue6(arg1)
  local arg2, arg3, cmgCall3, textValue13
  arg2 = SetScaleformMovieAsNoLongerNeeded
  arg3 = textValue2.hacking
  arg3 = arg3.scaleform
  arg2(arg3)
  arg2 = SetScaleformMovieAsNoLongerNeeded
  arg3 = textValue2.hacking
  arg3 = arg3.buttons
  arg2(arg3)
  arg2 = textValue2.hacking
  arg2.scaleform = nil
  arg2 = textValue2.hacking
  arg2.buttons = nil
  arg2 = textValue2.hacking
  arg2.lives = nil
  arg2 = textValue2.hacking
  arg2.text = nil
  arg2 = textValue2.hacking
  arg2.type = nil
  if arg1 then
    arg2 = SetPlayerControl
    arg3 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    arg3 = arg3()
    cmgCall3 = true
    textValue13 = 0
    arg2(arg3, cmgCall3, textValue13)
    arg2 = FreezeEntityPosition
    arg3 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg3 = arg3()
    cmgCall3 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    arg2(arg3, cmgCall3)
    arg2 = CMG
    arg2 = arg2.showAllDisplays
    arg3 = "bankheisthacking"
    arg2(arg3)
    arg2 = TriggerServerEvent
    arg3 = "42aa1d4e55"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "42aa1d4e55".
    arg2(arg3)
  end
end
function numberValue7()
  local arg1, arg2, arg3, cmgCall3, textValue13
  arg1 = numberValue6
  arg2 = false
  arg1(arg2)
  arg1 = true
  arg2 = TriggerEvent
  arg3 = "ultra-voltlab"
  cmgCall3 = 60
  function textValue13(arg12, arg22)
    local textValue7, flag18, textValue14, flag19, rageUiCall8
    textValue7 = false
    arg1 = textValue7
    textValue7 = textValue5
    flag18 = string
    flag18 = flag18.format
    textValue14 = "Received voltlab callback (status: %sd message: %s)"
    flag19 = arg12
    rageUiCall8 = arg22
    flag18, textValue14, flag19, rageUiCall8 = flag18(textValue14, flag19, rageUiCall8)
    textValue7(flag18, textValue14, flag19, rageUiCall8)
    if 1 == arg12 then
      textValue7 = numberValue5
      textValue7()
      textValue7 = TriggerServerEvent
      flag18 = "59cbb58053"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "59cbb58053".
      textValue7(flag18)
    else
      textValue7 = TriggerServerEvent
      flag18 = "42aa1d4e55"
      textValue7(flag18)
    end
    textValue7 = SetPlayerControl
    flag18 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    flag18 = flag18()
    textValue14 = true
    flag19 = 0
    textValue7(flag18, textValue14, flag19)
    textValue7 = FreezeEntityPosition
    flag18 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    flag18 = flag18()
    textValue14 = false
    -- Beginner: Freeze or unfreeze an entity in place.
    textValue7(flag18, textValue14)
    textValue7 = CMG
    textValue7 = textValue7.showAllDisplays
    flag18 = "bankheisthacking"
    textValue7(flag18)
  end
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "ultra-voltlab".
  arg2(arg3, cmgCall3, textValue13)
  arg2 = textValue2.hacking
  arg2.type = 2
  arg2 = Citizen
  arg2 = arg2.CreateThread
  function arg3()
    local arg12, arg22, textValue7, flag18
    while true do
      arg12 = arg1
      if not arg12 then
        break
      end
      arg12 = DisablePlayerFiring
      arg22 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      arg22 = arg22()
      textValue7 = true
      arg12(arg22, textValue7)
      arg12 = DisableControlAction
      arg22 = 0
      textValue7 = 24
      flag18 = true
      arg12(arg22, textValue7, flag18)
      arg12 = DisableControlAction
      arg22 = 0
      textValue7 = 25
      flag18 = true
      arg12(arg22, textValue7, flag18)
      arg12 = Citizen
      arg12 = arg12.Wait
      arg22 = 0
      arg12(arg22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end
function numberValue8()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2
  arg1 = CMG
  arg1 = arg1.hideAllDisplays
  arg2 = "bankheisthacking"
  arg1(arg2)
  arg1 = RequestScaleformMovieInteractive
  arg2 = "HACKING_PC"
  arg1 = arg1(arg2)
  while true do
    arg2 = HasScaleformMovieLoaded
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      break
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = textValue2.hacking
  arg2.scaleform = arg1
  arg2 = SetPlayerControl
  arg3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg3 = arg3()
  cmgCall3 = false
  textValue13 = 0
  arg2(arg3, cmgCall3, textValue13)
  arg2 = BeginScaleformMovieMethod
  arg3 = textValue2.hacking
  arg3 = arg3.scaleform
  cmgCall3 = "SET_LABELS"
  arg2(arg3, cmgCall3)
  arg2 = _ENV
  arg3 = "ScaleformMovieMethodAddParamTextureNameString"
  arg2 = arg2[arg3]
  arg3 = "Local Disk (C:)"
  arg2(arg3)
  arg2 = _ENV
  arg3 = "ScaleformMovieMethodAddParamTextureNameString"
  arg2 = arg2[arg3]
  arg3 = "Network"
  arg2(arg3)
  arg2 = _ENV
  arg3 = "ScaleformMovieMethodAddParamTextureNameString"
  arg2 = arg2[arg3]
  arg3 = "External Device (F:)"
  arg2(arg3)
  arg2 = _ENV
  arg3 = "ScaleformMovieMethodAddParamTextureNameString"
  arg2 = arg2[arg3]
  arg3 = "sonic.exe"
  arg2(arg3)
  arg2 = _ENV
  arg3 = "ScaleformMovieMethodAddParamTextureNameString"
  arg2 = arg2[arg3]
  arg3 = "keyhack.exe"
  arg2(arg3)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = BeginScaleformMovieMethod
  arg3 = textValue2.hacking
  arg3 = arg3.scaleform
  cmgCall3 = "SET_BACKGROUND"
  arg2(arg3, cmgCall3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 0
  arg2(arg3)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = BeginScaleformMovieMethod
  arg3 = textValue2.hacking
  arg3 = arg3.scaleform
  cmgCall3 = "ADD_PROGRAM"
  arg2(arg3, cmgCall3)
  arg2 = ScaleformMovieMethodAddParamFloat
  arg3 = 1.0
  arg2(arg3)
  arg2 = ScaleformMovieMethodAddParamFloat
  arg3 = 4.0
  arg2(arg3)
  arg2 = _ENV
  arg3 = "ScaleformMovieMethodAddParamTextureNameString"
  arg2 = arg2[arg3]
  arg3 = "My Computer"
  arg2(arg3)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = BeginScaleformMovieMethod
  arg3 = textValue2.hacking
  arg3 = arg3.scaleform
  cmgCall3 = "ADD_PROGRAM"
  arg2(arg3, cmgCall3)
  arg2 = ScaleformMovieMethodAddParamFloat
  arg3 = 6.0
  arg2(arg3)
  arg2 = ScaleformMovieMethodAddParamFloat
  arg3 = 6.0
  arg2(arg3)
  arg2 = _ENV
  arg3 = "ScaleformMovieMethodAddParamTextureNameString"
  arg2 = arg2[arg3]
  arg3 = "Power Off"
  arg2(arg3)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = BeginScaleformMovieMethod
  arg3 = textValue2.hacking
  arg3 = arg3.scaleform
  cmgCall3 = "SET_COLUMN_SPEED"
  arg2(arg3, cmgCall3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 0
  arg2(arg3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 255
  arg2(arg3)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = BeginScaleformMovieMethod
  arg3 = textValue2.hacking
  arg3 = arg3.scaleform
  cmgCall3 = "SET_COLUMN_SPEED"
  arg2(arg3, cmgCall3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 1
  arg2(arg3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 255
  arg2(arg3)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = BeginScaleformMovieMethod
  arg3 = textValue2.hacking
  arg3 = arg3.scaleform
  cmgCall3 = "SET_COLUMN_SPEED"
  arg2(arg3, cmgCall3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 2
  arg2(arg3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 255
  arg2(arg3)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = BeginScaleformMovieMethod
  arg3 = textValue2.hacking
  arg3 = arg3.scaleform
  cmgCall3 = "SET_COLUMN_SPEED"
  arg2(arg3, cmgCall3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 3
  arg2(arg3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 255
  arg2(arg3)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = BeginScaleformMovieMethod
  arg3 = textValue2.hacking
  arg3 = arg3.scaleform
  cmgCall3 = "SET_COLUMN_SPEED"
  arg2(arg3, cmgCall3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 4
  arg2(arg3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 255
  arg2(arg3)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = BeginScaleformMovieMethod
  arg3 = textValue2.hacking
  arg3 = arg3.scaleform
  cmgCall3 = "SET_COLUMN_SPEED"
  arg2(arg3, cmgCall3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 5
  arg2(arg3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 255
  arg2(arg3)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = BeginScaleformMovieMethod
  arg3 = textValue2.hacking
  arg3 = arg3.scaleform
  cmgCall3 = "SET_COLUMN_SPEED"
  arg2(arg3, cmgCall3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 6
  arg2(arg3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 255
  arg2(arg3)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = BeginScaleformMovieMethod
  arg3 = textValue2.hacking
  arg3 = arg3.scaleform
  cmgCall3 = "SET_COLUMN_SPEED"
  arg2(arg3, cmgCall3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 7
  arg2(arg3)
  arg2 = ScaleformMovieMethodAddParamInt
  arg3 = 255
  arg2(arg3)
  arg2 = EndScaleformMovieMethod
  arg2()
  arg2 = textValue2.hacking
  arg2.lives = 5
  arg2 = textValue2.hacking
  arg3 = cmgCall.terminalHack
  arg3 = arg3.words
  cmgCall3 = math
  cmgCall3 = cmgCall3.random
  textValue13 = 1
  serverEventCall2 = cmgCall.terminalHack
  serverEventCall2 = serverEventCall2.words
  serverEventCall2 = #serverEventCall2
  cmgCall3 = cmgCall3(textValue13, serverEventCall2)
  arg3 = arg3[cmgCall3]
  arg2.text = arg3
  arg2 = textValue2.hacking
  arg2.type = 1
end
function flag16()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20
  arg1 = DisablePlayerFiring
  arg2 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg2 = arg2()
  arg3 = true
  arg1(arg2, arg3)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 24
  cmgCall3 = true
  arg1(arg2, arg3, cmgCall3)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 25
  cmgCall3 = true
  arg1(arg2, arg3, cmgCall3)
  arg1 = DrawScaleformMovieFullscreen
  arg2 = textValue2.hacking
  arg2 = arg2.scaleform
  arg3 = 255
  cmgCall3 = 255
  textValue13 = 255
  serverEventCall2 = 255
  textValue20 = 0
  arg1(arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20)
  arg1 = DrawScaleformMovieFullscreen
  arg2 = textValue2.hacking
  arg2 = arg2.buttons
  arg3 = 255
  cmgCall3 = 255
  textValue13 = 255
  serverEventCall2 = 255
  textValue20 = 0
  arg1(arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20)
  arg1 = BeginScaleformMovieMethod
  arg2 = textValue2.hacking
  arg2 = arg2.scaleform
  arg3 = "SET_CURSOR"
  arg1(arg2, arg3)
  arg1 = ScaleformMovieMethodAddParamFloat
  arg2 = GetDisabledControlNormal
  arg3 = 0
  cmgCall3 = 239
  arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20 = arg2(arg3, cmgCall3)
  arg1(arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20)
  arg1 = ScaleformMovieMethodAddParamFloat
  arg2 = GetDisabledControlNormal
  arg3 = 0
  cmgCall3 = 240
  arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20 = arg2(arg3, cmgCall3)
  arg1(arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20)
  arg1 = EndScaleformMovieMethod
  arg1()
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 24
  cmgCall3 = true
  arg1(arg2, arg3, cmgCall3)
  arg1 = IsDisabledControlJustPressed
  arg2 = 0
  arg3 = 24
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = BeginScaleformMovieMethod
    arg2 = textValue2.hacking
    arg2 = arg2.scaleform
    arg3 = "SET_INPUT_EVENT_SELECT"
    arg1(arg2, arg3)
    arg1 = textValue2.hacking
    arg2 = EndScaleformMovieMethodReturnValue
    arg2 = arg2()
    arg1.returnValue = arg2
    arg1 = PlaySoundFrontend
    arg2 = -1
    arg3 = "HACKING_CLICK"
    cmgCall3 = ""
    textValue13 = true
    arg1(arg2, arg3, cmgCall3, textValue13)
  end
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 25
  cmgCall3 = true
  arg1(arg2, arg3, cmgCall3)
  arg1 = IsDisabledControlJustPressed
  arg2 = 0
  arg3 = 25
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = BeginScaleformMovieMethod
    arg2 = textValue2.hacking
    arg2 = arg2.scaleform
    arg3 = "SET_INPUT_EVENT_BACK"
    arg1(arg2, arg3)
    arg1 = EndScaleformMovieMethod
    arg1()
    arg1 = PlaySoundFrontend
    arg2 = -1
    arg3 = "HACKING_CLICK"
    cmgCall3 = ""
    textValue13 = true
    arg1(arg2, arg3, cmgCall3, textValue13)
  end
  arg1 = textValue2.hacking
  arg1 = arg1.lives
  if arg1 <= 0 then
    arg1 = numberValue6
    arg2 = true
    arg1(arg2)
    return
  end
  arg1 = IsScaleformMovieMethodReturnValueReady
  arg2 = textValue2.hacking
  arg2 = arg2.returnValue
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = GetScaleformMovieMethodReturnValueInt
    arg2 = textValue2.hacking
    arg2 = arg2.returnValue
    arg1 = arg1(arg2)
    if 82 == arg1 then
      arg2 = PlaySoundFrontend
      arg3 = -1
      cmgCall3 = "HACKING_CLICK_BAD"
      textValue13 = ""
      serverEventCall2 = false
      arg2(arg3, cmgCall3, textValue13, serverEventCall2)
    elseif 83 == arg1 then
      arg2 = BeginScaleformMovieMethod
      arg3 = textValue2.hacking
      arg3 = arg3.scaleform
      cmgCall3 = "RUN_PROGRAM"
      arg2(arg3, cmgCall3)
      arg2 = ScaleformMovieMethodAddParamFloat
      arg3 = 83.0
      arg2(arg3)
      arg2 = EndScaleformMovieMethod
      arg2()
      arg2 = BeginScaleformMovieMethod
      arg3 = textValue2.hacking
      arg3 = arg3.scaleform
      cmgCall3 = "SET_ROULETTE_WORD"
      arg2(arg3, cmgCall3)
      arg2 = _ENV
      arg3 = "ScaleformMovieMethodAddParamTextureNameString"
      arg2 = arg2[arg3]
      arg3 = textValue2.hacking
      arg3 = arg3.text
      arg2(arg3)
      arg2 = EndScaleformMovieMethod
      arg2()
    elseif 87 == arg1 then
      arg2 = textValue2.hacking
      arg3 = textValue2.hacking
      arg3 = arg3.lives
      arg3 = arg3 - 1
      arg2.lives = arg3
      arg2 = BeginScaleformMovieMethod
      arg3 = textValue2.hacking
      arg3 = arg3.scaleform
      cmgCall3 = "SET_ROULETTE_WORD"
      arg2(arg3, cmgCall3)
      arg2 = _ENV
      arg3 = "ScaleformMovieMethodAddParamTextureNameString"
      arg2 = arg2[arg3]
      arg3 = textValue2.hacking
      arg3 = arg3.text
      arg2(arg3)
      arg2 = EndScaleformMovieMethod
      arg2()
      arg2 = BeginScaleformMovieMethod
      arg3 = textValue2.hacking
      arg3 = arg3.scaleform
      cmgCall3 = "SET_LIVES"
      arg2(arg3, cmgCall3)
      arg2 = ScaleformMovieMethodAddParamInt
      arg3 = textValue2.hacking
      arg3 = arg3.lives
      arg2(arg3)
      arg2 = ScaleformMovieMethodAddParamInt
      arg3 = 5
      arg2(arg3)
      arg2 = EndScaleformMovieMethod
      arg2()
      arg2 = PlaySoundFrontend
      arg3 = -1
      cmgCall3 = "HACKING_CLICK_BAD"
      textValue13 = ""
      serverEventCall2 = false
      arg2(arg3, cmgCall3, textValue13, serverEventCall2)
    elseif 86 == arg1 then
      arg2 = PlaySoundFrontend
      arg3 = -1
      cmgCall3 = "HACKING_SUCCESS"
      textValue13 = ""
      serverEventCall2 = true
      arg2(arg3, cmgCall3, textValue13, serverEventCall2)
      arg2 = Citizen
      arg2 = arg2.CreateThread
      function arg3()
        local arg12, arg22, textValue7
        arg12 = BeginScaleformMovieMethod
        arg22 = textValue2.hacking
        arg22 = arg22.scaleform
        textValue7 = "SET_ROULETTE_OUTCOME"
        arg12(arg22, textValue7)
        arg12 = ScaleformMovieMethodAddParamBool
        arg22 = true
        arg12(arg22)
        arg12 = _ENV
        arg22 = "ScaleformMovieMethodAddParamTextureNameString"
        arg12 = arg12[arg22]
        arg22 = "BRUTEFORCE SUCCESSFUL!"
        arg12(arg22)
        arg12 = EndScaleformMovieMethod
        arg12()
        arg12 = Citizen
        arg12 = arg12.Wait
        arg22 = 2500
        arg12(arg22)
        arg12 = BeginScaleformMovieMethod
        arg22 = textValue2.hacking
        arg22 = arg22.scaleform
        textValue7 = "CLOSE_APP"
        arg12(arg22, textValue7)
        arg12 = EndScaleformMovieMethod
        arg12()
        arg12 = BeginScaleformMovieMethod
        arg22 = textValue2.hacking
        arg22 = arg22.scaleform
        textValue7 = "OPEN_LOADING_PROGRESS"
        arg12(arg22, textValue7)
        arg12 = ScaleformMovieMethodAddParamBool
        arg22 = true
        arg12(arg22)
        arg12 = EndScaleformMovieMethod
        arg12()
        arg12 = BeginScaleformMovieMethod
        arg22 = textValue2.hacking
        arg22 = arg22.scaleform
        textValue7 = "SET_LOADING_PROGRESS"
        arg12(arg22, textValue7)
        arg12 = ScaleformMovieMethodAddParamInt
        arg22 = 35
        arg12(arg22)
        arg12 = EndScaleformMovieMethod
        arg12()
        arg12 = BeginScaleformMovieMethod
        arg22 = textValue2.hacking
        arg22 = arg22.scaleform
        textValue7 = "SET_LOADING_TIME"
        arg12(arg22, textValue7)
        arg12 = ScaleformMovieMethodAddParamInt
        arg22 = 35
        arg12(arg22)
        arg12 = EndScaleformMovieMethod
        arg12()
        arg12 = BeginScaleformMovieMethod
        arg22 = textValue2.hacking
        arg22 = arg22.scaleform
        textValue7 = "SET_LOADING_MESSAGE"
        arg12(arg22, textValue7)
        arg12 = _ENV
        arg22 = "ScaleformMovieMethodAddParamTextureNameString"
        arg12 = arg12[arg22]
        arg22 = "Writing data to buffer.."
        arg12(arg22)
        arg12 = ScaleformMovieMethodAddParamFloat
        arg22 = 2.0
        arg12(arg22)
        arg12 = EndScaleformMovieMethod
        arg12()
        arg12 = Citizen
        arg12 = arg12.Wait
        arg22 = 2500
        arg12(arg22)
        arg12 = BeginScaleformMovieMethod
        arg22 = textValue2.hacking
        arg22 = arg22.scaleform
        textValue7 = "SET_LOADING_MESSAGE"
        arg12(arg22, textValue7)
        arg12 = _ENV
        arg22 = "ScaleformMovieMethodAddParamTextureNameString"
        arg12 = arg12[arg22]
        arg22 = "Executing malicious code.."
        arg12(arg22)
        arg12 = ScaleformMovieMethodAddParamFloat
        arg22 = 2.0
        arg12(arg22)
        arg12 = EndScaleformMovieMethod
        arg12()
        arg12 = BeginScaleformMovieMethod
        arg22 = textValue2.hacking
        arg22 = arg22.scaleform
        textValue7 = "SET_LOADING_TIME"
        arg12(arg22, textValue7)
        arg12 = ScaleformMovieMethodAddParamInt
        arg22 = 15
        arg12(arg22)
        arg12 = EndScaleformMovieMethod
        arg12()
        arg12 = BeginScaleformMovieMethod
        arg22 = textValue2.hacking
        arg22 = arg22.scaleform
        textValue7 = "SET_LOADING_PROGRESS"
        arg12(arg22, textValue7)
        arg12 = ScaleformMovieMethodAddParamInt
        arg22 = 75
        arg12(arg22)
        arg12 = EndScaleformMovieMethod
        arg12()
        arg12 = Citizen
        arg12 = arg12.Wait
        arg22 = 1500
        arg12(arg22)
        arg12 = numberValue7
        arg12()
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      arg2(arg3)
    elseif 6 == arg1 then
      arg2 = Citizen
      arg2 = arg2.Wait
      arg3 = 500
      arg2(arg3)
      arg2 = numberValue6
      arg3 = true
      arg2(arg3)
    end
  end
end
function flag17()
  local arg1, arg2, arg3
  arg1 = textValue2.hacking
  arg2 = RequestScaleformMovie
  arg3 = "instructional_buttons"
  -- Beginner: result below is scaleformHandle.
  arg2 = arg2(arg3)
  arg1.buttons = arg2
  while true do
    arg1 = HasScaleformMovieLoaded
    arg2 = textValue2.hacking
    arg2 = arg2.buttons
    arg1 = arg1(arg2)
    if arg1 then
      break
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = BeginScaleformMovieMethod
  arg2 = textValue2.hacking
  arg2 = arg2.buttons
  arg3 = "CLEAR_ALL"
  arg1(arg2, arg3)
  arg1 = EndScaleformMovieMethod
  arg1()
  arg1 = BeginScaleformMovieMethod
  arg2 = textValue2.hacking
  arg2 = arg2.buttons
  arg3 = "SET_DATA_SLOT"
  arg1(arg2, arg3)
  arg1 = ScaleformMovieMethodAddParamInt
  arg2 = 0
  arg1(arg2)
  arg1 = _ENV
  arg2 = "ScaleformMovieMethodAddParamPlayerNameString"
  arg1 = arg1[arg2]
  arg2 = "~INPUT_ATTACK~"
  arg1(arg2)
  arg1 = BeginTextCommandScaleformString
  arg2 = "STRING"
  arg1(arg2)
  arg1 = AddTextComponentSubstringKeyboardDisplay
  arg2 = "Click / Select"
  arg1(arg2)
  arg1 = EndTextCommandScaleformString
  arg1()
  arg1 = EndScaleformMovieMethod
  arg1()
  arg1 = BeginScaleformMovieMethod
  arg2 = textValue2.hacking
  arg2 = arg2.buttons
  arg3 = "DRAW_INSTRUCTIONAL_BUTTONS"
  arg1(arg2, arg3)
  arg1 = EndScaleformMovieMethod
  arg1()
  arg1 = BeginScaleformMovieMethod
  arg2 = textValue2.hacking
  arg2 = arg2.buttons
  arg3 = "SET_BACKGROUND_COLOUR"
  arg1(arg2, arg3)
  arg1 = ScaleformMovieMethodAddParamInt
  arg2 = 0
  arg1(arg2)
  arg1 = ScaleformMovieMethodAddParamInt
  arg2 = 0
  arg1(arg2)
  arg1 = ScaleformMovieMethodAddParamInt
  arg2 = 0
  arg1(arg2)
  arg1 = ScaleformMovieMethodAddParamInt
  arg2 = 80
  arg1(arg2)
  arg1 = EndScaleformMovieMethod
  arg1()
end
eventRegistration4 = RegisterNetEvent
textValue8 = "8ad4db1275"
-- Beginner: this function handles network event "8ad4db1275".
function workValue6()
  local arg1, arg2, arg3
  arg1 = CMG
  arg1 = arg1.isPlayerInBankHeistSetup
  arg1 = arg1()
  if arg1 then
    return
  end
  arg1 = FreezeEntityPosition
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg1(arg2, arg3)
  arg1 = numberValue8
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg1()
  arg1 = flag17
  arg1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8ad4db1275".
eventRegistration4(textValue8, workValue6)
function eventRegistration4(arg1)
  local arg2, arg3, cmgCall3
  arg2 = textValue6
  arg2 = arg2()
  if not arg2 then
    arg2 = drawNativeNotification
    arg3 = "Press ~INPUT_PICKUP~ to plant thermite"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg2(arg3)
    arg2 = IsControlJustPressed
    arg3 = 0
    cmgCall3 = 38
    arg2 = arg2(arg3, cmgCall3)
    if arg2 then
      arg2 = TriggerServerEvent
      arg3 = "40cac5cefd"
      cmgCall3 = arg1
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "40cac5cefd".
      arg2(arg3, cmgCall3)
    end
  end
end
function textValue8()
  local arg1, arg2, arg3
  arg1 = textValue6
  arg1 = arg1()
  if not arg1 then
    arg1 = drawNativeNotification
    arg2 = "Press ~INPUT_PICKUP~ to begin hacking"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg1(arg2)
    arg1 = IsControlJustPressed
    arg2 = 0
    arg3 = 38
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = TriggerServerEvent
      arg2 = "8ad4db1275"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8ad4db1275".
      arg1(arg2)
    end
  end
end
function workValue6()
  local arg1, arg2, arg3
  arg1 = textValue6
  arg1 = arg1()
  if not arg1 then
    arg1 = drawNativeNotification
    arg2 = "Press ~INPUT_PICKUP~ to open the safe"
    -- Beginner: Show a GTA-style notification/help prompt.
    arg1(arg2)
    arg1 = IsControlJustPressed
    arg2 = 0
    arg3 = 38
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = TriggerServerEvent
      arg2 = "13c85b0cd6"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "13c85b0cd6".
      arg1(arg2)
    end
  end
end
function workValue7(arg1, arg2)
  local arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4
  arg3 = textValue2.trollies
  arg3 = arg3[arg1]
  if arg3 then
    cmgCall3 = arg3.handle
    if cmgCall3 then
      cmgCall3 = tonumber
      textValue13 = arg3.state
      cmgCall3 = cmgCall3(textValue13)
      if cmgCall3 then
        cmgCall3 = DeleteEntity
        textValue13 = arg3.handle
        -- Beginner: Delete a GTA entity.
        cmgCall3(textValue13)
        arg3.handle = nil
      end
      return
    else
      cmgCall3 = tonumber
      textValue13 = arg3.state
      cmgCall3 = cmgCall3(textValue13)
      if cmgCall3 then
        return
      end
    end
  end
  cmgCall3 = textValue4
  if not cmgCall3 then
    return
  end
  if arg3 then
    cmgCall3 = arg3.state
    if "LOOTED" == cmgCall3 then
      cmgCall3 = 769923921
      if cmgCall3 then
        goto flow_label_38
      end
    end
  end
  cmgCall3 = arg2.model
  ::flow_label_38::
  textValue13 = IsModelValid
  serverEventCall2 = cmgCall3
  textValue13 = textValue13(serverEventCall2)
  if textValue13 then
    textValue13 = HasModelLoaded
    serverEventCall2 = cmgCall3
    textValue13 = textValue13(serverEventCall2)
    if textValue13 then
      goto flow_label_52
    end
  end
  textValue13 = RequestModel
  serverEventCall2 = cmgCall3
  textValue13(serverEventCall2)
  return
  ::flow_label_52::
  textValue13 = GetInteriorAtCoords
  serverEventCall2 = arg2.position
  serverEventCall2 = serverEventCall2.x
  textValue20 = arg2.position
  textValue20 = textValue20.y
  flag20 = arg2.position
  flag20 = flag20.z
  -- Beginner: result below is interiorId.
  textValue13 = textValue13(serverEventCall2, textValue20, flag20)
  serverEventCall2 = IsValidInterior
  textValue20 = textValue13
  serverEventCall2 = serverEventCall2(textValue20)
  if serverEventCall2 then
    serverEventCall2 = IsInteriorReady
    textValue20 = textValue13
    serverEventCall2 = serverEventCall2(textValue20)
    if serverEventCall2 then
      goto flow_label_71
    end
  end
  return
  ::flow_label_71::
  serverEventCall2 = CreateObjectNoOffset
  textValue20 = cmgCall3
  flag20 = arg2.position
  flag20 = flag20.x
  workValue19 = arg2.position
  workValue19 = workValue19.y
  flag21 = arg2.position
  flag21 = flag21.z
  flag21 = flag21 - 0.53
  workValue = false
  flag = false
  flag4 = false
  -- Beginner: result below is objectEntity.
  serverEventCall2 = serverEventCall2(textValue20, flag20, workValue19, flag21, workValue, flag, flag4)
  textValue20 = FreezeEntityPosition
  flag20 = serverEventCall2
  workValue19 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  textValue20(flag20, workValue19)
  textValue20 = arg2.heading
  if 0 ~= textValue20 then
    textValue20 = SetEntityHeading
    flag20 = serverEventCall2
    workValue19 = GetEntityHeading
    flag21 = serverEventCall2
    -- Beginner: result below is heading.
    workValue19 = workValue19(flag21)
    flag21 = arg2.heading
    workValue19 = workValue19 + flag21
    -- Beginner: Change the direction an entity is facing.
    textValue20(flag20, workValue19)
  end
  textValue20 = SetModelAsNoLongerNeeded
  flag20 = cmgCall3
  textValue20(flag20)
  textValue20 = textValue5
  flag20 = string
  flag20 = flag20.format
  workValue19 = "Created trolly %d with model %d"
  flag21 = arg1
  workValue = cmgCall3
  flag20, workValue19, flag21, workValue, flag, flag4 = flag20(workValue19, flag21, workValue)
  textValue20(flag20, workValue19, flag21, workValue, flag, flag4)
  if arg3 then
    arg3.handle = serverEventCall2
    arg3.config = arg2
  else
    textValue20 = textValue2.trollies
    flag20 = {}
    flag20.handle = serverEventCall2
    flag20.config = arg2
    flag20.state = nil
    textValue20[arg1] = flag20
  end
end
function workValue8()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21
  arg1 = ipairs
  arg2 = cmgCall.trollies
  arg1, arg2, arg3, cmgCall3 = arg1(arg2)
  for textValue13, serverEventCall2 in arg1, arg2, arg3, cmgCall3 do
    textValue20 = workValue7
    flag20 = textValue13
    workValue19 = serverEventCall2
    textValue20(flag20, workValue19)
  end
  arg1 = textValue2.state
  if "DONE_HACKING" ~= arg1 then
    return
  end
  arg1 = nil
  arg2 = 10.0
  arg3 = pairs
  cmgCall3 = textValue2.trollies
  arg3, cmgCall3, textValue13, serverEventCall2 = arg3(cmgCall3)
  for textValue20, flag20 in arg3, cmgCall3, textValue13, serverEventCall2 do
    workValue19 = flag20.config
    if workValue19 then
      workValue19 = CMG
      workValue19 = workValue19.getPlayerCoords
      -- Beginner: result below is playerCoords.
      workValue19 = workValue19()
      flag21 = flag20.config
      flag21 = flag21.position
      workValue19 = workValue19 - flag21
      workValue19 = #workValue19
      if arg2 > workValue19 then
        flag21 = flag20.state
        if not flag21 then
          arg1 = flag20
          arg2 = workValue19
        end
      end
    end
  end
  if arg1 and arg2 < 2.0 then
    arg3 = textValue6
    arg3 = arg3()
    if not arg3 then
      arg3 = drawNativeNotification
      cmgCall3 = string
      cmgCall3 = cmgCall3.format
      textValue13 = "Press ~INPUT_PICKUP~ to steal the %s"
      serverEventCall2 = arg1.config
      serverEventCall2 = serverEventCall2.name
      cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21 = cmgCall3(textValue13, serverEventCall2)
      -- Beginner: Show a GTA-style notification/help prompt.
      arg3(cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21)
      arg3 = IsControlJustPressed
      cmgCall3 = 0
      textValue13 = 38
      arg3 = arg3(cmgCall3, textValue13)
      if arg3 then
        arg3 = TriggerServerEvent
        cmgCall3 = "8939f8d91f"
        textValue13 = table
        textValue13 = textValue13.find
        serverEventCall2 = cmgCall.trollies
        textValue20 = arg1.config
        textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21 = textValue13(serverEventCall2, textValue20)
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8939f8d91f".
        arg3(cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21)
      end
    end
  end
  arg3 = textValue4
  if arg3 then
    arg3 = CMG
    arg3 = arg3.createTimerBars
    -- Beginner: result below is timerBars.
    arg3 = arg3()
    cmgCall3 = arg3.push
    textValue13 = "~g~TOTAL TAKE~w~"
    serverEventCall2 = string
    serverEventCall2 = serverEventCall2.format
    textValue20 = "\194\163%s"
    flag20 = getMoneyStringFormatted
    workValue19 = textValue2.lootedAmount
    flag20, workValue19, flag21 = flag20(workValue19)
    serverEventCall2, textValue20, flag20, workValue19, flag21 = serverEventCall2(textValue20, flag20, workValue19, flag21)
    cmgCall3(textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21)
    cmgCall3 = textValue2.state
    if "DONE_HACKING" == cmgCall3 then
      cmgCall3 = arg3.push
      textValue13 = "~b~TIME TO GAS~w~"
      serverEventCall2 = tostring
      textValue20 = math
      textValue20 = textValue20.floor
      flag20 = cmgCall.timeToGas
      workValue19 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      workValue19 = workValue19()
      flag21 = textValue2.lastStateChange
      workValue19 = workValue19 - flag21
      flag20 = flag20 - workValue19
      flag20 = flag20 / 1000
      textValue20, flag20, workValue19, flag21 = textValue20(flag20)
      serverEventCall2, textValue20, flag20, workValue19, flag21 = serverEventCall2(textValue20, flag20, workValue19, flag21)
      cmgCall3(textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21)
    end
    cmgCall3 = arg3.draw
    cmgCall3()
  end
end
function workValue9()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20
  arg1 = pairs
  arg2 = textValue2.trollies
  arg1, arg2, arg3, cmgCall3 = arg1(arg2)
  for textValue13, serverEventCall2 in arg1, arg2, arg3, cmgCall3 do
    textValue20 = DeleteEntity
    flag20 = serverEventCall2.handle
    -- Beginner: Delete a GTA entity.
    textValue20(flag20)
  end
  arg1 = {}
  textValue2.trollies = arg1
end
eventRegistration5 = RegisterNetEvent
textValue9 = "370ccb3860"
-- Beginner: this function handles network event "370ccb3860".
function workValue10(arg1)
  local arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20
  arg2 = 0
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  while true do
    cmgCall3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    cmgCall3 = cmgCall3()
    cmgCall3 = cmgCall3 - arg3
    textValue13 = 37000
    if not (cmgCall3 < textValue13) then
      break
    end
    cmgCall3 = math
    cmgCall3 = cmgCall3.floor
    textValue13 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    textValue13 = textValue13()
    textValue13 = textValue13 - arg3
    textValue13 = textValue13 / 37000
    textValue13 = textValue13 * arg1
    cmgCall3 = cmgCall3(textValue13)
    textValue13 = cmgCall3 - arg2
    if textValue13 > 0 then
      arg2 = cmgCall3
      serverEventCall2 = textValue2.lootedAmount
      serverEventCall2 = serverEventCall2 + textValue13
      textValue2.lootedAmount = serverEventCall2
    end
    serverEventCall2 = Citizen
    serverEventCall2 = serverEventCall2.Wait
    textValue20 = 50
    serverEventCall2(textValue20)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "370ccb3860".
eventRegistration5(textValue9, workValue10)
eventRegistration5 = RegisterNetEvent
textValue9 = "8939f8d91f"
-- Beginner: this function handles network event "8939f8d91f".
function workValue10(arg1)
  local arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6, flag7, flag8, numberValue, flag9, flag10, numberValue2, numberValue3, flag11, flag12, flag13, flag14, numberValue4, flag15
  arg2 = CMG
  arg2 = arg2.isPlayerInBankHeistSetup
  arg2 = arg2()
  if arg2 then
    return
  end
  arg2 = numberValue5
  arg2()
  arg2 = textValue2.trollies
  arg2 = arg2[arg1]
  arg3 = GetEntityModel
  cmgCall3 = arg2.handle
  -- Beginner: result below is modelHash.
  arg3 = arg3(cmgCall3)
  cmgCall3 = GetEntityCoords
  textValue13 = arg2.handle
  serverEventCall2 = true
  -- Beginner: result below is entityCoords.
  cmgCall3 = cmgCall3(textValue13, serverEventCall2)
  textValue13 = GetEntityRotation
  serverEventCall2 = arg2.handle
  textValue20 = 2
  textValue13 = textValue13(serverEventCall2, textValue20)
  serverEventCall2 = DeleteEntity
  textValue20 = arg2.handle
  -- Beginner: Delete a GTA entity.
  serverEventCall2(textValue20)
  arg2.handle = nil
  serverEventCall2 = CMG
  serverEventCall2 = serverEventCall2.requestEntitySpawn
  textValue20 = "bankheist_trolly"
  flag20 = arg3
  workValue19 = cmgCall3
  serverEventCall2(textValue20, flag20, workValue19)
  serverEventCall2 = CreateObjectNoOffset
  textValue20 = arg3
  flag20 = cmgCall3.x
  workValue19 = cmgCall3.y
  flag21 = cmgCall3.z
  workValue = true
  flag = true
  flag4 = true
  -- Beginner: result below is objectEntity.
  serverEventCall2 = serverEventCall2(textValue20, flag20, workValue19, flag21, workValue, flag, flag4)
  textValue20 = CMG
  textValue20 = textValue20.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  textValue20 = textValue20()
  flag20 = CMG
  flag20 = flag20.getPlayerCoords
  -- Beginner: result below is playerCoords.
  flag20 = flag20()
  workValue19 = tCMG
  workValue19 = workValue19.setCanAnim
  flag21 = false
  workValue19(flag21)
  workValue19 = CMG
  workValue19 = workValue19.loadModel
  flag21 = -944468481
  -- Beginner: Request/load a GTA model before spawning or applying it.
  workValue19(flag21)
  workValue19 = CMG
  workValue19 = workValue19.loadAnimDict
  flag21 = "anim@heists@ornate_bank@grab_cash"
  -- Beginner: Load a GTA animation dictionary before using it.
  workValue19(flag21)
  workValue19 = CMG
  workValue19 = workValue19.requestEntitySpawn
  flag21 = "bankheist_lootbag"
  workValue19(flag21)
  workValue19 = CreateObject
  flag21 = -944468481
  workValue = flag20.x
  flag = flag20.y
  flag4 = flag20.z
  flag6 = true
  flag7 = true
  flag8 = false
  -- Beginner: result below is objectEntity.
  workValue19 = workValue19(flag21, workValue, flag, flag4, flag6, flag7, flag8)
  flag21 = NetworkCreateSynchronisedScene
  workValue = cmgCall3.x
  flag = cmgCall3.y
  flag4 = cmgCall3.z
  flag6 = textValue13.x
  flag7 = textValue13.y
  flag8 = textValue13.z
  numberValue = 2
  flag9 = false
  flag10 = false
  numberValue2 = 1065353216
  numberValue3 = 0
  flag11 = 1.3
  flag21 = flag21(workValue, flag, flag4, flag6, flag7, flag8, numberValue, flag9, flag10, numberValue2, numberValue3, flag11)
  workValue = NetworkAddPedToSynchronisedScene
  flag = textValue20
  flag4 = flag21
  flag6 = "anim@heists@ornate_bank@grab_cash"
  flag7 = "intro"
  flag8 = 1.5
  numberValue = -4.0
  flag9 = 1
  flag10 = 16
  numberValue2 = 1148846080
  numberValue3 = 0
  workValue(flag, flag4, flag6, flag7, flag8, numberValue, flag9, flag10, numberValue2, numberValue3)
  workValue = NetworkAddEntityToSynchronisedScene
  flag = workValue19
  flag4 = flag21
  flag6 = "anim@heists@ornate_bank@grab_cash"
  flag7 = "bag_intro"
  flag8 = 4.0
  numberValue = -8.0
  flag9 = 1
  workValue(flag, flag4, flag6, flag7, flag8, numberValue, flag9)
  workValue = SetPedComponentVariation
  flag = textValue20
  flag4 = 5
  flag6 = 0
  flag7 = 0
  flag8 = 0
  workValue(flag, flag4, flag6, flag7, flag8)
  workValue = NetworkStartSynchronisedScene
  flag = flag21
  workValue(flag)
  workValue = CMG
  workValue = workValue.loadModel
  flag = arg2.config
  flag = flag.handModel
  -- Beginner: Request/load a GTA model before spawning or applying it.
  workValue(flag)
  workValue = CMG
  workValue = workValue.requestEntitySpawn
  flag = "bankheist_hand_object"
  flag4 = arg2.config
  flag4 = flag4.handModel
  workValue(flag, flag4)
  workValue = CreateObject
  flag = arg2.config
  flag = flag.handModel
  flag4 = flag20.x
  flag6 = flag20.y
  flag7 = flag20.z
  flag8 = true
  numberValue = true
  flag9 = false
  -- Beginner: result below is objectEntity.
  workValue = workValue(flag, flag4, flag6, flag7, flag8, numberValue, flag9)
  flag = FreezeEntityPosition
  flag4 = workValue
  flag6 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  flag(flag4, flag6)
  flag = SetEntityInvincible
  flag4 = workValue
  flag6 = true
  flag(flag4, flag6)
  flag = SetEntityNoCollisionEntity
  flag4 = workValue
  flag6 = textValue20
  flag7 = false
  flag(flag4, flag6, flag7)
  flag = SetEntityVisible
  flag4 = workValue
  flag6 = false
  flag7 = false
  flag(flag4, flag6, flag7)
  flag = AttachEntityToEntity
  flag4 = workValue
  flag6 = textValue20
  flag7 = GetPedBoneIndex
  flag8 = textValue20
  numberValue = 60309
  flag7 = flag7(flag8, numberValue)
  flag8 = 0.0
  numberValue = 0.0
  flag9 = 0.0
  flag10 = 0.0
  numberValue2 = 0.0
  numberValue3 = 0.0
  flag11 = false
  flag12 = false
  flag13 = false
  flag14 = false
  numberValue4 = 0
  flag15 = true
  -- Beginner: Attach one entity to another entity.
  flag(flag4, flag6, flag7, flag8, numberValue, flag9, flag10, numberValue2, numberValue3, flag11, flag12, flag13, flag14, numberValue4, flag15)
  flag = SetModelAsNoLongerNeeded
  flag4 = arg2.config
  flag4 = flag4.handModel
  flag(flag4)
  flag = Citizen
  flag = flag.CreateThread
  function flag4()
    local arg12, arg22, textValue7, flag18, textValue14
    arg12 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg12 = arg12()
    while true do
      arg22 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg22 = arg22()
      arg22 = arg22 - arg12
      textValue7 = 37000
      if not (arg22 < textValue7) then
        break
      end
      arg22 = DisableControlAction
      textValue7 = 0
      flag18 = 73
      textValue14 = true
      arg22(textValue7, flag18, textValue14)
      arg22 = HasAnimEventFired
      textValue7 = textValue20
      flag18 = 726137971
      arg22 = arg22(textValue7, flag18)
      if arg22 then
        arg22 = IsEntityVisible
        textValue7 = workValue
        arg22 = arg22(textValue7)
        if not arg22 then
          arg22 = SetEntityVisible
          textValue7 = workValue
          flag18 = true
          textValue14 = false
          arg22(textValue7, flag18, textValue14)
        end
      end
      arg22 = HasAnimEventFired
      textValue7 = textValue20
      flag18 = -1157608532
      arg22 = arg22(textValue7, flag18)
      if arg22 then
        arg22 = IsEntityVisible
        textValue7 = workValue
        arg22 = arg22(textValue7)
        if arg22 then
          arg22 = SetEntityVisible
          textValue7 = workValue
          flag18 = false
          textValue14 = false
          arg22(textValue7, flag18, textValue14)
        end
      end
      arg22 = Citizen
      arg22 = arg22.Wait
      textValue7 = 0
      arg22(textValue7)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  flag(flag4)
  flag = NetworkCreateSynchronisedScene
  flag4 = cmgCall3.x
  flag6 = cmgCall3.y
  flag7 = cmgCall3.z
  flag8 = textValue13.x
  numberValue = textValue13.y
  flag9 = textValue13.z
  flag10 = 2
  numberValue2 = false
  numberValue3 = false
  flag11 = 1065353216
  flag12 = 0
  flag13 = 1.3
  flag = flag(flag4, flag6, flag7, flag8, numberValue, flag9, flag10, numberValue2, numberValue3, flag11, flag12, flag13)
  flag4 = NetworkAddPedToSynchronisedScene
  flag6 = textValue20
  flag7 = flag
  flag8 = "anim@heists@ornate_bank@grab_cash"
  numberValue = "grab"
  flag9 = 1.5
  flag10 = -4.0
  numberValue2 = 1
  numberValue3 = 16
  flag11 = 1148846080
  flag12 = 0
  flag4(flag6, flag7, flag8, numberValue, flag9, flag10, numberValue2, numberValue3, flag11, flag12)
  flag4 = NetworkAddEntityToSynchronisedScene
  flag6 = workValue19
  flag7 = flag
  flag8 = "anim@heists@ornate_bank@grab_cash"
  numberValue = "bag_grab"
  flag9 = 4.0
  flag10 = -8.0
  numberValue2 = 1
  flag4(flag6, flag7, flag8, numberValue, flag9, flag10, numberValue2)
  flag4 = NetworkAddEntityToSynchronisedScene
  flag6 = serverEventCall2
  flag7 = flag
  flag8 = "anim@heists@ornate_bank@grab_cash"
  numberValue = "cart_cash_dissapear"
  flag9 = 4.0
  flag10 = -8.0
  numberValue2 = 1
  flag4(flag6, flag7, flag8, numberValue, flag9, flag10, numberValue2)
  flag4 = NetworkStartSynchronisedScene
  flag6 = flag
  flag4(flag6)
  flag4 = Citizen
  flag4 = flag4.Wait
  flag6 = 37000
  flag4(flag6)
  flag4 = NetworkCreateSynchronisedScene
  flag6 = cmgCall3.x
  flag7 = cmgCall3.y
  flag8 = cmgCall3.z
  numberValue = textValue13.x
  flag9 = textValue13.y
  flag10 = textValue13.z
  numberValue2 = 2
  numberValue3 = false
  flag11 = false
  flag12 = 1065353216
  flag13 = 0
  flag14 = 1.3
  flag4 = flag4(flag6, flag7, flag8, numberValue, flag9, flag10, numberValue2, numberValue3, flag11, flag12, flag13, flag14)
  flag6 = NetworkAddPedToSynchronisedScene
  flag7 = textValue20
  flag8 = flag4
  numberValue = "anim@heists@ornate_bank@grab_cash"
  flag9 = "exit"
  flag10 = 1.5
  numberValue2 = -4.0
  numberValue3 = 1
  flag11 = 16
  flag12 = 1148846080
  flag13 = 0
  flag6(flag7, flag8, numberValue, flag9, flag10, numberValue2, numberValue3, flag11, flag12, flag13)
  flag6 = NetworkAddEntityToSynchronisedScene
  flag7 = workValue19
  flag8 = flag4
  numberValue = "anim@heists@ornate_bank@grab_cash"
  flag9 = "bag_exit"
  flag10 = 4.0
  numberValue2 = -8.0
  numberValue3 = 1
  flag6(flag7, flag8, numberValue, flag9, flag10, numberValue2, numberValue3)
  flag6 = NetworkStartSynchronisedScene
  flag7 = flag4
  flag6(flag7)
  flag6 = DeleteEntity
  flag7 = serverEventCall2
  -- Beginner: Delete a GTA entity.
  flag6(flag7)
  flag6 = DeleteObject
  flag7 = workValue19
  flag6(flag7)
  flag6 = DeleteObject
  flag7 = workValue
  flag6(flag7)
  flag6 = SetModelAsNoLongerNeeded
  flag7 = -944468481
  flag6(flag7)
  flag6 = RemoveAnimDict
  flag7 = "anim@heists@ornate_bank@grab_cash"
  flag6(flag7)
  flag6 = tCMG
  flag6 = flag6.setCanAnim
  flag7 = true
  flag6(flag7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8939f8d91f".
eventRegistration5(textValue9, workValue10)
eventRegistration5 = RegisterNetEvent
textValue9 = "98e8823c20"
-- Beginner: this function handles network event "98e8823c20".
function workValue10(arg1)
  local arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19
  arg2 = CMG
  arg2 = arg2.isPlayerInBankHeistSetup
  arg2 = arg2()
  if arg2 then
    return
  end
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, cmgCall3, textValue13 = arg2(arg3)
  for serverEventCall2, textValue20 in arg2, arg3, cmgCall3, textValue13 do
    flag20 = textValue2.trollies
    flag20 = flag20[serverEventCall2]
    if flag20 then
      flag20 = textValue2.trollies
      flag20 = flag20[serverEventCall2]
      flag20.state = textValue20
    else
      flag20 = textValue2.trollies
      workValue19 = {}
      workValue19.state = textValue20
      flag20[serverEventCall2] = workValue19
    end
  end
end
eventRegistration5(textValue9, workValue10)
function eventRegistration5()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21
  arg1 = CMG
  arg1 = arg1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg1 = arg1()
  arg2 = 10000.0
  arg3 = -1
  cmgCall3 = pairs
  textValue13 = cmgCall.staffDoors
  cmgCall3, textValue13, serverEventCall2, textValue20 = cmgCall3(textValue13)
  for flag20, workValue19 in cmgCall3, textValue13, serverEventCall2, textValue20 do
    flag21 = workValue19.position
    flag21 = arg1 - flag21
    flag21 = #flag21
    if arg2 > flag21 then
      arg2 = flag21
      arg3 = flag20
    end
  end
  cmgCall3 = arg2
  textValue13 = arg3
  return cmgCall3, textValue13
end
function textValue9()
  local arg1, arg2, arg3, cmgCall3
  arg1 = textValue2.state
  if "INACTIVE" == arg1 then
    arg1 = eventRegistration5
    arg1, arg2 = arg1()
    if arg1 < 2.0 then
      arg3 = eventRegistration4
      cmgCall3 = arg2
      -- Beginner: Register a network event handler that the server/other clients can trigger.
      arg3(cmgCall3)
    end
    arg3 = table
    arg3 = arg3.count
    cmgCall3 = textValue2.trollies
    -- Beginner: result below is count.
    arg3 = arg3(cmgCall3)
    if arg3 > 0 then
      arg3 = workValue9
      arg3()
    end
  else
    arg1 = textValue2.state
    if "DONE_THERMITE" == arg1 then
      arg1 = CMG
      arg1 = arg1.getPlayerCoords
      -- Beginner: result below is playerCoords.
      arg1 = arg1()
      arg2 = cmgCall.safeDoorButton
      arg1 = arg1 - arg2
      arg1 = #arg1
      if arg1 < 1.0 then
        arg1 = workValue6
        arg1()
      end
    else
      arg1 = textValue2.state
      if "PENDING_HACKING" == arg1 then
        arg1 = textValue2.hacking
        arg1 = arg1.scaleform
        if nil ~= arg1 then
          arg1 = flag16
          arg1()
        end
      else
        arg1 = textValue2.state
        if "DONE_SAFE" == arg1 then
          arg1 = CMG
          arg1 = arg1.getPlayerCoords
          -- Beginner: result below is playerCoords.
          arg1 = arg1()
          arg2 = cmgCall.vaultDoorHack
          arg1 = arg1 - arg2
          arg1 = #arg1
          if arg1 < 1.0 then
            arg1 = textValue8
            arg1()
          end
        end
      end
    end
  end
  arg1 = textValue2.state
  if "INACTIVE" ~= arg1 then
    arg1 = textValue2.state
    if "PENDING_THERMITE" ~= arg1 then
      arg1 = eventRegistration5
      arg1 = arg1()
      if arg1 < 50.0 then
        arg1 = workValue8
        arg1()
      end
    end
  end
end
function workValue10()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6, flag7, flag8, numberValue
  arg1 = pairs
  arg2 = cmgCall.staffDoors
  arg1, arg2, arg3, cmgCall3 = arg1(arg2)
  for textValue13, serverEventCall2 in arg1, arg2, arg3, cmgCall3 do
    textValue20 = serverEventCall2.position
    flag20 = GetClosestObjectOfType
    workValue19 = textValue20.x
    flag21 = textValue20.y
    workValue = textValue20.z
    flag = 5.0
    flag4 = serverEventCall2.model
    flag6 = false
    flag7 = false
    flag8 = false
    -- Beginner: result below is objectEntity.
    flag20 = flag20(workValue19, flag21, workValue, flag, flag4, flag6, flag7, flag8)
    if 0 == flag20 then
      workValue19 = GetClosestObjectOfType
      flag21 = textValue20.x
      workValue = textValue20.y
      flag = textValue20.z
      flag4 = 5.0
      flag6 = serverEventCall2.staffDoorThermiteModel
      flag7 = false
      flag8 = false
      numberValue = false
      -- Beginner: result below is objectEntity.
      workValue19 = workValue19(flag21, workValue, flag, flag4, flag6, flag7, flag8, numberValue)
      flag20 = workValue19
    end
    if 0 ~= flag20 then
      workValue19 = textValue2.state
      if "INACTIVE" ~= workValue19 then
        workValue19 = textValue2.state
        if "PENDING_THERMITE" ~= workValue19 then
          goto flow_label_60
        end
      end
      workValue19 = FreezeEntityPosition
      flag21 = flag20
      workValue = true
      -- Beginner: Freeze or unfreeze an entity in place.
      workValue19(flag21, workValue)
      workValue19 = GetEntityModel
      flag21 = flag20
      -- Beginner: result below is modelHash.
      workValue19 = workValue19(flag21)
      flag21 = cmgCall.staffDoorThermiteModel
      if workValue19 == flag21 then
        workValue19 = RemoveModelSwap
        flag21 = textValue20.x
        workValue = textValue20.y
        flag = textValue20.z
        flag4 = 5.0
        flag6 = serverEventCall2.model
        flag7 = cmgCall.staffDoorThermiteModel
        flag8 = false
        workValue19(flag21, workValue, flag, flag4, flag6, flag7, flag8)
        workValue19 = textValue5
        flag21 = "Removing model swap for staff door"
        workValue19(flag21)
        goto flow_label_82
        ::flow_label_60::
        workValue19 = FreezeEntityPosition
        flag21 = flag20
        workValue = false
        -- Beginner: Freeze or unfreeze an entity in place.
        workValue19(flag21, workValue)
        workValue19 = GetEntityModel
        flag21 = flag20
        -- Beginner: result below is modelHash.
        workValue19 = workValue19(flag21)
        flag21 = serverEventCall2.model
        if workValue19 == flag21 then
          workValue19 = CreateModelSwap
          flag21 = textValue20.x
          workValue = textValue20.y
          flag = textValue20.z
          flag4 = 5.0
          flag6 = serverEventCall2.model
          flag7 = cmgCall.staffDoorThermiteModel
          flag8 = true
          workValue19(flag21, workValue, flag, flag4, flag6, flag7, flag8)
          workValue19 = textValue5
          flag21 = "Creating model swap for staff door"
          workValue19(flag21)
        end
      end
    end
    ::flow_label_82::
  end
  arg1 = pairs
  arg2 = cmgCall.lockedDoors
  arg1, arg2, arg3, cmgCall3 = arg1(arg2)
  for textValue13, serverEventCall2 in arg1, arg2, arg3, cmgCall3 do
    textValue20 = GetClosestObjectOfType
    flag20 = serverEventCall2.position
    flag20 = flag20.x
    workValue19 = serverEventCall2.position
    workValue19 = workValue19.y
    flag21 = serverEventCall2.position
    flag21 = flag21.z
    workValue = 5.0
    flag = serverEventCall2.model
    flag4 = false
    flag6 = false
    flag7 = false
    -- Beginner: result below is objectEntity.
    textValue20 = textValue20(flag20, workValue19, flag21, workValue, flag, flag4, flag6, flag7)
    if 0 ~= textValue20 then
      flag20 = FreezeEntityPosition
      workValue19 = textValue20
      flag21 = textValue2.state
      flag21 = "DONE_HACKING" ~= flag21
      -- Beginner: Freeze or unfreeze an entity in place.
      flag20(workValue19, flag21)
    end
  end
  arg1 = GetClosestObjectOfType
  arg2 = cmgCall.safeDoor
  arg2 = arg2.x
  arg3 = cmgCall.safeDoor
  arg3 = arg3.y
  cmgCall3 = cmgCall.safeDoor
  cmgCall3 = cmgCall3.z
  textValue13 = 5.0
  serverEventCall2 = cmgCall.safeDoorModel
  textValue20 = false
  flag20 = false
  workValue19 = false
  -- Beginner: result below is objectEntity.
  arg1 = arg1(arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19)
  arg2 = DoesEntityExist
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg3 = FreezeEntityPosition
    cmgCall3 = arg1
    textValue13 = true
    arg3(cmgCall3, textValue13)
    arg3 = textValue2.state
    if "DONE_SAFE" ~= arg3 then
      arg3 = textValue2.state
      if "PENDING_HACKING" ~= arg3 then
        arg3 = textValue2.state
        if "DONE_HACKING" ~= arg3 then
          goto flow_label_164
        end
      end
    end
    arg3 = GetEntityHeading
    cmgCall3 = arg1
    -- Beginner: result below is heading.
    arg3 = arg3(cmgCall3)
    if not (arg3 <= 75.0) then
      cmgCall3 = 320.0
      if not (arg3 >= cmgCall3) then
        goto flow_label_182
      end
    end
    cmgCall3 = SetEntityHeading
    textValue13 = arg1
    serverEventCall2 = GetFrameTime
    serverEventCall2 = serverEventCall2()
    serverEventCall2 = 15.0 * serverEventCall2
    serverEventCall2 = arg3 - serverEventCall2
    -- Beginner: Change the direction an entity is facing.
    cmgCall3(textValue13, serverEventCall2)
    goto flow_label_182
    ::flow_label_164::
    arg3 = GetEntityHeading
    cmgCall3 = arg1
    -- Beginner: result below is heading.
    arg3 = arg3(cmgCall3)
    cmgCall3 = 315.0
    if not (arg3 >= cmgCall3) then
      cmgCall3 = 70.55
      if not (arg3 <= cmgCall3) then
        goto flow_label_182
      end
    end
    cmgCall3 = SetEntityHeading
    textValue13 = arg1
    serverEventCall2 = GetFrameTime
    serverEventCall2 = serverEventCall2()
    serverEventCall2 = 10.0 * serverEventCall2
    serverEventCall2 = arg3 + serverEventCall2
    cmgCall3(textValue13, serverEventCall2)
  end
  ::flow_label_182::
end
function workValue11()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20
  arg1 = ipairs
  arg2 = textValue2.alarms
  arg1, arg2, arg3, cmgCall3 = arg1(arg2)
  for textValue13, serverEventCall2 in arg1, arg2, arg3, cmgCall3 do
    textValue20 = StopSound
    flag20 = serverEventCall2
    textValue20(flag20)
    textValue20 = ReleaseSoundId
    flag20 = serverEventCall2
    textValue20(flag20)
  end
  textValue2.alarms = nil
  textValue2.alarmLastFlashed = nil
  arg1 = ReleaseNamedScriptAudioBank
  arg2 = "ALARM_BELL_02"
  arg1(arg2)
  arg1 = textValue5
  arg2 = "Removing alarm audio"
  arg1(arg2)
end
function workValue12()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6, flag7, flag8, numberValue
  arg1 = textValue2.alarms
  if arg1 then
    arg1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg1 = arg1()
    arg2 = textValue2.alarmLastFlashed
    arg1 = arg1 - arg2
    arg2 = 500
    if arg1 > arg2 then
      arg1 = ipairs
      arg2 = cmgCall.alarms
      arg1, arg2, arg3, cmgCall3 = arg1(arg2)
      for textValue13, serverEventCall2 in arg1, arg2, arg3, cmgCall3 do
        textValue20 = DrawLightWithRange
        flag20 = serverEventCall2.x
        flag20 = flag20 - 0.5
        workValue19 = serverEventCall2.y
        workValue19 = workValue19 - 0.5
        flag21 = serverEventCall2.z
        workValue = 255
        flag = 0
        flag4 = 0
        flag6 = 5.0
        flag7 = 5.0
        textValue20(flag20, workValue19, flag21, workValue, flag, flag4, flag6, flag7)
        textValue20 = DrawLightWithRange
        flag20 = serverEventCall2.x
        flag20 = flag20 + 0.5
        workValue19 = serverEventCall2.y
        workValue19 = workValue19 + 0.5
        flag21 = serverEventCall2.z
        workValue = 255
        flag = 0
        flag4 = 0
        flag6 = 5.0
        flag7 = 5.0
        textValue20(flag20, workValue19, flag21, workValue, flag, flag4, flag6, flag7)
        textValue20 = DrawLightWithRange
        flag20 = serverEventCall2.x
        workValue19 = serverEventCall2.y
        flag21 = serverEventCall2.z
        workValue = 255
        flag = 0
        flag4 = 0
        flag6 = 5.0
        flag7 = 5.0
        textValue20(flag20, workValue19, flag21, workValue, flag, flag4, flag6, flag7)
      end
      arg1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg1 = arg1()
      textValue2.alarmLastFlashed = arg1
    end
  else
    arg1 = RequestScriptAudioBank
    arg2 = "ALARM_BELL_02"
    arg3 = false
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = {}
      textValue2.alarms = arg1
      arg1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg1 = arg1()
      textValue2.alarmLastFlashed = arg1
      arg1 = ipairs
      arg2 = cmgCall.alarms
      arg1, arg2, arg3, cmgCall3 = arg1(arg2)
      for textValue13, serverEventCall2 in arg1, arg2, arg3, cmgCall3 do
        textValue20 = GetSoundId
        -- Beginner: result below is soundHandle.
        textValue20 = textValue20()
        flag20 = PlaySoundFromCoord
        workValue19 = textValue20
        flag21 = "Bell_02"
        workValue = serverEventCall2.x
        flag = serverEventCall2.y
        flag4 = serverEventCall2.z
        flag6 = "ALARMS_SOUNDSET"
        flag7 = false
        flag8 = 0
        numberValue = false
        flag20(workValue19, flag21, workValue, flag, flag4, flag6, flag7, flag8, numberValue)
        flag20 = table
        flag20 = flag20.insert
        workValue19 = textValue2.alarms
        flag21 = textValue20
        flag20(workValue19, flag21)
      end
      arg1 = textValue5
      arg2 = "Creating alarm audio"
      arg1(arg2)
    end
  end
end
function workValue13()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6, flag7, flag8, numberValue, flag9, flag10
  arg1 = textValue2.gases
  if arg1 then
    arg1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg1 = arg1()
    arg2 = textValue2.lastHurt
    arg1 = arg1 - arg2
    arg2 = 150
    if arg1 > arg2 then
      arg1 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg1 = arg1()
      arg2 = SetEntityHealth
      arg3 = arg1
      cmgCall3 = GetEntityHealth
      textValue13 = arg1
      -- Beginner: result below is health.
      cmgCall3 = cmgCall3(textValue13)
      cmgCall3 = cmgCall3 - 1
      arg2(arg3, cmgCall3)
      arg2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg2 = arg2()
      textValue2.lastHurt = arg2
    end
  else
    arg1 = CMG
    arg1 = arg1.loadPtfx
    arg2 = "core"
    arg1(arg2)
    arg1 = {}
    textValue2.gases = arg1
    arg1 = ipairs
    arg2 = cmgCall.gases
    arg1, arg2, arg3, cmgCall3 = arg1(arg2)
    for textValue13, serverEventCall2 in arg1, arg2, arg3, cmgCall3 do
      textValue20 = UseParticleFxAsset
      flag20 = "core"
      textValue20(flag20)
      textValue20 = StartParticleFxLoopedAtCoord
      flag20 = "exp_grd_grenade_smoke"
      workValue19 = serverEventCall2.position
      workValue19 = workValue19.x
      flag21 = serverEventCall2.position
      flag21 = flag21.y
      workValue = serverEventCall2.position
      workValue = workValue.z
      flag = 0.0
      flag4 = 0.0
      flag6 = 0.0
      flag7 = serverEventCall2.scale
      flag8 = false
      numberValue = false
      flag9 = false
      flag10 = false
      textValue20 = textValue20(flag20, workValue19, flag21, workValue, flag, flag4, flag6, flag7, flag8, numberValue, flag9, flag10)
      flag20 = table
      flag20 = flag20.insert
      workValue19 = textValue2.gases
      flag21 = textValue20
      flag20(workValue19, flag21)
    end
    arg1 = RemoveNamedPtfxAsset
    arg2 = "core"
    arg1(arg2)
    arg1 = textValue5
    arg2 = "Creating gas particle"
    arg1(arg2)
  end
end
function workValue14()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19
  arg1 = ipairs
  arg2 = textValue2.gases
  arg1, arg2, arg3, cmgCall3 = arg1(arg2)
  for textValue13, serverEventCall2 in arg1, arg2, arg3, cmgCall3 do
    textValue20 = StopParticleFxLooped
    flag20 = serverEventCall2
    workValue19 = false
    textValue20(flag20, workValue19)
  end
  textValue2.gases = nil
  textValue2.lastHurt = 0
  arg1 = RemoveNamedPtfxAsset
  arg2 = "core"
  arg1(arg2)
  arg1 = textValue5
  arg2 = "Removing gas particle"
  arg1(arg2)
end
function workValue15()
  local arg1, arg2, arg3, cmgCall3
  arg1 = GetRoomKeyFromEntity
  arg2 = PlayerPedId
  arg2, arg3, cmgCall3 = arg2()
  arg1 = arg1(arg2, arg3, cmgCall3)
  arg1 = 0 ~= arg1
  arg2 = eventRegistration5
  arg2 = arg2()
  arg3 = 150.0
  arg3 = arg2 < arg3
  textValue3 = arg3
  arg3 = arg2 < 60.0 and arg3
  rageUiCall2 = arg3
  arg3 = CMG
  arg3 = arg3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg3 = arg3()
  arg3 = arg3.z
  arg3 = arg3 < 102.0 and arg3
  textValue4 = arg3
  arg3 = CMG
  arg3 = arg3.isPlayerInBankHeistSetup
  arg3 = arg3()
  if arg3 then
    arg3 = textValue2.state
    if "INACTIVE" ~= arg3 then
      textValue2.state = "INACTIVE"
      arg3 = textValue5
      cmgCall3 = "Setting state to INACTIVE as in setup"
      arg3(cmgCall3)
    end
  else
    arg3 = textValue9
    arg3()
  end
  arg3 = rageUiCall2
  if arg3 then
    arg3 = workValue10
    arg3()
  end
  arg3 = textValue2.state
  if "GAS_VAULT" == arg3 then
    arg3 = textValue4
    if arg3 then
      goto flow_label_67
    end
  end
  arg3 = textValue2.gases
  if arg3 then
    arg3 = workValue14
    arg3()
    goto flow_label_69
    ::flow_label_67::
    arg3 = workValue13
    arg3()
  end
  ::flow_label_69::
  arg3 = textValue2.state
  if "INACTIVE" ~= arg3 then
    arg3 = textValue3
    if arg3 then
      arg3 = textValue2.alarmDisabled
      if not arg3 then
        goto flow_label_84
      end
    end
  end
  arg3 = textValue2.alarms
  if arg3 then
    arg3 = workValue11
    arg3()
    goto flow_label_86
    ::flow_label_84::
    arg3 = workValue12
    arg3()
  end
  ::flow_label_86::
end
cmgCall5 = CMG
cmgCall5 = cmgCall5.createThreadOnTick
textValue11 = workValue15
textValue12 = "Bank Heist"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall5(textValue11, textValue12)
cmgCall5 = RegisterNetEvent
textValue11 = "dd054c89ec"
-- Beginner: this function handles network event "dd054c89ec".
function textValue12(arg1)
  local arg2
  arg2 = CMG
  arg2 = arg2.isPlayerInBankHeistSetup
  arg2 = arg2()
  if arg2 then
    return
  end
  textValue2.state = arg1
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  textValue2.lastStateChange = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "dd054c89ec".
cmgCall5(textValue11, textValue12)
cmgCall5 = RegisterNetEvent
textValue11 = "40cac5cefd"
-- Beginner: this function handles network event "40cac5cefd".
function textValue12(arg1)
  local arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6, flag7, flag8, numberValue, flag9, flag10, numberValue2, numberValue3, flag11, flag12, flag13, flag14
  arg2 = CMG
  arg2 = arg2.isPlayerInBankHeistSetup
  arg2 = arg2()
  if arg2 then
    return
  end
  arg2 = tCMG
  arg2 = arg2.setCanAnim
  arg3 = false
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.setPlayerCombatTimer
  arg3 = 300
  cmgCall3 = false
  arg2(arg3, cmgCall3)
  arg2 = CMG
  arg2 = arg2.loadAnimDict
  arg3 = "anim@heists@ornate_bank@thermal_charge"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.loadModel
  arg3 = "hei_p_m_bag_var22_arm_s"
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.loadModel
  arg3 = "hei_prop_heist_thermite"
  arg2(arg3)
  arg2 = cmgCall.staffDoors
  arg2 = arg2[arg1]
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  cmgCall3 = SetEntityHeading
  textValue13 = arg3
  serverEventCall2 = arg2.thermiteHeading
  -- Beginner: Change the direction an entity is facing.
  cmgCall3(textValue13, serverEventCall2)
  cmgCall3 = GetEntityRotation
  textValue13 = arg3
  serverEventCall2 = 2
  cmgCall3 = cmgCall3(textValue13, serverEventCall2)
  textValue13 = arg2.thermitePosition
  serverEventCall2 = NetworkCreateSynchronisedScene
  textValue20 = textValue13.x
  flag20 = textValue13.y
  workValue19 = textValue13.z
  flag21 = cmgCall3.x
  workValue = cmgCall3.y
  flag = cmgCall3.z
  flag4 = 2
  flag6 = false
  flag7 = false
  flag8 = 1065353216
  numberValue = 0
  flag9 = 1.3
  serverEventCall2 = serverEventCall2(textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6, flag7, flag8, numberValue, flag9)
  textValue20 = CMG
  textValue20 = textValue20.requestEntitySpawn
  flag20 = "bankheist_thermite_bag"
  workValue19 = arg1
  textValue20(flag20, workValue19)
  textValue20 = CreateObject
  flag20 = -944468481
  workValue19 = textValue13.x
  flag21 = textValue13.y
  workValue = textValue13.z
  flag = true
  flag4 = true
  flag6 = false
  -- Beginner: result below is objectEntity.
  textValue20 = textValue20(flag20, workValue19, flag21, workValue, flag, flag4, flag6)
  flag20 = SetEntityCollision
  workValue19 = textValue20
  flag21 = false
  workValue = true
  flag20(workValue19, flag21, workValue)
  flag20 = NetworkAddPedToSynchronisedScene
  workValue19 = arg3
  flag21 = serverEventCall2
  workValue = "anim@heists@ornate_bank@thermal_charge"
  flag = "thermal_charge"
  flag4 = 1.5
  flag6 = -4.0
  flag7 = 1
  flag8 = 16
  numberValue = 1148846080
  flag9 = 0
  flag20(workValue19, flag21, workValue, flag, flag4, flag6, flag7, flag8, numberValue, flag9)
  flag20 = NetworkAddEntityToSynchronisedScene
  workValue19 = textValue20
  flag21 = serverEventCall2
  workValue = "anim@heists@ornate_bank@thermal_charge"
  flag = "bag_thermal_charge"
  flag4 = 4.0
  flag6 = -8.0
  flag7 = 1
  flag20(workValue19, flag21, workValue, flag, flag4, flag6, flag7)
  flag20 = NetworkStartSynchronisedScene
  workValue19 = serverEventCall2
  flag20(workValue19)
  flag20 = Citizen
  flag20 = flag20.Wait
  workValue19 = 1500
  flag20(workValue19)
  flag20 = CMG
  flag20 = flag20.getPlayerCoords
  -- Beginner: result below is playerCoords.
  flag20 = flag20()
  workValue19 = CMG
  workValue19 = workValue19.requestEntitySpawn
  flag21 = "bankheist_thermite_object"
  workValue = arg1
  workValue19(flag21, workValue)
  workValue19 = CreateObject
  flag21 = 865563579
  workValue = flag20.x
  flag = flag20.y
  flag4 = flag20.z
  flag4 = flag4 + 0.2
  flag6 = true
  flag7 = true
  flag8 = true
  -- Beginner: result below is objectEntity.
  workValue19 = workValue19(flag21, workValue, flag, flag4, flag6, flag7, flag8)
  flag21 = SetEntityCollision
  workValue = workValue19
  flag = false
  flag4 = false
  flag21(workValue, flag, flag4)
  flag21 = SetEntityCompletelyDisableCollision
  workValue = workValue19
  flag = false
  flag4 = false
  flag21(workValue, flag, flag4)
  flag21 = AttachEntityToEntity
  workValue = workValue19
  flag = arg3
  flag4 = GetPedBoneIndex
  flag6 = arg3
  flag7 = 28422
  flag4 = flag4(flag6, flag7)
  flag6 = 0
  flag7 = 0
  flag8 = 0
  numberValue = 0
  flag9 = 0
  flag10 = 200.0
  numberValue2 = true
  numberValue3 = true
  flag11 = false
  flag12 = true
  flag13 = 1
  flag14 = true
  -- Beginner: Attach one entity to another entity.
  flag21(workValue, flag, flag4, flag6, flag7, flag8, numberValue, flag9, flag10, numberValue2, numberValue3, flag11, flag12, flag13, flag14)
  flag21 = Citizen
  flag21 = flag21.Wait
  workValue = 4000
  flag21(workValue)
  flag21 = DeleteEntity
  workValue = textValue20
  -- Beginner: Delete a GTA entity.
  flag21(workValue)
  flag21 = SetPedComponentVariation
  workValue = arg3
  flag = 5
  flag4 = 45
  flag6 = 0
  flag7 = 0
  flag21(workValue, flag, flag4, flag6, flag7)
  flag21 = DetachEntity
  workValue = workValue19
  flag = true
  flag4 = true
  flag21(workValue, flag, flag4)
  flag21 = FreezeEntityPosition
  workValue = workValue19
  flag = true
  -- Beginner: Freeze or unfreeze an entity in place.
  flag21(workValue, flag)
  flag21 = SetEntityCollision
  workValue = workValue19
  flag = false
  flag4 = false
  flag21(workValue, flag, flag4)
  flag21 = SetEntityCompletelyDisableCollision
  workValue = workValue19
  flag = false
  flag4 = false
  flag21(workValue, flag, flag4)
  flag21 = NetworkStopSynchronisedScene
  workValue = serverEventCall2
  flag21(workValue)
  flag21 = tCMG
  flag21 = flag21.setCanAnim
  workValue = true
  flag21(workValue)
  flag21 = TaskPlayAnim
  workValue = arg3
  flag = "anim@heists@ornate_bank@thermal_charge"
  flag4 = "cover_eyes_intro"
  flag6 = 8.0
  flag7 = 8.0
  flag8 = 1000
  numberValue = 36
  flag9 = 1
  flag10 = false
  numberValue2 = false
  numberValue3 = false
  -- Beginner: Play an animation on a ped.
  flag21(workValue, flag, flag4, flag6, flag7, flag8, numberValue, flag9, flag10, numberValue2, numberValue3)
  flag21 = TaskPlayAnim
  workValue = arg3
  flag = "anim@heists@ornate_bank@thermal_charge"
  flag4 = "cover_eyes_loop"
  flag6 = 8.0
  flag7 = 8.0
  flag8 = 10000
  numberValue = 49
  flag9 = 1
  flag10 = false
  numberValue2 = false
  numberValue3 = false
  flag21(workValue, flag, flag4, flag6, flag7, flag8, numberValue, flag9, flag10, numberValue2, numberValue3)
  flag21 = Citizen
  flag21 = flag21.Wait
  workValue = 10000
  flag21(workValue)
  flag21 = ClearPedTasks
  workValue = arg3
  flag21(workValue)
  flag21 = DeleteEntity
  workValue = workValue19
  -- Beginner: Delete a GTA entity.
  flag21(workValue)
  flag21 = SetModelAsNoLongerNeeded
  workValue = "hei_prop_heist_thermite"
  flag21(workValue)
  flag21 = SetModelAsNoLongerNeeded
  workValue = "hei_p_m_bag_var22_arm_s"
  flag21(workValue)
  flag21 = RemoveAnimDict
  workValue = "anim@heists@ornate_bank@thermal_charge"
  flag21(workValue)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "40cac5cefd".
cmgCall5(textValue11, textValue12)
cmgCall5 = RegisterNetEvent
textValue11 = "1cbffefd47"
-- Beginner: this function handles network event "1cbffefd47".
function textValue12()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20
  arg1 = CMG
  arg1 = arg1.isPlayerInBankHeistSetup
  arg1 = arg1()
  if arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.loadPtfx
  arg2 = "scr_ornate_heist"
  arg1(arg2)
  arg1 = pairs
  arg2 = cmgCall.staffDoors
  arg1, arg2, arg3, cmgCall3 = arg1(arg2)
  for textValue13, serverEventCall2 in arg1, arg2, arg3, cmgCall3 do
    textValue20 = Citizen
    textValue20 = textValue20.CreateThread
    function flag20()
      local arg12, arg22, textValue7, flag18, textValue14, flag19, rageUiCall8, numberValue12, textValue21, dataTable, textValue, flag2, flag5
      arg12 = UseParticleFxAsset
      arg22 = "scr_ornate_heist"
      arg12(arg22)
      arg12 = StartParticleFxLoopedAtCoord
      arg22 = "scr_heist_ornate_thermal_burn"
      textValue7 = serverEventCall2.thermiteParticle
      textValue7 = textValue7.x
      flag18 = serverEventCall2.thermiteParticle
      flag18 = flag18.y
      textValue14 = serverEventCall2.thermiteParticle
      textValue14 = textValue14.z
      flag19 = 0.0
      rageUiCall8 = 0.0
      numberValue12 = 0.0
      textValue21 = 1.0
      dataTable = false
      textValue = false
      flag2 = false
      flag5 = false
      arg12 = arg12(arg22, textValue7, flag18, textValue14, flag19, rageUiCall8, numberValue12, textValue21, dataTable, textValue, flag2, flag5)
      arg22 = Citizen
      arg22 = arg22.Wait
      textValue7 = 10000
      arg22(textValue7)
      arg22 = StopParticleFxLooped
      textValue7 = arg12
      flag18 = false
      arg22(textValue7, flag18)
      arg22 = RemoveNamedPtfxAsset
      textValue7 = "scr_ornate_heist"
      arg22(textValue7)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    textValue20(flag20)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1cbffefd47".
cmgCall5(textValue11, textValue12)
cmgCall5 = AddEventHandler
textValue11 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.
function textValue12(arg1)
  local arg2, arg3, cmgCall3, textValue13
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg2 == arg1 then
    arg2 = numberValue11
    if arg2 then
      arg2 = numberValue11.stages
      arg3 = numberValue11.stageIndex
      arg2 = arg2[arg3]
      arg3 = arg2.clean
      if arg3 then
        arg3 = arg2.clean
        cmgCall3 = numberValue11.info
        arg3(cmgCall3)
      end
      arg3 = numberValue11.finish
      if arg3 then
        arg3 = numberValue11.finish
        cmgCall3 = numberValue11.info
        arg3(cmgCall3)
      end
    end
  end
  arg2 = workValue9
  arg2()
  arg2 = SetPlayerControl
  arg3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg3 = arg3()
  cmgCall3 = true
  textValue13 = 0
  arg2(arg3, cmgCall3, textValue13)
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgCall5(textValue11, textValue12)
cmgCall5 = RMenu
cmgCall5 = cmgCall5.Add
textValue11 = "sellBankHeistItems"
textValue12 = "main"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateMenu
textValue16 = ""
threadCall = "~b~Sell Stolen Bank Items"
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuWidth
rageUiCall6 = rageUiCall6()
rageUiCall7 = CMG
rageUiCall7 = rageUiCall7.getRageUIMenuHeight
rageUiCall7 = rageUiCall7()
textValue17 = "cmg_blackmarket"
textValue18 = "cmg_blackmarket"
rageUiCall5, textValue16, threadCall, rageUiCall6, rageUiCall7, textValue17, textValue18 = rageUiCall5(textValue16, threadCall, rageUiCall6, rageUiCall7, textValue17, textValue18)
cmgCall5(textValue11, textValue12, rageUiCall5, textValue16, threadCall, rageUiCall6, rageUiCall7, textValue17, textValue18)
cmgCall5 = RageUI
cmgCall5 = cmgCall5.CreateWhile
textValue11 = 1.0
textValue12 = RMenu
rageUiCall5 = textValue12
textValue12 = textValue12.Get
textValue16 = "sellBankHeistItems"
threadCall = "main"
-- Beginner: result below is menu.
textValue12 = textValue12(rageUiCall5, textValue16, threadCall)
rageUiCall5 = nil
function textValue16()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  cmgCall3 = "sellBankHeistItems"
  textValue13 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, cmgCall3, textValue13)
  arg3 = true
  cmgCall3 = false
  textValue13 = true
  function serverEventCall2()
    local arg12, arg22, textValue7, flag18, textValue14, flag19, rageUiCall8, numberValue12, textValue21, dataTable, textValue, flag2, flag5
    arg12 = pairs
    arg22 = cmgCall.sellableItems
    arg12, arg22, textValue7, flag18 = arg12(arg22)
    for textValue14, flag19 in arg12, arg22, textValue7, flag18 do
      rageUiCall8 = RageUI
      rageUiCall8 = rageUiCall8.ButtonWithStyle
      numberValue12 = textValue14
      textValue21 = ""
      dataTable = {}
      textValue = "\194\163"
      flag2 = getMoneyStringFormatted
      flag5 = cmgCall.payouts
      flag5 = flag5[flag19]
      flag2 = flag2(flag5)
      textValue = textValue .. flag2
      dataTable.RightLabel = textValue
      textValue = true
      function flag2(arg13, arg23, arg32)
        local cmgCall4, textValue15, textValue19
        if arg32 then
          cmgCall4 = TriggerServerEvent
          textValue15 = "5e35771e2b"
          textValue19 = flag19
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5e35771e2b".
          cmgCall4(textValue15, textValue19)
        end
      end
      flag5 = nil
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall8(numberValue12, textValue21, dataTable, textValue, flag2, flag5)
    end
  end
  function textValue20()
    local arg12, arg22
  end
  arg1(arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20)
end
cmgCall5(textValue11, textValue12, rageUiCall5, textValue16)
function cmgCall5()
  local arg1, arg2, arg3, cmgCall3, textValue13
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  cmgCall3 = "sellBankHeistItems"
  textValue13 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, cmgCall3, textValue13)
  arg3 = true
  arg1(arg2, arg3)
end
function textValue11()
  local arg1, arg2, arg3, cmgCall3, textValue13
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  cmgCall3 = "sellBankHeistItems"
  textValue13 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, cmgCall3, textValue13)
  arg3 = false
  arg1(arg2, arg3)
end
textValue12 = 0
function rageUiCall5()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20
  arg1 = CMG
  arg1 = arg1.loadModel
  arg2 = cmgCall.safeTerminal
  arg2 = arg2.model
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg1(arg2)
  arg1 = CreateObjectNoOffset
  arg2 = cmgCall.safeTerminal
  arg2 = arg2.model
  arg3 = cmgCall.safeTerminal
  arg3 = arg3.position
  arg3 = arg3.x
  cmgCall3 = cmgCall.safeTerminal
  cmgCall3 = cmgCall3.position
  cmgCall3 = cmgCall3.y
  textValue13 = cmgCall.safeTerminal
  textValue13 = textValue13.position
  textValue13 = textValue13.z
  serverEventCall2 = false
  textValue20 = false
  flag20 = false
  -- Beginner: result below is objectEntity.
  arg1 = arg1(arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20)
  textValue12 = arg1
  arg1 = SetEntityHeading
  arg2 = textValue12
  arg3 = cmgCall.safeTerminal
  arg3 = arg3.position
  arg3 = arg3.w
  -- Beginner: Change the direction an entity is facing.
  arg1(arg2, arg3)
  arg1 = FreezeEntityPosition
  arg2 = textValue12
  arg3 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg1(arg2, arg3)
  arg1 = SetModelAsNoLongerNeeded
  arg2 = cmgCall.safeTerminal
  arg2 = arg2.model
  arg1(arg2)
end
function textValue16()
  local arg1, arg2
  arg1 = DeleteEntity
  arg2 = textValue12
  -- Beginner: Delete a GTA entity.
  arg1(arg2)
  arg1 = 0
  textValue12 = arg1
end
threadCall = Citizen
threadCall = threadCall.CreateThread
function rageUiCall6()
  local arg1, arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6, flag7, flag8
  arg1 = tCMG
  arg1 = arg1.addMarker
  arg2 = cmgCall.sellLocation
  arg2 = arg2.x
  arg3 = cmgCall.sellLocation
  arg3 = arg3.y
  cmgCall3 = cmgCall.sellLocation
  cmgCall3 = cmgCall3.z
  cmgCall3 = cmgCall3 - 0.9
  textValue13 = 0.8
  serverEventCall2 = 0.8
  textValue20 = 0.8
  flag20 = 200
  workValue19 = 0
  flag21 = 0
  workValue = 255
  flag = 30
  flag4 = 27
  flag6 = false
  flag7 = false
  flag8 = false
  -- Beginner: Create a world marker.
  arg1(arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21, workValue, flag, flag4, flag6, flag7, flag8)
  arg1 = tCMG
  arg1 = arg1.addBlip
  arg2 = cmgCall.sellLocation
  arg2 = arg2.x
  arg3 = cmgCall.sellLocation
  arg3 = arg3.y
  cmgCall3 = cmgCall.sellLocation
  cmgCall3 = cmgCall3.z
  textValue13 = 618
  serverEventCall2 = 46
  textValue20 = "Sell Stolen Bank Items"
  arg1 = arg1(arg2, arg3, cmgCall3, textValue13, serverEventCall2, textValue20)
  arg2 = CMG
  arg2 = arg2.addBlipContext
  arg3 = "Civilian"
  cmgCall3 = arg1
  arg2(arg3, cmgCall3)
  arg2 = CMG
  arg2 = arg2.createArea
  arg3 = "sellBankHeistItems"
  cmgCall3 = cmgCall.sellLocation
  textValue13 = 2.0
  serverEventCall2 = 5.0
  textValue20 = cmgCall5
  flag20 = textValue11
  function workValue19()
    local arg12, arg22
  end
  flag21 = {}
  -- Beginner: Create an interaction area around a world position.
  arg2(arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21)
  arg2 = CMG
  arg2 = arg2.createArea
  arg3 = "bankheist_fakeTerminalObject"
  cmgCall3 = cmgCall.safeTerminal
  cmgCall3 = cmgCall3.position
  cmgCall3 = cmgCall3.xyz
  textValue13 = 50.0
  serverEventCall2 = 20.0
  textValue20 = rageUiCall5
  flag20 = textValue16
  function workValue19()
    local arg12, arg22
  end
  flag21 = {}
  arg2(arg3, cmgCall3, textValue13, serverEventCall2, textValue20, flag20, workValue19, flag21)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(rageUiCall6)