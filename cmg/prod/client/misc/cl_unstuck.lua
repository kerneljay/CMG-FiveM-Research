--[[
    Beginner Guide: cl_unstuck.lua
    ==============================

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
    BEGINNER GUIDE — Unstuck
    ========================

    File: cmg/prod/client/misc/cl_unstuck.lua
    Purpose: This file contains general gameplay utility.

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

    Commands/command-like entries found:
      * unstuck
      * reset

    Network/hash identifiers found: 1
      They are intentionally left unchanged because matching server code may use them.
      * 021f583c2c

    Example player-facing text in this file:
      * You moved during the countdown so the teleportation was cancelled.
      * You will be telported to the surface in 
      * You moved during the countdown.
      * You are unable to use this right now. Use /calladmin if you still need assistance.

]]
local dataTable, dataTable2, vector3Builder, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, numberValue5, numberValue6, textValue, workValue2, flag2
dataTable = {}
dataTable2 = {}
vector3Builder = vector3
vector3Builder2 = 3533.4428710938
vector3Builder3 = 3713.8090820313
vector3Builder4 = 36.17896270752
vector3Builder = vector3Builder(vector3Builder2, vector3Builder3, vector3Builder4)
dataTable2.coords = vector3Builder
dataTable2.radius = 150
vector3Builder = {}
vector3Builder2 = vector3
vector3Builder3 = 1459.3325195313
vector3Builder4 = 6350.8974609375
vector3Builder5 = 23.534168243408
vector3Builder2 = vector3Builder2(vector3Builder3, vector3Builder4, vector3Builder5)
vector3Builder.coords = vector3Builder2
vector3Builder.radius = 150
vector3Builder2 = {}
vector3Builder3 = vector3
vector3Builder4 = 1359.7745361328
vector3Builder5 = 4371.7626953125
vector3Builder6 = 44.287654876709
vector3Builder3 = vector3Builder3(vector3Builder4, vector3Builder5, vector3Builder6)
vector3Builder2.coords = vector3Builder3
vector3Builder2.radius = 150
vector3Builder3 = {}
vector3Builder4 = vector3
vector3Builder5 = 2506.5634765625
vector3Builder6 = -390.224609375
numberValue5 = 94.119445800781
vector3Builder4 = vector3Builder4(vector3Builder5, vector3Builder6, numberValue5)
vector3Builder3.coords = vector3Builder4
vector3Builder3.radius = 150
vector3Builder4 = {}
vector3Builder5 = vector3
vector3Builder6 = -1498.1591796875
numberValue5 = -215.69320678711
numberValue6 = 50.195583343506
vector3Builder5 = vector3Builder5(vector3Builder6, numberValue5, numberValue6)
vector3Builder4.coords = vector3Builder5
vector3Builder4.radius = 20
vector3Builder5 = {}
vector3Builder6 = vector3
numberValue5 = -3171.8498535156
numberValue6 = 1085.7032470703
textValue = 20.838762283325
vector3Builder6 = vector3Builder6(numberValue5, numberValue6, textValue)
vector3Builder5.coords = vector3Builder6
vector3Builder5.radius = 45
dataTable[1] = dataTable2
dataTable[2] = vector3Builder
dataTable[3] = vector3Builder2
dataTable[4] = vector3Builder3
dataTable[5] = vector3Builder4
dataTable[6] = vector3Builder5
dataTable2 = 0
function vector3Builder(arg1, arg2, arg3)
  local cmgCall, flag8, playerPed, threadCall, position
  cmgCall = true
  flag8 = false
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  threadCall = Citizen
  threadCall = threadCall.CreateThread
  function position()
    local workValue, numberValue4, textValue2, textValue3, flag9, flag10, flag11, flag12, flag13
    repeat
      workValue = arg1
      if workValue > 0 then
        workValue = PlaySoundFrontend
        numberValue4 = -1
        textValue2 = "3_2_1"
        textValue3 = "HUD_MINI_GAME_SOUNDSET"
        flag9 = true
        workValue(numberValue4, textValue2, textValue3, flag9)
      else
        workValue = PlaySoundFrontend
        numberValue4 = -1
        textValue2 = "Countdown_GO"
        textValue3 = "DLC_SR_TR_General_Sounds"
        flag9 = false
        workValue(numberValue4, textValue2, textValue3, flag9)
        workValue = ClearPedTasksImmediately
        numberValue4 = playerPed
        workValue(numberValue4)
      end
      workValue = Wait
      numberValue4 = 1000
      workValue(numberValue4)
      workValue = arg1
      workValue = workValue - 1
      arg1 = workValue
      workValue = flag8
      if workValue then
        workValue = -1
        arg1 = workValue
      end
      workValue = arg1
    until -1 == workValue
    workValue = flag8
    if not workValue then
      workValue = DoScreenFadeOut
      numberValue4 = 350
      workValue(numberValue4)
      workValue = Wait
      numberValue4 = 500
      workValue(numberValue4)
      workValue = SetEntityCoords
      numberValue4 = playerPed
      textValue2 = arg3.x
      textValue3 = arg3.y
      flag9 = arg3.z
      flag9 = flag9 + 1.5
      flag10 = false
      flag11 = false
      flag12 = false
      flag13 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      workValue(numberValue4, textValue2, textValue3, flag9, flag10, flag11, flag12, flag13)
      workValue = Wait
      numberValue4 = 500
      workValue(numberValue4)
      workValue = DoScreenFadeIn
      numberValue4 = 500
      workValue(numberValue4)
      workValue = CMG
      workValue = workValue.notifyPicture
      numberValue4 = "polnotification"
      textValue2 = "notification"
      textValue3 = [[
Attempting to telport to surface... 

If you are still not on the surface please use /calladmin.]]
      flag9 = "CMG"
      flag10 = "Utilities"
      flag11 = nil
      flag12 = nil
      workValue(numberValue4, textValue2, textValue3, flag9, flag10, flag11, flag12)
      workValue = TriggerServerEvent
      numberValue4 = "021f583c2c"
      textValue2 = arg2
      textValue3 = arg3
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "021f583c2c".
      workValue(numberValue4, textValue2, textValue3)
    else
      workValue = CMG
      workValue = workValue.notifyPicture
      numberValue4 = "polnotification"
      textValue2 = "notification"
      textValue3 = "You moved during the countdown so the teleportation was cancelled."
      flag9 = "CMG"
      flag10 = "Utilities"
      flag11 = nil
      flag12 = nil
      workValue(numberValue4, textValue2, textValue3, flag9, flag10, flag11, flag12)
    end
    workValue = false
    cmgCall = workValue
    workValue = false
    flag8 = workValue
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  threadCall(position)
  threadCall = Citizen
  threadCall = threadCall.CreateThread
  function position()
    local workValue, numberValue4, textValue2, textValue3, flag9, flag10, flag11, flag12, flag13, numberValue8, numberValue2, flag, flag4, flag6
    workValue = Scaleform
    numberValue4 = "mp_big_message_freemode"
    workValue = workValue(numberValue4)
    while true do
      numberValue4 = Wait
      textValue2 = 0
      numberValue4(textValue2)
      numberValue4 = IsControlJustReleased
      textValue2 = 0
      textValue3 = 73
      numberValue4 = numberValue4(textValue2, textValue3)
      if numberValue4 then
        numberValue4 = true
        flag8 = numberValue4
        numberValue4 = ClearPedTasksImmediately
        textValue2 = playerPed
        numberValue4(textValue2)
      end
      numberValue4 = cmgCall
      if numberValue4 then
        numberValue4 = CMG
        numberValue4 = numberValue4.getPlayerCoords
        -- Beginner: result below is playerCoords.
        numberValue4 = numberValue4()
        textValue2 = arg2
        textValue2 = numberValue4 - textValue2
        textValue2 = #textValue2
        textValue3 = 0.5
        if not (textValue2 < textValue3) then
          textValue2 = arg3
          textValue2 = numberValue4 - textValue2
          textValue2 = #textValue2
          textValue3 = 0.5
          if not (textValue2 < textValue3) then
            goto flow_label_107
          end
          textValue2 = flag8
          if textValue2 then
            goto flow_label_107
          end
        end
        textValue2 = arg1
        if textValue2 > -1 then
          textValue2 = DisablePlayerFiring
          textValue3 = PlayerId
          -- Beginner: result below is localPlayerIndex.
          textValue3 = textValue3()
          flag9 = true
          textValue2(textValue3, flag9)
          textValue2 = DisableControlAction
          textValue3 = 1
          flag9 = 140
          flag10 = true
          textValue2(textValue3, flag9, flag10)
          textValue2 = DisableControlAction
          textValue3 = 1
          flag9 = 141
          flag10 = true
          textValue2(textValue3, flag9, flag10)
          textValue2 = DisableControlAction
          textValue3 = 1
          flag9 = 142
          flag10 = true
          textValue2(textValue3, flag9, flag10)
          textValue2 = workValue.RunFunction
          textValue3 = "SHOW_SHARD_WASTED_MP_MESSAGE"
          flag9 = {}
          flag10 = "~r~DONT MOVE"
          flag11 = "You will be telported to the surface in "
          flag12 = arg1
          flag13 = " seconds."
          flag11 = flag11 .. flag12 .. flag13
          flag9[1] = flag10
          flag9[2] = flag11
          textValue2(textValue3, flag9)
          textValue2 = workValue.Render2D
          textValue2()
          textValue2 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          textValue2 = textValue2()
          playerPed = textValue2
          textValue2 = IsEntityPlayingAnim
          textValue3 = playerPed
          flag9 = "timetable@amanda@ig_4"
          flag10 = "ig_4_base"
          flag11 = 3
          textValue2 = textValue2(textValue3, flag9, flag10, flag11)
          if not textValue2 then
            textValue2 = flag8
            if not textValue2 then
              textValue2 = TaskPlayAnim
              textValue3 = playerPed
              flag9 = "timetable@amanda@ig_4"
              flag10 = "ig_4_base"
              flag11 = 8.0
              flag12 = -8.0
              flag13 = -1
              numberValue8 = 0
              numberValue2 = 0.0
              flag = false
              flag4 = false
              flag6 = false
              -- Beginner: Play an animation on a ped.
              textValue2(textValue3, flag9, flag10, flag11, flag12, flag13, numberValue8, numberValue2, flag, flag4, flag6)
            end
          end
        else
          do break end
          goto flow_label_161
          ::flow_label_107::
          textValue2 = DisablePlayerFiring
          textValue3 = PlayerId
          -- Beginner: result below is localPlayerIndex.
          textValue3 = textValue3()
          flag9 = true
          textValue2(textValue3, flag9)
          textValue2 = DisableControlAction
          textValue3 = 1
          flag9 = 140
          flag10 = true
          textValue2(textValue3, flag9, flag10)
          textValue2 = DisableControlAction
          textValue3 = 1
          flag9 = 141
          flag10 = true
          textValue2(textValue3, flag9, flag10)
          textValue2 = DisableControlAction
          textValue3 = 1
          flag9 = 142
          flag10 = true
          textValue2(textValue3, flag9, flag10)
          if workValue then
            textValue2 = BeginScaleformMovieMethod
            textValue3 = workValue.Handle
            flag9 = "SHOW_SHARD_WASTED_MP_MESSAGE"
            textValue2(textValue3, flag9)
            textValue2 = BeginTextCommandScaleformString
            textValue3 = "STRING"
            textValue2(textValue3)
            textValue2 = _ENV
            textValue3 = "ScaleformMovieMethodAddParamTextureNameString"
            textValue2 = textValue2[textValue3]
            textValue3 = "~r~CANCELLED"
            textValue2(textValue3)
            textValue2 = _ENV
            textValue3 = "ScaleformMovieMethodAddParamTextureNameString"
            textValue2 = textValue2[textValue3]
            textValue3 = "You moved during the countdown."
            textValue2(textValue3)
            textValue2 = EndTextCommandScaleformString
            textValue2()
            textValue2 = EndScaleformMovieMethod
            textValue2()
            textValue2 = DrawScaleformMovieFullscreen
            textValue3 = workValue.Handle
            flag9 = 255
            flag10 = 255
            flag11 = 255
            flag12 = 255
            flag13 = 0
            textValue2(textValue3, flag9, flag10, flag11, flag12, flag13)
          end
          textValue2 = true
          flag8 = textValue2
          break
        end
      end
      ::flow_label_161::
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  threadCall(position)
end
function vector3Builder2(arg1)
  local arg2, arg3, cmgCall, flag8, playerPed, threadCall, position, textValue4
  arg2 = ipairs
  arg3 = dataTable
  arg2, arg3, cmgCall, flag8 = arg2(arg3)
  for playerPed, threadCall in arg2, arg3, cmgCall, flag8 do
    position = threadCall.coords
    position = arg1 - position
    position = #position
    textValue4 = threadCall.radius
    if position < textValue4 then
      position = true
      return position
    end
  end
  arg2 = false
  return arg2
