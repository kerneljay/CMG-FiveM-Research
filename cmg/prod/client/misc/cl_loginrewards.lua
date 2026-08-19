--[[
    LEVEL 1 BEGINNER GUIDE — Loginrewards
    ==========================================

    File: cmg/prod/client/misc/cl_loginrewards.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Loginrewards feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 30
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
local cmgOperation, text2, text4, stateFlag5, rageUiOperation4, text8, text9, rageUiOperation5, rageUiOperation7, text13, stateFlag, workingValue, workingValue3, cmgOperation3, text, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14, rageUiOperation, text3, workingValue15, workingValue16, stateFlag4, text5
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text2 = "cfg/cfg_loginrewards"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text2)
text2 = RMenu
text2 = text2.Add
text4 = "loginrewards"
stateFlag5 = "mainmenu"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateMenu
text8 = ""
text9 = "Main Menu"
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuWidth
rageUiOperation5 = rageUiOperation5()
rageUiOperation7 = CMG
rageUiOperation7 = rageUiOperation7.getRageUIMenuHeight
rageUiOperation7 = rageUiOperation7()
text13 = "cmg_loginrewards"
stateFlag = "cmg_loginrewards"
rageUiOperation4, text8, text9, rageUiOperation5, rageUiOperation7, text13, stateFlag, workingValue, workingValue3, cmgOperation3, text, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14, rageUiOperation, text3, workingValue15, workingValue16, stateFlag4, text5 = rageUiOperation4(text8, text9, rageUiOperation5, rageUiOperation7, text13, stateFlag)
text2(text4, stateFlag5, rageUiOperation4, text8, text9, rageUiOperation5, rageUiOperation7, text13, stateFlag, workingValue, workingValue3, cmgOperation3, text, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue12, workingValue13, workingValue14, rageUiOperation, text3, workingValue15, workingValue16, stateFlag4, text5)
text2 = 0
text4 = 0
stateFlag5 = false
rageUiOperation4 = false
text8 = 0
text9 = cmgOperation.requiredPlaytimeMinutes
text9 = text9 * 60
rageUiOperation5 = 0
rageUiOperation7 = false
text13 = 0
stateFlag = false

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
function workingValue()
  local localValue1, localValue2
  localValue1 = 0
  text13 = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, text10, text11, text12, stateFlag6, number, stateFlag2
  localValue1 = CMG
  localValue1 = localValue1.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue1 = localValue1()
  localValue2 = GetSoundId
  -- Beginner: result below is soundHandle.
  localValue2 = localValue2()
  localValue3 = PlaySoundFromCoord
  localValue4 = localValue2
  localValue5 = "Spin_Single_Ticks"
  localValue6 = localValue1.x
  text10 = localValue1.y
  text11 = localValue1.z
  text12 = "dlc_vw_casino_lucky_wheel_sounds"
  stateFlag6 = false
  number = 0
  stateFlag2 = false
  localValue3(localValue4, localValue5, localValue6, text10, text11, text12, stateFlag6, number, stateFlag2)
  localValue3 = SetTimeout
  localValue4 = 400

  -- === HELPER FUNCTION: localValue5() ===
  function localValue5()
    local cmgOperation2, stringHelper
    cmgOperation2 = ReleaseSoundId
    stringHelper = localValue2
    cmgOperation2(stringHelper)
  end
  localValue3(localValue4, localValue5)
end
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.uiRegisterCallback
text = "dailyRewardReelTick"

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2
  localValue1 = rageUiOperation7
  if not localValue1 then
    localValue1 = {}
    return localValue1
  end
  localValue1 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue1 = localValue1()
  localValue2 = text13
  localValue2 = localValue1 - localValue2
  if localValue2 < 120 then
    localValue2 = {}
    return localValue2
  end
  text13 = localValue1
  localValue2 = workingValue3
  localValue2()
  localValue2 = {}
  return localValue2
end
cmgOperation3(text, workingValue5)

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1, localValue2) ===
function cmgOperation3(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, text10
  localValue3 = localValue2 or nil
  if not localValue2 then
    localValue3 = "You can claim this reward in"
  end
  localValue4 = localValue1.months
  if localValue4 then
    localValue4 = localValue1.months
    if localValue4 > 0 then
      localValue4 = localValue3
      localValue5 = " "
      localValue6 = tostring
      text10 = localValue1.months
      localValue6 = localValue6(text10)
      text10 = "m"
      localValue4 = localValue4 .. localValue5 .. localValue6 .. text10
      localValue3 = localValue4
    end
  end
  localValue4 = localValue1.days
  if localValue4 then
    localValue4 = localValue1.days
    if localValue4 > 0 then
      localValue4 = localValue3
      localValue5 = " "
      localValue6 = tostring
      text10 = localValue1.days
      localValue6 = localValue6(text10)
      text10 = "d"
      localValue4 = localValue4 .. localValue5 .. localValue6 .. text10
      localValue3 = localValue4
    end
  end
  localValue4 = localValue1.hours
  if localValue4 then
    localValue4 = localValue1.hours
    if localValue4 > 0 then
      localValue4 = localValue3
      localValue5 = " "
      localValue6 = tostring
      text10 = localValue1.hours
      localValue6 = localValue6(text10)
      text10 = "h"
      localValue4 = localValue4 .. localValue5 .. localValue6 .. text10
      localValue3 = localValue4
    end
  end
  localValue4 = localValue1.minutes
  if localValue4 then
    localValue4 = localValue1.minutes
    if localValue4 > 0 then
      localValue4 = localValue3
      localValue5 = " "
      localValue6 = tostring
      text10 = localValue1.minutes
      localValue6 = localValue6(text10)
      text10 = "m"
      localValue4 = localValue4 .. localValue5 .. localValue6 .. text10
      localValue3 = localValue4
    end
  end
  localValue4 = localValue1.seconds
  if localValue4 then
    localValue4 = localValue1.seconds
    if localValue4 > 0 then
      localValue4 = localValue3
      localValue5 = " "
      localValue6 = tostring
      text10 = localValue1.seconds
      localValue6 = localValue6(text10)
      text10 = "s"
      localValue4 = localValue4 .. localValue5 .. localValue6 .. text10
      localValue3 = localValue4
    end
  end
  localValue4 = localValue3
  localValue5 = "."
  localValue4 = localValue4 .. localValue5
  localValue3 = localValue4
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = stateFlag5
  if not localValue1 then
    localValue1 = text8
    return localValue1
  end
  localValue1 = text8
  localValue2 = math
  localValue2 = localValue2.floor
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  localValue4 = rageUiOperation5
  localValue3 = localValue3 - localValue4
  localValue3 = localValue3 / 1000
  localValue2 = localValue2(localValue3)
  localValue1 = localValue1 + localValue2
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
function workingValue5()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = math
  localValue1 = localValue1.max
  localValue2 = 0
  localValue3 = text9
  localValue4 = text
  localValue4 = localValue4()
  localValue3 = localValue3 - localValue4
  return localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
function workingValue6()
  local localValue1, localValue2, localValue3
  localValue1 = stateFlag5
  if not localValue1 then
    localValue1 = "You have already opened today's crate!"
    return localValue1
  end
  localValue1 = rageUiOperation4
  if not localValue1 then
    localValue1 = workingValue5
    localValue1 = localValue1()
    if not (localValue1 <= 0) then
      goto continueAtStep15
    end
  end
  localValue1 = "Open your daily reward crate!"
  return localValue1
  ::continueAtStep15::
  localValue1 = cmgOperation3
  localValue2 = formatTime
  localValue3 = workingValue5
  localValue3 = localValue3()
  localValue2 = localValue2(localValue3)
  localValue3 = "Play for"
  return localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, text10
  localValue3 = localValue1 - 1
  localValue4 = text2
  localValue3 = localValue3 - localValue4
  localValue4 = text4
  localValue5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue5 = localValue5()
  localValue4 = localValue4 - localValue5
  localValue5 = localValue3 * 86400000
  localValue4 = localValue4 + localValue5
  if localValue4 <= 0 then
    localValue5 = text2
    if localValue5 > 0 then
      localValue5 = "Unlocks after midnight."
      return localValue5
    end
  end
  if localValue2 then
    localValue5 = "You must claim the previous reward first."
    return localValue5
  end
  localValue5 = formatTime
  localValue6 = localValue4 / 1000
  localValue5 = localValue5(localValue6)
  localValue6 = cmgOperation3
  text10 = localValue5
  return localValue6(text10)
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1, localValue2) ===
function workingValue8(localValue1, localValue2)
  local localValue3
  if localValue2 then
    localValue3 = "CLAIMED"
    return localValue3
  end
  localValue3 = "LOOT CRATE"
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: none) ===
function workingValue9()
  local localValue1, localValue2
  localValue1 = rageUiOperation7
  if localValue1 then
    localValue1 = false
    return localValue1
  end
  localValue1 = stateFlag5
  if not localValue1 then
    localValue1 = false
    return localValue1
  end
  localValue1 = rageUiOperation4
  if localValue1 then
    localValue1 = true
    return localValue1
  end
  localValue1 = workingValue5
  localValue1 = localValue1()
  localValue1 = localValue1 <= 0
  return localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
