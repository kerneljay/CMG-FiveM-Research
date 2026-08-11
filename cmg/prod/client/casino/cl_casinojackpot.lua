--[[
    LEVEL 1 BEGINNER GUIDE — Casinojackpot
    ===========================================

    File: cmg/prod/client/casino/cl_casinojackpot.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: casino gameplay and casino UI/features, specifically the Casinojackpot feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 52
      * Background threads: 0
      * Always-running loops: 15
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
local flag, numberValue22, numberValue38, flag5, dataTable4, numberValue42, flag8, flag9, flag10, numberValue45, flag2, numberValue8, numberValue10, flag3, workValue6, numberValue14, numberValue16, numberValue18, flag4, workValue9, dataTable, vector3Builder, numberValue32, numberValue34, numberValue36, textValue2, rageUiCall2, textValue3, textValue4, rageUiCall3, rageUiCall4, textValue5, textValue6, workValue19, workValue20, eventRegistration, cmgCall, cmgCall2, textValue7, textValue8, workValue22, numberValue40, numberValue41, workValue23, workValue24, workValue25, dataTable3
flag = false
numberValue22 = -1
numberValue38 = 1000
flag5 = false
dataTable4 = {}
numberValue42 = -1
flag8 = false
flag9 = false
flag10 = false
numberValue45 = 0.5
flag2 = false
numberValue8 = 10
numberValue10 = 60
flag3 = false
workValue6 = nil
numberValue14 = 0.0
numberValue16 = 0
numberValue18 = 0
flag4 = true

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2) ===
function workValue9(arg1, arg2)
  local arg3, arg4, arg5, flag7
  arg3 = 0
  arg4 = IsNamedRendertargetRegistered
  arg5 = arg1
  arg4 = arg4(arg5)
  if not arg4 then
    arg4 = RegisterNamedRendertarget
    arg5 = arg1
    flag7 = false
    arg4(arg5, flag7)
  end
  arg4 = IsNamedRendertargetLinked
  arg5 = arg2
  arg4 = arg4(arg5)
  if not arg4 then
    arg4 = LinkNamedRendertarget
    arg5 = arg2
    arg4(arg5)
  end
  arg4 = IsNamedRendertargetRegistered
  arg5 = arg1
  arg4 = arg4(arg5)
  if arg4 then
    arg4 = GetNamedRendertargetRenderId
    arg5 = arg1
    arg4 = arg4(arg5)
    arg3 = arg4
  end
  return arg3
end
dataTable = {}
vector3Builder = vector3
numberValue32 = 971.588623
numberValue34 = 69.243698
numberValue36 = 79.992676
vector3Builder = vector3Builder(numberValue32, numberValue34, numberValue36)
dataTable[0] = vector3Builder
vector3Builder = vector3
numberValue32 = 972.082214
numberValue34 = 70.033615
numberValue36 = 79.992676
vector3Builder = vector3Builder(numberValue32, numberValue34, numberValue36)
dataTable[1] = vector3Builder
vector3Builder = vector3
numberValue32 = 973.702393
numberValue34 = 67.288445
numberValue36 = 79.992676
vector3Builder = vector3Builder(numberValue32, numberValue34, numberValue36)
dataTable[2] = vector3Builder
vector3Builder = vector3
numberValue32 = 974.191589
numberValue34 = 68.071304
numberValue36 = 79.992676
vector3Builder = vector3Builder(numberValue32, numberValue34, numberValue36)
dataTable[3] = vector3Builder
vector3Builder = vector3
numberValue32 = 973.873169
numberValue34 = 72.899689
numberValue36 = 79.992676
vector3Builder = vector3Builder(numberValue32, numberValue34, numberValue36)
dataTable[4] = vector3Builder
vector3Builder = vector3
numberValue32 = 974.376038
numberValue34 = 73.704498
numberValue36 = 79.992676
vector3Builder = vector3Builder(numberValue32, numberValue34, numberValue36)
dataTable[5] = vector3Builder
vector3Builder = vector3
numberValue32 = 974.922729
numberValue34 = 74.579437
numberValue36 = 79.992676
vector3Builder = vector3Builder(numberValue32, numberValue34, numberValue36)
dataTable[6] = vector3Builder
vector3Builder = vector3
numberValue32 = 975.405212
numberValue34 = 75.351601
numberValue36 = 79.992676
vector3Builder = vector3Builder(numberValue32, numberValue34, numberValue36)
dataTable[7] = vector3Builder
vector3Builder = vector3
numberValue32 = 977.19397
numberValue34 = 78.214249
numberValue36 = 79.992676
vector3Builder = vector3Builder(numberValue32, numberValue34, numberValue36)
dataTable[8] = vector3Builder
vector3Builder = vector3
numberValue32 = 977.691406
numberValue34 = 79.010315
numberValue36 = 79.992676
vector3Builder = vector3Builder(numberValue32, numberValue34, numberValue36)
dataTable[9] = vector3Builder
vector3Builder = vector3
numberValue32 = 980.437195
numberValue34 = 77.914375
numberValue36 = 79.992676
vector3Builder = vector3Builder(numberValue32, numberValue34, numberValue36)
dataTable[10] = vector3Builder
vector3Builder = vector3
numberValue32 = 979.960876
numberValue34 = 77.152161
numberValue36 = 79.992676
vector3Builder = vector3Builder(numberValue32, numberValue34, numberValue36)
dataTable[11] = vector3Builder
vector3Builder = vector3
numberValue32 = 977.89032
numberValue34 = 73.838562
numberValue36 = 79.992676
vector3Builder = vector3Builder(numberValue32, numberValue34, numberValue36)
dataTable[12] = vector3Builder
vector3Builder = vector3
numberValue32 = 977.373535
numberValue34 = 73.011513
numberValue36 = 79.992676
vector3Builder = vector3Builder(numberValue32, numberValue34, numberValue36)
dataTable[13] = vector3Builder
vector3Builder = vector3
numberValue32 = 976.850952
numberValue34 = 72.175217
numberValue36 = 79.992676
vector3Builder = vector3Builder(numberValue32, numberValue34, numberValue36)
dataTable[14] = vector3Builder
vector3Builder = vector3
numberValue32 = 976.356201
numberValue34 = 71.383453
numberValue36 = 79.992676
vector3Builder = vector3Builder(numberValue32, numberValue34, numberValue36)
dataTable[15] = vector3Builder
vector3Builder = vector3
numberValue32 = 973.32196044922
numberValue34 = 75.440765380859
numberValue36 = 81.000602722168
vector3Builder = vector3Builder(numberValue32, numberValue34, numberValue36)
numberValue32 = {}
numberValue34 = RMenu
numberValue34 = numberValue34.Add
numberValue36 = "cmgjackpot"
textValue2 = "instructions"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue3 = ""
textValue4 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue5 = "cmg_jackpotui"
textValue6 = "cmg_jackpotui"
rageUiCall2, textValue3, textValue4, rageUiCall3, rageUiCall4, textValue5, textValue6, workValue19, workValue20, eventRegistration, cmgCall, cmgCall2, textValue7, textValue8, workValue22, numberValue40, numberValue41, workValue23, workValue24, workValue25, dataTable3 = rageUiCall2(textValue3, textValue4, rageUiCall3, rageUiCall4, textValue5, textValue6)
numberValue34(numberValue36, textValue2, rageUiCall2, textValue3, textValue4, rageUiCall3, rageUiCall4, textValue5, textValue6, workValue19, workValue20, eventRegistration, cmgCall, cmgCall2, textValue7, textValue8, workValue22, numberValue40, numberValue41, workValue23, workValue24, workValue25, dataTable3)
numberValue34 = RMenu
numberValue36 = numberValue34
numberValue34 = numberValue34.Get
textValue2 = "cmgjackpot"
rageUiCall2 = "instructions"
-- Beginner: result below is menu.
numberValue34 = numberValue34(numberValue36, textValue2, rageUiCall2)
numberValue36 = numberValue34
numberValue34 = numberValue34.SetSubtitle
textValue2 = "~b~JACKPOT"
numberValue34(numberValue36, textValue2)
numberValue34 = RageUI
numberValue34 = numberValue34.CreateWhile
numberValue36 = 1.0
textValue2 = RMenu
rageUiCall2 = textValue2
textValue2 = textValue2.Get
textValue3 = "cmgjackpot"
textValue4 = "instructions"
-- Beginner: result below is menu.
textValue2 = textValue2(rageUiCall2, textValue3, textValue4)
rageUiCall2 = nil

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
function textValue3()
  local arg1, arg2, arg3, arg4, arg5, flag7, workValue26
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgjackpot"
  arg5 = "instructions"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true

  -- === HELPER FUNCTION (decompiler name: flag7; parameters: none) ===
  function flag7()
    local rageUiCall, textValue, numberValue39, dataTable2, flag6, numberValue43, mathHelper, workValue27, textValue9, textValue10
    rageUiCall = RageUI
    rageUiCall = rageUiCall.FakeButtonWithStyle
    textValue = ""
    numberValue39 = [[
Play Jackpot for a chance to win BIG!

Buy tickets to have a chance at winning a large pot of chips! Your % chance of winning is based on how many tickets have been purchased in that round.
1 tickett  = 1 chip.]]
    dataTable2 = {}
    dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true

    -- === HELPER FUNCTION (decompiler name: numberValue43; parameters: arg12, arg22, arg32) ===
    function numberValue43(arg12, arg22, arg32)
    end
    mathHelper = RMenu
    workValue27 = mathHelper
    mathHelper = mathHelper.Get
    textValue9 = "cmgjackpot"
    textValue10 = "instructions"
    mathHelper, workValue27, textValue9, textValue10 = mathHelper(workValue27, textValue9, textValue10)
    rageUiCall(textValue, numberValue39, dataTable2, flag6, numberValue43, mathHelper, workValue27, textValue9, textValue10)
  end

  -- === HELPER FUNCTION (decompiler name: workValue26; parameters: none) ===
  function workValue26()
    local rageUiCall, textValue
  end
  arg1(arg2, arg3, arg4, arg5, flag7, workValue26)
end
numberValue34(numberValue36, textValue2, rageUiCall2, textValue3)
numberValue34 = Citizen
numberValue34 = numberValue34.CreateThread

-- === HELPER FUNCTION (decompiler name: numberValue36; parameters: none) ===
function numberValue36()
  local arg1, arg2, arg3, arg4, arg5, flag7, workValue26, numberValue44
  while true do
    arg1 = CMG
    arg1 = arg1.isInsideDiamondCasino
    arg1 = arg1()
    if arg1 then
      arg1 = 1000
      numberValue38 = arg1
      arg1 = -1
      numberValue22 = arg1
      arg1 = GetEntityCoords
      arg2 = CMG
      arg2 = arg2.getPlayerPed
      arg2, arg3, arg4, arg5, flag7, workValue26, numberValue44 = arg2()
      -- Beginner: result below is entityCoords.
      arg1 = arg1(arg2, arg3, arg4, arg5, flag7, workValue26, numberValue44)
      arg2 = 0
      arg3 = 15
      arg4 = 1
      for arg5 = arg2, arg3, arg4 do
        flag7 = dataTable
        flag7 = flag7[arg5]
        workValue26 = arg1 - flag7
        workValue26 = #workValue26
        numberValue44 = numberValue38
        if workValue26 < numberValue44 then
          numberValue38 = workValue26
          numberValue22 = arg5
        end
      end
    end
    arg1 = Wait
    arg2 = 100
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
numberValue34(numberValue36)
numberValue34 = false

-- === HELPER FUNCTION (decompiler name: numberValue36; parameters: arg1) ===
function numberValue36(arg1)
  local arg2, arg3, arg4, arg5, flag7
  arg2 = RageUI
  arg2 = arg2.CloseAll
  arg2()
  arg2 = numberValue22
  if -1 ~= arg2 then
    arg2 = RageUI
    arg2 = arg2.Visible
    arg3 = RMenu
    arg4 = arg3
    arg3 = arg3.Get
    arg5 = "cmgjackpot"
    flag7 = "instructions"
    -- Beginner: result below is menu.
    arg3 = arg3(arg4, arg5, flag7)
    arg4 = arg1
    arg2(arg3, arg4)
  end
end
textValue2 = Citizen
textValue2 = textValue2.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: none) ===
function rageUiCall2()
  local arg1, arg2, arg3, arg4, arg5
  while true do
    arg1 = flag
    if not arg1 then
      arg1 = numberValue22
      if nil ~= arg1 then
        arg1 = numberValue38
        if arg1 < 2 then
          arg1 = flag5
          if not arg1 then
            arg1 = print
            arg2 = "closestChair"
            arg3 = numberValue22
            arg1(arg2, arg3)
            arg1 = print
            arg2 = "jackpotTableData"
            arg3 = dump
            arg4 = dataTable4
            arg3, arg4, arg5 = arg3(arg4)
            arg1(arg2, arg3, arg4, arg5)
            arg2 = numberValue22
            arg1 = dataTable4
            arg1 = arg1[arg2]
            if false == arg1 then
              arg1 = drawNativeNotification
              arg2 = "Press ~INPUT_PICKUP~ to play Jackpot!"
              -- Beginner: Show a GTA-style notification/help prompt.
              arg1(arg2)
            else
              arg1 = drawNativeNotification
              arg2 = "This seat is taken."
              arg1(arg2)
            end
            arg1 = numberValue36
            arg2 = true
            arg1(arg2)
            arg1 = numberValue34
            if not arg1 then
              arg1 = true
              numberValue34 = arg1
              arg1 = PlaySoundFrontend
              arg2 = -1
              arg3 = "DLC_VW_RULES"
              arg4 = "dlc_vw_table_games_frontend_sounds"
              arg5 = true
              arg1(arg2, arg3, arg4, arg5)
              arg1 = PlaySoundFrontend
              arg2 = -1
              arg3 = "DLC_VW_WIN_CHIPS"
              arg4 = "dlc_vw_table_games_frontend_sounds"
              arg5 = true
              arg1(arg2, arg3, arg4, arg5)
            end
            arg1 = numberValue22
            while true do
              arg2 = numberValue22
              if arg1 ~= arg2 then
                break
              end
              arg2 = numberValue38
              if not (arg2 < 2) then
                break
              end
              arg2 = Wait
              arg3 = 0
              arg2(arg3)
            end
            arg2 = numberValue36
            arg3 = false
            arg2(arg3)
          end
        end
      end
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue2(rageUiCall2)
textValue2 = RegisterNetEvent
rageUiCall2 = "f16cebea30"
-- Beginner: this function handles network event "f16cebea30".

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2
  numberValue8 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f16cebea30".