end
function vector3Builder3()
  local arg1, arg2, arg3, cmgCall, flag8, playerPed, threadCall, position
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = GetNthClosestVehicleNode
  cmgCall = arg2.x
  flag8 = arg2.y
  playerPed = arg2.z
  threadCall = 1
  arg3, cmgCall = arg3(cmgCall, flag8, playerPed, threadCall)
  flag8 = CMG
  flag8 = flag8.getPlayerCombatTimer
  flag8 = flag8()
  if flag8 > 0 then
    flag8 = false
    playerPed = cmgCall
    return flag8, playerPed
  end
  flag8 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  flag8 = flag8()
  playerPed = dataTable2
  flag8 = flag8 - playerPed
  playerPed = 10000
  if flag8 < playerPed then
    flag8 = false
    playerPed = cmgCall
    return flag8, playerPed
  end
  flag8 = vector3
  playerPed = 0
  threadCall = 0
  position = 0
  flag8 = flag8(playerPed, threadCall, position)
  flag8 = cmgCall.z
  playerPed = arg2.z
  flag8 = vector3Builder2
  playerPed = arg2
  flag8 = flag8(playerPed)
  flag8 = GetRoomKeyFromEntity
  playerPed = PlayerPedId
  playerPed, threadCall, position = playerPed()
  flag8 = flag8(playerPed, threadCall, position)
  flag8 = IsEntityInWater
  playerPed = arg1
  flag8 = flag8(playerPed)
  flag8 = IsPedInAnyVehicle
  playerPed = arg1
  threadCall = false
  flag8 = flag8(playerPed, threadCall)
  flag8 = cmgCall ~= flag8 and flag8
  playerPed = cmgCall
  return flag8, playerPed
