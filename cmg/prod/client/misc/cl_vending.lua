--[[
    LEVEL 1 BEGINNER GUIDE — Vending
    =====================================

    File: cmg/prod/client/misc/cl_vending.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Vending feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 120
      * Background threads: 0
      * Always-running loops: 24
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
        playerCoords = GetEntityCoords(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      Temporary variables use conservative plain-English fallback names.
      Decompiled code can reuse one temporary for several purposes, so API calls
      and nearby comments explain the exact role at each point.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local vendingConfig, addTextEntry, beginHelpText, endHelpText, getEntityCoords, world3dToScreen2d, setTextScale, setTextFont, setTextEntry, setTextCentre, addTextComponentString, drawText, triggerClientEvent, vendingRuntime, replaceTextTokens, number4, number6, workingValue12, workingValue13, workingValue14, workingValue15, workingValue16, workingValue17, workingValue18, workingValue19, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, workingValue26, workingValue27, workingValue29, workingValue31, workingValue33, workingValue35, workingValue36, workingValue37, workingValue38, workingValue39, workingValue43, workingValue44, workingValue45, workingValue46, workingValue47, workingValue48, workingValue49, workingValue50, number10, backgroundThread, backgroundThread2, number11, workingValue52, workingValue53, workingValue54, workingValue55, dataCollection6, workingValue56, workingValue57, workingValue58, workingValue62, workingValue63, workingValue64, workingValue65, workingValue66, workingValue67, workingValue68, workingValue69, workingValue70, workingValue71, dataCollection7, workingValue74, workingValue75, workingValue76, workingValue77, workingValue78, workingValue79, workingValue80, workingValue81, workingValue82, workingValue85, workingValue86, eventHandler, text8, workingValue87, iterator3, workingValue88, workingValue89, workingValue90, workingValue91, workingValue96, iterator4, dataCollection8, workingValue97, workingValue98, workingValue99, workingValue100, workingValue101

vendingConfig = CMG.loadModule("cfg/cfg_vending")
addTextEntry = AddTextEntry
beginHelpText = BeginTextCommandDisplayHelp
endHelpText = EndTextCommandDisplayHelp
getEntityCoords = GetEntityCoords
world3dToScreen2d = World3dToScreen2d
setTextScale = SetTextScale
setTextFont = SetTextFont
setTextEntry = SetTextEntry
setTextCentre = SetTextCentre
addTextComponentString = AddTextComponentString
drawText = DrawText
triggerClientEvent = TriggerEvent

vendingRuntime = {
  Marker = {},
  N3d = {},
  SetData = {},
  SliceGroups = {},
  Events = {}
}

-- Replaces template tokens such as "%s" with values from the supplied list/table.
function replaceTextTokens(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2
  localValue4 = 1
  localValue5 = #localValue2
  localValue6 = 1
  for localValue7 = localValue4, localValue5, localValue6 do
    localValue8 = string
    localValue8 = localValue8.gsub
    workingValue93 = localValue1
    workingValue103 = localValue2[localValue7]
    workingValue2 = localValue3[localValue7]
    if not workingValue2 then
      workingValue2 = localValue3
    end
    localValue8 = localValue8(workingValue93, workingValue103, workingValue2)
    localValue1 = localValue8
  end
  return localValue1
end
number4 = 100.0
number6 = 8100
workingValue12 = number6 / number4

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: localValue1) ===
function workingValue13(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = math
  localValue2 = localValue2.floor
  localValue3 = localValue1.x
  localValue4 = number4
  localValue3 = localValue3 / localValue4
  localValue2 = localValue2(localValue3)
  localValue3 = math
  localValue3 = localValue3.floor
  localValue4 = localValue1.y
  localValue5 = number4
  localValue4 = localValue4 / localValue5
  localValue3 = localValue3(localValue4)
  localValue4 = localValue3
  localValue5 = localValue2
  return localValue4, localValue5
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue1) ===
function workingValue14(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = workingValue13
  localValue3 = localValue1
  localValue2, localValue3 = localValue2(localValue3)
  localValue4 = math
  localValue4 = localValue4.floor
  localValue5 = workingValue12
  localValue5 = localValue2 * localValue5
  localValue5 = localValue5 + localValue3
  return localValue4(localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: none) ===
function workingValue15()
  local localValue1, localValue2, localValue3
  localValue1 = workingValue14
  localValue2 = GetEntityCoords
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue2, localValue3 = localValue2(localValue3)
  return localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue1) ===
function workingValue16(localValue1)
  local localValue2
  localValue2 = vendingRuntime.SliceGroups
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    localValue2 = false
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1, localValue2) ===
function workingValue17(localValue1, localValue2)
  local localValue3, localValue4
  localValue3 = tonumber
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  localValue1 = localValue3
  if not localValue1 then
    return
  end
  if localValue2 then
    localValue3 = vendingRuntime.SliceGroups
    localValue3[localValue1] = localValue2
  else
    localValue3 = vendingRuntime.SliceGroups
    localValue3[localValue1] = nil
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8) ===
function workingValue18(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
  local workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3
  workingValue93 = HasAnimDictLoaded
  workingValue103 = localValue2
  workingValue93 = workingValue93(workingValue103)
  if not workingValue93 then
    workingValue93 = RequestAnimDict
    workingValue103 = localValue2
    workingValue93(workingValue103)
    while true do
      workingValue93 = HasAnimDictLoaded
      workingValue103 = localValue2
      workingValue93 = workingValue93(workingValue103)
      if workingValue93 then
        break
      end
      workingValue93 = Citizen
      workingValue93 = workingValue93.Wait
      workingValue103 = 1
      workingValue93(workingValue103)
    end
  end
  workingValue93 = TaskPlayAnim
  workingValue103 = localValue1
  workingValue2 = localValue2
  workingValue6 = localValue3
  number = localValue4 or number
  if not localValue4 then
    number = 2.0
  end
  number2 = localValue5 or number2
  if not localValue5 then
    number2 = 2.0
  end
  number3 = localValue6 or number3
  if not localValue6 then
    number3 = -1
  end
  number5 = localValue7 or number5
  if not localValue7 then
    number5 = 0
  end
  number7 = localValue8 or number7
  if not localValue8 then
    number7 = 0
  end
  stateFlag = false
  stateFlag2 = false
  stateFlag3 = false
  -- Beginner: Play an animation on a ped.
  workingValue93(workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3)
  workingValue93 = RemoveAnimDict
  workingValue103 = localValue2
  workingValue93(workingValue103)
end

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue19(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number
  if nil == localValue3 then
    localValue3 = 51
  end
  if nil == localValue4 then
    localValue4 = -1
  end
  localValue5 = workingValue18
  localValue6 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue6 = localValue6()
  localValue7 = localValue1
  localValue8 = localValue2
  workingValue93 = 2.0
  workingValue103 = 2.0
  workingValue2 = localValue4
  workingValue6 = localValue3
  number = 0
  localValue5(localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number)
end

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function workingValue20(localValue1, localValue2, localValue3, localValue4, localValue5)
  local localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag
  if localValue1 then
    localValue6 = world3dToScreen2d
    localValue7 = localValue1.x
    localValue8 = localValue1.y
    workingValue93 = localValue1.z
    localValue6, localValue7, localValue8 = localValue6(localValue7, localValue8, workingValue93)
    if localValue6 then
      workingValue93 = setTextScale
      workingValue103 = localValue3 or workingValue103
      if not localValue3 then
        workingValue103 = 0.35
      end
      workingValue2 = localValue3 or workingValue2
      if not localValue3 then
        workingValue2 = 0.35
      end
      workingValue93(workingValue103, workingValue2)
      workingValue93 = setTextFont
      workingValue103 = localValue4 or workingValue103
      if not localValue4 then
        workingValue103 = 4
      end
      workingValue93(workingValue103)
      workingValue93 = setTextEntry
      workingValue103 = "STRING"
      workingValue93(workingValue103)
      workingValue93 = setTextCentre
      workingValue103 = true
      workingValue93(workingValue103)
      workingValue93 = addTextComponentString
      workingValue103 = localValue2
      workingValue93(workingValue103)
      workingValue93 = drawText
      workingValue103 = localValue7
      workingValue2 = localValue8
      workingValue93(workingValue103, workingValue2)
      if localValue5 then
        workingValue93 = string
        workingValue93 = workingValue93.len
        workingValue103 = localValue2
        workingValue93 = workingValue93(workingValue103)
        workingValue93 = workingValue93 / 370
        workingValue103 = DrawRect
        workingValue2 = localValue7
        workingValue6 = localValue8 + 0.0125
        number = 0.025 + workingValue93
        number2 = 0.025
        number3 = 0
        number5 = 0
        number7 = 0
        stateFlag = 90
        workingValue103(workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue1, localValue2) ===
function workingValue21(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7
  localValue3 = addTextEntry
  localValue4 = "ButtonNotificationInternal"
  localValue5 = localValue1
  localValue3(localValue4, localValue5)
  localValue3 = beginHelpText
  localValue4 = "ButtonNotificationInternal"
  localValue3(localValue4)
  localValue3 = endHelpText
  localValue4 = 0
  localValue5 = true
  localValue6 = localValue2 or localValue6
  if not localValue2 then
    localValue6 = true
  end
  localValue7 = -1
  localValue3(localValue4, localValue5, localValue6, localValue7)
end

-- === HELPER FUNCTION (decompiler name: workingValue22; parameters: localValue1, localValue2) ===
function workingValue22(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6, iterator, text7
  localValue3 = string
  localValue3 = localValue3.match
  localValue4 = localValue1
  localValue5 = "{.*}"
  localValue3 = localValue3(localValue4, localValue5)
  if localValue3 then
    localValue3 = replaceTextTokens
    localValue4 = localValue1
    localValue5 = {}
    localValue6 = "{A}"
    localValue7 = "{B}"
    localValue8 = "{C}"
    workingValue93 = "{D}"
    workingValue103 = "{E}"
    workingValue2 = "{F}"
    workingValue6 = "{G}"
    number = "{H}"
    number2 = "{L}"
    number3 = "{M}"
    number5 = "{N}"
    number7 = "{O}"
    stateFlag = "{P}"
    stateFlag2 = "{Q}"
    stateFlag3 = "{R}"
    dataCollection3 = "{S}"
    text2 = "{T}"
    text3 = "{U}"
    text4 = "{V}"
    text5 = "{W}"
    dataCollection4 = "{X}"
    text6 = "{Y}"
    iterator = "{Z}"
    localValue5[1] = localValue6
    localValue5[2] = localValue7
    localValue5[3] = localValue8
    localValue5[4] = workingValue93
    localValue5[5] = workingValue103
    localValue5[6] = workingValue2
    localValue5[7] = workingValue6
    localValue5[8] = number
    localValue5[9] = number2
    localValue5[10] = number3
    localValue5[11] = number5
    localValue5[12] = number7
    localValue5[13] = stateFlag
    localValue5[14] = stateFlag2
    localValue5[15] = stateFlag3
    localValue5[16] = dataCollection3
    localValue5[17] = text2
    localValue5[18] = text3
    localValue5[19] = text4
    localValue5[20] = text5
    localValue5[21] = dataCollection4
    localValue5[22] = text6
    localValue5[23] = iterator
    localValue6 = {}
    localValue7 = "~INPUT_VEH_FLY_YAW_LEFT~"
    localValue8 = "~INPUT_SPECIAL_ABILITY_SECONDARY~"
    workingValue93 = "~INPUT_LOOK_BEHIND~"
    workingValue103 = "~INPUT_MOVE_RIGHT_ONLY~"
    workingValue2 = "~INPUT_CONTEXT~"
    workingValue6 = "~INPUT_ARREST~"
    number = "~INPUT_DETONATE~"
    number2 = "~INPUT_VEH_ROOF~"
    number3 = "~INPUT_CELLPHONE_CAMERA_FOCUS_LOCK~"
    number5 = "~INPUT_INTERACTION_MENU~"
    number7 = "~INPUT_REPLAY_ENDPOINT~"
    stateFlag = "~INPUT_FRONTEND_PAUSE~"
    stateFlag2 = "~INPUT_FRONTEND_LB~"
    stateFlag3 = "~INPUT_RELOAD~"
    dataCollection3 = "~INPUT_MOVE_DOWN_ONLY~"
    text2 = "~INPUT_MP_TEXT_CHAT_ALL~"
    text3 = "~INPUT_REPLAY_SCREENSHOT~"
    text4 = "~INPUT_NEXT_CAMERA~"
    text5 = "~INPUT_MOVE_UP_ONLY~"
    dataCollection4 = "~INPUT_VEH_HOTWIRE_LEFT~"
    text6 = "~INPUT_VEH_DUCK~"
    iterator = "~INPUT_MP_TEXT_CHAT_TEAM~"
    text7 = "~INPUT_HUD_SPECIAL~"
    localValue6[1] = localValue7
    localValue6[2] = localValue8
    localValue6[3] = workingValue93
    localValue6[4] = workingValue103
    localValue6[5] = workingValue2
    localValue6[6] = workingValue6
    localValue6[7] = number
    localValue6[8] = number2
    localValue6[9] = number3
    localValue6[10] = number5
    localValue6[11] = number7
    localValue6[12] = stateFlag
    localValue6[13] = stateFlag2
    localValue6[14] = stateFlag3
    localValue6[15] = dataCollection3
    localValue6[16] = text2
    localValue6[17] = text3
    localValue6[18] = text4
    localValue6[19] = text5
    localValue6[20] = dataCollection4
    localValue6[21] = text6
    localValue6[22] = iterator
    localValue6[23] = text7
    localValue3 = localValue3(localValue4, localValue5, localValue6)
    localValue1 = localValue3
  end
  if nil == localValue2 then
    localValue2 = true
  end
  localValue3 = addTextEntry
  localValue4 = "ButtonNotification"
  localValue5 = string
  localValue5 = localValue5.len
  localValue6 = localValue1
  localValue5 = localValue5(localValue6)
  localValue4 = localValue4 .. localValue5
  localValue5 = localValue1
  localValue3(localValue4, localValue5)
  localValue3 = beginHelpText
  localValue4 = "ButtonNotification"
  localValue5 = string
  localValue5 = localValue5.len
  localValue6 = localValue1
  localValue5 = localValue5(localValue6)
  localValue4 = localValue4 .. localValue5
  localValue3(localValue4)
  localValue3 = endHelpText
  localValue4 = 0
  localValue5 = false
  localValue6 = localValue2
  localValue7 = -1
  localValue3(localValue4, localValue5, localValue6, localValue7)
end

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue1, localValue2) ===
function workingValue23(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  localValue4 = Citizen
  localValue4 = localValue4.CreateThread

  -- === HELPER FUNCTION: localValue5() ===
  function localValue5()
    local localValue12, localValue22
    while true do
      localValue12 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue12 = localValue12()
      localValue22 = localValue3
      localValue12 = localValue12 - localValue22
      localValue22 = localValue2
      if not localValue22 then
        localValue22 = 5000
      end
      if not (localValue12 < localValue22) then
        break
      end
      localValue12 = workingValue22
      localValue22 = localValue1
      localValue12(localValue22)
      localValue12 = Citizen
      localValue12 = localValue12.Wait
      localValue22 = 1
      localValue12(localValue22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue4(localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue24; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function workingValue24(localValue1, localValue2, localValue3, localValue4, localValue5)
  local localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6, iterator, text7, dataCollection5, iterator2, workingValue28, workingValue30, workingValue32, workingValue34, stateFlag4, stateFlag5, stateFlag6, stateFlag7, workingValue40
  localValue6 = 10
  localValue7 = 0.01
  localValue8 = 1.0E-7
  workingValue93 = 10
  workingValue103 = 11
  workingValue2 = workingValue103 - 1.0
  workingValue6 = 1.0
  workingValue2 = workingValue6 / workingValue2

  -- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue12, localValue22) ===
  function workingValue6(localValue12, localValue22)
    local localValue32, localValue42
    localValue32 = 3.0 * localValue22
    localValue42 = 1.0
    localValue32 = localValue42 - localValue32
    localValue42 = 3.0 * localValue12
    localValue32 = localValue32 + localValue42
    return localValue32
  end

  -- === HELPER FUNCTION (decompiler name: number; parameters: localValue12, localValue22) ===
  function number(localValue12, localValue22)
    local localValue32, localValue42
    localValue32 = 3.0 * localValue22
    localValue42 = 6.0 * localValue12
    localValue32 = localValue32 - localValue42
    return localValue32
  end

  -- === HELPER FUNCTION (decompiler name: number2; parameters: localValue12) ===
  function number2(localValue12)
    local localValue22
    localValue22 = 3.0 * localValue12
    return localValue22
  end

  -- === HELPER FUNCTION (decompiler name: number3; parameters: localValue12, localValue22, localValue32) ===
  function number3(localValue12, localValue22, localValue32)
    local localValue42, localValue52, workingValue60, number12
    localValue42 = workingValue6
    localValue52 = localValue22
    workingValue60 = localValue32
    localValue42 = localValue42(localValue52, workingValue60)
    localValue42 = localValue42 * localValue12
    localValue52 = number
    workingValue60 = localValue22
    number12 = localValue32
    localValue52 = localValue52(workingValue60, number12)
    localValue42 = localValue42 + localValue52
    localValue42 = localValue42 * localValue12
    localValue52 = number2
    workingValue60 = localValue22
    localValue52 = localValue52(workingValue60)
    localValue42 = localValue42 + localValue52
    localValue42 = localValue42 * localValue12
    return localValue42
  end

  -- === HELPER FUNCTION (decompiler name: number5; parameters: localValue12, localValue22, localValue32) ===
  function number5(localValue12, localValue22, localValue32)
    local localValue42, localValue52, workingValue60, number12
    localValue42 = workingValue6
    localValue52 = localValue22
    workingValue60 = localValue32
    localValue42 = localValue42(localValue52, workingValue60)
    localValue42 = 3.0 * localValue42
    localValue42 = localValue42 * localValue12
    localValue42 = localValue42 * localValue12
    localValue52 = number
    workingValue60 = localValue22
    number12 = localValue32
    localValue52 = localValue52(workingValue60, number12)
    localValue52 = 2.0 * localValue52
    localValue52 = localValue52 * localValue12
    localValue42 = localValue42 + localValue52
    localValue52 = number2
    workingValue60 = localValue22
    localValue52 = localValue52(workingValue60)
    localValue42 = localValue42 + localValue52
    return localValue42
  end

  -- === HELPER FUNCTION (decompiler name: number7; parameters: localValue12, localValue22, localValue32, localValue42, localValue52) ===
  function number7(localValue12, localValue22, localValue32, localValue42, localValue52)
    local workingValue60, number12, number13, workingValue94, workingValue104, workingValue3, workingValue7
    workingValue60 = 0
    number12 = 0
    number13 = 0
    repeat
      workingValue94 = localValue32 - localValue22
      workingValue94 = workingValue94 / 2.0
      number12 = localValue22 + workingValue94
      workingValue94 = number3
      workingValue104 = number12
      workingValue3 = localValue42
      workingValue7 = localValue52
      workingValue94 = workingValue94(workingValue104, workingValue3, workingValue7)
      workingValue60 = workingValue94 - localValue12
      if workingValue60 > 0.0 then
        localValue32 = number12
      else
        localValue22 = number12
      end
      number13 = number13 + 1
      workingValue94 = math
      workingValue94 = workingValue94.abs
      workingValue104 = workingValue60
      workingValue94 = workingValue94(workingValue104)
      workingValue104 = localValue8
      if workingValue94 <= workingValue104 then
        break
      end
      workingValue94 = workingValue93
    until number13 >= workingValue94
    return number12
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag; parameters: localValue12, localValue22, localValue32, localValue42) ===
  function stateFlag(localValue12, localValue22, localValue32, localValue42)
    local localValue52, workingValue60, number12, number13, workingValue94, workingValue104, workingValue3, workingValue7, workingValue9
    localValue52 = 1
    workingValue60 = localValue6
    number12 = 1
    for number13 = localValue52, workingValue60, number12 do
      workingValue94 = number5
      workingValue104 = localValue22
      workingValue3 = localValue32
      workingValue7 = localValue42
      workingValue94 = workingValue94(workingValue104, workingValue3, workingValue7)
      if 0.0 == workingValue94 then
        return localValue22
      end
      workingValue104 = number3
      workingValue3 = localValue22
      workingValue7 = localValue32
      workingValue9 = localValue42
      workingValue104 = workingValue104(workingValue3, workingValue7, workingValue9)
      workingValue104 = workingValue104 - localValue12
      workingValue104 = workingValue104 / workingValue94
      localValue22 = localValue22 - workingValue104
    end
    return localValue22
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue12, localValue22, localValue32, localValue42) ===
  function stateFlag2(localValue12, localValue22, localValue32, localValue42)
    local localValue52, workingValue60, number12, number13, workingValue94, workingValue104, workingValue3, workingValue7, workingValue9
    if localValue12 == localValue22 and localValue32 == localValue42 then

      -- === HELPER FUNCTION: localValue52(localValue13) ===
      function localValue52(localValue13)
        local number8
        return localValue13
      end
      return localValue52
    end
    localValue52 = {}
    workingValue60 = 1
    number12 = workingValue103
    number13 = 1
    for workingValue94 = workingValue60, number12, number13 do
      workingValue104 = number3
      workingValue3 = workingValue94 - 1
      workingValue7 = workingValue2
      workingValue3 = workingValue3 * workingValue7
      workingValue7 = localValue12
      workingValue9 = localValue32
      workingValue104 = workingValue104(workingValue3, workingValue7, workingValue9)
      localValue52[workingValue94] = workingValue104
    end

    -- === HELPER FUNCTION (decompiler name: workingValue60; parameters: localValue13) ===
    function workingValue60(localValue13)
      local number8, number9, workingValue42, workingValue51, workingValue61, workingValue73, workingValue84, workingValue95, workingValue105, workingValue4, workingValue8, workingValue10, workingValue11
      number8 = 0.0
      number9 = 1
      workingValue42 = workingValue103
      workingValue42 = workingValue42 - 1
      while number9 ~= workingValue42 do
        workingValue51 = localValue52
        workingValue51 = workingValue51[number9]
        if not (localValue13 >= workingValue51) then
          break
        end
        workingValue51 = workingValue2
        number8 = number8 + workingValue51
        number9 = number9 + 1
      end
      number9 = number9 - 1
      if number9 < 1 then
        number9 = 1
      end
      workingValue51 = workingValue103
      if number9 >= workingValue51 then
        workingValue51 = workingValue103
        number9 = workingValue51 - 1
      end
      workingValue61 = number9 + 1
      workingValue51 = localValue52
      workingValue51 = workingValue51[workingValue61]
      workingValue61 = localValue52
      workingValue61 = workingValue61[number9]
      workingValue51 = workingValue51 - workingValue61
      if 0 == workingValue51 then
        return number8
      end
      workingValue61 = localValue52
      workingValue61 = workingValue61[number9]
      workingValue61 = localValue13 - workingValue61
      workingValue61 = workingValue61 / workingValue51
      workingValue73 = workingValue2
      workingValue73 = workingValue61 * workingValue73
      workingValue73 = number8 + workingValue73
      workingValue84 = number5
      workingValue95 = workingValue73
      workingValue105 = localValue12
      workingValue4 = localValue32
      workingValue84 = workingValue84(workingValue95, workingValue105, workingValue4)
      workingValue95 = localValue7
      if workingValue84 >= workingValue95 then
        workingValue95 = stateFlag
        workingValue105 = localValue13
        workingValue4 = workingValue73
        workingValue8 = localValue12
        workingValue10 = localValue32
        return workingValue95(workingValue105, workingValue4, workingValue8, workingValue10)
      elseif 0.0 == workingValue84 then
        return workingValue73
      else
        workingValue95 = number7
        workingValue105 = localValue13
        workingValue4 = number8
        workingValue8 = workingValue2
        workingValue8 = number8 + workingValue8
        workingValue10 = localValue12
        workingValue11 = localValue32
        return workingValue95(workingValue105, workingValue4, workingValue8, workingValue10, workingValue11)
      end
    end

    -- === HELPER FUNCTION (decompiler name: number12; parameters: localValue13) ===
    function number12(localValue13)
      local number8, number9, workingValue42, workingValue51
      if localValue13 <= 0 then
        number8 = 0
        return number8
      end
      if localValue13 >= 1 then
        number8 = 1
        return number8
      end
      number8 = number3
      number9 = workingValue60
      workingValue42 = localValue13
      number9 = number9(workingValue42)
      workingValue42 = localValue22
      workingValue51 = localValue42
      return number8(number9, workingValue42, workingValue51)
    end
    return number12
  end
  stateFlag3 = {}
  dataCollection3 = {}
  text2 = 0.25
  text3 = 0.1
  text4 = 0.25
  text5 = 1
  dataCollection3[1] = text2
  dataCollection3[2] = text3
  dataCollection3[3] = text4
  dataCollection3[4] = text5
  stateFlag3.ease = dataCollection3
  dataCollection3 = {}
  text2 = 0.42
  text3 = 0
  text4 = 1
  text5 = 1
  dataCollection3[1] = text2
  dataCollection3[2] = text3
  dataCollection3[3] = text4
  dataCollection3[4] = text5
  stateFlag3.easeIn = dataCollection3
  dataCollection3 = {}
  text2 = 0
  text3 = 0
  text4 = 0.58
  text5 = 1
  dataCollection3[1] = text2
  dataCollection3[2] = text3
  dataCollection3[3] = text4
  dataCollection3[4] = text5
  stateFlag3.easeOut = dataCollection3
  dataCollection3 = {}
  text2 = 0.42
  text3 = 0
  text4 = 0.58
  text5 = 1
  dataCollection3[1] = text2
  dataCollection3[2] = text3
  dataCollection3[3] = text4
  dataCollection3[4] = text5
  stateFlag3.easeInOut = dataCollection3
  if not localValue5 then
    dataCollection3 = {}
    text2 = 0.1
    text3 = 0.1
    text4 = 0.1
    text5 = 0.1
    dataCollection3[1] = text2
    dataCollection3[2] = text3
    dataCollection3[3] = text4
    dataCollection3[4] = text5
    localValue5 = dataCollection3
  end
  dataCollection3 = type
  text2 = localValue5
  dataCollection3 = dataCollection3(text2)
  if "string" == dataCollection3 then
    localValue5 = stateFlag3[localValue5]
    if not localValue5 then
      dataCollection3 = error
      text2 = "translateObjectRotationCubicBezier: unknown predefined bezier"
      dataCollection3(text2)
      return
    end
  end
  dataCollection3 = stateFlag2
  text2 = table
  text2 = text2.unpack
  text3 = localValue5
  text2, text3, text4, text5, dataCollection4, text6, iterator, text7, dataCollection5, iterator2, workingValue28, workingValue30, workingValue32, workingValue34, stateFlag4, stateFlag5, stateFlag6, stateFlag7, workingValue40 = text2(text3)
  dataCollection3 = dataCollection3(text2, text3, text4, text5, dataCollection4, text6, iterator, text7, dataCollection5, iterator2, workingValue28, workingValue30, workingValue32, workingValue34, stateFlag4, stateFlag5, stateFlag6, stateFlag7, workingValue40)
  text2 = GetEntityRotation
  text3 = localValue1
  text4 = localValue4 or text4
  if not localValue4 then
    text4 = 1
  end
  text2 = text2(text3, text4)
  text3 = GetEntityCoords
  text4 = localValue1
  -- Beginner: result below is entityCoords.
  text3 = text3(text4)
  text4 = GetNetworkTimeAccurate
  text4 = text4()
  text5 = GetNetworkTimeAccurate
  text5 = text5()
  dataCollection4 = {}
  text6 = "x"
  iterator = "y"
  text7 = "z"
  dataCollection4[1] = text6
  dataCollection4[2] = iterator
  dataCollection4[3] = text7
  text6 = {}
  iterator = ipairs
  text7 = dataCollection4
  iterator, text7, dataCollection5, iterator2 = iterator(text7)
  for workingValue28, workingValue30 in iterator, text7, dataCollection5, iterator2 do
    workingValue32 = localValue2[workingValue30]
    workingValue34 = text2[workingValue30]
    workingValue32 = workingValue32 - workingValue34
    workingValue32 = workingValue32 + 180
    workingValue32 = workingValue32 % 360
    workingValue32 = workingValue32 - 180
    text6[workingValue30] = workingValue32
  end
  while true do
    iterator = text5 - text4
    if not (localValue3 > iterator) then
      break
    end
    iterator = Citizen
    iterator = iterator.Wait
    text7 = 0
    iterator(text7)
    iterator = GetNetworkTimeAccurate
    iterator = iterator()
    text7 = iterator - text4
    text7 = text7 / localValue3
    if text7 > 1 then
      text7 = 1
    end
    if 0 ~= text5 then
      dataCollection5 = iterator - text5
      if 0 ~= dataCollection5 then
        dataCollection5 = {}
        iterator2 = ipairs
        workingValue28 = dataCollection4
        iterator2, workingValue28, workingValue30, workingValue32 = iterator2(workingValue28)
        for workingValue34, stateFlag4 in iterator2, workingValue28, workingValue30, workingValue32 do
          stateFlag5 = text2[stateFlag4]
          stateFlag6 = text6[stateFlag4]
          stateFlag7 = dataCollection3
          workingValue40 = text7
          stateFlag7 = stateFlag7(workingValue40)
          stateFlag6 = stateFlag6 * stateFlag7
          stateFlag5 = stateFlag5 + stateFlag6
          dataCollection5[stateFlag4] = stateFlag5
        end
        iterator2 = SetEntityRotation
        workingValue28 = localValue1
        workingValue30 = dataCollection5.x
        workingValue32 = dataCollection5.y
        workingValue34 = dataCollection5.z
        stateFlag4 = localValue4 or stateFlag4
        if not localValue4 then
          stateFlag4 = 1
        end
        stateFlag5 = false
        iterator2(workingValue28, workingValue30, workingValue32, workingValue34, stateFlag4, stateFlag5)
        iterator2 = SetEntityCoords
        workingValue28 = localValue1
        workingValue30 = text3.x
        workingValue32 = text3.y
        workingValue34 = text3.z
        stateFlag4 = false
        stateFlag5 = false
        stateFlag6 = false
        stateFlag7 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        iterator2(workingValue28, workingValue30, workingValue32, workingValue34, stateFlag4, stateFlag5, stateFlag6, stateFlag7)
      end
    end
    text5 = iterator
  end
  iterator = SetEntityRotation
  text7 = localValue1
  dataCollection5 = localValue2.x
  iterator2 = localValue2.y
  workingValue28 = localValue2.z
  workingValue30 = localValue4 or workingValue30
  if not localValue4 then
    workingValue30 = 1
  end
  workingValue32 = false
  iterator(text7, dataCollection5, iterator2, workingValue28, workingValue30, workingValue32)
  iterator = SetEntityCoords
  text7 = localValue1
  dataCollection5 = text3.x
  iterator2 = text3.y
  workingValue28 = text3.z
  workingValue30 = false
  workingValue32 = false
  workingValue34 = false
  stateFlag4 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  iterator(text7, dataCollection5, iterator2, workingValue28, workingValue30, workingValue32, workingValue34, stateFlag4)
end

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: none) ===
function workingValue26()
  local localValue1, localValue2
  localValue1 = ClearHelp
  localValue2 = true
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue27; parameters: localValue1, localValue2, localValue3) ===
function workingValue27(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103
  localValue4 = vendingRuntime.SetData
  localValue4 = localValue4[localValue1]
  if nil == localValue4 then
    localValue4 = vendingRuntime.SetData
    localValue5 = {}
    localValue4[localValue1] = localValue5
  end
  localValue4 = type
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  if "table" == localValue4 then
    localValue4 = pairs
    localValue5 = localValue2
    localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
    for localValue8, workingValue93 in localValue4, localValue5, localValue6, localValue7 do
      workingValue103 = vendingRuntime.SetData
      workingValue103 = workingValue103[localValue1]
      workingValue103[localValue8] = workingValue93
    end
  else
    localValue4 = vendingRuntime.SetData
    localValue4 = localValue4[localValue1]
    localValue4[localValue2] = localValue3
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue29; parameters: localValue1, localValue2) ===
function workingValue29(localValue1, localValue2)
  local localValue3
  if nil == localValue2 then
    localValue2 = "not defined"
  end
  localValue3 = vendingRuntime.SetData
  localValue3 = localValue3[localValue1]
  if nil ~= localValue3 then
    if "not defined" == localValue2 then
      localValue3 = vendingRuntime.SetData
      localValue3 = localValue3[localValue1]
      return localValue3
    else
      localValue3 = vendingRuntime.SetData
      localValue3 = localValue3[localValue1]
      localValue3 = localValue3[localValue2]
      return localValue3
    end
  end
  localValue3 = nil
  return localValue3
end

function workingValue31(markerType, markerId)
  local runtimeGroupName
  local markerTypeLower = markerType:lower()

  if markerTypeLower == "marker" or markerTypeLower == "m" then
    runtimeGroupName = "Marker"
  elseif markerTypeLower == "n3d" or markerTypeLower == "n" then
    runtimeGroupName = "N3d"
  else
    return nil
  end

  local runtimeGroup = vendingRuntime[runtimeGroupName]
  if runtimeGroup then
    return runtimeGroup[markerId] ~= nil
  end

  return runtimeGroup
end

-- === HELPER FUNCTION (decompiler name: workingValue33; parameters: localValue1) ===
function workingValue33(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  if not localValue1 then
    localValue1 = 5
  end
  localValue2 = ""
  localValue3 = 1
  localValue4 = localValue1
  localValue5 = 1
  for localValue6 = localValue3, localValue4, localValue5 do
    localValue7 = localValue2
    localValue8 = "9"
    localValue7 = localValue7 .. localValue8
    localValue2 = localValue7
  end
  localValue3 = math
  localValue3 = localValue3.random
  localValue4 = 0
  localValue5 = tonumber
  localValue6 = localValue2
  localValue5 = localValue5(localValue6)
  if not localValue5 then
    localValue5 = 0
  end
  return localValue3(localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue35; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function workingValue35(localValue1, localValue2, localValue3, localValue4, localValue5)
  local localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6, iterator, text7, dataCollection5, iterator2, workingValue28, workingValue30
  localValue6 = workingValue31
  localValue7 = "m"
  localValue8 = localValue1
  localValue6 = localValue6(localValue7, localValue8)
  if localValue6 then
    localValue6 = Citizen
    localValue6 = localValue6.Wait
    localValue7 = 100
    localValue6(localValue7)
    return
  end
  if not (localValue2 and localValue2.x and localValue2.y and localValue2.z) then
    return
  end

  localValue6 = string
  localValue6 = localValue6.gsub
  localValue7 = localValue1
  localValue8 = "{r}"
  workingValue93 = workingValue33
  workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6, iterator, text7, dataCollection5, iterator2, workingValue28, workingValue30 = workingValue93()
  localValue6 = localValue6(localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6, iterator, text7, dataCollection5, iterator2, workingValue28, workingValue30)
  localValue1 = localValue6
  localValue6 = {}
  localValue6.render_distance = localValue3
  localValue6.interaction_distance = localValue4
  localValue6.coords = localValue2
  if localValue5 and localValue5.slice == "ignore" then
    localValue7 = "ignore"
  else
    localValue7 = workingValue14(localValue2)
  end
  localValue6.slice = localValue7
  localValue6.candraw = true
  localValue6.near = false
  localValue7 = type
  localValue8 = localValue5
  localValue7 = localValue7(localValue8)
  if "table" == localValue7 then
    localValue7 = localValue5.rgb
    if nil ~= localValue7 then
      localValue6.type = 1
      localValue7 = localValue5.rgb
      localValue6.rgb = localValue7
    else
      localValue7 = localValue5.text
      if nil ~= localValue7 then
        localValue6.type = 0
        localValue7 = localValue5.text
        localValue6.text = localValue7
      else
        localValue6.type = 1
        localValue7 = localValue5.rgb
        if not localValue7 then
          localValue7 = {}
          localValue8 = localValue5[1]
          if not localValue8 then
            localValue8 = 100
          end
          workingValue93 = localValue5[2]
          if not workingValue93 then
            workingValue93 = 100
          end
          workingValue103 = localValue5[3]
          if not workingValue103 then
            workingValue103 = 100
          end
          localValue7[1] = localValue8
          localValue7[2] = workingValue93
          localValue7[3] = workingValue103
        end
        localValue6.rgb = localValue7
      end
    end
    localValue7 = localValue5.notify
    if nil ~= localValue7 then
      localValue7 = replaceTextTokens
      localValue8 = localValue5.notify
      workingValue93 = {}
      workingValue103 = "{A}"
      workingValue2 = "{B}"
      workingValue6 = "{C}"
      number = "{D}"
      number2 = "{E}"
      number3 = "{F}"
      number5 = "{G}"
      number7 = "{H}"
      stateFlag = "{L}"
      stateFlag2 = "{M}"
      stateFlag3 = "{N}"
      dataCollection3 = "{O}"
      text2 = "{P}"
      text3 = "{Q}"
      text4 = "{R}"
      text5 = "{S}"
      dataCollection4 = "{T}"
      text6 = "{U}"
      iterator = "{V}"
      text7 = "{W}"
      dataCollection5 = "{X}"
      iterator2 = "{Y}"
      workingValue28 = "{Z}"
      workingValue93[1] = workingValue103
      workingValue93[2] = workingValue2
      workingValue93[3] = workingValue6
      workingValue93[4] = number
      workingValue93[5] = number2
      workingValue93[6] = number3
      workingValue93[7] = number5
      workingValue93[8] = number7
      workingValue93[9] = stateFlag
      workingValue93[10] = stateFlag2
      workingValue93[11] = stateFlag3
      workingValue93[12] = dataCollection3
      workingValue93[13] = text2
      workingValue93[14] = text3
      workingValue93[15] = text4
      workingValue93[16] = text5
      workingValue93[17] = dataCollection4
      workingValue93[18] = text6
      workingValue93[19] = iterator
      workingValue93[20] = text7
      workingValue93[21] = dataCollection5
      workingValue93[22] = iterator2
      workingValue93[23] = workingValue28
      workingValue103 = {}
      workingValue2 = "~INPUT_VEH_FLY_YAW_LEFT~"
      workingValue6 = "~INPUT_SPECIAL_ABILITY_SECONDARY~"
      number = "~INPUT_LOOK_BEHIND~"
      number2 = "~INPUT_MOVE_LR~"
      number3 = "~INPUT_CONTEXT~"
      number5 = "~INPUT_ARREST~"
      number7 = "~INPUT_DETONATE~"
      stateFlag = "~INPUT_VEH_ROOF~"
      stateFlag2 = "~INPUT_CELLPHONE_CAMERA_FOCUS_LOCK~"
      stateFlag3 = "~INPUT_INTERACTION_MENU~"
      dataCollection3 = "~INPUT_REPLAY_ENDPOINT~"
      text2 = "~INPUT_FRONTEND_PAUSE~"
      text3 = "~INPUT_FRONTEND_LB~"
      text4 = "~INPUT_RELOAD~"
      text5 = "~INPUT_MOVE_DOWN_ONLY~"
      dataCollection4 = "~INPUT_MP_TEXT_CHAT_ALL~"
      text6 = "~INPUT_REPLAY_SCREENSHOT~"
      iterator = "~INPUT_NEXT_CAMERA~"
      text7 = "~INPUT_MOVE_UP_ONLY~"
      dataCollection5 = "~INPUT_VEH_HOTWIRE_LEFT~"
      iterator2 = "~INPUT_VEH_DUCK~"
      workingValue28 = "~INPUT_MP_TEXT_CHAT_TEAM~"
      workingValue30 = "~INPUT_HUD_SPECIAL~"
      workingValue103[1] = workingValue2
      workingValue103[2] = workingValue6
      workingValue103[3] = number
      workingValue103[4] = number2
      workingValue103[5] = number3
      workingValue103[6] = number5
      workingValue103[7] = number7
      workingValue103[8] = stateFlag
      workingValue103[9] = stateFlag2
      workingValue103[10] = stateFlag3
      workingValue103[11] = dataCollection3
      workingValue103[12] = text2
      workingValue103[13] = text3
      workingValue103[14] = text4
      workingValue103[15] = text5
      workingValue103[16] = dataCollection4
      workingValue103[17] = text6
      workingValue103[18] = iterator
      workingValue103[19] = text7
      workingValue103[20] = dataCollection5
      workingValue103[21] = iterator2
      workingValue103[22] = workingValue28
      workingValue103[23] = workingValue30
      localValue7 = localValue7(localValue8, workingValue93, workingValue103)
      localValue6.notify = localValue7
    end
  else
    localValue7 = type
    localValue8 = localValue5
    localValue7 = localValue7(localValue8)
    if "string" == localValue7 then
      localValue6.type = 0
      localValue6.text = localValue5
    else
      localValue6.type = 1
      localValue7 = {}
      localValue8 = 100
      workingValue93 = 100
      workingValue103 = 100
      localValue7[1] = localValue8
      localValue7[2] = workingValue93
      localValue7[3] = workingValue103
      localValue6.rgb = localValue7
    end
  end
  localValue7 = vendingRuntime.Marker
  localValue7[localValue1] = localValue6
  localValue7 = localValue6.slice
  if "ignore" ~= localValue7 then
    localValue7 = workingValue17
    localValue8 = localValue6.slice
    workingValue93 = true
    localValue7(localValue8, workingValue93)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue36; parameters: localValue1, localValue2) ===
function workingValue36(localValue1, localValue2)
  local localValue3
  localValue3 = vendingRuntime.Marker
  localValue3 = localValue3[localValue1]
  if localValue3 then
    localValue3 = vendingRuntime.Marker
    localValue3 = localValue3[localValue1]
    localValue3.interaction_distance = localValue2
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue37; parameters: localValue1) ===
function workingValue37(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = workingValue31
  localValue3 = "m"
  localValue4 = localValue1
  localValue2 = localValue2(localValue3, localValue4)
  if not localValue2 then
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 100
    localValue2(localValue3)
    return
  end
  localValue2 = vendingRuntime.Marker
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue3 = localValue2.slice
    if localValue3 then
      localValue3 = localValue2.slice
      if "ignore" ~= localValue3 then
        localValue3 = workingValue17
        localValue4 = localValue2.slice
        localValue5 = false
        localValue3(localValue4, localValue5)
      end
    end
  end
  localValue3 = vendingRuntime.Marker
  localValue3[localValue1] = nil
  localValue3 = workingValue26
  localValue3()
end

-- === HELPER FUNCTION (decompiler name: workingValue38; parameters: localValue1) ===
function workingValue38(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = GetEntityModel
  localValue3 = localValue1
  -- Beginner: result below is modelHash.
  localValue2 = localValue2(localValue3)
  localValue3 = GetModelDimensions
  localValue4 = localValue2
  localValue3, localValue4 = localValue3(localValue4)
  localValue5 = localValue4 - localValue3
  return localValue5
end

-- === HELPER FUNCTION (decompiler name: workingValue39; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function workingValue39(localValue1, localValue2, localValue3, localValue4, localValue5)
  local localValue6, localValue7, localValue8, workingValue93
  localValue6 = AddBlipForCoord
  localValue7 = localValue2.x
  localValue8 = localValue2.y
  workingValue93 = localValue2.z
  -- Beginner: result below is blipHandle.
  localValue6 = localValue6(localValue7, localValue8, workingValue93)
  localValue7 = SetBlipSprite
  localValue8 = localValue6
  workingValue93 = localValue3
  localValue7(localValue8, workingValue93)
  localValue7 = SetBlipScale
  localValue8 = localValue6
  workingValue93 = localValue5 or workingValue93
  if not localValue5 then
    workingValue93 = 1.0
  end
  localValue7(localValue8, workingValue93)
  localValue7 = SetBlipColour
  localValue8 = localValue6
  workingValue93 = localValue4
  localValue7(localValue8, workingValue93)
  localValue7 = SetBlipAsShortRange
  localValue8 = localValue6
  workingValue93 = true
  localValue7(localValue8, workingValue93)
  localValue7 = BeginTextCommandSetBlipName
  localValue8 = "STRING"
  localValue7(localValue8)
  localValue7 = AddTextComponentSubstringPlayerName
  localValue8 = localValue1 or localValue8
  if not localValue1 then
    localValue8 = ""
  end
  localValue7(localValue8)
  localValue7 = EndTextCommandSetBlipName
  localValue8 = localValue6
  localValue7(localValue8)
  return localValue6
end

function workingValue43(eventName, callback, useBangPrefix)
  local fullEventName = "Utility:On:" .. (useBangPrefix and "!" or "") .. eventName

  -- Beginner: Register a network event handler that the server/other clients can trigger.
  RegisterNetEvent(fullEventName)

  local eventHandler = AddEventHandler(fullEventName, callback)
  table.insert(vendingRuntime.Events, eventHandler)
  return eventHandler
end
-- Beginner: this function runs when client event (event above) fires.

function workingValue44(eventName, useBangPrefix, ...)
  local fullEventName = "Utility:On:" .. (useBangPrefix and "!" or "") .. eventName

  -- Beginner: Trigger another client-side event in this resource/framework.
  triggerClientEvent(fullEventName, ...)
end

-- === HELPER FUNCTION (decompiler name: workingValue45; parameters: none) ===
function workingValue45()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2
  localValue1 = pairs
  localValue2 = vendingRuntime.Marker
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = GetEntityCoords
    localValue8 = PlayerPedId
    localValue8, workingValue93, workingValue103, workingValue2 = localValue8()
    -- Beginner: result below is entityCoords.
    localValue7 = localValue7(localValue8, workingValue93, workingValue103, workingValue2)
    localValue8 = localValue6.coords
    localValue7 = localValue7 - localValue8
    localValue7 = #localValue7
    localValue8 = localValue6.near
    if localValue8 then
      localValue8 = localValue6.interaction_distance
      if localValue7 < localValue8 then
        localValue8 = workingValue44
        workingValue93 = "marker"
        workingValue103 = false
        workingValue2 = localValue5
        localValue8(workingValue93, workingValue103, workingValue2)
        localValue6.near = false
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue46; parameters: localValue1, localValue2) ===
function workingValue46(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6, iterator, text7, dataCollection5, iterator2
  if 0 == localValue1 then
    localValue3 = localValue2.text
    if localValue3 then
      localValue3 = localValue2.text
      if "" ~= localValue3 then
        localValue3 = workingValue20
        localValue4 = localValue2.coords
        localValue5 = localValue2.text
        localValue6 = localValue2._scale
        if not localValue6 then
          localValue6 = 0.35
        end
        localValue7 = localValue2.font
        if not localValue7 then
          localValue7 = 4
        end
        localValue8 = localValue2.rect
        if not localValue8 then
          localValue8 = false
        end
        localValue3(localValue4, localValue5, localValue6, localValue7, localValue8)
      end
    end
  elseif 1 == localValue1 then
    localValue3 = localValue2._direction
    if not localValue3 then
      localValue3 = {}
      localValue3.x = 0.0
      localValue3.y = 0.0
      localValue3.z = 0.0
    end
    localValue4 = localValue2._rot
    if not localValue4 then
      localValue4 = {}
      localValue4.x = 0.0
      localValue4.y = 0.0
      localValue4.z = 0.0
    end
    localValue5 = localValue2._scale
    if not localValue5 then
      localValue5 = {}
      localValue5.x = 1.5
      localValue5.y = 1.5
      localValue5.z = 0.5
    end
    localValue6 = localValue2.rgb
    if not localValue6 then
      localValue6 = {}
      localValue7 = 100
      localValue8 = 100
      workingValue93 = 100
      localValue6[1] = localValue7
      localValue6[2] = localValue8
      localValue6[3] = workingValue93
    end
    localValue7 = DrawMarker
    localValue8 = localValue2._type
    if not localValue8 then
      localValue8 = 1
    end
    workingValue93 = localValue2.coords
    workingValue93 = workingValue93.x
    workingValue103 = localValue2.coords
    workingValue103 = workingValue103.y
    workingValue2 = localValue2.coords
    workingValue2 = workingValue2.z
    workingValue6 = localValue3.x
    if not workingValue6 then
      workingValue6 = 0.0
    end
    number = localValue3.y
    if not number then
      number = 0.0
    end
    number2 = localValue3.z
    if not number2 then
      number2 = 0.0
    end
    number3 = localValue4.x
    if not number3 then
      number3 = 0.0
    end
    number5 = localValue4.y
    if not number5 then
      number5 = 0.0
    end
    number7 = localValue4.z
    if not number7 then
      number7 = 0.0
    end
    stateFlag = localValue5.x
    if not stateFlag then
      stateFlag = 1.5
    end
    stateFlag2 = localValue5.y
    if not stateFlag2 then
      stateFlag2 = 1.5
    end
    stateFlag3 = localValue5.z
    if not stateFlag3 then
      stateFlag3 = 0.5
    end
    dataCollection3 = localValue6[1]
    text2 = localValue6[2]
    text3 = localValue6[3]
    text4 = localValue2.alpha
    if not text4 then
      text4 = 100
    end
    text5 = localValue2.anim
    if not text5 then
      text5 = false
    end
    dataCollection4 = false
    text6 = 2
    iterator = false
    text7 = nil
    dataCollection5 = nil
    iterator2 = localValue2.draw_entity
    if not iterator2 then
      iterator2 = false
    end
    localValue7(localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6, iterator, text7, dataCollection5, iterator2)
  end
end

function workingValue47(currentSlice)
  local drewAnyMarker = false

  for markerId, markerData in pairs(vendingRuntime.Marker) do
    local markerSlice = tonumber(markerData.slice)
    local isInCurrentSlice = markerSlice == currentSlice or markerData.slice == "ignore"

    if isInCurrentSlice and markerData.candraw then
      local playerPed = PlayerPedId()
      local playerCoords = GetEntityCoords(playerPed)
      local distance = #(playerCoords - markerData.coords)
      local renderDistance = markerData.render_distance or 0

      if distance < renderDistance then
        drewAnyMarker = true
        workingValue46(markerData.type, markerData)
      end

      if distance < markerData.interaction_distance then
        if markerData.notify ~= nil then
          workingValue21(markerData.notify, not markerData.near)
        end

        if not markerData.near then
          markerData.near = true
        end
      elseif markerData.near then
        markerData.near = false
        workingValue26()
      end
    end
  end

  return drewAnyMarker
end
workingValue48 = RequestScaleformMovie

-- === HELPER FUNCTION (decompiler name: workingValue49; parameters: localValue1) ===
function workingValue49(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = pcall
  localValue3 = workingValue48
  localValue4 = localValue1
  localValue2, localValue3 = localValue2(localValue3, localValue4)
  while not localValue2 do
    localValue4 = pcall
    localValue5 = workingValue48
    localValue6 = localValue1
    localValue4, localValue5 = localValue4(localValue5, localValue6)
    localValue3 = localValue5
    localValue2 = localValue4
    localValue4 = Citizen
    localValue4 = localValue4.Wait
    localValue5 = 1
    localValue4(localValue5)
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue50; parameters: localValue1, localValue2) ===
function workingValue50(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6
  localValue3 = tostring
  localValue4 = math
  localValue4 = localValue4.random
  localValue5 = 0
  localValue6 = 9999
  localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6 = localValue4(localValue5, localValue6)
  localValue3 = localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6)
  localValue4 = vendingRuntime.N3d
  localValue5 = {}
  localValue5.txd = false
  localValue5.show = false
  localValue6 = {}
  localValue5.rotation = localValue6
  localValue4[localValue3] = localValue5
  localValue4 = workingValue49
  localValue5 = localValue1
  localValue4 = localValue4(localValue5)
  localValue5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue5 = localValue5()
  while true do
    localValue6 = HasScaleformMovieLoaded
    localValue7 = localValue4
    localValue6 = localValue6(localValue7)
    if localValue6 then
      break
    end
    localValue6 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue6 = localValue6()
    localValue6 = localValue6 - localValue5
    localValue7 = 4000
    if not (localValue6 < localValue7) then
      break
    end
    localValue6 = Citizen
    localValue6 = localValue6.Wait
    localValue7 = 0
    localValue6(localValue7)
  end
  localValue6 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue6 = localValue6()
  localValue6 = localValue6 - localValue5
  localValue7 = 4000
  if localValue6 <= localValue7 then
    localValue6 = vendingRuntime.N3d
    localValue6 = localValue6[localValue3]
    localValue6.scaleform = localValue4
  end
  if nil ~= localValue2 then
    localValue6 = CreateRuntimeTxd
    localValue7 = "txd"
    localValue8 = localValue3
    localValue7 = localValue7 .. localValue8
    localValue6 = localValue6(localValue7)
    localValue7 = vendingRuntime.N3d
    localValue7 = localValue7[localValue3]
    localValue8 = CreateDui
    workingValue93 = "nui://"
    workingValue103 = GetCurrentResourceName
    workingValue103 = workingValue103()
    workingValue2 = "/"
    workingValue6 = localValue2
    workingValue93 = workingValue93 .. workingValue103 .. workingValue2 .. workingValue6
    workingValue103 = 1920
    workingValue2 = 1080
    localValue8 = localValue8(workingValue93, workingValue103, workingValue2)
    localValue7.dui = localValue8
    while true do
      localValue7 = IsDuiAvailable
      localValue8 = vendingRuntime.N3d
      localValue8 = localValue8[localValue3]
      localValue8 = localValue8.dui
      localValue7 = localValue7(localValue8)
      if localValue7 then
        break
      end
      localValue7 = Citizen
      localValue7 = localValue7.Wait
      localValue8 = 1
      localValue7(localValue8)
    end
    localValue7 = GetDuiHandle
    localValue8 = vendingRuntime.N3d
    localValue8 = localValue8[localValue3]
    localValue8 = localValue8.dui
    localValue7 = localValue7(localValue8)
    localValue8 = CreateRuntimeTextureFromDuiHandle
    workingValue93 = localValue6
    workingValue103 = "txn"
    workingValue2 = localValue3
    workingValue103 = workingValue103 .. workingValue2
    workingValue2 = localValue7
    localValue8(workingValue93, workingValue103, workingValue2)
    localValue8 = vendingRuntime.N3d
    localValue8 = localValue8[localValue3]
    localValue8 = localValue8.scaleform
    if nil ~= localValue8 then
      localValue8 = BeginScaleformMovieMethod
      workingValue93 = vendingRuntime.N3d
      workingValue93 = workingValue93[localValue3]
      workingValue93 = workingValue93.scaleform
      workingValue103 = "SET_TEXTURE"
      localValue8(workingValue93, workingValue103)
      localValue8 = _ENV
      workingValue93 = "ScaleformMovieMethodAddParamTextureNameString"
      localValue8 = localValue8[workingValue93]
      workingValue93 = "txd"
      workingValue103 = localValue3
      workingValue93 = workingValue93 .. workingValue103
      localValue8(workingValue93)
      localValue8 = _ENV
      workingValue93 = "ScaleformMovieMethodAddParamTextureNameString"
      localValue8 = localValue8[workingValue93]
      workingValue93 = "txn"
      workingValue103 = localValue3
      workingValue93 = workingValue93 .. workingValue103
      localValue8(workingValue93)
      localValue8 = ScaleformMovieMethodAddParamInt
      workingValue93 = 0
      localValue8(workingValue93)
      localValue8 = ScaleformMovieMethodAddParamInt
      workingValue93 = 0
      localValue8(workingValue93)
      localValue8 = ScaleformMovieMethodAddParamInt
      workingValue93 = 1920
      localValue8(workingValue93)
      localValue8 = ScaleformMovieMethodAddParamInt
      workingValue93 = 1080
      localValue8(workingValue93)
      localValue8 = EndScaleformMovieMethod
      localValue8()
    end
  end
  localValue6 = {}
  localValue6.__index = localValue6

  -- === HELPER FUNCTION: localValue7(localValue12, localValue22, localValue32, localValue42) ===
  function localValue7(localValue12, localValue22, localValue32, localValue42)
    local localValue52, workingValue60, number12, number13, workingValue94, workingValue104, workingValue3
    localValue52 = CreateRuntimeTxd
    workingValue60 = "txd"
    number12 = localValue3
    workingValue60 = workingValue60 .. number12
    localValue52 = localValue52(workingValue60)
    workingValue60 = vendingRuntime.N3d
    number12 = localValue3
    workingValue60 = workingValue60[number12]
    number12 = CreateDui
    number13 = "nui://"
    workingValue94 = GetCurrentResourceName
    workingValue94 = workingValue94()
    workingValue104 = "/"
    workingValue3 = localValue22
    number13 = number13 .. workingValue94 .. workingValue104 .. workingValue3
    workingValue94 = localValue32 or workingValue94
    if not localValue32 then
      workingValue94 = 1920
    end
    workingValue104 = localValue42 or workingValue104
    if not localValue42 then
      workingValue104 = 1080
    end
    number12 = number12(number13, workingValue94, workingValue104)
    workingValue60.dui = number12
    while true do
      workingValue60 = IsDuiAvailable
      number12 = vendingRuntime.N3d
      number13 = localValue3
      number12 = number12[number13]
      number12 = number12.dui
      workingValue60 = workingValue60(number12)
      if workingValue60 then
        break
      end
      workingValue60 = Citizen
      workingValue60 = workingValue60.Wait
      number12 = 1
      workingValue60(number12)
    end
    workingValue60 = GetDuiHandle
    number12 = vendingRuntime.N3d
    number13 = localValue3
    number12 = number12[number13]
    number12 = number12.dui
    workingValue60 = workingValue60(number12)
    number12 = CreateRuntimeTextureFromDuiHandle
    number13 = localValue52
    workingValue94 = "txn"
    workingValue104 = localValue3
    workingValue94 = workingValue94 .. workingValue104
    workingValue104 = workingValue60
    number12(number13, workingValue94, workingValue104)
    number12 = vendingRuntime.N3d
    number13 = localValue3
    number12 = number12[number13]
    number12 = number12.scaleform
    if nil ~= number12 then
      number12 = BeginScaleformMovieMethod
      number13 = vendingRuntime.N3d
      workingValue94 = localValue3
      number13 = number13[workingValue94]
      number13 = number13.scaleform
      workingValue94 = "SET_TEXTURE"
      number12(number13, workingValue94)
      number12 = _ENV
      number13 = "ScaleformMovieMethodAddParamTextureNameString"
      number12 = number12[number13]
      number13 = "txd"
      workingValue94 = localValue3
      number13 = number13 .. workingValue94
      number12(number13)
      number12 = _ENV
      number13 = "ScaleformMovieMethodAddParamTextureNameString"
      number12 = number12[number13]
      number13 = "txn"
      workingValue94 = localValue3
      number13 = number13 .. workingValue94
      number12(number13)
      number12 = ScaleformMovieMethodAddParamInt
      number13 = 0
      number12(number13)
      number12 = ScaleformMovieMethodAddParamInt
      number13 = 0
      number12(number13)
      number12 = ScaleformMovieMethodAddParamInt
      number13 = localValue32 or number13
      if not localValue32 then
        number13 = 1920
      end
      number12(number13)
      number12 = ScaleformMovieMethodAddParamInt
      number13 = localValue42 or number13
      if not localValue42 then
        number13 = 1080
      end
      number12(number13)
      number12 = EndScaleformMovieMethod
      number12()
    end
  end
  localValue6.init = localValue7

  -- === HELPER FUNCTION: localValue7(localValue12, localValue22) ===
  function localValue7(localValue12, localValue22)
    local localValue32, localValue42, localValue52, workingValue60
    localValue32 = vendingRuntime.N3d
    localValue42 = localValue3
    localValue32 = localValue32[localValue42]
    if localValue32 then
      localValue32 = vendingRuntime.N3d
      localValue42 = localValue3
      localValue32 = localValue32[localValue42]
      localValue32 = localValue32.dui
      if localValue32 then
        localValue32 = SendDuiMessage
        localValue42 = vendingRuntime.N3d
        localValue52 = localValue3
        localValue42 = localValue42[localValue52]
        localValue42 = localValue42.dui
        localValue52 = json
        localValue52 = localValue52.encode
        workingValue60 = localValue22
        localValue52, workingValue60 = localValue52(workingValue60)
        localValue32(localValue42, localValue52, workingValue60)
      end
    end
  end
  localValue6.msg = localValue7

  -- === HELPER FUNCTION: localValue7(localValue12, localValue22, localValue32, localValue42) ===
  function localValue7(localValue12, localValue22, localValue32, localValue42)
    local localValue52, workingValue60, number12, number13, workingValue94, workingValue104
    if localValue42 then
      localValue52 = Citizen
      localValue52 = localValue52.Wait
      workingValue60 = localValue42
      localValue52(workingValue60)
    end
    localValue52 = AddReplaceTexture
    workingValue60 = localValue22
    number12 = localValue32
    number13 = "txd"
    workingValue94 = localValue3
    number13 = number13 .. workingValue94
    workingValue94 = "txn"
    workingValue104 = localValue3
    workingValue94 = workingValue94 .. workingValue104
    localValue52(workingValue60, number12, number13, workingValue94)
  end
  localValue6.replaceTexture = localValue7

  -- === HELPER FUNCTION: localValue7(localValue12) ===
  function localValue7(localValue12)
    local localValue22, localValue32, localValue42
    localValue22 = vendingRuntime.N3d
    localValue32 = localValue3
    localValue22 = localValue22[localValue32]
    if localValue22 then
      localValue22 = vendingRuntime.N3d
      localValue32 = localValue3
      localValue22 = localValue22[localValue32]
      localValue22 = localValue22.dui
      if localValue22 then
        localValue22 = DestroyDui
        localValue32 = vendingRuntime.N3d
        localValue42 = localValue3
        localValue32 = localValue32[localValue42]
        localValue32 = localValue32.dui
        localValue22(localValue32)
        localValue22 = vendingRuntime.N3d
        localValue32 = localValue3
        localValue22 = localValue22[localValue32]
        localValue22 = localValue22.scaleform
        if localValue22 then
          localValue22 = SetScaleformMovieAsNoLongerNeeded
          localValue32 = vendingRuntime.N3d
          localValue42 = localValue3
          localValue32 = localValue32[localValue42]
          localValue32 = localValue32.scaleform
          localValue22(localValue32)
        end
        localValue22 = vendingRuntime.N3d
        localValue32 = localValue3
        localValue22[localValue32] = nil
      end
    end
  end
  localValue6.destroy = localValue7
  localValue7 = setmetatable
  localValue8 = {}
  workingValue93 = localValue6
  localValue7 = localValue7(localValue8, workingValue93)
  localValue8 = localValue3
  return localValue7, localValue8
end
number10 = 0
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: backgroundThread2; parameters: none) ===
function backgroundThread2()
  local localValue1, localValue2
  while true do
    localValue1 = workingValue15
    localValue1 = localValue1()
    number10 = localValue1
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 500
    localValue1(localValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(backgroundThread2)

-- === HELPER FUNCTION (decompiler name: backgroundThread; parameters: none) ===
function backgroundThread()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = pairs
  localValue2 = vendingRuntime.Marker
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = localValue6.slice
    if "ignore" == localValue7 then
      localValue7 = true
      return localValue7
    end
  end
  localValue1 = false
  return localValue1
end
backgroundThread2 = Citizen
backgroundThread2 = backgroundThread2.CreateThread

function number11()
  while true do
    local drewAnyMarker = false

    if workingValue16(number10) or backgroundThread() then
      drewAnyMarker = workingValue47(number10)
    end

    if not drewAnyMarker then
      Citizen.Wait(500)
    end

    Citizen.Wait(0)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread2(number11)
backgroundThread2 = Citizen
backgroundThread2 = backgroundThread2.CreateThread

-- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
function number11()
  local localValue1, localValue2, localValue3
  while true do
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 0
    localValue1(localValue2)
    localValue1 = IsControlJustPressed
    localValue2 = 0
    localValue3 = 38
    localValue1 = localValue1(localValue2, localValue3)
    if localValue1 then
      localValue1 = workingValue45
      localValue1()
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread2(number11)
backgroundThread2 = {}
backgroundThread2.Debug = false
number11 = vendingConfig.renderDistance
if not number11 then
  number11 = 40.0
end
backgroundThread2.RenderDistance = number11
number11 = vendingConfig.defaultInteractionDistance
if not number11 then
  number11 = 2.0
end
backgroundThread2.DefaultInteractionDistance = number11
number11 = vendingConfig.blips
number11 = false ~= number11
backgroundThread2.Blips = number11
number11 = vendingConfig.sounds
number11 = false ~= number11
backgroundThread2.Sounds = number11
number11 = vendingConfig.overrideExhibition
if not number11 then
  number11 = {}
end
backgroundThread2.OverrideExhibition = number11
number11 = vendingConfig.items
if not number11 then
  number11 = {}
end
backgroundThread2.Items = number11
number11 = {}
backgroundThread2.Vendings = number11
number11 = vendingConfig.translations
if not number11 then
  number11 = {}
end
backgroundThread2.Translations = number11
number11 = vendingConfig.audiosVolumes
if not number11 then
  number11 = {}
end
backgroundThread2.AudiosVolumes = number11
number11 = vendingConfig.placeVendings
if not number11 then
  number11 = {}
end
backgroundThread2.PlaceVendings = number11
number11 = {}

-- === HELPER FUNCTION (decompiler name: workingValue52; parameters: none) ===
function workingValue52()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2
  localValue1 = pairs
  localValue2 = backgroundThread2.Vendings
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue7 = localValue6.parent
    if localValue7 then
      localValue7 = backgroundThread2.Vendings
      localValue8 = localValue6.parent
      localValue7 = localValue7[localValue8]
      if localValue7 then
        localValue8 = pairs
        workingValue93 = localValue7
        localValue8, workingValue93, workingValue103, workingValue2 = localValue8(workingValue93)
        for workingValue6, number in localValue8, workingValue93, workingValue103, workingValue2 do
          number2 = localValue6[workingValue6]
          if nil == number2 then
            localValue6[workingValue6] = number
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue53; parameters: none) ===
function workingValue53()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = pairs
  localValue2 = backgroundThread2.Vendings
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue6.name = localValue5
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue54; parameters: localValue1, localValue2) ===
function workingValue54(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2
  localValue3 = GetEntityCoords
  localValue4 = localValue2
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4)
  localValue4 = pairs
  localValue5 = backgroundThread2.OverrideExhibition
  localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
  for localValue8, workingValue93 in localValue4, localValue5, localValue6, localValue7 do
    workingValue103 = workingValue93.name
    workingValue2 = localValue1.name
    if workingValue103 == workingValue2 then
      workingValue103 = workingValue93.coords
      workingValue103 = workingValue103 - localValue3
      workingValue103 = #workingValue103
      workingValue2 = workingValue93.radius
      if not workingValue2 then
        workingValue2 = 2.0
      end
      if workingValue103 < workingValue2 then
        workingValue103 = workingValue93.exhibition
        return workingValue103
      end
    end
  end
  localValue4 = localValue1.exhibition
  return localValue4
end

-- === HELPER FUNCTION (decompiler name: workingValue55; parameters: localValue1, localValue2) ===
function workingValue55(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93
  if not localValue2 then
    localValue2 = "vending"
  end
  localValue3 = GetEntityCoords
  localValue4 = localValue1
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(localValue4)
  localValue4 = GetHashKey
  localValue5 = localValue3.x
  localValue6 = ":"
  localValue7 = localValue3.y
  localValue8 = ":"
  workingValue93 = localValue3.z
  localValue5 = localValue5 .. localValue6 .. localValue7 .. localValue8 .. workingValue93
  -- Beginner: result below is hash.
  localValue4 = localValue4(localValue5)
  localValue5 = localValue2
  localValue6 = ":"
  localValue7 = localValue4
  localValue5 = localValue5 .. localValue6 .. localValue7
  return localValue5
end
dataCollection6 = {}

-- === HELPER FUNCTION (decompiler name: workingValue56; parameters: none) ===
function workingValue56()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2
  localValue1 = next
  localValue2 = dataCollection6
  localValue1 = localValue1(localValue2)
  if nil == localValue1 then
    localValue1 = pairs
    localValue2 = backgroundThread2.Vendings
    localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
    for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
      localValue7 = pairs
      localValue8 = localValue6.models
      localValue7, localValue8, workingValue93, workingValue103 = localValue7(localValue8)
      for workingValue2, workingValue6 in localValue7, localValue8, workingValue93, workingValue103 do
        number = tostring
        number2 = workingValue6
        number = number(number2)
        number2 = dataCollection6
        number2[number] = localValue5
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue57; parameters: localValue1) ===
function workingValue57(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3
  localValue2 = workingValue56
  localValue2()
  localValue2 = GetGamePool
  localValue3 = "CObject"
  localValue2 = localValue2(localValue3)
  localValue3 = pairs
  localValue4 = localValue2
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    workingValue93 = GetEntityModel
    workingValue103 = localValue8
    -- Beginner: result below is modelHash.
    workingValue93 = workingValue93(workingValue103)
    workingValue103 = tostring
    workingValue2 = workingValue93
    workingValue103 = workingValue103(workingValue2)
    workingValue2 = dataCollection6
    workingValue103 = workingValue2[workingValue103]
    if workingValue103 then
      workingValue2 = backgroundThread2.Vendings
      workingValue2 = workingValue2[workingValue103]
      workingValue6 = localValue1
      number = workingValue103
      number2 = workingValue2
      number3 = localValue8
      workingValue6(number, number2, number3)
    end
  end
end

function workingValue58(parentEntity, model, offset)
  local parentCoords = GetEntityCoords(parentEntity)
  local modelHash = type(model) == "string" and GetHashKey(model) or model

  if not HasModelLoaded(modelHash) then
    RequestModel(modelHash)
    while not HasModelLoaded(modelHash) do
      Citizen.Wait(1)
    end
  end

  local objectEntity = CreateObject(modelHash, parentCoords.x, parentCoords.y, parentCoords.z, false, false, true)
  SetModelAsNoLongerNeeded(modelHash)

  local spawnCoords = parentCoords
  if offset then
    spawnCoords = GetOffsetFromEntityInWorldCoords(parentEntity, offset.x, offset.y, offset.z)
  end

  -- Beginner: Move/teleport an entity to new coordinates.
  SetEntityCoords(objectEntity, spawnCoords.x, spawnCoords.y, spawnCoords.z, false, false, false, false)

  local parentRotation = GetEntityRotation(parentEntity, 1)
  SetEntityRotation(objectEntity, parentRotation.x, parentRotation.y, parentRotation.z, 1, false)
  return objectEntity
end

-- === HELPER FUNCTION (decompiler name: workingValue62; parameters: localValue1, localValue2) ===
function workingValue62(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6
  localValue3 = GetEntityBoneIndexByName
  localValue4 = localValue1
  localValue5 = localValue2
  localValue3 = localValue3(localValue4, localValue5)
  localValue4 = GetWorldPositionOfEntityBone
  localValue5 = localValue1
  localValue6 = localValue3
  return localValue4(localValue5, localValue6)
end

-- === HELPER FUNCTION (decompiler name: workingValue63; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7) ===
function workingValue63(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  local localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6, iterator
  localValue8 = backgroundThread2.Vendings
  localValue8 = localValue8[localValue5]
  if not (localValue8 and localValue8.stands and localValue8.stands[localValue2] and localValue8.slots and localValue8.slots[localValue3]) then
    return nil
  end

  workingValue93 = localValue8.stands
  workingValue93 = workingValue93[localValue2]
  workingValue103 = workingValue62
  workingValue2 = localValue4
  workingValue6 = workingValue93
  workingValue103 = workingValue103(workingValue2, workingValue6)
  workingValue2 = GetOffsetFromEntityGivenWorldCoords
  workingValue6 = localValue4
  number = workingValue103.x
  number2 = workingValue103.y
  number3 = workingValue103.z
  workingValue2 = workingValue2(workingValue6, number, number2, number3)
  workingValue6 = localValue8.slots
  workingValue6 = workingValue6[localValue3]
  number = workingValue6.x
  if not number then
    number = workingValue6[1]
    if not number then
      number = 0
    end
  end
  number2 = workingValue6.y
  if not number2 then
    number2 = workingValue6[2]
    if not number2 then
      number2 = 0
    end
  end
  number3 = workingValue6.z
  if not number3 then
    number3 = workingValue6[3]
    if not number3 then
      number3 = 0
    end
  end
  number5 = workingValue6.w
  if not number5 then
    number5 = workingValue6[4]
    if not number5 then
      number5 = 0
    end
  end
  number7 = vector3
  stateFlag = workingValue2.x
  stateFlag = stateFlag + number
  stateFlag2 = workingValue2.y
  stateFlag2 = stateFlag2 + number2
  stateFlag3 = workingValue2.z
  stateFlag3 = stateFlag3 + number3
  number7 = number7(stateFlag, stateFlag2, stateFlag3)
  stateFlag = GetOffsetFromEntityInWorldCoords
  stateFlag2 = localValue4
  stateFlag3 = number7.x
  dataCollection3 = number7.y
  text2 = number7.z
  stateFlag = stateFlag(stateFlag2, stateFlag3, dataCollection3, text2)
  stateFlag2 = vector3
  stateFlag3 = stateFlag.x
  dataCollection3 = stateFlag.y
  text2 = stateFlag.z
  text3 = localValue6 or text3
  if not localValue6 then
    text3 = 0
  end
  text2 = text2 + text3
  stateFlag2 = stateFlag2(stateFlag3, dataCollection3, text2)
  stateFlag = stateFlag2
  stateFlag2 = workingValue58
  stateFlag3 = localValue4
  dataCollection3 = localValue1
  stateFlag2 = stateFlag2(stateFlag3, dataCollection3)
  stateFlag3 = SetEntityCoords
  dataCollection3 = stateFlag2
  text2 = stateFlag.x
  text3 = stateFlag.y
  text4 = stateFlag.z
  text5 = false
  dataCollection4 = false
  text6 = false
  iterator = false
  -- Beginner: Move/teleport an entity to new coordinates.
  stateFlag3(dataCollection3, text2, text3, text4, text5, dataCollection4, text6, iterator)
  stateFlag3 = localValue7 or stateFlag3
  if not localValue7 then
    stateFlag3 = vec3
    dataCollection3 = 0
    text2 = 0
    text3 = 0
    stateFlag3 = stateFlag3(dataCollection3, text2, text3)
  end
  dataCollection3 = GetEntityRotation
  text2 = stateFlag2
  text3 = 1
  dataCollection3 = dataCollection3(text2, text3)
  text2 = vec3
  text3 = number5
  text4 = 0
  text5 = 0
  text2 = text2(text3, text4, text5)
  dataCollection3 = dataCollection3 + text2
  dataCollection3 = dataCollection3 + stateFlag3
  text2 = SetEntityRotation
  text3 = stateFlag2
  text4 = dataCollection3.x
  text5 = dataCollection3.y
  dataCollection4 = dataCollection3.z
  text6 = 1
  iterator = false
  text2(text3, text4, text5, dataCollection4, text6, iterator)
  return stateFlag2
end

-- === HELPER FUNCTION (decompiler name: workingValue64; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue64(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number
  localValue5 = GetEntityCoords
  localValue6 = localValue1
  -- Beginner: result below is entityCoords.
  localValue5 = localValue5(localValue6)
  localValue6 = GetEntityModel
  localValue7 = localValue1
  -- Beginner: result below is modelHash.
  localValue6 = localValue6(localValue7)
  localValue7 = TriggerServerEvent
  localValue8 = "60eadad9f8"
  workingValue93 = localValue5
  workingValue103 = localValue6
  workingValue2 = localValue2
  workingValue6 = localValue3
  number = localValue4
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "60eadad9f8".
  localValue7(localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number)
end

-- === HELPER FUNCTION (decompiler name: workingValue65; parameters: localValue1, localValue2, localValue3) ===
function workingValue65(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2
  localValue4 = GetEntityCoords
  localValue5 = localValue1
  -- Beginner: result below is entityCoords.
  localValue4 = localValue4(localValue5)
  localValue5 = GetEntityModel
  localValue6 = localValue1
  -- Beginner: result below is modelHash.
  localValue5 = localValue5(localValue6)
  localValue6 = TriggerServerEvent
  localValue7 = "4e2aeb078b"
  localValue8 = localValue4
  workingValue93 = localValue5
  workingValue103 = localValue2
  workingValue2 = localValue3
  localValue6(localValue7, localValue8, workingValue93, workingValue103, workingValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue66; parameters: localValue1, localValue2, localValue3) ===
function workingValue66(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2
  localValue4 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue4 = localValue4()
  localValue5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  localValue6 = TaskPedSlideToCoord
  localValue7 = localValue5
  localValue8 = localValue1.x
  workingValue93 = localValue1.y
  workingValue103 = localValue1.z
  workingValue2 = localValue2
  workingValue6 = -1
  localValue6(localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6)
  while true do
    localValue6 = GetIsTaskActive
    localValue7 = localValue5
    localValue8 = 234
    localValue6 = localValue6(localValue7, localValue8)
    if localValue6 then
      break
    end
    localValue6 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue6 = localValue6()
    localValue6 = localValue6 - localValue4
    if localValue3 < localValue6 then
      break
    end
    localValue6 = Citizen
    localValue6 = localValue6.Wait
    localValue7 = 1
    localValue6(localValue7)
  end
  while true do
    localValue6 = GetIsTaskActive
    localValue7 = localValue5
    localValue8 = 234
    localValue6 = localValue6(localValue7, localValue8)
    if not localValue6 then
      break
    end
    localValue6 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue6 = localValue6()
    localValue6 = localValue6 - localValue4
    if localValue3 < localValue6 then
      break
    end
    localValue6 = Citizen
    localValue6 = localValue6.Wait
    localValue7 = 1
    localValue6(localValue7)
  end
  localValue6 = ClearPedTasks
  localValue7 = localValue5
  localValue6(localValue7)
  localValue6 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue6 = localValue6()
  localValue6 = localValue6 - localValue4
  if localValue3 < localValue6 then
    localValue6 = GetEntityCoords
    localValue7 = localValue5
    -- Beginner: result below is entityCoords.
    localValue6 = localValue6(localValue7)
    localValue6 = localValue6 - localValue1
    localValue6 = #localValue6
    localValue7 = 1.3
    if localValue6 > localValue7 then
      localValue6 = SetEntityCoords
      localValue7 = localValue5
      localValue8 = localValue1.x
      workingValue93 = localValue1.y
      workingValue103 = localValue1.z
      workingValue2 = false
      workingValue6 = false
      number = false
      number2 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      localValue6(localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2)
      localValue6 = SetEntityHeading
      localValue7 = localValue5
      localValue8 = localValue2
      -- Beginner: Change the direction an entity is facing.
      localValue6(localValue7, localValue8)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue67; parameters: localValue1) ===
function workingValue67(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  while true do
    localValue3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue3 = localValue3()
    localValue3 = localValue3 - localValue2
    if not (localValue1 > localValue3) then
      break
    end
    localValue3 = DisableAllControlActions
    localValue4 = 0
    localValue3(localValue4)
    localValue3 = EnableControlAction
    localValue4 = 0
    localValue5 = 0
    localValue6 = true
    localValue3(localValue4, localValue5, localValue6)
    localValue3 = EnableControlAction
    localValue4 = 0
    localValue5 = 1
    localValue6 = true
    localValue3(localValue4, localValue5, localValue6)
    localValue3 = EnableControlAction
    localValue4 = 0
    localValue5 = 2
    localValue6 = true
    localValue3(localValue4, localValue5, localValue6)
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    localValue4 = 1
    localValue3(localValue4)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue68; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue68(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6, iterator, text7, dataCollection5, iterator2, workingValue28
  localValue5 = Entity
  localValue6 = localValue2
  localValue5 = localValue5(localValue6)
  localValue5 = localValue5.state
  localValue6 = {}
  localValue7 = workingValue54
  localValue8 = localValue1
  workingValue93 = localValue2
  localValue7 = localValue7(localValue8, workingValue93)
  localValue8 = pairs
  workingValue93 = localValue1.stands
  localValue8, workingValue93, workingValue103, workingValue2 = localValue8(workingValue93)
  for workingValue6, number in localValue8, workingValue93, workingValue103, workingValue2 do
    number2 = {}
    localValue6[workingValue6] = number2
    number2 = pairs
    number3 = localValue1.slots
    number2, number3, number5, number7 = number2(number3)
    for stateFlag, stateFlag2 in number2, number3, number5, number7 do
      if localValue7 then
        stateFlag3 = localValue7[workingValue6]
        if stateFlag3 then
          stateFlag3 = backgroundThread2.Items
          dataCollection3 = localValue7[workingValue6]
          stateFlag3 = stateFlag3[dataCollection3]
          if stateFlag3 then
            dataCollection3 = stateFlag3.model
            if dataCollection3 then
              dataCollection3 = localValue6[workingValue6]
              text2 = workingValue63
              text3 = stateFlag3.model
              text4 = workingValue6
              text5 = stateFlag
              dataCollection4 = localValue4
              text6 = localValue3
              iterator = stateFlag3.zoffset
              if not iterator then
                iterator = 0
              end
              text7 = stateFlag3.rotation
              if not text7 then
                text7 = vec3
                dataCollection5 = 0
                iterator2 = 0
                workingValue28 = 0
                text7 = text7(dataCollection5, iterator2, workingValue28)
              end
              text2 = text2(text3, text4, text5, dataCollection4, text6, iterator, text7)
              dataCollection3[stateFlag] = text2
            end
          end
        end
      end
    end
  end
  workingValue93 = localValue5
  localValue8 = localValue5.set
  workingValue103 = "objects"
  workingValue2 = localValue6
  workingValue6 = false
  localValue8(workingValue93, workingValue103, workingValue2, workingValue6)
end

-- === HELPER FUNCTION (decompiler name: workingValue69; parameters: localValue1, localValue2) ===
function workingValue69(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2
  localValue3 = Entity
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  localValue3 = localValue3.state
  localValue4 = localValue3.objects
  if localValue4 then
    localValue4 = pairs
    localValue5 = localValue3.objects
    localValue4, localValue5, localValue6, localValue7 = localValue4(localValue5)
    for localValue8, workingValue93 in localValue4, localValue5, localValue6, localValue7 do
      workingValue103 = pairs
      workingValue2 = workingValue93
      workingValue103, workingValue2, workingValue6, number = workingValue103(workingValue2)
      for number2, number3 in workingValue103, workingValue2, workingValue6, number do
        number5 = DoesEntityExist
        number7 = number3
        number5 = number5(number7)
        if number5 then
          number5 = SetEntityAsMissionEntity
          number7 = number3
          stateFlag = true
          stateFlag2 = true
          number5(number7, stateFlag, stateFlag2)
          number5 = DeleteEntity
          number7 = number3
          -- Beginner: Delete a GTA entity.
          number5(number7)
        end
      end
    end
  end
  localValue5 = localValue3
  localValue4 = localValue3.set
  localValue6 = "objects"
  localValue7 = nil
  localValue8 = false
  localValue4(localValue5, localValue6, localValue7, localValue8)
end

-- === HELPER FUNCTION (decompiler name: workingValue70; parameters: localValue1) ===
function workingValue70(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93
  localValue2 = nil
  localValue3 = nil
  localValue4 = IsCamActive
  localValue5 = localValue1.code
  localValue4 = localValue4(localValue5)
  if localValue4 then
    localValue2 = localValue1.code
    localValue3 = localValue1.products
  else
    localValue2 = localValue1.products
    localValue3 = localValue1.code
  end
  localValue4 = SetCamActive
  localValue5 = localValue2
  localValue6 = false
  localValue4(localValue5, localValue6)
  localValue4 = SetCamActive
  localValue5 = localValue3
  localValue6 = true
  localValue4(localValue5, localValue6)
  localValue4 = SetCamActiveWithInterp
  localValue5 = localValue3
  localValue6 = localValue2
  localValue7 = 1500
  localValue8 = 1
  workingValue93 = 1
  localValue4(localValue5, localValue6, localValue7, localValue8, workingValue93)
end

-- === HELPER FUNCTION (decompiler name: workingValue71; parameters: localValue1, localValue2) ===
function workingValue71(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2
  localValue3 = workingValue50
  localValue4 = "utility_lib_4"
  localValue5 = nil
  localValue3, localValue4 = localValue3(localValue4, localValue5)
  localValue6 = localValue3
  localValue5 = localValue3.init
  localValue7 = "ui/vending/dui/index.html"
  localValue8 = 256
  workingValue93 = 64
  localValue5(localValue6, localValue7, localValue8, workingValue93)
  localValue5 = SetEntityAlpha
  localValue6 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue6 = localValue6()
  localValue7 = 0
  localValue8 = false
  localValue5(localValue6, localValue7, localValue8)
  localValue5 = "code"
  localValue6 = ""
  localValue7 = {}

  -- === HELPER FUNCTION: localValue8() ===
  function localValue8()
    local localValue12, localValue22, localValue32, localValue42
    localValue12 = localValue3
    localValue22 = localValue12
    localValue12 = localValue12.msg
    localValue32 = {}
    localValue32.action = "update"
    localValue42 = localValue6
    localValue32.code = localValue42
    localValue12(localValue22, localValue32)
  end

  -- === HELPER FUNCTION (decompiler name: workingValue93; parameters: localValue12) ===
  function workingValue93(localValue12)
    local localValue22, localValue32, localValue42, localValue52
    localValue22 = localValue6
    localValue32 = localValue22
    localValue22 = localValue22.len
    localValue22 = localValue22(localValue32)
    if localValue22 >= 2 then
      localValue32 = localValue12
      localValue22 = localValue12.match
      localValue42 = "%d"
      localValue22 = localValue22(localValue32, localValue42)
      if localValue22 then
        localValue22 = localValue6
        localValue32 = localValue22
        localValue22 = localValue22.sub
        localValue42 = 1
        localValue52 = -2
        localValue22 = localValue22(localValue32, localValue42, localValue52)
        localValue6 = localValue22
      else
        localValue22 = ""
        localValue6 = localValue22
      end
    end
    localValue22 = localValue6
    localValue32 = localValue12
    localValue22 = localValue22 .. localValue32
    localValue6 = localValue22
    localValue22 = localValue8
    localValue22()
  end
  workingValue103 = GetOffsetFromEntityInWorldCoords
  workingValue2 = localValue2
  workingValue6 = localValue1.views
  workingValue6 = workingValue6.code
  workingValue6 = workingValue6.offset
  workingValue6 = workingValue6.x
  number = localValue1.views
  number = number.code
  number = number.offset
  number = number.y
  number2 = localValue1.views
  number2 = number2.code
  number2 = number2.offset
  number2 = number2.z
  workingValue103 = workingValue103(workingValue2, workingValue6, number, number2)
  workingValue2 = CreateCam
  workingValue6 = "DEFAULT_SCRIPTED_CAMERA"
  number = true
  -- Beginner: result below is cameraHandle.
  workingValue2 = workingValue2(workingValue6, number)
  localValue7.code = workingValue2
  workingValue2 = SetCamCoord
  workingValue6 = localValue7.code
  number = workingValue103.x
  number2 = workingValue103.y
  number3 = workingValue103.z
  workingValue2(workingValue6, number, number2, number3)
  workingValue2 = SetCamRot
  workingValue6 = localValue7.code
  number = 0.0
  number2 = 0.0
  number3 = GetEntityHeading
  number5 = localValue2
  -- Beginner: result below is heading.
  number3 = number3(number5)
  number5 = 2
  workingValue2(workingValue6, number, number2, number3, number5)
  workingValue2 = SetCamFov
  workingValue6 = localValue7.code
  number = localValue1.views
  number = number.code
  number = number.fov
  number = number + 0.0
  workingValue2(workingValue6, number)
  workingValue2 = GetOffsetFromEntityInWorldCoords
  workingValue6 = localValue2
  number = localValue1.views
  number = number.products
  number = number.offset
  number = number.x
  number2 = localValue1.views
  number2 = number2.products
  number2 = number2.offset
  number2 = number2.y
  number3 = localValue1.views
  number3 = number3.products
  number3 = number3.offset
  number3 = number3.z
  workingValue2 = workingValue2(workingValue6, number, number2, number3)
  workingValue103 = workingValue2
  workingValue2 = CreateCam
  workingValue6 = "DEFAULT_SCRIPTED_CAMERA"
  number = true
  -- Beginner: result below is cameraHandle.
  workingValue2 = workingValue2(workingValue6, number)
  localValue7.products = workingValue2
  workingValue2 = SetCamCoord
  workingValue6 = localValue7.products
  number = workingValue103.x
  number2 = workingValue103.y
  number3 = workingValue103.z
  workingValue2(workingValue6, number, number2, number3)
  workingValue2 = SetCamRot
  workingValue6 = localValue7.products
  number = 0.0
  number2 = 0.0
  number3 = GetEntityHeading
  number5 = localValue2
  -- Beginner: result below is heading.
  number3 = number3(number5)
  number5 = 2
  workingValue2(workingValue6, number, number2, number3, number5)
  workingValue2 = SetCamFov
  workingValue6 = localValue7.products
  number = localValue1.views
  number = number.products
  number = number.fov
  number = number + 0.0
  workingValue2(workingValue6, number)
  workingValue2 = SetCamActive
  workingValue6 = localValue7.code
  number = true
  workingValue2(workingValue6, number)
  workingValue2 = RenderScriptCams
  workingValue6 = true
  number = true
  number2 = 1500
  number3 = true
  number5 = false
  workingValue2(workingValue6, number, number2, number3, number5)
  workingValue2 = Citizen
  workingValue2 = workingValue2.SetTimeout
  workingValue6 = 1500

  -- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
  function number()
    local localValue12, localValue22, localValue32, localValue42
    localValue12 = localValue3
    localValue22 = localValue12
    localValue12 = localValue12.replaceTexture
    localValue32 = "mxc_vend_parts_props_ytd"
    localValue42 = "mxc_vendingmachine_display_d"
    localValue12(localValue22, localValue32, localValue42)
  end
  workingValue2(workingValue6, number)
  workingValue2 = GetResourceState
  workingValue6 = "utility_pausemenu"
  workingValue2 = workingValue2(workingValue6)
  if "started" == workingValue2 then
    workingValue2 = exports
    workingValue2 = workingValue2.utility_pausemenu
    workingValue6 = workingValue2
    workingValue2 = workingValue2.DisableMenus
    number = true
    workingValue2(workingValue6, number)
  end
  workingValue2 = LocalPlayer
  workingValue2 = workingValue2.state
  workingValue2.invBusy = true
  workingValue2 = LocalPlayer
  workingValue2 = workingValue2.state
  workingValue2 = workingValue2.set
  if workingValue2 then
    workingValue2 = LocalPlayer
    workingValue2 = workingValue2.state
    workingValue6 = workingValue2
    workingValue2 = workingValue2.set
    number = "inv_busy"
    number2 = true
    number3 = true
    workingValue2(workingValue6, number, number2, number3)
  end
  workingValue2 = workingValue54
  workingValue6 = localValue1
  number = localValue2
  workingValue2 = workingValue2(workingValue6, number)
  while true do
    workingValue6 = backgroundThread2.Translations
    workingValue6 = workingValue6.vending_menu_helper
    if not workingValue6 then
      workingValue6 = ""
    end
    number2 = localValue6
    number = localValue6.len
    number = number(number2)
    if 2 == number then
      if workingValue2 then
        number = workingValue2[localValue6]
        if number then
          number = workingValue2[localValue6]
          number2 = backgroundThread2.Items
          number2 = number2[number]
          if number2 then
            number3 = backgroundThread2.Translations
            number3 = number3.selected_product_price
            if not number3 then
              number3 = "%s - ~g~\194\163%s~w~ \n"
            end
            number5 = number3
            number3 = number3.format
            number7 = number2.label
            stateFlag = number2.price
            number3 = number3(number5, number7, stateFlag)
            number7 = workingValue6
            number5 = workingValue6.format
            stateFlag = number3
            number5 = number5(number7, stateFlag)
            workingValue6 = number5
          else
            number5 = workingValue6
            number3 = workingValue6.format
            number7 = backgroundThread2.Translations
            number7 = number7.invalid_product
            if not number7 then
              number7 = "~r~Invalid product.~w~"
            end
            number3 = number3(number5, number7)
            workingValue6 = number3
          end
      end
      else
        number2 = workingValue6
        number = workingValue6.format
        number3 = backgroundThread2.Translations
        number3 = number3.invalid_product
        if not number3 then
          number3 = "~r~Invalid product.~w~"
        end
        number = number(number2, number3)
        workingValue6 = number
      end
    else
      number2 = workingValue6
      number = workingValue6.format
      number3 = ""
      number = number(number2, number3)
      workingValue6 = number
    end
    number = workingValue22
    number2 = workingValue6
    number(number2)
    number = DisableAllControlActions
    number2 = 0
    number(number2)
    number = IsDisabledControlJustPressed
    number2 = 0
    number3 = 37
    number = number(number2, number3)
    if number then
      if localValue5 == "code" then
        localValue5 = "products"
      else
        localValue5 = "code"
      end

      number = workingValue70
      number2 = localValue7
      number(number2)
    end
    number = IsDisabledControlJustPressed
    number2 = 0
    number3 = 177
    number = number(number2, number3)
    if number then
      localValue6 = ""
      break
    end
    number = IsDisabledControlJustPressed
    number2 = 0
    number3 = 215
    number = number(number2, number3)
    if number then
      if workingValue2 then
        number = workingValue2[localValue6]
      end
      if not number then
        number = workingValue23
        number2 = backgroundThread2.Translations
        number2 = number2.selection_not_valid
        if not number2 then
          number2 = "~r~Invalid.~w~"
        end
        number3 = 2000
        number(number2, number3)
        number = Citizen
        number = number.Wait
        number2 = 2000
        number(number2)
        localValue6 = ""
        number = localValue8
        number()
      else
        break
      end
    end
    number = pairs
    number2 = localValue1.inputs
    number, number2, number3, number5 = number(number2)
    for number7, stateFlag in number, number2, number3, number5 do
      stateFlag2 = IsDisabledControlJustPressed
      stateFlag3 = 0
      dataCollection3 = stateFlag
      stateFlag2 = stateFlag2(stateFlag3, dataCollection3)
      if stateFlag2 then
        stateFlag2 = backgroundThread2.Functions
        stateFlag2 = stateFlag2.PlaySound
        stateFlag3 = "buttonClicked"
        dataCollection3 = nil
        text2 = backgroundThread2.AudiosVolumes
        text2 = text2.buttonClicked
        if not text2 then
          text2 = 0.15
        end
        stateFlag2(stateFlag3, dataCollection3, text2)
        stateFlag2 = workingValue93
        stateFlag3 = number7
        stateFlag2(stateFlag3)
      end
    end
    number = Citizen
    number = number.Wait
    number2 = 0
    number(number2)
  end
  workingValue6 = RenderScriptCams
  number = false
  number2 = true
  number3 = 1500
  number5 = true
  number7 = false
  workingValue6(number, number2, number3, number5, number7)
  workingValue6 = Citizen
  workingValue6 = workingValue6.SetTimeout
  number = 1500

  -- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
  function number2()
    local localValue12, localValue22, localValue32
    localValue12 = DestroyCam
    localValue22 = localValue7.code
    localValue32 = true
    localValue12(localValue22, localValue32)
    localValue12 = DestroyCam
    localValue22 = localValue7.products
    localValue32 = true
    localValue12(localValue22, localValue32)
  end
  workingValue6(number, number2)
  workingValue6 = Citizen
  workingValue6 = workingValue6.SetTimeout
  number = 2000

  -- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
  function number2()
    local localValue12, localValue22, localValue32
    localValue12 = localValue3
    localValue22 = localValue12
    localValue12 = localValue12.destroy
    localValue12(localValue22)
    localValue12 = RemoveReplaceTexture
    localValue22 = "mxc_vend_parts_props_ytd"
    localValue32 = "mxc_vendingmachine_display_d"
    localValue12(localValue22, localValue32)
  end
  workingValue6(number, number2)
  workingValue6 = LocalPlayer
  workingValue6 = workingValue6.state
  workingValue6.invBusy = false
  workingValue6 = LocalPlayer
  workingValue6 = workingValue6.state
  workingValue6 = workingValue6.set
  if workingValue6 then
    workingValue6 = LocalPlayer
    workingValue6 = workingValue6.state
    number = workingValue6
    workingValue6 = workingValue6.set
    number2 = "inv_busy"
    number3 = false
    number5 = true
    workingValue6(number, number2, number3, number5)
  end
  workingValue6 = GetResourceState
  number = "utility_pausemenu"
  workingValue6 = workingValue6(number)
  if "started" == workingValue6 then
    workingValue6 = exports
    workingValue6 = workingValue6.utility_pausemenu
    number = workingValue6
    workingValue6 = workingValue6.DisableMenus
    number2 = false
    workingValue6(number, number2)
  end
  workingValue6 = SetEntityAlpha
  number = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  number = number()
  number2 = 255
  number3 = false
  workingValue6(number, number2, number3)
  return localValue6
end
dataCollection7 = {}

-- === HELPER FUNCTION (decompiler name: workingValue74; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue74(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, workingValue93
  localValue5 = CMG
  localValue5 = localValue5.TriggerServerCallback
  localValue6 = "a3f2099a04"
  localValue7 = localValue1.name
  localValue8 = localValue2
  localValue5 = localValue5(localValue6, localValue7, localValue8)
  if localValue5 then
    localValue6 = TriggerServerEvent
    localValue7 = "32e4f00ebc"
    localValue8 = localValue3
    workingValue93 = true
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "32e4f00ebc".
    localValue6(localValue7, localValue8, workingValue93)
    localValue6 = localValue4
    localValue6()
    localValue6 = TriggerServerEvent
    localValue7 = "32e4f00ebc"
    localValue8 = localValue3
    workingValue93 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "32e4f00ebc".
    localValue6(localValue7, localValue8, workingValue93)
    localValue6 = TriggerServerEvent
    localValue7 = "6b2c902639"
    localValue8 = localValue1.name
    workingValue93 = localValue2
    localValue6(localValue7, localValue8, workingValue93)
  else
    localValue6 = workingValue23
    localValue7 = backgroundThread2.Translations
    localValue7 = localValue7.not_enough_money
    if not localValue7 then
      localValue7 = "~r~Not enough money.~w~"
    end
    localValue8 = 2000
    localValue6(localValue7, localValue8)
    localValue6 = TriggerServerEvent
    localValue7 = "32e4f00ebc"
    localValue8 = localValue3
    workingValue93 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "32e4f00ebc".
    localValue6(localValue7, localValue8, workingValue93)
  end
end
dataCollection7.TryToBuy = workingValue74

-- === HELPER FUNCTION (decompiler name: workingValue74; parameters: localValue1, localValue2, localValue3) ===
function workingValue74(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8
  localValue4 = backgroundThread2.Sounds
  if localValue4 then
    if "buttonClicked" == localValue1 then
      localValue4 = PlaySoundFrontend
      localValue5 = -1
      localValue6 = "SELECT"
      localValue7 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      localValue8 = false
      localValue4(localValue5, localValue6, localValue7, localValue8)
      return
    end
    localValue4 = {}
    localValue4.snackSprings = "vending_snack_springs"
    localValue4.snackDroppingItem = "vending_snack_dropping_item"
    localValue4.snackDoorPickup = "vending_snack_door_pickup"
    localValue4.sodaBottleDropped = "vending_soda_bottle_dropped"
    localValue4.coffeMachine = "vending_coffe_machine"
    localValue4.waterPouring = "vending_water_pouring"
    localValue5 = localValue4[localValue1]
    if localValue5 then
      localValue6 = SendNUIMessage
      localValue7 = {}
      localValue7.transactionType = localValue5
      localValue7.volumeOverride = localValue3
      -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
      localValue6(localValue7)
    end
  end
end
dataCollection7.PlaySound = workingValue74
backgroundThread2.Functions = dataCollection7

-- === HELPER FUNCTION (decompiler name: dataCollection7; parameters: localValue1, localValue2) ===
function dataCollection7(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2
  localValue3 = Entity
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  localValue3 = localValue3.state
  localValue4 = workingValue58
  localValue5 = localValue2
  localValue6 = "mxc_vend_prop_snak_springs"
  localValue4 = localValue4(localValue5, localValue6)
  localValue5 = workingValue58
  localValue6 = localValue2
  localValue7 = "mxc_vend_prop_snak_door"
  localValue8 = vec3
  workingValue93 = -0.085311
  workingValue103 = -0.457828
  workingValue2 = -0.336695
  localValue8, workingValue93, workingValue103, workingValue2 = localValue8(workingValue93, workingValue103, workingValue2)
  localValue5 = localValue5(localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2)
  localValue7 = localValue3
  localValue6 = localValue3.set
  localValue8 = "springs"
  workingValue93 = localValue4
  workingValue103 = false
  localValue6(localValue7, localValue8, workingValue93, workingValue103)
  localValue7 = localValue3
  localValue6 = localValue3.set
  localValue8 = "door"
  workingValue93 = localValue5
  workingValue103 = false
  localValue6(localValue7, localValue8, workingValue93, workingValue103)
  localValue6 = workingValue68
  localValue7 = localValue1
  localValue8 = localValue2
  workingValue93 = "snack"
  workingValue103 = localValue4
  localValue6(localValue7, localValue8, workingValue93, workingValue103)
end

-- === HELPER FUNCTION (decompiler name: workingValue74; parameters: localValue1, localValue2) ===
function workingValue74(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue3 = Entity
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  localValue3 = localValue3.state
  localValue4 = workingValue69
  localValue5 = localValue1
  localValue6 = localValue2
  localValue4(localValue5, localValue6)
  localValue4 = localValue3.springs
  if localValue4 then
    localValue4 = DoesEntityExist
    localValue5 = localValue3.springs
    localValue4 = localValue4(localValue5)
    if localValue4 then
      localValue4 = DeleteEntity
      localValue5 = localValue3.springs
      -- Beginner: Delete a GTA entity.
      localValue4(localValue5)
    end
  end
  localValue4 = localValue3.door
  if localValue4 then
    localValue4 = DoesEntityExist
    localValue5 = localValue3.door
    localValue4 = localValue4(localValue5)
    if localValue4 then
      localValue4 = DeleteEntity
      localValue5 = localValue3.door
      localValue4(localValue5)
    end
  end
  localValue5 = localValue3
  localValue4 = localValue3.set
  localValue6 = "springs"
  localValue7 = nil
  localValue8 = false
  localValue4(localValue5, localValue6, localValue7, localValue8)
  localValue5 = localValue3
  localValue4 = localValue3.set
  localValue6 = "door"
  localValue7 = nil
  localValue8 = false
  localValue4(localValue5, localValue6, localValue7, localValue8)
end

-- === HELPER FUNCTION (decompiler name: workingValue75; parameters: localValue1, localValue2, localValue3) ===
function workingValue75(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6
  localValue4 = Entity
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  localValue4 = localValue4.state
  localValue6 = localValue3
  localValue5 = localValue3.sub
  localValue7 = 1
  localValue8 = 1
  localValue5 = localValue5(localValue6, localValue7, localValue8)
  localValue6 = RequestAnimDict
  localValue7 = "clip@snakfall_gen"
  localValue6(localValue7)
  while true do
    localValue6 = HasAnimDictLoaded
    localValue7 = "clip@snakfall_gen"
    localValue6 = localValue6(localValue7)
    if localValue6 then
      break
    end
    localValue6 = Citizen
    localValue6 = localValue6.Wait
    localValue7 = 0
    localValue6(localValue7)
  end
  localValue6 = GetAnimDuration
  localValue7 = "clip@snakfall_gen"
  localValue8 = "snakfall_gen_"
  workingValue93 = localValue5
  localValue8 = localValue8 .. workingValue93
  localValue6 = localValue6(localValue7, localValue8)
  localValue6 = localValue6 * 1000
  localValue7 = RemoveAnimDict
  localValue8 = "clip@snakfall_gen"
  localValue7(localValue8)
  localValue7 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue7 = localValue7()
  localValue8 = localValue4.springs
  if not (localValue8 and DoesEntityExist(localValue4.springs)) then
    return
  end

  localValue8 = localValue4.objects
  if not (localValue8 and localValue4.objects[localValue3]) then
    return
  end

  localValue8 = GetOffsetFromEntityInWorldCoords
  workingValue93 = localValue4.springs
  workingValue103 = 0.0
  workingValue2 = -1.0
  workingValue6 = -1.1
  localValue8 = localValue8(workingValue93, workingValue103, workingValue2, workingValue6)
  workingValue93 = GetEntityRotation
  workingValue103 = localValue4.springs
  workingValue93 = workingValue93(workingValue103)
  workingValue103 = workingValue66
  workingValue2 = localValue8
  workingValue6 = workingValue93.z
  number = 3000
  workingValue103(workingValue2, workingValue6, number)
  workingValue103 = workingValue19
  workingValue2 = "mini@sprunk"
  workingValue6 = "plyr_buy_drink_pt1"
  number = 16
  workingValue103(workingValue2, workingValue6, number)
  workingValue103 = Citizen
  workingValue103 = workingValue103.Wait
  workingValue2 = 1400
  workingValue103(workingValue2)
  workingValue103 = ClearPedTasks
  workingValue2 = localValue7
  workingValue103(workingValue2)
  workingValue103 = workingValue64
  workingValue2 = localValue4.springs
  workingValue6 = "clip@snaksprings"
  number = "mxc_vend_prop_snak_springs"
  number2 = localValue3
  number = number .. number2
  number2 = false
  workingValue103(workingValue2, workingValue6, number, number2)
  workingValue103 = workingValue64
  workingValue2 = localValue4.objects
  workingValue2 = workingValue2[localValue3]
  workingValue2 = workingValue2[1]
  workingValue6 = "clip@snakfall_gen"
  number = "snakfall_gen_"
  number2 = localValue5
  number = number .. number2
  number2 = false
  workingValue103(workingValue2, workingValue6, number, number2)
  workingValue103 = workingValue64
  workingValue2 = localValue4.objects
  workingValue2 = workingValue2[localValue3]
  workingValue2 = workingValue2[2]
  workingValue6 = "clip@snakfall_gen"
  number = "slot_swap_gen_abcde"
  number2 = false
  workingValue103(workingValue2, workingValue6, number, number2)
  workingValue103 = workingValue64
  workingValue2 = localValue4.objects
  workingValue2 = workingValue2[localValue3]
  workingValue2 = workingValue2[3]
  workingValue6 = "clip@snakfall_gen"
  number = "slot_swap_gen_abcde"
  number2 = false
  workingValue103(workingValue2, workingValue6, number, number2)
  workingValue103 = GetEntityModel
  workingValue2 = localValue4.objects
  workingValue2 = workingValue2[localValue3]
  workingValue2 = workingValue2[1]
  -- Beginner: result below is modelHash.
  workingValue103 = workingValue103(workingValue2)
  workingValue2 = CMG
  workingValue2 = workingValue2.requestEntitySpawn
  workingValue6 = "vending_pickup"
  number = workingValue103
  number2 = localValue8
  workingValue2(workingValue6, number, number2)
  workingValue2 = CreateObject
  workingValue6 = workingValue103
  number = localValue8.x
  number2 = localValue8.y
  number3 = localValue8.z
  number3 = number3 - 10.0
  number5 = true
  number7 = true
  stateFlag = false
  -- Beginner: result below is objectEntity.
  workingValue2 = workingValue2(workingValue6, number, number2, number3, number5, number7, stateFlag)
  workingValue6 = backgroundThread2.Functions
  workingValue6 = workingValue6.PlaySound
  number = "snackSprings"
  number2 = nil
  number3 = backgroundThread2.AudiosVolumes
  number3 = number3.snackSprings
  workingValue6(number, number2, number3)
  workingValue6 = Citizen
  workingValue6 = workingValue6.SetTimeout
  number = localValue6 - 300

  -- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
  function number2()
    local localValue12, localValue22, localValue32, localValue42
    localValue12 = backgroundThread2.Functions
    localValue12 = localValue12.PlaySound
    localValue22 = "snackDroppingItem"
    localValue32 = nil
    localValue42 = backgroundThread2.AudiosVolumes
    localValue42 = localValue42.snackDroppingItem
    localValue12(localValue22, localValue32, localValue42)
  end
  workingValue6(number, number2)
  workingValue6 = workingValue67
  number = localValue6
  workingValue6(number)
  workingValue6 = workingValue18
  number = localValue7
  number2 = "mini@sprunk"
  number3 = "plyr_buy_drink_pt1"
  number5 = 2.0
  number7 = 2.0
  stateFlag = -1
  stateFlag2 = 0
  stateFlag3 = 0.3
  workingValue6(number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3)
  workingValue6 = Citizen
  workingValue6 = workingValue6.Wait
  number = 1200
  workingValue6(number)
  workingValue6 = workingValue65
  number = localValue4.springs
  number2 = "clip@snaksprings"
  number3 = "mxc_vend_prop_snak_springs"
  number5 = localValue3
  number3 = number3 .. number5
  workingValue6(number, number2, number3)
  workingValue6 = workingValue65
  number = localValue4.objects
  number = number[localValue3]
  number = number[1]
  number2 = "clip@snakfall_gen"
  number3 = "snakfall_gen_"
  number5 = localValue5
  number3 = number3 .. number5
  workingValue6(number, number2, number3)
  workingValue6 = workingValue65
  number = localValue4.objects
  number = number[localValue3]
  number = number[2]
  number2 = "clip@snakfall_gen"
  number3 = "slot_swap_gen_abcde"
  workingValue6(number, number2, number3)
  workingValue6 = workingValue65
  number = localValue4.objects
  number = number[localValue3]
  number = number[3]
  number2 = "clip@snakfall_gen"
  number3 = "slot_swap_gen_abcde"
  workingValue6(number, number2, number3)
  workingValue6 = AttachEntityToEntity
  number = workingValue2
  number2 = localValue7
  number3 = GetPedBoneIndex
  number5 = localValue7
  number7 = 28422
  number3 = number3(number5, number7)
  number5 = 0.0
  number7 = 0.0
  stateFlag = 0.0
  stateFlag2 = 0.0
  stateFlag3 = 0.0
  dataCollection3 = 130.0
  text2 = true
  text3 = true
  text4 = false
  text5 = false
  dataCollection4 = 2
  text6 = true
  -- Beginner: Attach one entity to another entity.
  workingValue6(number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6)
  workingValue6 = backgroundThread2.Functions
  workingValue6 = workingValue6.PlaySound
  number = "snackDoorPickup"
  number2 = nil
  number3 = backgroundThread2.AudiosVolumes
  number3 = number3.snackDoorPickup
  workingValue6(number, number2, number3)
  workingValue6 = TriggerServerEvent
  number = "1bb98aff8b"
  number2 = GetEntityCoords
  number3 = localValue4.door
  number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6 = number2(number3)
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1bb98aff8b".
  workingValue6(number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6)
  workingValue6 = Citizen
  workingValue6 = workingValue6.Wait
  number = 500
  workingValue6(number)
  workingValue6 = ClearPedTasks
  number = localValue7
  workingValue6(number)
  workingValue6 = workingValue19
  number = "mp_common_miss"
  number2 = "put_away_coke"
  workingValue6(number, number2)
  workingValue6 = Citizen
  workingValue6 = workingValue6.Wait
  number = 700
  workingValue6(number)
  workingValue6 = ClearPedTasks
  number = localValue7
  workingValue6(number)
  workingValue6 = SetEntityAsMissionEntity
  number = workingValue2
  number2 = true
  number3 = true
  workingValue6(number, number2, number3)
  workingValue6 = DeleteEntity
  number = workingValue2
  -- Beginner: Delete a GTA entity.
  workingValue6(number)
  workingValue6 = workingValue54
  number = localValue1
  number2 = localValue2
  workingValue6 = workingValue6(number, number2)
  number = workingValue6 or number
  if workingValue6 then
    number = workingValue6[localValue3]
  end
  if number then
    number2 = TriggerEvent
    number3 = "c82f62b8de"
    number5 = number
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c82f62b8de".
    number2(number3, number5)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue76; parameters: localValue1, localValue2, localValue3) ===
function workingValue76(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103
  localValue4 = Entity
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  localValue4 = localValue4.state
  localValue5 = workingValue58
  localValue6 = localValue2
  localValue7 = localValue3
  localValue5 = localValue5(localValue6, localValue7)
  localValue7 = localValue4
  localValue6 = localValue4.set
  localValue8 = "shelf"
  workingValue93 = localValue5
  workingValue103 = false
  localValue6(localValue7, localValue8, workingValue93, workingValue103)
  localValue6 = workingValue68
  localValue7 = localValue1
  localValue8 = localValue2
  workingValue93 = "soda"
  workingValue103 = localValue5
  localValue6(localValue7, localValue8, workingValue93, workingValue103)
end

-- === HELPER FUNCTION (decompiler name: workingValue77; parameters: localValue1, localValue2) ===
function workingValue77(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue3 = Entity
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  localValue3 = localValue3.state
  localValue4 = workingValue69
  localValue5 = localValue1
  localValue6 = localValue2
  localValue4(localValue5, localValue6)
  localValue4 = localValue3.shelf
  if localValue4 then
    localValue4 = DoesEntityExist
    localValue5 = localValue3.shelf
    localValue4 = localValue4(localValue5)
    if localValue4 then
      localValue4 = DeleteEntity
      localValue5 = localValue3.shelf
      -- Beginner: Delete a GTA entity.
      localValue4(localValue5)
    end
  end
  localValue5 = localValue3
  localValue4 = localValue3.set
  localValue6 = "shelf"
  localValue7 = nil
  localValue8 = false
  localValue4(localValue5, localValue6, localValue7, localValue8)
end

-- === HELPER FUNCTION (decompiler name: workingValue78; parameters: localValue1, localValue2, localValue3) ===
function workingValue78(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6
  localValue4 = Entity
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  localValue4 = localValue4.state
  localValue5 = RequestAnimDict
  localValue6 = "clip@sodashelf"
  localValue5(localValue6)
  while true do
    localValue5 = HasAnimDictLoaded
    localValue6 = "clip@sodashelf"
    localValue5 = localValue5(localValue6)
    if localValue5 then
      break
    end
    localValue5 = Citizen
    localValue5 = localValue5.Wait
    localValue6 = 0
    localValue5(localValue6)
  end
  localValue5 = RequestAnimDict
  localValue6 = "clip@sodatravel"
  localValue5(localValue6)
  while true do
    localValue5 = HasAnimDictLoaded
    localValue6 = "clip@sodatravel"
    localValue5 = localValue5(localValue6)
    if localValue5 then
      break
    end
    localValue5 = Citizen
    localValue5 = localValue5.Wait
    localValue6 = 0
    localValue5(localValue6)
  end
  localValue5 = GetAnimDuration
  localValue6 = "clip@sodashelf"
  localValue7 = "soda_shelf_"
  localValue8 = localValue3
  localValue7 = localValue7 .. localValue8
  localValue5 = localValue5(localValue6, localValue7)
  localValue5 = localValue5 * 1000
  localValue6 = RemoveAnimDict
  localValue7 = "clip@sodashelf"
  localValue6(localValue7)
  localValue6 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue6 = localValue6()
  localValue7 = localValue4.shelf
  if not (localValue7 and DoesEntityExist(localValue4.shelf)) then
    return
  end

  localValue7 = localValue4.objects
  if not (localValue7 and localValue4.objects[localValue3]) then
    return
  end

  localValue7 = GetOffsetFromEntityInWorldCoords
  localValue8 = localValue4.shelf
  workingValue93 = 0.0
  workingValue103 = -1.0
  workingValue2 = -1.1
  localValue7 = localValue7(localValue8, workingValue93, workingValue103, workingValue2)
  localValue8 = GetEntityRotation
  workingValue93 = localValue4.shelf
  localValue8 = localValue8(workingValue93)
  workingValue93 = workingValue66
  workingValue103 = localValue7
  workingValue2 = localValue8.z
  workingValue6 = 3000
  workingValue93(workingValue103, workingValue2, workingValue6)
  workingValue93 = workingValue19
  workingValue103 = "mini@sprunk"
  workingValue2 = "plyr_buy_drink_pt1"
  workingValue6 = 16
  workingValue93(workingValue103, workingValue2, workingValue6)
  workingValue93 = Citizen
  workingValue93 = workingValue93.Wait
  workingValue103 = 1400
  workingValue93(workingValue103)
  workingValue93 = ClearPedTasks
  workingValue103 = localValue6
  workingValue93(workingValue103)
  workingValue93 = workingValue64
  workingValue103 = localValue4.shelf
  workingValue2 = "clip@sodashelf"
  workingValue6 = "soda_shelf_"
  number = localValue3
  workingValue6 = workingValue6 .. number
  number = false
  workingValue93(workingValue103, workingValue2, workingValue6, number)
  workingValue93 = workingValue64
  workingValue103 = localValue4.objects
  workingValue103 = workingValue103[localValue3]
  workingValue103 = workingValue103[1]
  workingValue2 = "clip@sodatravel"
  workingValue6 = "soda_travel_"
  number = localValue3
  workingValue6 = workingValue6 .. number
  number = false
  workingValue93(workingValue103, workingValue2, workingValue6, number)
  workingValue93 = Citizen
  workingValue93 = workingValue93.Wait
  workingValue103 = 800
  workingValue93(workingValue103)
  workingValue93 = workingValue64
  workingValue103 = localValue4.objects
  workingValue103 = workingValue103[localValue3]
  workingValue103 = workingValue103[2]
  workingValue2 = "clip@sodatravel"
  workingValue6 = "soda_swap_gen"
  number = false
  workingValue93(workingValue103, workingValue2, workingValue6, number)
  workingValue93 = workingValue64
  workingValue103 = localValue4.objects
  workingValue103 = workingValue103[localValue3]
  workingValue103 = workingValue103[3]
  workingValue2 = "clip@sodatravel"
  workingValue6 = "soda_swap_gen"
  number = false
  workingValue93(workingValue103, workingValue2, workingValue6, number)
  workingValue93 = GetEntityModel
  workingValue103 = localValue4.objects
  workingValue103 = workingValue103[localValue3]
  workingValue103 = workingValue103[1]
  -- Beginner: result below is modelHash.
  workingValue93 = workingValue93(workingValue103)
  workingValue103 = CMG
  workingValue103 = workingValue103.requestEntitySpawn
  workingValue2 = "vending_pickup"
  workingValue6 = workingValue93
  number = localValue7
  workingValue103(workingValue2, workingValue6, number)
  workingValue103 = CreateObject
  workingValue2 = workingValue93
  workingValue6 = localValue7.x
  number = localValue7.y
  number2 = localValue7.z
  number2 = number2 - 10.0
  number3 = true
  number5 = true
  number7 = false
  -- Beginner: result below is objectEntity.
  workingValue103 = workingValue103(workingValue2, workingValue6, number, number2, number3, number5, number7)
  workingValue2 = Citizen
  workingValue2 = workingValue2.SetTimeout
  workingValue6 = localValue5 - 3000

  -- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
  function number()
    local localValue12, localValue22, localValue32, localValue42
    localValue12 = backgroundThread2.Functions
    localValue12 = localValue12.PlaySound
    localValue22 = "sodaBottleDropped"
    localValue32 = nil
    localValue42 = backgroundThread2.AudiosVolumes
    localValue42 = localValue42.sodaBottleDropped
    localValue12(localValue22, localValue32, localValue42)
  end
  workingValue2(workingValue6, number)
  workingValue2 = Citizen
  workingValue2 = workingValue2.Wait
  workingValue6 = localValue5
  workingValue2(workingValue6)
  workingValue2 = GetOffsetFromEntityInWorldCoords
  workingValue6 = localValue4.shelf
  number = 0.3
  number2 = -1.0
  number3 = -1.1
  workingValue2 = workingValue2(workingValue6, number, number2, number3)
  workingValue6 = workingValue66
  number = workingValue2
  number2 = localValue8.z
  number3 = 3000
  workingValue6(number, number2, number3)
  workingValue6 = workingValue19
  number = "pickup_object"
  number2 = "putdown_low"
  workingValue6(number, number2)
  workingValue6 = workingValue67
  number = 800
  workingValue6(number)
  workingValue6 = workingValue65
  number = localValue4.shelf
  number2 = "clip@sodashelf"
  number3 = "soda_shelf_"
  number5 = localValue3
  number3 = number3 .. number5
  workingValue6(number, number2, number3)
  workingValue6 = workingValue65
  number = localValue4.objects
  number = number[localValue3]
  number = number[1]
  number2 = "clip@sodatravel"
  number3 = "soda_travel_"
  number5 = localValue3
  number3 = number3 .. number5
  workingValue6(number, number2, number3)
  workingValue6 = workingValue65
  number = localValue4.objects
  number = number[localValue3]
  number = number[2]
  number2 = "clip@sodatravel"
  number3 = "soda_swap_gen"
  workingValue6(number, number2, number3)
  workingValue6 = workingValue65
  number = localValue4.objects
  number = number[localValue3]
  number = number[3]
  number2 = "clip@sodatravel"
  number3 = "soda_swap_gen"
  workingValue6(number, number2, number3)
  workingValue6 = AttachEntityToEntity
  number = workingValue103
  number2 = localValue6
  number3 = GetPedBoneIndex
  number5 = localValue6
  number7 = 28422
  number3 = number3(number5, number7)
  number5 = 0.04
  number7 = 0.01
  stateFlag = -0.04
  stateFlag2 = -73.89
  stateFlag3 = 27.8
  dataCollection3 = 10.47
  text2 = true
  text3 = true
  text4 = false
  text5 = false
  dataCollection4 = 1
  text6 = true
  -- Beginner: Attach one entity to another entity.
  workingValue6(number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6)
  workingValue6 = Citizen
  workingValue6 = workingValue6.Wait
  number = 0
  workingValue6(number)
  workingValue6 = ClearPedTasks
  number = localValue6
  workingValue6(number)
  workingValue6 = workingValue19
  number = "mp_common_miss"
  number2 = "put_away_coke"
  workingValue6(number, number2)
  workingValue6 = Citizen
  workingValue6 = workingValue6.Wait
  number = 0
  workingValue6(number)
  workingValue6 = ClearPedTasks
  number = localValue6
  workingValue6(number)
  workingValue6 = SetEntityAsMissionEntity
  number = workingValue103
  number2 = true
  number3 = true
  workingValue6(number, number2, number3)
  workingValue6 = DeleteEntity
  number = workingValue103
  -- Beginner: Delete a GTA entity.
  workingValue6(number)
  workingValue6 = workingValue54
  number = localValue1
  number2 = localValue2
  workingValue6 = workingValue6(number, number2)
  number = workingValue6 or number
  if workingValue6 then
    number = workingValue6[localValue3]
  end
  if number then
    number2 = TriggerEvent
    number3 = "c82f62b8de"
    number5 = number
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c82f62b8de".
    number2(number3, number5)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue79; parameters: localValue1, localValue2, localValue3) ===
function workingValue79(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6, iterator, text7, dataCollection5, iterator2
  localValue4 = RequestAnimDict
  localValue5 = "clip@cofferefill"
  localValue4(localValue5)
  while true do
    localValue4 = HasAnimDictLoaded
    localValue5 = "clip@cofferefill"
    localValue4 = localValue4(localValue5)
    if localValue4 then
      break
    end
    localValue4 = Citizen
    localValue4 = localValue4.Wait
    localValue5 = 0
    localValue4(localValue5)
  end
  localValue4 = GetAnimDuration
  localValue5 = "clip@cofferefill"
  localValue6 = "coffe_refill"
  localValue4 = localValue4(localValue5, localValue6)
  localValue4 = localValue4 * 1000
  localValue5 = RemoveAnimDict
  localValue6 = "clip@cofferefill"
  localValue5(localValue6)
  localValue5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue5 = localValue5()
  localValue6 = GetOffsetFromEntityInWorldCoords
  localValue7 = localValue2
  localValue8 = -0.2
  workingValue93 = -0.8
  workingValue103 = 0.0
  localValue6 = localValue6(localValue7, localValue8, workingValue93, workingValue103)
  localValue7 = GetEntityRotation
  localValue8 = localValue2
  localValue7 = localValue7(localValue8)
  localValue8 = workingValue66
  workingValue93 = localValue6
  workingValue103 = localValue7.z
  workingValue2 = 3000
  localValue8(workingValue93, workingValue103, workingValue2)
  localValue8 = workingValue19
  workingValue93 = "mini@sprunk"
  workingValue103 = "plyr_buy_drink_pt1"
  workingValue2 = 16
  localValue8(workingValue93, workingValue103, workingValue2)
  localValue8 = workingValue67
  workingValue93 = 1400
  localValue8(workingValue93)
  localValue8 = ClearPedTasks
  workingValue93 = localValue5
  localValue8(workingValue93)
  localValue8 = GetOffsetFromEntityInWorldCoords
  workingValue93 = localValue2
  workingValue103 = -0.087544
  workingValue2 = -0.242745
  workingValue6 = 0.662735
  localValue8 = localValue8(workingValue93, workingValue103, workingValue2, workingValue6)
  workingValue93 = CMG
  workingValue93 = workingValue93.requestEntitySpawn
  workingValue103 = "vending_pickup"
  workingValue2 = GetHashKey
  workingValue6 = "mxc_vend_prop_coffecup"
  -- Beginner: result below is hash.
  workingValue2 = workingValue2(workingValue6)
  workingValue6 = localValue8
  workingValue93(workingValue103, workingValue2, workingValue6)
  workingValue93 = GetHashKey
  workingValue103 = "mxc_vend_prop_coffecup"
  -- Beginner: result below is hash.
  workingValue93 = workingValue93(workingValue103)
  workingValue103 = HasModelLoaded
  workingValue2 = workingValue93
  workingValue103 = workingValue103(workingValue2)
  if not workingValue103 then
    workingValue103 = RequestModel
    workingValue2 = workingValue93
    workingValue103(workingValue2)
    while true do
      workingValue103 = HasModelLoaded
      workingValue2 = workingValue93
      workingValue103 = workingValue103(workingValue2)
      if workingValue103 then
        break
      end
      workingValue103 = Citizen
      workingValue103 = workingValue103.Wait
      workingValue2 = 1
      workingValue103(workingValue2)
    end
  end
  workingValue103 = CreateObject
  workingValue2 = workingValue93
  workingValue6 = localValue8.x
  number = localValue8.y
  number2 = localValue8.z
  number3 = true
  number5 = true
  number7 = false
  -- Beginner: result below is objectEntity.
  workingValue103 = workingValue103(workingValue2, workingValue6, number, number2, number3, number5, number7)
  workingValue2 = SetModelAsNoLongerNeeded
  workingValue6 = workingValue93
  workingValue2(workingValue6)
  workingValue2 = SetEntityVisible
  workingValue6 = workingValue103
  number = false
  number2 = false
  workingValue2(workingValue6, number, number2)
  workingValue2 = SetEntityCoords
  workingValue6 = workingValue103
  number = localValue8.x
  number2 = localValue8.y
  number3 = localValue8.z
  number5 = false
  number7 = false
  stateFlag = false
  stateFlag2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  workingValue2(workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2)
  workingValue2 = GetEntityRotation
  workingValue6 = localValue2
  number = 1
  workingValue2 = workingValue2(workingValue6, number)
  workingValue6 = SetEntityRotation
  number = workingValue103
  number2 = workingValue2.x
  number3 = workingValue2.y
  number5 = workingValue2.z
  number7 = 1
  stateFlag = false
  workingValue6(number, number2, number3, number5, number7, stateFlag)
  workingValue6 = workingValue64
  number = localValue2
  number2 = "clip@cofferefill"
  number3 = "coffe_door"
  number5 = false
  workingValue6(number, number2, number3, number5)
  workingValue6 = workingValue64
  number = workingValue103
  number2 = "clip@cofferefill"
  number3 = "coffe_refill"
  number5 = false
  workingValue6(number, number2, number3, number5)
  workingValue6 = Citizen
  workingValue6 = workingValue6.Wait
  number = 100
  workingValue6(number)
  workingValue6 = SetEntityVisible
  number = workingValue103
  number2 = true
  number3 = false
  workingValue6(number, number2, number3)
  workingValue6 = Citizen
  workingValue6 = workingValue6.SetTimeout
  number = 2500

  -- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
  function number2()
    local localValue12, localValue22, localValue32, localValue42
    localValue12 = backgroundThread2.Functions
    localValue12 = localValue12.PlaySound
    localValue22 = "coffeMachine"
    localValue32 = nil
    localValue42 = backgroundThread2.AudiosVolumes
    localValue42 = localValue42.coffeMachine
    localValue12(localValue22, localValue32, localValue42)
  end
  workingValue6(number, number2)
  workingValue6 = Citizen
  workingValue6 = workingValue6.Wait
  number = localValue4
  workingValue6(number)
  workingValue6 = GetOffsetFromEntityInWorldCoords
  number = localValue2
  number2 = -0.3
  number3 = -0.8
  number5 = 0.0
  workingValue6 = workingValue6(number, number2, number3, number5)
  number = workingValue66
  number2 = workingValue6
  number3 = localValue7.z
  number5 = 3000
  number(number2, number3, number5)
  number = workingValue19
  number2 = "pickup_object"
  number3 = "putdown_low"
  number(number2, number3)
  number = workingValue67
  number2 = 800
  number(number2)
  number = workingValue65
  number2 = localValue2
  number3 = "clip@cofferefill"
  number5 = "coffe_door"
  number(number2, number3, number5)
  number = workingValue65
  number2 = workingValue103
  number3 = "clip@cofferefill"
  number5 = "coffe_refill"
  number(number2, number3, number5)
  if localValue3 then
    number = "prop_fib_coffee"
  else
    number = "mxc_vend_prop_item_cofferefill"
  end

  number2 = GetHashKey
  number3 = number
  -- Beginner: result below is hash.
  number2 = number2(number3)
  number3 = CMG
  number3 = number3.requestEntitySpawn
  number5 = "vending_pickup"
  number7 = number2
  stateFlag = localValue8
  number3(number5, number7, stateFlag)
  number3 = CreateObject
  number5 = number2
  number7 = localValue8.x
  stateFlag = localValue8.y
  stateFlag2 = localValue8.z
  stateFlag3 = true
  dataCollection3 = true
  text2 = false
  -- Beginner: result below is objectEntity.
  number3 = number3(number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2)
  number5 = AttachEntityToEntity
  number7 = number3
  stateFlag = localValue5
  stateFlag2 = GetPedBoneIndex
  stateFlag3 = localValue5
  dataCollection3 = 28422
  stateFlag2 = stateFlag2(stateFlag3, dataCollection3)
  stateFlag3 = 0.04
  dataCollection3 = 0.01
  text2 = -0.04
  text3 = -73.89
  text4 = 27.8
  text5 = 10.47
  dataCollection4 = true
  text6 = true
  iterator = false
  text7 = false
  dataCollection5 = 1
  iterator2 = true
  -- Beginner: Attach one entity to another entity.
  number5(number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6, iterator, text7, dataCollection5, iterator2)
  number5 = DeleteEntity
  number7 = workingValue103
  -- Beginner: Delete a GTA entity.
  number5(number7)
  number5 = Citizen
  number5 = number5.Wait
  number7 = 0
  number5(number7)
  number5 = ClearPedTasks
  number7 = localValue5
  number5(number7)
  number5 = workingValue19
  number7 = "mp_common_miss"
  stateFlag = "put_away_coke"
  number5(number7, stateFlag)
  number5 = Citizen
  number5 = number5.Wait
  number7 = 0
  number5(number7)
  number5 = ClearPedTasks
  number7 = localValue5
  number5(number7)
  number5 = SetEntityAsMissionEntity
  number7 = number3
  stateFlag = true
  stateFlag2 = true
  number5(number7, stateFlag, stateFlag2)
  number5 = DeleteEntity
  number7 = number3
  -- Beginner: Delete a GTA entity.
  number5(number7)
  number5 = localValue1.item
  if number5 then
    number5 = TriggerEvent
    number7 = "c82f62b8de"
    stateFlag = localValue1.item
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c82f62b8de".
    number5(number7, stateFlag)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue80; parameters: localValue1, localValue2) ===
function workingValue80(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6, iterator
  localValue3 = RequestAnimDict
  localValue4 = "clip@waterrefill"
  localValue3(localValue4)
  while true do
    localValue3 = HasAnimDictLoaded
    localValue4 = "clip@waterrefill"
    localValue3 = localValue3(localValue4)
    if localValue3 then
      break
    end
    localValue3 = Citizen
    localValue3 = localValue3.Wait
    localValue4 = 0
    localValue3(localValue4)
  end
  localValue3 = GetAnimDuration
  localValue4 = "clip@waterrefill"
  localValue5 = "water_refill"
  localValue3 = localValue3(localValue4, localValue5)
  localValue3 = localValue3 * 1000
  localValue4 = RemoveAnimDict
  localValue5 = "clip@waterrefill"
  localValue4(localValue5)
  localValue4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  localValue5 = GetOffsetFromEntityInWorldCoords
  localValue6 = localValue2
  localValue7 = -0.056371
  localValue8 = -0.12243
  workingValue93 = 0.603425
  localValue5 = localValue5(localValue6, localValue7, localValue8, workingValue93)
  localValue6 = CMG
  localValue6 = localValue6.requestEntitySpawn
  localValue7 = "vending_pickup"
  localValue8 = GetHashKey
  workingValue93 = "mxc_vend_prop_watercup"
  -- Beginner: result below is hash.
  localValue8 = localValue8(workingValue93)
  workingValue93 = localValue5
  localValue6(localValue7, localValue8, workingValue93)
  localValue6 = GetHashKey
  localValue7 = "mxc_vend_prop_watercup"
  -- Beginner: result below is hash.
  localValue6 = localValue6(localValue7)
  localValue7 = HasModelLoaded
  localValue8 = localValue6
  localValue7 = localValue7(localValue8)
  if not localValue7 then
    localValue7 = RequestModel
    localValue8 = localValue6
    localValue7(localValue8)
    while true do
      localValue7 = HasModelLoaded
      localValue8 = localValue6
      localValue7 = localValue7(localValue8)
      if localValue7 then
        break
      end
      localValue7 = Citizen
      localValue7 = localValue7.Wait
      localValue8 = 1
      localValue7(localValue8)
    end
  end
  localValue7 = CreateObject
  localValue8 = localValue6
  workingValue93 = localValue5.x
  workingValue103 = localValue5.y
  workingValue2 = localValue5.z
  workingValue6 = true
  number = true
  number2 = false
  -- Beginner: result below is objectEntity.
  localValue7 = localValue7(localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2)
  localValue8 = SetModelAsNoLongerNeeded
  workingValue93 = localValue6
  localValue8(workingValue93)
  localValue8 = SetEntityCoords
  workingValue93 = localValue7
  workingValue103 = localValue5.x
  workingValue2 = localValue5.y
  workingValue6 = localValue5.z
  number = false
  number2 = false
  number3 = false
  number5 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue8(workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5)
  localValue8 = GetEntityRotation
  workingValue93 = localValue2
  workingValue103 = 1
  localValue8 = localValue8(workingValue93, workingValue103)
  workingValue93 = SetEntityRotation
  workingValue103 = localValue7
  workingValue2 = localValue8.x
  workingValue6 = localValue8.y
  number = localValue8.z
  number2 = 1
  number3 = false
  workingValue93(workingValue103, workingValue2, workingValue6, number, number2, number3)
  workingValue93 = workingValue64
  workingValue103 = localValue7
  workingValue2 = "clip@waterrefill"
  workingValue6 = "water_refill"
  number = false
  workingValue93(workingValue103, workingValue2, workingValue6, number)
  workingValue93 = Citizen
  workingValue93 = workingValue93.SetTimeout
  workingValue103 = 500

  -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
  function workingValue2()
    local localValue12, localValue22, localValue32, localValue42
    localValue12 = backgroundThread2.Functions
    localValue12 = localValue12.PlaySound
    localValue22 = "waterPouring"
    localValue32 = nil
    localValue42 = backgroundThread2.AudiosVolumes
    localValue42 = localValue42.waterPouring
    localValue12(localValue22, localValue32, localValue42)
  end
  workingValue93(workingValue103, workingValue2)
  workingValue93 = Citizen
  workingValue93 = workingValue93.Wait
  workingValue103 = localValue3
  workingValue93(workingValue103)
  workingValue93 = GetOffsetFromEntityInWorldCoords
  workingValue103 = localValue2
  workingValue2 = -0.3
  workingValue6 = -0.8
  number = 0.0
  workingValue93 = workingValue93(workingValue103, workingValue2, workingValue6, number)
  workingValue103 = GetEntityCoords
  workingValue2 = localValue2
  -- Beginner: result below is entityCoords.
  workingValue103 = workingValue103(workingValue2)
  workingValue2 = GetEntityRotation
  workingValue6 = localValue2
  workingValue2 = workingValue2(workingValue6)
  workingValue6 = workingValue66
  number = workingValue93
  number2 = workingValue2.z
  number3 = 3000
  workingValue6(number, number2, number3)
  workingValue6 = workingValue19
  number = "pickup_object"
  number2 = "putdown_low"
  workingValue6(number, number2)
  workingValue6 = workingValue67
  number = 800
  workingValue6(number)
  workingValue6 = workingValue65
  number = localValue7
  number2 = "clip@waterrefill"
  number3 = "water_refill"
  workingValue6(number, number2, number3)
  workingValue6 = CMG
  workingValue6 = workingValue6.requestEntitySpawn
  number = "vending_pickup"
  number2 = GetHashKey
  number3 = "mxc_vend_prop_item_waterfill"
  -- Beginner: result below is hash.
  number2 = number2(number3)
  number3 = localValue5
  workingValue6(number, number2, number3)
  workingValue6 = CreateObject
  number = GetHashKey
  number2 = "mxc_vend_prop_item_waterfill"
  -- Beginner: result below is hash.
  number = number(number2)
  number2 = localValue5.x
  number3 = localValue5.y
  number5 = localValue5.z
  number7 = true
  stateFlag = true
  stateFlag2 = false
  -- Beginner: result below is objectEntity.
  workingValue6 = workingValue6(number, number2, number3, number5, number7, stateFlag, stateFlag2)
  number = AttachEntityToEntity
  number2 = workingValue6
  number3 = localValue4
  number5 = GetPedBoneIndex
  number7 = localValue4
  stateFlag = 28422
  number5 = number5(number7, stateFlag)
  number7 = 0.04
  stateFlag = 0.01
  stateFlag2 = -0.04
  stateFlag3 = -73.89
  dataCollection3 = 27.8
  text2 = 10.47
  text3 = true
  text4 = true
  text5 = false
  dataCollection4 = false
  text6 = 1
  iterator = true
  -- Beginner: Attach one entity to another entity.
  number(number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6, iterator)
  number = DeleteEntity
  number2 = localValue7
  -- Beginner: Delete a GTA entity.
  number(number2)
  number = Citizen
  number = number.Wait
  number2 = 500
  number(number2)
  number = ClearPedTasks
  number2 = localValue4
  number(number2)
  number = AttachEntityToEntity
  number2 = workingValue6
  number3 = localValue4
  number5 = GetPedBoneIndex
  number7 = localValue4
  stateFlag = 28422
  number5 = number5(number7, stateFlag)
  number7 = 0.0
  stateFlag = 0.0
  stateFlag2 = 0.0
  stateFlag3 = 0.0
  dataCollection3 = 0.0
  text2 = 0.0
  text3 = true
  text4 = true
  text5 = false
  dataCollection4 = false
  text6 = 1
  iterator = true
  -- Beginner: Attach one entity to another entity.
  number(number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2, text3, text4, text5, dataCollection4, text6, iterator)
  number = workingValue19
  number2 = "amb@world_human_drinking@coffee@male@idle_a"
  number3 = "idle_b"
  number(number2, number3)
  number = Citizen
  number = number.Wait
  number2 = 5000
  number(number2)
  number = ClearPedTasks
  number2 = localValue4
  number(number2)
  number = workingValue19
  number2 = "amb@world_human_drinking@coffee@male@exit"
  number3 = "exit"
  number(number2, number3)
  number = Citizen
  number = number.Wait
  number2 = 1500
  number(number2)
  number = ClearPedTasks
  number2 = localValue4
  number(number2)
  number = DetachEntity
  number2 = workingValue6
  number3 = true
  number5 = true
  number(number2, number3, number5)
  number = SetEntityAsNoLongerNeeded
  number2 = workingValue6
  number(number2)
  number = Citizen
  number = number.Wait
  number2 = 500
  number(number2)
  number = FreezeEntityPosition
  number2 = workingValue6
  number3 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  number(number2, number3)
  number = TriggerEvent
  number2 = "c82f62b8de"
  number3 = "water"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c82f62b8de".
  number(number2, number3)
end

-- === HELPER FUNCTION (decompiler name: workingValue81; parameters: localValue1, localValue2) ===
function workingValue81(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  localValue4 = backgroundThread2.Vendings
  localValue4 = localValue4.cigarettes
  localValue4 = localValue4.startAnimXOffset
  if localValue4 and backgroundThread2.Vendings.cigarettes.startAnimXOffset[localValue2] then
    localValue4 = backgroundThread2.Vendings.cigarettes.startAnimXOffset[localValue2]
  else
    localValue4 = -0.5
  end

  localValue5 = GetOffsetFromEntityInWorldCoords
  localValue6 = localValue1
  localValue7 = localValue4
  localValue8 = -0.6
  workingValue93 = -1.1
  localValue5 = localValue5(localValue6, localValue7, localValue8, workingValue93)
  localValue6 = GetEntityRotation
  localValue7 = localValue1
  localValue6 = localValue6(localValue7)
  localValue7 = workingValue66
  localValue8 = localValue5
  workingValue93 = localValue6.z
  workingValue103 = 3000
  localValue7(localValue8, workingValue93, workingValue103)
  localValue7 = workingValue19
  localValue8 = "mini@sprunk"
  workingValue93 = "plyr_buy_drink_pt1"
  workingValue103 = 16
  localValue7(localValue8, workingValue93, workingValue103)
  localValue7 = Citizen
  localValue7 = localValue7.Wait
  localValue8 = 1400
  localValue7(localValue8)
  localValue7 = ClearPedTasks
  localValue8 = localValue3
  localValue7(localValue8)
end

-- === HELPER FUNCTION (decompiler name: workingValue82; parameters: localValue1, localValue2, localValue3) ===
function workingValue82(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag
  localValue4 = workingValue54
  localValue5 = localValue1
  localValue6 = localValue2
  localValue4 = localValue4(localValue5, localValue6)
  localValue5 = localValue4 or localValue5
  if localValue4 then
    localValue5 = localValue4[localValue3]
  end
  if localValue5 and backgroundThread2.Items[localValue5] and backgroundThread2.Items[localValue5].model then
    localValue6 = backgroundThread2.Items[localValue5].model
  else
    localValue6 = "v_ret_ml_cigs"
  end

  localValue7 = GetEntityCoords
  localValue8 = localValue2
  -- Beginner: result below is entityCoords.
  localValue7 = localValue7(localValue8)
  localValue8 = GetHashKey
  workingValue93 = localValue6
  -- Beginner: result below is hash.
  localValue8 = localValue8(workingValue93)
  workingValue93 = HasModelLoaded
  workingValue103 = localValue8
  workingValue93 = workingValue93(workingValue103)
  if not workingValue93 then
    workingValue93 = RequestModel
    workingValue103 = localValue8
    workingValue93(workingValue103)
    while true do
      workingValue93 = HasModelLoaded
      workingValue103 = localValue8
      workingValue93 = workingValue93(workingValue103)
      if workingValue93 then
        break
      end
      workingValue93 = Citizen
      workingValue93 = workingValue93.Wait
      workingValue103 = 1
      workingValue93(workingValue103)
    end
  end
  workingValue93 = CMG
  workingValue93 = workingValue93.requestEntitySpawn
  workingValue103 = "vending_pickup"
  workingValue2 = localValue8
  workingValue6 = localValue7
  workingValue93(workingValue103, workingValue2, workingValue6)
  workingValue93 = CreateObject
  workingValue103 = localValue8
  workingValue2 = localValue7.x
  workingValue6 = localValue7.y
  number = localValue7.z
  number2 = true
  number3 = true
  number5 = false
  -- Beginner: result below is objectEntity.
  workingValue93 = workingValue93(workingValue103, workingValue2, workingValue6, number, number2, number3, number5)
  workingValue103 = SetModelAsNoLongerNeeded
  workingValue2 = localValue8
  workingValue103(workingValue2)
  workingValue103 = SetEntityCoords
  workingValue2 = workingValue93
  workingValue6 = localValue7.x
  number = localValue7.y
  number2 = localValue7.z
  number3 = false
  number5 = false
  number7 = false
  stateFlag = false
  -- Beginner: Move/teleport an entity to new coordinates.
  workingValue103(workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag)
  workingValue103 = GetEntityRotation
  workingValue2 = localValue2
  workingValue6 = 2
  workingValue103 = workingValue103(workingValue2, workingValue6)
  workingValue2 = SetEntityRotation
  workingValue6 = workingValue93
  number = workingValue103.x
  number2 = workingValue103.y
  number3 = workingValue103.z
  number5 = 2
  number7 = false
  workingValue2(workingValue6, number, number2, number3, number5, number7)
  return workingValue93
end

-- === HELPER FUNCTION (decompiler name: workingValue85; parameters: localValue1) ===
function workingValue85(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue2 = GetOffsetFromEntityInWorldCoords
  localValue3 = localValue1
  localValue4 = -0.1
  localValue5 = -0.6
  localValue6 = -1.1
  localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6)
  localValue3 = GetEntityRotation
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  localValue4 = workingValue66
  localValue5 = localValue2
  localValue6 = localValue3.z
  localValue7 = 3000
  localValue4(localValue5, localValue6, localValue7)
  localValue4 = workingValue19
  localValue5 = "pickup_object"
  localValue6 = "putdown_low"
  localValue4(localValue5, localValue6)
  localValue4 = Citizen
  localValue4 = localValue4.Wait
  localValue5 = 1200
  localValue4(localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue86; parameters: localValue1, localValue2, localValue3) ===
function workingValue86(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2
  localValue4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue4 = localValue4()
  localValue5 = workingValue81
  localValue6 = localValue2
  localValue7 = localValue3
  localValue5(localValue6, localValue7)
  localValue5 = workingValue82
  localValue6 = localValue1
  localValue7 = localValue2
  localValue8 = localValue3
  localValue5 = localValue5(localValue6, localValue7, localValue8)
  localValue6 = workingValue64
  localValue7 = localValue5
  localValue8 = "clip@fagsfall_gen"
  workingValue93 = "fags_fall_gen"
  workingValue103 = false
  localValue6(localValue7, localValue8, workingValue93, workingValue103)
  localValue6 = Citizen
  localValue6 = localValue6.Wait
  localValue7 = 1000
  localValue6(localValue7)
  localValue6 = workingValue85
  localValue7 = localValue2
  localValue6(localValue7)
  localValue6 = GetPedBoneIndex
  localValue7 = localValue4
  localValue8 = 28422
  localValue6 = localValue6(localValue7, localValue8)
  localValue7 = workingValue65
  localValue8 = localValue5
  workingValue93 = "clip@fagsfall_gen"
  workingValue103 = "fags_fall_gen"
  localValue7(localValue8, workingValue93, workingValue103)
  localValue7 = AttachEntityToEntity
  localValue8 = localValue5
  workingValue93 = localValue4
  workingValue103 = localValue6
  workingValue2 = 0.0
  workingValue6 = 0.0
  number = 0.0
  number2 = 0.0
  number3 = 0.0
  number5 = 130.0
  number7 = true
  stateFlag = true
  stateFlag2 = false
  stateFlag3 = false
  dataCollection3 = 2
  text2 = true
  -- Beginner: Attach one entity to another entity.
  localValue7(localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5, number7, stateFlag, stateFlag2, stateFlag3, dataCollection3, text2)
  localValue7 = ClearPedTasks
  localValue8 = localValue4
  localValue7(localValue8)
  localValue7 = workingValue19
  localValue8 = "mp_common_miss"
  workingValue93 = "put_away_coke"
  localValue7(localValue8, workingValue93)
  localValue7 = Citizen
  localValue7 = localValue7.Wait
  localValue8 = 700
  localValue7(localValue8)
  localValue7 = ClearPedTasks
  localValue8 = localValue4
  localValue7(localValue8)
  localValue7 = SetEntityAsMissionEntity
  localValue8 = localValue5
  workingValue93 = true
  workingValue103 = true
  localValue7(localValue8, workingValue93, workingValue103)
  localValue7 = DeleteEntity
  localValue8 = localValue5
  -- Beginner: Delete a GTA entity.
  localValue7(localValue8)
  localValue7 = workingValue54
  localValue8 = localValue1
  workingValue93 = localValue2
  localValue7 = localValue7(localValue8, workingValue93)
  localValue8 = localValue7 or localValue8
  if localValue7 then
    localValue8 = localValue7[localValue3]
  end
  if localValue8 then
    workingValue93 = TriggerEvent
    workingValue103 = "c82f62b8de"
    workingValue2 = localValue8
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c82f62b8de".
    workingValue93(workingValue103, workingValue2)
  end
end
eventHandler = RegisterNetEvent
text8 = "60eadad9f8"
-- Beginner: this function handles network event "60eadad9f8".

-- === HELPER FUNCTION (decompiler name: workingValue87; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function workingValue87(localValue1, localValue2, localValue3, localValue4, localValue5)
  local localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5
  localValue6 = GetClosestObjectOfType
  localValue7 = localValue1.x
  localValue8 = localValue1.y
  workingValue93 = localValue1.z
  workingValue103 = 3.0
  workingValue2 = localValue2
  workingValue6 = false
  number = false
  number2 = false
  -- Beginner: result below is objectEntity.
  localValue6 = localValue6(localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2)
  localValue7 = DoesEntityExist
  localValue8 = localValue6
  localValue7 = localValue7(localValue8)
  if localValue7 then
    localValue7 = RequestAnimDict
    localValue8 = localValue3
    localValue7(localValue8)
    while true do
      localValue7 = HasAnimDictLoaded
      localValue8 = localValue3
      localValue7 = localValue7(localValue8)
      if localValue7 then
        break
      end
      localValue7 = Citizen
      localValue7 = localValue7.Wait
      localValue8 = 0
      localValue7(localValue8)
    end
    localValue7 = PlayEntityAnim
    localValue8 = localValue6
    workingValue93 = localValue4
    workingValue103 = localValue3
    workingValue2 = 8.0
    workingValue6 = localValue5 or workingValue6
    if not localValue5 then
      workingValue6 = false
    end
    number = true
    number2 = false
    number3 = 0.0
    number5 = 0
    localValue7(localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number, number2, number3, number5)
    localValue7 = RemoveAnimDict
    localValue8 = localValue3
    localValue7(localValue8)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "60eadad9f8".
eventHandler(text8, workingValue87)
eventHandler = RegisterNetEvent
text8 = "4e2aeb078b"
-- Beginner: this function handles network event "4e2aeb078b".

-- === HELPER FUNCTION (decompiler name: workingValue87; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue87(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number
  localValue5 = GetClosestObjectOfType
  localValue6 = localValue1.x
  localValue7 = localValue1.y
  localValue8 = localValue1.z
  workingValue93 = 3.0
  workingValue103 = localValue2
  workingValue2 = false
  workingValue6 = false
  number = false
  -- Beginner: result below is objectEntity.
  localValue5 = localValue5(localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number)
  localValue6 = DoesEntityExist
  localValue7 = localValue5
  localValue6 = localValue6(localValue7)
  if localValue6 then
    localValue6 = StopEntityAnim
    localValue7 = localValue5
    localValue8 = localValue4
    workingValue93 = localValue3
    workingValue103 = 0.0
    localValue6(localValue7, localValue8, workingValue93, workingValue103)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4e2aeb078b".
eventHandler(text8, workingValue87)
eventHandler = RegisterNetEvent
text8 = "1bb98aff8b"
-- Beginner: this function handles network event "1bb98aff8b".

-- === HELPER FUNCTION (decompiler name: workingValue87; parameters: localValue1) ===
function workingValue87(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103
  localValue2 = GetClosestObjectOfType
  localValue3 = localValue1.x
  localValue4 = localValue1.y
  localValue5 = localValue1.z
  localValue6 = 5.0
  localValue7 = GetHashKey
  localValue8 = "mxc_vend_prop_snak_door"
  -- Beginner: result below is hash.
  localValue7 = localValue7(localValue8)
  localValue8 = false
  workingValue93 = false
  workingValue103 = false
  -- Beginner: result below is objectEntity.
  localValue2 = localValue2(localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103)
  localValue3 = DoesEntityExist
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if not localValue3 then
    localValue3 = print
    localValue4 = "Failed to find snack door for opening animation."
    localValue3(localValue4)
    return
  end
  localValue3 = GetEntityRotation
  localValue4 = localValue2
  localValue5 = 1
  localValue3 = localValue3(localValue4, localValue5)
  localValue4 = workingValue24
  localValue5 = localValue2
  localValue6 = vec3
  localValue7 = 30.0
  localValue8 = 0.0
  workingValue93 = 0.0
  localValue6 = localValue6(localValue7, localValue8, workingValue93)
  localValue6 = localValue3 + localValue6
  localValue7 = 200
  localValue8 = 1
  workingValue93 = "easeInOut"
  localValue4(localValue5, localValue6, localValue7, localValue8, workingValue93)
  localValue4 = Citizen
  localValue4 = localValue4.Wait
  localValue5 = 200
  localValue4(localValue5)
  localValue4 = workingValue24
  localValue5 = localValue2
  localValue6 = localValue3
  localValue7 = 200
  localValue8 = 1
  workingValue93 = "easeInOut"
  localValue4(localValue5, localValue6, localValue7, localValue8, workingValue93)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1bb98aff8b".
eventHandler(text8, workingValue87)
eventHandler = RegisterNetEvent
text8 = "32e4f00ebc"
-- Beginner: this function handles network event "32e4f00ebc".

-- === HELPER FUNCTION (decompiler name: workingValue87; parameters: localValue1, localValue2) ===
function workingValue87(localValue1, localValue2)
  local localValue3
  localValue3 = number11
  localValue3[localValue1] = localValue2
end
eventHandler(text8, workingValue87)
-- Beginner: this function handles network event "32e4f00ebc".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1, localValue2, localValue3, localValue4) ===
function eventHandler(localValue1, localValue2, localValue3, localValue4)
  local localValue5, localValue6, localValue7, localValue8, workingValue93, workingValue103, workingValue2, workingValue6, number
  localValue5 = workingValue27
  localValue6 = localValue3
  localValue7 = "obj"
  localValue8 = localValue1
  localValue5(localValue6, localValue7, localValue8)
  localValue5 = workingValue27
  localValue6 = localValue3
  localValue7 = "vendingName"
  localValue8 = localValue2
  localValue5(localValue6, localValue7, localValue8)
  localValue5 = backgroundThread2.Vendings
  localValue5 = localValue5[localValue2]
  localValue5 = localValue5.interaction
  localValue5 = localValue5.vanilla
  localValue5 = localValue5.distance
  if not localValue5 then
    localValue5 = backgroundThread2.DefaultInteractionDistance
  end
  localValue6 = workingValue38
  localValue7 = localValue1
  localValue6 = localValue6(localValue7)
  localValue7 = GetOffsetFromEntityInWorldCoords
  localValue8 = localValue1
  workingValue93 = 0.0
  workingValue103 = localValue6.y
  workingValue103 = -workingValue103
  workingValue2 = 0.0
  localValue7 = localValue7(localValue8, workingValue93, workingValue103, workingValue2)
  localValue8 = workingValue35
  workingValue93 = "vending:"
  workingValue103 = localValue3
  workingValue93 = workingValue93 .. workingValue103
  workingValue103 = localValue7
  workingValue2 = 0.0
  workingValue6 = localValue5
  number = {}
  number.notify = localValue4
  number.slice = "ignore"
  localValue8(workingValue93, workingValue103, workingValue2, workingValue6, number)
end

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1) ===
function text8(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = workingValue27
  localValue3 = localValue1
  localValue4 = "obj"
  localValue5 = nil
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = workingValue27
  localValue3 = localValue1
  localValue4 = "vendingName"
  localValue5 = nil
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = workingValue37
  localValue3 = "vending:"
  localValue4 = localValue1
  localValue3 = localValue3 .. localValue4
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: workingValue87; parameters: localValue1, localValue2, localValue3) ===
function workingValue87(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7
  localValue4 = LocalPlayer
  localValue4 = localValue4.state
  localValue4 = localValue4.interactingVending
  if localValue4 then
    return
  end
  localValue4 = workingValue26
  localValue4()
  localValue4 = number11
  localValue4 = localValue4[localValue3]
  if localValue4 then
    localValue4 = workingValue23
    localValue5 = backgroundThread2.Translations
    localValue5 = localValue5.already_used
    if not localValue5 then
      localValue5 = "~r~In use.~w~"
    end
    localValue6 = 2000
    localValue4(localValue5, localValue6)
    return
  end
  localValue4 = workingValue36
  localValue5 = "vending:"
  localValue6 = localValue3
  localValue5 = localValue5 .. localValue6
  localValue6 = 0.0
  localValue4(localValue5, localValue6)
  localValue4 = workingValue26
  localValue4()
  localValue4 = TriggerServerEvent
  localValue5 = "32e4f00ebc"
  localValue6 = localValue3
  localValue7 = true
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "32e4f00ebc".
  localValue4(localValue5, localValue6, localValue7)
  localValue4 = LocalPlayer
  localValue4 = localValue4.state
  localValue4.interactingVending = true
  localValue4 = backgroundThread2.Vendings
  localValue4 = localValue4[localValue2]
  localValue5 = localValue4
  localValue4 = localValue4.OnInteraction
  localValue6 = localValue1
  localValue7 = localValue3
  localValue4(localValue5, localValue6, localValue7)
  localValue4 = backgroundThread2.Vendings
  localValue4 = localValue4[localValue2]
  localValue4 = localValue4.interaction
  localValue4 = localValue4.vanilla
  localValue4 = localValue4.distance
  if not localValue4 then
    localValue4 = backgroundThread2.DefaultInteractionDistance
  end
  localValue5 = workingValue36
  localValue6 = "vending:"
  localValue7 = localValue3
  localValue6 = localValue6 .. localValue7
  localValue7 = localValue4
  localValue5(localValue6, localValue7)
  localValue5 = LocalPlayer
  localValue5 = localValue5.state
  localValue5.interactingVending = false
end
iterator3 = pairs
workingValue88 = vendingConfig.vendings
iterator3, workingValue88, workingValue89, workingValue90 = iterator3(workingValue88)
for workingValue91, workingValue96 in iterator3, workingValue88, workingValue89, workingValue90 do
  iterator4 = backgroundThread2.Vendings
  dataCollection8 = {}
  iterator4[workingValue91] = dataCollection8
  iterator4 = pairs
  dataCollection8 = workingValue96
  iterator4, dataCollection8, workingValue97, workingValue98 = iterator4(dataCollection8)
  for workingValue99, workingValue100 in iterator4, dataCollection8, workingValue97, workingValue98 do
    workingValue101 = backgroundThread2.Vendings
    workingValue101 = workingValue101[workingValue91]
    workingValue101[workingValue99] = workingValue100
  end
end
iterator3 = backgroundThread2.Vendings
iterator3 = iterator3.snack

-- === HELPER FUNCTION (decompiler name: workingValue88; parameters: localValue1, localValue2, localValue3) ===
function workingValue88(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6
  localValue4 = dataCollection7
  localValue5 = localValue1
  localValue6 = localValue2
  localValue4(localValue5, localValue6)
end
iterator3.Near = workingValue88
iterator3 = backgroundThread2.Vendings
iterator3 = iterator3.snack

-- === HELPER FUNCTION (decompiler name: workingValue88; parameters: localValue1, localValue2, localValue3) ===
function workingValue88(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6
  localValue4 = workingValue74
  localValue5 = localValue1
  localValue6 = localValue2
  localValue4(localValue5, localValue6)
end
iterator3.Far = workingValue88
iterator3 = backgroundThread2.Vendings
iterator3 = iterator3.snack

-- === HELPER FUNCTION (decompiler name: workingValue88; parameters: localValue1, localValue2, localValue3) ===
function workingValue88(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93
  localValue4 = workingValue71
  localValue5 = localValue1
  localValue6 = localValue2
  localValue4 = localValue4(localValue5, localValue6)
  if localValue4 and "" ~= localValue4 then
    localValue5 = backgroundThread2.Functions
    localValue5 = localValue5.TryToBuy
    localValue6 = localValue1
    localValue7 = localValue4
    localValue8 = localValue3

    -- === HELPER FUNCTION (decompiler name: workingValue93; parameters: none) ===
    function workingValue93()
      local localValue12, localValue22, localValue32, localValue42
      localValue12 = workingValue75
      localValue22 = localValue1
      localValue32 = localValue2
      localValue42 = localValue4
      localValue12(localValue22, localValue32, localValue42)
    end
    localValue5(localValue6, localValue7, localValue8, workingValue93)
  else
    localValue5 = TriggerServerEvent
    localValue6 = "32e4f00ebc"
    localValue7 = localValue3
    localValue8 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "32e4f00ebc".
    localValue5(localValue6, localValue7, localValue8)
  end
end
iterator3.OnInteraction = workingValue88
iterator3 = backgroundThread2.Vendings
iterator3 = iterator3.soda

-- === HELPER FUNCTION (decompiler name: workingValue88; parameters: localValue1, localValue2, localValue3) ===
function workingValue88(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7
  localValue4 = workingValue76
  localValue5 = localValue1
  localValue6 = localValue2
  localValue7 = localValue1.sodaArm
  if not localValue7 then
    localValue7 = "mxc_vend_prop_soda_shelf"
  end
  localValue4(localValue5, localValue6, localValue7)
end
iterator3.Near = workingValue88
iterator3 = backgroundThread2.Vendings
iterator3 = iterator3.soda

-- === HELPER FUNCTION (decompiler name: workingValue88; parameters: localValue1, localValue2, localValue3) ===
function workingValue88(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6
  localValue4 = workingValue77
  localValue5 = localValue1
  localValue6 = localValue2
  localValue4(localValue5, localValue6)
end
iterator3.Far = workingValue88
iterator3 = backgroundThread2.Vendings
iterator3 = iterator3.soda

-- === HELPER FUNCTION (decompiler name: workingValue88; parameters: localValue1, localValue2, localValue3) ===
function workingValue88(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93
  localValue4 = workingValue71
  localValue5 = localValue1
  localValue6 = localValue2
  localValue4 = localValue4(localValue5, localValue6)
  if localValue4 and "" ~= localValue4 then
    localValue5 = backgroundThread2.Functions
    localValue5 = localValue5.TryToBuy
    localValue6 = localValue1
    localValue7 = localValue4
    localValue8 = localValue3

    -- === HELPER FUNCTION (decompiler name: workingValue93; parameters: none) ===
    function workingValue93()
      local localValue12, localValue22, localValue32, localValue42
      localValue12 = workingValue78
      localValue22 = localValue1
      localValue32 = localValue2
      localValue42 = localValue4
      localValue12(localValue22, localValue32, localValue42)
    end
    localValue5(localValue6, localValue7, localValue8, workingValue93)
  else
    localValue5 = TriggerServerEvent
    localValue6 = "32e4f00ebc"
    localValue7 = localValue3
    localValue8 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "32e4f00ebc".
    localValue5(localValue6, localValue7, localValue8)
  end
end
iterator3.OnInteraction = workingValue88
iterator3 = backgroundThread2.Vendings
iterator3 = iterator3.soda_2

-- === HELPER FUNCTION (decompiler name: workingValue88; parameters: localValue1, localValue2, localValue3) ===
function workingValue88(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7
  localValue4 = workingValue76
  localValue5 = localValue1
  localValue6 = localValue2
  localValue7 = localValue1.sodaArm
  if not localValue7 then
    localValue7 = "mxc_vend_prop_soda_shelf2"
  end
  localValue4(localValue5, localValue6, localValue7)
end
iterator3.Near = workingValue88
iterator3 = backgroundThread2.Vendings
iterator3 = iterator3.soda_2

-- === HELPER FUNCTION (decompiler name: workingValue88; parameters: localValue1, localValue2, localValue3) ===
function workingValue88(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6
  localValue4 = workingValue77
  localValue5 = localValue1
  localValue6 = localValue2
  localValue4(localValue5, localValue6)
end
iterator3.Far = workingValue88
iterator3 = backgroundThread2.Vendings
iterator3 = iterator3.soda_2

-- === HELPER FUNCTION (decompiler name: workingValue88; parameters: localValue1, localValue2, localValue3) ===
function workingValue88(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93
  localValue4 = workingValue71
  localValue5 = localValue1
  localValue6 = localValue2
  localValue4 = localValue4(localValue5, localValue6)
  if localValue4 and "" ~= localValue4 then
    localValue5 = backgroundThread2.Functions
    localValue5 = localValue5.TryToBuy
    localValue6 = localValue1
    localValue7 = localValue4
    localValue8 = localValue3

    -- === HELPER FUNCTION (decompiler name: workingValue93; parameters: none) ===
    function workingValue93()
      local localValue12, localValue22, localValue32, localValue42
      localValue12 = workingValue78
      localValue22 = localValue1
      localValue32 = localValue2
      localValue42 = localValue4
      localValue12(localValue22, localValue32, localValue42)
    end
    localValue5(localValue6, localValue7, localValue8, workingValue93)
  else
    localValue5 = TriggerServerEvent
    localValue6 = "32e4f00ebc"
    localValue7 = localValue3
    localValue8 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "32e4f00ebc".
    localValue5(localValue6, localValue7, localValue8)
  end
end
iterator3.OnInteraction = workingValue88
iterator3 = backgroundThread2.Vendings
iterator3 = iterator3.coffee

-- === HELPER FUNCTION (decompiler name: workingValue88; parameters: localValue1, localValue2, localValue3) ===
function workingValue88(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8
  localValue4 = backgroundThread2.Functions
  localValue4 = localValue4.TryToBuy
  localValue5 = localValue1
  localValue6 = localValue1.item
  localValue7 = localValue3

  -- === HELPER FUNCTION: localValue8() ===
  function localValue8()
    local localValue12, localValue22, localValue32, localValue42
    localValue12 = workingValue79
    localValue22 = localValue1
    localValue32 = localValue2
    localValue42 = true
    localValue12(localValue22, localValue32, localValue42)
  end
  localValue4(localValue5, localValue6, localValue7, localValue8)
end
iterator3.OnInteraction = workingValue88
iterator3 = backgroundThread2.Vendings
iterator3 = iterator3.water

-- === HELPER FUNCTION (decompiler name: workingValue88; parameters: localValue1, localValue2, localValue3) ===
function workingValue88(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8
  localValue4 = backgroundThread2.Functions
  localValue4 = localValue4.TryToBuy
  localValue5 = localValue1
  localValue6 = localValue1.item
  localValue7 = localValue3

  -- === HELPER FUNCTION: localValue8() ===
  function localValue8()
    local localValue12, localValue22, localValue32
    localValue12 = workingValue80
    localValue22 = localValue1
    localValue32 = localValue2
    localValue12(localValue22, localValue32)
  end
  localValue4(localValue5, localValue6, localValue7, localValue8)
end
iterator3.OnInteraction = workingValue88
iterator3 = backgroundThread2.Vendings
iterator3 = iterator3.cigarettes

-- === HELPER FUNCTION (decompiler name: workingValue88; parameters: localValue1, localValue2, localValue3) ===
function workingValue88(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, workingValue93
  localValue4 = workingValue71
  localValue5 = localValue1
  localValue6 = localValue2
  localValue4 = localValue4(localValue5, localValue6)
  if localValue4 and "" ~= localValue4 then
    localValue5 = backgroundThread2.Functions
    localValue5 = localValue5.TryToBuy
    localValue6 = localValue1
    localValue7 = localValue4
    localValue8 = localValue3

    -- === HELPER FUNCTION (decompiler name: workingValue93; parameters: none) ===
    function workingValue93()
      local localValue12, localValue22, localValue32, localValue42
      localValue12 = workingValue86
      localValue22 = localValue1
      localValue32 = localValue2
      localValue42 = localValue4
      localValue12(localValue22, localValue32, localValue42)
    end
    localValue5(localValue6, localValue7, localValue8, workingValue93)
  else
    localValue5 = TriggerServerEvent
    localValue6 = "32e4f00ebc"
    localValue7 = localValue3
    localValue8 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "32e4f00ebc".
    localValue5(localValue6, localValue7, localValue8)
  end
end
iterator3.OnInteraction = workingValue88
iterator3 = backgroundThread2.Vendings
iterator3 = iterator3.svapo
workingValue88 = backgroundThread2.Vendings
workingValue88 = workingValue88.snack
workingValue88 = workingValue88.Near
iterator3.Near = workingValue88
iterator3 = backgroundThread2.Vendings
iterator3 = iterator3.svapo
workingValue88 = backgroundThread2.Vendings
workingValue88 = workingValue88.snack
workingValue88 = workingValue88.Far
iterator3.Far = workingValue88
iterator3 = backgroundThread2.Vendings
iterator3 = iterator3.svapo
workingValue88 = backgroundThread2.Vendings
workingValue88 = workingValue88.snack
workingValue88 = workingValue88.OnInteraction
iterator3.OnInteraction = workingValue88
iterator3 = workingValue52
iterator3()
iterator3 = workingValue53
iterator3()
iterator3 = LocalPlayer
iterator3 = iterator3.state
iterator3.interactingVending = false
iterator3 = workingValue43
workingValue88 = "marker"

-- === HELPER FUNCTION (decompiler name: workingValue89; parameters: localValue1) ===
function workingValue89(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue3 = localValue1
  localValue2 = localValue1.find
  localValue4 = "vending"
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue3 = localValue1
    localValue2 = localValue1.match
    localValue4 = "vending:(.+)"
    localValue2 = localValue2(localValue3, localValue4)
    localValue3 = workingValue29
    localValue4 = localValue2
    localValue5 = "obj"
    localValue3 = localValue3(localValue4, localValue5)
    localValue4 = workingValue29
    localValue5 = localValue2
    localValue6 = "vendingName"
    localValue4 = localValue4(localValue5, localValue6)
    if localValue3 and localValue4 then
      localValue5 = workingValue87
      localValue6 = localValue3
      localValue7 = localValue4
      localValue8 = localValue2
      localValue5(localValue6, localValue7, localValue8)
    end
  end
end
iterator3(workingValue88, workingValue89)
iterator3 = Citizen
iterator3 = iterator3.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue88; parameters: none) ===
function workingValue88()
  local localValue1, localValue2, localValue3
  while true do
    localValue1 = CMG
    localValue1 = localValue1.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue1 = localValue1()
    localValue2 = workingValue57

    -- === HELPER FUNCTION: localValue3(localValue12, localValue22, localValue32) ===
    function localValue3(localValue12, localValue22, localValue32)
      local localValue42, localValue52, workingValue60, number12, number13, workingValue94, workingValue104, workingValue3, workingValue7, workingValue9
      localValue42 = GetEntityCoords
      localValue52 = localValue32
      -- Beginner: result below is entityCoords.
      localValue42 = localValue42(localValue52)
      localValue52 = localValue1
      localValue52 = localValue42 - localValue52
      localValue52 = #localValue52
      workingValue60 = workingValue55
      number12 = localValue32
      number13 = localValue12
      workingValue60 = workingValue60(number12, number13)
      number12 = Entity
      number13 = localValue32
      number12 = number12(number13)
      number12 = number12.state
      number13 = backgroundThread2.RenderDistance
      if localValue52 < number13 then
        number13 = number12.isNear
        if not number13 then
          number13 = localValue22.interaction
          if number13 then
            number13 = eventHandler
            workingValue94 = localValue32
            workingValue104 = localValue12
            workingValue3 = workingValue60
            workingValue7 = backgroundThread2.Translations
            workingValue9 = localValue22.interaction
            workingValue9 = workingValue9.vanilla
            workingValue9 = workingValue9.notify
            workingValue7 = workingValue7[workingValue9]
            if not workingValue7 then
              workingValue7 = "Press E"
            end
            -- Beginner: Register a network event handler that the server/other clients can trigger.
            number13(workingValue94, workingValue104, workingValue3, workingValue7)
          end
          number13 = localValue22.blip
          if number13 then
            number13 = backgroundThread2.Blips
            if number13 then
              number13 = workingValue39
              workingValue94 = nil
              workingValue104 = localValue42
              workingValue3 = localValue22.blip
              workingValue3 = workingValue3.sprite
              workingValue7 = localValue22.blip
              workingValue7 = workingValue7.color
              workingValue9 = localValue22.blip
              workingValue9 = workingValue9.size
              number13 = number13(workingValue94, workingValue104, workingValue3, workingValue7, workingValue9)
              workingValue94 = SetBlipDisplay
              workingValue104 = number13
              workingValue3 = 5
              workingValue94(workingValue104, workingValue3)
              workingValue104 = number12
              workingValue94 = number12.set
              workingValue3 = "blip"
              workingValue7 = number13
              workingValue9 = false
              workingValue94(workingValue104, workingValue3, workingValue7, workingValue9)
            end
          end
          number13 = localValue22.Near
          if number13 then
            workingValue94 = localValue22
            number13 = localValue22.Near
            workingValue104 = localValue32
            workingValue3 = workingValue60
            number13(workingValue94, workingValue104, workingValue3)
          end
          workingValue94 = number12
          number13 = number12.set
          workingValue104 = "isNear"
          workingValue3 = true
          workingValue7 = false
          number13(workingValue94, workingValue104, workingValue3, workingValue7)
        end
      else
        number13 = number12.isNear
        if number13 then
          number13 = localValue22.interaction
          if number13 then
            number13 = text8
            workingValue94 = workingValue60
            number13(workingValue94)
          end
          number13 = localValue22.blip
          if number13 then
            number13 = backgroundThread2.Blips
            if number13 then
              number13 = number12.blip
              if number13 then
                number13 = RemoveBlip
                workingValue94 = number12.blip
                number13(workingValue94)
              end
              workingValue94 = number12
              number13 = number12.set
              workingValue104 = "blip"
              workingValue3 = nil
              workingValue7 = false
              number13(workingValue94, workingValue104, workingValue3, workingValue7)
            end
          end
          number13 = localValue22.Far
          if number13 then
            workingValue94 = localValue22
            number13 = localValue22.Far
            workingValue104 = localValue32
            workingValue3 = workingValue60
            number13(workingValue94, workingValue104, workingValue3)
          end
          workingValue94 = number12
          number13 = number12.set
          workingValue104 = "isNear"
          workingValue3 = nil
          workingValue7 = false
          number13(workingValue94, workingValue104, workingValue3, workingValue7)
        end
      end
    end
    localValue2(localValue3)
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    localValue3 = 2000
    localValue2(localValue3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
iterator3(workingValue88)
iterator3 = AddEventHandler
workingValue88 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: workingValue89; parameters: localValue1) ===
function workingValue89(localValue1)
  local localValue2, localValue3
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = workingValue26
    localValue2()
    localValue2 = workingValue57
    -- Beginner: this function runs when client event "onResourceStop" fires.

    -- === HELPER FUNCTION: localValue3(localValue12, localValue22, localValue32) ===
    function localValue3(localValue12, localValue22, localValue32)
      local localValue42, localValue52, workingValue60, number12, number13, workingValue94, workingValue104
      localValue42 = workingValue55
      localValue52 = localValue32
      workingValue60 = localValue12
      localValue42 = localValue42(localValue52, workingValue60)
      localValue52 = Entity
      workingValue60 = localValue32
      localValue52 = localValue52(workingValue60)
      localValue52 = localValue52.state
      workingValue60 = localValue52.isNear
      if workingValue60 then
        workingValue60 = localValue22.interaction
        if workingValue60 then
          workingValue60 = text8
          number12 = localValue42
          workingValue60(number12)
        end
        workingValue60 = localValue22.Far
        if workingValue60 then
          number12 = localValue22
          workingValue60 = localValue22.Far
          number13 = localValue32
          workingValue94 = localValue42
          workingValue60(number12, number13, workingValue94)
        end
        number12 = localValue52
        workingValue60 = localValue52.set
        number13 = "isNear"
        workingValue94 = nil
        workingValue104 = false
        workingValue60(number12, number13, workingValue94, workingValue104)
      end
    end
    localValue2(localValue3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
iterator3(workingValue88, workingValue89)
