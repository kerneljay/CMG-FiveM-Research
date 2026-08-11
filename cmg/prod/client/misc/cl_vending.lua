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
local cmgCall, textValue, workValue25, workValue41, coords, workValue59, workValue72, workValue83, workValue92, workValue102, workValue, workValue5, localEventCall, dataTable, dataTable2, numberValue4, numberValue6, workValue12, workValue13, workValue14, workValue15, workValue16, workValue17, workValue18, workValue19, workValue20, workValue21, workValue22, workValue23, workValue24, workValue26, workValue27, workValue29, workValue31, workValue33, workValue35, workValue36, workValue37, workValue38, workValue39, workValue43, workValue44, workValue45, workValue46, workValue47, workValue48, workValue49, workValue50, numberValue10, threadCall, threadCall2, numberValue11, workValue52, workValue53, workValue54, workValue55, dataTable6, workValue56, workValue57, workValue58, workValue62, workValue63, workValue64, workValue65, workValue66, workValue67, workValue68, workValue69, workValue70, workValue71, dataTable7, workValue74, workValue75, workValue76, workValue77, workValue78, workValue79, workValue80, workValue81, workValue82, workValue85, workValue86, eventRegistration, textValue8, workValue87, iterator3, workValue88, workValue89, workValue90, workValue91, workValue96, iterator4, dataTable8, workValue97, workValue98, workValue99, workValue100, workValue101
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue = "cfg/cfg_vending"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue)
textValue = AddTextEntry
workValue25 = BeginTextCommandDisplayHelp
workValue41 = EndTextCommandDisplayHelp
coords = GetEntityCoords
workValue59 = World3dToScreen2d
workValue72 = SetTextScale
workValue83 = SetTextFont
workValue92 = SetTextEntry
workValue102 = SetTextCentre
workValue = AddTextComponentString
workValue5 = DrawText
localEventCall = TriggerEvent
dataTable = {}
dataTable2 = {}
dataTable.Marker = dataTable2
dataTable2 = {}
dataTable.N3d = dataTable2
dataTable2 = {}
dataTable.SetData = dataTable2
dataTable2 = {}
dataTable.SliceGroups = dataTable2
dataTable2 = {}
dataTable.Events = dataTable2

-- === HELPER FUNCTION (decompiler name: dataTable2; parameters: arg1, arg2, arg3) ===
function dataTable2(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2
  arg4 = 1
  arg5 = #arg2
  arg6 = 1
  for arg7 = arg4, arg5, arg6 do
    arg8 = string
    arg8 = arg8.gsub
    workValue93 = arg1
    workValue103 = arg2[arg7]
    workValue2 = arg3[arg7]
    if not workValue2 then
      workValue2 = arg3
    end
    arg8 = arg8(workValue93, workValue103, workValue2)
    arg1 = arg8
  end
  return arg1
end
numberValue4 = 100.0
numberValue6 = 8100
workValue12 = numberValue6 / numberValue4

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: arg1) ===
function workValue13(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = math
  arg2 = arg2.floor
  arg3 = arg1.x
  arg4 = numberValue4
  arg3 = arg3 / arg4
  arg2 = arg2(arg3)
  arg3 = math
  arg3 = arg3.floor
  arg4 = arg1.y
  arg5 = numberValue4
  arg4 = arg4 / arg5
  arg3 = arg3(arg4)
  arg4 = arg3
  arg5 = arg2
  return arg4, arg5
end

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: arg1) ===
function workValue14(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = workValue13
  arg3 = arg1
  arg2, arg3 = arg2(arg3)
  arg4 = math
  arg4 = arg4.floor
  arg5 = workValue12
  arg5 = arg2 * arg5
  arg5 = arg5 + arg3
  return arg4(arg5)
end

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: none) ===
function workValue15()
  local arg1, arg2, arg3
  arg1 = workValue14
  arg2 = GetEntityCoords
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg2, arg3 = arg2(arg3)
  return arg1(arg2, arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue16; parameters: arg1) ===
function workValue16(arg1)
  local arg2
  arg2 = dataTable.SliceGroups
  arg2 = arg2[arg1]
  if not arg2 then
    arg2 = false
  end
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1, arg2) ===
function workValue17(arg1, arg2)
  local arg3, arg4
  arg3 = tonumber
  arg4 = arg1
  arg3 = arg3(arg4)
  arg1 = arg3
  if not arg1 then
    return
  end
  if arg2 then
    arg3 = dataTable.SliceGroups
    arg3[arg1] = arg2
  else
    arg3 = dataTable.SliceGroups
    arg3[arg1] = nil
  end