textValue2(rageUiCall2, textValue3)
textValue2 = RegisterNetEvent
rageUiCall2 = "05fba39b23"
-- Beginner: this function handles network event "05fba39b23".

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: arg1) ===
function textValue3(arg1)
  local arg2
  numberValue18 = arg1
end
textValue2(rageUiCall2, textValue3)
-- Beginner: this function handles network event "05fba39b23".

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2
  arg1 = GetEntityModel
  arg2 = CMG
  arg2 = arg2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  -- Beginner: result below is modelHash.
  arg1 = arg1(arg2)
  if 1885233650 == arg1 then
    arg2 = "anim_casino_a@amb@casino@games@insidetrack@male"
    return arg2
  else
    arg2 = "anim_casino_a@amb@casino@games@insidetrack@female"
    return arg2
  end
end

-- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: arg1) ===
function rageUiCall2(arg1)
  local arg2
  arg2 = dataTable
  arg2 = arg2[arg1]
  return arg2
end

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
function textValue3()
  local arg1, arg2
  arg1 = -135.0
  return arg1
end

-- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg1, arg2, arg3) ===
function textValue4(arg1, arg2, arg3)
  local arg4, arg5, flag7
  if arg2 == arg3 then
    return arg2
  end
  arg4 = arg3 - arg2
  arg5 = math
  arg5 = arg5.floor
  flag7 = arg1 - arg2
  flag7 = flag7 / arg4
  flag7 = flag7 * arg4
  arg5 = arg5(flag7)
  arg1 = arg1 - arg5
  if arg2 > arg1 then
    arg1 = arg1 + arg4
  end
  return arg1
end

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: arg1) ===
function rageUiCall3(arg1)
  local arg2, arg3, arg4, arg5, flag7, workValue26, numberValue44
  arg2 = rageUiCall2
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = GetEntityCoords
  arg4 = CMG
  arg4 = arg4.getPlayerPed
  arg4, arg5, flag7, workValue26, numberValue44 = arg4()
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4, arg5, flag7, workValue26, numberValue44)
  arg4 = GetHeadingFromVector_2d
  arg5 = arg3.x
  flag7 = arg2.x
  arg5 = arg5 - flag7
  flag7 = arg3.y
  workValue26 = arg2.y
  flag7 = flag7 - workValue26
  arg4 = arg4(arg5, flag7)
  arg5 = textValue3
  arg5 = arg5()
  arg4 = arg4 - arg5
  arg5 = textValue4
  flag7 = arg4 - 180.0
  workValue26 = 0.0
  numberValue44 = 360.0
  return arg5(flag7, workValue26, numberValue44)
end