end
vector3Builder4 = RegisterCommand
vector3Builder5 = "unstuck"
-- Beginner: this function is the command handler for "unstuck".
function vector3Builder6()
  local arg1, arg2, arg3, cmgCall, flag8, playerPed, threadCall, position, textValue4, numberValue7, numberValue, numberValue3, flag3, flag5, flag7
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = vector3Builder3
  arg2, arg3 = arg2()
  cmgCall = CMG
  cmgCall = cmgCall.inEvent
  cmgCall = cmgCall()
  if cmgCall then
    return
  end
  if not arg2 then
    cmgCall = CMG
    cmgCall = cmgCall.notifyPicture
    flag8 = "CHAR_BLOCKED"
    playerPed = "CHAR_BLOCKED"
    threadCall = "You are unable to use this right now. Use /calladmin if you still need assistance."
    position = "CMG"
    textValue4 = "Utilities"
    numberValue7 = nil
    numberValue = nil
    cmgCall(flag8, playerPed, threadCall, position, textValue4, numberValue7, numberValue)
  else
    cmgCall = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    cmgCall = cmgCall()
    dataTable2 = cmgCall
    cmgCall = CMG
    cmgCall = cmgCall.loadAnimDict
    flag8 = "timetable@amanda@ig_4"
    -- Beginner: Load a GTA animation dictionary before using it.
    cmgCall(flag8)
    cmgCall = TaskPlayAnim
    flag8 = arg1
    playerPed = "timetable@amanda@ig_4"
    threadCall = "ig_4_base"
    position = 8.0
    textValue4 = -8.0
    numberValue7 = -1
    numberValue = 0
    numberValue3 = 0.0
    flag3 = false
    flag5 = false
    flag7 = false
    -- Beginner: Play an animation on a ped.
    cmgCall(flag8, playerPed, threadCall, position, textValue4, numberValue7, numberValue, numberValue3, flag3, flag5, flag7)
    cmgCall = RemoveAnimDict
    flag8 = "timetable@amanda@ig_4"
    cmgCall(flag8)
    cmgCall = Wait
    flag8 = 1000
    cmgCall(flag8)
    cmgCall = vector3Builder
    flag8 = 45
    playerPed = CMG
    playerPed = playerPed.getPlayerCoords
    -- Beginner: result below is playerCoords.
    playerPed = playerPed()
    threadCall = arg3
    cmgCall(flag8, playerPed, threadCall)
  end
