--[[
    LEVEL 1 BEGINNER GUIDE — Casinoslots
    =========================================

    File: cmg/prod/client/casino/cl_casinoslots.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: casino gameplay and casino UI/features, specifically the Casinoslots feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 33
      * Background threads: 0
      * Always-running loops: 2
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
local cmgOperation, dataCollection, workingValue7, number14, workingValue12, number15, stateFlag12, number16, workingValue16, workingValue17, number, number2, stateFlag2, number4, workingValue2, text2, text3, rageUiOperation, text4, text5, rageUiOperation2, rageUiOperation3, cmgOperation2, text6, workingValue3, workingValue4, workingValue5, workingValue6, cmgOperation3, number13, text7, workingValue9, stateFlag10, workingValue10, dataCollection2, workingValue11
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection = "cfg/cfg_casinoslots"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection)
dataCollection = {}
workingValue7 = nil
number14 = 0
workingValue12 = nil
number15 = 0
stateFlag12 = false
number16 = 1
workingValue16 = nil
workingValue17 = nil
number = 0
number2 = 0
stateFlag2 = false
number4 = 0
workingValue2 = RMenu
workingValue2 = workingValue2.Add
text2 = "cmgslots"
text3 = "instructions"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text4 = ""
text5 = ""
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3, cmgOperation2, text6, workingValue3, workingValue4, workingValue5, workingValue6, cmgOperation3, number13, text7, workingValue9, stateFlag10, workingValue10, dataCollection2, workingValue11 = rageUiOperation3()
rageUiOperation, text4, text5, rageUiOperation2, rageUiOperation3, cmgOperation2, text6, workingValue3, workingValue4, workingValue5, workingValue6, cmgOperation3, number13, text7, workingValue9, stateFlag10, workingValue10, dataCollection2, workingValue11 = rageUiOperation(text4, text5, rageUiOperation2, rageUiOperation3, cmgOperation2, text6, workingValue3, workingValue4, workingValue5, workingValue6, cmgOperation3, number13, text7, workingValue9, stateFlag10, workingValue10, dataCollection2, workingValue11)
workingValue2(text2, text3, rageUiOperation, text4, text5, rageUiOperation2, rageUiOperation3, cmgOperation2, text6, workingValue3, workingValue4, workingValue5, workingValue6, cmgOperation3, number13, text7, workingValue9, stateFlag10, workingValue10, dataCollection2, workingValue11)
workingValue2 = RMenu
text2 = workingValue2
workingValue2 = workingValue2.Get
text3 = "cmgslots"
rageUiOperation = "instructions"
-- Beginner: result below is menu.
workingValue2 = workingValue2(text2, text3, rageUiOperation)
text2 = workingValue2
workingValue2 = workingValue2.SetSubtitle
text3 = "~b~SLOTS"
workingValue2(text2, text3)
workingValue2 = RageUI
workingValue2 = workingValue2.CreateWhile
text2 = 1.0
text3 = RMenu
rageUiOperation = text3
text3 = text3.Get
text4 = "cmgslots"
text5 = "instructions"
-- Beginner: result below is menu.
text3 = text3(rageUiOperation, text4, text5)
rageUiOperation = nil

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgslots"
  stateFlag11 = "instructions"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, stateFlag11)
  localValue3 = true
  localValue4 = true
  stateFlag11 = true

  -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
  function workingValue13()
    local localValue12, localValue22, workingValue8, rageUiOperation4, text8, workingValue14, text9, workingValue15, number17, number18, workingValue, text, mathHelper, stateFlag4
    localValue12 = cmgOperation.locations
    localValue22 = workingValue17
    localValue12 = localValue12[localValue22]
    if not localValue12 then
      return
    end
    localValue22 = localValue12.machines
    workingValue8 = number
    localValue22 = localValue22[workingValue8]
    if localValue22 then
      workingValue8 = cmgOperation.machineTypes
      rageUiOperation4 = localValue22.type
      workingValue8 = workingValue8[rageUiOperation4]
      rageUiOperation4 = RageUI
      rageUiOperation4 = rageUiOperation4.Separator
      text8 = "~y~Minimum Bet: "
      workingValue14 = getMoneyStringFormatted
      text9 = workingValue8.minBet
      workingValue14 = workingValue14(text9)
      text9 = "k"
      text8 = text8 .. workingValue14 .. text9
      rageUiOperation4(text8)
      rageUiOperation4 = RageUI
      rageUiOperation4 = rageUiOperation4.Separator
      text8 = "The payouts displayed on the front of the"
      rageUiOperation4(text8)
      rageUiOperation4 = RageUI
      rageUiOperation4 = rageUiOperation4.Separator
      text8 = "machine are based on the minimum bet."
      rageUiOperation4(text8)
      rageUiOperation4 = "\194\163"
      text8 = pairs
      workingValue14 = workingValue8.betRanges
      text8, workingValue14, text9, workingValue15 = text8(workingValue14)
      for number17, number18 in text8, workingValue14, text9, workingValue15 do
        if number17 > 1 then
          workingValue = rageUiOperation4
          text = ", \194\163"
          workingValue = workingValue .. text
          rageUiOperation4 = workingValue
        end
        workingValue = rageUiOperation4
        text = getMoneyStringFormatted
        mathHelper = math
        mathHelper = mathHelper.floor
        stateFlag4 = number18
        mathHelper, stateFlag4 = mathHelper(stateFlag4)
        text = text(mathHelper, stateFlag4)
        mathHelper = "k"
        workingValue = workingValue .. text .. mathHelper
        rageUiOperation4 = workingValue
      end
      text8 = RageUI
      text8 = text8.Separator
      workingValue14 = "Bets: "
      text9 = rageUiOperation4
      workingValue14 = workingValue14 .. text9
      text8(workingValue14)
    end
  end

  -- === HELPER FUNCTION: playerPed() ===
  function playerPed()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed)
end
workingValue2(text2, text3, rageUiOperation, text4)

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local localValue3, localValue4, stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3
  localValue3 = cmgOperation.machineTypes
  localValue4 = localValue1.type
  localValue3 = localValue3[localValue4]
  if localValue3 then
    localValue4 = PlaySoundFromCoord
    stateFlag11 = -1
    workingValue13 = localValue2
    playerPed = localValue1.position
    playerPed = playerPed.x
    position = localValue1.position
    position = position.y
    position2 = localValue1.position
    position2 = position2.z
    workingValue18 = localValue3.soundName
    stateFlag = false
    number3 = 20.0
    stateFlag3 = false
    localValue4(stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3)
  end
end

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2, localValue3) ===
function text2(localValue1, localValue2, localValue3)
  local localValue4, stateFlag11
  localValue4 = true
  stateFlag12 = localValue4
  localValue4 = Citizen
  localValue4 = localValue4.CreateThread

  -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: none) ===
  function stateFlag11()
    local localValue12, localValue22, workingValue8, rageUiOperation4, text8, workingValue14, text9, workingValue15, number17, number18, workingValue, text, mathHelper, stateFlag4, number6, number8, number10
    localValue12 = 1
    localValue22 = localValue3
    if localValue22 then
      localValue22 = 4
      if localValue22 then
        goto continueAtStep9
      end
    end
    localValue22 = 1
    ::continueAtStep9::
    workingValue8 = 1
    for rageUiOperation4 = localValue12, localValue22, workingValue8 do
      text8 = NetworkCreateSynchronisedScene
      workingValue14 = localValue1.x
      text9 = localValue1.y
      workingValue15 = localValue1.z
      number17 = 0.0
      number18 = 0.0
      workingValue = localValue2
      text = 2
      mathHelper = true
      stateFlag4 = true
      number6 = 1065353216
      number8 = 0
      number10 = 1065353216
      text8 = text8(workingValue14, text9, workingValue15, number17, number18, workingValue, text, mathHelper, stateFlag4, number6, number8, number10)
      workingValue14 = CMG
      workingValue14 = workingValue14.loadAnimDict
      text9 = cmgOperation.defaultAnimDict
      -- Beginner: Load a GTA animation dictionary before using it.
      workingValue14(text9)
      workingValue14 = NetworkAddPedToSynchronisedScene
      text9 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      text9 = text9()
      workingValue15 = text8
      number17 = cmgOperation.defaultAnimDict
      number18 = cmgOperation.idleAnims
      workingValue = number16
      number18 = number18[workingValue]
      workingValue = 2.0
      text = -2.0
      mathHelper = 13
      stateFlag4 = 16
      number6 = 1148846080
      number8 = 0
      workingValue14(text9, workingValue15, number17, number18, workingValue, text, mathHelper, stateFlag4, number6, number8)
      workingValue14 = NetworkStartSynchronisedScene
      text9 = text8
      workingValue14(text9)
      workingValue14 = Wait
      text9 = 250
      workingValue14(text9)
    end
    localValue12 = false
    stateFlag12 = localValue12
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue4(stateFlag11)
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1, localValue2, localValue3, localValue4) ===
function text3(localValue1, localValue2, localValue3, localValue4)
  local stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5, number7, number9
  stateFlag11 = NetworkCreateSynchronisedScene
  workingValue13 = localValue1.x
  playerPed = localValue1.y
  position = localValue1.z
  position2 = localValue2.x
  workingValue18 = localValue2.y
  stateFlag = localValue2.z
  number3 = 2
  stateFlag3 = true
  mathHelper2 = true
  number5 = 1065353216
  number7 = 0
  number9 = 1065353216
  stateFlag11 = stateFlag11(workingValue13, playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5, number7, number9)
  workingValue13 = NetworkAddPedToSynchronisedScene
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  position = stateFlag11
  position2 = localValue3
  workingValue18 = localValue4
  stateFlag = 2.0
  number3 = -2.0
  stateFlag3 = 13
  mathHelper2 = 16
  number5 = 1148846080
  number7 = 0
  workingValue13(playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5, number7)
  workingValue13 = NetworkStartSynchronisedScene
  playerPed = stateFlag11
  workingValue13(playerPed)
  return stateFlag11