function workingValue10()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6
  localValue1 = CMG
  localValue1 = localValue1.getClientDateTime
  localValue1 = localValue1()
  localValue2 = string
  localValue2 = localValue2.format
  localValue3 = "daily_reward_eligible_%04d-%02d-%02d"
  localValue4 = localValue1.year
  localValue5 = localValue1.month
  localValue6 = localValue1.day
  return localValue2(localValue3, localValue4, localValue5, localValue6)
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = stateFlag
  if localValue1 then
    return
  end
  localValue1 = workingValue10
  localValue1 = localValue1()
  localValue2 = GetResourceKvpString
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "1" == localValue2 then
    localValue2 = true
    stateFlag = localValue2
    return
  end
  localValue2 = true
  stateFlag = localValue2
  localValue2 = SetResourceKvp
  localValue3 = localValue1
  localValue4 = "1"
  localValue2(localValue3, localValue4)
  localValue2 = Citizen
  localValue2 = localValue2.CreateThread

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local cmgOperation2, stringHelper, rageUiOperation2, stringHelper2, text6
    cmgOperation2 = CMG
    cmgOperation2 = cmgOperation2.announceMpSmallMsg
    stringHelper = "DAILY REWARD"
    rageUiOperation2 = "You are now eligible! Use /daily to redeem your crate."
    stringHelper2 = 18
    text6 = 5000
    cmgOperation2(stringHelper, rageUiOperation2, stringHelper2, text6)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
