--[[
    Beginner Guide: cl_casinoslots.lua
    ==================================

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
    BEGINNER GUIDE — Casinoslots
    ============================

    File: cmg/prod/client/casino/cl_casinoslots.lua
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

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

    Config/data used:
      * cfg/cfg_casinoslots

    Network/hash identifiers found: 10
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * Press ~INPUT_CONTEXT~ to play 
      * ~r~You lost \194\163
      * ~g~You won \194\163
      * ScaleformMovieMethodAddParamPlayerNameString

]]
local cmgCall, dataTable, workValue7, numberValue14, workValue12, numberValue15, flag12, numberValue16, workValue16, workValue17, numberValue, numberValue2, flag2, numberValue4, workValue2, textValue2, textValue3, rageUiCall, textValue4, textValue5, rageUiCall2, rageUiCall3, cmgCall2, textValue6, workValue3, workValue4, workValue5, workValue6, cmgCall3, numberValue13, textValue7, workValue9, flag10, workValue10, dataTable2, workValue11
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable = "cfg/cfg_casinoslots"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable)
dataTable = {}
workValue7 = nil
numberValue14 = 0
workValue12 = nil
numberValue15 = 0
flag12 = false
numberValue16 = 1
workValue16 = nil
workValue17 = nil
numberValue = 0
numberValue2 = 0
flag2 = false
numberValue4 = 0
workValue2 = RMenu
workValue2 = workValue2.Add
textValue2 = "cmgslots"
textValue3 = "instructions"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue4 = ""
textValue5 = ""
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3, cmgCall2, textValue6, workValue3, workValue4, workValue5, workValue6, cmgCall3, numberValue13, textValue7, workValue9, flag10, workValue10, dataTable2, workValue11 = rageUiCall3()
rageUiCall, textValue4, textValue5, rageUiCall2, rageUiCall3, cmgCall2, textValue6, workValue3, workValue4, workValue5, workValue6, cmgCall3, numberValue13, textValue7, workValue9, flag10, workValue10, dataTable2, workValue11 = rageUiCall(textValue4, textValue5, rageUiCall2, rageUiCall3, cmgCall2, textValue6, workValue3, workValue4, workValue5, workValue6, cmgCall3, numberValue13, textValue7, workValue9, flag10, workValue10, dataTable2, workValue11)
workValue2(textValue2, textValue3, rageUiCall, textValue4, textValue5, rageUiCall2, rageUiCall3, cmgCall2, textValue6, workValue3, workValue4, workValue5, workValue6, cmgCall3, numberValue13, textValue7, workValue9, flag10, workValue10, dataTable2, workValue11)
workValue2 = RMenu
textValue2 = workValue2
workValue2 = workValue2.Get
textValue3 = "cmgslots"
rageUiCall = "instructions"
-- Beginner: result below is menu.
workValue2 = workValue2(textValue2, textValue3, rageUiCall)
textValue2 = workValue2
workValue2 = workValue2.SetSubtitle
textValue3 = "~b~SLOTS"
workValue2(textValue2, textValue3)
workValue2 = RageUI
workValue2 = workValue2.CreateWhile
textValue2 = 1.0
textValue3 = RMenu
rageUiCall = textValue3
textValue3 = textValue3.Get
textValue4 = "cmgslots"
textValue5 = "instructions"
-- Beginner: result below is menu.
textValue3 = textValue3(rageUiCall, textValue4, textValue5)
rageUiCall = nil
function textValue4()
  local arg1, arg2, arg3, arg4, flag11, workValue13, playerPed
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgslots"
  flag11 = "instructions"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, flag11)
  arg3 = true
  arg4 = true
  flag11 = true
  function workValue13()
    local arg12, arg22, workValue8, rageUiCall4, textValue8, workValue14, textValue9, workValue15, numberValue17, numberValue18, workValue, textValue, mathHelper, flag4
    arg12 = cmgCall.locations
    arg22 = workValue17
    arg12 = arg12[arg22]
    if not arg12 then
      return
    end
    arg22 = arg12.machines
    workValue8 = numberValue
    arg22 = arg22[workValue8]
    if arg22 then
      workValue8 = cmgCall.machineTypes
      rageUiCall4 = arg22.type
      workValue8 = workValue8[rageUiCall4]
      rageUiCall4 = RageUI
      rageUiCall4 = rageUiCall4.Separator
      textValue8 = "~y~Minimum Bet: "
      workValue14 = getMoneyStringFormatted
      textValue9 = workValue8.minBet
      workValue14 = workValue14(textValue9)
      textValue9 = "k"
      textValue8 = textValue8 .. workValue14 .. textValue9
      rageUiCall4(textValue8)
      rageUiCall4 = RageUI
      rageUiCall4 = rageUiCall4.Separator
      textValue8 = "The payouts displayed on the front of the"
      rageUiCall4(textValue8)
      rageUiCall4 = RageUI
      rageUiCall4 = rageUiCall4.Separator
      textValue8 = "machine are based on the minimum bet."
      rageUiCall4(textValue8)
      rageUiCall4 = "\194\163"
      textValue8 = pairs
      workValue14 = workValue8.betRanges
      textValue8, workValue14, textValue9, workValue15 = textValue8(workValue14)
      for numberValue17, numberValue18 in textValue8, workValue14, textValue9, workValue15 do
        if numberValue17 > 1 then
          workValue = rageUiCall4
          textValue = ", \194\163"
          workValue = workValue .. textValue
          rageUiCall4 = workValue
        end
        workValue = rageUiCall4
        textValue = getMoneyStringFormatted
        mathHelper = math
        mathHelper = mathHelper.floor
        flag4 = numberValue18
        mathHelper, flag4 = mathHelper(flag4)
        textValue = textValue(mathHelper, flag4)
        mathHelper = "k"
        workValue = workValue .. textValue .. mathHelper
        rageUiCall4 = workValue
      end
      textValue8 = RageUI
      textValue8 = textValue8.Separator
      workValue14 = "Bets: "
      textValue9 = rageUiCall4
      workValue14 = workValue14 .. textValue9
      textValue8(workValue14)
    end
  end
  function playerPed()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, flag11, workValue13, playerPed)
end
workValue2(textValue2, textValue3, rageUiCall, textValue4)
function workValue2(arg1, arg2)
  local arg3, arg4, flag11, workValue13, playerPed, position, position2, workValue18, flag, numberValue3, flag3
  arg3 = cmgCall.machineTypes
  arg4 = arg1.type
  arg3 = arg3[arg4]
  if arg3 then
    arg4 = PlaySoundFromCoord
    flag11 = -1
    workValue13 = arg2
    playerPed = arg1.position
    playerPed = playerPed.x
    position = arg1.position
    position = position.y
    position2 = arg1.position
    position2 = position2.z
    workValue18 = arg3.soundName
    flag = false
    numberValue3 = 20.0
    flag3 = false
    arg4(flag11, workValue13, playerPed, position, position2, workValue18, flag, numberValue3, flag3)
  end