end
rageUiOperation = RegisterNetEvent
text4 = "a23eeaa566"
-- Beginner: this function handles network event "a23eeaa566".

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2) ===
function text5(localValue1, localValue2)
  local localValue3, localValue4, stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5, number7
  localValue3 = true
  stateFlag12 = localValue3
  localValue3 = tCMG
  localValue3 = localValue3.setCanAnim
  localValue4 = false
  localValue3(localValue4)
  localValue3 = cmgOperation.locations
  localValue3 = localValue3[localValue1]
  localValue3 = localValue3.machines
  localValue3 = localValue3[localValue2]
  localValue4 = cmgOperation.machineTypes
  stateFlag11 = localValue3.type
  localValue4 = localValue4[stateFlag11]
  stateFlag11 = CMG
  stateFlag11 = stateFlag11.getModelGender
  stateFlag11 = stateFlag11()
  if "male" == stateFlag11 then
    stateFlag11 = cmgOperation.defaultAnimDict
    if stateFlag11 then
      goto continueAtStep23
    end
  end
  stateFlag11 = "anim_casino_a@amb@casino@games@slots@female"
  ::continueAtStep23::
  workingValue13 = cmgOperation.enterAnims
  playerPed = math
  playerPed = playerPed.random
  position = 1
  position2 = cmgOperation.enterAnims
  position2 = #position2
  playerPed = playerPed(position, position2)
  workingValue13 = workingValue13[playerPed]
  playerPed = localValue3.position
  position = localValue3.rotation
  position2 = CMG
  position2 = position2.loadAnimDict
  workingValue18 = stateFlag11
  -- Beginner: Load a GTA animation dictionary before using it.
  position2(workingValue18)
  position2 = text3
  workingValue18 = playerPed
  stateFlag = position
  number3 = stateFlag11
  stateFlag3 = workingValue13
  position2 = position2(workingValue18, stateFlag, number3, stateFlag3)
  workingValue18 = RemoveAnimDict
  stateFlag = stateFlag11
  workingValue18(stateFlag)
  workingValue18 = 1
  number15 = workingValue18
  workingValue17 = localValue1
  number = localValue2
  workingValue18 = Scaleform
  stateFlag = "SLOT_MACHINE"
  workingValue18 = workingValue18(stateFlag)
  workingValue7 = workingValue18
  workingValue18 = workingValue7.RunFunction
  stateFlag = "SET_THEME"
  number3 = {}
  stateFlag3 = localValue4.theme
  number3[1] = stateFlag3
  workingValue18(stateFlag, number3)
  workingValue18 = workingValue7.RunFunction
  stateFlag = "SET_MESSAGE"
  number3 = {}
  stateFlag3 = cmgOperation.slotMessages
  mathHelper2 = math
  mathHelper2 = mathHelper2.random
  number5 = 1
  number7 = cmgOperation.slotMessages
  number7 = #number7
  mathHelper2 = mathHelper2(number5, number7)
  stateFlag3 = stateFlag3[mathHelper2]
  number3[1] = stateFlag3
  workingValue18(stateFlag, number3)
  workingValue18 = workingValue7.RunFunction
  stateFlag = "SET_BET"
  number3 = {}
  stateFlag3 = localValue4.betRanges
  mathHelper2 = number15
  stateFlag3 = stateFlag3[mathHelper2]
  number3[1] = stateFlag3
  workingValue18(stateFlag, number3)
  workingValue18 = string
  workingValue18 = workingValue18.format
  stateFlag = "machine_%s"
  number3 = localValue4.scriptRenderTarget
  workingValue18 = workingValue18(stateFlag, number3)
  workingValue12 = workingValue18
  workingValue18 = IsNamedRendertargetRegistered
  stateFlag = workingValue12
  workingValue18 = workingValue18(stateFlag)
  if not workingValue18 then
    workingValue18 = RegisterNamedRendertarget
    stateFlag = workingValue12
    number3 = false
    workingValue18(stateFlag, number3)
  end
  workingValue18 = IsNamedRendertargetLinked
  stateFlag = localValue4.model
  workingValue18 = workingValue18(stateFlag)
  if not workingValue18 then
    workingValue18 = LinkNamedRendertarget
    stateFlag = localValue4.model
    workingValue18(stateFlag)
  end
  workingValue18 = IsNamedRendertargetRegistered
  stateFlag = workingValue12
  workingValue18 = workingValue18(stateFlag)
  if workingValue18 then
    workingValue18 = GetNamedRendertargetRenderId
    stateFlag = workingValue12
    workingValue18 = workingValue18(stateFlag)
    number14 = workingValue18
  end
  workingValue18 = TriggerServerEvent
  stateFlag = "30d25f6895"
  number3 = workingValue17
  stateFlag3 = number
  mathHelper2 = "welcome_stinger"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "30d25f6895".
  workingValue18(stateFlag, number3, stateFlag3, mathHelper2)
  workingValue18 = Citizen
  workingValue18 = workingValue18.Wait
  stateFlag = math
  stateFlag = stateFlag.floor
  number3 = GetAnimDuration
  stateFlag3 = stateFlag11
  mathHelper2 = workingValue13
  number3 = number3(stateFlag3, mathHelper2)
  number3 = number3 * 1000
  stateFlag, number3, stateFlag3, mathHelper2, number5, number7 = stateFlag(number3)
  workingValue18(stateFlag, number3, stateFlag3, mathHelper2, number5, number7)
  workingValue18 = NetworkStopSynchronisedScene
  stateFlag = position2
  workingValue18(stateFlag)
  workingValue18 = false
  stateFlag12 = workingValue18
  workingValue18 = math
  workingValue18 = workingValue18.random
  stateFlag = 1
  number3 = cmgOperation.idleAnims
  number3 = #number3
  workingValue18 = workingValue18(stateFlag, number3)
  number16 = workingValue18
  workingValue18 = text2
  stateFlag = playerPed
  number3 = position.z
  stateFlag3 = true
  workingValue18(stateFlag, number3, stateFlag3)
  workingValue18 = RequestScaleformMovie
  stateFlag = "INSTRUCTIONAL_BUTTONS"
  -- Beginner: result below is scaleformHandle.
  workingValue18 = workingValue18(stateFlag)
  while true do
    stateFlag = HasScaleformMovieLoaded
    number3 = workingValue18
    stateFlag = stateFlag(number3)
    if stateFlag then
      break
    end
    stateFlag = Citizen
    stateFlag = stateFlag.Wait
    number3 = 0
    stateFlag(number3)
  end
  workingValue16 = workingValue18
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a23eeaa566".
rageUiOperation(text4, text5)
rageUiOperation = RegisterNetEvent
text4 = "3facf9a0c0"
-- Beginner: this function handles network event "3facf9a0c0".

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5, number7, number9, stateFlag5
  localValue1 = true
  stateFlag12 = localValue1
  localValue1 = CMG
  localValue1 = localValue1.getModelGender
  localValue1 = localValue1()
  if "male" == localValue1 then
    localValue1 = cmgOperation.defaultAnimDict
    if localValue1 then
      goto continueAtStep12
    end
  end
  localValue1 = "anim_casino_a@amb@casino@games@slots@female"
  ::continueAtStep12::
  localValue2 = cmgOperation.exitAnims
  localValue3 = math
  localValue3 = localValue3.random
  localValue4 = 1
  stateFlag11 = cmgOperation.exitAnims
  stateFlag11 = #stateFlag11
  localValue3 = localValue3(localValue4, stateFlag11)
  localValue2 = localValue2[localValue3]
  localValue3 = cmgOperation.locations
  localValue4 = workingValue17
  localValue3 = localValue3[localValue4]
  localValue3 = localValue3.machines
  localValue4 = number
  localValue3 = localValue3[localValue4]
  if not localValue3 then
    return
  end
  localValue4 = localValue3.position
  stateFlag11 = vector3
  workingValue13 = 0.0
  playerPed = 0.0
  position = localValue3.heading
  stateFlag11 = stateFlag11(workingValue13, playerPed, position)
  workingValue13 = CMG
  workingValue13 = workingValue13.loadAnimDict
  playerPed = localValue1
  -- Beginner: Load a GTA animation dictionary before using it.
  workingValue13(playerPed)
  workingValue13 = NetworkCreateSynchronisedScene
  playerPed = localValue4.x
  position = localValue4.y
  position2 = localValue4.z
  workingValue18 = stateFlag11.x
  stateFlag = stateFlag11.y
  number3 = stateFlag11.z
  stateFlag3 = 2
  mathHelper2 = false
  number5 = false
  number7 = 1065353216
  number9 = 0
  stateFlag5 = 1065353216
  workingValue13 = workingValue13(playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5, number7, number9, stateFlag5)
  playerPed = NetworkAddPedToSynchronisedScene
  position = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  position = position()
  position2 = workingValue13
  workingValue18 = localValue1
  stateFlag = localValue2
  number3 = 2.0
  stateFlag3 = -2.0
  mathHelper2 = 13
  number5 = 16
  number7 = 1148846080
  number9 = 0
  playerPed(position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5, number7, number9)
  playerPed = NetworkStartSynchronisedScene
  position = workingValue13
  playerPed(position)
  playerPed = RemoveAnimDict
  position = localValue1
  playerPed(position)
  playerPed = Citizen
  playerPed = playerPed.Wait
  position = math
  position = position.floor
  position2 = GetAnimDuration
  workingValue18 = localValue1
  stateFlag = localValue2
  position2 = position2(workingValue18, stateFlag)
  position2 = position2 * 1000
  position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5, number7, number9, stateFlag5 = position(position2)
  playerPed(position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5, number7, number9, stateFlag5)
  playerPed = NetworkStopSynchronisedScene
  position = workingValue13
  playerPed(position)
  playerPed = false
  stateFlag12 = playerPed
  playerPed = tCMG
  playerPed = playerPed.setCanAnim
  position = true
  playerPed(position)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3facf9a0c0".
