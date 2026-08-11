--[[
    LEVEL 1 BEGINNER GUIDE — Stuntsmoke
    ========================================

    File: cmg/prod/client/vehicles/cl_stuntsmoke.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: vehicle gameplay and vehicle systems, specifically the Stuntsmoke feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 7
      * Background threads: 0
      * Always-running loops: 1
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
local dataTable, numberValue6, dataTable2, dataTable3, numberValue7, numberValue8, numberValue9, flag5, textValue4, workValue
dataTable = {}
numberValue6 = -1737346484
dataTable2 = {}
dataTable2.mod = 1
dataTable3 = {}
numberValue7 = 255
numberValue8 = 25
numberValue9 = 25
dataTable3[1] = numberValue7
dataTable3[2] = numberValue8
dataTable3[3] = numberValue9
dataTable2.rgb = dataTable3
dataTable2.debugName = "Red"
dataTable[numberValue6] = dataTable2
numberValue6 = -1915493356
dataTable2 = {}
dataTable2.mod = 2
dataTable3 = {}
numberValue7 = 255
numberValue8 = 179
numberValue9 = 25
dataTable3[1] = numberValue7
dataTable3[2] = numberValue8
dataTable3[3] = numberValue9
dataTable2.rgb = dataTable3
dataTable2.debugName = "Orange"
dataTable[numberValue6] = dataTable2
numberValue6 = -1741930097
dataTable2 = {}
dataTable2.mod = 3
dataTable3 = {}
numberValue7 = 255
numberValue8 = 255
numberValue9 = 25
dataTable3[1] = numberValue7
dataTable3[2] = numberValue8
dataTable3[3] = numberValue9
dataTable2.rgb = dataTable3
dataTable2.debugName = "Yellow"
dataTable[numberValue6] = dataTable2
numberValue6 = 1439605128
dataTable2 = {}
dataTable2.mod = 4
dataTable3 = {}
numberValue7 = 102
numberValue8 = 255
numberValue9 = 25
dataTable3[1] = numberValue7
dataTable3[2] = numberValue8
dataTable3[3] = numberValue9
dataTable2.rgb = dataTable3
dataTable2.debugName = "Green"
dataTable[numberValue6] = dataTable2
numberValue6 = -1974111254
dataTable2 = {}
dataTable2.mod = 5
dataTable3 = {}
numberValue7 = 25
numberValue8 = 25
numberValue9 = 255
dataTable3[1] = numberValue7
dataTable3[2] = numberValue8
dataTable3[3] = numberValue9
dataTable2.rgb = dataTable3
dataTable2.debugName = "Blue"
dataTable[numberValue6] = dataTable2
numberValue6 = -1629924060
dataTable2 = {}
dataTable2.mod = 6
dataTable3 = {}
numberValue7 = 179
numberValue8 = 25
numberValue9 = 255
dataTable3[1] = numberValue7
dataTable3[2] = numberValue8
dataTable3[3] = numberValue9
dataTable2.rgb = dataTable3
dataTable2.debugName = "Purple"
dataTable[numberValue6] = dataTable2
numberValue6 = -1253413535
dataTable2 = {}
dataTable2.mod = 7
dataTable3 = {}
numberValue7 = 255
numberValue8 = 25
numberValue9 = 255
dataTable3[1] = numberValue7
dataTable3[2] = numberValue8
dataTable3[3] = numberValue9
dataTable2.rgb = dataTable3
dataTable2.debugName = "Pink"
dataTable[numberValue6] = dataTable2
numberValue6 = -2024144439
dataTable2 = {}
dataTable2.mod = 8
dataTable3 = {}
numberValue7 = 255
numberValue8 = 255
numberValue9 = 255
dataTable3[1] = numberValue7
dataTable3[2] = numberValue8
dataTable3[3] = numberValue9
dataTable2.rgb = dataTable3
dataTable2.debugName = "White"
dataTable[numberValue6] = dataTable2
numberValue6 = {}
dataTable2 = {}

-- === HELPER FUNCTION (decompiler name: dataTable3; parameters: arg1) ===
function dataTable3(arg1)
  local arg2, arg3, textValue, textValue2, cmgCall, textValue3, numberValue10, numberValue11, numberValue12, flag, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, flag2, flag3, flag4
  arg2 = DecorGetBool
  arg3 = arg1
  textValue = "916cd57ed7"
  arg2 = arg2(arg3, textValue)
  if arg2 then
    arg3 = DecorGetInt
    textValue = arg1
    textValue2 = "b67d156704"
    arg3 = arg3(textValue, textValue2)
    textValue = dataTable
    textValue = textValue[arg3]
    textValue2 = dataTable2
    textValue2 = textValue2[arg1]
    if not textValue2 then
      cmgCall = CMG
      cmgCall = cmgCall.loadPtfx
      textValue3 = "scr_ar_planes"
      cmgCall(textValue3)
      cmgCall = UseParticleFxAsset
      textValue3 = "scr_ar_planes"
      cmgCall(textValue3)
      cmgCall = StartParticleFxLoopedOnEntityBone
      textValue3 = "scr_ar_trail_smoke"
      numberValue10 = arg1
      numberValue11 = 0.0
      numberValue12 = 0.0
      flag = 0.0
      numberValue = 0.0
      numberValue2 = 0.0
      numberValue3 = 0.0
      numberValue4 = -1
      numberValue5 = 1.0
      flag2 = false
      flag3 = false
      flag4 = false
      cmgCall = cmgCall(textValue3, numberValue10, numberValue11, numberValue12, flag, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, flag2, flag3, flag4)
      textValue2 = cmgCall
      cmgCall = RemoveNamedPtfxAsset
      textValue3 = "scr_ar_planes"
      cmgCall(textValue3)
      cmgCall = SetParticleFxLoopedFarClipDist
      textValue3 = textValue2
      numberValue10 = 1000.0
      cmgCall(textValue3, numberValue10)
      cmgCall = dataTable2
      cmgCall[arg1] = textValue2
    end
    cmgCall = SetParticleFxLoopedScale
    textValue3 = textValue2
    numberValue10 = 1.0
    cmgCall(textValue3, numberValue10)
    cmgCall = SetParticleFxLoopedColour
    textValue3 = textValue2
    numberValue10 = textValue.rgb
    numberValue10 = numberValue10[1]
    numberValue10 = numberValue10 / 255
    numberValue10 = numberValue10 + 0.0
    numberValue11 = textValue.rgb
    numberValue11 = numberValue11[2]
    numberValue11 = numberValue11 / 255
    numberValue11 = numberValue11 + 0.0
    numberValue12 = textValue.rgb
    numberValue12 = numberValue12[3]
    numberValue12 = numberValue12 / 255
    numberValue12 = numberValue12 + 0.0
    flag = false
    cmgCall(textValue3, numberValue10, numberValue11, numberValue12, flag)
  else
    arg3 = dataTable2
    arg3 = arg3[arg1]
    if arg3 then
      arg3 = StopParticleFxLooped
      textValue = dataTable2
      textValue = textValue[arg1]
      textValue2 = false
      arg3(textValue, textValue2)
      arg3 = dataTable2
      arg3[arg1] = nil
    end
  end
end
numberValue7 = Citizen
numberValue7 = numberValue7.CreateThread

-- === HELPER FUNCTION (decompiler name: numberValue8; parameters: none) ===
function numberValue8()
  local arg1, arg2, arg3, textValue, textValue2, cmgCall, textValue3, numberValue10, numberValue11, numberValue12
  arg1 = DecorRegister
  arg2 = "b67d156704"
  arg3 = 3
  arg1(arg2, arg3)
  arg1 = DecorRegister
  arg2 = "916cd57ed7"
  arg3 = 2
  arg1(arg2, arg3)
  while true do
    arg1 = pairs
    arg2 = GetActivePlayers
    arg2, arg3, textValue, textValue2, cmgCall, textValue3, numberValue10, numberValue11, numberValue12 = arg2()
    arg1, arg2, arg3, textValue = arg1(arg2, arg3, textValue, textValue2, cmgCall, textValue3, numberValue10, numberValue11, numberValue12)
    for textValue2, cmgCall in arg1, arg2, arg3, textValue do
      textValue3 = GetPlayerPed
      numberValue10 = cmgCall
      -- Beginner: result below is playerPed.
      textValue3 = textValue3(numberValue10)
      if 0 ~= textValue3 then
        numberValue10 = GetVehiclePedIsUsing
        numberValue11 = textValue3
        numberValue10 = numberValue10(numberValue11)
        if 0 ~= numberValue10 then
          numberValue11 = dataTable3
          numberValue12 = numberValue10
          numberValue11(numberValue12)
        end
      end
    end
    arg1 = pairs
    arg2 = dataTable2
    arg1, arg2, arg3, textValue = arg1(arg2)
    for textValue2, cmgCall in arg1, arg2, arg3, textValue do
      textValue3 = DoesEntityExist
      numberValue10 = textValue2
      textValue3 = textValue3(numberValue10)
      if not textValue3 then
        textValue3 = StopParticleFxLooped
        numberValue10 = cmgCall
        numberValue11 = false
        textValue3(numberValue10, numberValue11)
        textValue3 = dataTable2
        textValue3[textValue2] = nil
      end
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 1000
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
numberValue7(numberValue8)
numberValue7 = RegisterCommand
numberValue8 = "setsmoke"
-- Beginner: this function is the command handler for "setsmoke".

-- === HELPER FUNCTION (decompiler name: numberValue9; parameters: arg1, arg2) ===
function numberValue9(arg1, arg2)
  local arg3, textValue, textValue2, cmgCall, textValue3, numberValue10, numberValue11, numberValue12
  arg3 = CMG
  arg3 = arg3.getPlayerVehicle
  arg3, textValue = arg3()
  if 0 == arg3 or not textValue then
    return
  end
  textValue2 = DecorGetInt
  cmgCall = arg3
  textValue3 = "0a6cf607ed"
  textValue2 = textValue2(cmgCall, textValue3)
  if not (textValue2 <= 0) then
    cmgCall = numberValue6
    cmgCall = cmgCall[textValue2]
    if cmgCall then
      goto flow_label_23
    end
  end
  cmgCall = notify
  textValue3 = "~r~You can not set the smoke colour of this vehicle"
  -- Beginner: Show a notification to the player.
  cmgCall(textValue3)
  return
  ::flow_label_23::
  cmgCall = #arg2
  if 1 ~= cmgCall then
    cmgCall = notify
    textValue3 = "~r~No smoke colour was specified"
    cmgCall(textValue3)
    return
  end
  cmgCall = GetHashKey
  textValue3 = arg2[1]
  -- Beginner: result below is hash.
  cmgCall = cmgCall(textValue3)
  textValue3 = dataTable
  textValue3 = textValue3[cmgCall]
  if not textValue3 then
    textValue3 = notify
    numberValue10 = "~r~The specified smoke colour does not exist"
    -- Beginner: Show a notification to the player.
    textValue3(numberValue10)
    return
  end
  textValue3 = numberValue6
  textValue3 = textValue3[textValue2]
  numberValue10 = tostring
  numberValue11 = dataTable
  numberValue11 = numberValue11[cmgCall]
  numberValue11 = numberValue11.mod
  numberValue10 = numberValue10(numberValue11)
  textValue3 = textValue3[numberValue10]
  textValue3 = not textValue3
  if nil == textValue3 then
    textValue3 = notify
    numberValue10 = "~r~You have not purchased this colour in LS Customs"
    textValue3(numberValue10)
    return
  end
  textValue3 = DecorSetInt
  numberValue10 = arg3
  numberValue11 = "b67d156704"
  numberValue12 = cmgCall
  textValue3(numberValue10, numberValue11, numberValue12)
  textValue3 = dataTable3
  numberValue10 = arg3
  textValue3(numberValue10)
end
flag5 = false
-- Beginner: Register a chat/console command. Event/command: "setsmoke".
numberValue7(numberValue8, numberValue9, flag5)
numberValue7 = RegisterCommand
numberValue8 = "togglesmoke"
-- Beginner: this function is the command handler for "togglesmoke".

-- === HELPER FUNCTION (decompiler name: numberValue9; parameters: none) ===
function numberValue9()
  local arg1, arg2, arg3, textValue, textValue2, cmgCall, textValue3
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  arg1, arg2 = arg1()
  if 0 == arg1 or not arg2 then
    return
  end
  arg3 = IsThisModelAPlane
  textValue = GetEntityModel
  textValue2 = arg1
  textValue, textValue2, cmgCall, textValue3 = textValue(textValue2)
  arg3 = arg3(textValue, textValue2, cmgCall, textValue3)
  if not arg3 then
    return
  end
  arg3 = DecorGetInt
  textValue = arg1
  textValue2 = "b67d156704"
  arg3 = arg3(textValue, textValue2)
  if 0 == arg3 then
    arg3 = notify
    textValue = "No smoke colour has been set or purchased for this vehicle"
    -- Beginner: Show a notification to the player.
    arg3(textValue)
    return
  end
  arg3 = DecorGetBool
  textValue = arg1
  textValue2 = "916cd57ed7"
  arg3 = arg3(textValue, textValue2)
  arg3 = not arg3
  textValue = DecorSetBool
  textValue2 = arg1
  cmgCall = "916cd57ed7"
  textValue3 = arg3
  textValue(textValue2, cmgCall, textValue3)
  textValue = dataTable3
  textValue2 = arg1
  textValue(textValue2)
end
flag5 = false
-- Beginner: Register a chat/console command. Event/command: "togglesmoke".
numberValue7(numberValue8, numberValue9, flag5)
numberValue7 = RegisterKeyMapping
numberValue8 = "togglesmoke"
numberValue9 = "Toggle Plane Stunt Smoke"
flag5 = "KEYBOARD"
textValue4 = "G"
-- Beginner: Bind a command to a keyboard/controller key.
numberValue7(numberValue8, numberValue9, flag5, textValue4)
numberValue7 = CMG

-- === HELPER FUNCTION (decompiler name: numberValue8; parameters: arg1, arg2, arg3) ===
function numberValue8(arg1, arg2, arg3)
  local textValue, textValue2, cmgCall, textValue3, numberValue10, numberValue11, numberValue12, flag, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, flag2, flag3, flag4
  textValue = numberValue6
  textValue[arg2] = arg3
  textValue = pairs
  textValue2 = arg3
  textValue, textValue2, cmgCall, textValue3 = textValue(textValue2)
  for numberValue10, numberValue11 in textValue, textValue2, cmgCall, textValue3 do
    if true == numberValue11 then
      numberValue12 = pairs
      flag = dataTable
      numberValue12, flag, numberValue, numberValue2 = numberValue12(flag)
      for numberValue3, numberValue4 in numberValue12, flag, numberValue, numberValue2 do
        numberValue5 = numberValue4.mod
        flag2 = tonumber
        flag3 = numberValue10
        flag2 = flag2(flag3)
        if numberValue5 == flag2 then
          numberValue5 = DecorSetInt
          flag2 = arg1
          flag3 = "b67d156704"
          flag4 = numberValue3
          numberValue5(flag2, flag3, flag4)
          break
        end
      end
    end
  end
end
numberValue7.setVehicleIdPlaneSmoke = numberValue8

-- === HELPER FUNCTION (decompiler name: numberValue7; parameters: arg1) ===
function numberValue7(arg1)
  local arg2, arg3, textValue, textValue2, cmgCall, textValue3, numberValue10, numberValue11
  arg2 = GetEntityModel
  arg3 = arg1
  -- Beginner: result below is modelHash.
  arg2 = arg2(arg3)
  arg3 = IsThisModelAPlane
  textValue = arg2
  arg3 = arg3(textValue)
  if not arg3 then
    arg3 = ""
    return arg3
  end
  arg3 = nil
  textValue = DecorGetInt
  textValue2 = arg1
  cmgCall = "b67d156704"
  textValue = textValue(textValue2, cmgCall)
  textValue2 = dataTable
  textValue2 = textValue2[textValue]
  if textValue2 then
    textValue2 = dataTable
    textValue2 = textValue2[textValue]
    arg3 = textValue2.debugName
  elseif 0 == textValue then
    arg3 = "Not Set"
  else
    textValue2 = tostring
    cmgCall = textValue
    textValue2 = textValue2(cmgCall)
    arg3 = textValue2
  end
  textValue2 = string
  textValue2 = textValue2.format
  cmgCall = [[
Smoke Enabled: %s
Smoke Type: %s]]
  textValue3 = DecorGetBool
  numberValue10 = arg1
  numberValue11 = "916cd57ed7"
  textValue3 = textValue3(numberValue10, numberValue11)
  if textValue3 then
    textValue3 = "Yes"
    if textValue3 then
      goto flow_label_45
    end
  end
  textValue3 = "No"
  ::flow_label_45::
  numberValue10 = arg3
  return textValue2(cmgCall, textValue3, numberValue10)
end
numberValue8 = CMG
numberValue8 = numberValue8.registerDevMenuEntityEditor
numberValue9 = "Stunt Smoke"
flag5 = "vehicle"
textValue4 = numberValue7

-- === HELPER FUNCTION (decompiler name: workValue; parameters: none) ===
function workValue()
  local arg1, arg2
end
numberValue8(numberValue9, flag5, textValue4, workValue)