end
function textValue2(arg1, arg2, arg3)
  local arg4, flag11
  arg4 = true
  flag12 = arg4
  arg4 = Citizen
  arg4 = arg4.CreateThread
  function flag11()
    local arg12, arg22, workValue8, rageUiCall4, textValue8, workValue14, textValue9, workValue15, numberValue17, numberValue18, workValue, textValue, mathHelper, flag4, numberValue6, numberValue8, numberValue10
    arg12 = 1
    arg22 = arg3
    if arg22 then
      arg22 = 4
      if arg22 then
        goto flow_label_9
      end
    end
    arg22 = 1
    ::flow_label_9::
    workValue8 = 1
    for rageUiCall4 = arg12, arg22, workValue8 do
      textValue8 = NetworkCreateSynchronisedScene
      workValue14 = arg1.x
      textValue9 = arg1.y
      workValue15 = arg1.z
      numberValue17 = 0.0
      numberValue18 = 0.0
      workValue = arg2
      textValue = 2
      mathHelper = true
      flag4 = true
      numberValue6 = 1065353216
      numberValue8 = 0
      numberValue10 = 1065353216
      textValue8 = textValue8(workValue14, textValue9, workValue15, numberValue17, numberValue18, workValue, textValue, mathHelper, flag4, numberValue6, numberValue8, numberValue10)
      workValue14 = CMG
      workValue14 = workValue14.loadAnimDict
      textValue9 = cmgCall.defaultAnimDict
      -- Beginner: Load a GTA animation dictionary before using it.
      workValue14(textValue9)
      workValue14 = NetworkAddPedToSynchronisedScene
      textValue9 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      textValue9 = textValue9()
      workValue15 = textValue8
      numberValue17 = cmgCall.defaultAnimDict
      numberValue18 = cmgCall.idleAnims
      workValue = numberValue16
      numberValue18 = numberValue18[workValue]
      workValue = 2.0
      textValue = -2.0
      mathHelper = 13
      flag4 = 16
      numberValue6 = 1148846080
      numberValue8 = 0
      workValue14(textValue9, workValue15, numberValue17, numberValue18, workValue, textValue, mathHelper, flag4, numberValue6, numberValue8)
      workValue14 = NetworkStartSynchronisedScene
      textValue9 = textValue8
      workValue14(textValue9)
      workValue14 = Wait
      textValue9 = 250
      workValue14(textValue9)
    end
    arg12 = false
    flag12 = arg12
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg4(flag11)
end
function textValue3(arg1, arg2, arg3, arg4)
  local flag11, workValue13, playerPed, position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7, numberValue9
  flag11 = NetworkCreateSynchronisedScene
  workValue13 = arg1.x
  playerPed = arg1.y
  position = arg1.z
  position2 = arg2.x
  workValue18 = arg2.y
  flag = arg2.z
  numberValue3 = 2
  flag3 = true
  mathHelper2 = true
  numberValue5 = 1065353216
  numberValue7 = 0
  numberValue9 = 1065353216
  flag11 = flag11(workValue13, playerPed, position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7, numberValue9)
  workValue13 = NetworkAddPedToSynchronisedScene
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  position = flag11
  position2 = arg3
  workValue18 = arg4
  flag = 2.0
  numberValue3 = -2.0
  flag3 = 13
  mathHelper2 = 16
  numberValue5 = 1148846080
  numberValue7 = 0
  workValue13(playerPed, position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7)
  workValue13 = NetworkStartSynchronisedScene
  playerPed = flag11
  workValue13(playerPed)
  return flag11
end
rageUiCall = RegisterNetEvent
textValue4 = "a23eeaa566"
-- Beginner: this function handles network event "a23eeaa566".
function textValue5(arg1, arg2)
  local arg3, arg4, flag11, workValue13, playerPed, position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7
  arg3 = true
  flag12 = arg3
  arg3 = tCMG
  arg3 = arg3.setCanAnim
  arg4 = false
  arg3(arg4)
  arg3 = cmgCall.locations
  arg3 = arg3[arg1]
  arg3 = arg3.machines
  arg3 = arg3[arg2]
  arg4 = cmgCall.machineTypes
  flag11 = arg3.type
  arg4 = arg4[flag11]
  flag11 = CMG
  flag11 = flag11.getModelGender
  flag11 = flag11()
  if "male" == flag11 then
    flag11 = cmgCall.defaultAnimDict
    if flag11 then
      goto flow_label_23
    end
  end
  flag11 = "anim_casino_a@amb@casino@games@slots@female"
  ::flow_label_23::
  workValue13 = cmgCall.enterAnims
  playerPed = math
  playerPed = playerPed.random
  position = 1
  position2 = cmgCall.enterAnims
  position2 = #position2
  playerPed = playerPed(position, position2)
  workValue13 = workValue13[playerPed]
  playerPed = arg3.position
  position = arg3.rotation
  position2 = CMG
  position2 = position2.loadAnimDict
  workValue18 = flag11
  -- Beginner: Load a GTA animation dictionary before using it.
  position2(workValue18)
  position2 = textValue3
  workValue18 = playerPed
  flag = position
  numberValue3 = flag11
  flag3 = workValue13
  position2 = position2(workValue18, flag, numberValue3, flag3)
  workValue18 = RemoveAnimDict
  flag = flag11
  workValue18(flag)
  workValue18 = 1
  numberValue15 = workValue18
  workValue17 = arg1
  numberValue = arg2
  workValue18 = Scaleform
  flag = "SLOT_MACHINE"
  workValue18 = workValue18(flag)
  workValue7 = workValue18
  workValue18 = workValue7.RunFunction
  flag = "SET_THEME"
  numberValue3 = {}
  flag3 = arg4.theme
  numberValue3[1] = flag3
  workValue18(flag, numberValue3)
  workValue18 = workValue7.RunFunction
  flag = "SET_MESSAGE"
  numberValue3 = {}
  flag3 = cmgCall.slotMessages
  mathHelper2 = math
  mathHelper2 = mathHelper2.random
  numberValue5 = 1
  numberValue7 = cmgCall.slotMessages
  numberValue7 = #numberValue7
  mathHelper2 = mathHelper2(numberValue5, numberValue7)
  flag3 = flag3[mathHelper2]
  numberValue3[1] = flag3
  workValue18(flag, numberValue3)
  workValue18 = workValue7.RunFunction
  flag = "SET_BET"
  numberValue3 = {}
  flag3 = arg4.betRanges
  mathHelper2 = numberValue15
  flag3 = flag3[mathHelper2]
  numberValue3[1] = flag3
  workValue18(flag, numberValue3)
  workValue18 = string
  workValue18 = workValue18.format
  flag = "machine_%s"
  numberValue3 = arg4.scriptRenderTarget
  workValue18 = workValue18(flag, numberValue3)
  workValue12 = workValue18
  workValue18 = IsNamedRendertargetRegistered
  flag = workValue12
  workValue18 = workValue18(flag)
  if not workValue18 then
    workValue18 = RegisterNamedRendertarget
    flag = workValue12
    numberValue3 = false
    workValue18(flag, numberValue3)
  end
  workValue18 = IsNamedRendertargetLinked
  flag = arg4.model
  workValue18 = workValue18(flag)
  if not workValue18 then
    workValue18 = LinkNamedRendertarget
    flag = arg4.model
    workValue18(flag)
  end
  workValue18 = IsNamedRendertargetRegistered
  flag = workValue12
  workValue18 = workValue18(flag)
  if workValue18 then
    workValue18 = GetNamedRendertargetRenderId
    flag = workValue12
    workValue18 = workValue18(flag)
    numberValue14 = workValue18
  end
  workValue18 = TriggerServerEvent
  flag = "30d25f6895"
  numberValue3 = workValue17
  flag3 = numberValue
  mathHelper2 = "welcome_stinger"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "30d25f6895".
  workValue18(flag, numberValue3, flag3, mathHelper2)
  workValue18 = Citizen
  workValue18 = workValue18.Wait
  flag = math
  flag = flag.floor
  numberValue3 = GetAnimDuration
  flag3 = flag11
  mathHelper2 = workValue13
  numberValue3 = numberValue3(flag3, mathHelper2)
  numberValue3 = numberValue3 * 1000
  flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7 = flag(numberValue3)
  workValue18(flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7)
  workValue18 = NetworkStopSynchronisedScene
  flag = position2
  workValue18(flag)
  workValue18 = false
  flag12 = workValue18
  workValue18 = math
  workValue18 = workValue18.random
  flag = 1
  numberValue3 = cmgCall.idleAnims
  numberValue3 = #numberValue3
  workValue18 = workValue18(flag, numberValue3)
  numberValue16 = workValue18
  workValue18 = textValue2
  flag = playerPed
  numberValue3 = position.z
  flag3 = true
  workValue18(flag, numberValue3, flag3)
  workValue18 = RequestScaleformMovie
  flag = "INSTRUCTIONAL_BUTTONS"
  -- Beginner: result below is scaleformHandle.
  workValue18 = workValue18(flag)
  while true do
    flag = HasScaleformMovieLoaded
    numberValue3 = workValue18
    flag = flag(numberValue3)
    if flag then
      break
    end
    flag = Citizen
    flag = flag.Wait
    numberValue3 = 0
    flag(numberValue3)
  end
  workValue16 = workValue18
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a23eeaa566".
rageUiCall(textValue4, textValue5)
rageUiCall = RegisterNetEvent
textValue4 = "3facf9a0c0"
-- Beginner: this function handles network event "3facf9a0c0".
function textValue5()
  local arg1, arg2, arg3, arg4, flag11, workValue13, playerPed, position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7, numberValue9, flag5
  arg1 = true
  flag12 = arg1
  arg1 = CMG
  arg1 = arg1.getModelGender
  arg1 = arg1()
  if "male" == arg1 then
    arg1 = cmgCall.defaultAnimDict
    if arg1 then
      goto flow_label_12
    end
  end
  arg1 = "anim_casino_a@amb@casino@games@slots@female"
  ::flow_label_12::
  arg2 = cmgCall.exitAnims
  arg3 = math
  arg3 = arg3.random
  arg4 = 1
  flag11 = cmgCall.exitAnims
  flag11 = #flag11
  arg3 = arg3(arg4, flag11)
  arg2 = arg2[arg3]
  arg3 = cmgCall.locations
  arg4 = workValue17
  arg3 = arg3[arg4]
  arg3 = arg3.machines
  arg4 = numberValue
  arg3 = arg3[arg4]
  if not arg3 then
    return
  end
  arg4 = arg3.position
  flag11 = vector3
  workValue13 = 0.0
  playerPed = 0.0
  position = arg3.heading
  flag11 = flag11(workValue13, playerPed, position)
  workValue13 = CMG
  workValue13 = workValue13.loadAnimDict
  playerPed = arg1
  -- Beginner: Load a GTA animation dictionary before using it.
  workValue13(playerPed)
  workValue13 = NetworkCreateSynchronisedScene
  playerPed = arg4.x
  position = arg4.y
  position2 = arg4.z
  workValue18 = flag11.x
  flag = flag11.y
  numberValue3 = flag11.z
  flag3 = 2
  mathHelper2 = false
  numberValue5 = false
  numberValue7 = 1065353216
  numberValue9 = 0
  flag5 = 1065353216
  workValue13 = workValue13(playerPed, position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7, numberValue9, flag5)
  playerPed = NetworkAddPedToSynchronisedScene
  position = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  position = position()
  position2 = workValue13
  workValue18 = arg1
  flag = arg2
  numberValue3 = 2.0
  flag3 = -2.0
  mathHelper2 = 13
  numberValue5 = 16
  numberValue7 = 1148846080
  numberValue9 = 0
  playerPed(position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7, numberValue9)
  playerPed = NetworkStartSynchronisedScene
  position = workValue13
  playerPed(position)
  playerPed = RemoveAnimDict
  position = arg1
  playerPed(position)
  playerPed = Citizen
  playerPed = playerPed.Wait
  position = math
  position = position.floor
  position2 = GetAnimDuration
  workValue18 = arg1
  flag = arg2
  position2 = position2(workValue18, flag)
  position2 = position2 * 1000
  position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7, numberValue9, flag5 = position(position2)
  playerPed(position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7, numberValue9, flag5)
  playerPed = NetworkStopSynchronisedScene
  position = workValue13
  playerPed(position)
  playerPed = false
  flag12 = playerPed
  playerPed = tCMG
  playerPed = playerPed.setCanAnim
  position = true
  playerPed(position)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3facf9a0c0".