-- === HELPER FUNCTION (decompiler name: rageUiCall4; parameters: arg1) ===
function rageUiCall4(arg1)
  local arg2, arg3
  arg2 = rageUiCall3
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = 180.0
  if arg2 <= arg3 then
    if arg2 < 105.0 and 14 == arg1 then
      arg3 = "ENTER_LEFT_READYIDLE_SHORT"
      return arg3
    end
    arg3 = "ENTER_LEFT_READYIDLE"
    return arg3
  end
  arg3 = 255.0
  if arg2 > arg3 and 15 == arg1 then
    arg3 = "ENTER_RIGHT_READYIDLE_SHORT"
    return arg3
  end
  arg3 = "ENTER_RIGHT_READYIDLE"
  return arg3
end

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2, arg3, arg4) ===
function textValue5(arg1, arg2, arg3, arg4)
  local arg5, flag7, workValue26, numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17
  arg5 = vector3
  flag7 = 0.0
  workValue26 = 0.0
  numberValue44 = 0.0
  arg5 = arg5(flag7, workValue26, numberValue44)
  if arg2 then
    flag7 = rageUiCall2
    workValue26 = arg1
    flag7 = flag7(workValue26)
    arg5 = flag7
  else
    flag7 = rageUiCall2
    workValue26 = arg1
    flag7 = flag7(workValue26)
    workValue26 = GetAnimInitialOffsetPosition
    numberValue44 = arg3
    workValue28 = arg4
    workValue29 = flag7.x
    workValue3 = flag7.y
    workValue4 = flag7.z
    numberValue11 = 0.0
    numberValue13 = 0.0
    workValue7 = textValue3
    workValue7 = workValue7()
    numberValue15 = 0.01
    numberValue17 = 2
    workValue26 = workValue26(numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17)
    arg5 = workValue26
  end
  return arg5
end

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2, arg3, arg4, arg5, flag7, workValue26
  arg2 = RequestScaleformMovie
  arg3 = arg1
  -- Beginner: result below is scaleformHandle.
  arg2 = arg2(arg3)
  while true do
    arg3 = HasScaleformMovieLoaded
    arg4 = arg2
    arg3 = arg3(arg4)
    if arg3 then
      break
    end
    arg3 = Citizen
    arg3 = arg3.Wait
    arg4 = 0
    arg3(arg4)
  end
  arg3 = BeginScaleformMovieMethod
  arg4 = arg2
  arg5 = "CLEAR_ALL"
  arg3(arg4, arg5)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = BeginScaleformMovieMethod
  arg4 = arg2
  arg5 = "SET_CLEAR_SPACE"
  arg3(arg4, arg5)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 200
  arg3(arg4)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = BeginScaleformMovieMethod
  arg4 = arg2
  arg5 = "SET_DATA_SLOT"
  arg3(arg4, arg5)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 1
  arg3(arg4)
  arg3 = Button
  arg4 = GetControlInstructionalButton
  arg5 = 2
  flag7 = 194
  workValue26 = true
  arg4, arg5, flag7, workValue26 = arg4(arg5, flag7, workValue26)
  arg3(arg4, arg5, flag7, workValue26)
  arg3 = ButtonMessage
  arg4 = "Leave chair"
  arg3(arg4)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = BeginScaleformMovieMethod
  arg4 = arg2
  arg5 = "SET_DATA_SLOT"
  arg3(arg4, arg5)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 0
  arg3(arg4)
  arg3 = Button
  arg4 = GetControlInstructionalButton
  arg5 = 2
  flag7 = 191
  workValue26 = true
  arg4, arg5, flag7, workValue26 = arg4(arg5, flag7, workValue26)
  arg3(arg4, arg5, flag7, workValue26)
  arg3 = ButtonMessage
  arg4 = "Place bet"
  arg3(arg4)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = BeginScaleformMovieMethod
  arg4 = arg2
  arg5 = "SET_DATA_SLOT"
  arg3(arg4, arg5)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 2
  arg3(arg4)
  arg3 = Button
  arg4 = GetControlInstructionalButton
  arg5 = 2
  flag7 = 11
  workValue26 = true
  arg4, arg5, flag7, workValue26 = arg4(arg5, flag7, workValue26)
  arg3(arg4, arg5, flag7, workValue26)
  arg3 = ButtonMessage
  arg4 = "Lower bet"
  arg3(arg4)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = BeginScaleformMovieMethod
  arg4 = arg2
  arg5 = "SET_DATA_SLOT"
  arg3(arg4, arg5)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 3
  arg3(arg4)
  arg3 = Button
  arg4 = GetControlInstructionalButton
  arg5 = 2
  flag7 = 10
  workValue26 = true
  arg4, arg5, flag7, workValue26 = arg4(arg5, flag7, workValue26)
  arg3(arg4, arg5, flag7, workValue26)
  arg3 = ButtonMessage
  arg4 = "Increase bet"
  arg3(arg4)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = BeginScaleformMovieMethod
  arg4 = arg2
  arg5 = "SET_DATA_SLOT"
  arg3(arg4, arg5)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 4
  arg3(arg4)
  arg3 = Button
  arg4 = GetControlInstructionalButton
  arg5 = 2
  flag7 = 22
  workValue26 = true
  arg4, arg5, flag7, workValue26 = arg4(arg5, flag7, workValue26)
  arg3(arg4, arg5, flag7, workValue26)
  arg3 = ButtonMessage
  arg4 = "Custom bet"
  arg3(arg4)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = BeginScaleformMovieMethod
  arg4 = arg2
  arg5 = "DRAW_INSTRUCTIONAL_BUTTONS"
  arg3(arg4, arg5)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = BeginScaleformMovieMethod
  arg4 = arg2
  arg5 = "SET_BACKGROUND_COLOUR"
  arg3(arg4, arg5)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 0
  arg3(arg4)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 0
  arg3(arg4)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 0
  arg3(arg4)
  arg3 = ScaleformMovieMethodAddParamInt
  arg4 = 80
  arg3(arg4)
  arg3 = EndScaleformMovieMethod
  arg3()
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue19; parameters: arg1, arg2, arg3, arg4) ===
function workValue19(arg1, arg2, arg3, arg4)
  local arg5, flag7, workValue26, numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17
  arg5 = 0.0
  if arg2 then
    flag7 = textValue3
    flag7 = flag7()
    arg5 = flag7
  else
    flag7 = rageUiCall2
    workValue26 = arg1
    flag7 = flag7(workValue26)
    workValue26 = GetAnimInitialOffsetRotation
    numberValue44 = arg3
    workValue28 = arg4
    workValue29 = flag7.x
    workValue3 = flag7.y
    workValue4 = flag7.z
    numberValue11 = 0.0
    numberValue13 = 0.0
    workValue7 = textValue3
    workValue7 = workValue7()
    numberValue15 = 0.01
    numberValue17 = 2
    workValue26 = workValue26(numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17)
    arg5 = workValue26.z
  end
  return arg5
end