function workingValue12()
  local localValue1, localValue2
  localValue1 = workingValue9
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = stateFlag5
    if localValue1 then
      localValue1 = workingValue11
      localValue1()
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = math
  localValue1 = localValue1.min
  localValue2 = cmgOperation.requiredPlaytimeMinutes
  localValue3 = math
  localValue3 = localValue3.floor
  localValue4 = text
  localValue4 = localValue4()
  localValue4 = localValue4 / 60
  localValue3, localValue4, localValue5 = localValue3(localValue4)
  localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
  localValue2 = string
  localValue2 = localValue2.format
  localValue3 = "Today's playtime: %d / %d mins"
  localValue4 = localValue1
  localValue5 = cmgOperation.requiredPlaytimeMinutes
  return localValue2(localValue3, localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = workingValue
  localValue1()
  localValue1 = false
  rageUiOperation7 = localValue1
  localValue1 = CMG
  localValue1 = localValue1.uiSetFocus
  localValue2 = false
  localValue3 = false
  localValue4 = false
  localValue1(localValue2, localValue3, localValue4)
  localValue1 = CMG
  localValue1 = localValue1.uiSendMessage
  localValue2 = {}
  localValue2.action = "DAILY_REWARD_CLOSE"
  localValue1(localValue2)
end
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateWhile
text3 = 1.0
workingValue15 = RMenu
workingValue16 = workingValue15
workingValue15 = workingValue15.Get
stateFlag4 = "loginrewards"
text5 = "mainmenu"
-- Beginner: result below is menu.
workingValue15 = workingValue15(workingValue16, stateFlag4, text5)
workingValue16 = nil

-- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
function stateFlag4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, text10
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "loginrewards"
  localValue5 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local cmgOperation2, stringHelper, rageUiOperation2, stringHelper2, text6, dataCollection2, workingValue17, rageUiOperation6, stringHelper3, text14, dataCollection, workingValue2, workingValue4, stateFlag3
    cmgOperation2 = text2
    if 0 == cmgOperation2 then
      cmgOperation2 = RageUI
      cmgOperation2 = cmgOperation2.Separator
      stringHelper = "You have no login streak."
      cmgOperation2(stringHelper)
    else
      cmgOperation2 = RageUI
      cmgOperation2 = cmgOperation2.Separator
      stringHelper = string
      stringHelper = stringHelper.format
      rageUiOperation2 = "Your login streak is %d %s."
      stringHelper2 = text2
      text6 = text2
      if text6 > 1 then
        text6 = "days"
        if text6 then
          goto continueAtStep22
        end
      end
      text6 = "day"
      ::continueAtStep22::
      stringHelper, rageUiOperation2, stringHelper2, text6, dataCollection2, workingValue17, rageUiOperation6, stringHelper3, text14, dataCollection, workingValue2, workingValue4, stateFlag3 = stringHelper(rageUiOperation2, stringHelper2, text6)
      cmgOperation2(stringHelper, rageUiOperation2, stringHelper2, text6, dataCollection2, workingValue17, rageUiOperation6, stringHelper3, text14, dataCollection, workingValue2, workingValue4, stateFlag3)
    end
    cmgOperation2 = stateFlag5
    if cmgOperation2 then
      cmgOperation2 = RageUI
      cmgOperation2 = cmgOperation2.Separator
      stringHelper = workingValue13
      stringHelper, rageUiOperation2, stringHelper2, text6, dataCollection2, workingValue17, rageUiOperation6, stringHelper3, text14, dataCollection, workingValue2, workingValue4, stateFlag3 = stringHelper()
      cmgOperation2(stringHelper, rageUiOperation2, stringHelper2, text6, dataCollection2, workingValue17, rageUiOperation6, stringHelper3, text14, dataCollection, workingValue2, workingValue4, stateFlag3)
    end
    cmgOperation2 = workingValue9
    cmgOperation2 = cmgOperation2()
    stringHelper = stateFlag5
    if stringHelper then
      stringHelper = text2
      stringHelper = stringHelper + 1
      if stringHelper then
        goto continueAtStep43
      end
    end
    stringHelper = text2
    ::continueAtStep43::
    if 0 == stringHelper then
      stringHelper = 1
    end
    rageUiOperation2 = RageUI
    rageUiOperation2 = rageUiOperation2.ButtonWithStyle
    stringHelper2 = string
    stringHelper2 = stringHelper2.format
    text6 = "Day %d Crate"
    dataCollection2 = stringHelper
    stringHelper2 = stringHelper2(text6, dataCollection2)
    text6 = workingValue6
    text6 = text6()
    dataCollection2 = {}
    workingValue17 = workingValue8
    rageUiOperation6 = stringHelper
    stringHelper3 = stateFlag5
    stringHelper3 = not cmgOperation2 and stringHelper3
    workingValue17 = workingValue17(rageUiOperation6, stringHelper3)
    dataCollection2.RightLabel = workingValue17
    workingValue17 = cmgOperation2

    -- === HELPER FUNCTION (decompiler name: rageUiOperation6; parameters: localValue12, localValue22, localValue32) ===
    function rageUiOperation6(localValue12, localValue22, localValue32)
      local rageUiOperation3, text7
      if localValue32 then
        rageUiOperation3 = RageUI
        rageUiOperation3 = rageUiOperation3.CloseAll
        rageUiOperation3()
        rageUiOperation3 = TriggerServerEvent
        text7 = "58fdce9920"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "58fdce9920".
        rageUiOperation3(text7)
      end
    end
    stringHelper3 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation2(stringHelper2, text6, dataCollection2, workingValue17, rageUiOperation6, stringHelper3)
    rageUiOperation2 = RageUI
    rageUiOperation2 = rageUiOperation2.Separator
    stringHelper2 = "Upcoming Rewards"
    rageUiOperation2(stringHelper2)
    if stringHelper < 7 then
      rageUiOperation2 = 5
      if rageUiOperation2 then
        goto continueAtStep82
      end
    end
    rageUiOperation2 = 3
    ::continueAtStep82::
    stringHelper2 = stringHelper + 1
    text6 = stringHelper + rageUiOperation2
    dataCollection2 = 1
    for workingValue17 = stringHelper2, text6, dataCollection2 do
      rageUiOperation6 = RageUI
      rageUiOperation6 = rageUiOperation6.ButtonWithStyle
      stringHelper3 = string
      stringHelper3 = stringHelper3.format
      text14 = "Day %d"
      dataCollection = workingValue17
      stringHelper3 = stringHelper3(text14, dataCollection)
      text14 = workingValue7
      dataCollection = workingValue17
      workingValue2 = cmgOperation2
      text14 = text14(dataCollection, workingValue2)
      dataCollection = {}
      workingValue2 = workingValue8
      workingValue4 = workingValue17
      stateFlag3 = false
      workingValue2 = workingValue2(workingValue4, stateFlag3)
      dataCollection.RightLabel = workingValue2
      workingValue2 = false

      -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
      function workingValue4()
        local localValue12, localValue22
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation6(stringHelper3, text14, dataCollection, workingValue2, workingValue4)
    end
    if stringHelper < 55 then
      stringHelper2 = RageUI
      stringHelper2 = stringHelper2.ButtonWithStyle
      text6 = "Day 60"
      dataCollection2 = workingValue7
      workingValue17 = 60
      rageUiOperation6 = cmgOperation2
      dataCollection2 = dataCollection2(workingValue17, rageUiOperation6)
      workingValue17 = {}
      rageUiOperation6 = workingValue8
      stringHelper3 = 60
      text14 = false
      rageUiOperation6 = rageUiOperation6(stringHelper3, text14)
      workingValue17.RightLabel = rageUiOperation6
      rageUiOperation6 = false

      -- === HELPER FUNCTION: stringHelper3() ===
      function stringHelper3()
        local localValue12, localValue22
      end
      stringHelper2(text6, dataCollection2, workingValue17, rageUiOperation6, stringHelper3)
    end
    if stringHelper < 115 then
      stringHelper2 = RageUI
      stringHelper2 = stringHelper2.ButtonWithStyle
      text6 = "Day 120"
      dataCollection2 = workingValue7
      workingValue17 = 120
      rageUiOperation6 = cmgOperation2
      dataCollection2 = dataCollection2(workingValue17, rageUiOperation6)
      workingValue17 = {}
      rageUiOperation6 = workingValue8
      stringHelper3 = 120
      text14 = false
      rageUiOperation6 = rageUiOperation6(stringHelper3, text14)
      workingValue17.RightLabel = rageUiOperation6
      rageUiOperation6 = false

      -- === HELPER FUNCTION: stringHelper3() ===
      function stringHelper3()
        local localValue12, localValue22
      end
      -- Beginner: Draw a selectable RageUI menu button.
      stringHelper2(text6, dataCollection2, workingValue17, rageUiOperation6, stringHelper3)
    end
  end

  -- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
  function text10()
    local cmgOperation2, stringHelper
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, text10)
end
rageUiOperation(text3, workingValue15, workingValue16, stateFlag4)
rageUiOperation = RegisterNetEvent
text3 = "dcdc8aedbe"
-- Beginner: this function handles network event "dcdc8aedbe".

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6) ===
function workingValue15(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6)
  local text10, text11, text12, stateFlag6, number, stateFlag2
  text2 = localValue1
  stateFlag5 = localValue2
  rageUiOperation4 = localValue3
  text8 = localValue5
  text9 = localValue6
  text10 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  text10 = text10()
  rageUiOperation5 = text10
  if localValue2 and localValue3 then
    text10 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    text10 = text10()
    text10 = text10 - 1
    text4 = text10
  else
    text10 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    text10 = text10()
    text11 = localValue4 * 1000
    text10 = text10 + text11
    text4 = text10
  end
  text10 = CMG
  text10 = text10.getTunableValue
  text11 = "motd"
  text10 = text10(text11)
  text11 = #text10
  if text11 > 1 then
    text11 = GetResourceKvpString
    text12 = "last_motd"
    text11 = text11(text12)
    if not text11 or text11 ~= text10 then
      text12 = notify
      stateFlag6 = [[
~h~Message of the day:
~h~~y~]]
      number = text10
      stateFlag2 = "~w~"
      stateFlag6 = stateFlag6 .. number .. stateFlag2
      -- Beginner: Show a notification to the player.
      text12(stateFlag6)
      text12 = SetResourceKvp
      stateFlag6 = "last_motd"
      number = text10
      text12(stateFlag6, number)
    end
  end
  text11 = workingValue12
  text11()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "dcdc8aedbe".