end
numberValue5 = false
-- Beginner: Register a chat/console command. Event/command: "unstuck".
vector3Builder4(vector3Builder5, vector3Builder6, numberValue5)
function vector3Builder4()
  local arg1, arg2, arg3, cmgCall, flag8, playerPed, threadCall, position, textValue4
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = pairs
  arg3 = GetGamePool
  cmgCall = "CPed"
  arg3, cmgCall, flag8, playerPed, threadCall, position, textValue4 = arg3(cmgCall)
  arg2, arg3, cmgCall, flag8 = arg2(arg3, cmgCall, flag8, playerPed, threadCall, position, textValue4)
  for playerPed, threadCall in arg2, arg3, cmgCall, flag8 do
    position = GetEntityAttachedTo
    textValue4 = threadCall
    position = position(textValue4)
    if position == arg1 then
      position = true
      return position
    end
  end
  arg2 = false
  return arg2
end
vector3Builder5 = false
function vector3Builder6()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.inEvent
  arg1 = arg1()
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.getPlayerCombatTimer
    arg1 = arg1()
    arg1 = vector3Builder2
    arg2 = CMG
    arg2 = arg2.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg2 = arg2()
    arg1 = arg1(arg2)
    if not arg1 then
      arg1 = CMG
      arg1 = arg1.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      arg1 = arg1()
      arg1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg1 = arg1()
      arg2 = dataTable2
      arg1 = arg1 - arg2
      arg2 = 10000
      arg1 = vector3Builder4
      arg1 = arg1()
      if not arg1 then
        arg1 = GetEntityAttachedTo
        arg2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg2 = arg2()
        arg1 = arg1(arg2)
        arg1 = CMG
        arg1 = arg1.inOrganHesit
        arg1 = arg1()
        if not arg1 then
          arg1 = CMG
          arg1 = arg1.isPlayingEmote
          arg1 = arg1()
          if not arg1 then
            arg1 = globalInPrison
            if not arg1 then
              arg1 = tCMG
              arg1 = arg1.canAnim
              arg1 = arg1()
              arg1 = arg1 > 0 or arg1
            end
          end
        end
      end
    end
  end
  return arg1