-- === HELPER FUNCTION (decompiler name: workValue20; parameters: arg1) ===
function workValue20(arg1)
  local arg2, arg3, arg4, arg5, flag7, workValue26, numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue30, numberValue31, numberValue33, numberValue35, numberValue37
  arg2 = numberValue36
  arg3 = false
  arg2(arg3)
  arg2 = textValue2
  arg2 = arg2()
  arg3 = HasAnimDictLoaded
  arg4 = arg2
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = RequestAnimDict
    arg4 = arg2
    arg3(arg4)
    while true do
      arg3 = HasAnimDictLoaded
      arg4 = arg2
      arg3 = arg3(arg4)
      if arg3 then
        break
      end
      arg3 = Wait
      arg4 = 0
      arg3(arg4)
    end
  end
  arg3 = rageUiCall4
  arg4 = arg1
  arg3 = arg3(arg4)
  arg4 = textValue5
  arg5 = arg1
  flag7 = 0
  workValue26 = arg2
  numberValue44 = arg3
  arg4 = arg4(arg5, flag7, workValue26, numberValue44)
  arg5 = workValue19
  flag7 = arg1
  workValue26 = 0
  numberValue44 = arg2
  workValue28 = arg3
  arg5 = arg5(flag7, workValue26, numberValue44, workValue28)
  flag7 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  flag7 = flag7()
  workValue26 = GetAnimInitialOffsetPosition
  numberValue44 = arg2
  workValue28 = arg3
  workValue29 = arg4.x
  workValue3 = arg4.y
  workValue4 = arg4.z
  numberValue11 = 0.0
  numberValue13 = 0.0
  workValue7 = arg5
  numberValue15 = 0.0
  numberValue17 = 2
  workValue26 = workValue26(numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17)
  numberValue44 = GetAnimInitialOffsetRotation
  workValue28 = arg2
  workValue29 = arg3
  workValue3 = arg4.x
  workValue4 = arg4.y
  numberValue11 = arg4.z
  numberValue13 = 0.0
  workValue7 = 0.0
  numberValue15 = arg5
  numberValue17 = 0.0
  numberValue19 = 2
  numberValue44 = numberValue44(workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17, numberValue19)
  workValue28 = TaskGoStraightToCoord
  workValue29 = flag7
  workValue3 = workValue26.x
  workValue4 = workValue26.y
  numberValue11 = workValue26.z
  numberValue13 = 1.0
  workValue7 = 20000
  numberValue15 = arg5 + 180.0
  numberValue17 = 0.0
  workValue28(workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17)
  while true do
    workValue28 = GetScriptTaskStatus
    workValue29 = flag7
    workValue3 = 2106541073
    workValue28 = workValue28(workValue29, workValue3)
    if 7 == workValue28 then
      break
    end
    workValue28 = Citizen
    workValue28 = workValue28.Wait
    workValue29 = 0
    workValue28(workValue29)
  end
  workValue28 = SetEntityCoordsNoOffset
  workValue29 = flag7
  workValue3 = workValue26.x
  workValue4 = workValue26.y
  numberValue11 = workValue26.z
  numberValue13 = false
  workValue7 = false
  numberValue15 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  workValue28(workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15)
  workValue28 = SetEntityRotation
  workValue29 = flag7
  workValue3 = numberValue44.x
  workValue4 = numberValue44.y
  numberValue11 = numberValue44.z
  numberValue13 = 2
  workValue7 = false
  workValue28(workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7)
  workValue28 = TaskPlayAnimAdvanced
  workValue29 = flag7
  workValue3 = arg2
  workValue4 = arg3
  numberValue11 = arg4.x
  numberValue13 = arg4.y
  workValue7 = arg4.z
  numberValue15 = 0.0
  numberValue17 = 0.0
  numberValue19 = arg5
  numberValue20 = 2.0
  numberValue21 = -2.0
  numberValue30 = -1
  numberValue31 = 790530
  numberValue33 = 0.0
  numberValue35 = 2
  numberValue37 = 0
  workValue28(workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue30, numberValue31, numberValue33, numberValue35, numberValue37)
  workValue28 = PlayFacialAnim
  workValue29 = CMG
  workValue29 = workValue29.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  workValue29 = workValue29()
  workValue3 = "enter_left_readyidle_facial"
  workValue4 = arg2
  workValue28(workValue29, workValue3, workValue4)
  workValue28 = RemoveAnimDict
  workValue29 = arg2
  workValue28(workValue29)
  workValue28 = nil
  workValue29 = nil
  workValue3 = arg1 + 1
  if workValue3 >= 10 then
    workValue4 = GetHashKey
    numberValue11 = "vw_vwint01_betting_sreen_"
    numberValue13 = tostring
    workValue7 = workValue3
    numberValue13 = numberValue13(workValue7)
    numberValue11 = numberValue11 .. numberValue13
    -- Beginner: result below is hash.
    workValue4 = workValue4(numberValue11)
    workValue28 = workValue4
  else
    workValue4 = GetHashKey
    numberValue11 = "vw_vwint01_betting_sreen_0"
    numberValue13 = tostring
    workValue7 = workValue3
    numberValue13 = numberValue13(workValue7)
    numberValue11 = numberValue11 .. numberValue13
    -- Beginner: result below is hash.
    workValue4 = workValue4(numberValue11)
    workValue28 = workValue4
  end
  if workValue3 >= 8 then
    workValue4 = workValue9
    numberValue11 = "casinoscreen_"
    numberValue13 = tostring
    workValue7 = workValue3 + 2
    numberValue13 = numberValue13(workValue7)
    numberValue11 = numberValue11 .. numberValue13
    numberValue13 = workValue28
    workValue4 = workValue4(numberValue11, numberValue13)
    workValue29 = workValue4
  else
    workValue4 = workValue9
    numberValue11 = "casinoscreen_0"
    numberValue13 = tostring
    workValue7 = workValue3 + 2
    numberValue13 = numberValue13(workValue7)
    numberValue11 = numberValue11 .. numberValue13
    numberValue13 = workValue28
    workValue4 = workValue4(numberValue11, numberValue13)
    workValue29 = workValue4
  end
  workValue4 = true
  flag8 = workValue4
  workValue4 = textValue6
  numberValue11 = "instructional_buttons"
  workValue4 = workValue4(numberValue11)
  numberValue11 = Citizen
  numberValue11 = numberValue11.CreateThread

  -- === HELPER FUNCTION (decompiler name: numberValue13; parameters: none) ===
  function numberValue13()
    local rageUiCall, textValue, numberValue39, dataTable2, flag6, numberValue43, mathHelper, workValue27, textValue9, textValue10, numberValue7, numberValue9, numberValue12, workValue5, workValue8
    while true do
      rageUiCall = flag
      if not rageUiCall then
        break
      end
      rageUiCall = SetTextRenderId
      textValue = workValue29
      rageUiCall(textValue)
      rageUiCall = SetScriptGfxDrawOrder
      textValue = 4
      rageUiCall(textValue)
      rageUiCall = SetScriptGfxDrawBehindPausemenu
      textValue = true
      rageUiCall(textValue)
      rageUiCall = flag2
      if rageUiCall then
        rageUiCall = DrawAdvancedText
        textValue = 0.584
        numberValue39 = 0.181
        dataTable2 = 0.005
        flag6 = 0.0028
        numberValue43 = 0.6
        mathHelper = math
        mathHelper = mathHelper.floor
        workValue27 = numberValue8
        workValue27 = workValue27 * 1000
        mathHelper = mathHelper(workValue27)
        mathHelper = mathHelper / 1000
        workValue27 = "% chance of winning!"
        mathHelper = mathHelper .. workValue27
        workValue27 = 255
        textValue9 = 255
        textValue10 = 255
        numberValue7 = 255
        numberValue9 = 0
        numberValue12 = 0
        rageUiCall(textValue, numberValue39, dataTable2, flag6, numberValue43, mathHelper, workValue27, textValue9, textValue10, numberValue7, numberValue9, numberValue12)
        rageUiCall = DrawAdvancedText
        textValue = 0.489
        numberValue39 = 0.74
        dataTable2 = 0.005
        flag6 = 0.0028
        numberValue43 = 0.6
        mathHelper = "Your colour is"
        workValue27 = 255
        textValue9 = 255
        textValue10 = 255
        numberValue7 = 255
        numberValue9 = 0
        numberValue12 = 0
        rageUiCall(textValue, numberValue39, dataTable2, flag6, numberValue43, mathHelper, workValue27, textValue9, textValue10, numberValue7, numberValue9, numberValue12)
        rageUiCall = numberValue32
        if nil ~= rageUiCall then
          rageUiCall = pairs
          textValue = numberValue32
          rageUiCall, textValue, numberValue39, dataTable2 = rageUiCall(textValue)
          for flag6, numberValue43 in rageUiCall, textValue, numberValue39, dataTable2 do
            mathHelper = numberValue43.user_id
            workValue27 = CMG
            workValue27 = workValue27.getClientUserId
            -- Beginner: result below is userId.
            workValue27 = workValue27()
            if mathHelper == workValue27 then
              mathHelper = DrawRect
              workValue27 = 0.72
              textValue9 = 0.82
              textValue10 = 0.115
              numberValue7 = 0.156
              numberValue9 = numberValue32
              numberValue9 = numberValue9[flag6]
              numberValue9 = numberValue9.colour
              numberValue9 = numberValue9.r
              numberValue12 = numberValue32
              numberValue12 = numberValue12[flag6]
              numberValue12 = numberValue12.colour
              numberValue12 = numberValue12.g
              workValue5 = numberValue32
              workValue5 = workValue5[flag6]
              workValue5 = workValue5.colour
              workValue5 = workValue5.b
              workValue8 = numberValue32
              workValue8 = workValue8[flag6]
              workValue8 = workValue8.colour
              workValue8 = workValue8.a
              mathHelper(workValue27, textValue9, textValue10, numberValue7, numberValue9, numberValue12, workValue5, workValue8)
            end
          end
        end
      else
        rageUiCall = DrawAdvancedText
        textValue = 0.584
        numberValue39 = 0.181
        dataTable2 = 0.005
        flag6 = 0.0028
        numberValue43 = 0.6
        mathHelper = "Buy Tickets"
        workValue27 = 255
        textValue9 = 255
        textValue10 = 255
        numberValue7 = 255
        numberValue9 = 0
        numberValue12 = 0
        rageUiCall(textValue, numberValue39, dataTable2, flag6, numberValue43, mathHelper, workValue27, textValue9, textValue10, numberValue7, numberValue9, numberValue12)
      end
      rageUiCall = flag10
      if rageUiCall then
        rageUiCall = DrawAdvancedText
        textValue = 0.584
        numberValue39 = 0.465
        dataTable2 = 0.005
        flag6 = 0.0028
        numberValue43 = 0.7
        mathHelper = getMoneyStringFormatted
        workValue27 = numberValue16
        mathHelper = mathHelper(workValue27)
        workValue27 = " tickets"
        mathHelper = mathHelper .. workValue27
        workValue27 = 0
        textValue9 = 153
        textValue10 = 255
        numberValue7 = 255
        numberValue9 = 0
        numberValue12 = 0
        rageUiCall(textValue, numberValue39, dataTable2, flag6, numberValue43, mathHelper, workValue27, textValue9, textValue10, numberValue7, numberValue9, numberValue12)
        rageUiCall = DrawAdvancedText
        textValue = 0.584
        numberValue39 = 0.765
        dataTable2 = 0.005
        flag6 = 0.0028
        numberValue43 = 0.6
        mathHelper = "Press [ENTER] to confirm bet!"
        workValue27 = 255
        textValue9 = 255
        textValue10 = 255
        numberValue7 = 255
        numberValue9 = 0
        numberValue12 = 0
        rageUiCall(textValue, numberValue39, dataTable2, flag6, numberValue43, mathHelper, workValue27, textValue9, textValue10, numberValue7, numberValue9, numberValue12)
      else
        rageUiCall = DrawAdvancedText
        textValue = 0.584
        numberValue39 = 0.465
        dataTable2 = 0.005
        flag6 = 0.0028
        numberValue43 = 0.7
        mathHelper = getMoneyStringFormatted
        workValue27 = numberValue16
        mathHelper = mathHelper(workValue27)
        workValue27 = " tickets"
        mathHelper = mathHelper .. workValue27
        workValue27 = 0
        textValue9 = 204
        textValue10 = 102
        numberValue7 = 255
        numberValue9 = 0
        numberValue12 = 0
        rageUiCall(textValue, numberValue39, dataTable2, flag6, numberValue43, mathHelper, workValue27, textValue9, textValue10, numberValue7, numberValue9, numberValue12)
      end
      rageUiCall = SetTextRenderId
      textValue = GetDefaultScriptRendertargetRenderId
      textValue, numberValue39, dataTable2, flag6, numberValue43, mathHelper, workValue27, textValue9, textValue10, numberValue7, numberValue9, numberValue12, workValue5, workValue8 = textValue()
      rageUiCall(textValue, numberValue39, dataTable2, flag6, numberValue43, mathHelper, workValue27, textValue9, textValue10, numberValue7, numberValue9, numberValue12, workValue5, workValue8)
      rageUiCall = SetScriptGfxDrawBehindPausemenu
      textValue = false
      rageUiCall(textValue)
      rageUiCall = Wait
      textValue = 0
      rageUiCall(textValue)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  numberValue11(numberValue13)
  numberValue11 = Citizen
  numberValue11 = numberValue11.CreateThread

  -- === HELPER FUNCTION (decompiler name: numberValue13; parameters: none) ===
  function numberValue13()
    local rageUiCall, textValue, numberValue39, dataTable2, flag6, numberValue43, mathHelper
    while true do
      rageUiCall = flag8
      if not rageUiCall then
        break
      end
      rageUiCall = DrawScaleformMovieFullscreen
      textValue = workValue4
      numberValue39 = 255
      dataTable2 = 255
      flag6 = 255
      numberValue43 = 255
      mathHelper = 0
      rageUiCall(textValue, numberValue39, dataTable2, flag6, numberValue43, mathHelper)
      rageUiCall = Wait
      textValue = 0
      rageUiCall(textValue)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  numberValue11(numberValue13)