rageUiOperation(text4, text5)

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed
  localValue3 = localValue1.locationName
  localValue2 = dataCollection
  localValue2 = localValue2[localValue3]
  localValue3 = localValue1.index
  localValue2 = localValue2[localValue3]
  if not localValue2 then
    localValue2 = number
    if 0 == localValue2 then
      goto continueAtStep12
    end
  end
  return
  ::continueAtStep12::
  localValue2 = GetFrameCount
  localValue2 = localValue2()
  localValue3 = number2
  if localValue3 == localValue2 then
    return
  end
  number2 = localValue2
  localValue3 = cmgOperation.machineTypes
  localValue4 = localValue1.config
  localValue4 = localValue4.type
  localValue3 = localValue3[localValue4]
  localValue4 = drawNativeNotification
  stateFlag11 = "Press ~INPUT_CONTEXT~ to play "
  workingValue13 = localValue3.name
  stateFlag11 = stateFlag11 .. workingValue13
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue4(stateFlag11)
  localValue4 = IsControlJustPressed
  stateFlag11 = 0
  workingValue13 = 51
  localValue4 = localValue4(stateFlag11, workingValue13)
  if localValue4 then
    localValue4 = false
    stateFlag2 = localValue4
    localValue4 = TriggerServerEvent
    stateFlag11 = "a23eeaa566"
    workingValue13 = localValue1.locationName
    playerPed = localValue1.index
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a23eeaa566".
    localValue4(stateFlag11, workingValue13, playerPed)
  end
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5, number7, number9
  localValue2 = RequestScriptAudioBank
  localValue3 = "DLC_VINEWOOD\\CASINO_SLOT_MACHINES_01"
  localValue4 = false
  localValue2(localValue3, localValue4)
  localValue2 = RequestScriptAudioBank
  localValue3 = "DLC_VINEWOOD\\CASINO_SLOT_MACHINES_02"
  localValue4 = false
  localValue2(localValue3, localValue4)
  localValue2 = RequestScriptAudioBank
  localValue3 = "DLC_VINEWOOD\\CASINO_SLOT_MACHINES_03"
  localValue4 = false
  localValue2(localValue3, localValue4)
  localValue2 = TriggerServerEvent
  localValue3 = "0f1e83fac2"
  localValue4 = localValue1.locationName
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0f1e83fac2".
  localValue2(localValue3, localValue4)
  localValue2 = pairs
  localValue3 = localValue1.locationConfig
  localValue3 = localValue3.machines
  localValue2, localValue3, localValue4, stateFlag11 = localValue2(localValue3)
  for workingValue13, playerPed in localValue2, localValue3, localValue4, stateFlag11 do
    position = CMG
    position = position.createArea
    position2 = string
    position2 = position2.format
    workingValue18 = "casinoslots_location_%s_slot_%s"
    stateFlag = localValue1.locationName
    number3 = workingValue13
    position2 = position2(workingValue18, stateFlag, number3)
    workingValue18 = playerPed.chairPosition
    stateFlag = 1.5
    number3 = 5.0

    -- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: none) ===
    function stateFlag3()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION: mathHelper2() ===
    function mathHelper2()
      local localValue12, localValue22
    end
    number5 = rageUiOperation
    number7 = {}
    number9 = localValue1.locationName
    number7.locationName = number9
    number7.index = workingValue13
    number7.config = playerPed
    number7.object = 0
    -- Beginner: Create an interaction area around a world position.
    position(position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5, number7)
  end
end

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1) ===
function text5(localValue1)
  local localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag
  localValue2 = pairs
  localValue3 = localValue1.locationConfig
  localValue3 = localValue3.machines
  localValue2, localValue3, localValue4, stateFlag11 = localValue2(localValue3)
  for workingValue13 in localValue2, localValue3, localValue4, stateFlag11 do
    playerPed = tCMG
    playerPed = playerPed.removeArea
    position = string
    position = position.format
    position2 = "casinoslots_location_%s_slot_%s"
    workingValue18 = localValue1.locationName
    stateFlag = workingValue13
    position, position2, workingValue18, stateFlag = position(position2, workingValue18, stateFlag)
    playerPed(position, position2, workingValue18, stateFlag)
  end
  localValue2 = pairs
  localValue4 = localValue1.locationName
  localValue3 = dataCollection
  localValue3 = localValue3[localValue4]
  localValue2, localValue3, localValue4, stateFlag11 = localValue2(localValue3)
  for workingValue13 in localValue2, localValue3, localValue4, stateFlag11 do
    playerPed = TriggerEvent
    position = "f586b5b9f2"
    position2 = localValue1.locationName
    workingValue18 = workingValue13
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "f586b5b9f2".
    playerPed(position, position2, workingValue18)
  end
  localValue2 = TriggerServerEvent
  localValue3 = "acbad0c220"
  localValue4 = localValue1.locationName
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "acbad0c220".
  localValue2(localValue3, localValue4)
end
rageUiOperation2 = Citizen
rageUiOperation2 = rageUiOperation2.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5
  localValue1 = pairs
  localValue2 = cmgOperation.locations
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for stateFlag11, workingValue13 in localValue1, localValue2, localValue3, localValue4 do
    playerPed = CMG
    playerPed = playerPed.createArea
    position = string
    position = position.format
    position2 = "casinoslots_location_%s"
    workingValue18 = stateFlag11
    position = position(position2, workingValue18)
    position2 = workingValue13.centerPosition
    workingValue18 = workingValue13.eventRadius
    stateFlag = workingValue13.eventRadius
    number3 = text4
    stateFlag3 = text5

    -- === HELPER FUNCTION: mathHelper2() ===
    function mathHelper2()
      local localValue12, localValue22
    end
    number5 = {}
    number5.locationName = stateFlag11
    number5.locationConfig = workingValue13
    -- Beginner: Create an interaction area around a world position.
    playerPed(position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
rageUiOperation2(rageUiOperation3)

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1) ===
function rageUiOperation2(localValue1)
  local localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed, position, position2
  localValue2 = localValue1.objects
  if localValue2 then
    localValue2 = pairs
    localValue3 = localValue1.objects
    localValue2, localValue3, localValue4, stateFlag11 = localValue2(localValue3)
    for workingValue13, playerPed in localValue2, localValue3, localValue4, stateFlag11 do
      position = DeleteEntity
      position2 = playerPed
      -- Beginner: Delete a GTA entity.
      position(position2)
    end
  end