rageUiOperation(text3, workingValue15)
rageUiOperation = RegisterNetEvent
text3 = "6de51e7a96"
-- Beginner: this function handles network event "6de51e7a96".

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1) ===
function workingValue15(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = true
  rageUiOperation7 = localValue2
  localValue2 = CMG
  localValue2 = localValue2.uiSetFocus
  localValue3 = true
  localValue4 = true
  localValue5 = false
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = CMG
  localValue2 = localValue2.uiSendMessage
  localValue3 = {}
  localValue3.action = "DAILY_REWARD_OPEN"
  localValue3.payload = localValue1
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6de51e7a96".
rageUiOperation(text3, workingValue15)
rageUiOperation = CMG
rageUiOperation = rageUiOperation.uiRegisterCallback
text3 = "dailyRewardLootboxClose"

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, localValue2
  localValue1 = workingValue14
  localValue1()
  localValue1 = TriggerServerEvent
  localValue2 = "102e276787"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "102e276787".
  localValue1(localValue2)
  localValue1 = {}
  return localValue1
end
rageUiOperation(text3, workingValue15)

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: none) ===
function rageUiOperation()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = TriggerServerEvent
  localValue2 = "90f1f4ffc8"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "90f1f4ffc8".
  localValue1(localValue2)
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "loginrewards"
  localValue5 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue1(localValue2, localValue3)