end
eventRegistration = RegisterNetEvent
cmgCall = "3dc617a9ae"
-- Beginner: this function handles network event "3dc617a9ae".

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, arg3
  numberValue42 = arg1
  arg2 = tCMG
  arg2 = arg2.setCanAnim
  arg3 = false
  arg2(arg3)
  arg2 = true
  flag = arg2
  arg2 = workValue20
  arg3 = arg1
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3dc617a9ae".
eventRegistration(cmgCall, cmgCall2)

-- === HELPER FUNCTION (decompiler name: eventRegistration; parameters: none) ===
function eventRegistration()
  local arg1, arg2, arg3
  arg1 = flag8
  if arg1 then
    arg1 = IsDisabledControlJustPressed
    arg2 = 0
    arg3 = 22
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = CMG
      arg1 = arg1.GetRageInputInt
      arg2 = "Bet Amount"
      arg1 = arg1(arg2)
      if arg1 and arg1 > 0 then
        numberValue16 = arg1
        arg2 = false
        flag10 = arg2
      end
    end
    arg1 = IsControlJustPressed
    arg2 = 0
    arg3 = 201
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = flag10
      if arg1 then
        arg1 = TriggerServerEvent
        arg2 = "a1b3e3fa14"
        arg3 = numberValue16
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a1b3e3fa14".
        arg1(arg2, arg3)
      else
        arg1 = tonumber
        arg2 = numberValue16
        arg1 = arg1(arg2)
        if arg1 >= 0 then
          arg1 = true
          flag10 = arg1
          arg1 = Wait
          arg2 = 100
          arg1(arg2)
        else
          arg1 = tCMG
          arg1 = arg1.notify
          arg2 = "~r~Invalid amount."
          -- Beginner: Show a notification to the player.
          arg1(arg2)
        end
      end
    end
    arg1 = IsControlPressed
    arg2 = 0
    arg3 = 10
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = numberValue16
      arg1 = arg1 + 100
      numberValue16 = arg1
      arg1 = false
      flag10 = arg1
    end
    arg1 = IsControlPressed
    arg2 = 0
    arg3 = 11
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = numberValue16
      if arg1 >= 100 then
        arg1 = numberValue16
        arg1 = arg1 - 100
        numberValue16 = arg1
        arg1 = false
        flag10 = arg1
      end
    end
  end
end
cmgCall = CMG
cmgCall = cmgCall.createThreadOnTick
cmgCall2 = eventRegistration
textValue7 = "Casino Jackpot Bet"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall(cmgCall2, textValue7)
cmgCall = Citizen
cmgCall = cmgCall.CreateThread

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, arg2, arg3
  while true do
    arg1 = numberValue22
    if -1 ~= arg1 then
      arg1 = numberValue38
      if arg1 < 2 then
        arg1 = IsControlJustPressed
        arg2 = 0
        arg3 = 38
        arg1 = arg1(arg2, arg3)
        if arg1 then
          arg2 = numberValue22
          arg1 = dataTable4
          arg1 = arg1[arg2]
          if false == arg1 then
            arg1 = TriggerServerEvent
            arg2 = "5fa84f5579"
            arg3 = numberValue22
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5fa84f5579".
            arg1(arg2, arg3)
          end
        end
      end
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall(cmgCall2)
cmgCall = AddEventHandler
cmgCall2 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1, arg2) ===
function textValue7(arg1, arg2)
  local arg3, arg4
  if arg2 then
    arg3 = TriggerServerEvent
    arg4 = "36b442c245"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "36b442c245".
    arg3(arg4)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgCall(cmgCall2, textValue7)
cmgCall = RegisterNetEvent
cmgCall2 = "7bd6881732"
-- Beginner: this function handles network event "7bd6881732".

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1) ===
function textValue7(arg1)
  local arg2
  dataTable4 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7bd6881732".
cmgCall(cmgCall2, textValue7)
-- Beginner: this function handles network event "7bd6881732".