end

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) ===
function workValue18(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
  local workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3
  workValue93 = HasAnimDictLoaded
  workValue103 = arg2
  workValue93 = workValue93(workValue103)
  if not workValue93 then
    workValue93 = RequestAnimDict
    workValue103 = arg2
    workValue93(workValue103)
    while true do
      workValue93 = HasAnimDictLoaded
      workValue103 = arg2
      workValue93 = workValue93(workValue103)
      if workValue93 then
        break
      end
      workValue93 = Citizen
      workValue93 = workValue93.Wait
      workValue103 = 1
      workValue93(workValue103)
    end
  end
  workValue93 = TaskPlayAnim
  workValue103 = arg1
  workValue2 = arg2
  workValue6 = arg3
  numberValue = arg4 or numberValue
  if not arg4 then
    numberValue = 2.0
  end
  numberValue2 = arg5 or numberValue2
  if not arg5 then
    numberValue2 = 2.0
  end
  numberValue3 = arg6 or numberValue3
  if not arg6 then
    numberValue3 = -1
  end
  numberValue5 = arg7 or numberValue5
  if not arg7 then
    numberValue5 = 0
  end
  numberValue7 = arg8 or numberValue7
  if not arg8 then
    numberValue7 = 0
  end
  flag = false
  flag2 = false
  flag3 = false
  -- Beginner: Play an animation on a ped.
  workValue93(workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3)
  workValue93 = RemoveAnimDict
  workValue103 = arg2
  workValue93(workValue103)
end

-- === HELPER FUNCTION (decompiler name: workValue19; parameters: arg1, arg2, arg3, arg4) ===
function workValue19(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue
  if nil == arg3 then
    arg3 = 51
  end
  if nil == arg4 then
    arg4 = -1
  end
  arg5 = workValue18
  arg6 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg6 = arg6()
  arg7 = arg1
  arg8 = arg2
  workValue93 = 2.0
  workValue103 = 2.0
  workValue2 = arg4
  workValue6 = arg3
  numberValue = 0
  arg5(arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue)
end

-- === HELPER FUNCTION (decompiler name: workValue20; parameters: arg1, arg2, arg3, arg4, arg5) ===
function workValue20(arg1, arg2, arg3, arg4, arg5)
  local arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag
  if arg1 then
    arg6 = workValue59
    arg7 = arg1.x
    arg8 = arg1.y
    workValue93 = arg1.z
    arg6, arg7, arg8 = arg6(arg7, arg8, workValue93)
    if arg6 then
      workValue93 = workValue72
      workValue103 = arg3 or workValue103
      if not arg3 then
        workValue103 = 0.35
      end
      workValue2 = arg3 or workValue2
      if not arg3 then
        workValue2 = 0.35
      end
      workValue93(workValue103, workValue2)
      workValue93 = workValue83
      workValue103 = arg4 or workValue103
      if not arg4 then
        workValue103 = 4
      end
      workValue93(workValue103)
      workValue93 = workValue92
      workValue103 = "STRING"
      workValue93(workValue103)
      workValue93 = workValue102
      workValue103 = true
      workValue93(workValue103)
      workValue93 = workValue
      workValue103 = arg2
      workValue93(workValue103)
      workValue93 = workValue5
      workValue103 = arg7
      workValue2 = arg8
      workValue93(workValue103, workValue2)
      if arg5 then
        workValue93 = string
        workValue93 = workValue93.len
        workValue103 = arg2
        workValue93 = workValue93(workValue103)
        workValue93 = workValue93 / 370
        workValue103 = DrawRect
        workValue2 = arg7
        workValue6 = arg8 + 0.0125
        numberValue = 0.025 + workValue93
        numberValue2 = 0.025
        numberValue3 = 0
        numberValue5 = 0
        numberValue7 = 0
        flag = 90
        workValue103(workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg1, arg2) ===
function workValue21(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7
  arg3 = textValue
  arg4 = "ButtonNotificationInternal"
  arg5 = arg1
  arg3(arg4, arg5)
  arg3 = workValue25
  arg4 = "ButtonNotificationInternal"
  arg3(arg4)
  arg3 = workValue41
  arg4 = 0
  arg5 = true
  arg6 = arg2 or arg6
  if not arg2 then
    arg6 = true
  end
  arg7 = -1
  arg3(arg4, arg5, arg6, arg7)
end

-- === HELPER FUNCTION (decompiler name: workValue22; parameters: arg1, arg2) ===
function workValue22(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6, iterator, textValue7
  arg3 = string
  arg3 = arg3.match
  arg4 = arg1
  arg5 = "{.*}"
  arg3 = arg3(arg4, arg5)
  if arg3 then
    arg3 = dataTable2
    arg4 = arg1
    arg5 = {}
    arg6 = "{A}"
    arg7 = "{B}"
    arg8 = "{C}"
    workValue93 = "{D}"
    workValue103 = "{E}"
    workValue2 = "{F}"
    workValue6 = "{G}"
    numberValue = "{H}"
    numberValue2 = "{L}"
    numberValue3 = "{M}"
    numberValue5 = "{N}"
    numberValue7 = "{O}"
    flag = "{P}"
    flag2 = "{Q}"
    flag3 = "{R}"
    dataTable3 = "{S}"
    textValue2 = "{T}"
    textValue3 = "{U}"
    textValue4 = "{V}"
    textValue5 = "{W}"
    dataTable4 = "{X}"
    textValue6 = "{Y}"
    iterator = "{Z}"
    arg5[1] = arg6
    arg5[2] = arg7
    arg5[3] = arg8
    arg5[4] = workValue93
    arg5[5] = workValue103
    arg5[6] = workValue2
    arg5[7] = workValue6
    arg5[8] = numberValue
    arg5[9] = numberValue2
    arg5[10] = numberValue3
    arg5[11] = numberValue5
    arg5[12] = numberValue7
    arg5[13] = flag
    arg5[14] = flag2
    arg5[15] = flag3
    arg5[16] = dataTable3
    arg5[17] = textValue2
    arg5[18] = textValue3
    arg5[19] = textValue4
    arg5[20] = textValue5
    arg5[21] = dataTable4
    arg5[22] = textValue6
    arg5[23] = iterator
    arg6 = {}
    arg7 = "~INPUT_VEH_FLY_YAW_LEFT~"
    arg8 = "~INPUT_SPECIAL_ABILITY_SECONDARY~"
    workValue93 = "~INPUT_LOOK_BEHIND~"
    workValue103 = "~INPUT_MOVE_RIGHT_ONLY~"
    workValue2 = "~INPUT_CONTEXT~"
    workValue6 = "~INPUT_ARREST~"
    numberValue = "~INPUT_DETONATE~"
    numberValue2 = "~INPUT_VEH_ROOF~"
    numberValue3 = "~INPUT_CELLPHONE_CAMERA_FOCUS_LOCK~"
    numberValue5 = "~INPUT_INTERACTION_MENU~"
    numberValue7 = "~INPUT_REPLAY_ENDPOINT~"
    flag = "~INPUT_FRONTEND_PAUSE~"
    flag2 = "~INPUT_FRONTEND_LB~"
    flag3 = "~INPUT_RELOAD~"
    dataTable3 = "~INPUT_MOVE_DOWN_ONLY~"
    textValue2 = "~INPUT_MP_TEXT_CHAT_ALL~"
    textValue3 = "~INPUT_REPLAY_SCREENSHOT~"
    textValue4 = "~INPUT_NEXT_CAMERA~"
    textValue5 = "~INPUT_MOVE_UP_ONLY~"
    dataTable4 = "~INPUT_VEH_HOTWIRE_LEFT~"
    textValue6 = "~INPUT_VEH_DUCK~"
    iterator = "~INPUT_MP_TEXT_CHAT_TEAM~"
    textValue7 = "~INPUT_HUD_SPECIAL~"
    arg6[1] = arg7
    arg6[2] = arg8
    arg6[3] = workValue93
    arg6[4] = workValue103
    arg6[5] = workValue2
    arg6[6] = workValue6
    arg6[7] = numberValue
    arg6[8] = numberValue2
    arg6[9] = numberValue3
    arg6[10] = numberValue5
    arg6[11] = numberValue7
    arg6[12] = flag
    arg6[13] = flag2
    arg6[14] = flag3
    arg6[15] = dataTable3
    arg6[16] = textValue2
    arg6[17] = textValue3
    arg6[18] = textValue4
    arg6[19] = textValue5
    arg6[20] = dataTable4
    arg6[21] = textValue6
    arg6[22] = iterator
    arg6[23] = textValue7
    arg3 = arg3(arg4, arg5, arg6)
    arg1 = arg3
  end
  if nil == arg2 then
    arg2 = true
  end
  arg3 = textValue
  arg4 = "ButtonNotification"
  arg5 = string
  arg5 = arg5.len
  arg6 = arg1
  arg5 = arg5(arg6)
  arg4 = arg4 .. arg5
  arg5 = arg1
  arg3(arg4, arg5)
  arg3 = workValue25
  arg4 = "ButtonNotification"
  arg5 = string
  arg5 = arg5.len
  arg6 = arg1
  arg5 = arg5(arg6)
  arg4 = arg4 .. arg5
  arg3(arg4)
  arg3 = workValue41
  arg4 = 0
  arg5 = false
  arg6 = arg2
  arg7 = -1
  arg3(arg4, arg5, arg6, arg7)
end

-- === HELPER FUNCTION (decompiler name: workValue23; parameters: arg1, arg2) ===
function workValue23(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  arg4 = Citizen
  arg4 = arg4.CreateThread

  -- === HELPER FUNCTION: arg5() ===
  function arg5()
    local arg12, arg22
    while true do
      arg12 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg12 = arg12()
      arg22 = arg3
      arg12 = arg12 - arg22
      arg22 = arg2
      if not arg22 then
        arg22 = 5000
      end
      if not (arg12 < arg22) then
        break
      end
      arg12 = workValue22
      arg22 = arg1
      arg12(arg22)
      arg12 = Citizen
      arg12 = arg12.Wait
      arg22 = 1
      arg12(arg22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg4(arg5)
end

-- === HELPER FUNCTION (decompiler name: workValue24; parameters: arg1, arg2, arg3, arg4, arg5) ===
function workValue24(arg1, arg2, arg3, arg4, arg5)
  local arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6, iterator, textValue7, dataTable5, iterator2, workValue28, workValue30, workValue32, workValue34, flag4, flag5, flag6, flag7, workValue40
  arg6 = 10
  arg7 = 0.01
  arg8 = 1.0E-7
  workValue93 = 10
  workValue103 = 11
  workValue2 = workValue103 - 1.0
  workValue6 = 1.0
  workValue2 = workValue6 / workValue2

  -- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg12, arg22) ===
  function workValue6(arg12, arg22)
    local arg32, arg42
    arg32 = 3.0 * arg22
    arg42 = 1.0
    arg32 = arg42 - arg32
    arg42 = 3.0 * arg12
    arg32 = arg32 + arg42
    return arg32
  end

  -- === HELPER FUNCTION (decompiler name: numberValue; parameters: arg12, arg22) ===
  function numberValue(arg12, arg22)
    local arg32, arg42
    arg32 = 3.0 * arg22
    arg42 = 6.0 * arg12
    arg32 = arg32 - arg42
    return arg32
  end

  -- === HELPER FUNCTION (decompiler name: numberValue2; parameters: arg12) ===
  function numberValue2(arg12)
    local arg22
    arg22 = 3.0 * arg12
    return arg22
  end

  -- === HELPER FUNCTION (decompiler name: numberValue3; parameters: arg12, arg22, arg32) ===
  function numberValue3(arg12, arg22, arg32)
    local arg42, arg52, workValue60, numberValue12
    arg42 = workValue6
    arg52 = arg22
    workValue60 = arg32
    arg42 = arg42(arg52, workValue60)
    arg42 = arg42 * arg12
    arg52 = numberValue
    workValue60 = arg22
    numberValue12 = arg32
    arg52 = arg52(workValue60, numberValue12)
    arg42 = arg42 + arg52
    arg42 = arg42 * arg12
    arg52 = numberValue2
    workValue60 = arg22
    arg52 = arg52(workValue60)
    arg42 = arg42 + arg52
    arg42 = arg42 * arg12
    return arg42
  end

  -- === HELPER FUNCTION (decompiler name: numberValue5; parameters: arg12, arg22, arg32) ===
  function numberValue5(arg12, arg22, arg32)
    local arg42, arg52, workValue60, numberValue12
    arg42 = workValue6
    arg52 = arg22
    workValue60 = arg32
    arg42 = arg42(arg52, workValue60)
    arg42 = 3.0 * arg42
    arg42 = arg42 * arg12
    arg42 = arg42 * arg12
    arg52 = numberValue
    workValue60 = arg22
    numberValue12 = arg32
    arg52 = arg52(workValue60, numberValue12)
    arg52 = 2.0 * arg52
    arg52 = arg52 * arg12
    arg42 = arg42 + arg52
    arg52 = numberValue2
    workValue60 = arg22
    arg52 = arg52(workValue60)
    arg42 = arg42 + arg52
    return arg42
  end

  -- === HELPER FUNCTION (decompiler name: numberValue7; parameters: arg12, arg22, arg32, arg42, arg52) ===
  function numberValue7(arg12, arg22, arg32, arg42, arg52)
    local workValue60, numberValue12, numberValue13, workValue94, workValue104, workValue3, workValue7
    workValue60 = 0
    numberValue12 = 0
    numberValue13 = 0
    repeat
      workValue94 = arg32 - arg22
      workValue94 = workValue94 / 2.0
      numberValue12 = arg22 + workValue94
      workValue94 = numberValue3
      workValue104 = numberValue12
      workValue3 = arg42
      workValue7 = arg52
      workValue94 = workValue94(workValue104, workValue3, workValue7)
      workValue60 = workValue94 - arg12
      if workValue60 > 0.0 then
        arg32 = numberValue12
      else
        arg22 = numberValue12
      end
      numberValue13 = numberValue13 + 1
      workValue94 = math
      workValue94 = workValue94.abs
      workValue104 = workValue60
      workValue94 = workValue94(workValue104)
      workValue104 = arg8
      if workValue94 <= workValue104 then
        break
      end
      workValue94 = workValue93
    until numberValue13 >= workValue94
    return numberValue12
  end

  -- === HELPER FUNCTION (decompiler name: flag; parameters: arg12, arg22, arg32, arg42) ===
  function flag(arg12, arg22, arg32, arg42)
    local arg52, workValue60, numberValue12, numberValue13, workValue94, workValue104, workValue3, workValue7, workValue9
    arg52 = 1
    workValue60 = arg6
    numberValue12 = 1
    for numberValue13 = arg52, workValue60, numberValue12 do
      workValue94 = numberValue5
      workValue104 = arg22
      workValue3 = arg32
      workValue7 = arg42
      workValue94 = workValue94(workValue104, workValue3, workValue7)
      if 0.0 == workValue94 then
        return arg22
      end
      workValue104 = numberValue3
      workValue3 = arg22
      workValue7 = arg32
      workValue9 = arg42
      workValue104 = workValue104(workValue3, workValue7, workValue9)
      workValue104 = workValue104 - arg12
      workValue104 = workValue104 / workValue94
      arg22 = arg22 - workValue104
    end
    return arg22
  end

  -- === HELPER FUNCTION (decompiler name: flag2; parameters: arg12, arg22, arg32, arg42) ===
  function flag2(arg12, arg22, arg32, arg42)
    local arg52, workValue60, numberValue12, numberValue13, workValue94, workValue104, workValue3, workValue7, workValue9
    if arg12 == arg22 and arg32 == arg42 then

      -- === HELPER FUNCTION: arg52(arg13) ===
      function arg52(arg13)
        local numberValue8
        return arg13
      end
      return arg52
    end
    arg52 = {}
    workValue60 = 1
    numberValue12 = workValue103
    numberValue13 = 1
    for workValue94 = workValue60, numberValue12, numberValue13 do
      workValue104 = numberValue3
      workValue3 = workValue94 - 1
      workValue7 = workValue2
      workValue3 = workValue3 * workValue7
      workValue7 = arg12
      workValue9 = arg32
      workValue104 = workValue104(workValue3, workValue7, workValue9)
      arg52[workValue94] = workValue104
    end

    -- === HELPER FUNCTION (decompiler name: workValue60; parameters: arg13) ===
    function workValue60(arg13)
      local numberValue8, numberValue9, workValue42, workValue51, workValue61, workValue73, workValue84, workValue95, workValue105, workValue4, workValue8, workValue10, workValue11
      numberValue8 = 0.0
      numberValue9 = 1
      workValue42 = workValue103
      workValue42 = workValue42 - 1
      while numberValue9 ~= workValue42 do
        workValue51 = arg52
        workValue51 = workValue51[numberValue9]
        if not (arg13 >= workValue51) then
          break
        end
        workValue51 = workValue2
        numberValue8 = numberValue8 + workValue51
        numberValue9 = numberValue9 + 1
      end
      numberValue9 = numberValue9 - 1
      if numberValue9 < 1 then
        numberValue9 = 1
      end
      workValue51 = workValue103
      if numberValue9 >= workValue51 then
        workValue51 = workValue103
        numberValue9 = workValue51 - 1
      end
      workValue61 = numberValue9 + 1
      workValue51 = arg52
      workValue51 = workValue51[workValue61]
      workValue61 = arg52
      workValue61 = workValue61[numberValue9]
      workValue51 = workValue51 - workValue61
      if 0 == workValue51 then
        return numberValue8
      end
      workValue61 = arg52
      workValue61 = workValue61[numberValue9]
      workValue61 = arg13 - workValue61
      workValue61 = workValue61 / workValue51
      workValue73 = workValue2
      workValue73 = workValue61 * workValue73
      workValue73 = numberValue8 + workValue73
      workValue84 = numberValue5
      workValue95 = workValue73
      workValue105 = arg12
      workValue4 = arg32
      workValue84 = workValue84(workValue95, workValue105, workValue4)
      workValue95 = arg7
      if workValue84 >= workValue95 then
        workValue95 = flag
        workValue105 = arg13
        workValue4 = workValue73
        workValue8 = arg12
        workValue10 = arg32
        return workValue95(workValue105, workValue4, workValue8, workValue10)
      elseif 0.0 == workValue84 then
        return workValue73
      else
        workValue95 = numberValue7
        workValue105 = arg13
        workValue4 = numberValue8
        workValue8 = workValue2
        workValue8 = numberValue8 + workValue8
        workValue10 = arg12
        workValue11 = arg32
        return workValue95(workValue105, workValue4, workValue8, workValue10, workValue11)
      end
    end

    -- === HELPER FUNCTION (decompiler name: numberValue12; parameters: arg13) ===
    function numberValue12(arg13)
      local numberValue8, numberValue9, workValue42, workValue51
      if arg13 <= 0 then
        numberValue8 = 0
        return numberValue8
      end
      if arg13 >= 1 then
        numberValue8 = 1
        return numberValue8
      end
      numberValue8 = numberValue3
      numberValue9 = workValue60
      workValue42 = arg13
      numberValue9 = numberValue9(workValue42)
      workValue42 = arg22
      workValue51 = arg42
      return numberValue8(numberValue9, workValue42, workValue51)
    end
    return numberValue12
  end
  flag3 = {}
  dataTable3 = {}
  textValue2 = 0.25
  textValue3 = 0.1
  textValue4 = 0.25
  textValue5 = 1
  dataTable3[1] = textValue2
  dataTable3[2] = textValue3
  dataTable3[3] = textValue4
  dataTable3[4] = textValue5
  flag3.ease = dataTable3
  dataTable3 = {}
  textValue2 = 0.42
  textValue3 = 0
  textValue4 = 1
  textValue5 = 1
  dataTable3[1] = textValue2
  dataTable3[2] = textValue3
  dataTable3[3] = textValue4
  dataTable3[4] = textValue5
  flag3.easeIn = dataTable3
  dataTable3 = {}
  textValue2 = 0
  textValue3 = 0
  textValue4 = 0.58
  textValue5 = 1
  dataTable3[1] = textValue2
  dataTable3[2] = textValue3
  dataTable3[3] = textValue4
  dataTable3[4] = textValue5
  flag3.easeOut = dataTable3
  dataTable3 = {}
  textValue2 = 0.42
  textValue3 = 0
  textValue4 = 0.58
  textValue5 = 1
  dataTable3[1] = textValue2
  dataTable3[2] = textValue3
  dataTable3[3] = textValue4
  dataTable3[4] = textValue5
  flag3.easeInOut = dataTable3
  if not arg5 then
    dataTable3 = {}
    textValue2 = 0.1
    textValue3 = 0.1
    textValue4 = 0.1
    textValue5 = 0.1
    dataTable3[1] = textValue2
    dataTable3[2] = textValue3
    dataTable3[3] = textValue4
    dataTable3[4] = textValue5
    arg5 = dataTable3
  end
  dataTable3 = type
  textValue2 = arg5
  dataTable3 = dataTable3(textValue2)
  if "string" == dataTable3 then
    arg5 = flag3[arg5]
    if not arg5 then
      dataTable3 = error
      textValue2 = "translateObjectRotationCubicBezier: unknown predefined bezier"
      dataTable3(textValue2)
      return
    end
  end
  dataTable3 = flag2
  textValue2 = table
  textValue2 = textValue2.unpack
  textValue3 = arg5
  textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6, iterator, textValue7, dataTable5, iterator2, workValue28, workValue30, workValue32, workValue34, flag4, flag5, flag6, flag7, workValue40 = textValue2(textValue3)
  dataTable3 = dataTable3(textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6, iterator, textValue7, dataTable5, iterator2, workValue28, workValue30, workValue32, workValue34, flag4, flag5, flag6, flag7, workValue40)
  textValue2 = GetEntityRotation
  textValue3 = arg1
  textValue4 = arg4 or textValue4
  if not arg4 then
    textValue4 = 1
  end
  textValue2 = textValue2(textValue3, textValue4)
  textValue3 = GetEntityCoords
  textValue4 = arg1
  -- Beginner: result below is entityCoords.
  textValue3 = textValue3(textValue4)
  textValue4 = GetNetworkTimeAccurate
  textValue4 = textValue4()
  textValue5 = GetNetworkTimeAccurate
  textValue5 = textValue5()
  dataTable4 = {}
  textValue6 = "x"
  iterator = "y"
  textValue7 = "z"
  dataTable4[1] = textValue6
  dataTable4[2] = iterator
  dataTable4[3] = textValue7
  textValue6 = {}
  iterator = ipairs
  textValue7 = dataTable4
  iterator, textValue7, dataTable5, iterator2 = iterator(textValue7)
  for workValue28, workValue30 in iterator, textValue7, dataTable5, iterator2 do
    workValue32 = arg2[workValue30]
    workValue34 = textValue2[workValue30]
    workValue32 = workValue32 - workValue34
    workValue32 = workValue32 + 180
    workValue32 = workValue32 % 360
    workValue32 = workValue32 - 180
    textValue6[workValue30] = workValue32
  end
  while true do
    iterator = textValue5 - textValue4
    if not (arg3 > iterator) then
      break
    end
    iterator = Citizen
    iterator = iterator.Wait
    textValue7 = 0
    iterator(textValue7)
    iterator = GetNetworkTimeAccurate
    iterator = iterator()
    textValue7 = iterator - textValue4
    textValue7 = textValue7 / arg3
    if textValue7 > 1 then
      textValue7 = 1
    end
    if 0 ~= textValue5 then
      dataTable5 = iterator - textValue5
      if 0 ~= dataTable5 then
        dataTable5 = {}
        iterator2 = ipairs
        workValue28 = dataTable4
        iterator2, workValue28, workValue30, workValue32 = iterator2(workValue28)
        for workValue34, flag4 in iterator2, workValue28, workValue30, workValue32 do
          flag5 = textValue2[flag4]
          flag6 = textValue6[flag4]
          flag7 = dataTable3
          workValue40 = textValue7
          flag7 = flag7(workValue40)
          flag6 = flag6 * flag7
          flag5 = flag5 + flag6
          dataTable5[flag4] = flag5
        end
        iterator2 = SetEntityRotation
        workValue28 = arg1
        workValue30 = dataTable5.x
        workValue32 = dataTable5.y
        workValue34 = dataTable5.z
        flag4 = arg4 or flag4
        if not arg4 then
          flag4 = 1
        end
        flag5 = false
        iterator2(workValue28, workValue30, workValue32, workValue34, flag4, flag5)
        iterator2 = SetEntityCoords
        workValue28 = arg1
        workValue30 = textValue3.x
        workValue32 = textValue3.y
        workValue34 = textValue3.z
        flag4 = false
        flag5 = false
        flag6 = false
        flag7 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        iterator2(workValue28, workValue30, workValue32, workValue34, flag4, flag5, flag6, flag7)
      end
    end
    textValue5 = iterator
  end
  iterator = SetEntityRotation
  textValue7 = arg1
  dataTable5 = arg2.x
  iterator2 = arg2.y
  workValue28 = arg2.z
  workValue30 = arg4 or workValue30
  if not arg4 then
    workValue30 = 1
  end
  workValue32 = false
  iterator(textValue7, dataTable5, iterator2, workValue28, workValue30, workValue32)
  iterator = SetEntityCoords
  textValue7 = arg1
  dataTable5 = textValue3.x
  iterator2 = textValue3.y
  workValue28 = textValue3.z
  workValue30 = false
  workValue32 = false
  workValue34 = false
  flag4 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  iterator(textValue7, dataTable5, iterator2, workValue28, workValue30, workValue32, workValue34, flag4)
end

-- === HELPER FUNCTION (decompiler name: workValue26; parameters: none) ===
function workValue26()
  local arg1, arg2
  arg1 = ClearHelp
  arg2 = true
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: workValue27; parameters: arg1, arg2, arg3) ===
function workValue27(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue93, workValue103
  arg4 = dataTable.SetData
  arg4 = arg4[arg1]
  if nil == arg4 then
    arg4 = dataTable.SetData
    arg5 = {}
    arg4[arg1] = arg5
  end
  arg4 = type
  arg5 = arg2
  arg4 = arg4(arg5)
  if "table" == arg4 then
    arg4 = pairs
    arg5 = arg2
    arg4, arg5, arg6, arg7 = arg4(arg5)
    for arg8, workValue93 in arg4, arg5, arg6, arg7 do
      workValue103 = dataTable.SetData
      workValue103 = workValue103[arg1]
      workValue103[arg8] = workValue93
    end
  else
    arg4 = dataTable.SetData
    arg4 = arg4[arg1]
    arg4[arg2] = arg3
  end
end

-- === HELPER FUNCTION (decompiler name: workValue29; parameters: arg1, arg2) ===
function workValue29(arg1, arg2)
  local arg3
  if nil == arg2 then
    arg2 = "not defined"
  end
  arg3 = dataTable.SetData
  arg3 = arg3[arg1]
  if nil ~= arg3 then
    if "not defined" == arg2 then
      arg3 = dataTable.SetData
      arg3 = arg3[arg1]
      return arg3
    else
      arg3 = dataTable.SetData
      arg3 = arg3[arg1]
      arg3 = arg3[arg2]
      return arg3
    end
  end
  arg3 = nil
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue31; parameters: arg1, arg2) ===
function workValue31(arg1, arg2)
  local arg3, arg4
  arg4 = arg1
  arg3 = arg1.lower
  arg3 = arg3(arg4)
  if "marker" ~= arg3 then
    arg4 = arg1
    arg3 = arg1.lower
    arg3 = arg3(arg4)
    if "m" ~= arg3 then
      goto flow_label_11
    end
  end
  arg1 = "Marker"
  goto flow_label_23
  ::flow_label_11::
  arg4 = arg1
  arg3 = arg1.lower
  arg3 = arg3(arg4)
  if "n3d" ~= arg3 then
    arg4 = arg1
    arg3 = arg1.lower
    arg3 = arg3(arg4)
    if "n" ~= arg3 then
      goto flow_label_21
    end
  end
  arg1 = "N3d"
  goto flow_label_23
  ::flow_label_21::
  arg3 = nil
  return arg3
  ::flow_label_23::
  arg3 = dataTable
  arg3 = arg3[arg1]
  if arg3 then
    arg3 = dataTable
    arg3 = arg3[arg1]
    arg3 = arg3[arg2]
    arg3 = nil ~= arg3
  end
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue33; parameters: arg1) ===
function workValue33(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8
  if not arg1 then
    arg1 = 5
  end
  arg2 = ""
  arg3 = 1
  arg4 = arg1
  arg5 = 1
  for arg6 = arg3, arg4, arg5 do
    arg7 = arg2
    arg8 = "9"
    arg7 = arg7 .. arg8
    arg2 = arg7
  end
  arg3 = math
  arg3 = arg3.random
  arg4 = 0
  arg5 = tonumber
  arg6 = arg2
  arg5 = arg5(arg6)
  if not arg5 then
    arg5 = 0
  end
  return arg3(arg4, arg5)
end

-- === HELPER FUNCTION (decompiler name: workValue35; parameters: arg1, arg2, arg3, arg4, arg5) ===
function workValue35(arg1, arg2, arg3, arg4, arg5)
  local arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6, iterator, textValue7, dataTable5, iterator2, workValue28, workValue30
  arg6 = workValue31
  arg7 = "m"
  arg8 = arg1
  arg6 = arg6(arg7, arg8)
  if arg6 then
    arg6 = Citizen
    arg6 = arg6.Wait
    arg7 = 100
    arg6(arg7)
    return
  end
  if arg2 then
    arg6 = arg2.x
    if arg6 then
      arg6 = arg2.y
      if arg6 then
        arg6 = arg2.z
        if arg6 then
          goto flow_label_24
        end
      end
    end
  end
  return
  ::flow_label_24::
  arg6 = string
  arg6 = arg6.gsub
  arg7 = arg1
  arg8 = "{r}"
  workValue93 = workValue33
  workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6, iterator, textValue7, dataTable5, iterator2, workValue28, workValue30 = workValue93()
  arg6 = arg6(arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6, iterator, textValue7, dataTable5, iterator2, workValue28, workValue30)
  arg1 = arg6
  arg6 = {}
  arg6.render_distance = arg3
  arg6.interaction_distance = arg4
  arg6.coords = arg2
  if arg5 then
    arg7 = arg5.slice
    if "ignore" == arg7 then
      arg7 = "ignore"
      if arg7 then
        goto flow_label_48
      end
    end
  end
  arg7 = workValue14
  arg8 = arg2
  arg7 = arg7(arg8)
  ::flow_label_48::
  arg6.slice = arg7
  arg6.candraw = true
  arg6.near = false
  arg7 = type
  arg8 = arg5
  arg7 = arg7(arg8)
  if "table" == arg7 then
    arg7 = arg5.rgb
    if nil ~= arg7 then
      arg6.type = 1
      arg7 = arg5.rgb
      arg6.rgb = arg7
    else
      arg7 = arg5.text
      if nil ~= arg7 then
        arg6.type = 0
        arg7 = arg5.text
        arg6.text = arg7
      else
        arg6.type = 1
        arg7 = arg5.rgb
        if not arg7 then
          arg7 = {}
          arg8 = arg5[1]
          if not arg8 then
            arg8 = 100
          end
          workValue93 = arg5[2]
          if not workValue93 then
            workValue93 = 100
          end
          workValue103 = arg5[3]
          if not workValue103 then
            workValue103 = 100
          end
          arg7[1] = arg8
          arg7[2] = workValue93
          arg7[3] = workValue103
        end
        arg6.rgb = arg7
      end
    end
    arg7 = arg5.notify
    if nil ~= arg7 then
      arg7 = dataTable2
      arg8 = arg5.notify
      workValue93 = {}
      workValue103 = "{A}"
      workValue2 = "{B}"
      workValue6 = "{C}"
      numberValue = "{D}"
      numberValue2 = "{E}"
      numberValue3 = "{F}"
      numberValue5 = "{G}"
      numberValue7 = "{H}"
      flag = "{L}"
      flag2 = "{M}"
      flag3 = "{N}"
      dataTable3 = "{O}"
      textValue2 = "{P}"
      textValue3 = "{Q}"
      textValue4 = "{R}"
      textValue5 = "{S}"
      dataTable4 = "{T}"
      textValue6 = "{U}"
      iterator = "{V}"
      textValue7 = "{W}"
      dataTable5 = "{X}"
      iterator2 = "{Y}"
      workValue28 = "{Z}"
      workValue93[1] = workValue103
      workValue93[2] = workValue2
      workValue93[3] = workValue6
      workValue93[4] = numberValue
      workValue93[5] = numberValue2
      workValue93[6] = numberValue3
      workValue93[7] = numberValue5
      workValue93[8] = numberValue7
      workValue93[9] = flag
      workValue93[10] = flag2
      workValue93[11] = flag3
      workValue93[12] = dataTable3
      workValue93[13] = textValue2
      workValue93[14] = textValue3
      workValue93[15] = textValue4
      workValue93[16] = textValue5
      workValue93[17] = dataTable4
      workValue93[18] = textValue6
      workValue93[19] = iterator
      workValue93[20] = textValue7
      workValue93[21] = dataTable5
      workValue93[22] = iterator2
      workValue93[23] = workValue28
      workValue103 = {}
      workValue2 = "~INPUT_VEH_FLY_YAW_LEFT~"
      workValue6 = "~INPUT_SPECIAL_ABILITY_SECONDARY~"
      numberValue = "~INPUT_LOOK_BEHIND~"
      numberValue2 = "~INPUT_MOVE_LR~"
      numberValue3 = "~INPUT_CONTEXT~"
      numberValue5 = "~INPUT_ARREST~"
      numberValue7 = "~INPUT_DETONATE~"
      flag = "~INPUT_VEH_ROOF~"
      flag2 = "~INPUT_CELLPHONE_CAMERA_FOCUS_LOCK~"
      flag3 = "~INPUT_INTERACTION_MENU~"
      dataTable3 = "~INPUT_REPLAY_ENDPOINT~"
      textValue2 = "~INPUT_FRONTEND_PAUSE~"
      textValue3 = "~INPUT_FRONTEND_LB~"
      textValue4 = "~INPUT_RELOAD~"
      textValue5 = "~INPUT_MOVE_DOWN_ONLY~"
      dataTable4 = "~INPUT_MP_TEXT_CHAT_ALL~"
      textValue6 = "~INPUT_REPLAY_SCREENSHOT~"
      iterator = "~INPUT_NEXT_CAMERA~"
      textValue7 = "~INPUT_MOVE_UP_ONLY~"
      dataTable5 = "~INPUT_VEH_HOTWIRE_LEFT~"
      iterator2 = "~INPUT_VEH_DUCK~"
      workValue28 = "~INPUT_MP_TEXT_CHAT_TEAM~"
      workValue30 = "~INPUT_HUD_SPECIAL~"
      workValue103[1] = workValue2
      workValue103[2] = workValue6
      workValue103[3] = numberValue
      workValue103[4] = numberValue2
      workValue103[5] = numberValue3
      workValue103[6] = numberValue5
      workValue103[7] = numberValue7
      workValue103[8] = flag
      workValue103[9] = flag2
      workValue103[10] = flag3
      workValue103[11] = dataTable3
      workValue103[12] = textValue2
      workValue103[13] = textValue3
      workValue103[14] = textValue4
      workValue103[15] = textValue5
      workValue103[16] = dataTable4
      workValue103[17] = textValue6
      workValue103[18] = iterator
      workValue103[19] = textValue7
      workValue103[20] = dataTable5
      workValue103[21] = iterator2
      workValue103[22] = workValue28
      workValue103[23] = workValue30
      arg7 = arg7(arg8, workValue93, workValue103)
      arg6.notify = arg7
    end
  else
    arg7 = type
    arg8 = arg5
    arg7 = arg7(arg8)
    if "string" == arg7 then
      arg6.type = 0
      arg6.text = arg5
    else
      arg6.type = 1
      arg7 = {}
      arg8 = 100
      workValue93 = 100
      workValue103 = 100
      arg7[1] = arg8
      arg7[2] = workValue93
      arg7[3] = workValue103
      arg6.rgb = arg7
    end
  end
  arg7 = dataTable.Marker
  arg7[arg1] = arg6
  arg7 = arg6.slice
  if "ignore" ~= arg7 then
    arg7 = workValue17
    arg8 = arg6.slice
    workValue93 = true
    arg7(arg8, workValue93)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue36; parameters: arg1, arg2) ===
function workValue36(arg1, arg2)
  local arg3
  arg3 = dataTable.Marker
  arg3 = arg3[arg1]
  if arg3 then
    arg3 = dataTable.Marker
    arg3 = arg3[arg1]
    arg3.interaction_distance = arg2
  end
end

-- === HELPER FUNCTION (decompiler name: workValue37; parameters: arg1) ===
function workValue37(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = workValue31
  arg3 = "m"
  arg4 = arg1
  arg2 = arg2(arg3, arg4)
  if not arg2 then
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 100
    arg2(arg3)
    return
  end
  arg2 = dataTable.Marker
  arg2 = arg2[arg1]
  if arg2 then
    arg3 = arg2.slice
    if arg3 then
      arg3 = arg2.slice
      if "ignore" ~= arg3 then
        arg3 = workValue17
        arg4 = arg2.slice
        arg5 = false
        arg3(arg4, arg5)
      end
    end
  end
  arg3 = dataTable.Marker
  arg3[arg1] = nil
  arg3 = workValue26
  arg3()
end

-- === HELPER FUNCTION (decompiler name: workValue38; parameters: arg1) ===
function workValue38(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = GetEntityModel
  arg3 = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(arg3)
  arg3 = GetModelDimensions
  arg4 = arg2
  arg3, arg4 = arg3(arg4)
  arg5 = arg4 - arg3
  return arg5
end

-- === HELPER FUNCTION (decompiler name: workValue39; parameters: arg1, arg2, arg3, arg4, arg5) ===
function workValue39(arg1, arg2, arg3, arg4, arg5)
  local arg6, arg7, arg8, workValue93
  arg6 = AddBlipForCoord
  arg7 = arg2.x
  arg8 = arg2.y
  workValue93 = arg2.z
  -- Beginner: result below is blipHandle.
  arg6 = arg6(arg7, arg8, workValue93)
  arg7 = SetBlipSprite
  arg8 = arg6
  workValue93 = arg3
  arg7(arg8, workValue93)
  arg7 = SetBlipScale
  arg8 = arg6
  workValue93 = arg5 or workValue93
  if not arg5 then
    workValue93 = 1.0
  end
  arg7(arg8, workValue93)
  arg7 = SetBlipColour
  arg8 = arg6
  workValue93 = arg4
  arg7(arg8, workValue93)
  arg7 = SetBlipAsShortRange
  arg8 = arg6
  workValue93 = true
  arg7(arg8, workValue93)
  arg7 = BeginTextCommandSetBlipName
  arg8 = "STRING"
  arg7(arg8)
  arg7 = AddTextComponentSubstringPlayerName
  arg8 = arg1 or arg8
  if not arg1 then
    arg8 = ""
  end
  arg7(arg8)
  arg7 = EndTextCommandSetBlipName
  arg8 = arg6
  arg7(arg8)
  return arg6
end

-- === HELPER FUNCTION (decompiler name: workValue43; parameters: arg1, arg2, arg3) ===
function workValue43(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8
  arg4 = "Utility:On:"
  if arg3 then
    arg5 = "!"
    if arg5 then
      goto flow_label_8
    end
  end
  arg5 = ""
  ::flow_label_8::
  arg6 = arg1
  arg4 = arg4 .. arg5 .. arg6
  arg5 = RegisterNetEvent
  arg6 = arg4
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg5(arg6)
  arg5 = AddEventHandler
  arg6 = arg4
  arg7 = arg2
  arg5 = arg5(arg6, arg7)
  arg6 = table
  arg6 = arg6.insert
  arg7 = dataTable.Events
  arg8 = arg5
  arg6(arg7, arg8)
  return arg5
end
-- Beginner: this function runs when client event (event above) fires.

-- === HELPER FUNCTION (decompiler name: workValue44; parameters: arg1, arg2, ...) ===
function workValue44(arg1, arg2, ...)
  local arg3, arg4, arg5, arg6
  arg3 = localEventCall
  arg4 = "Utility:On:"
  if arg2 then
    arg5 = "!"
    if arg5 then
      goto flow_label_10
    end
  end
  arg5 = ""
  ::flow_label_10::
  arg6 = arg1
  arg4 = arg4 .. arg5 .. arg6
  arg5, arg6 = ...
  -- Beginner: Trigger another client-side event in this resource/framework.
  arg3(arg4, arg5, arg6)
end

-- === HELPER FUNCTION (decompiler name: workValue45; parameters: none) ===
function workValue45()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2
  arg1 = pairs
  arg2 = dataTable.Marker
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = GetEntityCoords
    arg8 = PlayerPedId
    arg8, workValue93, workValue103, workValue2 = arg8()
    -- Beginner: result below is entityCoords.
    arg7 = arg7(arg8, workValue93, workValue103, workValue2)
    arg8 = arg6.coords
    arg7 = arg7 - arg8
    arg7 = #arg7
    arg8 = arg6.near
    if arg8 then
      arg8 = arg6.interaction_distance
      if arg7 < arg8 then
        arg8 = workValue44
        workValue93 = "marker"
        workValue103 = false
        workValue2 = arg5
        arg8(workValue93, workValue103, workValue2)
        arg6.near = false
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue46; parameters: arg1, arg2) ===
function workValue46(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6, iterator, textValue7, dataTable5, iterator2
  if 0 == arg1 then
    arg3 = arg2.text
    if arg3 then
      arg3 = arg2.text
      if "" ~= arg3 then
        arg3 = workValue20
        arg4 = arg2.coords
        arg5 = arg2.text
        arg6 = arg2._scale
        if not arg6 then
          arg6 = 0.35
        end
        arg7 = arg2.font
        if not arg7 then
          arg7 = 4
        end
        arg8 = arg2.rect
        if not arg8 then
          arg8 = false
        end
        arg3(arg4, arg5, arg6, arg7, arg8)
      end
    end
  elseif 1 == arg1 then
    arg3 = arg2._direction
    if not arg3 then
      arg3 = {}
      arg3.x = 0.0
      arg3.y = 0.0
      arg3.z = 0.0
    end
    arg4 = arg2._rot
    if not arg4 then
      arg4 = {}
      arg4.x = 0.0
      arg4.y = 0.0
      arg4.z = 0.0
    end
    arg5 = arg2._scale
    if not arg5 then
      arg5 = {}
      arg5.x = 1.5
      arg5.y = 1.5
      arg5.z = 0.5
    end
    arg6 = arg2.rgb
    if not arg6 then
      arg6 = {}
      arg7 = 100
      arg8 = 100
      workValue93 = 100
      arg6[1] = arg7
      arg6[2] = arg8
      arg6[3] = workValue93
    end
    arg7 = DrawMarker
    arg8 = arg2._type
    if not arg8 then
      arg8 = 1
    end
    workValue93 = arg2.coords
    workValue93 = workValue93.x
    workValue103 = arg2.coords
    workValue103 = workValue103.y
    workValue2 = arg2.coords
    workValue2 = workValue2.z
    workValue6 = arg3.x
    if not workValue6 then
      workValue6 = 0.0
    end
    numberValue = arg3.y
    if not numberValue then
      numberValue = 0.0
    end
    numberValue2 = arg3.z
    if not numberValue2 then
      numberValue2 = 0.0
    end
    numberValue3 = arg4.x
    if not numberValue3 then
      numberValue3 = 0.0
    end
    numberValue5 = arg4.y
    if not numberValue5 then
      numberValue5 = 0.0
    end
    numberValue7 = arg4.z
    if not numberValue7 then
      numberValue7 = 0.0
    end
    flag = arg5.x
    if not flag then
      flag = 1.5
    end
    flag2 = arg5.y
    if not flag2 then
      flag2 = 1.5
    end
    flag3 = arg5.z
    if not flag3 then
      flag3 = 0.5
    end
    dataTable3 = arg6[1]
    textValue2 = arg6[2]
    textValue3 = arg6[3]
    textValue4 = arg2.alpha
    if not textValue4 then
      textValue4 = 100
    end
    textValue5 = arg2.anim
    if not textValue5 then
      textValue5 = false
    end
    dataTable4 = false
    textValue6 = 2
    iterator = false
    textValue7 = nil
    dataTable5 = nil
    iterator2 = arg2.draw_entity
    if not iterator2 then
      iterator2 = false
    end
    arg7(arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6, iterator, textValue7, dataTable5, iterator2)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue47; parameters: arg1) ===
function workValue47(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue
  arg2 = false
  arg3 = pairs
  arg4 = dataTable.Marker
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    workValue93 = tonumber
    workValue103 = arg8.slice
    workValue93 = workValue93(workValue103)
    if workValue93 ~= arg1 then
      workValue93 = arg8.slice
      if "ignore" ~= workValue93 then
        goto flow_label_59
      end
    end
    workValue93 = arg8.candraw
    if workValue93 then
      workValue93 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workValue93 = workValue93()
      workValue103 = GetEntityCoords
      workValue2 = workValue93
      -- Beginner: result below is entityCoords.
      workValue103 = workValue103(workValue2)
      workValue2 = arg8.coords
      workValue103 = workValue103 - workValue2
      workValue103 = #workValue103
      workValue2 = arg8.render_distance
      if not workValue2 then
        workValue2 = 0
      end
      if workValue103 < workValue2 then
        arg2 = true
        workValue2 = workValue46
        workValue6 = arg8.type
        numberValue = arg8
        workValue2(workValue6, numberValue)
      end
      workValue2 = arg8.interaction_distance
      if workValue103 < workValue2 then
        workValue2 = arg8.notify
        if nil ~= workValue2 then
          workValue2 = workValue21
          workValue6 = arg8.notify
          numberValue = arg8.near
          numberValue = not numberValue
          workValue2(workValue6, numberValue)
        end
        workValue2 = arg8.near
        if not workValue2 then
          arg8.near = true
        end
      else
        workValue2 = arg8.near
        if workValue2 then
          arg8.near = false
          workValue2 = workValue26
          workValue2()
        end
      end
    end
    ::flow_label_59::
  end
  return arg2
end
workValue48 = RequestScaleformMovie

-- === HELPER FUNCTION (decompiler name: workValue49; parameters: arg1) ===
function workValue49(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = pcall
  arg3 = workValue48
  arg4 = arg1
  arg2, arg3 = arg2(arg3, arg4)
  while not arg2 do
    arg4 = pcall
    arg5 = workValue48
    arg6 = arg1
    arg4, arg5 = arg4(arg5, arg6)
    arg3 = arg5
    arg2 = arg4
    arg4 = Citizen
    arg4 = arg4.Wait
    arg5 = 1
    arg4(arg5)
  end
  return arg3
end

-- === HELPER FUNCTION (decompiler name: workValue50; parameters: arg1, arg2) ===
function workValue50(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6
  arg3 = tostring
  arg4 = math
  arg4 = arg4.random
  arg5 = 0
  arg6 = 9999
  arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6 = arg4(arg5, arg6)
  arg3 = arg3(arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6)
  arg4 = dataTable.N3d
  arg5 = {}
  arg5.txd = false
  arg5.show = false
  arg6 = {}
  arg5.rotation = arg6
  arg4[arg3] = arg5
  arg4 = workValue49
  arg5 = arg1
  arg4 = arg4(arg5)
  arg5 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg5 = arg5()
  while true do
    arg6 = HasScaleformMovieLoaded
    arg7 = arg4
    arg6 = arg6(arg7)
    if arg6 then
      break
    end
    arg6 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg6 = arg6()
    arg6 = arg6 - arg5
    arg7 = 4000
    if not (arg6 < arg7) then
      break
    end
    arg6 = Citizen
    arg6 = arg6.Wait
    arg7 = 0
    arg6(arg7)
  end
  arg6 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg6 = arg6()
  arg6 = arg6 - arg5
  arg7 = 4000
  if arg6 <= arg7 then
    arg6 = dataTable.N3d
    arg6 = arg6[arg3]
    arg6.scaleform = arg4
  end
  if nil ~= arg2 then
    arg6 = CreateRuntimeTxd
    arg7 = "txd"
    arg8 = arg3
    arg7 = arg7 .. arg8
    arg6 = arg6(arg7)
    arg7 = dataTable.N3d
    arg7 = arg7[arg3]
    arg8 = CreateDui
    workValue93 = "nui://"
    workValue103 = GetCurrentResourceName
    workValue103 = workValue103()
    workValue2 = "/"
    workValue6 = arg2
    workValue93 = workValue93 .. workValue103 .. workValue2 .. workValue6
    workValue103 = 1920
    workValue2 = 1080
    arg8 = arg8(workValue93, workValue103, workValue2)
    arg7.dui = arg8
    while true do
      arg7 = IsDuiAvailable
      arg8 = dataTable.N3d
      arg8 = arg8[arg3]
      arg8 = arg8.dui
      arg7 = arg7(arg8)
      if arg7 then
        break
      end
      arg7 = Citizen
      arg7 = arg7.Wait
      arg8 = 1
      arg7(arg8)
    end
    arg7 = GetDuiHandle
    arg8 = dataTable.N3d
    arg8 = arg8[arg3]
    arg8 = arg8.dui
    arg7 = arg7(arg8)
    arg8 = CreateRuntimeTextureFromDuiHandle
    workValue93 = arg6
    workValue103 = "txn"
    workValue2 = arg3
    workValue103 = workValue103 .. workValue2
    workValue2 = arg7
    arg8(workValue93, workValue103, workValue2)
    arg8 = dataTable.N3d
    arg8 = arg8[arg3]
    arg8 = arg8.scaleform
    if nil ~= arg8 then
      arg8 = BeginScaleformMovieMethod
      workValue93 = dataTable.N3d
      workValue93 = workValue93[arg3]
      workValue93 = workValue93.scaleform
      workValue103 = "SET_TEXTURE"
      arg8(workValue93, workValue103)
      arg8 = _ENV
      workValue93 = "ScaleformMovieMethodAddParamTextureNameString"
      arg8 = arg8[workValue93]
      workValue93 = "txd"
      workValue103 = arg3
      workValue93 = workValue93 .. workValue103
      arg8(workValue93)
      arg8 = _ENV
      workValue93 = "ScaleformMovieMethodAddParamTextureNameString"
      arg8 = arg8[workValue93]
      workValue93 = "txn"
      workValue103 = arg3
      workValue93 = workValue93 .. workValue103
      arg8(workValue93)
      arg8 = ScaleformMovieMethodAddParamInt
      workValue93 = 0
      arg8(workValue93)
      arg8 = ScaleformMovieMethodAddParamInt
      workValue93 = 0
      arg8(workValue93)
      arg8 = ScaleformMovieMethodAddParamInt
      workValue93 = 1920
      arg8(workValue93)
      arg8 = ScaleformMovieMethodAddParamInt
      workValue93 = 1080
      arg8(workValue93)
      arg8 = EndScaleformMovieMethod
      arg8()
    end
  end
  arg6 = {}
  arg6.__index = arg6

  -- === HELPER FUNCTION: arg7(arg12, arg22, arg32, arg42) ===
  function arg7(arg12, arg22, arg32, arg42)
    local arg52, workValue60, numberValue12, numberValue13, workValue94, workValue104, workValue3
    arg52 = CreateRuntimeTxd
    workValue60 = "txd"
    numberValue12 = arg3
    workValue60 = workValue60 .. numberValue12
    arg52 = arg52(workValue60)
    workValue60 = dataTable.N3d
    numberValue12 = arg3
    workValue60 = workValue60[numberValue12]
    numberValue12 = CreateDui
    numberValue13 = "nui://"
    workValue94 = GetCurrentResourceName
    workValue94 = workValue94()
    workValue104 = "/"
    workValue3 = arg22
    numberValue13 = numberValue13 .. workValue94 .. workValue104 .. workValue3
    workValue94 = arg32 or workValue94
    if not arg32 then
      workValue94 = 1920
    end
    workValue104 = arg42 or workValue104
    if not arg42 then
      workValue104 = 1080
    end
    numberValue12 = numberValue12(numberValue13, workValue94, workValue104)
    workValue60.dui = numberValue12
    while true do
      workValue60 = IsDuiAvailable
      numberValue12 = dataTable.N3d
      numberValue13 = arg3
      numberValue12 = numberValue12[numberValue13]
      numberValue12 = numberValue12.dui
      workValue60 = workValue60(numberValue12)
      if workValue60 then
        break
      end
      workValue60 = Citizen
      workValue60 = workValue60.Wait
      numberValue12 = 1
      workValue60(numberValue12)
    end
    workValue60 = GetDuiHandle
    numberValue12 = dataTable.N3d
    numberValue13 = arg3
    numberValue12 = numberValue12[numberValue13]
    numberValue12 = numberValue12.dui
    workValue60 = workValue60(numberValue12)
    numberValue12 = CreateRuntimeTextureFromDuiHandle
    numberValue13 = arg52
    workValue94 = "txn"
    workValue104 = arg3
    workValue94 = workValue94 .. workValue104
    workValue104 = workValue60
    numberValue12(numberValue13, workValue94, workValue104)
    numberValue12 = dataTable.N3d
    numberValue13 = arg3
    numberValue12 = numberValue12[numberValue13]
    numberValue12 = numberValue12.scaleform
    if nil ~= numberValue12 then
      numberValue12 = BeginScaleformMovieMethod
      numberValue13 = dataTable.N3d
      workValue94 = arg3
      numberValue13 = numberValue13[workValue94]
      numberValue13 = numberValue13.scaleform
      workValue94 = "SET_TEXTURE"
      numberValue12(numberValue13, workValue94)
      numberValue12 = _ENV
      numberValue13 = "ScaleformMovieMethodAddParamTextureNameString"
      numberValue12 = numberValue12[numberValue13]
      numberValue13 = "txd"
      workValue94 = arg3
      numberValue13 = numberValue13 .. workValue94
      numberValue12(numberValue13)
      numberValue12 = _ENV
      numberValue13 = "ScaleformMovieMethodAddParamTextureNameString"
      numberValue12 = numberValue12[numberValue13]
      numberValue13 = "txn"
      workValue94 = arg3
      numberValue13 = numberValue13 .. workValue94
      numberValue12(numberValue13)
      numberValue12 = ScaleformMovieMethodAddParamInt
      numberValue13 = 0
      numberValue12(numberValue13)
      numberValue12 = ScaleformMovieMethodAddParamInt
      numberValue13 = 0
      numberValue12(numberValue13)
      numberValue12 = ScaleformMovieMethodAddParamInt
      numberValue13 = arg32 or numberValue13
      if not arg32 then
        numberValue13 = 1920
      end
      numberValue12(numberValue13)
      numberValue12 = ScaleformMovieMethodAddParamInt
      numberValue13 = arg42 or numberValue13
      if not arg42 then
        numberValue13 = 1080
      end
      numberValue12(numberValue13)
      numberValue12 = EndScaleformMovieMethod
      numberValue12()
    end
  end
  arg6.init = arg7

  -- === HELPER FUNCTION: arg7(arg12, arg22) ===
  function arg7(arg12, arg22)
    local arg32, arg42, arg52, workValue60
    arg32 = dataTable.N3d
    arg42 = arg3
    arg32 = arg32[arg42]
    if arg32 then
      arg32 = dataTable.N3d
      arg42 = arg3
      arg32 = arg32[arg42]
      arg32 = arg32.dui
      if arg32 then
        arg32 = SendDuiMessage
        arg42 = dataTable.N3d
        arg52 = arg3
        arg42 = arg42[arg52]
        arg42 = arg42.dui
        arg52 = json
        arg52 = arg52.encode
        workValue60 = arg22
        arg52, workValue60 = arg52(workValue60)
        arg32(arg42, arg52, workValue60)
      end
    end
  end
  arg6.msg = arg7

  -- === HELPER FUNCTION: arg7(arg12, arg22, arg32, arg42) ===
  function arg7(arg12, arg22, arg32, arg42)
    local arg52, workValue60, numberValue12, numberValue13, workValue94, workValue104
    if arg42 then
      arg52 = Citizen
      arg52 = arg52.Wait
      workValue60 = arg42
      arg52(workValue60)
    end
    arg52 = AddReplaceTexture
    workValue60 = arg22
    numberValue12 = arg32
    numberValue13 = "txd"
    workValue94 = arg3
    numberValue13 = numberValue13 .. workValue94
    workValue94 = "txn"
    workValue104 = arg3
    workValue94 = workValue94 .. workValue104
    arg52(workValue60, numberValue12, numberValue13, workValue94)
  end
  arg6.replaceTexture = arg7

  -- === HELPER FUNCTION: arg7(arg12) ===
  function arg7(arg12)
    local arg22, arg32, arg42
    arg22 = dataTable.N3d
    arg32 = arg3
    arg22 = arg22[arg32]
    if arg22 then
      arg22 = dataTable.N3d
      arg32 = arg3
      arg22 = arg22[arg32]
      arg22 = arg22.dui
      if arg22 then
        arg22 = DestroyDui
        arg32 = dataTable.N3d
        arg42 = arg3
        arg32 = arg32[arg42]
        arg32 = arg32.dui
        arg22(arg32)
        arg22 = dataTable.N3d
        arg32 = arg3
        arg22 = arg22[arg32]
        arg22 = arg22.scaleform
        if arg22 then
          arg22 = SetScaleformMovieAsNoLongerNeeded
          arg32 = dataTable.N3d
          arg42 = arg3
          arg32 = arg32[arg42]
          arg32 = arg32.scaleform
          arg22(arg32)
        end
        arg22 = dataTable.N3d
        arg32 = arg3
        arg22[arg32] = nil
      end
    end
  end
  arg6.destroy = arg7
  arg7 = setmetatable
  arg8 = {}
  workValue93 = arg6
  arg7 = arg7(arg8, workValue93)
  arg8 = arg3
  return arg7, arg8
end
numberValue10 = 0
threadCall = Citizen
threadCall = threadCall.CreateThread

-- === HELPER FUNCTION (decompiler name: threadCall2; parameters: none) ===
function threadCall2()
  local arg1, arg2
  while true do
    arg1 = workValue15
    arg1 = arg1()
    numberValue10 = arg1
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 500
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(threadCall2)

-- === HELPER FUNCTION (decompiler name: threadCall; parameters: none) ===
function threadCall()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = pairs
  arg2 = dataTable.Marker
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = arg6.slice
    if "ignore" == arg7 then
      arg7 = true
      return arg7
    end
  end
  arg1 = false
  return arg1
end
threadCall2 = Citizen
threadCall2 = threadCall2.CreateThread

-- === HELPER FUNCTION (decompiler name: numberValue11; parameters: none) ===
function numberValue11()
  local arg1, arg2, arg3
  while true do
    arg1 = false
    arg2 = workValue16
    arg3 = numberValue10
    arg2 = arg2(arg3)
    if not arg2 then
      arg2 = threadCall
      arg2 = arg2()
      if not arg2 then
        goto flow_label_15
      end
    end
    arg2 = workValue47
    arg3 = numberValue10
    arg2 = arg2(arg3)
    arg1 = arg2
    ::flow_label_15::
    if not arg1 then
      arg2 = Citizen
      arg2 = arg2.Wait
      arg3 = 500
      arg2(arg3)
    end
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 0
    arg2(arg3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall2(numberValue11)
threadCall2 = Citizen
threadCall2 = threadCall2.CreateThread

-- === HELPER FUNCTION (decompiler name: numberValue11; parameters: none) ===
function numberValue11()
  local arg1, arg2, arg3
  while true do
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 0
    arg1(arg2)
    arg1 = IsControlJustPressed
    arg2 = 0
    arg3 = 38
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = workValue45
      arg1()
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall2(numberValue11)
threadCall2 = {}
threadCall2.Debug = false
numberValue11 = cmgCall.renderDistance
if not numberValue11 then
  numberValue11 = 40.0
end
threadCall2.RenderDistance = numberValue11
numberValue11 = cmgCall.defaultInteractionDistance
if not numberValue11 then
  numberValue11 = 2.0
end
threadCall2.DefaultInteractionDistance = numberValue11
numberValue11 = cmgCall.blips
numberValue11 = false ~= numberValue11
threadCall2.Blips = numberValue11
numberValue11 = cmgCall.sounds
numberValue11 = false ~= numberValue11
threadCall2.Sounds = numberValue11
numberValue11 = cmgCall.overrideExhibition
if not numberValue11 then
  numberValue11 = {}
end
threadCall2.OverrideExhibition = numberValue11
numberValue11 = cmgCall.items
if not numberValue11 then
  numberValue11 = {}
end
threadCall2.Items = numberValue11
numberValue11 = {}
threadCall2.Vendings = numberValue11
numberValue11 = cmgCall.translations
if not numberValue11 then
  numberValue11 = {}
end
threadCall2.Translations = numberValue11
numberValue11 = cmgCall.audiosVolumes
if not numberValue11 then
  numberValue11 = {}
end
threadCall2.AudiosVolumes = numberValue11
numberValue11 = cmgCall.placeVendings
if not numberValue11 then
  numberValue11 = {}
end
threadCall2.PlaceVendings = numberValue11
numberValue11 = {}

-- === HELPER FUNCTION (decompiler name: workValue52; parameters: none) ===
function workValue52()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2
  arg1 = pairs
  arg2 = threadCall2.Vendings
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg7 = arg6.parent
    if arg7 then
      arg7 = threadCall2.Vendings
      arg8 = arg6.parent
      arg7 = arg7[arg8]
      if arg7 then
        arg8 = pairs
        workValue93 = arg7
        arg8, workValue93, workValue103, workValue2 = arg8(workValue93)
        for workValue6, numberValue in arg8, workValue93, workValue103, workValue2 do
          numberValue2 = arg6[workValue6]
          if nil == numberValue2 then
            arg6[workValue6] = numberValue
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue53; parameters: none) ===
function workValue53()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = pairs
  arg2 = threadCall2.Vendings
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg6.name = arg5
  end
end

-- === HELPER FUNCTION (decompiler name: workValue54; parameters: arg1, arg2) ===
function workValue54(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2
  arg3 = GetEntityCoords
  arg4 = arg2
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4)
  arg4 = pairs
  arg5 = threadCall2.OverrideExhibition
  arg4, arg5, arg6, arg7 = arg4(arg5)
  for arg8, workValue93 in arg4, arg5, arg6, arg7 do
    workValue103 = workValue93.name
    workValue2 = arg1.name
    if workValue103 == workValue2 then
      workValue103 = workValue93.coords
      workValue103 = workValue103 - arg3
      workValue103 = #workValue103
      workValue2 = workValue93.radius
      if not workValue2 then
        workValue2 = 2.0
      end
      if workValue103 < workValue2 then
        workValue103 = workValue93.exhibition
        return workValue103
      end
    end
  end
  arg4 = arg1.exhibition
  return arg4
end

-- === HELPER FUNCTION (decompiler name: workValue55; parameters: arg1, arg2) ===
function workValue55(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, workValue93
  if not arg2 then
    arg2 = "vending"
  end
  arg3 = GetEntityCoords
  arg4 = arg1
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4)
  arg4 = GetHashKey
  arg5 = arg3.x
  arg6 = ":"
  arg7 = arg3.y
  arg8 = ":"
  workValue93 = arg3.z
  arg5 = arg5 .. arg6 .. arg7 .. arg8 .. workValue93
  -- Beginner: result below is hash.
  arg4 = arg4(arg5)
  arg5 = arg2
  arg6 = ":"
  arg7 = arg4
  arg5 = arg5 .. arg6 .. arg7
  return arg5
end
dataTable6 = {}

-- === HELPER FUNCTION (decompiler name: workValue56; parameters: none) ===
function workValue56()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2
  arg1 = next
  arg2 = dataTable6
  arg1 = arg1(arg2)
  if nil == arg1 then
    arg1 = pairs
    arg2 = threadCall2.Vendings
    arg1, arg2, arg3, arg4 = arg1(arg2)
    for arg5, arg6 in arg1, arg2, arg3, arg4 do
      arg7 = pairs
      arg8 = arg6.models
      arg7, arg8, workValue93, workValue103 = arg7(arg8)
      for workValue2, workValue6 in arg7, arg8, workValue93, workValue103 do
        numberValue = tostring
        numberValue2 = workValue6
        numberValue = numberValue(numberValue2)
        numberValue2 = dataTable6
        numberValue2[numberValue] = arg5
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue57; parameters: arg1) ===
function workValue57(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3
  arg2 = workValue56
  arg2()
  arg2 = GetGamePool
  arg3 = "CObject"
  arg2 = arg2(arg3)
  arg3 = pairs
  arg4 = arg2
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    workValue93 = GetEntityModel
    workValue103 = arg8
    -- Beginner: result below is modelHash.
    workValue93 = workValue93(workValue103)
    workValue103 = tostring
    workValue2 = workValue93
    workValue103 = workValue103(workValue2)
    workValue2 = dataTable6
    workValue103 = workValue2[workValue103]
    if workValue103 then
      workValue2 = threadCall2.Vendings
      workValue2 = workValue2[workValue103]
      workValue6 = arg1
      numberValue = workValue103
      numberValue2 = workValue2
      numberValue3 = arg8
      workValue6(numberValue, numberValue2, numberValue3)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue58; parameters: arg1, arg2, arg3) ===
function workValue58(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5
  arg4 = GetEntityCoords
  arg5 = arg1
  -- Beginner: result below is entityCoords.
  arg4 = arg4(arg5)
  arg5 = type
  arg6 = arg2
  arg5 = arg5(arg6)
  if "string" == arg5 then
    arg5 = GetHashKey
    arg6 = arg2
    -- Beginner: result below is hash.
    arg5 = arg5(arg6)
    if arg5 then
      goto flow_label_15
    end
  end
  arg5 = arg2
  ::flow_label_15::
  arg6 = HasModelLoaded
  arg7 = arg5
  arg6 = arg6(arg7)
  if not arg6 then
    arg6 = RequestModel
    arg7 = arg5
    arg6(arg7)
    while true do
      arg6 = HasModelLoaded
      arg7 = arg5
      arg6 = arg6(arg7)
      if arg6 then
        break
      end
      arg6 = Citizen
      arg6 = arg6.Wait
      arg7 = 1
      arg6(arg7)
    end
  end
  arg6 = CreateObject
  arg7 = arg5
  arg8 = arg4.x
  workValue93 = arg4.y
  workValue103 = arg4.z
  workValue2 = false
  workValue6 = false
  numberValue = true
  -- Beginner: result below is objectEntity.
  arg6 = arg6(arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue)
  arg7 = SetModelAsNoLongerNeeded
  arg8 = arg5
  arg7(arg8)
  if arg3 then
    arg7 = GetOffsetFromEntityInWorldCoords
    arg8 = arg1
    workValue93 = arg3.x
    workValue103 = arg3.y
    workValue2 = arg3.z
    arg7 = arg7(arg8, workValue93, workValue103, workValue2)
    if arg7 then
      goto flow_label_56
    end
  end
  arg7 = arg4
  ::flow_label_56::
  arg8 = SetEntityCoords
  workValue93 = arg6
  workValue103 = arg7.x
  workValue2 = arg7.y
  workValue6 = arg7.z
  numberValue = false
  numberValue2 = false
  numberValue3 = false
  numberValue5 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg8(workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5)
  arg8 = GetEntityRotation
  workValue93 = arg1
  workValue103 = 1
  arg8 = arg8(workValue93, workValue103)
  workValue93 = SetEntityRotation
  workValue103 = arg6
  workValue2 = arg8.x
  workValue6 = arg8.y
  numberValue = arg8.z
  numberValue2 = 1
  numberValue3 = false
  workValue93(workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3)
  return arg6
end

-- === HELPER FUNCTION (decompiler name: workValue62; parameters: arg1, arg2) ===
function workValue62(arg1, arg2)
  local arg3, arg4, arg5, arg6
  arg3 = GetEntityBoneIndexByName
  arg4 = arg1
  arg5 = arg2
  arg3 = arg3(arg4, arg5)
  arg4 = GetWorldPositionOfEntityBone
  arg5 = arg1
  arg6 = arg3
  return arg4(arg5, arg6)
end

-- === HELPER FUNCTION (decompiler name: workValue63; parameters: arg1, arg2, arg3, arg4, arg5, arg6, arg7) ===
function workValue63(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6, iterator
  arg8 = threadCall2.Vendings
  arg8 = arg8[arg5]
  if arg8 then
    workValue93 = arg8.stands
    if workValue93 then
      workValue93 = arg8.stands
      workValue93 = workValue93[arg2]
      if workValue93 then
        workValue93 = arg8.slots
        if workValue93 then
          workValue93 = arg8.slots
          workValue93 = workValue93[arg3]
          if workValue93 then
            goto flow_label_21
          end
        end
      end
    end
  end
  workValue93 = nil
  return workValue93
  ::flow_label_21::
  workValue93 = arg8.stands
  workValue93 = workValue93[arg2]
  workValue103 = workValue62
  workValue2 = arg4
  workValue6 = workValue93
  workValue103 = workValue103(workValue2, workValue6)
  workValue2 = GetOffsetFromEntityGivenWorldCoords
  workValue6 = arg4
  numberValue = workValue103.x
  numberValue2 = workValue103.y
  numberValue3 = workValue103.z
  workValue2 = workValue2(workValue6, numberValue, numberValue2, numberValue3)
  workValue6 = arg8.slots
  workValue6 = workValue6[arg3]
  numberValue = workValue6.x
  if not numberValue then
    numberValue = workValue6[1]
    if not numberValue then
      numberValue = 0
    end
  end
  numberValue2 = workValue6.y
  if not numberValue2 then
    numberValue2 = workValue6[2]
    if not numberValue2 then
      numberValue2 = 0
    end
  end
  numberValue3 = workValue6.z
  if not numberValue3 then
    numberValue3 = workValue6[3]
    if not numberValue3 then
      numberValue3 = 0
    end
  end
  numberValue5 = workValue6.w
  if not numberValue5 then
    numberValue5 = workValue6[4]
    if not numberValue5 then
      numberValue5 = 0
    end
  end
  numberValue7 = vector3
  flag = workValue2.x
  flag = flag + numberValue
  flag2 = workValue2.y
  flag2 = flag2 + numberValue2
  flag3 = workValue2.z
  flag3 = flag3 + numberValue3
  numberValue7 = numberValue7(flag, flag2, flag3)
  flag = GetOffsetFromEntityInWorldCoords
  flag2 = arg4
  flag3 = numberValue7.x
  dataTable3 = numberValue7.y
  textValue2 = numberValue7.z
  flag = flag(flag2, flag3, dataTable3, textValue2)
  flag2 = vector3
  flag3 = flag.x
  dataTable3 = flag.y
  textValue2 = flag.z
  textValue3 = arg6 or textValue3
  if not arg6 then
    textValue3 = 0
  end
  textValue2 = textValue2 + textValue3
  flag2 = flag2(flag3, dataTable3, textValue2)
  flag = flag2
  flag2 = workValue58
  flag3 = arg4
  dataTable3 = arg1
  flag2 = flag2(flag3, dataTable3)
  flag3 = SetEntityCoords
  dataTable3 = flag2
  textValue2 = flag.x
  textValue3 = flag.y
  textValue4 = flag.z
  textValue5 = false
  dataTable4 = false
  textValue6 = false
  iterator = false
  -- Beginner: Move/teleport an entity to new coordinates.
  flag3(dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6, iterator)
  flag3 = arg7 or flag3
  if not arg7 then
    flag3 = vec3
    dataTable3 = 0
    textValue2 = 0
    textValue3 = 0
    flag3 = flag3(dataTable3, textValue2, textValue3)
  end
  dataTable3 = GetEntityRotation
  textValue2 = flag2
  textValue3 = 1
  dataTable3 = dataTable3(textValue2, textValue3)
  textValue2 = vec3
  textValue3 = numberValue5
  textValue4 = 0
  textValue5 = 0
  textValue2 = textValue2(textValue3, textValue4, textValue5)
  dataTable3 = dataTable3 + textValue2
  dataTable3 = dataTable3 + flag3
  textValue2 = SetEntityRotation
  textValue3 = flag2
  textValue4 = dataTable3.x
  textValue5 = dataTable3.y
  dataTable4 = dataTable3.z
  textValue6 = 1
  iterator = false
  textValue2(textValue3, textValue4, textValue5, dataTable4, textValue6, iterator)
  return flag2
end

-- === HELPER FUNCTION (decompiler name: workValue64; parameters: arg1, arg2, arg3, arg4) ===
function workValue64(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue
  arg5 = GetEntityCoords
  arg6 = arg1
  -- Beginner: result below is entityCoords.
  arg5 = arg5(arg6)
  arg6 = GetEntityModel
  arg7 = arg1
  -- Beginner: result below is modelHash.
  arg6 = arg6(arg7)
  arg7 = TriggerServerEvent
  arg8 = "60eadad9f8"
  workValue93 = arg5
  workValue103 = arg6
  workValue2 = arg2
  workValue6 = arg3
  numberValue = arg4
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "60eadad9f8".
  arg7(arg8, workValue93, workValue103, workValue2, workValue6, numberValue)
end

-- === HELPER FUNCTION (decompiler name: workValue65; parameters: arg1, arg2, arg3) ===
function workValue65(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2
  arg4 = GetEntityCoords
  arg5 = arg1
  -- Beginner: result below is entityCoords.
  arg4 = arg4(arg5)
  arg5 = GetEntityModel
  arg6 = arg1
  -- Beginner: result below is modelHash.
  arg5 = arg5(arg6)
  arg6 = TriggerServerEvent
  arg7 = "4e2aeb078b"
  arg8 = arg4
  workValue93 = arg5
  workValue103 = arg2
  workValue2 = arg3
  arg6(arg7, arg8, workValue93, workValue103, workValue2)
end

-- === HELPER FUNCTION (decompiler name: workValue66; parameters: arg1, arg2, arg3) ===
function workValue66(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2
  arg4 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg4 = arg4()
  arg5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  arg6 = TaskPedSlideToCoord
  arg7 = arg5
  arg8 = arg1.x
  workValue93 = arg1.y
  workValue103 = arg1.z
  workValue2 = arg2
  workValue6 = -1
  arg6(arg7, arg8, workValue93, workValue103, workValue2, workValue6)
  while true do
    arg6 = GetIsTaskActive
    arg7 = arg5
    arg8 = 234
    arg6 = arg6(arg7, arg8)
    if arg6 then
      break
    end
    arg6 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg6 = arg6()
    arg6 = arg6 - arg4
    if arg3 < arg6 then
      break
    end
    arg6 = Citizen
    arg6 = arg6.Wait
    arg7 = 1
    arg6(arg7)
  end
  while true do
    arg6 = GetIsTaskActive
    arg7 = arg5
    arg8 = 234
    arg6 = arg6(arg7, arg8)
    if not arg6 then
      break
    end
    arg6 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg6 = arg6()
    arg6 = arg6 - arg4
    if arg3 < arg6 then
      break
    end
    arg6 = Citizen
    arg6 = arg6.Wait
    arg7 = 1
    arg6(arg7)
  end
  arg6 = ClearPedTasks
  arg7 = arg5
  arg6(arg7)
  arg6 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg6 = arg6()
  arg6 = arg6 - arg4
  if arg3 < arg6 then
    arg6 = GetEntityCoords
    arg7 = arg5
    -- Beginner: result below is entityCoords.
    arg6 = arg6(arg7)
    arg6 = arg6 - arg1
    arg6 = #arg6
    arg7 = 1.3
    if arg6 > arg7 then
      arg6 = SetEntityCoords
      arg7 = arg5
      arg8 = arg1.x
      workValue93 = arg1.y
      workValue103 = arg1.z
      workValue2 = false
      workValue6 = false
      numberValue = false
      numberValue2 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      arg6(arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2)
      arg6 = SetEntityHeading
      arg7 = arg5
      arg8 = arg2
      -- Beginner: Change the direction an entity is facing.
      arg6(arg7, arg8)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue67; parameters: arg1) ===
function workValue67(arg1)
  local arg2, arg3, arg4, arg5, arg6
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  while true do
    arg3 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg3 = arg3()
    arg3 = arg3 - arg2
    if not (arg1 > arg3) then
      break
    end
    arg3 = DisableAllControlActions
    arg4 = 0
    arg3(arg4)
    arg3 = EnableControlAction
    arg4 = 0
    arg5 = 0
    arg6 = true
    arg3(arg4, arg5, arg6)
    arg3 = EnableControlAction
    arg4 = 0
    arg5 = 1
    arg6 = true
    arg3(arg4, arg5, arg6)
    arg3 = EnableControlAction
    arg4 = 0
    arg5 = 2
    arg6 = true
    arg3(arg4, arg5, arg6)
    arg3 = Citizen
    arg3 = arg3.Wait
    arg4 = 1
    arg3(arg4)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue68; parameters: arg1, arg2, arg3, arg4) ===
function workValue68(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6, iterator, textValue7, dataTable5, iterator2, workValue28
  arg5 = Entity
  arg6 = arg2
  arg5 = arg5(arg6)
  arg5 = arg5.state
  arg6 = {}
  arg7 = workValue54
  arg8 = arg1
  workValue93 = arg2
  arg7 = arg7(arg8, workValue93)
  arg8 = pairs
  workValue93 = arg1.stands
  arg8, workValue93, workValue103, workValue2 = arg8(workValue93)
  for workValue6, numberValue in arg8, workValue93, workValue103, workValue2 do
    numberValue2 = {}
    arg6[workValue6] = numberValue2
    numberValue2 = pairs
    numberValue3 = arg1.slots
    numberValue2, numberValue3, numberValue5, numberValue7 = numberValue2(numberValue3)
    for flag, flag2 in numberValue2, numberValue3, numberValue5, numberValue7 do
      if arg7 then
        flag3 = arg7[workValue6]
        if flag3 then
          flag3 = threadCall2.Items
          dataTable3 = arg7[workValue6]
          flag3 = flag3[dataTable3]
          if flag3 then
            dataTable3 = flag3.model
            if dataTable3 then
              dataTable3 = arg6[workValue6]
              textValue2 = workValue63
              textValue3 = flag3.model
              textValue4 = workValue6
              textValue5 = flag
              dataTable4 = arg4
              textValue6 = arg3
              iterator = flag3.zoffset
              if not iterator then
                iterator = 0
              end
              textValue7 = flag3.rotation
              if not textValue7 then
                textValue7 = vec3
                dataTable5 = 0
                iterator2 = 0
                workValue28 = 0
                textValue7 = textValue7(dataTable5, iterator2, workValue28)
              end
              textValue2 = textValue2(textValue3, textValue4, textValue5, dataTable4, textValue6, iterator, textValue7)
              dataTable3[flag] = textValue2
            end
          end
        end
      end
    end
  end
  workValue93 = arg5
  arg8 = arg5.set
  workValue103 = "objects"
  workValue2 = arg6
  workValue6 = false
  arg8(workValue93, workValue103, workValue2, workValue6)
end

-- === HELPER FUNCTION (decompiler name: workValue69; parameters: arg1, arg2) ===
function workValue69(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2
  arg3 = Entity
  arg4 = arg2
  arg3 = arg3(arg4)
  arg3 = arg3.state
  arg4 = arg3.objects
  if arg4 then
    arg4 = pairs
    arg5 = arg3.objects
    arg4, arg5, arg6, arg7 = arg4(arg5)
    for arg8, workValue93 in arg4, arg5, arg6, arg7 do
      workValue103 = pairs
      workValue2 = workValue93
      workValue103, workValue2, workValue6, numberValue = workValue103(workValue2)
      for numberValue2, numberValue3 in workValue103, workValue2, workValue6, numberValue do
        numberValue5 = DoesEntityExist
        numberValue7 = numberValue3
        numberValue5 = numberValue5(numberValue7)
        if numberValue5 then
          numberValue5 = SetEntityAsMissionEntity
          numberValue7 = numberValue3
          flag = true
          flag2 = true
          numberValue5(numberValue7, flag, flag2)
          numberValue5 = DeleteEntity
          numberValue7 = numberValue3
          -- Beginner: Delete a GTA entity.
          numberValue5(numberValue7)
        end
      end
    end
  end
  arg5 = arg3
  arg4 = arg3.set
  arg6 = "objects"
  arg7 = nil
  arg8 = false
  arg4(arg5, arg6, arg7, arg8)
end

-- === HELPER FUNCTION (decompiler name: workValue70; parameters: arg1) ===
function workValue70(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue93
  arg2 = nil
  arg3 = nil
  arg4 = IsCamActive
  arg5 = arg1.code
  arg4 = arg4(arg5)
  if arg4 then
    arg2 = arg1.code
    arg3 = arg1.products
  else
    arg2 = arg1.products
    arg3 = arg1.code
  end
  arg4 = SetCamActive
  arg5 = arg2
  arg6 = false
  arg4(arg5, arg6)
  arg4 = SetCamActive
  arg5 = arg3
  arg6 = true
  arg4(arg5, arg6)
  arg4 = SetCamActiveWithInterp
  arg5 = arg3
  arg6 = arg2
  arg7 = 1500
  arg8 = 1
  workValue93 = 1
  arg4(arg5, arg6, arg7, arg8, workValue93)
end

-- === HELPER FUNCTION (decompiler name: workValue71; parameters: arg1, arg2) ===
function workValue71(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2
  arg3 = workValue50
  arg4 = "utility_lib_4"
  arg5 = nil
  arg3, arg4 = arg3(arg4, arg5)
  arg6 = arg3
  arg5 = arg3.init
  arg7 = "ui/vending/dui/index.html"
  arg8 = 256
  workValue93 = 64
  arg5(arg6, arg7, arg8, workValue93)
  arg5 = SetEntityAlpha
  arg6 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg6 = arg6()
  arg7 = 0
  arg8 = false
  arg5(arg6, arg7, arg8)
  arg5 = "code"
  arg6 = ""
  arg7 = {}

  -- === HELPER FUNCTION: arg8() ===
  function arg8()
    local arg12, arg22, arg32, arg42
    arg12 = arg3
    arg22 = arg12
    arg12 = arg12.msg
    arg32 = {}
    arg32.action = "update"
    arg42 = arg6
    arg32.code = arg42
    arg12(arg22, arg32)
  end

  -- === HELPER FUNCTION (decompiler name: workValue93; parameters: arg12) ===
  function workValue93(arg12)
    local arg22, arg32, arg42, arg52
    arg22 = arg6
    arg32 = arg22
    arg22 = arg22.len
    arg22 = arg22(arg32)
    if arg22 >= 2 then
      arg32 = arg12
      arg22 = arg12.match
      arg42 = "%d"
      arg22 = arg22(arg32, arg42)
      if arg22 then
        arg22 = arg6
        arg32 = arg22
        arg22 = arg22.sub
        arg42 = 1
        arg52 = -2
        arg22 = arg22(arg32, arg42, arg52)
        arg6 = arg22
      else
        arg22 = ""
        arg6 = arg22
      end
    end
    arg22 = arg6
    arg32 = arg12
    arg22 = arg22 .. arg32
    arg6 = arg22
    arg22 = arg8
    arg22()
  end
  workValue103 = GetOffsetFromEntityInWorldCoords
  workValue2 = arg2
  workValue6 = arg1.views
  workValue6 = workValue6.code
  workValue6 = workValue6.offset
  workValue6 = workValue6.x
  numberValue = arg1.views
  numberValue = numberValue.code
  numberValue = numberValue.offset
  numberValue = numberValue.y
  numberValue2 = arg1.views
  numberValue2 = numberValue2.code
  numberValue2 = numberValue2.offset
  numberValue2 = numberValue2.z
  workValue103 = workValue103(workValue2, workValue6, numberValue, numberValue2)
  workValue2 = CreateCam
  workValue6 = "DEFAULT_SCRIPTED_CAMERA"
  numberValue = true
  -- Beginner: result below is cameraHandle.
  workValue2 = workValue2(workValue6, numberValue)
  arg7.code = workValue2
  workValue2 = SetCamCoord
  workValue6 = arg7.code
  numberValue = workValue103.x
  numberValue2 = workValue103.y
  numberValue3 = workValue103.z
  workValue2(workValue6, numberValue, numberValue2, numberValue3)
  workValue2 = SetCamRot
  workValue6 = arg7.code
  numberValue = 0.0
  numberValue2 = 0.0
  numberValue3 = GetEntityHeading
  numberValue5 = arg2
  -- Beginner: result below is heading.
  numberValue3 = numberValue3(numberValue5)
  numberValue5 = 2
  workValue2(workValue6, numberValue, numberValue2, numberValue3, numberValue5)
  workValue2 = SetCamFov
  workValue6 = arg7.code
  numberValue = arg1.views
  numberValue = numberValue.code
  numberValue = numberValue.fov
  numberValue = numberValue + 0.0
  workValue2(workValue6, numberValue)
  workValue2 = GetOffsetFromEntityInWorldCoords
  workValue6 = arg2
  numberValue = arg1.views
  numberValue = numberValue.products
  numberValue = numberValue.offset
  numberValue = numberValue.x
  numberValue2 = arg1.views
  numberValue2 = numberValue2.products
  numberValue2 = numberValue2.offset
  numberValue2 = numberValue2.y
  numberValue3 = arg1.views
  numberValue3 = numberValue3.products
  numberValue3 = numberValue3.offset
  numberValue3 = numberValue3.z
  workValue2 = workValue2(workValue6, numberValue, numberValue2, numberValue3)
  workValue103 = workValue2
  workValue2 = CreateCam
  workValue6 = "DEFAULT_SCRIPTED_CAMERA"
  numberValue = true
  -- Beginner: result below is cameraHandle.
  workValue2 = workValue2(workValue6, numberValue)
  arg7.products = workValue2
  workValue2 = SetCamCoord
  workValue6 = arg7.products
  numberValue = workValue103.x
  numberValue2 = workValue103.y
  numberValue3 = workValue103.z
  workValue2(workValue6, numberValue, numberValue2, numberValue3)
  workValue2 = SetCamRot
  workValue6 = arg7.products
  numberValue = 0.0
  numberValue2 = 0.0
  numberValue3 = GetEntityHeading
  numberValue5 = arg2
  -- Beginner: result below is heading.
  numberValue3 = numberValue3(numberValue5)
  numberValue5 = 2
  workValue2(workValue6, numberValue, numberValue2, numberValue3, numberValue5)
  workValue2 = SetCamFov
  workValue6 = arg7.products
  numberValue = arg1.views
  numberValue = numberValue.products
  numberValue = numberValue.fov
  numberValue = numberValue + 0.0
  workValue2(workValue6, numberValue)
  workValue2 = SetCamActive
  workValue6 = arg7.code
  numberValue = true
  workValue2(workValue6, numberValue)
  workValue2 = RenderScriptCams
  workValue6 = true
  numberValue = true
  numberValue2 = 1500
  numberValue3 = true
  numberValue5 = false
  workValue2(workValue6, numberValue, numberValue2, numberValue3, numberValue5)
  workValue2 = Citizen
  workValue2 = workValue2.SetTimeout
  workValue6 = 1500

  -- === HELPER FUNCTION (decompiler name: numberValue; parameters: none) ===
  function numberValue()
    local arg12, arg22, arg32, arg42
    arg12 = arg3
    arg22 = arg12
    arg12 = arg12.replaceTexture
    arg32 = "mxc_vend_parts_props_ytd"
    arg42 = "mxc_vendingmachine_display_d"
    arg12(arg22, arg32, arg42)
  end
  workValue2(workValue6, numberValue)
  workValue2 = GetResourceState
  workValue6 = "utility_pausemenu"
  workValue2 = workValue2(workValue6)
  if "started" == workValue2 then
    workValue2 = exports
    workValue2 = workValue2.utility_pausemenu
    workValue6 = workValue2
    workValue2 = workValue2.DisableMenus
    numberValue = true
    workValue2(workValue6, numberValue)
  end
  workValue2 = LocalPlayer
  workValue2 = workValue2.state
  workValue2.invBusy = true
  workValue2 = LocalPlayer
  workValue2 = workValue2.state
  workValue2 = workValue2.set
  if workValue2 then
    workValue2 = LocalPlayer
    workValue2 = workValue2.state
    workValue6 = workValue2
    workValue2 = workValue2.set
    numberValue = "inv_busy"
    numberValue2 = true
    numberValue3 = true
    workValue2(workValue6, numberValue, numberValue2, numberValue3)
  end
  workValue2 = workValue54
  workValue6 = arg1
  numberValue = arg2
  workValue2 = workValue2(workValue6, numberValue)
  while true do
    workValue6 = threadCall2.Translations
    workValue6 = workValue6.vending_menu_helper
    if not workValue6 then
      workValue6 = ""
    end
    numberValue2 = arg6
    numberValue = arg6.len
    numberValue = numberValue(numberValue2)
    if 2 == numberValue then
      if workValue2 then
        numberValue = workValue2[arg6]
        if numberValue then
          numberValue = workValue2[arg6]
          numberValue2 = threadCall2.Items
          numberValue2 = numberValue2[numberValue]
          if numberValue2 then
            numberValue3 = threadCall2.Translations
            numberValue3 = numberValue3.selected_product_price
            if not numberValue3 then
              numberValue3 = "%s - ~g~\194\163%s~w~ \n"
            end
            numberValue5 = numberValue3
            numberValue3 = numberValue3.format
            numberValue7 = numberValue2.label
            flag = numberValue2.price
            numberValue3 = numberValue3(numberValue5, numberValue7, flag)
            numberValue7 = workValue6
            numberValue5 = workValue6.format
            flag = numberValue3
            numberValue5 = numberValue5(numberValue7, flag)
            workValue6 = numberValue5
          else
            numberValue5 = workValue6
            numberValue3 = workValue6.format
            numberValue7 = threadCall2.Translations
            numberValue7 = numberValue7.invalid_product
            if not numberValue7 then
              numberValue7 = "~r~Invalid product.~w~"
            end
            numberValue3 = numberValue3(numberValue5, numberValue7)
            workValue6 = numberValue3
          end
      end
      else
        numberValue2 = workValue6
        numberValue = workValue6.format
        numberValue3 = threadCall2.Translations
        numberValue3 = numberValue3.invalid_product
        if not numberValue3 then
          numberValue3 = "~r~Invalid product.~w~"
        end
        numberValue = numberValue(numberValue2, numberValue3)
        workValue6 = numberValue
      end
    else
      numberValue2 = workValue6
      numberValue = workValue6.format
      numberValue3 = ""
      numberValue = numberValue(numberValue2, numberValue3)
      workValue6 = numberValue
    end
    numberValue = workValue22
    numberValue2 = workValue6
    numberValue(numberValue2)
    numberValue = DisableAllControlActions
    numberValue2 = 0
    numberValue(numberValue2)
    numberValue = IsDisabledControlJustPressed
    numberValue2 = 0
    numberValue3 = 37
    numberValue = numberValue(numberValue2, numberValue3)
    if numberValue then
      if "code" == arg5 then
        numberValue = "products"
        if numberValue then
          goto flow_label_227
          arg5 = numberValue or arg5
        end
      end
      arg5 = "code"
      ::flow_label_227::
      numberValue = workValue70
      numberValue2 = arg7
      numberValue(numberValue2)
    end
    numberValue = IsDisabledControlJustPressed
    numberValue2 = 0
    numberValue3 = 177
    numberValue = numberValue(numberValue2, numberValue3)
    if numberValue then
      arg6 = ""
      break
    end
    numberValue = IsDisabledControlJustPressed
    numberValue2 = 0
    numberValue3 = 215
    numberValue = numberValue(numberValue2, numberValue3)
    if numberValue then
      if workValue2 then
        numberValue = workValue2[arg6]
      end
      if not numberValue then
        numberValue = workValue23
        numberValue2 = threadCall2.Translations
        numberValue2 = numberValue2.selection_not_valid
        if not numberValue2 then
          numberValue2 = "~r~Invalid.~w~"
        end
        numberValue3 = 2000
        numberValue(numberValue2, numberValue3)
        numberValue = Citizen
        numberValue = numberValue.Wait
        numberValue2 = 2000
        numberValue(numberValue2)
        arg6 = ""
        numberValue = arg8
        numberValue()
      else
        break
      end
    end
    numberValue = pairs
    numberValue2 = arg1.inputs
    numberValue, numberValue2, numberValue3, numberValue5 = numberValue(numberValue2)
    for numberValue7, flag in numberValue, numberValue2, numberValue3, numberValue5 do
      flag2 = IsDisabledControlJustPressed
      flag3 = 0
      dataTable3 = flag
      flag2 = flag2(flag3, dataTable3)
      if flag2 then
        flag2 = threadCall2.Functions
        flag2 = flag2.PlaySound
        flag3 = "buttonClicked"
        dataTable3 = nil
        textValue2 = threadCall2.AudiosVolumes
        textValue2 = textValue2.buttonClicked
        if not textValue2 then
          textValue2 = 0.15
        end
        flag2(flag3, dataTable3, textValue2)
        flag2 = workValue93
        flag3 = numberValue7
        flag2(flag3)
      end
    end
    numberValue = Citizen
    numberValue = numberValue.Wait
    numberValue2 = 0
    numberValue(numberValue2)
  end
  workValue6 = RenderScriptCams
  numberValue = false
  numberValue2 = true
  numberValue3 = 1500
  numberValue5 = true
  numberValue7 = false
  workValue6(numberValue, numberValue2, numberValue3, numberValue5, numberValue7)
  workValue6 = Citizen
  workValue6 = workValue6.SetTimeout
  numberValue = 1500

  -- === HELPER FUNCTION (decompiler name: numberValue2; parameters: none) ===
  function numberValue2()
    local arg12, arg22, arg32
    arg12 = DestroyCam
    arg22 = arg7.code
    arg32 = true
    arg12(arg22, arg32)
    arg12 = DestroyCam
    arg22 = arg7.products
    arg32 = true
    arg12(arg22, arg32)
  end
  workValue6(numberValue, numberValue2)
  workValue6 = Citizen
  workValue6 = workValue6.SetTimeout
  numberValue = 2000

  -- === HELPER FUNCTION (decompiler name: numberValue2; parameters: none) ===
  function numberValue2()
    local arg12, arg22, arg32
    arg12 = arg3
    arg22 = arg12
    arg12 = arg12.destroy
    arg12(arg22)
    arg12 = RemoveReplaceTexture
    arg22 = "mxc_vend_parts_props_ytd"
    arg32 = "mxc_vendingmachine_display_d"
    arg12(arg22, arg32)
  end
  workValue6(numberValue, numberValue2)
  workValue6 = LocalPlayer
  workValue6 = workValue6.state
  workValue6.invBusy = false
  workValue6 = LocalPlayer
  workValue6 = workValue6.state
  workValue6 = workValue6.set
  if workValue6 then
    workValue6 = LocalPlayer
    workValue6 = workValue6.state
    numberValue = workValue6
    workValue6 = workValue6.set
    numberValue2 = "inv_busy"
    numberValue3 = false
    numberValue5 = true
    workValue6(numberValue, numberValue2, numberValue3, numberValue5)
  end
  workValue6 = GetResourceState
  numberValue = "utility_pausemenu"
  workValue6 = workValue6(numberValue)
  if "started" == workValue6 then
    workValue6 = exports
    workValue6 = workValue6.utility_pausemenu
    numberValue = workValue6
    workValue6 = workValue6.DisableMenus
    numberValue2 = false
    workValue6(numberValue, numberValue2)
  end
  workValue6 = SetEntityAlpha
  numberValue = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  numberValue = numberValue()
  numberValue2 = 255
  numberValue3 = false
  workValue6(numberValue, numberValue2, numberValue3)
  return arg6
end
dataTable7 = {}

-- === HELPER FUNCTION (decompiler name: workValue74; parameters: arg1, arg2, arg3, arg4) ===
function workValue74(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, workValue93
  arg5 = CMG
  arg5 = arg5.TriggerServerCallback
  arg6 = "a3f2099a04"
  arg7 = arg1.name
  arg8 = arg2
  arg5 = arg5(arg6, arg7, arg8)
  if arg5 then
    arg6 = TriggerServerEvent
    arg7 = "32e4f00ebc"
    arg8 = arg3
    workValue93 = true
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "32e4f00ebc".
    arg6(arg7, arg8, workValue93)
    arg6 = arg4
    arg6()
    arg6 = TriggerServerEvent
    arg7 = "32e4f00ebc"
    arg8 = arg3
    workValue93 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "32e4f00ebc".
    arg6(arg7, arg8, workValue93)
    arg6 = TriggerServerEvent
    arg7 = "6b2c902639"
    arg8 = arg1.name
    workValue93 = arg2
    arg6(arg7, arg8, workValue93)
  else
    arg6 = workValue23
    arg7 = threadCall2.Translations
    arg7 = arg7.not_enough_money
    if not arg7 then
      arg7 = "~r~Not enough money.~w~"
    end
    arg8 = 2000
    arg6(arg7, arg8)
    arg6 = TriggerServerEvent
    arg7 = "32e4f00ebc"
    arg8 = arg3
    workValue93 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "32e4f00ebc".
    arg6(arg7, arg8, workValue93)
  end
end
dataTable7.TryToBuy = workValue74

-- === HELPER FUNCTION (decompiler name: workValue74; parameters: arg1, arg2, arg3) ===
function workValue74(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8
  arg4 = threadCall2.Sounds
  if arg4 then
    if "buttonClicked" == arg1 then
      arg4 = PlaySoundFrontend
      arg5 = -1
      arg6 = "SELECT"
      arg7 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      arg8 = false
      arg4(arg5, arg6, arg7, arg8)
      return
    end
    arg4 = {}
    arg4.snackSprings = "vending_snack_springs"
    arg4.snackDroppingItem = "vending_snack_dropping_item"
    arg4.snackDoorPickup = "vending_snack_door_pickup"
    arg4.sodaBottleDropped = "vending_soda_bottle_dropped"
    arg4.coffeMachine = "vending_coffe_machine"
    arg4.waterPouring = "vending_water_pouring"
    arg5 = arg4[arg1]
    if arg5 then
      arg6 = SendNUIMessage
      arg7 = {}
      arg7.transactionType = arg5
      arg7.volumeOverride = arg3
      -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
      arg6(arg7)
    end
  end
end
dataTable7.PlaySound = workValue74
threadCall2.Functions = dataTable7

-- === HELPER FUNCTION (decompiler name: dataTable7; parameters: arg1, arg2) ===
function dataTable7(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2
  arg3 = Entity
  arg4 = arg2
  arg3 = arg3(arg4)
  arg3 = arg3.state
  arg4 = workValue58
  arg5 = arg2
  arg6 = "mxc_vend_prop_snak_springs"
  arg4 = arg4(arg5, arg6)
  arg5 = workValue58
  arg6 = arg2
  arg7 = "mxc_vend_prop_snak_door"
  arg8 = vec3
  workValue93 = -0.085311
  workValue103 = -0.457828
  workValue2 = -0.336695
  arg8, workValue93, workValue103, workValue2 = arg8(workValue93, workValue103, workValue2)
  arg5 = arg5(arg6, arg7, arg8, workValue93, workValue103, workValue2)
  arg7 = arg3
  arg6 = arg3.set
  arg8 = "springs"
  workValue93 = arg4
  workValue103 = false
  arg6(arg7, arg8, workValue93, workValue103)
  arg7 = arg3
  arg6 = arg3.set
  arg8 = "door"
  workValue93 = arg5
  workValue103 = false
  arg6(arg7, arg8, workValue93, workValue103)
  arg6 = workValue68
  arg7 = arg1
  arg8 = arg2
  workValue93 = "snack"
  workValue103 = arg4
  arg6(arg7, arg8, workValue93, workValue103)
end

-- === HELPER FUNCTION (decompiler name: workValue74; parameters: arg1, arg2) ===
function workValue74(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8
  arg3 = Entity
  arg4 = arg2
  arg3 = arg3(arg4)
  arg3 = arg3.state
  arg4 = workValue69
  arg5 = arg1
  arg6 = arg2
  arg4(arg5, arg6)
  arg4 = arg3.springs
  if arg4 then
    arg4 = DoesEntityExist
    arg5 = arg3.springs
    arg4 = arg4(arg5)
    if arg4 then
      arg4 = DeleteEntity
      arg5 = arg3.springs
      -- Beginner: Delete a GTA entity.
      arg4(arg5)
    end
  end
  arg4 = arg3.door
  if arg4 then
    arg4 = DoesEntityExist
    arg5 = arg3.door
    arg4 = arg4(arg5)
    if arg4 then
      arg4 = DeleteEntity
      arg5 = arg3.door
      arg4(arg5)
    end
  end
  arg5 = arg3
  arg4 = arg3.set
  arg6 = "springs"
  arg7 = nil
  arg8 = false
  arg4(arg5, arg6, arg7, arg8)
  arg5 = arg3
  arg4 = arg3.set
  arg6 = "door"
  arg7 = nil
  arg8 = false
  arg4(arg5, arg6, arg7, arg8)
end

-- === HELPER FUNCTION (decompiler name: workValue75; parameters: arg1, arg2, arg3) ===
function workValue75(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6
  arg4 = Entity
  arg5 = arg2
  arg4 = arg4(arg5)
  arg4 = arg4.state
  arg6 = arg3
  arg5 = arg3.sub
  arg7 = 1
  arg8 = 1
  arg5 = arg5(arg6, arg7, arg8)
  arg6 = RequestAnimDict
  arg7 = "clip@snakfall_gen"
  arg6(arg7)
  while true do
    arg6 = HasAnimDictLoaded
    arg7 = "clip@snakfall_gen"
    arg6 = arg6(arg7)
    if arg6 then
      break
    end
    arg6 = Citizen
    arg6 = arg6.Wait
    arg7 = 0
    arg6(arg7)
  end
  arg6 = GetAnimDuration
  arg7 = "clip@snakfall_gen"
  arg8 = "snakfall_gen_"
  workValue93 = arg5
  arg8 = arg8 .. workValue93
  arg6 = arg6(arg7, arg8)
  arg6 = arg6 * 1000
  arg7 = RemoveAnimDict
  arg8 = "clip@snakfall_gen"
  arg7(arg8)
  arg7 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg7 = arg7()
  arg8 = arg4.springs
  if arg8 then
    arg8 = DoesEntityExist
    workValue93 = arg4.springs
    arg8 = arg8(workValue93)
    if arg8 then
      goto flow_label_44
    end
  end
  return
  ::flow_label_44::
  arg8 = arg4.objects
  if arg8 then
    arg8 = arg4.objects
    arg8 = arg8[arg3]
    if arg8 then
      goto flow_label_52
    end
  end
  return
  ::flow_label_52::
  arg8 = GetOffsetFromEntityInWorldCoords
  workValue93 = arg4.springs
  workValue103 = 0.0
  workValue2 = -1.0
  workValue6 = -1.1
  arg8 = arg8(workValue93, workValue103, workValue2, workValue6)
  workValue93 = GetEntityRotation
  workValue103 = arg4.springs
  workValue93 = workValue93(workValue103)
  workValue103 = workValue66
  workValue2 = arg8
  workValue6 = workValue93.z
  numberValue = 3000
  workValue103(workValue2, workValue6, numberValue)
  workValue103 = workValue19
  workValue2 = "mini@sprunk"
  workValue6 = "plyr_buy_drink_pt1"
  numberValue = 16
  workValue103(workValue2, workValue6, numberValue)
  workValue103 = Citizen
  workValue103 = workValue103.Wait
  workValue2 = 1400
  workValue103(workValue2)
  workValue103 = ClearPedTasks
  workValue2 = arg7
  workValue103(workValue2)
  workValue103 = workValue64
  workValue2 = arg4.springs
  workValue6 = "clip@snaksprings"
  numberValue = "mxc_vend_prop_snak_springs"
  numberValue2 = arg3
  numberValue = numberValue .. numberValue2
  numberValue2 = false
  workValue103(workValue2, workValue6, numberValue, numberValue2)
  workValue103 = workValue64
  workValue2 = arg4.objects
  workValue2 = workValue2[arg3]
  workValue2 = workValue2[1]
  workValue6 = "clip@snakfall_gen"
  numberValue = "snakfall_gen_"
  numberValue2 = arg5
  numberValue = numberValue .. numberValue2
  numberValue2 = false
  workValue103(workValue2, workValue6, numberValue, numberValue2)
  workValue103 = workValue64
  workValue2 = arg4.objects
  workValue2 = workValue2[arg3]
  workValue2 = workValue2[2]
  workValue6 = "clip@snakfall_gen"
  numberValue = "slot_swap_gen_abcde"
  numberValue2 = false
  workValue103(workValue2, workValue6, numberValue, numberValue2)
  workValue103 = workValue64
  workValue2 = arg4.objects
  workValue2 = workValue2[arg3]
  workValue2 = workValue2[3]
  workValue6 = "clip@snakfall_gen"
  numberValue = "slot_swap_gen_abcde"
  numberValue2 = false
  workValue103(workValue2, workValue6, numberValue, numberValue2)
  workValue103 = GetEntityModel
  workValue2 = arg4.objects
  workValue2 = workValue2[arg3]
  workValue2 = workValue2[1]
  -- Beginner: result below is modelHash.
  workValue103 = workValue103(workValue2)
  workValue2 = CMG
  workValue2 = workValue2.requestEntitySpawn
  workValue6 = "vending_pickup"
  numberValue = workValue103
  numberValue2 = arg8
  workValue2(workValue6, numberValue, numberValue2)
  workValue2 = CreateObject
  workValue6 = workValue103
  numberValue = arg8.x
  numberValue2 = arg8.y
  numberValue3 = arg8.z
  numberValue3 = numberValue3 - 10.0
  numberValue5 = true
  numberValue7 = true
  flag = false
  -- Beginner: result below is objectEntity.
  workValue2 = workValue2(workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag)
  workValue6 = threadCall2.Functions
  workValue6 = workValue6.PlaySound
  numberValue = "snackSprings"
  numberValue2 = nil
  numberValue3 = threadCall2.AudiosVolumes
  numberValue3 = numberValue3.snackSprings
  workValue6(numberValue, numberValue2, numberValue3)
  workValue6 = Citizen
  workValue6 = workValue6.SetTimeout
  numberValue = arg6 - 300

  -- === HELPER FUNCTION (decompiler name: numberValue2; parameters: none) ===
  function numberValue2()
    local arg12, arg22, arg32, arg42
    arg12 = threadCall2.Functions
    arg12 = arg12.PlaySound
    arg22 = "snackDroppingItem"
    arg32 = nil
    arg42 = threadCall2.AudiosVolumes
    arg42 = arg42.snackDroppingItem
    arg12(arg22, arg32, arg42)
  end
  workValue6(numberValue, numberValue2)
  workValue6 = workValue67
  numberValue = arg6
  workValue6(numberValue)
  workValue6 = workValue18
  numberValue = arg7
  numberValue2 = "mini@sprunk"
  numberValue3 = "plyr_buy_drink_pt1"
  numberValue5 = 2.0
  numberValue7 = 2.0
  flag = -1
  flag2 = 0
  flag3 = 0.3
  workValue6(numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3)
  workValue6 = Citizen
  workValue6 = workValue6.Wait
  numberValue = 1200
  workValue6(numberValue)
  workValue6 = workValue65
  numberValue = arg4.springs
  numberValue2 = "clip@snaksprings"
  numberValue3 = "mxc_vend_prop_snak_springs"
  numberValue5 = arg3
  numberValue3 = numberValue3 .. numberValue5
  workValue6(numberValue, numberValue2, numberValue3)
  workValue6 = workValue65
  numberValue = arg4.objects
  numberValue = numberValue[arg3]
  numberValue = numberValue[1]
  numberValue2 = "clip@snakfall_gen"
  numberValue3 = "snakfall_gen_"
  numberValue5 = arg5
  numberValue3 = numberValue3 .. numberValue5
  workValue6(numberValue, numberValue2, numberValue3)
  workValue6 = workValue65
  numberValue = arg4.objects
  numberValue = numberValue[arg3]
  numberValue = numberValue[2]
  numberValue2 = "clip@snakfall_gen"
  numberValue3 = "slot_swap_gen_abcde"
  workValue6(numberValue, numberValue2, numberValue3)
  workValue6 = workValue65
  numberValue = arg4.objects
  numberValue = numberValue[arg3]
  numberValue = numberValue[3]
  numberValue2 = "clip@snakfall_gen"
  numberValue3 = "slot_swap_gen_abcde"
  workValue6(numberValue, numberValue2, numberValue3)
  workValue6 = AttachEntityToEntity
  numberValue = workValue2
  numberValue2 = arg7
  numberValue3 = GetPedBoneIndex
  numberValue5 = arg7
  numberValue7 = 28422
  numberValue3 = numberValue3(numberValue5, numberValue7)
  numberValue5 = 0.0
  numberValue7 = 0.0
  flag = 0.0
  flag2 = 0.0
  flag3 = 0.0
  dataTable3 = 130.0
  textValue2 = true
  textValue3 = true
  textValue4 = false
  textValue5 = false
  dataTable4 = 2
  textValue6 = true
  -- Beginner: Attach one entity to another entity.
  workValue6(numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6)
  workValue6 = threadCall2.Functions
  workValue6 = workValue6.PlaySound
  numberValue = "snackDoorPickup"
  numberValue2 = nil
  numberValue3 = threadCall2.AudiosVolumes
  numberValue3 = numberValue3.snackDoorPickup
  workValue6(numberValue, numberValue2, numberValue3)
  workValue6 = TriggerServerEvent
  numberValue = "1bb98aff8b"
  numberValue2 = GetEntityCoords
  numberValue3 = arg4.door
  numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6 = numberValue2(numberValue3)
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1bb98aff8b".
  workValue6(numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6)
  workValue6 = Citizen
  workValue6 = workValue6.Wait
  numberValue = 500
  workValue6(numberValue)
  workValue6 = ClearPedTasks
  numberValue = arg7
  workValue6(numberValue)
  workValue6 = workValue19
  numberValue = "mp_common_miss"
  numberValue2 = "put_away_coke"
  workValue6(numberValue, numberValue2)
  workValue6 = Citizen
  workValue6 = workValue6.Wait
  numberValue = 700
  workValue6(numberValue)
  workValue6 = ClearPedTasks
  numberValue = arg7
  workValue6(numberValue)
  workValue6 = SetEntityAsMissionEntity
  numberValue = workValue2
  numberValue2 = true
  numberValue3 = true
  workValue6(numberValue, numberValue2, numberValue3)
  workValue6 = DeleteEntity
  numberValue = workValue2
  -- Beginner: Delete a GTA entity.
  workValue6(numberValue)
  workValue6 = workValue54
  numberValue = arg1
  numberValue2 = arg2
  workValue6 = workValue6(numberValue, numberValue2)
  numberValue = workValue6 or numberValue
  if workValue6 then
    numberValue = workValue6[arg3]
  end
  if numberValue then
    numberValue2 = TriggerEvent
    numberValue3 = "c82f62b8de"
    numberValue5 = numberValue
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c82f62b8de".
    numberValue2(numberValue3, numberValue5)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue76; parameters: arg1, arg2, arg3) ===
function workValue76(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue93, workValue103
  arg4 = Entity
  arg5 = arg2
  arg4 = arg4(arg5)
  arg4 = arg4.state
  arg5 = workValue58
  arg6 = arg2
  arg7 = arg3
  arg5 = arg5(arg6, arg7)
  arg7 = arg4
  arg6 = arg4.set
  arg8 = "shelf"
  workValue93 = arg5
  workValue103 = false
  arg6(arg7, arg8, workValue93, workValue103)
  arg6 = workValue68
  arg7 = arg1
  arg8 = arg2
  workValue93 = "soda"
  workValue103 = arg5
  arg6(arg7, arg8, workValue93, workValue103)
end

-- === HELPER FUNCTION (decompiler name: workValue77; parameters: arg1, arg2) ===
function workValue77(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8
  arg3 = Entity
  arg4 = arg2
  arg3 = arg3(arg4)
  arg3 = arg3.state
  arg4 = workValue69
  arg5 = arg1
  arg6 = arg2
  arg4(arg5, arg6)
  arg4 = arg3.shelf
  if arg4 then
    arg4 = DoesEntityExist
    arg5 = arg3.shelf
    arg4 = arg4(arg5)
    if arg4 then
      arg4 = DeleteEntity
      arg5 = arg3.shelf
      -- Beginner: Delete a GTA entity.
      arg4(arg5)
    end
  end
  arg5 = arg3
  arg4 = arg3.set
  arg6 = "shelf"
  arg7 = nil
  arg8 = false
  arg4(arg5, arg6, arg7, arg8)
end

-- === HELPER FUNCTION (decompiler name: workValue78; parameters: arg1, arg2, arg3) ===
function workValue78(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6
  arg4 = Entity
  arg5 = arg2
  arg4 = arg4(arg5)
  arg4 = arg4.state
  arg5 = RequestAnimDict
  arg6 = "clip@sodashelf"
  arg5(arg6)
  while true do
    arg5 = HasAnimDictLoaded
    arg6 = "clip@sodashelf"
    arg5 = arg5(arg6)
    if arg5 then
      break
    end
    arg5 = Citizen
    arg5 = arg5.Wait
    arg6 = 0
    arg5(arg6)
  end
  arg5 = RequestAnimDict
  arg6 = "clip@sodatravel"
  arg5(arg6)
  while true do
    arg5 = HasAnimDictLoaded
    arg6 = "clip@sodatravel"
    arg5 = arg5(arg6)
    if arg5 then
      break
    end
    arg5 = Citizen
    arg5 = arg5.Wait
    arg6 = 0
    arg5(arg6)
  end
  arg5 = GetAnimDuration
  arg6 = "clip@sodashelf"
  arg7 = "soda_shelf_"
  arg8 = arg3
  arg7 = arg7 .. arg8
  arg5 = arg5(arg6, arg7)
  arg5 = arg5 * 1000
  arg6 = RemoveAnimDict
  arg7 = "clip@sodashelf"
  arg6(arg7)
  arg6 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg6 = arg6()
  arg7 = arg4.shelf
  if arg7 then
    arg7 = DoesEntityExist
    arg8 = arg4.shelf
    arg7 = arg7(arg8)
    if arg7 then
      goto flow_label_53
    end
  end
  return
  ::flow_label_53::
  arg7 = arg4.objects
  if arg7 then
    arg7 = arg4.objects
    arg7 = arg7[arg3]
    if arg7 then
      goto flow_label_61
    end
  end
  return
  ::flow_label_61::
  arg7 = GetOffsetFromEntityInWorldCoords
  arg8 = arg4.shelf
  workValue93 = 0.0
  workValue103 = -1.0
  workValue2 = -1.1
  arg7 = arg7(arg8, workValue93, workValue103, workValue2)
  arg8 = GetEntityRotation
  workValue93 = arg4.shelf
  arg8 = arg8(workValue93)
  workValue93 = workValue66
  workValue103 = arg7
  workValue2 = arg8.z
  workValue6 = 3000
  workValue93(workValue103, workValue2, workValue6)
  workValue93 = workValue19
  workValue103 = "mini@sprunk"
  workValue2 = "plyr_buy_drink_pt1"
  workValue6 = 16
  workValue93(workValue103, workValue2, workValue6)
  workValue93 = Citizen
  workValue93 = workValue93.Wait
  workValue103 = 1400
  workValue93(workValue103)
  workValue93 = ClearPedTasks
  workValue103 = arg6
  workValue93(workValue103)
  workValue93 = workValue64
  workValue103 = arg4.shelf
  workValue2 = "clip@sodashelf"
  workValue6 = "soda_shelf_"
  numberValue = arg3
  workValue6 = workValue6 .. numberValue
  numberValue = false
  workValue93(workValue103, workValue2, workValue6, numberValue)
  workValue93 = workValue64
  workValue103 = arg4.objects
  workValue103 = workValue103[arg3]
  workValue103 = workValue103[1]
  workValue2 = "clip@sodatravel"
  workValue6 = "soda_travel_"
  numberValue = arg3
  workValue6 = workValue6 .. numberValue
  numberValue = false
  workValue93(workValue103, workValue2, workValue6, numberValue)
  workValue93 = Citizen
  workValue93 = workValue93.Wait
  workValue103 = 800
  workValue93(workValue103)
  workValue93 = workValue64
  workValue103 = arg4.objects
  workValue103 = workValue103[arg3]
  workValue103 = workValue103[2]
  workValue2 = "clip@sodatravel"
  workValue6 = "soda_swap_gen"
  numberValue = false
  workValue93(workValue103, workValue2, workValue6, numberValue)
  workValue93 = workValue64
  workValue103 = arg4.objects
  workValue103 = workValue103[arg3]
  workValue103 = workValue103[3]
  workValue2 = "clip@sodatravel"
  workValue6 = "soda_swap_gen"
  numberValue = false
  workValue93(workValue103, workValue2, workValue6, numberValue)
  workValue93 = GetEntityModel
  workValue103 = arg4.objects
  workValue103 = workValue103[arg3]
  workValue103 = workValue103[1]
  -- Beginner: result below is modelHash.
  workValue93 = workValue93(workValue103)
  workValue103 = CMG
  workValue103 = workValue103.requestEntitySpawn
  workValue2 = "vending_pickup"
  workValue6 = workValue93
  numberValue = arg7
  workValue103(workValue2, workValue6, numberValue)
  workValue103 = CreateObject
  workValue2 = workValue93
  workValue6 = arg7.x
  numberValue = arg7.y
  numberValue2 = arg7.z
  numberValue2 = numberValue2 - 10.0
  numberValue3 = true
  numberValue5 = true
  numberValue7 = false
  -- Beginner: result below is objectEntity.
  workValue103 = workValue103(workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7)
  workValue2 = Citizen
  workValue2 = workValue2.SetTimeout
  workValue6 = arg5 - 3000

  -- === HELPER FUNCTION (decompiler name: numberValue; parameters: none) ===
  function numberValue()
    local arg12, arg22, arg32, arg42
    arg12 = threadCall2.Functions
    arg12 = arg12.PlaySound
    arg22 = "sodaBottleDropped"
    arg32 = nil
    arg42 = threadCall2.AudiosVolumes
    arg42 = arg42.sodaBottleDropped
    arg12(arg22, arg32, arg42)
  end
  workValue2(workValue6, numberValue)
  workValue2 = Citizen
  workValue2 = workValue2.Wait
  workValue6 = arg5
  workValue2(workValue6)
  workValue2 = GetOffsetFromEntityInWorldCoords
  workValue6 = arg4.shelf
  numberValue = 0.3
  numberValue2 = -1.0
  numberValue3 = -1.1
  workValue2 = workValue2(workValue6, numberValue, numberValue2, numberValue3)
  workValue6 = workValue66
  numberValue = workValue2
  numberValue2 = arg8.z
  numberValue3 = 3000
  workValue6(numberValue, numberValue2, numberValue3)
  workValue6 = workValue19
  numberValue = "pickup_object"
  numberValue2 = "putdown_low"
  workValue6(numberValue, numberValue2)
  workValue6 = workValue67
  numberValue = 800
  workValue6(numberValue)
  workValue6 = workValue65
  numberValue = arg4.shelf
  numberValue2 = "clip@sodashelf"
  numberValue3 = "soda_shelf_"
  numberValue5 = arg3
  numberValue3 = numberValue3 .. numberValue5
  workValue6(numberValue, numberValue2, numberValue3)
  workValue6 = workValue65
  numberValue = arg4.objects
  numberValue = numberValue[arg3]
  numberValue = numberValue[1]
  numberValue2 = "clip@sodatravel"
  numberValue3 = "soda_travel_"
  numberValue5 = arg3
  numberValue3 = numberValue3 .. numberValue5
  workValue6(numberValue, numberValue2, numberValue3)
  workValue6 = workValue65
  numberValue = arg4.objects
  numberValue = numberValue[arg3]
  numberValue = numberValue[2]
  numberValue2 = "clip@sodatravel"
  numberValue3 = "soda_swap_gen"
  workValue6(numberValue, numberValue2, numberValue3)
  workValue6 = workValue65
  numberValue = arg4.objects
  numberValue = numberValue[arg3]
  numberValue = numberValue[3]
  numberValue2 = "clip@sodatravel"
  numberValue3 = "soda_swap_gen"
  workValue6(numberValue, numberValue2, numberValue3)
  workValue6 = AttachEntityToEntity
  numberValue = workValue103
  numberValue2 = arg6
  numberValue3 = GetPedBoneIndex
  numberValue5 = arg6
  numberValue7 = 28422
  numberValue3 = numberValue3(numberValue5, numberValue7)
  numberValue5 = 0.04
  numberValue7 = 0.01
  flag = -0.04
  flag2 = -73.89
  flag3 = 27.8
  dataTable3 = 10.47
  textValue2 = true
  textValue3 = true
  textValue4 = false
  textValue5 = false
  dataTable4 = 1
  textValue6 = true
  -- Beginner: Attach one entity to another entity.
  workValue6(numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6)
  workValue6 = Citizen
  workValue6 = workValue6.Wait
  numberValue = 0
  workValue6(numberValue)
  workValue6 = ClearPedTasks
  numberValue = arg6
  workValue6(numberValue)
  workValue6 = workValue19
  numberValue = "mp_common_miss"
  numberValue2 = "put_away_coke"
  workValue6(numberValue, numberValue2)
  workValue6 = Citizen
  workValue6 = workValue6.Wait
  numberValue = 0
  workValue6(numberValue)
  workValue6 = ClearPedTasks
  numberValue = arg6
  workValue6(numberValue)
  workValue6 = SetEntityAsMissionEntity
  numberValue = workValue103
  numberValue2 = true
  numberValue3 = true
  workValue6(numberValue, numberValue2, numberValue3)
  workValue6 = DeleteEntity
  numberValue = workValue103
  -- Beginner: Delete a GTA entity.
  workValue6(numberValue)
  workValue6 = workValue54
  numberValue = arg1
  numberValue2 = arg2
  workValue6 = workValue6(numberValue, numberValue2)
  numberValue = workValue6 or numberValue
  if workValue6 then
    numberValue = workValue6[arg3]
  end
  if numberValue then
    numberValue2 = TriggerEvent
    numberValue3 = "c82f62b8de"
    numberValue5 = numberValue
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c82f62b8de".
    numberValue2(numberValue3, numberValue5)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue79; parameters: arg1, arg2, arg3) ===
function workValue79(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6, iterator, textValue7, dataTable5, iterator2
  arg4 = RequestAnimDict
  arg5 = "clip@cofferefill"
  arg4(arg5)
  while true do
    arg4 = HasAnimDictLoaded
    arg5 = "clip@cofferefill"
    arg4 = arg4(arg5)
    if arg4 then
      break
    end
    arg4 = Citizen
    arg4 = arg4.Wait
    arg5 = 0
    arg4(arg5)
  end
  arg4 = GetAnimDuration
  arg5 = "clip@cofferefill"
  arg6 = "coffe_refill"
  arg4 = arg4(arg5, arg6)
  arg4 = arg4 * 1000
  arg5 = RemoveAnimDict
  arg6 = "clip@cofferefill"
  arg5(arg6)
  arg5 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg5 = arg5()
  arg6 = GetOffsetFromEntityInWorldCoords
  arg7 = arg2
  arg8 = -0.2
  workValue93 = -0.8
  workValue103 = 0.0
  arg6 = arg6(arg7, arg8, workValue93, workValue103)
  arg7 = GetEntityRotation
  arg8 = arg2
  arg7 = arg7(arg8)
  arg8 = workValue66
  workValue93 = arg6
  workValue103 = arg7.z
  workValue2 = 3000
  arg8(workValue93, workValue103, workValue2)
  arg8 = workValue19
  workValue93 = "mini@sprunk"
  workValue103 = "plyr_buy_drink_pt1"
  workValue2 = 16
  arg8(workValue93, workValue103, workValue2)
  arg8 = workValue67
  workValue93 = 1400
  arg8(workValue93)
  arg8 = ClearPedTasks
  workValue93 = arg5
  arg8(workValue93)
  arg8 = GetOffsetFromEntityInWorldCoords
  workValue93 = arg2
  workValue103 = -0.087544
  workValue2 = -0.242745
  workValue6 = 0.662735
  arg8 = arg8(workValue93, workValue103, workValue2, workValue6)
  workValue93 = CMG
  workValue93 = workValue93.requestEntitySpawn
  workValue103 = "vending_pickup"
  workValue2 = GetHashKey
  workValue6 = "mxc_vend_prop_coffecup"
  -- Beginner: result below is hash.
  workValue2 = workValue2(workValue6)
  workValue6 = arg8
  workValue93(workValue103, workValue2, workValue6)
  workValue93 = GetHashKey
  workValue103 = "mxc_vend_prop_coffecup"
  -- Beginner: result below is hash.
  workValue93 = workValue93(workValue103)
  workValue103 = HasModelLoaded
  workValue2 = workValue93
  workValue103 = workValue103(workValue2)
  if not workValue103 then
    workValue103 = RequestModel
    workValue2 = workValue93
    workValue103(workValue2)
    while true do
      workValue103 = HasModelLoaded
      workValue2 = workValue93
      workValue103 = workValue103(workValue2)
      if workValue103 then
        break
      end
      workValue103 = Citizen
      workValue103 = workValue103.Wait
      workValue2 = 1
      workValue103(workValue2)
    end
  end
  workValue103 = CreateObject
  workValue2 = workValue93
  workValue6 = arg8.x
  numberValue = arg8.y
  numberValue2 = arg8.z
  numberValue3 = true
  numberValue5 = true
  numberValue7 = false
  -- Beginner: result below is objectEntity.
  workValue103 = workValue103(workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7)
  workValue2 = SetModelAsNoLongerNeeded
  workValue6 = workValue93
  workValue2(workValue6)
  workValue2 = SetEntityVisible
  workValue6 = workValue103
  numberValue = false
  numberValue2 = false
  workValue2(workValue6, numberValue, numberValue2)
  workValue2 = SetEntityCoords
  workValue6 = workValue103
  numberValue = arg8.x
  numberValue2 = arg8.y
  numberValue3 = arg8.z
  numberValue5 = false
  numberValue7 = false
  flag = false
  flag2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  workValue2(workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2)
  workValue2 = GetEntityRotation
  workValue6 = arg2
  numberValue = 1
  workValue2 = workValue2(workValue6, numberValue)
  workValue6 = SetEntityRotation
  numberValue = workValue103
  numberValue2 = workValue2.x
  numberValue3 = workValue2.y
  numberValue5 = workValue2.z
  numberValue7 = 1
  flag = false
  workValue6(numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag)
  workValue6 = workValue64
  numberValue = arg2
  numberValue2 = "clip@cofferefill"
  numberValue3 = "coffe_door"
  numberValue5 = false
  workValue6(numberValue, numberValue2, numberValue3, numberValue5)
  workValue6 = workValue64
  numberValue = workValue103
  numberValue2 = "clip@cofferefill"
  numberValue3 = "coffe_refill"
  numberValue5 = false
  workValue6(numberValue, numberValue2, numberValue3, numberValue5)
  workValue6 = Citizen
  workValue6 = workValue6.Wait
  numberValue = 100
  workValue6(numberValue)
  workValue6 = SetEntityVisible
  numberValue = workValue103
  numberValue2 = true
  numberValue3 = false
  workValue6(numberValue, numberValue2, numberValue3)
  workValue6 = Citizen
  workValue6 = workValue6.SetTimeout
  numberValue = 2500

  -- === HELPER FUNCTION (decompiler name: numberValue2; parameters: none) ===
  function numberValue2()
    local arg12, arg22, arg32, arg42
    arg12 = threadCall2.Functions
    arg12 = arg12.PlaySound
    arg22 = "coffeMachine"
    arg32 = nil
    arg42 = threadCall2.AudiosVolumes
    arg42 = arg42.coffeMachine
    arg12(arg22, arg32, arg42)
  end
  workValue6(numberValue, numberValue2)
  workValue6 = Citizen
  workValue6 = workValue6.Wait
  numberValue = arg4
  workValue6(numberValue)
  workValue6 = GetOffsetFromEntityInWorldCoords
  numberValue = arg2
  numberValue2 = -0.3
  numberValue3 = -0.8
  numberValue5 = 0.0
  workValue6 = workValue6(numberValue, numberValue2, numberValue3, numberValue5)
  numberValue = workValue66
  numberValue2 = workValue6
  numberValue3 = arg7.z
  numberValue5 = 3000
  numberValue(numberValue2, numberValue3, numberValue5)
  numberValue = workValue19
  numberValue2 = "pickup_object"
  numberValue3 = "putdown_low"
  numberValue(numberValue2, numberValue3)
  numberValue = workValue67
  numberValue2 = 800
  numberValue(numberValue2)
  numberValue = workValue65
  numberValue2 = arg2
  numberValue3 = "clip@cofferefill"
  numberValue5 = "coffe_door"
  numberValue(numberValue2, numberValue3, numberValue5)
  numberValue = workValue65
  numberValue2 = workValue103
  numberValue3 = "clip@cofferefill"
  numberValue5 = "coffe_refill"
  numberValue(numberValue2, numberValue3, numberValue5)
  if arg3 then
    numberValue = "prop_fib_coffee"
    if numberValue then
      goto flow_label_188
    end
  end
  numberValue = "mxc_vend_prop_item_cofferefill"
  ::flow_label_188::
  numberValue2 = GetHashKey
  numberValue3 = numberValue
  -- Beginner: result below is hash.
  numberValue2 = numberValue2(numberValue3)
  numberValue3 = CMG
  numberValue3 = numberValue3.requestEntitySpawn
  numberValue5 = "vending_pickup"
  numberValue7 = numberValue2
  flag = arg8
  numberValue3(numberValue5, numberValue7, flag)
  numberValue3 = CreateObject
  numberValue5 = numberValue2
  numberValue7 = arg8.x
  flag = arg8.y
  flag2 = arg8.z
  flag3 = true
  dataTable3 = true
  textValue2 = false
  -- Beginner: result below is objectEntity.
  numberValue3 = numberValue3(numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2)
  numberValue5 = AttachEntityToEntity
  numberValue7 = numberValue3
  flag = arg5
  flag2 = GetPedBoneIndex
  flag3 = arg5
  dataTable3 = 28422
  flag2 = flag2(flag3, dataTable3)
  flag3 = 0.04
  dataTable3 = 0.01
  textValue2 = -0.04
  textValue3 = -73.89
  textValue4 = 27.8
  textValue5 = 10.47
  dataTable4 = true
  textValue6 = true
  iterator = false
  textValue7 = false
  dataTable5 = 1
  iterator2 = true
  -- Beginner: Attach one entity to another entity.
  numberValue5(numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6, iterator, textValue7, dataTable5, iterator2)
  numberValue5 = DeleteEntity
  numberValue7 = workValue103
  -- Beginner: Delete a GTA entity.
  numberValue5(numberValue7)
  numberValue5 = Citizen
  numberValue5 = numberValue5.Wait
  numberValue7 = 0
  numberValue5(numberValue7)
  numberValue5 = ClearPedTasks
  numberValue7 = arg5
  numberValue5(numberValue7)
  numberValue5 = workValue19
  numberValue7 = "mp_common_miss"
  flag = "put_away_coke"
  numberValue5(numberValue7, flag)
  numberValue5 = Citizen
  numberValue5 = numberValue5.Wait
  numberValue7 = 0
  numberValue5(numberValue7)
  numberValue5 = ClearPedTasks
  numberValue7 = arg5
  numberValue5(numberValue7)
  numberValue5 = SetEntityAsMissionEntity
  numberValue7 = numberValue3
  flag = true
  flag2 = true
  numberValue5(numberValue7, flag, flag2)
  numberValue5 = DeleteEntity
  numberValue7 = numberValue3
  -- Beginner: Delete a GTA entity.
  numberValue5(numberValue7)
  numberValue5 = arg1.item
  if numberValue5 then
    numberValue5 = TriggerEvent
    numberValue7 = "c82f62b8de"
    flag = arg1.item
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c82f62b8de".
    numberValue5(numberValue7, flag)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue80; parameters: arg1, arg2) ===
function workValue80(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6, iterator
  arg3 = RequestAnimDict
  arg4 = "clip@waterrefill"
  arg3(arg4)
  while true do
    arg3 = HasAnimDictLoaded
    arg4 = "clip@waterrefill"
    arg3 = arg3(arg4)
    if arg3 then
      break
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    arg4 = 0
    arg3(arg4)
  end
  arg3 = GetAnimDuration
  arg4 = "clip@waterrefill"
  arg5 = "water_refill"
  arg3 = arg3(arg4, arg5)
  arg3 = arg3 * 1000
  arg4 = RemoveAnimDict
  arg5 = "clip@waterrefill"
  arg4(arg5)
  arg4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  arg5 = GetOffsetFromEntityInWorldCoords
  arg6 = arg2
  arg7 = -0.056371
  arg8 = -0.12243
  workValue93 = 0.603425
  arg5 = arg5(arg6, arg7, arg8, workValue93)
  arg6 = CMG
  arg6 = arg6.requestEntitySpawn
  arg7 = "vending_pickup"
  arg8 = GetHashKey
  workValue93 = "mxc_vend_prop_watercup"
  -- Beginner: result below is hash.
  arg8 = arg8(workValue93)
  workValue93 = arg5
  arg6(arg7, arg8, workValue93)
  arg6 = GetHashKey
  arg7 = "mxc_vend_prop_watercup"
  -- Beginner: result below is hash.
  arg6 = arg6(arg7)
  arg7 = HasModelLoaded
  arg8 = arg6
  arg7 = arg7(arg8)
  if not arg7 then
    arg7 = RequestModel
    arg8 = arg6
    arg7(arg8)
    while true do
      arg7 = HasModelLoaded
      arg8 = arg6
      arg7 = arg7(arg8)
      if arg7 then
        break
      end
      arg7 = Citizen
      arg7 = arg7.Wait
      arg8 = 1
      arg7(arg8)
    end
  end
  arg7 = CreateObject
  arg8 = arg6
  workValue93 = arg5.x
  workValue103 = arg5.y
  workValue2 = arg5.z
  workValue6 = true
  numberValue = true
  numberValue2 = false
  -- Beginner: result below is objectEntity.
  arg7 = arg7(arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2)
  arg8 = SetModelAsNoLongerNeeded
  workValue93 = arg6
  arg8(workValue93)
  arg8 = SetEntityCoords
  workValue93 = arg7
  workValue103 = arg5.x
  workValue2 = arg5.y
  workValue6 = arg5.z
  numberValue = false
  numberValue2 = false
  numberValue3 = false
  numberValue5 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg8(workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5)
  arg8 = GetEntityRotation
  workValue93 = arg2
  workValue103 = 1
  arg8 = arg8(workValue93, workValue103)
  workValue93 = SetEntityRotation
  workValue103 = arg7
  workValue2 = arg8.x
  workValue6 = arg8.y
  numberValue = arg8.z
  numberValue2 = 1
  numberValue3 = false
  workValue93(workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3)
  workValue93 = workValue64
  workValue103 = arg7
  workValue2 = "clip@waterrefill"
  workValue6 = "water_refill"
  numberValue = false
  workValue93(workValue103, workValue2, workValue6, numberValue)
  workValue93 = Citizen
  workValue93 = workValue93.SetTimeout
  workValue103 = 500

  -- === HELPER FUNCTION (decompiler name: workValue2; parameters: none) ===
  function workValue2()
    local arg12, arg22, arg32, arg42
    arg12 = threadCall2.Functions
    arg12 = arg12.PlaySound
    arg22 = "waterPouring"
    arg32 = nil
    arg42 = threadCall2.AudiosVolumes
    arg42 = arg42.waterPouring
    arg12(arg22, arg32, arg42)
  end
  workValue93(workValue103, workValue2)
  workValue93 = Citizen
  workValue93 = workValue93.Wait
  workValue103 = arg3
  workValue93(workValue103)
  workValue93 = GetOffsetFromEntityInWorldCoords
  workValue103 = arg2
  workValue2 = -0.3
  workValue6 = -0.8
  numberValue = 0.0
  workValue93 = workValue93(workValue103, workValue2, workValue6, numberValue)
  workValue103 = GetEntityCoords
  workValue2 = arg2
  -- Beginner: result below is entityCoords.
  workValue103 = workValue103(workValue2)
  workValue2 = GetEntityRotation
  workValue6 = arg2
  workValue2 = workValue2(workValue6)
  workValue6 = workValue66
  numberValue = workValue93
  numberValue2 = workValue2.z
  numberValue3 = 3000
  workValue6(numberValue, numberValue2, numberValue3)
  workValue6 = workValue19
  numberValue = "pickup_object"
  numberValue2 = "putdown_low"
  workValue6(numberValue, numberValue2)
  workValue6 = workValue67
  numberValue = 800
  workValue6(numberValue)
  workValue6 = workValue65
  numberValue = arg7
  numberValue2 = "clip@waterrefill"
  numberValue3 = "water_refill"
  workValue6(numberValue, numberValue2, numberValue3)
  workValue6 = CMG
  workValue6 = workValue6.requestEntitySpawn
  numberValue = "vending_pickup"
  numberValue2 = GetHashKey
  numberValue3 = "mxc_vend_prop_item_waterfill"
  -- Beginner: result below is hash.
  numberValue2 = numberValue2(numberValue3)
  numberValue3 = arg5
  workValue6(numberValue, numberValue2, numberValue3)
  workValue6 = CreateObject
  numberValue = GetHashKey
  numberValue2 = "mxc_vend_prop_item_waterfill"
  -- Beginner: result below is hash.
  numberValue = numberValue(numberValue2)
  numberValue2 = arg5.x
  numberValue3 = arg5.y
  numberValue5 = arg5.z
  numberValue7 = true
  flag = true
  flag2 = false
  -- Beginner: result below is objectEntity.
  workValue6 = workValue6(numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2)
  numberValue = AttachEntityToEntity
  numberValue2 = workValue6
  numberValue3 = arg4
  numberValue5 = GetPedBoneIndex
  numberValue7 = arg4
  flag = 28422
  numberValue5 = numberValue5(numberValue7, flag)
  numberValue7 = 0.04
  flag = 0.01
  flag2 = -0.04
  flag3 = -73.89
  dataTable3 = 27.8
  textValue2 = 10.47
  textValue3 = true
  textValue4 = true
  textValue5 = false
  dataTable4 = false
  textValue6 = 1
  iterator = true
  -- Beginner: Attach one entity to another entity.
  numberValue(numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6, iterator)
  numberValue = DeleteEntity
  numberValue2 = arg7
  -- Beginner: Delete a GTA entity.
  numberValue(numberValue2)
  numberValue = Citizen
  numberValue = numberValue.Wait
  numberValue2 = 500
  numberValue(numberValue2)
  numberValue = ClearPedTasks
  numberValue2 = arg4
  numberValue(numberValue2)
  numberValue = AttachEntityToEntity
  numberValue2 = workValue6
  numberValue3 = arg4
  numberValue5 = GetPedBoneIndex
  numberValue7 = arg4
  flag = 28422
  numberValue5 = numberValue5(numberValue7, flag)
  numberValue7 = 0.0
  flag = 0.0
  flag2 = 0.0
  flag3 = 0.0
  dataTable3 = 0.0
  textValue2 = 0.0
  textValue3 = true
  textValue4 = true
  textValue5 = false
  dataTable4 = false
  textValue6 = 1
  iterator = true
  -- Beginner: Attach one entity to another entity.
  numberValue(numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2, textValue3, textValue4, textValue5, dataTable4, textValue6, iterator)
  numberValue = workValue19
  numberValue2 = "amb@world_human_drinking@coffee@male@idle_a"
  numberValue3 = "idle_b"
  numberValue(numberValue2, numberValue3)
  numberValue = Citizen
  numberValue = numberValue.Wait
  numberValue2 = 5000
  numberValue(numberValue2)
  numberValue = ClearPedTasks
  numberValue2 = arg4
  numberValue(numberValue2)
  numberValue = workValue19
  numberValue2 = "amb@world_human_drinking@coffee@male@exit"
  numberValue3 = "exit"
  numberValue(numberValue2, numberValue3)
  numberValue = Citizen
  numberValue = numberValue.Wait
  numberValue2 = 1500
  numberValue(numberValue2)
  numberValue = ClearPedTasks
  numberValue2 = arg4
  numberValue(numberValue2)
  numberValue = DetachEntity
  numberValue2 = workValue6
  numberValue3 = true
  numberValue5 = true
  numberValue(numberValue2, numberValue3, numberValue5)
  numberValue = SetEntityAsNoLongerNeeded
  numberValue2 = workValue6
  numberValue(numberValue2)
  numberValue = Citizen
  numberValue = numberValue.Wait
  numberValue2 = 500
  numberValue(numberValue2)
  numberValue = FreezeEntityPosition
  numberValue2 = workValue6
  numberValue3 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  numberValue(numberValue2, numberValue3)
  numberValue = TriggerEvent
  numberValue2 = "c82f62b8de"
  numberValue3 = "water"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c82f62b8de".
  numberValue(numberValue2, numberValue3)
end

-- === HELPER FUNCTION (decompiler name: workValue81; parameters: arg1, arg2) ===
function workValue81(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, workValue93, workValue103
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = threadCall2.Vendings
  arg4 = arg4.cigarettes
  arg4 = arg4.startAnimXOffset
  if arg4 then
    arg4 = threadCall2.Vendings
    arg4 = arg4.cigarettes
    arg4 = arg4.startAnimXOffset
    arg4 = arg4[arg2]
    if arg4 then
      goto flow_label_15
    end
  end
  arg4 = -0.5
  ::flow_label_15::
  arg5 = GetOffsetFromEntityInWorldCoords
  arg6 = arg1
  arg7 = arg4
  arg8 = -0.6
  workValue93 = -1.1
  arg5 = arg5(arg6, arg7, arg8, workValue93)
  arg6 = GetEntityRotation
  arg7 = arg1
  arg6 = arg6(arg7)
  arg7 = workValue66
  arg8 = arg5
  workValue93 = arg6.z
  workValue103 = 3000
  arg7(arg8, workValue93, workValue103)
  arg7 = workValue19
  arg8 = "mini@sprunk"
  workValue93 = "plyr_buy_drink_pt1"
  workValue103 = 16
  arg7(arg8, workValue93, workValue103)
  arg7 = Citizen
  arg7 = arg7.Wait
  arg8 = 1400
  arg7(arg8)
  arg7 = ClearPedTasks
  arg8 = arg3
  arg7(arg8)
end

-- === HELPER FUNCTION (decompiler name: workValue82; parameters: arg1, arg2, arg3) ===
function workValue82(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag
  arg4 = workValue54
  arg5 = arg1
  arg6 = arg2
  arg4 = arg4(arg5, arg6)
  arg5 = arg4 or arg5
  if arg4 then
    arg5 = arg4[arg3]
  end
  if arg5 then
    arg6 = threadCall2.Items
    arg6 = arg6[arg5]
    if arg6 then
      arg6 = threadCall2.Items
      arg6 = arg6[arg5]
      arg6 = arg6.model
      if arg6 then
        goto flow_label_20
      end
    end
  end
  arg6 = "v_ret_ml_cigs"
  ::flow_label_20::
  arg7 = GetEntityCoords
  arg8 = arg2
  -- Beginner: result below is entityCoords.
  arg7 = arg7(arg8)
  arg8 = GetHashKey
  workValue93 = arg6
  -- Beginner: result below is hash.
  arg8 = arg8(workValue93)
  workValue93 = HasModelLoaded
  workValue103 = arg8
  workValue93 = workValue93(workValue103)
  if not workValue93 then
    workValue93 = RequestModel
    workValue103 = arg8
    workValue93(workValue103)
    while true do
      workValue93 = HasModelLoaded
      workValue103 = arg8
      workValue93 = workValue93(workValue103)
      if workValue93 then
        break
      end
      workValue93 = Citizen
      workValue93 = workValue93.Wait
      workValue103 = 1
      workValue93(workValue103)
    end
  end
  workValue93 = CMG
  workValue93 = workValue93.requestEntitySpawn
  workValue103 = "vending_pickup"
  workValue2 = arg8
  workValue6 = arg7
  workValue93(workValue103, workValue2, workValue6)
  workValue93 = CreateObject
  workValue103 = arg8
  workValue2 = arg7.x
  workValue6 = arg7.y
  numberValue = arg7.z
  numberValue2 = true
  numberValue3 = true
  numberValue5 = false
  -- Beginner: result below is objectEntity.
  workValue93 = workValue93(workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5)
  workValue103 = SetModelAsNoLongerNeeded
  workValue2 = arg8
  workValue103(workValue2)
  workValue103 = SetEntityCoords
  workValue2 = workValue93
  workValue6 = arg7.x
  numberValue = arg7.y
  numberValue2 = arg7.z
  numberValue3 = false
  numberValue5 = false
  numberValue7 = false
  flag = false
  -- Beginner: Move/teleport an entity to new coordinates.
  workValue103(workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag)
  workValue103 = GetEntityRotation
  workValue2 = arg2
  workValue6 = 2
  workValue103 = workValue103(workValue2, workValue6)
  workValue2 = SetEntityRotation
  workValue6 = workValue93
  numberValue = workValue103.x
  numberValue2 = workValue103.y
  numberValue3 = workValue103.z
  numberValue5 = 2
  numberValue7 = false
  workValue2(workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7)
  return workValue93
end

-- === HELPER FUNCTION (decompiler name: workValue85; parameters: arg1) ===
function workValue85(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7
  arg2 = GetOffsetFromEntityInWorldCoords
  arg3 = arg1
  arg4 = -0.1
  arg5 = -0.6
  arg6 = -1.1
  arg2 = arg2(arg3, arg4, arg5, arg6)
  arg3 = GetEntityRotation
  arg4 = arg1
  arg3 = arg3(arg4)
  arg4 = workValue66
  arg5 = arg2
  arg6 = arg3.z
  arg7 = 3000
  arg4(arg5, arg6, arg7)
  arg4 = workValue19
  arg5 = "pickup_object"
  arg6 = "putdown_low"
  arg4(arg5, arg6)
  arg4 = Citizen
  arg4 = arg4.Wait
  arg5 = 1200
  arg4(arg5)
end

-- === HELPER FUNCTION (decompiler name: workValue86; parameters: arg1, arg2, arg3) ===
function workValue86(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2
  arg4 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg4 = arg4()
  arg5 = workValue81
  arg6 = arg2
  arg7 = arg3
  arg5(arg6, arg7)
  arg5 = workValue82
  arg6 = arg1
  arg7 = arg2
  arg8 = arg3
  arg5 = arg5(arg6, arg7, arg8)
  arg6 = workValue64
  arg7 = arg5
  arg8 = "clip@fagsfall_gen"
  workValue93 = "fags_fall_gen"
  workValue103 = false
  arg6(arg7, arg8, workValue93, workValue103)
  arg6 = Citizen
  arg6 = arg6.Wait
  arg7 = 1000
  arg6(arg7)
  arg6 = workValue85
  arg7 = arg2
  arg6(arg7)
  arg6 = GetPedBoneIndex
  arg7 = arg4
  arg8 = 28422
  arg6 = arg6(arg7, arg8)
  arg7 = workValue65
  arg8 = arg5
  workValue93 = "clip@fagsfall_gen"
  workValue103 = "fags_fall_gen"
  arg7(arg8, workValue93, workValue103)
  arg7 = AttachEntityToEntity
  arg8 = arg5
  workValue93 = arg4
  workValue103 = arg6
  workValue2 = 0.0
  workValue6 = 0.0
  numberValue = 0.0
  numberValue2 = 0.0
  numberValue3 = 0.0
  numberValue5 = 130.0
  numberValue7 = true
  flag = true
  flag2 = false
  flag3 = false
  dataTable3 = 2
  textValue2 = true
  -- Beginner: Attach one entity to another entity.
  arg7(arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5, numberValue7, flag, flag2, flag3, dataTable3, textValue2)
  arg7 = ClearPedTasks
  arg8 = arg4
  arg7(arg8)
  arg7 = workValue19
  arg8 = "mp_common_miss"
  workValue93 = "put_away_coke"
  arg7(arg8, workValue93)
  arg7 = Citizen
  arg7 = arg7.Wait
  arg8 = 700
  arg7(arg8)
  arg7 = ClearPedTasks
  arg8 = arg4
  arg7(arg8)
  arg7 = SetEntityAsMissionEntity
  arg8 = arg5
  workValue93 = true
  workValue103 = true
  arg7(arg8, workValue93, workValue103)
  arg7 = DeleteEntity
  arg8 = arg5
  -- Beginner: Delete a GTA entity.
  arg7(arg8)
  arg7 = workValue54
  arg8 = arg1
  workValue93 = arg2
  arg7 = arg7(arg8, workValue93)
  arg8 = arg7 or arg8
  if arg7 then
    arg8 = arg7[arg3]
  end
  if arg8 then
    workValue93 = TriggerEvent
    workValue103 = "c82f62b8de"
    workValue2 = arg8
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "c82f62b8de".
    workValue93(workValue103, workValue2)
  end
end
eventRegistration = RegisterNetEvent
textValue8 = "60eadad9f8"
-- Beginner: this function handles network event "60eadad9f8".

-- === HELPER FUNCTION (decompiler name: workValue87; parameters: arg1, arg2, arg3, arg4, arg5) ===
function workValue87(arg1, arg2, arg3, arg4, arg5)
  local arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5
  arg6 = GetClosestObjectOfType
  arg7 = arg1.x
  arg8 = arg1.y
  workValue93 = arg1.z
  workValue103 = 3.0
  workValue2 = arg2
  workValue6 = false
  numberValue = false
  numberValue2 = false
  -- Beginner: result below is objectEntity.
  arg6 = arg6(arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2)
  arg7 = DoesEntityExist
  arg8 = arg6
  arg7 = arg7(arg8)
  if arg7 then
    arg7 = RequestAnimDict
    arg8 = arg3
    arg7(arg8)
    while true do
      arg7 = HasAnimDictLoaded
      arg8 = arg3
      arg7 = arg7(arg8)
      if arg7 then
        break
      end
      arg7 = Citizen
      arg7 = arg7.Wait
      arg8 = 0
      arg7(arg8)
    end
    arg7 = PlayEntityAnim
    arg8 = arg6
    workValue93 = arg4
    workValue103 = arg3
    workValue2 = 8.0
    workValue6 = arg5 or workValue6
    if not arg5 then
      workValue6 = false
    end
    numberValue = true
    numberValue2 = false
    numberValue3 = 0.0
    numberValue5 = 0
    arg7(arg8, workValue93, workValue103, workValue2, workValue6, numberValue, numberValue2, numberValue3, numberValue5)
    arg7 = RemoveAnimDict
    arg8 = arg3
    arg7(arg8)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "60eadad9f8".
eventRegistration(textValue8, workValue87)
eventRegistration = RegisterNetEvent
textValue8 = "4e2aeb078b"
-- Beginner: this function handles network event "4e2aeb078b".

-- === HELPER FUNCTION (decompiler name: workValue87; parameters: arg1, arg2, arg3, arg4) ===
function workValue87(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue
  arg5 = GetClosestObjectOfType
  arg6 = arg1.x
  arg7 = arg1.y
  arg8 = arg1.z
  workValue93 = 3.0
  workValue103 = arg2
  workValue2 = false
  workValue6 = false
  numberValue = false
  -- Beginner: result below is objectEntity.
  arg5 = arg5(arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue)
  arg6 = DoesEntityExist
  arg7 = arg5
  arg6 = arg6(arg7)
  if arg6 then
    arg6 = StopEntityAnim
    arg7 = arg5
    arg8 = arg4
    workValue93 = arg3
    workValue103 = 0.0
    arg6(arg7, arg8, workValue93, workValue103)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4e2aeb078b".
eventRegistration(textValue8, workValue87)
eventRegistration = RegisterNetEvent
textValue8 = "1bb98aff8b"
-- Beginner: this function handles network event "1bb98aff8b".

-- === HELPER FUNCTION (decompiler name: workValue87; parameters: arg1) ===
function workValue87(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, workValue93, workValue103
  arg2 = GetClosestObjectOfType
  arg3 = arg1.x
  arg4 = arg1.y
  arg5 = arg1.z
  arg6 = 5.0
  arg7 = GetHashKey
  arg8 = "mxc_vend_prop_snak_door"
  -- Beginner: result below is hash.
  arg7 = arg7(arg8)
  arg8 = false
  workValue93 = false
  workValue103 = false
  -- Beginner: result below is objectEntity.
  arg2 = arg2(arg3, arg4, arg5, arg6, arg7, arg8, workValue93, workValue103)
  arg3 = DoesEntityExist
  arg4 = arg2
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = print
    arg4 = "Failed to find snack door for opening animation."
    arg3(arg4)
    return
  end
  arg3 = GetEntityRotation
  arg4 = arg2
  arg5 = 1
  arg3 = arg3(arg4, arg5)
  arg4 = workValue24
  arg5 = arg2
  arg6 = vec3
  arg7 = 30.0
  arg8 = 0.0
  workValue93 = 0.0
  arg6 = arg6(arg7, arg8, workValue93)
  arg6 = arg3 + arg6
  arg7 = 200
  arg8 = 1
  workValue93 = "easeInOut"
  arg4(arg5, arg6, arg7, arg8, workValue93)
  arg4 = Citizen
  arg4 = arg4.Wait
  arg5 = 200
  arg4(arg5)
  arg4 = workValue24
  arg5 = arg2
  arg6 = arg3
  arg7 = 200
  arg8 = 1
  workValue93 = "easeInOut"
  arg4(arg5, arg6, arg7, arg8, workValue93)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "1bb98aff8b".
eventRegistration(textValue8, workValue87)
eventRegistration = RegisterNetEvent
textValue8 = "32e4f00ebc"
-- Beginner: this function handles network event "32e4f00ebc".

-- === HELPER FUNCTION (decompiler name: workValue87; parameters: arg1, arg2) ===
function workValue87(arg1, arg2)
  local arg3
  arg3 = numberValue11
  arg3[arg1] = arg2
end
eventRegistration(textValue8, workValue87)
-- Beginner: this function handles network event "32e4f00ebc".

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: arg1, arg2, arg3, arg4) ===
function eventRegistration(arg1, arg2, arg3, arg4)
  local arg5, arg6, arg7, arg8, workValue93, workValue103, workValue2, workValue6, numberValue
  arg5 = workValue27
  arg6 = arg3
  arg7 = "obj"
  arg8 = arg1
  arg5(arg6, arg7, arg8)
  arg5 = workValue27
  arg6 = arg3
  arg7 = "vendingName"
  arg8 = arg2
  arg5(arg6, arg7, arg8)
  arg5 = threadCall2.Vendings
  arg5 = arg5[arg2]
  arg5 = arg5.interaction
  arg5 = arg5.vanilla
  arg5 = arg5.distance
  if not arg5 then
    arg5 = threadCall2.DefaultInteractionDistance
  end
  arg6 = workValue38
  arg7 = arg1
  arg6 = arg6(arg7)
  arg7 = GetOffsetFromEntityInWorldCoords
  arg8 = arg1
  workValue93 = 0.0
  workValue103 = arg6.y
  workValue103 = -workValue103
  workValue2 = 0.0
  arg7 = arg7(arg8, workValue93, workValue103, workValue2)
  arg8 = workValue35
  workValue93 = "vending:"
  workValue103 = arg3
  workValue93 = workValue93 .. workValue103
  workValue103 = arg7
  workValue2 = 0.0
  workValue6 = arg5
  numberValue = {}
  numberValue.notify = arg4
  numberValue.slice = "ignore"
  arg8(workValue93, workValue103, workValue2, workValue6, numberValue)
end

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg1) ===
function textValue8(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = workValue27
  arg3 = arg1
  arg4 = "obj"
  arg5 = nil
  arg2(arg3, arg4, arg5)
  arg2 = workValue27
  arg3 = arg1
  arg4 = "vendingName"
  arg5 = nil
  arg2(arg3, arg4, arg5)
  arg2 = workValue37
  arg3 = "vending:"
  arg4 = arg1
  arg3 = arg3 .. arg4
  arg2(arg3)
end

-- === HELPER FUNCTION (decompiler name: workValue87; parameters: arg1, arg2, arg3) ===
function workValue87(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7
  arg4 = LocalPlayer
  arg4 = arg4.state
  arg4 = arg4.interactingVending
  if arg4 then
    return
  end
  arg4 = workValue26
  arg4()
  arg4 = numberValue11
  arg4 = arg4[arg3]
  if arg4 then
    arg4 = workValue23
    arg5 = threadCall2.Translations
    arg5 = arg5.already_used
    if not arg5 then
      arg5 = "~r~In use.~w~"
    end
    arg6 = 2000
    arg4(arg5, arg6)
    return
  end
  arg4 = workValue36
  arg5 = "vending:"
  arg6 = arg3
  arg5 = arg5 .. arg6
  arg6 = 0.0
  arg4(arg5, arg6)
  arg4 = workValue26
  arg4()
  arg4 = TriggerServerEvent
  arg5 = "32e4f00ebc"
  arg6 = arg3
  arg7 = true
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "32e4f00ebc".
  arg4(arg5, arg6, arg7)
  arg4 = LocalPlayer
  arg4 = arg4.state
  arg4.interactingVending = true
  arg4 = threadCall2.Vendings
  arg4 = arg4[arg2]
  arg5 = arg4
  arg4 = arg4.OnInteraction
  arg6 = arg1
  arg7 = arg3
  arg4(arg5, arg6, arg7)
  arg4 = threadCall2.Vendings
  arg4 = arg4[arg2]
  arg4 = arg4.interaction
  arg4 = arg4.vanilla
  arg4 = arg4.distance
  if not arg4 then
    arg4 = threadCall2.DefaultInteractionDistance
  end
  arg5 = workValue36
  arg6 = "vending:"
  arg7 = arg3
  arg6 = arg6 .. arg7
  arg7 = arg4
  arg5(arg6, arg7)
  arg5 = LocalPlayer
  arg5 = arg5.state
  arg5.interactingVending = false
end
iterator3 = pairs
workValue88 = cmgCall.vendings
iterator3, workValue88, workValue89, workValue90 = iterator3(workValue88)
for workValue91, workValue96 in iterator3, workValue88, workValue89, workValue90 do
  iterator4 = threadCall2.Vendings
  dataTable8 = {}
  iterator4[workValue91] = dataTable8
  iterator4 = pairs
  dataTable8 = workValue96
  iterator4, dataTable8, workValue97, workValue98 = iterator4(dataTable8)
  for workValue99, workValue100 in iterator4, dataTable8, workValue97, workValue98 do
    workValue101 = threadCall2.Vendings
    workValue101 = workValue101[workValue91]
    workValue101[workValue99] = workValue100
  end
end
iterator3 = threadCall2.Vendings
iterator3 = iterator3.snack

-- === HELPER FUNCTION (decompiler name: workValue88; parameters: arg1, arg2, arg3) ===
function workValue88(arg1, arg2, arg3)
  local arg4, arg5, arg6
  arg4 = dataTable7
  arg5 = arg1
  arg6 = arg2
  arg4(arg5, arg6)
end
iterator3.Near = workValue88
iterator3 = threadCall2.Vendings
iterator3 = iterator3.snack

-- === HELPER FUNCTION (decompiler name: workValue88; parameters: arg1, arg2, arg3) ===
function workValue88(arg1, arg2, arg3)
  local arg4, arg5, arg6
  arg4 = workValue74
  arg5 = arg1
  arg6 = arg2
  arg4(arg5, arg6)
end
iterator3.Far = workValue88
iterator3 = threadCall2.Vendings
iterator3 = iterator3.snack

-- === HELPER FUNCTION (decompiler name: workValue88; parameters: arg1, arg2, arg3) ===
function workValue88(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue93
  arg4 = workValue71
  arg5 = arg1
  arg6 = arg2
  arg4 = arg4(arg5, arg6)
  if arg4 and "" ~= arg4 then
    arg5 = threadCall2.Functions
    arg5 = arg5.TryToBuy
    arg6 = arg1
    arg7 = arg4
    arg8 = arg3

    -- === HELPER FUNCTION (decompiler name: workValue93; parameters: none) ===
    function workValue93()
      local arg12, arg22, arg32, arg42
      arg12 = workValue75
      arg22 = arg1
      arg32 = arg2
      arg42 = arg4
      arg12(arg22, arg32, arg42)
    end
    arg5(arg6, arg7, arg8, workValue93)
  else
    arg5 = TriggerServerEvent
    arg6 = "32e4f00ebc"
    arg7 = arg3
    arg8 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "32e4f00ebc".
    arg5(arg6, arg7, arg8)
  end
end
iterator3.OnInteraction = workValue88
iterator3 = threadCall2.Vendings
iterator3 = iterator3.soda

-- === HELPER FUNCTION (decompiler name: workValue88; parameters: arg1, arg2, arg3) ===
function workValue88(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7
  arg4 = workValue76
  arg5 = arg1
  arg6 = arg2
  arg7 = arg1.sodaArm
  if not arg7 then
    arg7 = "mxc_vend_prop_soda_shelf"
  end
  arg4(arg5, arg6, arg7)
end
iterator3.Near = workValue88
iterator3 = threadCall2.Vendings
iterator3 = iterator3.soda

-- === HELPER FUNCTION (decompiler name: workValue88; parameters: arg1, arg2, arg3) ===
function workValue88(arg1, arg2, arg3)
  local arg4, arg5, arg6
  arg4 = workValue77
  arg5 = arg1
  arg6 = arg2
  arg4(arg5, arg6)
end
iterator3.Far = workValue88
iterator3 = threadCall2.Vendings
iterator3 = iterator3.soda

-- === HELPER FUNCTION (decompiler name: workValue88; parameters: arg1, arg2, arg3) ===
function workValue88(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue93
  arg4 = workValue71
  arg5 = arg1
  arg6 = arg2
  arg4 = arg4(arg5, arg6)
  if arg4 and "" ~= arg4 then
    arg5 = threadCall2.Functions
    arg5 = arg5.TryToBuy
    arg6 = arg1
    arg7 = arg4
    arg8 = arg3

    -- === HELPER FUNCTION (decompiler name: workValue93; parameters: none) ===
    function workValue93()
      local arg12, arg22, arg32, arg42
      arg12 = workValue78
      arg22 = arg1
      arg32 = arg2
      arg42 = arg4
      arg12(arg22, arg32, arg42)
    end
    arg5(arg6, arg7, arg8, workValue93)
  else
    arg5 = TriggerServerEvent
    arg6 = "32e4f00ebc"
    arg7 = arg3
    arg8 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "32e4f00ebc".
    arg5(arg6, arg7, arg8)
  end
end
iterator3.OnInteraction = workValue88
iterator3 = threadCall2.Vendings
iterator3 = iterator3.soda_2

-- === HELPER FUNCTION (decompiler name: workValue88; parameters: arg1, arg2, arg3) ===
function workValue88(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7
  arg4 = workValue76
  arg5 = arg1
  arg6 = arg2
  arg7 = arg1.sodaArm
  if not arg7 then
    arg7 = "mxc_vend_prop_soda_shelf2"
  end
  arg4(arg5, arg6, arg7)
end
iterator3.Near = workValue88
iterator3 = threadCall2.Vendings
iterator3 = iterator3.soda_2

-- === HELPER FUNCTION (decompiler name: workValue88; parameters: arg1, arg2, arg3) ===
function workValue88(arg1, arg2, arg3)
  local arg4, arg5, arg6
  arg4 = workValue77
  arg5 = arg1
  arg6 = arg2
  arg4(arg5, arg6)
end
iterator3.Far = workValue88
iterator3 = threadCall2.Vendings
iterator3 = iterator3.soda_2

-- === HELPER FUNCTION (decompiler name: workValue88; parameters: arg1, arg2, arg3) ===
function workValue88(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue93
  arg4 = workValue71
  arg5 = arg1
  arg6 = arg2
  arg4 = arg4(arg5, arg6)
  if arg4 and "" ~= arg4 then
    arg5 = threadCall2.Functions
    arg5 = arg5.TryToBuy
    arg6 = arg1
    arg7 = arg4
    arg8 = arg3

    -- === HELPER FUNCTION (decompiler name: workValue93; parameters: none) ===
    function workValue93()
      local arg12, arg22, arg32, arg42
      arg12 = workValue78
      arg22 = arg1
      arg32 = arg2
      arg42 = arg4
      arg12(arg22, arg32, arg42)
    end
    arg5(arg6, arg7, arg8, workValue93)
  else
    arg5 = TriggerServerEvent
    arg6 = "32e4f00ebc"
    arg7 = arg3
    arg8 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "32e4f00ebc".
    arg5(arg6, arg7, arg8)
  end
end
iterator3.OnInteraction = workValue88
iterator3 = threadCall2.Vendings
iterator3 = iterator3.coffee

-- === HELPER FUNCTION (decompiler name: workValue88; parameters: arg1, arg2, arg3) ===
function workValue88(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8
  arg4 = threadCall2.Functions
  arg4 = arg4.TryToBuy
  arg5 = arg1
  arg6 = arg1.item
  arg7 = arg3

  -- === HELPER FUNCTION: arg8() ===
  function arg8()
    local arg12, arg22, arg32, arg42
    arg12 = workValue79
    arg22 = arg1
    arg32 = arg2
    arg42 = true
    arg12(arg22, arg32, arg42)
  end
  arg4(arg5, arg6, arg7, arg8)
end
iterator3.OnInteraction = workValue88
iterator3 = threadCall2.Vendings
iterator3 = iterator3.water

-- === HELPER FUNCTION (decompiler name: workValue88; parameters: arg1, arg2, arg3) ===
function workValue88(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8
  arg4 = threadCall2.Functions
  arg4 = arg4.TryToBuy
  arg5 = arg1
  arg6 = arg1.item
  arg7 = arg3

  -- === HELPER FUNCTION: arg8() ===
  function arg8()
    local arg12, arg22, arg32
    arg12 = workValue80
    arg22 = arg1
    arg32 = arg2
    arg12(arg22, arg32)
  end
  arg4(arg5, arg6, arg7, arg8)
end
iterator3.OnInteraction = workValue88
iterator3 = threadCall2.Vendings
iterator3 = iterator3.cigarettes

-- === HELPER FUNCTION (decompiler name: workValue88; parameters: arg1, arg2, arg3) ===
function workValue88(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, workValue93
  arg4 = workValue71
  arg5 = arg1
  arg6 = arg2
  arg4 = arg4(arg5, arg6)
  if arg4 and "" ~= arg4 then
    arg5 = threadCall2.Functions
    arg5 = arg5.TryToBuy
    arg6 = arg1
    arg7 = arg4
    arg8 = arg3

    -- === HELPER FUNCTION (decompiler name: workValue93; parameters: none) ===
    function workValue93()
      local arg12, arg22, arg32, arg42
      arg12 = workValue86
      arg22 = arg1
      arg32 = arg2
      arg42 = arg4
      arg12(arg22, arg32, arg42)
    end
    arg5(arg6, arg7, arg8, workValue93)
  else
    arg5 = TriggerServerEvent
    arg6 = "32e4f00ebc"
    arg7 = arg3
    arg8 = false
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "32e4f00ebc".
    arg5(arg6, arg7, arg8)
  end
end
iterator3.OnInteraction = workValue88
iterator3 = threadCall2.Vendings
iterator3 = iterator3.svapo
workValue88 = threadCall2.Vendings
workValue88 = workValue88.snack
workValue88 = workValue88.Near
iterator3.Near = workValue88
iterator3 = threadCall2.Vendings
iterator3 = iterator3.svapo
workValue88 = threadCall2.Vendings
workValue88 = workValue88.snack
workValue88 = workValue88.Far
iterator3.Far = workValue88
iterator3 = threadCall2.Vendings
iterator3 = iterator3.svapo
workValue88 = threadCall2.Vendings
workValue88 = workValue88.snack
workValue88 = workValue88.OnInteraction
iterator3.OnInteraction = workValue88
iterator3 = workValue52
iterator3()
iterator3 = workValue53
iterator3()
iterator3 = LocalPlayer
iterator3 = iterator3.state
iterator3.interactingVending = false
iterator3 = workValue43
workValue88 = "marker"

-- === HELPER FUNCTION (decompiler name: workValue89; parameters: arg1) ===
function workValue89(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg3 = arg1
  arg2 = arg1.find
  arg4 = "vending"
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg3 = arg1
    arg2 = arg1.match
    arg4 = "vending:(.+)"
    arg2 = arg2(arg3, arg4)
    arg3 = workValue29
    arg4 = arg2
    arg5 = "obj"
    arg3 = arg3(arg4, arg5)
    arg4 = workValue29
    arg5 = arg2
    arg6 = "vendingName"
    arg4 = arg4(arg5, arg6)
    if arg3 and arg4 then
      arg5 = workValue87
      arg6 = arg3
      arg7 = arg4
      arg8 = arg2
      arg5(arg6, arg7, arg8)
    end
  end
end
iterator3(workValue88, workValue89)
iterator3 = Citizen
iterator3 = iterator3.CreateThread

-- === HELPER FUNCTION (decompiler name: workValue88; parameters: none) ===
function workValue88()
  local arg1, arg2, arg3
  while true do
    arg1 = CMG
    arg1 = arg1.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg1 = arg1()
    arg2 = workValue57

    -- === HELPER FUNCTION: arg3(arg12, arg22, arg32) ===
    function arg3(arg12, arg22, arg32)
      local arg42, arg52, workValue60, numberValue12, numberValue13, workValue94, workValue104, workValue3, workValue7, workValue9
      arg42 = GetEntityCoords
      arg52 = arg32
      -- Beginner: result below is entityCoords.
      arg42 = arg42(arg52)
      arg52 = arg1
      arg52 = arg42 - arg52
      arg52 = #arg52
      workValue60 = workValue55
      numberValue12 = arg32
      numberValue13 = arg12
      workValue60 = workValue60(numberValue12, numberValue13)
      numberValue12 = Entity
      numberValue13 = arg32
      numberValue12 = numberValue12(numberValue13)
      numberValue12 = numberValue12.state
      numberValue13 = threadCall2.RenderDistance
      if arg52 < numberValue13 then
        numberValue13 = numberValue12.isNear
        if not numberValue13 then
          numberValue13 = arg22.interaction
          if numberValue13 then
            numberValue13 = eventRegistration
            workValue94 = arg32
            workValue104 = arg12
            workValue3 = workValue60
            workValue7 = threadCall2.Translations
            workValue9 = arg22.interaction
            workValue9 = workValue9.vanilla
            workValue9 = workValue9.notify
            workValue7 = workValue7[workValue9]
            if not workValue7 then
              workValue7 = "Press E"
            end
            -- Beginner: Register a network event handler that the server/other clients can trigger.
            numberValue13(workValue94, workValue104, workValue3, workValue7)
          end
          numberValue13 = arg22.blip
          if numberValue13 then
            numberValue13 = threadCall2.Blips
            if numberValue13 then
              numberValue13 = workValue39
              workValue94 = nil
              workValue104 = arg42
              workValue3 = arg22.blip
              workValue3 = workValue3.sprite
              workValue7 = arg22.blip
              workValue7 = workValue7.color
              workValue9 = arg22.blip
              workValue9 = workValue9.size
              numberValue13 = numberValue13(workValue94, workValue104, workValue3, workValue7, workValue9)
              workValue94 = SetBlipDisplay
              workValue104 = numberValue13
              workValue3 = 5
              workValue94(workValue104, workValue3)
              workValue104 = numberValue12
              workValue94 = numberValue12.set
              workValue3 = "blip"
              workValue7 = numberValue13
              workValue9 = false
              workValue94(workValue104, workValue3, workValue7, workValue9)
            end
          end
          numberValue13 = arg22.Near
          if numberValue13 then
            workValue94 = arg22
            numberValue13 = arg22.Near
            workValue104 = arg32
            workValue3 = workValue60
            numberValue13(workValue94, workValue104, workValue3)
          end
          workValue94 = numberValue12
          numberValue13 = numberValue12.set
          workValue104 = "isNear"
          workValue3 = true
          workValue7 = false
          numberValue13(workValue94, workValue104, workValue3, workValue7)
        end
      else
        numberValue13 = numberValue12.isNear
        if numberValue13 then
          numberValue13 = arg22.interaction
          if numberValue13 then
            numberValue13 = textValue8
            workValue94 = workValue60
            numberValue13(workValue94)
          end
          numberValue13 = arg22.blip
          if numberValue13 then
            numberValue13 = threadCall2.Blips
            if numberValue13 then
              numberValue13 = numberValue12.blip
              if numberValue13 then
                numberValue13 = RemoveBlip
                workValue94 = numberValue12.blip
                numberValue13(workValue94)
              end
              workValue94 = numberValue12
              numberValue13 = numberValue12.set
              workValue104 = "blip"
              workValue3 = nil
              workValue7 = false
              numberValue13(workValue94, workValue104, workValue3, workValue7)
            end
          end
          numberValue13 = arg22.Far
          if numberValue13 then
            workValue94 = arg22
            numberValue13 = arg22.Far
            workValue104 = arg32
            workValue3 = workValue60
            numberValue13(workValue94, workValue104, workValue3)
          end
          workValue94 = numberValue12
          numberValue13 = numberValue12.set
          workValue104 = "isNear"
          workValue3 = nil
          workValue7 = false
          numberValue13(workValue94, workValue104, workValue3, workValue7)
        end
      end
    end
    arg2(arg3)
    arg2 = Citizen
    arg2 = arg2.Wait
    arg3 = 2000
    arg2(arg3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
iterator3(workValue88)
iterator3 = AddEventHandler
workValue88 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: workValue89; parameters: arg1) ===
function workValue89(arg1)
  local arg2, arg3
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = workValue26
    arg2()
    arg2 = workValue57
    -- Beginner: this function runs when client event "onResourceStop" fires.

    -- === HELPER FUNCTION: arg3(arg12, arg22, arg32) ===
    function arg3(arg12, arg22, arg32)
      local arg42, arg52, workValue60, numberValue12, numberValue13, workValue94, workValue104
      arg42 = workValue55
      arg52 = arg32
      workValue60 = arg12
      arg42 = arg42(arg52, workValue60)
      arg52 = Entity
      workValue60 = arg32
      arg52 = arg52(workValue60)
      arg52 = arg52.state
      workValue60 = arg52.isNear
      if workValue60 then
        workValue60 = arg22.interaction
        if workValue60 then
          workValue60 = textValue8
          numberValue12 = arg42
          workValue60(numberValue12)
        end
        workValue60 = arg22.Far
        if workValue60 then
          numberValue12 = arg22
          workValue60 = arg22.Far
          numberValue13 = arg32
          workValue94 = arg42
          workValue60(numberValue12, numberValue13, workValue94)
        end
        numberValue12 = arg52
        workValue60 = arg52.set
        numberValue13 = "isNear"
        workValue94 = nil
        workValue104 = false
        workValue60(numberValue12, numberValue13, workValue94, workValue104)
      end
    end
    arg2(arg3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
iterator3(workValue88, workValue89)
