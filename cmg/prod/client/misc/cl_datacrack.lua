--[[
    LEVEL 1 BEGINNER GUIDE — Datacrack
    =======================================

    File: cmg/prod/client/misc/cl_datacrack.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Datacrack feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 9
      * Background threads: 0
      * Always-running loops: 5
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
local flag, dataTable, dataTable2, dataTable3, workValue2
flag = false
dataTable = {}
dataTable2 = {}
dataTable2.val1 = 0.4
dataTable[1] = dataTable2
dataTable2 = {}
dataTable2.val1 = 0.4
dataTable[2] = dataTable2
dataTable2 = {}
dataTable2.val1 = 0.4
dataTable[3] = dataTable2
dataTable2 = {}
dataTable2.val1 = 0.4
dataTable[4] = dataTable2
dataTable2 = {}
dataTable2.val1 = 0.4
dataTable[5] = dataTable2
dataTable2 = {}
dataTable2.val1 = 0.4
dataTable[6] = dataTable2
dataTable2 = {}
dataTable2.val1 = 0.4
dataTable[7] = dataTable2
dataTable2 = {}
dataTable3 = {}
dataTable3.val0 = 1
dataTable3.val1 = 0.011000000000000001
dataTable3.val2 = 0
dataTable3.val3 = 1
dataTable3.val4 = true
dataTable2[1] = dataTable3
dataTable3 = {}
dataTable3.val0 = 1
dataTable3.val1 = 0.013750000000000002
dataTable3.val2 = 0
dataTable3.val3 = 1
dataTable3.val4 = true
dataTable2[2] = dataTable3
dataTable3 = {}
dataTable3.val0 = 1
dataTable3.val1 = 0.0165
dataTable3.val2 = 0
dataTable3.val3 = 1
dataTable3.val4 = true
dataTable2[3] = dataTable3
dataTable3 = {}
dataTable3.val0 = 1
dataTable3.val1 = 0.019250000000000003
dataTable3.val2 = 0
dataTable3.val3 = 1
dataTable3.val4 = true
dataTable2[4] = dataTable3
dataTable3 = {}
dataTable3.val0 = 1
dataTable3.val1 = 0.022000000000000002
dataTable3.val2 = 0
dataTable3.val3 = 1
dataTable3.val4 = true
dataTable2[5] = dataTable3
dataTable3 = {}
dataTable3.val0 = 1
dataTable3.val1 = 0.02475
dataTable3.val2 = 0
dataTable3.val3 = 1
dataTable3.val4 = true
dataTable2[6] = dataTable3
dataTable3 = {}
dataTable3.val0 = 1
dataTable3.val1 = 0.027500000000000004
dataTable3.val2 = 0
dataTable3.val3 = 1
dataTable3.val4 = true
dataTable2[7] = dataTable3

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg1) ===
function dataTable3(arg1)
  local arg2, arg3, flag2, flag3, numberValue6
  arg2 = BeginTextCommandDisplayHelp
  arg3 = "STRING"
  arg2(arg3)
  arg2 = AddTextComponentSubstringPlayerName
  arg3 = arg1
  arg2(arg3)
  arg2 = EndTextCommandDisplayHelp
  arg3 = 0
  flag2 = false
  flag3 = true
  numberValue6 = -1
  arg2(arg3, flag2, flag3, numberValue6)
end
F_02536 = dataTable3

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: none) ===
function dataTable3()
  local arg1, arg2, arg3, flag2
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 73
  flag2 = false
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 24
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 257
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 25
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 263
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 32
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 34
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 31
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 30
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 45
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 22
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 44
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 37
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 23
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 288
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 289
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 170
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 167
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 73
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 2
  arg3 = 199
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 47
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 264
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 257
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 140
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 141
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 142
  flag2 = true
  arg1(arg2, arg3, flag2)
  arg1 = DisableControlAction
  arg2 = 0
  arg3 = 143
  flag2 = true
  arg1(arg2, arg3, flag2)
end
F_02539 = dataTable3

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg1) ===
function dataTable3(arg1)
  local arg2, arg3
  arg2 = dataTable
  arg2 = arg2[arg1]
  arg2 = arg2.val1
  arg3 = 0.51
  if arg2 >= arg3 then
    arg2 = dataTable
    arg2 = arg2[arg1]
    arg2 = arg2.val1
    arg3 = 0.62
    if arg2 <= arg3 then
      arg2 = true
      return arg2
    end
  end
  arg2 = false
  return arg2