-- === HELPER FUNCTION (decompiler name: cmgCall; parameters: none) ===
function cmgCall()
  local arg1, arg2, arg3, arg4, arg5, flag7, workValue26, numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue30, numberValue31
  arg1 = flag
  if arg1 then
    arg1 = flag8
    if arg1 then
      arg1 = SetPedCapsule
      arg2 = CMG
      arg2 = arg2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = 0.2
      arg1(arg2, arg3)
      arg1 = IsControlJustPressed
      arg2 = 0
      arg3 = 202
      arg1 = arg1(arg2, arg3)
      if arg1 then
        arg1 = flag9
        if not arg1 then
          arg1 = numberValue42
          arg2 = textValue2
          arg2 = arg2()
          arg3 = "exit_left"
          arg4 = textValue5
          arg5 = arg1
          flag7 = 0
          workValue26 = arg2
          numberValue44 = arg3
          arg4 = arg4(arg5, flag7, workValue26, numberValue44)
          arg5 = workValue19
          flag7 = arg1
          workValue26 = 0
          numberValue44 = arg2
          workValue28 = arg3
          arg5 = arg5(flag7, workValue26, numberValue44, workValue28)
          flag7 = TaskPlayAnimAdvanced
          workValue26 = PlayerPedId
          -- Beginner: result below is localPlayerPed.
          workValue26 = workValue26()
          numberValue44 = arg2
          workValue28 = arg3
          workValue29 = arg4.x
          workValue3 = arg4.y
          workValue4 = arg4.z
          numberValue11 = 0.0
          numberValue13 = 0.0
          workValue7 = arg5
          numberValue15 = 2.0
          numberValue17 = -2.0
          numberValue19 = -1
          numberValue20 = 790528
          numberValue21 = 0.0
          numberValue30 = 2
          numberValue31 = 0
          flag7(workValue26, numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue30, numberValue31)
          flag7 = PlayFacialAnim
          workValue26 = CMG
          workValue26 = workValue26.getPlayerPed
          -- Beginner: result below is localPlayerPed.
          workValue26 = workValue26()
          numberValue44 = "exit_left_facial"
          workValue28 = arg2
          flag7(workValue26, numberValue44, workValue28)
          flag7 = SetTimeout
          workValue26 = 2500

          -- === HELPER FUNCTION (decompiler name: numberValue44; parameters: none) ===
          function numberValue44()
            local rageUiCall, textValue
            rageUiCall = ClearPedTasks
            textValue = CMG
            textValue = textValue.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            textValue = textValue()
            rageUiCall(textValue)
          end
          flag7(workValue26, numberValue44)
          flag7 = tCMG
          flag7 = flag7.setCanAnim
          workValue26 = true
          flag7(workValue26)
          flag7 = false
          flag = flag7
          flag7 = true
          flag5 = flag7
          flag7 = false
          flag8 = flag7
          flag7 = numberValue36
          workValue26 = false
          flag7(workValue26)
          flag7 = TriggerServerEvent
          workValue26 = "189c2ad027"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "189c2ad027".
          flag7(workValue26)
          flag7 = -1
          numberValue42 = flag7
          flag7 = SetTimeout
          workValue26 = 5000

          -- === HELPER FUNCTION (decompiler name: numberValue44; parameters: none) ===
          function numberValue44()
            local rageUiCall, textValue
            rageUiCall = false
            flag5 = rageUiCall
          end
          flag7(workValue26, numberValue44)
        end
      end
    end
  end
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
textValue7 = cmgCall
textValue8 = "Casino Jackpot Tick"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(textValue7, textValue8)
cmgCall2 = RegisterNetEvent
textValue7 = "5b098b67a8"
-- Beginner: this function handles network event "5b098b67a8".

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg1, arg2, arg3, arg4, arg5) ===
function textValue8(arg1, arg2, arg3, arg4, arg5)
  local flag7, workValue26, numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21
  flag7 = numberValue32
  flag7 = flag7[arg1]
  if not flag7 then
    return
  end
  flag7 = 0.5
  numberValue45 = flag7
  flag7 = numberValue32
  flag7 = flag7[arg1]
  flag7 = flag7.centerXPos
  workValue26 = numberValue32
  workValue26 = workValue26[arg1]
  workValue26 = workValue26.rectLength
  numberValue44 = workValue26 / 2
  numberValue44 = flag7 - numberValue44
  workValue28 = arg2 * workValue26
  flag7 = numberValue44 + workValue28
  numberValue44 = 0.5
  workValue28 = flag7
  workValue29 = 0
  workValue3 = false
  workValue4 = 0
  numberValue11 = GetEntityCoords
  numberValue13 = CMG
  numberValue13 = numberValue13.getPlayerPed
  numberValue13, workValue7, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21 = numberValue13()
  -- Beginner: result below is entityCoords.
  numberValue11 = numberValue11(numberValue13, workValue7, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21)
  numberValue13 = vector3
  workValue7 = 1096.3543701172
  numberValue15 = 261.18997192383
  numberValue17 = -51.241153717041
  numberValue13 = numberValue13(workValue7, numberValue15, numberValue17)
  numberValue13 = numberValue11 - numberValue13
  numberValue13 = #numberValue13
  workValue7 = false
  if numberValue13 <= 10 then
    numberValue15 = SendNUIMessage
    numberValue17 = {}
    numberValue17.transactionType = "jackpotroll"
    -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
    numberValue15(numberValue17)
    workValue7 = true
  end
  numberValue15 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  numberValue15 = numberValue15()
  while 0.0 ~= numberValue44 do
    numberValue17 = GetFrameTime
    numberValue17 = numberValue17()
    numberValue19 = numberValue45
    numberValue20 = 0.9
    if numberValue19 > numberValue20 then
      numberValue19 = 0.1
      numberValue45 = numberValue19
      workValue29 = workValue29 + 1
    end
    if 1 == workValue29 and not workValue3 then
      workValue3 = true
      numberValue19 = SetTimeout
      numberValue20 = 4000

      -- === HELPER FUNCTION (decompiler name: numberValue21; parameters: none) ===
      function numberValue21()
        local rageUiCall, textValue, numberValue39
        rageUiCall = 0.4
        numberValue44 = rageUiCall
        rageUiCall = SetTimeout
        textValue = 2500

        -- === HELPER FUNCTION (decompiler name: numberValue39; parameters: none) ===
        function numberValue39()
          local arg12, arg22, arg32
          arg12 = 0.35
          numberValue44 = arg12
          arg12 = SetTimeout
          arg22 = 1250

          -- === HELPER FUNCTION: arg32() ===
          function arg32()
            local numberValue2, numberValue25, workValue14
            numberValue2 = 0.3
            numberValue44 = numberValue2
            numberValue2 = SetTimeout
            numberValue25 = 625

            -- === HELPER FUNCTION (decompiler name: workValue14; parameters: none) ===
            function workValue14()
              local numberValue3, numberValue26, workValue15
              numberValue3 = 0.25
              numberValue44 = numberValue3
              numberValue3 = SetTimeout
              numberValue26 = 625

              -- === HELPER FUNCTION (decompiler name: workValue15; parameters: none) ===
              function workValue15()
                local numberValue4, numberValue27, workValue16
                numberValue4 = 0.2
                numberValue44 = numberValue4
                numberValue4 = SetTimeout
                numberValue27 = 500

                -- === HELPER FUNCTION (decompiler name: workValue16; parameters: none) ===
                function workValue16()
                  local numberValue5, numberValue28, workValue17
                  numberValue5 = 0.15
                  numberValue44 = numberValue5
                  numberValue5 = SetTimeout
                  numberValue28 = 500

                  -- === HELPER FUNCTION (decompiler name: workValue17; parameters: none) ===
                  function workValue17()
                    local numberValue6, numberValue29, workValue18
                    numberValue6 = 0.1
                    numberValue44 = numberValue6
                    numberValue6 = SetTimeout
                    numberValue29 = 1500

                    -- === HELPER FUNCTION (decompiler name: workValue18; parameters: none) ===
                    function workValue18()
                      local workValue, numberValue23, workValue11
                      workValue = SetTimeout
                      numberValue23 = 1000

                      -- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
                      function workValue11()
                        local workValue2, numberValue24, workValue12
                        workValue2 = SetTimeout
                        numberValue24 = 750

                        -- === HELPER FUNCTION (decompiler name: workValue12; parameters: none) ===
                        function workValue12()
                          local numberValue, workValue10, workValue13, workValue21
                          numberValue = 0
                          workValue10 = numberValue45
                          workValue13 = workValue28
                          if workValue10 > workValue13 then
                            numberValue = 0.9
                          end
                          workValue10 = workValue28
                          workValue13 = numberValue45
                          workValue13 = workValue13 - numberValue
                          workValue10 = workValue10 - workValue13
                          workValue13 = numberValue45
                          workValue21 = workValue28
                          if workValue13 < workValue21 then
                            while true do
                              workValue13 = numberValue45
                              workValue13 = workValue13 - numberValue
                              workValue21 = workValue28
                              if not (workValue13 < workValue21) then
                                break
                              end
                              workValue13 = GetGameTimer
                              -- Beginner: result below is gameTimeMs.
                              workValue13 = workValue13()
                              workValue21 = numberValue15
                              workValue13 = workValue13 - workValue21
                              workValue21 = 120000
                              if not (workValue13 < workValue21) then
                                break
                              end
                              workValue13 = numberValue45
                              workValue21 = workValue28
                              if workValue13 > workValue21 then
                                numberValue = 0.9
                              else
                                numberValue = 0.0
                              end
                              workValue13 = workValue28
                              workValue21 = numberValue45
                              workValue21 = workValue21 - numberValue
                              workValue10 = workValue13 - workValue21
                              workValue13 = 0.1
                              if workValue10 < workValue13 then
                                workValue13 = 0.025
                                numberValue44 = workValue13
                              else
                                workValue13 = 0.3
                                if workValue10 < workValue13 then
                                  workValue13 = 0.035
                                  numberValue44 = workValue13
                                else
                                  workValue13 = 0.4
                                  if workValue10 < workValue13 then
                                    workValue13 = 0.05
                                    numberValue44 = workValue13
                                  else
                                    workValue13 = 0.5
                                    if workValue10 < workValue13 then
                                      workValue13 = 0.075
                                      numberValue44 = workValue13
                                    end
                                  end
                                end
                              end
                              workValue13 = Wait
                              workValue21 = 0
                              workValue13(workValue21)
                            end
                          else
                            workValue13 = numberValue45
                            workValue21 = workValue28
                            if workValue13 > workValue21 then
                              while true do
                                workValue13 = numberValue45
                                workValue13 = workValue13 - numberValue
                                workValue21 = workValue28
                                if not (workValue13 < workValue21) then
                                  break
                                end
                                workValue13 = GetGameTimer
                                -- Beginner: result below is gameTimeMs.
                                workValue13 = workValue13()
                                workValue21 = numberValue15
                                workValue13 = workValue13 - workValue21
                                workValue21 = 120000
                                if not (workValue13 < workValue21) then
                                  break
                                end
                                workValue13 = numberValue45
                                workValue21 = workValue28
                                if workValue13 > workValue21 then
                                  numberValue = 0.9
                                else
                                  numberValue = 0.0
                                end
                                workValue13 = workValue28
                                workValue21 = numberValue45
                                workValue21 = workValue21 - numberValue
                                workValue10 = workValue13 - workValue21
                                workValue13 = 0.1
                                if workValue10 < workValue13 then
                                  workValue13 = 0.025
                                  numberValue44 = workValue13
                                else
                                  workValue13 = 0.3
                                  if workValue10 < workValue13 then
                                    workValue13 = 0.035
                                    numberValue44 = workValue13
                                  else
                                    workValue13 = 0.4
                                    if workValue10 < workValue13 then
                                      workValue13 = 0.05
                                      numberValue44 = workValue13
                                    else
                                      workValue13 = 0.5
                                      if workValue10 < workValue13 then
                                        workValue13 = 0.075
                                        numberValue44 = workValue13
                                      end
                                    end
                                  end
                                end
                                workValue13 = Wait
                                workValue21 = 0
                                workValue13(workValue21)
                              end
                            end
                          end
                          workValue13 = 0.0
                          numberValue44 = workValue13
                          workValue13 = arg3
                          workValue6 = workValue13
                          workValue13 = arg4
                          numberValue14 = workValue13
                          workValue13 = workValue7
                          if workValue13 then
                            workValue13 = arg5
                            workValue21 = CMG
                            workValue21 = workValue21.getClientUserId
                            -- Beginner: result below is userId.
                            workValue21 = workValue21()
                            if workValue13 == workValue21 then
                              workValue13 = SendNUIMessage
                              workValue21 = {}
                              workValue21.transactionType = "playCasinoWin"
                              -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
                              workValue13(workValue21)
                              workValue13 = TriggerServerEvent
                              workValue21 = "9aef7155c0"
                              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9aef7155c0".
                              workValue13(workValue21)
                            else
                              workValue13 = numberValue42
                              if -1 ~= workValue13 then
                                workValue13 = SendNUIMessage
                                workValue21 = {}
                                workValue21.transactionType = "playCasinoLose"
                                -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
                                workValue13(workValue21)
                              end
                            end
                          end
                        end
                        workValue2(numberValue24, workValue12)
                      end
                      workValue(numberValue23, workValue11)
                    end
                    numberValue6(numberValue29, workValue18)
                  end
                  numberValue5(numberValue28, workValue17)
                end
                numberValue4(numberValue27, workValue16)
              end
              numberValue3(numberValue26, workValue15)
            end
            numberValue2(numberValue25, workValue14)
          end
          arg12(arg22, arg32)
        end
        rageUiCall(textValue, numberValue39)
      end
      numberValue19(numberValue20, numberValue21)
    end
    numberValue19 = numberValue45
    numberValue20 = numberValue44 * numberValue17
    numberValue19 = numberValue19 + numberValue20
    numberValue45 = numberValue19
    numberValue19 = numberValue44 * numberValue17
    workValue4 = workValue4 + numberValue19
    numberValue19 = Wait
    numberValue20 = 0
    numberValue19(numberValue20)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5b098b67a8".