end
rageUiOperation3 = RegisterNetEvent
cmgOperation2 = "d555389281"
-- Beginner: this function handles network event "d555389281".

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1, localValue2, localValue3) ===
function text6(localValue1, localValue2, localValue3)
  local localValue4, stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5, number7, number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8
  localValue4 = dataCollection
  localValue4 = localValue4[localValue1]
  localValue4 = localValue4[localValue2]
  if localValue4 then
    return
  end
  localValue4 = cmgOperation.locations
  localValue4 = localValue4[localValue1]
  localValue4 = localValue4.machines
  localValue4 = localValue4[localValue2]
  stateFlag11 = cmgOperation.machineTypes
  workingValue13 = localValue4.type
  stateFlag11 = stateFlag11[workingValue13]
  workingValue13 = {}
  playerPed = pairs
  position = localValue4.reelPositions
  playerPed, position, position2, workingValue18 = playerPed(position)
  for stateFlag, number3 in playerPed, position, position2, workingValue18 do
    stateFlag3 = CMG
    stateFlag3 = stateFlag3.loadModel
    mathHelper2 = stateFlag11.reelA
    -- Beginner: Request/load a GTA model before spawning or applying it.
    stateFlag3(mathHelper2)
    stateFlag3 = CreateObjectNoOffset
    mathHelper2 = stateFlag11.reelA
    number5 = number3.x
    number7 = number3.y
    number9 = number3.z
    stateFlag5 = false
    stateFlag6 = false
    stateFlag7 = false
    -- Beginner: result below is objectEntity.
    stateFlag3 = stateFlag3(mathHelper2, number5, number7, number9, stateFlag5, stateFlag6, stateFlag7)
    mathHelper2 = SetModelAsNoLongerNeeded
    number5 = stateFlag11.reelA
    mathHelper2(number5)
    mathHelper2 = FreezeEntityPosition
    number5 = stateFlag3
    number7 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    mathHelper2(number5, number7)
    mathHelper2 = localValue3.reelRotations
    mathHelper2 = mathHelper2[stateFlag]
    number5 = SetEntityRotation
    number7 = stateFlag3
    number9 = mathHelper2.x
    stateFlag5 = mathHelper2.y
    stateFlag6 = mathHelper2.z
    stateFlag7 = 2
    stateFlag8 = false
    number5(number7, number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8)
    number5 = table
    number5 = number5.insert
    number7 = workingValue13
    number9 = stateFlag3
    number5(number7, number9)
  end
  playerPed = dataCollection
  playerPed = playerPed[localValue1]
  playerPed = playerPed[localValue2]
  if playerPed then
    playerPed = rageUiOperation2
    position = dataCollection
    position = position[localValue1]
    position = position[localValue2]
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    playerPed(position)
  end
  localValue3.objects = workingValue13
  playerPed = dataCollection
  playerPed = playerPed[localValue1]
  playerPed[localValue2] = localValue3
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d555389281".
rageUiOperation3(cmgOperation2, text6)

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = workingValue7
  if localValue1 then
    localValue1 = workingValue7.RunFunction
    localValue2 = "SET_BET"
    localValue3 = {}
    localValue1(localValue2, localValue3)
    localValue1 = workingValue7.RunFunction
    localValue2 = "SET_LAST_WIN"
    localValue3 = {}
    localValue1(localValue2, localValue3)
    localValue1 = workingValue7.RunFunction
    localValue2 = "SET_MESSAGE"
    localValue3 = {}
    localValue4 = ""
    localValue3[1] = localValue4
    localValue1(localValue2, localValue3)
    localValue1 = SetScaleformMovieAsNoLongerNeeded
    localValue2 = workingValue7.Handle
    localValue1(localValue2)
  end
  localValue1 = SetScaleformMovieAsNoLongerNeeded
  localValue2 = workingValue16
  localValue1(localValue2)
  localValue1 = ReleaseNamedRendertarget
  localValue2 = workingValue12
  localValue1(localValue2)
  localValue1 = nil
  workingValue7 = localValue1
  localValue1 = nil
  workingValue16 = localValue1
  localValue1 = 0
  number14 = localValue1
  localValue1 = nil
  workingValue12 = localValue1
  localValue1 = 0
  number = localValue1
  localValue1 = nil
  workingValue17 = localValue1
  localValue1 = false
  stateFlag2 = localValue1
end
cmgOperation2 = RegisterNetEvent
text6 = "f586b5b9f2"
-- Beginner: this function handles network event "f586b5b9f2".

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1, localValue2) ===
function workingValue3(localValue1, localValue2)
  local localValue3, localValue4, stateFlag11
  localValue3 = dataCollection
  localValue3 = localValue3[localValue1]
  localValue3 = localValue3[localValue2]
  if not localValue3 then
    return
  end
  localValue4 = rageUiOperation2
  stateFlag11 = localValue3
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue4(stateFlag11)
  localValue4 = localValue3.playerSrc
  stateFlag11 = CMG
  stateFlag11 = stateFlag11.getLocalPlayerSrc
  stateFlag11 = stateFlag11()
  if localValue4 == stateFlag11 then
    localValue4 = rageUiOperation3
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    localValue4()
  end
  localValue4 = dataCollection
  localValue4 = localValue4[localValue1]
  localValue4[localValue2] = nil
end
cmgOperation2(text6, workingValue3)
cmgOperation2 = tCMG

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5
  localValue1 = cmgOperation.locations
  localValue2 = workingValue17
  localValue1 = localValue1[localValue2]
  localValue1 = localValue1.machines
  localValue2 = number
  localValue1 = localValue1[localValue2]
  if not localValue1 then
    return
  end
  localValue2 = true
  stateFlag12 = localValue2
  localValue2 = CMG
  localValue2 = localValue2.loadAnimDict
  localValue3 = cmgOperation.defaultAnimDict
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue2(localValue3)
  localValue2 = cmgOperation.pullLeverAnims
  localValue3 = math
  localValue3 = localValue3.random
  localValue4 = 1
  stateFlag11 = cmgOperation.pullLeverAnims
  stateFlag11 = #stateFlag11
  localValue3 = localValue3(localValue4, stateFlag11)
  localValue2 = localValue2[localValue3]
  localValue3 = TaskPlayAnim
  localValue4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  stateFlag11 = cmgOperation.defaultAnimDict
  workingValue13 = localValue2[1]
  playerPed = 3.0
  position = 11.0
  position2 = -1
  workingValue18 = 48
  stateFlag = 0
  number3 = false
  stateFlag3 = false
  mathHelper2 = false
  -- Beginner: Play an animation on a ped.
  localValue3(localValue4, stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2)
  localValue3 = GetAnimDuration
  localValue4 = cmgOperation.defaultAnimDict
  stateFlag11 = localValue2[1]
  localValue3 = localValue3(localValue4, stateFlag11)
  localValue4 = localValue2[2]
  if localValue4 then
    localValue4 = cmgOperation.machineTypes
    stateFlag11 = localValue1.type
    localValue4 = localValue4[stateFlag11]
    stateFlag11 = GetClosestObjectOfType
    workingValue13 = localValue1.position
    workingValue13 = workingValue13.x
    playerPed = localValue1.position
    playerPed = playerPed.y
    position = localValue1.position
    position = position.z
    position2 = 1.0
    workingValue18 = localValue4.model
    stateFlag = false
    number3 = false
    stateFlag3 = false
    -- Beginner: result below is objectEntity.
    stateFlag11 = stateFlag11(workingValue13, playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3)
    workingValue13 = PlayEntityAnim
    playerPed = stateFlag11
    position = localValue2[2]
    position2 = cmgOperation.defaultAnimDict
    workingValue18 = 1000.0
    stateFlag = false
    number3 = true
    stateFlag3 = true
    mathHelper2 = 0
    number5 = 136704
    workingValue13(playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5)
    workingValue13 = Citizen
    workingValue13 = workingValue13.Wait
    playerPed = localValue3 * 320
    workingValue13(playerPed)
  end
  localValue4 = Citizen
  localValue4 = localValue4.Wait
  stateFlag11 = localValue3 * 180
  localValue4(stateFlag11)
  localValue4 = RemoveAnimDict
  stateFlag11 = cmgOperation.defaultAnimDict
  localValue4(stateFlag11)
  localValue4 = false
  stateFlag12 = localValue4