rageUiCall(textValue4, textValue5)
function rageUiCall(arg1)
  local arg2, arg3, arg4, flag11, workValue13, playerPed
  arg3 = arg1.locationName
  arg2 = dataTable
  arg2 = arg2[arg3]
  arg3 = arg1.index
  arg2 = arg2[arg3]
  if not arg2 then
    arg2 = numberValue
    if 0 == arg2 then
      goto flow_label_12
    end
  end
  return
  ::flow_label_12::
  arg2 = GetFrameCount
  arg2 = arg2()
  arg3 = numberValue2
  if arg3 == arg2 then
    return
  end
  numberValue2 = arg2
  arg3 = cmgCall.machineTypes
  arg4 = arg1.config
  arg4 = arg4.type
  arg3 = arg3[arg4]
  arg4 = drawNativeNotification
  flag11 = "Press ~INPUT_CONTEXT~ to play "
  workValue13 = arg3.name
  flag11 = flag11 .. workValue13
  -- Beginner: Show a GTA-style notification/help prompt.
  arg4(flag11)
  arg4 = IsControlJustPressed
  flag11 = 0
  workValue13 = 51
  arg4 = arg4(flag11, workValue13)
  if arg4 then
    arg4 = false
    flag2 = arg4
    arg4 = TriggerServerEvent
    flag11 = "a23eeaa566"
    workValue13 = arg1.locationName
    playerPed = arg1.index
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a23eeaa566".
    arg4(flag11, workValue13, playerPed)
  end
end
function textValue4(arg1)
  local arg2, arg3, arg4, flag11, workValue13, playerPed, position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7, numberValue9
  arg2 = RequestScriptAudioBank
  arg3 = "DLC_VINEWOOD\\CASINO_SLOT_MACHINES_01"
  arg4 = false
  arg2(arg3, arg4)
  arg2 = RequestScriptAudioBank
  arg3 = "DLC_VINEWOOD\\CASINO_SLOT_MACHINES_02"
  arg4 = false
  arg2(arg3, arg4)
  arg2 = RequestScriptAudioBank
  arg3 = "DLC_VINEWOOD\\CASINO_SLOT_MACHINES_03"
  arg4 = false
  arg2(arg3, arg4)
  arg2 = TriggerServerEvent
  arg3 = "0f1e83fac2"
  arg4 = arg1.locationName
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0f1e83fac2".
  arg2(arg3, arg4)
  arg2 = pairs
  arg3 = arg1.locationConfig
  arg3 = arg3.machines
  arg2, arg3, arg4, flag11 = arg2(arg3)
  for workValue13, playerPed in arg2, arg3, arg4, flag11 do
    position = CMG
    position = position.createArea
    position2 = string
    position2 = position2.format
    workValue18 = "casinoslots_location_%s_slot_%s"
    flag = arg1.locationName
    numberValue3 = workValue13
    position2 = position2(workValue18, flag, numberValue3)
    workValue18 = playerPed.chairPosition
    flag = 1.5
    numberValue3 = 5.0
    function flag3()
      local arg12, arg22
    end
    function mathHelper2()
      local arg12, arg22
    end
    numberValue5 = rageUiCall
    numberValue7 = {}
    numberValue9 = arg1.locationName
    numberValue7.locationName = numberValue9
    numberValue7.index = workValue13
    numberValue7.config = playerPed
    numberValue7.object = 0
    -- Beginner: Create an interaction area around a world position.
    position(position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7)
  end
end
function textValue5(arg1)
  local arg2, arg3, arg4, flag11, workValue13, playerPed, position, position2, workValue18, flag
  arg2 = pairs
  arg3 = arg1.locationConfig
  arg3 = arg3.machines
  arg2, arg3, arg4, flag11 = arg2(arg3)
  for workValue13 in arg2, arg3, arg4, flag11 do
    playerPed = tCMG
    playerPed = playerPed.removeArea
    position = string
    position = position.format
    position2 = "casinoslots_location_%s_slot_%s"
    workValue18 = arg1.locationName
    flag = workValue13
    position, position2, workValue18, flag = position(position2, workValue18, flag)
    playerPed(position, position2, workValue18, flag)
  end
  arg2 = pairs
  arg4 = arg1.locationName
  arg3 = dataTable
  arg3 = arg3[arg4]
  arg2, arg3, arg4, flag11 = arg2(arg3)
  for workValue13 in arg2, arg3, arg4, flag11 do
    playerPed = TriggerEvent
    position = "f586b5b9f2"
    position2 = arg1.locationName
    workValue18 = workValue13
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "f586b5b9f2".
    playerPed(position, position2, workValue18)
  end
  arg2 = TriggerServerEvent
  arg3 = "acbad0c220"
  arg4 = arg1.locationName
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "acbad0c220".
  arg2(arg3, arg4)