cmgCall2(textValue7, textValue8)
cmgCall2 = Citizen
cmgCall2 = cmgCall2.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2, arg3, arg4, arg5, flag7, workValue26, numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue30, numberValue31
  while true do
    arg1 = CMG
    arg1 = arg1.isInsideDiamondCasino
    arg1 = arg1()
    if arg1 then
      break
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = Wait
  arg2 = 5000
  arg1(arg2)
  arg1 = -214651601
  arg2 = workValue9
  arg3 = "casinoscreen_02"
  arg4 = arg1
  arg2 = arg2(arg3, arg4)
  while true do
    arg3 = SetTextRenderId
    arg4 = arg2
    arg3(arg4)
    arg3 = SetScriptGfxDrawOrder
    arg4 = 4
    arg3(arg4)
    arg3 = SetScriptGfxDrawBehindPausemenu
    arg4 = true
    arg3(arg4)
    arg3 = numberValue32
    arg3 = #arg3
    if 0 ~= arg3 then
      arg3 = numberValue32
      arg4 = #arg3
      arg3 = numberValue32
      arg3 = arg3[arg4]
      arg3 = arg3.tickets_end
      arg4 = 0.1
      arg5 = 0.8
      flag7 = 0.0
      workValue26 = 1
      numberValue44 = numberValue32
      numberValue44 = #numberValue44
      workValue28 = 1
      for workValue29 = workValue26, numberValue44, workValue28 do
        workValue3 = numberValue32
        workValue3 = workValue3[workValue29]
        workValue3 = workValue3.tickets_end
        workValue4 = numberValue32
        workValue4 = workValue4[workValue29]
        workValue4 = workValue4.tickets_start
        workValue3 = workValue3 - workValue4
        workValue3 = workValue3 + 1
        workValue4 = workValue3 / arg3
        numberValue11 = workValue4 * arg5
        numberValue13 = numberValue32
        numberValue13 = numberValue13[workValue29]
        workValue7 = arg5 * flag7
        workValue7 = arg4 + workValue7
        numberValue15 = numberValue11 / 2
        workValue7 = workValue7 + numberValue15
        numberValue13.centerXPos = workValue7
        numberValue13 = numberValue32
        numberValue13 = numberValue13[workValue29]
        numberValue13.rectLength = numberValue11
        numberValue13 = DrawRect
        workValue7 = arg5 * flag7
        workValue7 = arg4 + workValue7
        numberValue15 = numberValue11 / 2
        workValue7 = workValue7 + numberValue15
        numberValue15 = 0.5
        numberValue17 = arg5 * workValue4
        numberValue19 = 0.2
        numberValue20 = numberValue32
        numberValue20 = numberValue20[workValue29]
        numberValue20 = numberValue20.colour
        numberValue20 = numberValue20.r
        numberValue21 = numberValue32
        numberValue21 = numberValue21[workValue29]
        numberValue21 = numberValue21.colour
        numberValue21 = numberValue21.g
        numberValue30 = numberValue32
        numberValue30 = numberValue30[workValue29]
        numberValue30 = numberValue30.colour
        numberValue30 = numberValue30.b
        numberValue31 = numberValue32
        numberValue31 = numberValue31[workValue29]
        numberValue31 = numberValue31.colour
        numberValue31 = numberValue31.a
        numberValue13(workValue7, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue30, numberValue31)
        flag7 = flag7 + workValue4
      end
      workValue26 = flag3
      if workValue26 then
        workValue26 = DrawAdvancedText
        numberValue44 = 0.6
        workValue28 = 0.161
        workValue29 = 0.005
        workValue3 = 0.0028
        workValue4 = 1.12
        numberValue11 = "Round starting in "
        numberValue13 = numberValue10
        workValue7 = "s"
        numberValue11 = numberValue11 .. numberValue13 .. workValue7
        numberValue13 = 255
        workValue7 = 255
        numberValue15 = 255
        numberValue17 = 255
        numberValue19 = 4
        numberValue20 = 0
        workValue26(numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17, numberValue19, numberValue20)
      else
        workValue26 = flag4
        if workValue26 then
          workValue26 = DrawAdvancedText
          numberValue44 = 0.6
          workValue28 = 0.161
          workValue29 = 0.005
          workValue3 = 0.0028
          workValue4 = 1.12
          numberValue11 = "Waiting for bets"
          numberValue13 = 255
          workValue7 = 255
          numberValue15 = 255
          numberValue17 = 255
          numberValue19 = 4
          numberValue20 = 0
          workValue26(numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17, numberValue19, numberValue20)
        end
      end
      workValue26 = workValue6
      if workValue26 then
        workValue26 = DrawAdvancedText
        numberValue44 = 0.6
        workValue28 = 0.161
        workValue29 = 0.005
        workValue3 = 0.0028
        workValue4 = 1.12
        numberValue11 = workValue6
        numberValue13 = " wins with a chance of "
        workValue7 = math
        workValue7 = workValue7.floor
        numberValue15 = numberValue14
        numberValue15 = numberValue15 * 1000
        workValue7 = workValue7(numberValue15)
        workValue7 = workValue7 / 1000
        numberValue15 = "%!"
        numberValue11 = numberValue11 .. numberValue13 .. workValue7 .. numberValue15
        numberValue13 = 255
        workValue7 = 255
        numberValue15 = 255
        numberValue17 = 255
        numberValue19 = 4
        numberValue20 = 0
        workValue26(numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17, numberValue19, numberValue20)
      end
      workValue26 = numberValue18
      if workValue26 then
        workValue26 = DrawAdvancedText
        numberValue44 = 0.92
        workValue28 = 0.161
        workValue29 = 0.005
        workValue3 = 0.0028
        workValue4 = 1.12
        numberValue11 = "Total Pot: "
        numberValue13 = getMoneyStringFormatted
        workValue7 = numberValue18
        numberValue13 = numberValue13(workValue7)
        numberValue11 = numberValue11 .. numberValue13
        numberValue13 = 255
        workValue7 = 255
        numberValue15 = 255
        numberValue17 = 255
        numberValue19 = 4
        numberValue20 = 0
        workValue26(numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17, numberValue19, numberValue20)
      end
      workValue26 = DrawRect
      numberValue44 = numberValue45
      workValue28 = 0.5
      workValue29 = -0.0025
      workValue3 = 0.346
      workValue4 = 243
      numberValue11 = 198
      numberValue13 = 50
      workValue7 = 255
      workValue26(numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7)
    else
      arg3 = DrawAdvancedText
      arg4 = 0.6
      arg5 = 0.161
      flag7 = 0.005
      workValue26 = 0.0028
      numberValue44 = 1.12
      workValue28 = "Waiting for bets"
      workValue29 = 255
      workValue3 = 255
      workValue4 = 255
      numberValue11 = 255
      numberValue13 = 4
      workValue7 = 0
      arg3(arg4, arg5, flag7, workValue26, numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7)
    end
    arg3 = SetTextRenderId
    arg4 = GetDefaultScriptRendertargetRenderId
    arg4, arg5, flag7, workValue26, numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue30, numberValue31 = arg4()
    arg3(arg4, arg5, flag7, workValue26, numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17, numberValue19, numberValue20, numberValue21, numberValue30, numberValue31)
    arg3 = SetScriptGfxDrawBehindPausemenu
    arg4 = false
    arg3(arg4)
    arg3 = Wait
    arg4 = 0
    arg3(arg4)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall2(textValue7)