end
text3 = RegisterCommand
workingValue15 = "dailyrewards"
workingValue16 = rageUiOperation
stateFlag4 = false
-- Beginner: Register a chat/console command. Event/command: "dailyrewards".
text3(workingValue15, workingValue16, stateFlag4)
text3 = RegisterCommand
workingValue15 = "daily"
workingValue16 = rageUiOperation
stateFlag4 = false
text3(workingValue15, workingValue16, stateFlag4)
text3 = Citizen
text3 = text3.CreateThread
-- Beginner: this function is the command handler for "daily".

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, localValue2
  while true do
    localValue1 = workingValue12
    localValue1()
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 6000
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text3(workingValue15)
text3 = Citizen
text3 = text3.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  while true do
    localValue1 = RageUI
    localValue1 = localValue1.Visible
    localValue2 = RMenu
    localValue3 = localValue2
    localValue2 = localValue2.Get
    localValue4 = "loginrewards"
    localValue5 = "mainmenu"
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3, localValue4, localValue5)
    -- Beginner: result below is menuVisible.
    localValue1 = localValue1(localValue2, localValue3, localValue4, localValue5)
    if localValue1 then
      localValue1 = TriggerServerEvent
      localValue2 = "90f1f4ffc8"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "90f1f4ffc8".
      localValue1(localValue2)
      localValue1 = Citizen
      localValue1 = localValue1.Wait
      localValue2 = 30000
      localValue1(localValue2)
    else
      localValue1 = Citizen
      localValue1 = localValue1.Wait
      localValue2 = 1000
      localValue1(localValue2)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text3(workingValue15)