end
cmgOperation2.playCasinoSlotMachineAnim = text6
cmgOperation2 = RegisterNetEvent
text6 = "fe417ebf1e"
-- Beginner: this function handles network event "fe417ebf1e".

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue3(localValue1, localValue2, localValue3, localValue4)
  local stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5, number7, number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8, mathHelper3, mathHelper4, number11, number12, stateFlag9
  stateFlag11 = dataCollection
  stateFlag11 = stateFlag11[localValue1]
  stateFlag11 = stateFlag11[localValue2]
  if not stateFlag11 then
    return
  end
  workingValue13 = cmgOperation.locations
  workingValue13 = workingValue13[localValue1]
  workingValue13 = workingValue13.machines
  workingValue13 = workingValue13[localValue2]
  playerPed = cmgOperation.machineTypes
  position = workingValue13.type
  playerPed = playerPed[position]
  position = workingValue2
  position2 = workingValue13
  workingValue18 = "start_spin"
  position(position2, workingValue18)
  position = {}
  position2 = pairs
  workingValue18 = stateFlag11.objects
  position2, workingValue18, stateFlag, number3 = position2(workingValue18)
  for stateFlag3, mathHelper2 in position2, workingValue18, stateFlag, number3 do
    number5 = SetEntityVisible
    number7 = mathHelper2
    number9 = false
    stateFlag5 = false
    number5(number7, number9, stateFlag5)
    number5 = CMG
    number5 = number5.loadModel
    number7 = playerPed.reelB
    -- Beginner: Request/load a GTA model before spawning or applying it.
    number5(number7)
    number5 = GetEntityCoords
    number7 = mathHelper2
    number9 = true
    -- Beginner: result below is entityCoords.
    number5 = number5(number7, number9)
    number7 = CreateObjectNoOffset
    number9 = playerPed.reelB
    stateFlag5 = number5.x
    stateFlag6 = number5.y
    stateFlag7 = number5.z
    stateFlag8 = false
    mathHelper3 = false
    mathHelper4 = false
    -- Beginner: result below is objectEntity.
    number7 = number7(number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8, mathHelper3, mathHelper4)
    number9 = SetModelAsNoLongerNeeded
    stateFlag5 = playerPed.reelB
    number9(stateFlag5)
    number9 = FreezeEntityPosition
    stateFlag5 = number7
    stateFlag6 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    number9(stateFlag5, stateFlag6)
    number9 = SetEntityRotation
    stateFlag5 = number7
    stateFlag6 = 0.0
    stateFlag7 = 0.0
    stateFlag8 = workingValue13.heading
    mathHelper3 = 2
    mathHelper4 = false
    number9(stateFlag5, stateFlag6, stateFlag7, stateFlag8, mathHelper3, mathHelper4)
    number9 = table
    number9 = number9.insert
    stateFlag5 = position
    stateFlag6 = number7
    number9(stateFlag5, stateFlag6)
  end
  position2 = workingValue2
  workingValue18 = workingValue13
  stateFlag = "spinning"
  position2(workingValue18, stateFlag)
  position2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  position2 = position2()
  workingValue18 = pairs
  stateFlag = localValue3
  workingValue18, stateFlag, number3, stateFlag3 = workingValue18(stateFlag)
  for mathHelper2, number5 in workingValue18, stateFlag, number3, stateFlag3 do
    while true do
      number7 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      number7 = number7()
      number7 = number7 - position2
      if not (number5 > number7) then
        break
      end
      number7 = mathHelper2
      number9 = 3
      stateFlag5 = 1
      for stateFlag6 = number7, number9, stateFlag5 do
        stateFlag7 = SetEntityRotation
        stateFlag8 = position[stateFlag6]
        mathHelper3 = math
        mathHelper3 = mathHelper3.random
        mathHelper4 = 0
        number11 = 15
        mathHelper3 = mathHelper3(mathHelper4, number11)
        mathHelper3 = mathHelper3 * 22.5
        mathHelper4 = math
        mathHelper4 = mathHelper4.random
        number11 = 1
        number12 = 60
        mathHelper4 = mathHelper4(number11, number12)
        mathHelper3 = mathHelper3 + mathHelper4
        mathHelper4 = 0.0
        number11 = workingValue13.heading
        number12 = 2
        stateFlag9 = true
        stateFlag7(stateFlag8, mathHelper3, mathHelper4, number11, number12, stateFlag9)
      end
      number7 = Citizen
      number7 = number7.Wait
      number9 = 0
      number7(number9)
    end
    number7 = SetEntityVisible
    number9 = position[mathHelper2]
    stateFlag5 = false
    stateFlag6 = false
    number7(number9, stateFlag5, stateFlag6)
    number7 = DeleteEntity
    number9 = position[mathHelper2]
    -- Beginner: Delete a GTA entity.
    number7(number9)
    number7 = SetEntityVisible
    number9 = stateFlag11.objects
    number9 = number9[mathHelper2]
    stateFlag5 = true
    stateFlag6 = true
    number7(number9, stateFlag5, stateFlag6)
    number7 = SetEntityRotation
    number9 = stateFlag11.objects
    number9 = number9[mathHelper2]
    stateFlag5 = localValue4[mathHelper2]
    stateFlag5 = stateFlag5 * 22.5
    stateFlag6 = 0.0
    stateFlag7 = workingValue13.heading
    stateFlag8 = 2
    mathHelper3 = true
    number7(number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8, mathHelper3)
    number7 = localValue4[mathHelper2]
    number9 = math
    number9 = number9.floor
    stateFlag5 = localValue4[mathHelper2]
    number9 = number9(stateFlag5)
    if number7 == number9 then
      number7 = workingValue2
      number9 = workingValue13
      stateFlag5 = "wheel_stop_clunk"
      number7(number9, stateFlag5)
    else
      number7 = workingValue2
      number9 = workingValue13
      stateFlag5 = "wheel_stop_on_prize"
      number7(number9, stateFlag5)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fe417ebf1e".
cmgOperation2(text6, workingValue3)
cmgOperation2 = RegisterNetEvent
text6 = "a3c45ed113"
-- Beginner: this function handles network event "a3c45ed113".

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1, localValue2, localValue3) ===
function workingValue3(localValue1, localValue2, localValue3)
  local localValue4, stateFlag11, workingValue13, playerPed, position
  if 0 == localValue3 then
    localValue4 = notify
    stateFlag11 = "~r~You lost \194\163"
    workingValue13 = getMoneyStringFormatted
    playerPed = localValue2
    workingValue13 = workingValue13(playerPed)
    stateFlag11 = stateFlag11 .. workingValue13
    -- Beginner: Show a notification to the player.
    localValue4(stateFlag11)
  else
    localValue4 = notify
    stateFlag11 = "~g~You won \194\163"
    workingValue13 = getMoneyStringFormatted
    playerPed = localValue3
    workingValue13 = workingValue13(playerPed)
    stateFlag11 = stateFlag11 .. workingValue13
    localValue4(stateFlag11)
  end
  localValue4 = workingValue7
  if localValue4 and localValue3 > 0 then
    localValue4 = workingValue7.RunFunction
    stateFlag11 = "SET_LAST_WIN"
    workingValue13 = {}
    playerPed = math
    playerPed = playerPed.floor
    position = localValue3
    playerPed, position = playerPed(position)
    workingValue13[1] = playerPed
    workingValue13[2] = position
    localValue4(stateFlag11, workingValue13)
  end
  localValue4 = cmgOperation.locations
  localValue4 = localValue4[localValue1]
  localValue4 = localValue4.machines
  stateFlag11 = number
  localValue4 = localValue4[stateFlag11]
  if localValue4 then
    stateFlag11 = text2
    workingValue13 = localValue4.position
    playerPed = localValue4.heading
    position = false
    stateFlag11(workingValue13, playerPed, position)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a3c45ed113".
cmgOperation2(text6, workingValue3)
cmgOperation2 = RegisterNetEvent
text6 = "30d25f6895"
-- Beginner: this function handles network event "30d25f6895".

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1, localValue2, localValue3) ===
function workingValue3(localValue1, localValue2, localValue3)
  local localValue4, stateFlag11, workingValue13, playerPed
  localValue4 = cmgOperation.locations
  localValue4 = localValue4[localValue1]
  localValue4 = localValue4.machines
  localValue4 = localValue4[localValue2]
  if localValue4 then
    stateFlag11 = workingValue2
    workingValue13 = localValue4
    playerPed = localValue3
    stateFlag11(workingValue13, playerPed)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "30d25f6895".