end
rageUiCall2 = Citizen
rageUiCall2 = rageUiCall2.CreateThread
function rageUiCall3()
  local arg1, arg2, arg3, arg4, flag11, workValue13, playerPed, position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5
  arg1 = pairs
  arg2 = cmgCall.locations
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for flag11, workValue13 in arg1, arg2, arg3, arg4 do
    playerPed = CMG
    playerPed = playerPed.createArea
    position = string
    position = position.format
    position2 = "casinoslots_location_%s"
    workValue18 = flag11
    position = position(position2, workValue18)
    position2 = workValue13.centerPosition
    workValue18 = workValue13.eventRadius
    flag = workValue13.eventRadius
    numberValue3 = textValue4
    flag3 = textValue5
    function mathHelper2()
      local arg12, arg22
    end
    numberValue5 = {}
    numberValue5.locationName = flag11
    numberValue5.locationConfig = workValue13
    -- Beginner: Create an interaction area around a world position.
    playerPed(position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiCall2(rageUiCall3)
function rageUiCall2(arg1)
  local arg2, arg3, arg4, flag11, workValue13, playerPed, position, position2
  arg2 = arg1.objects
  if arg2 then
    arg2 = pairs
    arg3 = arg1.objects
    arg2, arg3, arg4, flag11 = arg2(arg3)
    for workValue13, playerPed in arg2, arg3, arg4, flag11 do
      position = DeleteEntity
      position2 = playerPed
      -- Beginner: Delete a GTA entity.
      position(position2)
    end
  end
end
rageUiCall3 = RegisterNetEvent
cmgCall2 = "d555389281"
-- Beginner: this function handles network event "d555389281".
function textValue6(arg1, arg2, arg3)
  local arg4, flag11, workValue13, playerPed, position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7, numberValue9, flag5, flag6, flag7, flag8
  arg4 = dataTable
  arg4 = arg4[arg1]
  arg4 = arg4[arg2]
  if arg4 then
    return
  end
  arg4 = cmgCall.locations
  arg4 = arg4[arg1]
  arg4 = arg4.machines
  arg4 = arg4[arg2]
  flag11 = cmgCall.machineTypes
  workValue13 = arg4.type
  flag11 = flag11[workValue13]
  workValue13 = {}
  playerPed = pairs
  position = arg4.reelPositions
  playerPed, position, position2, workValue18 = playerPed(position)
  for flag, numberValue3 in playerPed, position, position2, workValue18 do
    flag3 = CMG
    flag3 = flag3.loadModel
    mathHelper2 = flag11.reelA
    -- Beginner: Request/load a GTA model before spawning or applying it.
    flag3(mathHelper2)
    flag3 = CreateObjectNoOffset
    mathHelper2 = flag11.reelA
    numberValue5 = numberValue3.x
    numberValue7 = numberValue3.y
    numberValue9 = numberValue3.z
    flag5 = false
    flag6 = false
    flag7 = false
    -- Beginner: result below is objectEntity.
    flag3 = flag3(mathHelper2, numberValue5, numberValue7, numberValue9, flag5, flag6, flag7)
    mathHelper2 = SetModelAsNoLongerNeeded
    numberValue5 = flag11.reelA
    mathHelper2(numberValue5)
    mathHelper2 = FreezeEntityPosition
    numberValue5 = flag3
    numberValue7 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    mathHelper2(numberValue5, numberValue7)
    mathHelper2 = arg3.reelRotations
    mathHelper2 = mathHelper2[flag]
    numberValue5 = SetEntityRotation
    numberValue7 = flag3
    numberValue9 = mathHelper2.x
    flag5 = mathHelper2.y
    flag6 = mathHelper2.z
    flag7 = 2
    flag8 = false
    numberValue5(numberValue7, numberValue9, flag5, flag6, flag7, flag8)
    numberValue5 = table
    numberValue5 = numberValue5.insert
    numberValue7 = workValue13
    numberValue9 = flag3
    numberValue5(numberValue7, numberValue9)
  end
  playerPed = dataTable
  playerPed = playerPed[arg1]
  playerPed = playerPed[arg2]
  if playerPed then
    playerPed = rageUiCall2
    position = dataTable
    position = position[arg1]
    position = position[arg2]
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    playerPed(position)
  end
  arg3.objects = workValue13
  playerPed = dataTable
  playerPed = playerPed[arg1]
  playerPed[arg2] = arg3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d555389281".
rageUiCall3(cmgCall2, textValue6)
function rageUiCall3()
  local arg1, arg2, arg3, arg4
  arg1 = workValue7
  if arg1 then
    arg1 = workValue7.RunFunction
    arg2 = "SET_BET"
    arg3 = {}
    arg1(arg2, arg3)
    arg1 = workValue7.RunFunction
    arg2 = "SET_LAST_WIN"
    arg3 = {}
    arg1(arg2, arg3)
    arg1 = workValue7.RunFunction
    arg2 = "SET_MESSAGE"
    arg3 = {}
    arg4 = ""
    arg3[1] = arg4
    arg1(arg2, arg3)
    arg1 = SetScaleformMovieAsNoLongerNeeded
    arg2 = workValue7.Handle
    arg1(arg2)
  end
  arg1 = SetScaleformMovieAsNoLongerNeeded
  arg2 = workValue16
  arg1(arg2)
  arg1 = ReleaseNamedRendertarget
  arg2 = workValue12
  arg1(arg2)
  arg1 = nil
  workValue7 = arg1
  arg1 = nil
  workValue16 = arg1
  arg1 = 0
  numberValue14 = arg1
  arg1 = nil
  workValue12 = arg1
  arg1 = 0
  numberValue = arg1
  arg1 = nil
  workValue17 = arg1
  arg1 = false
  flag2 = arg1
end
cmgCall2 = RegisterNetEvent
textValue6 = "f586b5b9f2"
-- Beginner: this function handles network event "f586b5b9f2".
function workValue3(arg1, arg2)
  local arg3, arg4, flag11
  arg3 = dataTable
  arg3 = arg3[arg1]
  arg3 = arg3[arg2]
  if not arg3 then
    return
  end
  arg4 = rageUiCall2
  flag11 = arg3
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg4(flag11)
  arg4 = arg3.playerSrc
  flag11 = CMG
  flag11 = flag11.getLocalPlayerSrc
  flag11 = flag11()
  if arg4 == flag11 then
    arg4 = rageUiCall3
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    arg4()
  end
  arg4 = dataTable
  arg4 = arg4[arg1]
  arg4[arg2] = nil
end
cmgCall2(textValue6, workValue3)
cmgCall2 = tCMG
function textValue6()
  local arg1, arg2, arg3, arg4, flag11, workValue13, playerPed, position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5
  arg1 = cmgCall.locations
  arg2 = workValue17
  arg1 = arg1[arg2]
  arg1 = arg1.machines
  arg2 = numberValue
  arg1 = arg1[arg2]
  if not arg1 then
    return
  end
  arg2 = true
  flag12 = arg2
  arg2 = CMG
  arg2 = arg2.loadAnimDict
  arg3 = cmgCall.defaultAnimDict
  -- Beginner: Load a GTA animation dictionary before using it.
  arg2(arg3)
  arg2 = cmgCall.pullLeverAnims
  arg3 = math
  arg3 = arg3.random
  arg4 = 1
  flag11 = cmgCall.pullLeverAnims
  flag11 = #flag11
  arg3 = arg3(arg4, flag11)
  arg2 = arg2[arg3]
  arg3 = TaskPlayAnim
  arg4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  flag11 = cmgCall.defaultAnimDict
  workValue13 = arg2[1]
  playerPed = 3.0
  position = 11.0
  position2 = -1
  workValue18 = 48
  flag = 0
  numberValue3 = false
  flag3 = false
  mathHelper2 = false
  -- Beginner: Play an animation on a ped.
  arg3(arg4, flag11, workValue13, playerPed, position, position2, workValue18, flag, numberValue3, flag3, mathHelper2)
  arg3 = GetAnimDuration
  arg4 = cmgCall.defaultAnimDict
  flag11 = arg2[1]
  arg3 = arg3(arg4, flag11)
  arg4 = arg2[2]
  if arg4 then
    arg4 = cmgCall.machineTypes
    flag11 = arg1.type
    arg4 = arg4[flag11]
    flag11 = GetClosestObjectOfType
    workValue13 = arg1.position
    workValue13 = workValue13.x
    playerPed = arg1.position
    playerPed = playerPed.y
    position = arg1.position
    position = position.z
    position2 = 1.0
    workValue18 = arg4.model
    flag = false
    numberValue3 = false
    flag3 = false
    -- Beginner: result below is objectEntity.
    flag11 = flag11(workValue13, playerPed, position, position2, workValue18, flag, numberValue3, flag3)
    workValue13 = PlayEntityAnim
    playerPed = flag11
    position = arg2[2]
    position2 = cmgCall.defaultAnimDict
    workValue18 = 1000.0
    flag = false
    numberValue3 = true
    flag3 = true
    mathHelper2 = 0
    numberValue5 = 136704
    workValue13(playerPed, position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5)
    workValue13 = Citizen
    workValue13 = workValue13.Wait
    playerPed = arg3 * 320
    workValue13(playerPed)
  end
  arg4 = Citizen
  arg4 = arg4.Wait
  flag11 = arg3 * 180
  arg4(flag11)
  arg4 = RemoveAnimDict
  flag11 = cmgCall.defaultAnimDict
  arg4(flag11)
  arg4 = false
  flag12 = arg4
end
cmgCall2.playCasinoSlotMachineAnim = textValue6
cmgCall2 = RegisterNetEvent
textValue6 = "fe417ebf1e"
-- Beginner: this function handles network event "fe417ebf1e".
function workValue3(arg1, arg2, arg3, arg4)
  local flag11, workValue13, playerPed, position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7, numberValue9, flag5, flag6, flag7, flag8, mathHelper3, mathHelper4, numberValue11, numberValue12, flag9
  flag11 = dataTable
  flag11 = flag11[arg1]
  flag11 = flag11[arg2]
  if not flag11 then
    return
  end
  workValue13 = cmgCall.locations
  workValue13 = workValue13[arg1]
  workValue13 = workValue13.machines
  workValue13 = workValue13[arg2]
  playerPed = cmgCall.machineTypes
  position = workValue13.type
  playerPed = playerPed[position]
  position = workValue2
  position2 = workValue13
  workValue18 = "start_spin"
  position(position2, workValue18)
  position = {}
  position2 = pairs
  workValue18 = flag11.objects
  position2, workValue18, flag, numberValue3 = position2(workValue18)
  for flag3, mathHelper2 in position2, workValue18, flag, numberValue3 do
    numberValue5 = SetEntityVisible
    numberValue7 = mathHelper2
    numberValue9 = false
    flag5 = false
    numberValue5(numberValue7, numberValue9, flag5)
    numberValue5 = CMG
    numberValue5 = numberValue5.loadModel
    numberValue7 = playerPed.reelB
    -- Beginner: Request/load a GTA model before spawning or applying it.
    numberValue5(numberValue7)
    numberValue5 = GetEntityCoords
    numberValue7 = mathHelper2
    numberValue9 = true
    -- Beginner: result below is entityCoords.
    numberValue5 = numberValue5(numberValue7, numberValue9)
    numberValue7 = CreateObjectNoOffset
    numberValue9 = playerPed.reelB
    flag5 = numberValue5.x
    flag6 = numberValue5.y
    flag7 = numberValue5.z
    flag8 = false
    mathHelper3 = false
    mathHelper4 = false
    -- Beginner: result below is objectEntity.
    numberValue7 = numberValue7(numberValue9, flag5, flag6, flag7, flag8, mathHelper3, mathHelper4)
    numberValue9 = SetModelAsNoLongerNeeded
    flag5 = playerPed.reelB
    numberValue9(flag5)
    numberValue9 = FreezeEntityPosition
    flag5 = numberValue7
    flag6 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    numberValue9(flag5, flag6)
    numberValue9 = SetEntityRotation
    flag5 = numberValue7
    flag6 = 0.0
    flag7 = 0.0
    flag8 = workValue13.heading
    mathHelper3 = 2
    mathHelper4 = false
    numberValue9(flag5, flag6, flag7, flag8, mathHelper3, mathHelper4)
    numberValue9 = table
    numberValue9 = numberValue9.insert
    flag5 = position
    flag6 = numberValue7
    numberValue9(flag5, flag6)
  end
  position2 = workValue2
  workValue18 = workValue13
  flag = "spinning"
  position2(workValue18, flag)
  position2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  position2 = position2()
  workValue18 = pairs
  flag = arg3
  workValue18, flag, numberValue3, flag3 = workValue18(flag)
  for mathHelper2, numberValue5 in workValue18, flag, numberValue3, flag3 do
    while true do
      numberValue7 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      numberValue7 = numberValue7()
      numberValue7 = numberValue7 - position2
      if not (numberValue5 > numberValue7) then
        break
      end
      numberValue7 = mathHelper2
      numberValue9 = 3
      flag5 = 1
      for flag6 = numberValue7, numberValue9, flag5 do
        flag7 = SetEntityRotation
        flag8 = position[flag6]
        mathHelper3 = math
        mathHelper3 = mathHelper3.random
        mathHelper4 = 0
        numberValue11 = 15
        mathHelper3 = mathHelper3(mathHelper4, numberValue11)
        mathHelper3 = mathHelper3 * 22.5
        mathHelper4 = math
        mathHelper4 = mathHelper4.random
        numberValue11 = 1
        numberValue12 = 60
        mathHelper4 = mathHelper4(numberValue11, numberValue12)
        mathHelper3 = mathHelper3 + mathHelper4
        mathHelper4 = 0.0
        numberValue11 = workValue13.heading
        numberValue12 = 2
        flag9 = true
        flag7(flag8, mathHelper3, mathHelper4, numberValue11, numberValue12, flag9)
      end
      numberValue7 = Citizen
      numberValue7 = numberValue7.Wait
      numberValue9 = 0
      numberValue7(numberValue9)
    end
    numberValue7 = SetEntityVisible
    numberValue9 = position[mathHelper2]
    flag5 = false
    flag6 = false
    numberValue7(numberValue9, flag5, flag6)
    numberValue7 = DeleteEntity
    numberValue9 = position[mathHelper2]
    -- Beginner: Delete a GTA entity.
    numberValue7(numberValue9)
    numberValue7 = SetEntityVisible
    numberValue9 = flag11.objects
    numberValue9 = numberValue9[mathHelper2]
    flag5 = true
    flag6 = true
    numberValue7(numberValue9, flag5, flag6)
    numberValue7 = SetEntityRotation
    numberValue9 = flag11.objects
    numberValue9 = numberValue9[mathHelper2]
    flag5 = arg4[mathHelper2]
    flag5 = flag5 * 22.5
    flag6 = 0.0
    flag7 = workValue13.heading
    flag8 = 2
    mathHelper3 = true
    numberValue7(numberValue9, flag5, flag6, flag7, flag8, mathHelper3)
    numberValue7 = arg4[mathHelper2]
    numberValue9 = math
    numberValue9 = numberValue9.floor
    flag5 = arg4[mathHelper2]
    numberValue9 = numberValue9(flag5)
    if numberValue7 == numberValue9 then
      numberValue7 = workValue2
      numberValue9 = workValue13
      flag5 = "wheel_stop_clunk"
      numberValue7(numberValue9, flag5)
    else
      numberValue7 = workValue2
      numberValue9 = workValue13
      flag5 = "wheel_stop_on_prize"
      numberValue7(numberValue9, flag5)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fe417ebf1e".
cmgCall2(textValue6, workValue3)
cmgCall2 = RegisterNetEvent
textValue6 = "a3c45ed113"
-- Beginner: this function handles network event "a3c45ed113".
function workValue3(arg1, arg2, arg3)
  local arg4, flag11, workValue13, playerPed, position
  if 0 == arg3 then
    arg4 = notify
    flag11 = "~r~You lost \194\163"
    workValue13 = getMoneyStringFormatted
    playerPed = arg2
    workValue13 = workValue13(playerPed)
    flag11 = flag11 .. workValue13
    -- Beginner: Show a notification to the player.
    arg4(flag11)
  else
    arg4 = notify
    flag11 = "~g~You won \194\163"
    workValue13 = getMoneyStringFormatted
    playerPed = arg3
    workValue13 = workValue13(playerPed)
    flag11 = flag11 .. workValue13
    arg4(flag11)
  end
  arg4 = workValue7
  if arg4 and arg3 > 0 then
    arg4 = workValue7.RunFunction
    flag11 = "SET_LAST_WIN"
    workValue13 = {}
    playerPed = math
    playerPed = playerPed.floor
    position = arg3
    playerPed, position = playerPed(position)
    workValue13[1] = playerPed
    workValue13[2] = position
    arg4(flag11, workValue13)
  end
  arg4 = cmgCall.locations
  arg4 = arg4[arg1]
  arg4 = arg4.machines
  flag11 = numberValue
  arg4 = arg4[flag11]
  if arg4 then
    flag11 = textValue2
    workValue13 = arg4.position
    playerPed = arg4.heading
    position = false
    flag11(workValue13, playerPed, position)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a3c45ed113".
cmgCall2(textValue6, workValue3)
cmgCall2 = RegisterNetEvent
textValue6 = "30d25f6895"
-- Beginner: this function handles network event "30d25f6895".
function workValue3(arg1, arg2, arg3)
  local arg4, flag11, workValue13, playerPed
  arg4 = cmgCall.locations
  arg4 = arg4[arg1]
  arg4 = arg4.machines
  arg4 = arg4[arg2]
  if arg4 then
    flag11 = workValue2
    workValue13 = arg4
    playerPed = arg3
    flag11(workValue13, playerPed)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "30d25f6895".
cmgCall2(textValue6, workValue3)
cmgCall2 = AddEventHandler
textValue6 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.
function workValue3(arg1)
  local arg2, arg3, arg4, flag11, workValue13, playerPed, position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg2 == arg1 then
    arg2 = pairs
    arg3 = dataTable
    arg2, arg3, arg4, flag11 = arg2(arg3)
    for workValue13, playerPed in arg2, arg3, arg4, flag11 do
      position = pairs
      position2 = playerPed
      position, position2, workValue18, flag = position(position2)
      for numberValue3 in position, position2, workValue18, flag do
        flag3 = TriggerEvent
        mathHelper2 = "f586b5b9f2"
        numberValue5 = workValue13
        numberValue7 = numberValue3
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "f586b5b9f2".
        flag3(mathHelper2, numberValue5, numberValue7)
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgCall2(textValue6, workValue3)
function cmgCall2()
  local arg1, arg2, arg3, arg4, flag11, workValue13, playerPed, position, position2, workValue18, flag
  arg1 = workValue7
  if arg1 then
    arg1 = RageUI
    arg1 = arg1.IsAnyMenuVisible
    arg1 = arg1()
    if not arg1 then
      arg1 = N_0x32f34ff7f617643b
      arg2 = workValue7.Handle
      arg3 = 1
      arg1(arg2, arg3)
      arg1 = SetTextRenderId
      arg2 = numberValue14
      arg1(arg2)
      arg1 = SetScriptGfxDrawOrder
      arg2 = 4
      arg1(arg2)
      arg1 = SetScriptGfxDrawBehindPausemenu
      arg2 = true
      arg1(arg2)
      arg1 = DrawScaleformMovie
      arg2 = workValue7.Handle
      arg3 = 0.401
      arg4 = 0.09
      flag11 = 0.805
      workValue13 = 0.195
      playerPed = 255
      position = 255
      position2 = 255
      workValue18 = 255
      flag = 0
      arg1(arg2, arg3, arg4, flag11, workValue13, playerPed, position, position2, workValue18, flag)
      arg1 = SetTextRenderId
      arg2 = GetDefaultScriptRendertargetRenderId
      arg2, arg3, arg4, flag11, workValue13, playerPed, position, position2, workValue18, flag = arg2()
      arg1(arg2, arg3, arg4, flag11, workValue13, playerPed, position, position2, workValue18, flag)
      arg1 = SetScriptGfxDrawBehindPausemenu
      arg2 = false
      arg1(arg2)
    end
  end
end
function textValue6(arg1)
  local arg2, arg3
  arg2 = BeginTextCommandScaleformString
  arg3 = "STRING"
  arg2(arg3)
  arg2 = AddTextComponentSubstringKeyboardDisplay
  arg3 = arg1
  arg2(arg3)
  arg2 = EndTextCommandScaleformString
  arg2()
end
function workValue3(arg1)
  local arg2, arg3
  arg2 = _ENV
  arg3 = "ScaleformMovieMethodAddParamPlayerNameString"
  arg2 = arg2[arg3]
  arg3 = arg1
  arg2(arg3)
end
function workValue4()
  local arg1, arg2, arg3, arg4, flag11, workValue13, playerPed
  arg1 = workValue16
  if arg1 then
    arg1 = RageUI
    arg1 = arg1.IsAnyMenuVisible
    arg1 = arg1()
    if not arg1 then
      arg1 = BeginScaleformMovieMethod
      arg2 = workValue16
      arg3 = "CLEAR_ALL"
      arg1(arg2, arg3)
      arg1 = EndScaleformMovieMethod
      arg1()
      arg1 = BeginScaleformMovieMethod
      arg2 = workValue16
      arg3 = "SET_CLEAR_SPACE"
      arg1(arg2, arg3)
      arg1 = ScaleformMovieMethodAddParamInt
      arg2 = 200
      arg1(arg2)
      arg1 = EndScaleformMovieMethod
      arg1()
      arg1 = BeginScaleformMovieMethod
      arg2 = workValue16
      arg3 = "SET_DATA_SLOT"
      arg1(arg2, arg3)
      arg1 = ScaleformMovieMethodAddParamInt
      arg2 = 0
      arg1(arg2)
      arg1 = workValue3
      arg2 = GetControlInstructionalButton
      arg3 = 0
      arg4 = 202
      flag11 = true
      arg2, arg3, arg4, flag11, workValue13, playerPed = arg2(arg3, arg4, flag11)
      arg1(arg2, arg3, arg4, flag11, workValue13, playerPed)
      arg1 = textValue6
      arg2 = "Exit"
      arg1(arg2)
      arg1 = EndScaleformMovieMethod
      arg1()
      arg1 = BeginScaleformMovieMethod
      arg2 = workValue16
      arg3 = "SET_DATA_SLOT"
      arg1(arg2, arg3)
      arg1 = ScaleformMovieMethodAddParamInt
      arg2 = 1
      arg1(arg2)
      arg1 = workValue3
      arg2 = GetControlInstructionalButton
      arg3 = 0
      arg4 = 201
      flag11 = true
      arg2, arg3, arg4, flag11, workValue13, playerPed = arg2(arg3, arg4, flag11)
      arg1(arg2, arg3, arg4, flag11, workValue13, playerPed)
      arg1 = textValue6
      arg2 = "Spin"
      arg1(arg2)
      arg1 = EndScaleformMovieMethod
      arg1()
      arg1 = BeginScaleformMovieMethod
      arg2 = workValue16
      arg3 = "SET_DATA_SLOT"
      arg1(arg2, arg3)
      arg1 = ScaleformMovieMethodAddParamInt
      arg2 = 2
      arg1(arg2)
      arg1 = workValue3
      arg2 = GetControlInstructionalButton
      arg3 = 0
      arg4 = 121
      flag11 = true
      arg2, arg3, arg4, flag11, workValue13, playerPed = arg2(arg3, arg4, flag11)
      arg1(arg2, arg3, arg4, flag11, workValue13, playerPed)
      arg1 = textValue6
      arg2 = "Toggle AutoSpin"
      arg1(arg2)
      arg1 = EndScaleformMovieMethod
      arg1()
      arg1 = BeginScaleformMovieMethod
      arg2 = workValue16
      arg3 = "SET_DATA_SLOT"
      arg1(arg2, arg3)
      arg1 = ScaleformMovieMethodAddParamInt
      arg2 = 3
      arg1(arg2)
      arg1 = workValue3
      arg2 = GetControlInstructionalButton
      arg3 = 0
      arg4 = 44
      flag11 = true
      arg2, arg3, arg4, flag11, workValue13, playerPed = arg2(arg3, arg4, flag11)
      arg1(arg2, arg3, arg4, flag11, workValue13, playerPed)
      arg1 = textValue6
      arg2 = "Decrease Bet"
      arg1(arg2)
      arg1 = EndScaleformMovieMethod
      arg1()
      arg1 = BeginScaleformMovieMethod
      arg2 = workValue16
      arg3 = "SET_DATA_SLOT"
      arg1(arg2, arg3)
      arg1 = ScaleformMovieMethodAddParamInt
      arg2 = 4
      arg1(arg2)
      arg1 = workValue3
      arg2 = GetControlInstructionalButton
      arg3 = 0
      arg4 = 38
      flag11 = true
      arg2, arg3, arg4, flag11, workValue13, playerPed = arg2(arg3, arg4, flag11)
      arg1(arg2, arg3, arg4, flag11, workValue13, playerPed)
      arg1 = textValue6
      arg2 = "Increase Bet"
      arg1(arg2)
      arg1 = EndScaleformMovieMethod
      arg1()
      arg1 = BeginScaleformMovieMethod
      arg2 = workValue16
      arg3 = "SET_DATA_SLOT"
      arg1(arg2, arg3)
      arg1 = ScaleformMovieMethodAddParamInt
      arg2 = 5
      arg1(arg2)
      arg1 = workValue3
      arg2 = GetControlInstructionalButton
      arg3 = 0
      arg4 = 224
      flag11 = true
      arg2, arg3, arg4, flag11, workValue13, playerPed = arg2(arg3, arg4, flag11)
      arg1(arg2, arg3, arg4, flag11, workValue13, playerPed)
      arg1 = textValue6
      arg2 = "View Instructions"
      arg1(arg2)
      arg1 = EndScaleformMovieMethod
      arg1()
      arg1 = BeginScaleformMovieMethod
      arg2 = workValue16
      arg3 = "DRAW_INSTRUCTIONAL_BUTTONS"
      arg1(arg2, arg3)
      arg1 = EndScaleformMovieMethod
      arg1()
      arg1 = BeginScaleformMovieMethod
      arg2 = workValue16
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
      arg1 = DrawScaleformMovieFullscreen
      arg2 = workValue16
      arg3 = 255
      arg4 = 255
      flag11 = 255
      workValue13 = 255
      playerPed = 0
      arg1(arg2, arg3, arg4, flag11, workValue13, playerPed)
    end
  end
end
function workValue5()
  local arg1, arg2, arg3, arg4, flag11, workValue13, playerPed, position
  arg1 = cmgCall2
  -- Beginner: Register a client-side event handler.
  arg1()
  arg1 = Citizen
  arg1 = arg1.InvokeNative
  arg2 = 104270002799462160
  arg3 = 518572876
  arg1(arg2, arg3)
  arg1 = IsControlJustPressed
  arg2 = 0
  arg3 = 121
  arg1 = arg1(arg2, arg3)
  if arg1 then
    arg1 = flag2
    arg1 = not arg1
    flag2 = arg1
    arg1 = notify
    arg2 = flag2
    if arg2 then
      arg2 = "~g~"
      if arg2 then
        goto flow_label_25
      end
    end
    arg2 = "~r~"
    ::flow_label_25::
    arg3 = "Automatic spinning "
    arg4 = flag2
    if arg4 then
      arg4 = "enabled"
      if arg4 then
        goto flow_label_33
      end
    end
    arg4 = "disabled"
    ::flow_label_33::
    arg2 = arg2 .. arg3 .. arg4
    -- Beginner: Show a notification to the player.
    arg1(arg2)
  end
  arg1 = flag2
  if arg1 then
    arg1 = drawNativeNotification
    arg2 = [[
Automatic spinning is enabled.
Press ~INPUT_VEH_FLY_ATTACK_CAMERA~ to stop.]]
    -- Beginner: Show a GTA-style notification/help prompt.
    arg1(arg2)
  end
  arg1 = flag12
  if arg1 then
    return
  end
  arg1 = cmgCall.locations
  arg2 = workValue17
  arg1 = arg1[arg2]
  arg1 = arg1.machines
  arg2 = numberValue
  arg1 = arg1[arg2]
  arg2 = cmgCall.machineTypes
  arg3 = arg1.type
  arg2 = arg2[arg3]
  arg3 = workValue4
  arg3()
  arg3 = IsControlJustPressed
  arg4 = 0
  flag11 = 202
  arg3 = arg3(arg4, flag11)
  if arg3 then
    arg3 = TriggerServerEvent
    arg4 = "3facf9a0c0"
    flag11 = workValue17
    workValue13 = numberValue
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3facf9a0c0".
    arg3(arg4, flag11, workValue13)
  end
  arg3 = false
  arg4 = flag2
  if arg4 then
    arg4 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg4 = arg4()
    flag11 = numberValue4
    arg4 = arg4 - flag11
    flag11 = 1000
    if arg4 > flag11 then
      arg4 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg4 = arg4()
      numberValue4 = arg4
      arg3 = true
    end
  end
  arg4 = IsControlJustPressed
  flag11 = 0
  workValue13 = 201
  arg4 = arg4(flag11, workValue13)
  if arg4 or arg3 then
    arg4 = TriggerServerEvent
    flag11 = "fe417ebf1e"
    workValue13 = workValue17
    playerPed = numberValue
    position = numberValue15
    arg4(flag11, workValue13, playerPed, position)
  end
  arg4 = IsControlJustPressed
  flag11 = 0
  workValue13 = 38
  arg4 = arg4(flag11, workValue13)
  if arg4 then
    arg4 = numberValue15
    flag11 = arg2.betRanges
    flag11 = #flag11
    if arg4 < flag11 then
      arg4 = numberValue15
      arg4 = arg4 + 1
      numberValue15 = arg4
      arg4 = workValue7
      if arg4 then
        arg4 = workValue7.RunFunction
        flag11 = "SET_BET"
        workValue13 = {}
        playerPed = arg2.betRanges
        position = numberValue15
        playerPed = playerPed[position]
        workValue13[1] = playerPed
        arg4(flag11, workValue13)
      end
    end
    arg4 = numberValue15
    flag11 = arg2.betRanges
    flag11 = #flag11
    if arg4 == flag11 then
      arg4 = TriggerServerEvent
      flag11 = "30d25f6895"
      workValue13 = workValue17
      playerPed = numberValue
      position = "place_max_bet"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "30d25f6895".
      arg4(flag11, workValue13, playerPed, position)
    else
      arg4 = TriggerServerEvent
      flag11 = "30d25f6895"
      workValue13 = workValue17
      playerPed = numberValue
      position = "place_bet"
      arg4(flag11, workValue13, playerPed, position)
    end
  end
  arg4 = IsControlJustPressed
  flag11 = 0
  workValue13 = 44
  arg4 = arg4(flag11, workValue13)
  if arg4 then
    arg4 = numberValue15
    if arg4 > 1 then
      arg4 = numberValue15
      arg4 = arg4 - 1
      numberValue15 = arg4
      arg4 = workValue7
      if arg4 then
        arg4 = workValue7.RunFunction
        flag11 = "SET_BET"
        workValue13 = {}
        playerPed = arg2.betRanges
        position = numberValue15
        playerPed = playerPed[position]
        workValue13[1] = playerPed
        arg4(flag11, workValue13)
      end
      arg4 = TriggerServerEvent
      flag11 = "30d25f6895"
      workValue13 = workValue17
      playerPed = numberValue
      position = "place_bet"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "30d25f6895".
      arg4(flag11, workValue13, playerPed, position)
    end
  end
  arg4 = IsControlJustPressed
  flag11 = 0
  workValue13 = 224
  arg4 = arg4(flag11, workValue13)
  if arg4 then
    arg4 = RMenu
    flag11 = arg4
    arg4 = arg4.Get
    workValue13 = "cmgslots"
    playerPed = "instructions"
    -- Beginner: result below is menu.
    arg4 = arg4(flag11, workValue13, playerPed)
    if arg4 then
      workValue13 = arg4
      flag11 = arg4.SetSpriteBanner
      playerPed = arg2.textureName
      position = arg2.textureName
      flag11(workValue13, playerPed, position)
      flag11 = RageUI
      flag11 = flag11.Visible
      workValue13 = arg4
      playerPed = RageUI
      playerPed = playerPed.Visible
      position = arg4
      -- Beginner: result below is menuVisible.
      playerPed = playerPed(position)
      playerPed = not playerPed
      flag11(workValue13, playerPed)
    end
  end
end
function workValue6()
  local arg1, arg2
  arg1 = workValue17
  if arg1 then
    arg1 = numberValue
    if 0 ~= arg1 then
      arg2 = workValue17
      arg1 = dataTable
      arg1 = arg1[arg2]
      arg2 = numberValue
      arg1 = arg1[arg2]
      if arg1 then
        arg2 = workValue5
        arg2()
      end
    end
  end
end
cmgCall3 = CMG
cmgCall3 = cmgCall3.createThreadOnTick
numberValue13 = workValue6
textValue7 = "Casino Slots Tick"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall3(numberValue13, textValue7)
cmgCall3 = {}
numberValue13 = -1932041857
cmgCall3[numberValue13] = "AngelAndTheKnight"
numberValue13 = -1519644200
cmgCall3[numberValue13] = "ImpotentRage"
numberValue13 = -430989390
cmgCall3[numberValue13] = "RepublicanSpaceRangers"
numberValue13 = 654385216
cmgCall3[numberValue13] = "FameOrShame"
numberValue13 = 161343630
cmgCall3[numberValue13] = "DeityOfTheSun"
numberValue13 = 1096374064
cmgCall3[numberValue13] = "KnifeAfterDark"
numberValue13 = 207578973
cmgCall3[numberValue13] = "TheDiamond"
numberValue13 = -487222358
cmgCall3[numberValue13] = "Evacuator"
numberValue13 = CMG
numberValue13 = numberValue13.registerCommand
textValue7 = "saveslotmachines"
function workValue9()
  local arg1, arg2, arg3, arg4, flag11, workValue13, playerPed, position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7, numberValue9, flag5, flag6, flag7, flag8, mathHelper3, mathHelper4, numberValue11, numberValue12
  arg1 = CMG
  arg1 = arg1.isDevMode
  arg1 = arg1()
  if not arg1 then
    return
  end
  arg1 = vector3
  arg2 = 0.0
  arg3 = 0.0
  arg4 = 0.0
  arg1 = arg1(arg2, arg3, arg4)
  arg2 = {}
  arg3 = pairs
  arg4 = GetGamePool
  flag11 = "CObject"
  arg4, flag11, workValue13, playerPed, position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7, numberValue9, flag5, flag6, flag7, flag8, mathHelper3, mathHelper4, numberValue11, numberValue12 = arg4(flag11)
  arg3, arg4, flag11, workValue13 = arg3(arg4, flag11, workValue13, playerPed, position, position2, workValue18, flag, numberValue3, flag3, mathHelper2, numberValue5, numberValue7, numberValue9, flag5, flag6, flag7, flag8, mathHelper3, mathHelper4, numberValue11, numberValue12)
  for playerPed, position in arg3, arg4, flag11, workValue13 do
    position2 = GetEntityModel
    workValue18 = position
    -- Beginner: result below is modelHash.
    position2 = position2(workValue18)
    workValue18 = cmgCall3
    workValue18 = workValue18[position2]
    if workValue18 then
      workValue18 = table
      workValue18 = workValue18.insert
      flag = arg2
      numberValue3 = {}
      flag3 = position
      mathHelper2 = position2
      numberValue5 = GetEntityCoords
      numberValue7 = position
      numberValue9 = true
      numberValue5, numberValue7, numberValue9, flag5, flag6, flag7, flag8, mathHelper3, mathHelper4, numberValue11, numberValue12 = numberValue5(numberValue7, numberValue9)
      numberValue3[1] = flag3
      numberValue3[2] = mathHelper2
      numberValue3[3] = numberValue5
      numberValue3[4] = numberValue7
      numberValue3[5] = numberValue9
      numberValue3[6] = flag5
      numberValue3[7] = flag6
      numberValue3[8] = flag7
      numberValue3[9] = flag8
      numberValue3[10] = mathHelper3
      numberValue3[11] = mathHelper4
      numberValue3[12] = numberValue11
      numberValue3[13] = numberValue12
      workValue18(flag, numberValue3)
    end
  end
  arg3 = table
  arg3 = arg3.sort
  arg4 = arg2
  function flag11(arg12, arg22)
    local workValue8, rageUiCall4, textValue8
    workValue8 = arg12[3]
    rageUiCall4 = arg1
    workValue8 = workValue8 - rageUiCall4
    workValue8 = #workValue8
    rageUiCall4 = arg22[3]
    textValue8 = arg1
    rageUiCall4 = rageUiCall4 - textValue8
    rageUiCall4 = #rageUiCall4
    workValue8 = workValue8 < rageUiCall4
    return workValue8
  end
  arg3(arg4, flag11)
  arg3 = ""
  arg4 = pairs
  flag11 = arg2
  arg4, flag11, workValue13, playerPed = arg4(flag11)
  for position, position2 in arg4, flag11, workValue13, playerPed do
    workValue18 = table
    workValue18 = workValue18.unpack
    flag = position2
    workValue18, flag, numberValue3 = workValue18(flag)
    flag3 = GetEntityMatrix
    mathHelper2 = workValue18
    flag3, mathHelper2 = flag3(mathHelper2)
    numberValue5 = flag3 * 0.042
    numberValue7 = vector3
    numberValue9 = numberValue3.x
    flag5 = numberValue3.y
    flag6 = numberValue3.z
    flag6 = flag6 + 1.106
    numberValue7 = numberValue7(numberValue9, flag5, flag6)
    numberValue7 = numberValue7 + numberValue5
    numberValue9 = mathHelper2 * -0.115
    numberValue7 = numberValue7 + numberValue9
    numberValue9 = vector3
    flag5 = numberValue3.x
    flag6 = numberValue3.y
    flag7 = numberValue3.z
    flag7 = flag7 + 1.106
    numberValue9 = numberValue9(flag5, flag6, flag7)
    numberValue9 = numberValue9 + numberValue5
    flag5 = mathHelper2 * 0.005
    numberValue9 = numberValue9 + flag5
    flag5 = vector3
    flag6 = numberValue3.x
    flag7 = numberValue3.y
    flag8 = numberValue3.z
    flag8 = flag8 + 1.106
    flag5 = flag5(flag6, flag7, flag8)
    flag5 = flag5 + numberValue5
    flag6 = mathHelper2 * 0.125
    flag5 = flag5 + flag6
    flag6 = flag3 * 0.8
    flag6 = numberValue3 - flag6
    flag7 = arg3
    flag8 = [[
{
	]]
    flag7 = flag7 .. flag8
    arg3 = flag7
    flag7 = arg3
    flag8 = "type = \""
    mathHelper3 = cmgCall3
    mathHelper3 = mathHelper3[flag]
    mathHelper4 = [[
",
	]]
    flag7 = flag7 .. flag8 .. mathHelper3 .. mathHelper4
    arg3 = flag7
    flag7 = arg3
    flag8 = "position = "
    mathHelper3 = tostring
    mathHelper4 = numberValue3
    mathHelper3 = mathHelper3(mathHelper4)
    mathHelper4 = [[
,
	]]
    flag7 = flag7 .. flag8 .. mathHelper3 .. mathHelper4
    arg3 = flag7
    flag7 = arg3
    flag8 = "chairPosition = "
    mathHelper3 = tostring
    mathHelper4 = flag6
    mathHelper3 = mathHelper3(mathHelper4)
    mathHelper4 = [[
,
	]]
    flag7 = flag7 .. flag8 .. mathHelper3 .. mathHelper4
    arg3 = flag7
    flag7 = arg3
    flag8 = "heading = "
    mathHelper3 = tostring
    mathHelper4 = GetEntityHeading
    numberValue11 = workValue18
    mathHelper4, numberValue11, numberValue12 = mathHelper4(numberValue11)
    mathHelper3 = mathHelper3(mathHelper4, numberValue11, numberValue12)
    mathHelper4 = [[
,
	]]
    flag7 = flag7 .. flag8 .. mathHelper3 .. mathHelper4
    arg3 = flag7
    flag7 = arg3
    flag8 = "rotation = "
    mathHelper3 = tostring
    mathHelper4 = GetEntityRotation
    numberValue11 = workValue18
    numberValue12 = 2
    mathHelper4, numberValue11, numberValue12 = mathHelper4(numberValue11, numberValue12)
    mathHelper3 = mathHelper3(mathHelper4, numberValue11, numberValue12)
    mathHelper4 = [[
,
	]]
    flag7 = flag7 .. flag8 .. mathHelper3 .. mathHelper4
    arg3 = flag7
    flag7 = arg3
    flag8 = [[
reelPositions = {
		]]
    flag7 = flag7 .. flag8
    arg3 = flag7
    flag7 = arg3
    flag8 = tostring
    mathHelper3 = numberValue7
    flag8 = flag8(mathHelper3)
    mathHelper3 = [[
,
		]]
    flag7 = flag7 .. flag8 .. mathHelper3
    arg3 = flag7
    flag7 = arg3
    flag8 = tostring
    mathHelper3 = numberValue9
    flag8 = flag8(mathHelper3)
    mathHelper3 = [[
,
		]]
    flag7 = flag7 .. flag8 .. mathHelper3
    arg3 = flag7
    flag7 = arg3
    flag8 = tostring
    mathHelper3 = flag5
    flag8 = flag8(mathHelper3)
    mathHelper3 = [[
,
	]]
    flag7 = flag7 .. flag8 .. mathHelper3
    arg3 = flag7
    flag7 = arg3
    flag8 = "},\n"
    flag7 = flag7 .. flag8
    arg3 = flag7
    flag7 = arg3
    flag8 = "},\n"
    flag7 = flag7 .. flag8
    arg3 = flag7
    flag7 = SetEntityDrawOutline
    flag8 = workValue18
    mathHelper3 = true
    flag7(flag8, mathHelper3)
  end
  arg4 = TriggerServerEvent
  flag11 = "9c644bf509"
  workValue13 = arg3
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c644bf509".
  arg4(flag11, workValue13)
end
flag10 = true
numberValue13(textValue7, workValue9, flag10)
numberValue13 = pairs
textValue7 = cmgCall.locations
numberValue13, textValue7, workValue9, flag10 = numberValue13(textValue7)
for workValue10 in numberValue13, textValue7, workValue9, flag10 do
  dataTable2 = {}
  dataTable[workValue10] = dataTable2
end