end
F_02540 = dataTable3

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg1, arg2, arg3) ===
function dataTable3(arg1, arg2, arg3)
  local flag2, flag3, numberValue6, workValue3
  flag2 = nil
  flag3 = Cos
  numberValue6 = F_02542
  workValue3 = arg3 * 3.141593
  numberValue6, workValue3 = numberValue6(workValue3)
  flag3 = flag3(numberValue6, workValue3)
  numberValue6 = 1.0
  flag3 = numberValue6 - flag3
  flag2 = flag3 * 0.5
  flag3 = 1
  flag3 = flag3 - flag2
  flag3 = arg1 * flag3
  numberValue6 = arg2 * flag2
  flag3 = flag3 + numberValue6
  return flag3
end
F_02541 = dataTable3

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg1) ===
function dataTable3(arg1)
  local arg2
  arg2 = arg1 * 57.29578
  return arg2
end
F_02542 = dataTable3
dataTable3 = CMG

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1, arg2) ===
function workValue2(arg1, arg2)
  local arg3, flag2, flag3
  arg3 = nil
  if nil == arg1 then
    arg3 = 25
  elseif arg1 < 2 then
    arg3 = 25
  elseif arg1 > 5 then
    arg3 = 25
  else
    arg3 = arg1 * 10
  end
  flag2 = {}
  flag3 = {}
  flag3.val1 = 0.4
  flag2[1] = flag3
  flag3 = {}
  flag3.val1 = 0.4
  flag2[2] = flag3
  flag3 = {}
  flag3.val1 = 0.4
  flag2[3] = flag3
  flag3 = {}
  flag3.val1 = 0.4
  flag2[4] = flag3
  flag3 = {}
  flag3.val1 = 0.4
  flag2[5] = flag3
  flag3 = {}
  flag3.val1 = 0.4
  flag2[6] = flag3
  flag3 = {}
  flag3.val1 = 0.4
  flag2[7] = flag3
  dataTable = flag2
  flag2 = {}
  flag3 = {}
  flag3.val0 = 1
  flag3.val1 = 0.011000000000000001
  flag3.val2 = 0
  flag3.val3 = 1
  flag3.val4 = true
  flag2[1] = flag3
  flag3 = {}
  flag3.val0 = 1
  flag3.val1 = 0.013750000000000002
  flag3.val2 = 0
  flag3.val3 = 1
  flag3.val4 = true
  flag2[2] = flag3
  flag3 = {}
  flag3.val0 = 1
  flag3.val1 = 0.0165
  flag3.val2 = 0
  flag3.val3 = 1
  flag3.val4 = true
  flag2[3] = flag3
  flag3 = {}
  flag3.val0 = 1
  flag3.val1 = 0.019250000000000003
  flag3.val2 = 0
  flag3.val3 = 1
  flag3.val4 = true
  flag2[4] = flag3
  flag3 = {}
  flag3.val0 = 1
  flag3.val1 = 0.022000000000000002
  flag3.val2 = 0
  flag3.val3 = 1
  flag3.val4 = true
  flag2[5] = flag3
  flag3 = {}
  flag3.val0 = 1
  flag3.val1 = 0.02475
  flag3.val2 = 0
  flag3.val3 = 1
  flag3.val4 = true
  flag2[6] = flag3
  flag3 = {}
  flag3.val0 = 1
  flag3.val1 = 0.027500000000000004
  flag3.val2 = 0
  flag3.val3 = 1
  flag3.val4 = true
  flag2[7] = flag3
  dataTable2 = flag2
  flag2 = false
  flag = flag2
  flag2 = Citizen
  flag2 = flag2.CreateThread

  -- === HELPER FUNCTION (decompiler name: flag3; parameters: none) ===
  function flag3()
    local numberValue, workValue, textValue, numberValue5, textValue2, flag4
    numberValue = 1
    workValue = dataTable2
    workValue = workValue[numberValue]
    workValue.val0 = 0
    while true do
      workValue = F_02539
      workValue()
      workValue = F_02536
      textValue = "Press ~INPUT_FRONTEND_CANCEL~ to abort hack"
      workValue(textValue)
      workValue = IsControlJustReleased
      textValue = 2
      numberValue5 = 237
      workValue = workValue(textValue, numberValue5)
      if not workValue then
        workValue = IsControlJustReleased
        textValue = 2
        numberValue5 = 176
        workValue = workValue(textValue, numberValue5)
        if not workValue then
          workValue = IsControlJustReleased
          textValue = 2
          numberValue5 = 179
          workValue = workValue(textValue, numberValue5)
          if not workValue then
            goto flow_label_96
          end
        end
      end
      workValue = F_02540
      textValue = numberValue
      workValue = workValue(textValue)
      if workValue then
        workValue = PlaySoundFrontend
        textValue = -1
        numberValue5 = "Pin_Good"
        textValue2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
        flag4 = true
        workValue(textValue, numberValue5, textValue2, flag4)
        workValue = dataTable2
        workValue = workValue[numberValue]
        workValue.val0 = 1
        workValue = dataTable2
        workValue = workValue[numberValue]
        workValue.val4 = false
        workValue = dataTable
        workValue = workValue[numberValue]
        workValue.val1 = 0.572
        if numberValue < 7 then
          textValue = numberValue + 1
          workValue = dataTable2
          workValue = workValue[textValue]
          workValue.val0 = 0
        end
        numberValue = numberValue + 1
        if numberValue > 7 then
          return
        end
      else
        workValue = PlaySoundFrontend
        textValue = -1
        numberValue5 = "Pin_Bad"
        textValue2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
        flag4 = true
        workValue(textValue, numberValue5, textValue2, flag4)
        if numberValue > 1 then
          workValue = dataTable2
          workValue = workValue[numberValue]
          workValue.val0 = 1
          numberValue = numberValue - 1
          workValue = dataTable2
          workValue = workValue[numberValue]
          workValue.val0 = 0
          workValue = dataTable
          workValue = workValue[numberValue]
          workValue.val1 = 0.572
          workValue = dataTable2
          workValue = workValue[numberValue]
          workValue.val4 = true
        elseif 1 == numberValue then
          workValue = true
          flag = workValue
          workValue = arg2
          textValue = false
          workValue(textValue)
        end
        workValue = flag
        if workValue then
          return
          goto flow_label_107
          ::flow_label_96::
          workValue = IsControlJustReleased
          textValue = 2
          numberValue5 = 202
          workValue = workValue(textValue, numberValue5)
          if workValue then
            workValue = true
            flag = workValue
            workValue = arg2
            textValue = false
            workValue(textValue)
          end
        end
      end
      ::flow_label_107::
      workValue = flag
      if workValue then
        return
      end
      workValue = Citizen
      workValue = workValue.Wait
      textValue = 1
      workValue(textValue)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  flag2(flag3)
  flag2 = Citizen
  flag2 = flag2.CreateThread

  -- === HELPER FUNCTION (decompiler name: flag3; parameters: none) ===
  function flag3()
    local numberValue, workValue, textValue, numberValue5, textValue2, flag4, workValue4, workValue5, workValue6
    while true do
      numberValue = 1
      workValue = dataTable2
      workValue = #workValue
      textValue = 1
      for numberValue5 = numberValue, workValue, textValue do
        textValue2 = dataTable2
        textValue2 = textValue2[numberValue5]
        textValue2 = textValue2.val3
        if 1 == textValue2 then
          textValue2 = dataTable2
          textValue2 = textValue2[numberValue5]
          textValue2 = textValue2.val2
          if textValue2 < 1.0 then
            textValue2 = dataTable2
            textValue2 = textValue2[numberValue5]
            flag4 = dataTable2
            flag4 = flag4[numberValue5]
            flag4 = flag4.val2
            workValue4 = dataTable2
            workValue4 = workValue4[numberValue5]
            workValue4 = workValue4.val1
            workValue5 = Timestep
            workValue5 = workValue5()
            workValue4 = workValue4 * workValue5
            workValue5 = arg3
            workValue5 = workValue5 * 1.0
            workValue4 = workValue4 * workValue5
            flag4 = flag4 + workValue4
            textValue2.val2 = flag4
          else
            textValue2 = dataTable2
            textValue2 = textValue2[numberValue5]
            textValue2.val3 = 0
          end
        else
          textValue2 = dataTable2
          textValue2 = textValue2[numberValue5]
          textValue2 = textValue2.val2
          if textValue2 > 0.0 then
            textValue2 = dataTable2
            textValue2 = textValue2[numberValue5]
            flag4 = dataTable2
            flag4 = flag4[numberValue5]
            flag4 = flag4.val2
            workValue4 = dataTable2
            workValue4 = workValue4[numberValue5]
            workValue4 = workValue4.val1
            workValue5 = Timestep
            workValue5 = workValue5()
            workValue4 = workValue4 * workValue5
            workValue5 = arg3
            workValue5 = workValue5 * 1.0
            workValue4 = workValue4 * workValue5
            flag4 = flag4 - workValue4
            textValue2.val2 = flag4
          else
            textValue2 = dataTable2
            textValue2 = textValue2[numberValue5]
            textValue2.val3 = 1
          end
        end
        textValue2 = dataTable2
        textValue2 = textValue2[numberValue5]
        textValue2 = textValue2.val0
        if 0 ~= textValue2 then
          textValue2 = dataTable2
          textValue2 = textValue2[numberValue5]
          textValue2 = textValue2.val4
          if not textValue2 then
            goto flow_label_90
          end
        end
        textValue2 = dataTable
        textValue2 = textValue2[numberValue5]
        flag4 = F_02541
        workValue4 = 0.744
        workValue5 = 0.4
        workValue6 = dataTable2
        workValue6 = workValue6[numberValue5]
        workValue6 = workValue6.val2
        flag4 = flag4(workValue4, workValue5, workValue6)
        textValue2.val1 = flag4
        ::flow_label_90::
        textValue2 = flag
        if textValue2 then
          return
        end
      end
      numberValue = Citizen
      numberValue = numberValue.Wait
      workValue = 1
      numberValue(workValue)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  flag2(flag3)
  flag2 = Citizen
  flag2 = flag2.CreateThread

  -- === HELPER FUNCTION (decompiler name: flag3; parameters: none) ===
  function flag3()
    local numberValue, workValue, textValue, numberValue5, textValue2, flag4, workValue4, workValue5, workValue6, numberValue7, numberValue2, numberValue3, numberValue4
    numberValue = RequestStreamedTextureDict
    workValue = "HACKING_PC_desktop_0"
    textValue = false
    numberValue(workValue, textValue)
    numberValue = RequestStreamedTextureDict
    workValue = "hackingNG"
    textValue = false
    numberValue(workValue, textValue)
    numberValue = RequestScaleformMovieInteractive
    workValue = "HACKING_PC"
    numberValue = numberValue(workValue)
    while true do
      workValue = HasScaleformMovieLoaded
      textValue = numberValue
      workValue = workValue(textValue)
      if workValue then
        break
      end
      workValue = Citizen
      workValue = workValue.Wait
      textValue = 0
      workValue(textValue)
    end
    workValue = BeginScaleformMovieMethod
    textValue = numberValue
    numberValue5 = "ADD_PROGRAM"
    workValue(textValue, numberValue5)
    workValue = ScaleformMovieMethodAddParamFloat
    textValue = 1.0
    workValue(textValue)
    workValue = ScaleformMovieMethodAddParamFloat
    textValue = 4.0
    workValue(textValue)
    workValue = _ENV
    textValue = "ScaleformMovieMethodAddParamTextureNameString"
    workValue = workValue[textValue]
    textValue = "My Computer"
    workValue(textValue)
    workValue = EndScaleformMovieMethod
    workValue()
    workValue = BeginScaleformMovieMethod
    textValue = numberValue
    numberValue5 = "ADD_PROGRAM"
    workValue(textValue, numberValue5)
    workValue = ScaleformMovieMethodAddParamFloat
    textValue = 6.0
    workValue(textValue)
    workValue = ScaleformMovieMethodAddParamFloat
    textValue = 6.0
    workValue(textValue)
    workValue = _ENV
    textValue = "ScaleformMovieMethodAddParamTextureNameString"
    workValue = workValue[textValue]
    textValue = "Power Off"
    workValue(textValue)
    workValue = EndScaleformMovieMethod
    workValue()
    workValue = BeginScaleformMovieMethod
    textValue = numberValue
    numberValue5 = "SET_BACKGROUND"
    workValue(textValue, numberValue5)
    workValue = ScaleformMovieMethodAddParamInt
    textValue = 1
    workValue(textValue)
    workValue = EndScaleformMovieMethod
    workValue()
    while true do
      workValue = HasStreamedTextureDictLoaded
      textValue = "hackingNG"
      workValue = workValue(textValue)
      if workValue then
        break
      end
      workValue = Citizen
      workValue = workValue.Wait
      textValue = 1
      workValue(textValue)
    end
    while true do
      workValue = DrawScaleformMovieFullscreen
      textValue = numberValue
      numberValue5 = 255
      textValue2 = 255
      flag4 = 255
      workValue4 = 255
      workValue5 = 0
      workValue(textValue, numberValue5, textValue2, flag4, workValue4, workValue5)
      workValue = DrawSprite
      textValue = "hackingNG"
      numberValue5 = "DHMain"
      textValue2 = 0.5
      flag4 = 0.5
      workValue4 = 0.731
      workValue5 = 1.306
      workValue6 = 0
      numberValue7 = 255
      numberValue2 = 255
      numberValue3 = 255
      numberValue4 = 255
      workValue(textValue, numberValue5, textValue2, flag4, workValue4, workValue5, workValue6, numberValue7, numberValue2, numberValue3, numberValue4)
      workValue = dataTable2
      workValue = workValue[1]
      workValue = workValue.val0
      if 1 == workValue then
        workValue = DrawSprite
        textValue = "hackingNG"
        numberValue5 = "DHComp"
        textValue2 = 0.35
        flag4 = dataTable
        flag4 = flag4[1]
        flag4 = flag4.val1
        workValue4 = 0.4
        workValue5 = 0.4
        workValue6 = 0
        numberValue7 = 255
        numberValue2 = 255
        numberValue3 = 255
        numberValue4 = 255
        workValue(textValue, numberValue5, textValue2, flag4, workValue4, workValue5, workValue6, numberValue7, numberValue2, numberValue3, numberValue4)
      else
        workValue = dataTable2
        workValue = workValue[1]
        workValue = workValue.val0
        if 0 == workValue then
          workValue = DrawSprite
          textValue = "hackingNG"
          numberValue5 = "DHCompHi"
          textValue2 = 0.35
          flag4 = dataTable
          flag4 = flag4[1]
          flag4 = flag4.val1
          workValue4 = 0.4
          workValue5 = 0.4
          workValue6 = 0
          numberValue7 = 255
          numberValue2 = 255
          numberValue3 = 255
          numberValue4 = 255
          workValue(textValue, numberValue5, textValue2, flag4, workValue4, workValue5, workValue6, numberValue7, numberValue2, numberValue3, numberValue4)
        end
      end
      workValue = dataTable2
      workValue = workValue[2]
      workValue = workValue.val0
      if 1 == workValue then
        workValue = DrawSprite
        textValue = "hackingNG"
        numberValue5 = "DHComp"
        textValue2 = 0.4
        flag4 = dataTable
        flag4 = flag4[2]
        flag4 = flag4.val1
        workValue4 = 0.4
        workValue5 = 0.4
        workValue6 = 0
        numberValue7 = 255
        numberValue2 = 255
        numberValue3 = 255
        numberValue4 = 255
        workValue(textValue, numberValue5, textValue2, flag4, workValue4, workValue5, workValue6, numberValue7, numberValue2, numberValue3, numberValue4)
      else
        workValue = dataTable2
        workValue = workValue[2]
        workValue = workValue.val0
        if 0 == workValue then
          workValue = DrawSprite
          textValue = "hackingNG"
          numberValue5 = "DHCompHi"
          textValue2 = 0.4
          flag4 = dataTable
          flag4 = flag4[2]
          flag4 = flag4.val1
          workValue4 = 0.4
          workValue5 = 0.4
          workValue6 = 0
          numberValue7 = 255
          numberValue2 = 255
          numberValue3 = 255
          numberValue4 = 255
          workValue(textValue, numberValue5, textValue2, flag4, workValue4, workValue5, workValue6, numberValue7, numberValue2, numberValue3, numberValue4)
        end
      end
      workValue = dataTable2
      workValue = workValue[3]
      workValue = workValue.val0
      if 1 == workValue then
        workValue = DrawSprite
        textValue = "hackingNG"
        numberValue5 = "DHComp"
        textValue2 = 0.45
        flag4 = dataTable
        flag4 = flag4[3]
        flag4 = flag4.val1
        workValue4 = 0.4
        workValue5 = 0.4
        workValue6 = 0
        numberValue7 = 255
        numberValue2 = 255
        numberValue3 = 255
        numberValue4 = 255
        workValue(textValue, numberValue5, textValue2, flag4, workValue4, workValue5, workValue6, numberValue7, numberValue2, numberValue3, numberValue4)
      else
        workValue = dataTable2
        workValue = workValue[3]
        workValue = workValue.val0
        if 0 == workValue then
          workValue = DrawSprite
          textValue = "hackingNG"
          numberValue5 = "DHCompHi"
          textValue2 = 0.45
          flag4 = dataTable
          flag4 = flag4[3]
          flag4 = flag4.val1
          workValue4 = 0.4
          workValue5 = 0.4
          workValue6 = 0
          numberValue7 = 255
          numberValue2 = 255
          numberValue3 = 255
          numberValue4 = 255
          workValue(textValue, numberValue5, textValue2, flag4, workValue4, workValue5, workValue6, numberValue7, numberValue2, numberValue3, numberValue4)
        end
      end
      workValue = dataTable2
      workValue = workValue[4]
      workValue = workValue.val0
      if 1 == workValue then
        workValue = DrawSprite
        textValue = "hackingNG"
        numberValue5 = "DHComp"
        textValue2 = 0.5
        flag4 = dataTable
        flag4 = flag4[4]
        flag4 = flag4.val1
        workValue4 = 0.4
        workValue5 = 0.4
        workValue6 = 0
        numberValue7 = 255
        numberValue2 = 255
        numberValue3 = 255
        numberValue4 = 255
        workValue(textValue, numberValue5, textValue2, flag4, workValue4, workValue5, workValue6, numberValue7, numberValue2, numberValue3, numberValue4)
      else
        workValue = dataTable2
        workValue = workValue[4]
        workValue = workValue.val0
        if 0 == workValue then
          workValue = DrawSprite
          textValue = "hackingNG"
          numberValue5 = "DHCompHi"
          textValue2 = 0.5
          flag4 = dataTable
          flag4 = flag4[4]
          flag4 = flag4.val1
          workValue4 = 0.4
          workValue5 = 0.4
          workValue6 = 0
          numberValue7 = 255
          numberValue2 = 255
          numberValue3 = 255
          numberValue4 = 255
          workValue(textValue, numberValue5, textValue2, flag4, workValue4, workValue5, workValue6, numberValue7, numberValue2, numberValue3, numberValue4)
        end
      end
      workValue = dataTable2
      workValue = workValue[5]
      workValue = workValue.val0
      if 1 == workValue then
        workValue = DrawSprite
        textValue = "hackingNG"
        numberValue5 = "DHComp"
        textValue2 = 0.55
        flag4 = dataTable
        flag4 = flag4[5]
        flag4 = flag4.val1
        workValue4 = 0.4
        workValue5 = 0.4
        workValue6 = 0
        numberValue7 = 255
        numberValue2 = 255
        numberValue3 = 255
        numberValue4 = 255
        workValue(textValue, numberValue5, textValue2, flag4, workValue4, workValue5, workValue6, numberValue7, numberValue2, numberValue3, numberValue4)
      else
        workValue = dataTable2
        workValue = workValue[5]
        workValue = workValue.val0
        if 0 == workValue then
          workValue = DrawSprite
          textValue = "hackingNG"
          numberValue5 = "DHCompHi"
          textValue2 = 0.55
          flag4 = dataTable
          flag4 = flag4[5]
          flag4 = flag4.val1
          workValue4 = 0.4
          workValue5 = 0.4
          workValue6 = 0
          numberValue7 = 255
          numberValue2 = 255
          numberValue3 = 255
          numberValue4 = 255
          workValue(textValue, numberValue5, textValue2, flag4, workValue4, workValue5, workValue6, numberValue7, numberValue2, numberValue3, numberValue4)
        end
      end
      workValue = dataTable2
      workValue = workValue[6]
      workValue = workValue.val0
      if 1 == workValue then
        workValue = DrawSprite
        textValue = "hackingNG"
        numberValue5 = "DHComp"
        textValue2 = 0.6
        flag4 = dataTable
        flag4 = flag4[6]
        flag4 = flag4.val1
        workValue4 = 0.4
        workValue5 = 0.4
        workValue6 = 0
        numberValue7 = 255
        numberValue2 = 255
        numberValue3 = 255
        numberValue4 = 255
        workValue(textValue, numberValue5, textValue2, flag4, workValue4, workValue5, workValue6, numberValue7, numberValue2, numberValue3, numberValue4)
      else
        workValue = dataTable2
        workValue = workValue[6]
        workValue = workValue.val0
        if 0 == workValue then
          workValue = DrawSprite
          textValue = "hackingNG"
          numberValue5 = "DHCompHi"
          textValue2 = 0.6
          flag4 = dataTable
          flag4 = flag4[6]
          flag4 = flag4.val1
          workValue4 = 0.4
          workValue5 = 0.4
          workValue6 = 0
          numberValue7 = 255
          numberValue2 = 255
          numberValue3 = 255
          numberValue4 = 255
          workValue(textValue, numberValue5, textValue2, flag4, workValue4, workValue5, workValue6, numberValue7, numberValue2, numberValue3, numberValue4)
        end
      end
      workValue = dataTable2
      workValue = workValue[7]
      workValue = workValue.val0
      if 1 == workValue then
        workValue = DrawSprite
        textValue = "hackingNG"
        numberValue5 = "DHComp"
        textValue2 = 0.65
        flag4 = dataTable
        flag4 = flag4[7]
        flag4 = flag4.val1
        workValue4 = 0.4
        workValue5 = 0.4
        workValue6 = 0
        numberValue7 = 255
        numberValue2 = 255
        numberValue3 = 255
        numberValue4 = 255
        workValue(textValue, numberValue5, textValue2, flag4, workValue4, workValue5, workValue6, numberValue7, numberValue2, numberValue3, numberValue4)
      else
        workValue = dataTable2
        workValue = workValue[7]
        workValue = workValue.val0
        if 0 == workValue then
          workValue = DrawSprite
          textValue = "hackingNG"
          numberValue5 = "DHCompHi"
          textValue2 = 0.65
          flag4 = dataTable
          flag4 = flag4[7]
          flag4 = flag4.val1
          workValue4 = 0.4
          workValue5 = 0.4
          workValue6 = 0
          numberValue7 = 255
          numberValue2 = 255
          numberValue3 = 255
          numberValue4 = 255
          workValue(textValue, numberValue5, textValue2, flag4, workValue4, workValue5, workValue6, numberValue7, numberValue2, numberValue3, numberValue4)
        end
      end
      workValue = flag
      if true == workValue then
        return
      end
      workValue = dataTable2
      workValue = workValue[1]
      workValue = workValue.val4
      if false == workValue then
        workValue = dataTable2
        workValue = workValue[2]
        workValue = workValue.val4
        if false == workValue then
          workValue = dataTable2
          workValue = workValue[3]
          workValue = workValue.val4
          if false == workValue then
            workValue = dataTable2
            workValue = workValue[4]
            workValue = workValue.val4
            if false == workValue then
              workValue = dataTable2
              workValue = workValue[5]
              workValue = workValue.val4
              if false == workValue then
                workValue = dataTable2
                workValue = workValue[6]
                workValue = workValue.val4
                if false == workValue then
                  workValue = dataTable2
                  workValue = workValue[7]
                  workValue = workValue.val4
                  if false == workValue then
                    workValue = PlaySoundFrontend
                    textValue = -1
                    numberValue5 = "HACKING_SUCCESS"
                    textValue2 = ""
                    flag4 = true
                    workValue(textValue, numberValue5, textValue2, flag4)
                    workValue = Citizen
                    workValue = workValue.Wait
                    textValue = 2500
                    workValue(textValue)
                    workValue = true
                    flag = workValue
                    workValue = TriggerEvent
                    textValue = "datacrack"
                    numberValue5 = true
                    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "datacrack".
                    workValue(textValue, numberValue5)
                    workValue = arg2
                    textValue = true
                    workValue(textValue)
                    return
                  end
                end
              end
            end
          end
        end
      end
      workValue = Citizen
      workValue = workValue.Wait
      textValue = 1
      workValue(textValue)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  flag2(flag3)
end
dataTable3.startDataCrackMinigame = workValue2