cmgCall2 = RegisterNetEvent
textValue7 = "9dd018b9d1"
-- Beginner: this function handles network event "9dd018b9d1".

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = false
  flag8 = arg1
  arg1 = false
  flag10 = arg1
  arg1 = true
  flag2 = arg1
  arg1 = PlaySoundFrontend
  arg2 = -1
  arg3 = "Hack_Success"
  arg4 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
  arg5 = true
  arg1(arg2, arg3, arg4, arg5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9dd018b9d1".
cmgCall2(textValue7, textValue8)
cmgCall2 = RegisterNetEvent
textValue7 = "2c2e2d6e33"
-- Beginner: this function handles network event "2c2e2d6e33".

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2, arg3
  arg1 = false
  flag4 = arg1
  arg1 = 60
  numberValue10 = arg1
  arg1 = true
  flag3 = arg1
  arg1 = SetTimeout
  arg2 = 60000
  -- Beginner: this function handles network event "2c2e2d6e33".

  -- === HELPER FUNCTION: arg3() ===
  function arg3()
    local rageUiCall, textValue
    rageUiCall = false
    flag3 = rageUiCall
  end
  arg1(arg2, arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "2c2e2d6e33".
cmgCall2(textValue7, textValue8)
cmgCall2 = RegisterNetEvent
textValue7 = "13b75dfa73"
-- Beginner: this function handles network event "13b75dfa73".

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: arg1) ===
function textValue8(arg1)
  local arg2
  numberValue32 = arg1
end
cmgCall2(textValue7, textValue8)
cmgCall2 = RegisterNetEvent
textValue7 = "e907964993"
-- Beginner: this function handles network event "e907964993".

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2, arg3, arg4, arg5, flag7, workValue26, numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17
  arg1 = {}
  numberValue32 = arg1
  arg1 = numberValue42
  if -1 ~= arg1 then
    arg1 = true
    flag8 = arg1
    arg1 = textValue2
    arg1 = arg1()
    arg2 = "playidle_var_01"
    arg3 = textValue5
    arg4 = numberValue42
    arg5 = 0
    flag7 = arg1
    workValue26 = arg2
    arg3 = arg3(arg4, arg5, flag7, workValue26)
    arg4 = workValue19
    arg5 = numberValue42
    flag7 = 0
    workValue26 = arg1
    numberValue44 = arg2
    arg4 = arg4(arg5, flag7, workValue26, numberValue44)
    arg5 = NetworkCreateSynchronisedScene
    flag7 = arg3.x
    workValue26 = arg3.y
    numberValue44 = arg3.z
    workValue28 = 0.0
    workValue29 = 0.0
    workValue3 = arg4
    workValue4 = 2
    numberValue11 = true
    numberValue13 = false
    workValue7 = 1065353216
    numberValue15 = 0
    numberValue17 = 1065353216
    arg5 = arg5(flag7, workValue26, numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15, numberValue17)
    flag7 = NetworkAddPedToSynchronisedScene
    workValue26 = CMG
    workValue26 = workValue26.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    workValue26 = workValue26()
    numberValue44 = arg5
    workValue28 = arg1
    workValue29 = arg2
    workValue3 = 2.0
    workValue4 = -2.0
    numberValue11 = 5
    numberValue13 = 0
    workValue7 = 1148846080
    numberValue15 = 0
    flag7(workValue26, numberValue44, workValue28, workValue29, workValue3, workValue4, numberValue11, numberValue13, workValue7, numberValue15)
    flag7 = NetworkStartSynchronisedScene
    workValue26 = arg5
    flag7(workValue26)
    flag7 = textValue6
    workValue26 = "instructional_buttons"
    flag7 = flag7(workValue26)
    workValue26 = Citizen
    workValue26 = workValue26.CreateThread

    -- === HELPER FUNCTION (decompiler name: numberValue44; parameters: none) ===
    function numberValue44()
      local rageUiCall, textValue, numberValue39, dataTable2, flag6, numberValue43, mathHelper
      while true do
        rageUiCall = flag8
        if not rageUiCall then
          break
        end
        rageUiCall = DrawScaleformMovieFullscreen
        textValue = flag7
        numberValue39 = 255
        dataTable2 = 255
        flag6 = 255
        numberValue43 = 255
        mathHelper = 0
        rageUiCall(textValue, numberValue39, dataTable2, flag6, numberValue43, mathHelper)
        rageUiCall = Wait
        textValue = 0
        rageUiCall(textValue)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    workValue26(numberValue44)
  end
  arg1 = false
  flag10 = arg1
  arg1 = false
  flag2 = arg1
  arg1 = 0
  numberValue16 = arg1
  arg1 = nil
  workValue6 = arg1
  arg1 = 0
  numberValue14 = arg1
  arg1 = true
  flag4 = arg1
  arg1 = 0
  numberValue18 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e907964993".
cmgCall2(textValue7, textValue8)
cmgCall2 = Citizen
cmgCall2 = cmgCall2.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
function textValue7()
  local arg1, arg2
  while true do
    arg1 = numberValue10
    if arg1 >= 0 then
      arg1 = numberValue10
      arg1 = arg1 - 1
      numberValue10 = arg1
    end
    arg1 = Wait
    arg2 = 1000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall2(textValue7)

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: none) ===
function cmgCall2()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "c0475172e6"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c0475172e6".
  arg1(arg2)
end
textValue7 = CMG
textValue7 = textValue7.createArea
textValue8 = "casino_jackpot_scope"
workValue22 = vector3Builder
numberValue40 = 75.0
numberValue41 = 50.0
workValue23 = cmgCall2

-- === HELPER FUNCTION (decompiler name: workValue24; parameters: none) ===
function workValue24()
  local arg1, arg2
end

-- === HELPER FUNCTION (decompiler name: workValue25; parameters: none) ===
function workValue25()
  local arg1, arg2
end
dataTable3 = {}
-- Beginner: Create an interaction area around a world position.
textValue7(textValue8, workValue22, numberValue40, numberValue41, workValue23, workValue24, workValue25, dataTable3)