cmgOperation2(text6, workingValue3)
cmgOperation2 = AddEventHandler
text6 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5, number7
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue2 == localValue1 then
    localValue2 = pairs
    localValue3 = dataCollection
    localValue2, localValue3, localValue4, stateFlag11 = localValue2(localValue3)
    for workingValue13, playerPed in localValue2, localValue3, localValue4, stateFlag11 do
      position = pairs
      position2 = playerPed
      position, position2, workingValue18, stateFlag = position(position2)
      for number3 in position, position2, workingValue18, stateFlag do
        stateFlag3 = TriggerEvent
        mathHelper2 = "f586b5b9f2"
        number5 = workingValue13
        number7 = number3
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "f586b5b9f2".
        stateFlag3(mathHelper2, number5, number7)
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
cmgOperation2(text6, workingValue3)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag
  localValue1 = workingValue7
  if localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.IsAnyMenuVisible
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = N_0x32f34ff7f617643b
      localValue2 = workingValue7.Handle
      localValue3 = 1
      localValue1(localValue2, localValue3)
      localValue1 = SetTextRenderId
      localValue2 = number14
      localValue1(localValue2)
      localValue1 = SetScriptGfxDrawOrder
      localValue2 = 4
      localValue1(localValue2)
      localValue1 = SetScriptGfxDrawBehindPausemenu
      localValue2 = true
      localValue1(localValue2)
      localValue1 = DrawScaleformMovie
      localValue2 = workingValue7.Handle
      localValue3 = 0.401
      localValue4 = 0.09
      stateFlag11 = 0.805
      workingValue13 = 0.195
      playerPed = 255
      position = 255
      position2 = 255
      workingValue18 = 255
      stateFlag = 0
      localValue1(localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag)
      localValue1 = SetTextRenderId
      localValue2 = GetDefaultScriptRendertargetRenderId
      localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag = localValue2()
      localValue1(localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag)
      localValue1 = SetScriptGfxDrawBehindPausemenu
      localValue2 = false
      localValue1(localValue2)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3
  localValue2 = BeginTextCommandScaleformString
  localValue3 = "STRING"
  localValue2(localValue3)
  localValue2 = AddTextComponentSubstringKeyboardDisplay
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = EndTextCommandScaleformString
  localValue2()
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local localValue2, localValue3
  localValue2 = _ENV
  localValue3 = "ScaleformMovieMethodAddParamPlayerNameString"
  localValue2 = localValue2[localValue3]
  localValue3 = localValue1
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed
  localValue1 = workingValue16
  if localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.IsAnyMenuVisible
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = BeginScaleformMovieMethod
      localValue2 = workingValue16
      localValue3 = "CLEAR_ALL"
      localValue1(localValue2, localValue3)
      localValue1 = EndScaleformMovieMethod
      localValue1()
      localValue1 = BeginScaleformMovieMethod
      localValue2 = workingValue16
      localValue3 = "SET_CLEAR_SPACE"
      localValue1(localValue2, localValue3)
      localValue1 = ScaleformMovieMethodAddParamInt
      localValue2 = 200
      localValue1(localValue2)
      localValue1 = EndScaleformMovieMethod
      localValue1()
      localValue1 = BeginScaleformMovieMethod
      localValue2 = workingValue16
      localValue3 = "SET_DATA_SLOT"
      localValue1(localValue2, localValue3)
      localValue1 = ScaleformMovieMethodAddParamInt
      localValue2 = 0
      localValue1(localValue2)
      localValue1 = workingValue3
      localValue2 = GetControlInstructionalButton
      localValue3 = 0
      localValue4 = 202
      stateFlag11 = true
      localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed = localValue2(localValue3, localValue4, stateFlag11)
      localValue1(localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed)
      localValue1 = text6
      localValue2 = "Exit"
      localValue1(localValue2)
      localValue1 = EndScaleformMovieMethod
      localValue1()
      localValue1 = BeginScaleformMovieMethod
      localValue2 = workingValue16
      localValue3 = "SET_DATA_SLOT"
      localValue1(localValue2, localValue3)
      localValue1 = ScaleformMovieMethodAddParamInt
      localValue2 = 1
      localValue1(localValue2)
      localValue1 = workingValue3
      localValue2 = GetControlInstructionalButton
      localValue3 = 0
      localValue4 = 201
      stateFlag11 = true
      localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed = localValue2(localValue3, localValue4, stateFlag11)
      localValue1(localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed)
      localValue1 = text6
      localValue2 = "Spin"
      localValue1(localValue2)
      localValue1 = EndScaleformMovieMethod
      localValue1()
      localValue1 = BeginScaleformMovieMethod
      localValue2 = workingValue16
      localValue3 = "SET_DATA_SLOT"
      localValue1(localValue2, localValue3)
      localValue1 = ScaleformMovieMethodAddParamInt
      localValue2 = 2
      localValue1(localValue2)
      localValue1 = workingValue3
      localValue2 = GetControlInstructionalButton
      localValue3 = 0
      localValue4 = 121
      stateFlag11 = true
      localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed = localValue2(localValue3, localValue4, stateFlag11)
      localValue1(localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed)
      localValue1 = text6
      localValue2 = "Toggle AutoSpin"
      localValue1(localValue2)
      localValue1 = EndScaleformMovieMethod
      localValue1()
      localValue1 = BeginScaleformMovieMethod
      localValue2 = workingValue16
      localValue3 = "SET_DATA_SLOT"
      localValue1(localValue2, localValue3)
      localValue1 = ScaleformMovieMethodAddParamInt
      localValue2 = 3
      localValue1(localValue2)
      localValue1 = workingValue3
      localValue2 = GetControlInstructionalButton
      localValue3 = 0
      localValue4 = 44
      stateFlag11 = true
      localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed = localValue2(localValue3, localValue4, stateFlag11)
      localValue1(localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed)
      localValue1 = text6
      localValue2 = "Decrease Bet"
      localValue1(localValue2)
      localValue1 = EndScaleformMovieMethod
      localValue1()
      localValue1 = BeginScaleformMovieMethod
      localValue2 = workingValue16
      localValue3 = "SET_DATA_SLOT"
      localValue1(localValue2, localValue3)
      localValue1 = ScaleformMovieMethodAddParamInt
      localValue2 = 4
      localValue1(localValue2)
      localValue1 = workingValue3
      localValue2 = GetControlInstructionalButton
      localValue3 = 0
      localValue4 = 38
      stateFlag11 = true
      localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed = localValue2(localValue3, localValue4, stateFlag11)
      localValue1(localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed)
      localValue1 = text6
      localValue2 = "Increase Bet"
      localValue1(localValue2)
      localValue1 = EndScaleformMovieMethod
      localValue1()
      localValue1 = BeginScaleformMovieMethod
      localValue2 = workingValue16
      localValue3 = "SET_DATA_SLOT"
      localValue1(localValue2, localValue3)
      localValue1 = ScaleformMovieMethodAddParamInt
      localValue2 = 5
      localValue1(localValue2)
      localValue1 = workingValue3
      localValue2 = GetControlInstructionalButton
      localValue3 = 0
      localValue4 = 224
      stateFlag11 = true
      localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed = localValue2(localValue3, localValue4, stateFlag11)
      localValue1(localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed)
      localValue1 = text6
      localValue2 = "View Instructions"
      localValue1(localValue2)
      localValue1 = EndScaleformMovieMethod
      localValue1()
      localValue1 = BeginScaleformMovieMethod
      localValue2 = workingValue16
      localValue3 = "DRAW_INSTRUCTIONAL_BUTTONS"
      localValue1(localValue2, localValue3)
      localValue1 = EndScaleformMovieMethod
      localValue1()
      localValue1 = BeginScaleformMovieMethod
      localValue2 = workingValue16
      localValue3 = "SET_BACKGROUND_COLOUR"
      localValue1(localValue2, localValue3)
      localValue1 = ScaleformMovieMethodAddParamInt
      localValue2 = 0
      localValue1(localValue2)
      localValue1 = ScaleformMovieMethodAddParamInt
      localValue2 = 0
      localValue1(localValue2)
      localValue1 = ScaleformMovieMethodAddParamInt
      localValue2 = 0
      localValue1(localValue2)
      localValue1 = ScaleformMovieMethodAddParamInt
      localValue2 = 80
      localValue1(localValue2)
      localValue1 = EndScaleformMovieMethod
      localValue1()
      localValue1 = DrawScaleformMovieFullscreen
      localValue2 = workingValue16
      localValue3 = 255
      localValue4 = 255
      stateFlag11 = 255
      workingValue13 = 255
      playerPed = 0
      localValue1(localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed, position
  localValue1 = cmgOperation2
  -- Beginner: Register a client-side event handler.
  localValue1()
  localValue1 = Citizen
  localValue1 = localValue1.InvokeNative
  localValue2 = 104270002799462160
  localValue3 = 518572876
  localValue1(localValue2, localValue3)
  localValue1 = IsControlJustPressed
  localValue2 = 0
  localValue3 = 121
  localValue1 = localValue1(localValue2, localValue3)
  if localValue1 then
    localValue1 = stateFlag2
    localValue1 = not localValue1
    stateFlag2 = localValue1
    localValue1 = notify
    localValue2 = stateFlag2
    if localValue2 then
      localValue2 = "~g~"
      if localValue2 then
        goto continueAtStep25
      end
    end
    localValue2 = "~r~"
    ::continueAtStep25::
    localValue3 = "Automatic spinning "
    localValue4 = stateFlag2
    if localValue4 then
      localValue4 = "enabled"
      if localValue4 then
        goto continueAtStep33
      end
    end
    localValue4 = "disabled"
    ::continueAtStep33::
    localValue2 = localValue2 .. localValue3 .. localValue4
    -- Beginner: Show a notification to the player.
    localValue1(localValue2)
  end
  localValue1 = stateFlag2
  if localValue1 then
    localValue1 = drawNativeNotification
    localValue2 = [[
Automatic spinning is enabled.
Press ~INPUT_VEH_FLY_ATTACK_CAMERA~ to stop.]]
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue1(localValue2)
  end
  localValue1 = stateFlag12
  if localValue1 then
    return
  end
  localValue1 = cmgOperation.locations
  localValue2 = workingValue17
  localValue1 = localValue1[localValue2]
  localValue1 = localValue1.machines
  localValue2 = number
  localValue1 = localValue1[localValue2]
  localValue2 = cmgOperation.machineTypes
  localValue3 = localValue1.type
  localValue2 = localValue2[localValue3]
  localValue3 = workingValue4
  localValue3()
  localValue3 = IsControlJustPressed
  localValue4 = 0
  stateFlag11 = 202
  localValue3 = localValue3(localValue4, stateFlag11)
  if localValue3 then
    localValue3 = TriggerServerEvent
    localValue4 = "3facf9a0c0"
    stateFlag11 = workingValue17
    workingValue13 = number
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3facf9a0c0".
    localValue3(localValue4, stateFlag11, workingValue13)
  end
  localValue3 = false
  localValue4 = stateFlag2
  if localValue4 then
    localValue4 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue4 = localValue4()
    stateFlag11 = number4
    localValue4 = localValue4 - stateFlag11
    stateFlag11 = 1000
    if localValue4 > stateFlag11 then
      localValue4 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue4 = localValue4()
      number4 = localValue4
      localValue3 = true
    end
  end
  localValue4 = IsControlJustPressed
  stateFlag11 = 0
  workingValue13 = 201
  localValue4 = localValue4(stateFlag11, workingValue13)
  if localValue4 or localValue3 then
    localValue4 = TriggerServerEvent
    stateFlag11 = "fe417ebf1e"
    workingValue13 = workingValue17
    playerPed = number
    position = number15
    localValue4(stateFlag11, workingValue13, playerPed, position)
  end
  localValue4 = IsControlJustPressed
  stateFlag11 = 0
  workingValue13 = 38
  localValue4 = localValue4(stateFlag11, workingValue13)
  if localValue4 then
    localValue4 = number15
    stateFlag11 = localValue2.betRanges
    stateFlag11 = #stateFlag11
    if localValue4 < stateFlag11 then
      localValue4 = number15
      localValue4 = localValue4 + 1
      number15 = localValue4
      localValue4 = workingValue7
      if localValue4 then
        localValue4 = workingValue7.RunFunction
        stateFlag11 = "SET_BET"
        workingValue13 = {}
        playerPed = localValue2.betRanges
        position = number15
        playerPed = playerPed[position]
        workingValue13[1] = playerPed
        localValue4(stateFlag11, workingValue13)
      end
    end
    localValue4 = number15
    stateFlag11 = localValue2.betRanges
    stateFlag11 = #stateFlag11
    if localValue4 == stateFlag11 then
      localValue4 = TriggerServerEvent
      stateFlag11 = "30d25f6895"
      workingValue13 = workingValue17
      playerPed = number
      position = "place_max_bet"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "30d25f6895".
      localValue4(stateFlag11, workingValue13, playerPed, position)
    else
      localValue4 = TriggerServerEvent
      stateFlag11 = "30d25f6895"
      workingValue13 = workingValue17
      playerPed = number
      position = "place_bet"
      localValue4(stateFlag11, workingValue13, playerPed, position)
    end
  end
  localValue4 = IsControlJustPressed
  stateFlag11 = 0
  workingValue13 = 44
  localValue4 = localValue4(stateFlag11, workingValue13)
  if localValue4 then
    localValue4 = number15
    if localValue4 > 1 then
      localValue4 = number15
      localValue4 = localValue4 - 1
      number15 = localValue4
      localValue4 = workingValue7
      if localValue4 then
        localValue4 = workingValue7.RunFunction
        stateFlag11 = "SET_BET"
        workingValue13 = {}
        playerPed = localValue2.betRanges
        position = number15
        playerPed = playerPed[position]
        workingValue13[1] = playerPed
        localValue4(stateFlag11, workingValue13)
      end
      localValue4 = TriggerServerEvent
      stateFlag11 = "30d25f6895"
      workingValue13 = workingValue17
      playerPed = number
      position = "place_bet"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "30d25f6895".
      localValue4(stateFlag11, workingValue13, playerPed, position)
    end
  end
  localValue4 = IsControlJustPressed
  stateFlag11 = 0
  workingValue13 = 224
  localValue4 = localValue4(stateFlag11, workingValue13)
  if localValue4 then
    localValue4 = RMenu
    stateFlag11 = localValue4
    localValue4 = localValue4.Get
    workingValue13 = "cmgslots"
    playerPed = "instructions"
    -- Beginner: result below is menu.
    localValue4 = localValue4(stateFlag11, workingValue13, playerPed)
    if localValue4 then
      workingValue13 = localValue4
      stateFlag11 = localValue4.SetSpriteBanner
      playerPed = localValue2.textureName
      position = localValue2.textureName
      stateFlag11(workingValue13, playerPed, position)
      stateFlag11 = RageUI
      stateFlag11 = stateFlag11.Visible
      workingValue13 = localValue4
      playerPed = RageUI
      playerPed = playerPed.Visible
      position = localValue4
      -- Beginner: result below is menuVisible.
      playerPed = playerPed(position)
      playerPed = not playerPed
      stateFlag11(workingValue13, playerPed)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2
  localValue1 = workingValue17
  if localValue1 then
    localValue1 = number
    if 0 ~= localValue1 then
      localValue2 = workingValue17
      localValue1 = dataCollection
      localValue1 = localValue1[localValue2]
      localValue2 = number
      localValue1 = localValue1[localValue2]
      if localValue1 then
        localValue2 = workingValue5
        localValue2()
      end
    end
  end
end
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.createThreadOnTick
number13 = workingValue6
text7 = "Casino Slots Tick"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation3(number13, text7)
cmgOperation3 = {}
number13 = -1932041857
cmgOperation3[number13] = "AngelAndTheKnight"
number13 = -1519644200
cmgOperation3[number13] = "ImpotentRage"
number13 = -430989390
cmgOperation3[number13] = "RepublicanSpaceRangers"
number13 = 654385216
cmgOperation3[number13] = "FameOrShame"
number13 = 161343630
cmgOperation3[number13] = "DeityOfTheSun"
number13 = 1096374064
cmgOperation3[number13] = "KnifeAfterDark"
number13 = 207578973
cmgOperation3[number13] = "TheDiamond"
number13 = -487222358
cmgOperation3[number13] = "Evacuator"
number13 = CMG
number13 = number13.registerCommand
text7 = "saveslotmachines"

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2, localValue3, localValue4, stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5, number7, number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8, mathHelper3, mathHelper4, number11, number12
  localValue1 = CMG
  localValue1 = localValue1.isDevMode
  localValue1 = localValue1()
  if not localValue1 then
    return
  end
  localValue1 = vector3
  localValue2 = 0.0
  localValue3 = 0.0
  localValue4 = 0.0
  localValue1 = localValue1(localValue2, localValue3, localValue4)
  localValue2 = {}
  localValue3 = pairs
  localValue4 = GetGamePool
  stateFlag11 = "CObject"
  localValue4, stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5, number7, number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8, mathHelper3, mathHelper4, number11, number12 = localValue4(stateFlag11)
  localValue3, localValue4, stateFlag11, workingValue13 = localValue3(localValue4, stateFlag11, workingValue13, playerPed, position, position2, workingValue18, stateFlag, number3, stateFlag3, mathHelper2, number5, number7, number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8, mathHelper3, mathHelper4, number11, number12)
  for playerPed, position in localValue3, localValue4, stateFlag11, workingValue13 do
    position2 = GetEntityModel
    workingValue18 = position
    -- Beginner: result below is modelHash.
    position2 = position2(workingValue18)
    workingValue18 = cmgOperation3
    workingValue18 = workingValue18[position2]
    if workingValue18 then
      workingValue18 = table
      workingValue18 = workingValue18.insert
      stateFlag = localValue2
      number3 = {}
      stateFlag3 = position
      mathHelper2 = position2
      number5 = GetEntityCoords
      number7 = position
      number9 = true
      number5, number7, number9, stateFlag5, stateFlag6, stateFlag7, stateFlag8, mathHelper3, mathHelper4, number11, number12 = number5(number7, number9)
      number3[1] = stateFlag3
      number3[2] = mathHelper2
      number3[3] = number5
      number3[4] = number7
      number3[5] = number9
      number3[6] = stateFlag5
      number3[7] = stateFlag6
      number3[8] = stateFlag7
      number3[9] = stateFlag8
      number3[10] = mathHelper3
      number3[11] = mathHelper4
      number3[12] = number11
      number3[13] = number12
      workingValue18(stateFlag, number3)
    end
  end
  localValue3 = table
  localValue3 = localValue3.sort
  localValue4 = localValue2

  -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: localValue12, localValue22) ===
  function stateFlag11(localValue12, localValue22)
    local workingValue8, rageUiOperation4, text8
    workingValue8 = localValue12[3]
    rageUiOperation4 = localValue1
    workingValue8 = workingValue8 - rageUiOperation4
    workingValue8 = #workingValue8
    rageUiOperation4 = localValue22[3]
    text8 = localValue1
    rageUiOperation4 = rageUiOperation4 - text8
    rageUiOperation4 = #rageUiOperation4
    workingValue8 = workingValue8 < rageUiOperation4
    return workingValue8
  end
  localValue3(localValue4, stateFlag11)
  localValue3 = ""
  localValue4 = pairs
  stateFlag11 = localValue2
  localValue4, stateFlag11, workingValue13, playerPed = localValue4(stateFlag11)
  for position, position2 in localValue4, stateFlag11, workingValue13, playerPed do
    workingValue18 = table
    workingValue18 = workingValue18.unpack
    stateFlag = position2
    workingValue18, stateFlag, number3 = workingValue18(stateFlag)
    stateFlag3 = GetEntityMatrix
    mathHelper2 = workingValue18
    stateFlag3, mathHelper2 = stateFlag3(mathHelper2)
    number5 = stateFlag3 * 0.042
    number7 = vector3
    number9 = number3.x
    stateFlag5 = number3.y
    stateFlag6 = number3.z
    stateFlag6 = stateFlag6 + 1.106
    number7 = number7(number9, stateFlag5, stateFlag6)
    number7 = number7 + number5
    number9 = mathHelper2 * -0.115
    number7 = number7 + number9
    number9 = vector3
    stateFlag5 = number3.x
    stateFlag6 = number3.y
    stateFlag7 = number3.z
    stateFlag7 = stateFlag7 + 1.106
    number9 = number9(stateFlag5, stateFlag6, stateFlag7)
    number9 = number9 + number5
    stateFlag5 = mathHelper2 * 0.005
    number9 = number9 + stateFlag5
    stateFlag5 = vector3
    stateFlag6 = number3.x
    stateFlag7 = number3.y
    stateFlag8 = number3.z
    stateFlag8 = stateFlag8 + 1.106
    stateFlag5 = stateFlag5(stateFlag6, stateFlag7, stateFlag8)
    stateFlag5 = stateFlag5 + number5
    stateFlag6 = mathHelper2 * 0.125
    stateFlag5 = stateFlag5 + stateFlag6
    stateFlag6 = stateFlag3 * 0.8
    stateFlag6 = number3 - stateFlag6
    stateFlag7 = localValue3
    stateFlag8 = [[
{
	]]
    stateFlag7 = stateFlag7 .. stateFlag8
    localValue3 = stateFlag7
    stateFlag7 = localValue3
    stateFlag8 = "type = \""
    mathHelper3 = cmgOperation3
    mathHelper3 = mathHelper3[stateFlag]
    mathHelper4 = [[
",
	]]
    stateFlag7 = stateFlag7 .. stateFlag8 .. mathHelper3 .. mathHelper4
    localValue3 = stateFlag7
    stateFlag7 = localValue3
    stateFlag8 = "position = "
    mathHelper3 = tostring
    mathHelper4 = number3
    mathHelper3 = mathHelper3(mathHelper4)
    mathHelper4 = [[
,
	]]
    stateFlag7 = stateFlag7 .. stateFlag8 .. mathHelper3 .. mathHelper4
    localValue3 = stateFlag7
    stateFlag7 = localValue3
    stateFlag8 = "chairPosition = "
    mathHelper3 = tostring
    mathHelper4 = stateFlag6
    mathHelper3 = mathHelper3(mathHelper4)
    mathHelper4 = [[
,
	]]
    stateFlag7 = stateFlag7 .. stateFlag8 .. mathHelper3 .. mathHelper4
    localValue3 = stateFlag7
    stateFlag7 = localValue3
    stateFlag8 = "heading = "
    mathHelper3 = tostring
    mathHelper4 = GetEntityHeading
    number11 = workingValue18
    mathHelper4, number11, number12 = mathHelper4(number11)
    mathHelper3 = mathHelper3(mathHelper4, number11, number12)
    mathHelper4 = [[
,
	]]
    stateFlag7 = stateFlag7 .. stateFlag8 .. mathHelper3 .. mathHelper4
    localValue3 = stateFlag7
    stateFlag7 = localValue3
    stateFlag8 = "rotation = "
    mathHelper3 = tostring
    mathHelper4 = GetEntityRotation
    number11 = workingValue18
    number12 = 2
    mathHelper4, number11, number12 = mathHelper4(number11, number12)
    mathHelper3 = mathHelper3(mathHelper4, number11, number12)
    mathHelper4 = [[
,
	]]
    stateFlag7 = stateFlag7 .. stateFlag8 .. mathHelper3 .. mathHelper4
    localValue3 = stateFlag7
    stateFlag7 = localValue3
    stateFlag8 = [[
reelPositions = {
		]]
    stateFlag7 = stateFlag7 .. stateFlag8
    localValue3 = stateFlag7
    stateFlag7 = localValue3
    stateFlag8 = tostring
    mathHelper3 = number7
    stateFlag8 = stateFlag8(mathHelper3)
    mathHelper3 = [[
,
		]]
    stateFlag7 = stateFlag7 .. stateFlag8 .. mathHelper3
    localValue3 = stateFlag7
    stateFlag7 = localValue3
    stateFlag8 = tostring
    mathHelper3 = number9
    stateFlag8 = stateFlag8(mathHelper3)
    mathHelper3 = [[
,
		]]
    stateFlag7 = stateFlag7 .. stateFlag8 .. mathHelper3
    localValue3 = stateFlag7
    stateFlag7 = localValue3
    stateFlag8 = tostring
    mathHelper3 = stateFlag5
    stateFlag8 = stateFlag8(mathHelper3)
    mathHelper3 = [[
,
	]]
    stateFlag7 = stateFlag7 .. stateFlag8 .. mathHelper3
    localValue3 = stateFlag7
    stateFlag7 = localValue3
    stateFlag8 = "},\n"
    stateFlag7 = stateFlag7 .. stateFlag8
    localValue3 = stateFlag7
    stateFlag7 = localValue3
    stateFlag8 = "},\n"
    stateFlag7 = stateFlag7 .. stateFlag8
    localValue3 = stateFlag7
    stateFlag7 = SetEntityDrawOutline
    stateFlag8 = workingValue18
    mathHelper3 = true
    stateFlag7(stateFlag8, mathHelper3)
  end
  localValue4 = TriggerServerEvent
  stateFlag11 = "9c644bf509"
  workingValue13 = localValue3
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9c644bf509".
  localValue4(stateFlag11, workingValue13)
end
stateFlag10 = true
number13(text7, workingValue9, stateFlag10)
number13 = pairs
text7 = cmgOperation.locations
number13, text7, workingValue9, stateFlag10 = number13(text7)
for workingValue10 in number13, text7, workingValue9, stateFlag10 do
  dataCollection2 = {}
  dataCollection[workingValue10] = dataCollection2
end