end
function numberValue5()
  local arg1, arg2, arg3
  arg1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg1 = arg1()
  while true do
    arg2 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg2 = arg2()
    arg2 = arg2 - arg1
    arg3 = 3000
    if not (arg2 < arg3) then
      break
    end
    arg2 = vector3Builder6
    arg2 = arg2()
    if arg2 then
      arg2 = false
      return arg2
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
  arg2 = true
  return arg2
end
numberValue6 = RegisterCommand
textValue = "reset"
-- Beginner: this function is the command handler for "reset".
function workValue2()
  local arg1, arg2, arg3, cmgCall, flag8, playerPed, threadCall, position
  arg1 = vector3Builder5
  if arg1 then
    arg1 = notify
    arg2 = "~r~Command in progress, please wait."
    -- Beginner: Show a notification to the player.
    arg1(arg2)
    return
  end
  arg1 = true
  vector3Builder5 = arg1
  arg1 = notify
  arg2 = "~y~Please wait 3 seconds..."
  arg1(arg2)
  arg1 = numberValue5
  arg1 = arg1()
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.notifyPicture
    arg2 = "CHAR_BLOCKED"
    arg3 = "CHAR_BLOCKED"
    cmgCall = "You are unable to use this right now. Use /calladmin if you still need assistance."
    flag8 = "CMG"
    playerPed = "Utilities"
    threadCall = nil
    position = nil
    arg1(arg2, arg3, cmgCall, flag8, playerPed, threadCall, position)
  else
    arg1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg1 = arg1()
    dataTable2 = arg1
    arg1 = CMG
    arg1 = arg1.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg1 = arg1()
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = GetSelectedPedWeapon
    cmgCall = arg2
    -- Beginner: result below is weaponHash.
    arg3 = arg3(cmgCall)
    cmgCall = tCMG
    cmgCall = cmgCall.teleport
    flag8 = 254.61375427246
    playerPed = 7424.9809570312
    threadCall = 16.024713516235
    cmgCall(flag8, playerPed, threadCall)
    cmgCall = Citizen
    cmgCall = cmgCall.Wait
    flag8 = 200
    cmgCall(flag8)
    cmgCall = tCMG
    cmgCall = cmgCall.teleport
    flag8 = arg1.x
    playerPed = arg1.y
    threadCall = arg1.z
    cmgCall(flag8, playerPed, threadCall)
    cmgCall = Citizen
    cmgCall = cmgCall.Wait
    flag8 = 100
    cmgCall(flag8)
    cmgCall = SetCurrentPedWeapon
    flag8 = arg2
    playerPed = arg3
    threadCall = true
    cmgCall(flag8, playerPed, threadCall)
  end
  arg1 = false
  vector3Builder5 = arg1
end
flag2 = false
-- Beginner: Register a chat/console command. Event/command: "reset".
numberValue6(textValue, workValue2, flag2)