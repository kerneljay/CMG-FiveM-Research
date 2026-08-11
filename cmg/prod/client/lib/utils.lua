--[[
    LEVEL 1 BEGINNER GUIDE — Utils
    ===================================

    File: cmg/prod/client/lib/utils.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: the Utils feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 22
      * Background threads: 0
      * Always-running loops: 0
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
local dataTable, flag, cmgCall5, workValue2, workValue4, workValue6, stringHelper, tableHelper2, workValue7, workValue9, cmgCall, cmgCall2, cmgCall3, cmgCall4, textValue5, workValue
dataTable = {}
flag = true
cmgCall5 = CMG

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1, arg2) ===
function workValue2(arg1, arg2)
  local arg3, textValue32, workValue5, cmgCall6, textValue49, textValue50, workValue8, textValue51, textValue, textValue2, textValue3, textValue4
  if nil == arg2 then
    arg2 = arg1
    arg1 = "cmg"
  end
  arg3 = flag
  if not arg3 then
    arg3 = CMG
    arg3 = arg3.warn
    textValue32 = "Failed to load "
    workValue5 = arg1
    cmgCall6 = "/"
    textValue49 = arg2
    textValue50 = ", isLoadingFiles is false"
    textValue32 = textValue32 .. workValue5 .. cmgCall6 .. textValue49 .. textValue50
    arg3(textValue32)
    arg3 = {}
    return arg3
  end
  arg3 = arg1
  textValue32 = arg2
  arg3 = arg3 .. textValue32
  textValue32 = dataTable
  textValue32 = textValue32[arg3]
  if textValue32 then
    textValue32 = table
    textValue32 = textValue32.unpack
    workValue5 = dataTable
    workValue5 = workValue5[arg3]
    return textValue32(workValue5)
  else
    textValue32 = CMG
    textValue32 = textValue32.loadResourceFile
    workValue5 = arg1
    cmgCall6 = arg2
    textValue49 = ".lua"
    cmgCall6 = cmgCall6 .. textValue49
    textValue32 = textValue32(workValue5, cmgCall6)
    if not textValue32 then
      workValue5 = CMG
      workValue5 = workValue5.warn
      cmgCall6 = "[CMG] Failed to CMG.loadResourceFile "
      textValue49 = arg1
      textValue50 = "/"
      workValue8 = arg2
      cmgCall6 = cmgCall6 .. textValue49 .. textValue50 .. workValue8
      workValue5(cmgCall6)
      workValue5 = {}
      return workValue5
    end
    workValue5 = load
    cmgCall6 = textValue32
    workValue5, cmgCall6 = workValue5(cmgCall6)
    if workValue5 then
      textValue49 = {}
      textValue50 = pcall
      workValue8 = workValue5
      textValue50, workValue8, textValue51, textValue, textValue2, textValue3, textValue4 = textValue50(workValue8)
      textValue49[1] = textValue50
      textValue49[2] = workValue8
      textValue49[3] = textValue51
      textValue49[4] = textValue
      textValue49[5] = textValue2
      textValue49[6] = textValue3
      textValue49[7] = textValue4
      textValue50 = textValue49[1]
      if textValue50 then
        textValue50 = table
        textValue50 = textValue50.remove
        workValue8 = textValue49
        textValue51 = 1
        textValue50(workValue8, textValue51)
        textValue50 = dataTable
        textValue50[arg3] = textValue49
        textValue50 = table
        textValue50 = textValue50.unpack
        workValue8 = textValue49
        return textValue50(workValue8)
      else
        textValue50 = dataTable
        textValue50[arg3] = nil
        textValue50 = CMG
        textValue50 = textValue50.warn
        workValue8 = "[CMG] error loading module "
        textValue51 = arg1
        textValue = "/"
        textValue2 = arg2
        textValue3 = ":"
        textValue4 = textValue49[2]
        workValue8 = workValue8 .. textValue51 .. textValue .. textValue2 .. textValue3 .. textValue4
        textValue50(workValue8)
      end
    else
      textValue49 = CMG
      textValue49 = textValue49.warn
      textValue50 = "[CMG] error parsing module "
      workValue8 = arg1
      textValue51 = "/"
      textValue = arg2
      textValue2 = ":"
      textValue3 = cmgCall6
      textValue50 = textValue50 .. workValue8 .. textValue51 .. textValue .. textValue2 .. textValue3
      textValue49(textValue50)
    end
  end
  textValue32 = {}
  return textValue32
end
cmgCall5.loadModule = workValue2

-- === HELPER FUNCTION (decompiler name: cmgCall5; parameters: arg1, arg2, arg3) ===
function cmgCall5(arg1, arg2, arg3)
  local textValue32, workValue5
  textValue32 = arg1 >> arg2
  workValue5 = 1 << arg3
  workValue5 = workValue5 - 1
  textValue32 = textValue32 & workValue5
  return textValue32
end

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1, arg2, arg3) ===
function workValue2(arg1, arg2, arg3)
  local textValue32, workValue5, cmgCall6, textValue49, textValue50, workValue8, textValue51, textValue, textValue2, textValue3, textValue4, textValue6, textValue7, textValue8, textValue9, textValue10, textValue11, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18, textValue19, textValue20, textValue21, textValue22, textValue23, textValue24, textValue25, textValue26, textValue27, textValue28, textValue29, textValue30, textValue31, textValue33, textValue34, textValue35, textValue36, textValue37, textValue38, textValue39, textValue40, textValue41, textValue42, textValue43, textValue44, textValue45, textValue46, textValue47, textValue48
  textValue32 = {}
  workValue5 = pairs
  cmgCall6 = {}
  cmgCall6[0] = "A"
  textValue49 = "B"
  textValue50 = "C"
  workValue8 = "D"
  textValue51 = "E"
  textValue = "F"
  textValue2 = "G"
  textValue3 = "H"
  textValue4 = "I"
  textValue6 = "J"
  textValue7 = "K"
  textValue8 = "L"
  textValue9 = "M"
  textValue10 = "N"
  textValue11 = "O"
  textValue12 = "P"
  textValue13 = "Q"
  textValue14 = "R"
  textValue15 = "S"
  textValue16 = "T"
  textValue17 = "U"
  textValue18 = "V"
  textValue19 = "W"
  textValue20 = "X"
  textValue21 = "Y"
  textValue22 = "Z"
  textValue23 = "a"
  textValue24 = "b"
  textValue25 = "c"
  textValue26 = "d"
  textValue27 = "e"
  textValue28 = "f"
  textValue29 = "g"
  textValue30 = "h"
  textValue31 = "i"
  textValue33 = "j"
  textValue34 = "k"
  textValue35 = "l"
  textValue36 = "m"
  textValue37 = "n"
  textValue38 = "o"
  textValue39 = "p"
  textValue40 = "q"
  textValue41 = "r"
  textValue42 = "s"
  textValue43 = "t"
  textValue44 = "u"
  textValue45 = "v"
  textValue46 = "w"
  textValue47 = "x"
  textValue48 = "y"
  cmgCall6[1] = textValue49
  cmgCall6[2] = textValue50
  cmgCall6[3] = workValue8
  cmgCall6[4] = textValue51
  cmgCall6[5] = textValue
  cmgCall6[6] = textValue2
  cmgCall6[7] = textValue3
  cmgCall6[8] = textValue4
  cmgCall6[9] = textValue6
  cmgCall6[10] = textValue7
  cmgCall6[11] = textValue8
  cmgCall6[12] = textValue9
  cmgCall6[13] = textValue10
  cmgCall6[14] = textValue11
  cmgCall6[15] = textValue12
  cmgCall6[16] = textValue13
  cmgCall6[17] = textValue14
  cmgCall6[18] = textValue15
  cmgCall6[19] = textValue16
  cmgCall6[20] = textValue17
  cmgCall6[21] = textValue18
  cmgCall6[22] = textValue19
  cmgCall6[23] = textValue20
  cmgCall6[24] = textValue21
  cmgCall6[25] = textValue22
  cmgCall6[26] = textValue23
  cmgCall6[27] = textValue24
  cmgCall6[28] = textValue25
  cmgCall6[29] = textValue26
  cmgCall6[30] = textValue27
  cmgCall6[31] = textValue28
  cmgCall6[32] = textValue29
  cmgCall6[33] = textValue30
  cmgCall6[34] = textValue31
  cmgCall6[35] = textValue33
  cmgCall6[36] = textValue34
  cmgCall6[37] = textValue35
  cmgCall6[38] = textValue36
  cmgCall6[39] = textValue37
  cmgCall6[40] = textValue38
  cmgCall6[41] = textValue39
  cmgCall6[42] = textValue40
  cmgCall6[43] = textValue41
  cmgCall6[44] = textValue42
  cmgCall6[45] = textValue43
  cmgCall6[46] = textValue44
  cmgCall6[47] = textValue45
  cmgCall6[48] = textValue46
  cmgCall6[49] = textValue47
  cmgCall6[50] = textValue48
  textValue49 = "z"
  textValue50 = "0"
  workValue8 = "1"
  textValue51 = "2"
  textValue = "3"
  textValue2 = "4"
  textValue3 = "5"
  textValue4 = "6"
  textValue6 = "7"
  textValue7 = "8"
  textValue8 = "9"
  textValue9 = arg1 or textValue9
  if not arg1 then
    textValue9 = "+"
  end
  textValue10 = arg2 or textValue10
  if not arg2 then
    textValue10 = "/"
  end
  textValue11 = arg3 or textValue11
  if not arg3 then
    textValue11 = "="
  end
  cmgCall6[51] = textValue49
  cmgCall6[52] = textValue50
  cmgCall6[53] = workValue8
  cmgCall6[54] = textValue51
  cmgCall6[55] = textValue
  cmgCall6[56] = textValue2
  cmgCall6[57] = textValue3
  cmgCall6[58] = textValue4
  cmgCall6[59] = textValue6
  cmgCall6[60] = textValue7
  cmgCall6[61] = textValue8
  cmgCall6[62] = textValue9
  cmgCall6[63] = textValue10
  cmgCall6[64] = textValue11
  workValue5, cmgCall6, textValue49, textValue50 = workValue5(cmgCall6)
  for workValue8, textValue51 in workValue5, cmgCall6, textValue49, textValue50 do
    textValue = string
    textValue = textValue.byte
    textValue2 = textValue51
    textValue = textValue(textValue2)
    textValue32[workValue8] = textValue
  end
  return textValue32
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1, arg2, arg3) ===
function workValue4(arg1, arg2, arg3)
  local textValue32, workValue5, cmgCall6, textValue49, textValue50, workValue8, textValue51, textValue
  textValue32 = {}
  workValue5 = pairs
  cmgCall6 = workValue2
  textValue49 = arg1
  textValue50 = arg2
  workValue8 = arg3
  cmgCall6, textValue49, textValue50, workValue8, textValue51, textValue = cmgCall6(textValue49, textValue50, workValue8)
  workValue5, cmgCall6, textValue49, textValue50 = workValue5(cmgCall6, textValue49, textValue50, workValue8, textValue51, textValue)
  for workValue8, textValue51 in workValue5, cmgCall6, textValue49, textValue50 do
    textValue32[textValue51] = workValue8
  end
  return textValue32
end
workValue6 = workValue4
workValue6 = workValue6()
stringHelper = string
stringHelper = stringHelper.char
tableHelper2 = table
tableHelper2 = tableHelper2.concat

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2, arg3) ===
function workValue7(arg1, arg2, arg3)
  local textValue32, workValue5, cmgCall6, textValue49, textValue50, workValue8, textValue51, textValue, textValue2, textValue3, textValue4, textValue6, textValue7, textValue8, textValue9, textValue10, textValue11, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18
  if not arg2 then
    arg2 = workValue6
  end
  textValue32 = "[^%w%+%/%=]"
  if arg2 then
    workValue5 = nil
    cmgCall6 = nil
    textValue49 = pairs
    textValue50 = arg2
    textValue49, textValue50, workValue8, textValue51 = textValue49(textValue50)
    for textValue, textValue2 in textValue49, textValue50, workValue8, textValue51 do
      if 62 == textValue2 then
        workValue5 = textValue
      elseif 63 == textValue2 then
        cmgCall6 = textValue
      end
    end
    textValue49 = string
    textValue49 = textValue49.format
    textValue50 = "[^%%w%%%s%%%s%%=]"
    workValue8 = stringHelper
    textValue51 = workValue5
    workValue8 = workValue8(textValue51)
    textValue51 = stringHelper
    textValue = cmgCall6
    textValue51, textValue, textValue2, textValue3, textValue4, textValue6, textValue7, textValue8, textValue9, textValue10, textValue11, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18 = textValue51(textValue)
    textValue49 = textValue49(textValue50, workValue8, textValue51, textValue, textValue2, textValue3, textValue4, textValue6, textValue7, textValue8, textValue9, textValue10, textValue11, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18)
    textValue32 = textValue49
  end
  cmgCall6 = arg1
  workValue5 = arg1.gsub
  textValue49 = textValue32
  textValue50 = ""
  workValue5 = workValue5(cmgCall6, textValue49, textValue50)
  arg1 = workValue5
  workValue5 = arg3 or workValue5
  if arg3 then
    workValue5 = {}
  end
  cmgCall6 = {}
  textValue49 = 1
  textValue50 = #arg1
  textValue51 = arg1
  workValue8 = arg1.sub
  textValue = -2
  workValue8 = workValue8(textValue51, textValue)
  if "==" == workValue8 then
    workValue8 = 2
    if workValue8 then
      goto flow_label_63
    end
  end
  textValue51 = arg1
  workValue8 = arg1.sub
  textValue = -1
  workValue8 = workValue8(textValue51, textValue)
  if "=" == workValue8 then
    workValue8 = 1
    if workValue8 then
      goto flow_label_63
    end
  end
  workValue8 = 0
  ::flow_label_63::
  textValue51 = 1
  if workValue8 > 0 then
    textValue = textValue50 - 4
    if textValue then
      goto flow_label_71
    end
  end
  textValue = textValue50
  ::flow_label_71::
  textValue2 = 4
  for textValue3 = textValue51, textValue, textValue2 do
    textValue6 = arg1
    textValue4 = arg1.byte
    textValue7 = textValue3
    textValue8 = textValue3 + 3
    textValue4, textValue6, textValue7, textValue8 = textValue4(textValue6, textValue7, textValue8)
    textValue9 = nil
    if arg3 then
      textValue10 = textValue4 * 16777216
      textValue11 = textValue6 * 65536
      textValue10 = textValue10 + textValue11
      textValue11 = textValue7 * 256
      textValue10 = textValue10 + textValue11
      textValue10 = textValue10 + textValue8
      textValue9 = workValue5[textValue10]
      if not textValue9 then
        textValue11 = arg2[textValue4]
        textValue11 = textValue11 * 262144
        textValue12 = arg2[textValue6]
        textValue12 = textValue12 * 4096
        textValue11 = textValue11 + textValue12
        textValue12 = arg2[textValue7]
        textValue12 = textValue12 * 64
        textValue11 = textValue11 + textValue12
        textValue12 = arg2[textValue8]
        textValue11 = textValue11 + textValue12
        textValue12 = stringHelper
        textValue13 = cmgCall5
        textValue14 = textValue11
        textValue15 = 16
        textValue16 = 8
        textValue13 = textValue13(textValue14, textValue15, textValue16)
        textValue14 = cmgCall5
        textValue15 = textValue11
        textValue16 = 8
        textValue17 = 8
        textValue14 = textValue14(textValue15, textValue16, textValue17)
        textValue15 = cmgCall5
        textValue16 = textValue11
        textValue17 = 0
        textValue18 = 8
        textValue15, textValue16, textValue17, textValue18 = textValue15(textValue16, textValue17, textValue18)
        textValue12 = textValue12(textValue13, textValue14, textValue15, textValue16, textValue17, textValue18)
        textValue9 = textValue12
        workValue5[textValue10] = textValue9
      end
    else
      textValue10 = arg2[textValue4]
      textValue10 = textValue10 * 262144
      textValue11 = arg2[textValue6]
      textValue11 = textValue11 * 4096
      textValue10 = textValue10 + textValue11
      textValue11 = arg2[textValue7]
      textValue11 = textValue11 * 64
      textValue10 = textValue10 + textValue11
      textValue11 = arg2[textValue8]
      textValue10 = textValue10 + textValue11
      textValue11 = stringHelper
      textValue12 = cmgCall5
      textValue13 = textValue10
      textValue14 = 16
      textValue15 = 8
      textValue12 = textValue12(textValue13, textValue14, textValue15)
      textValue13 = cmgCall5
      textValue14 = textValue10
      textValue15 = 8
      textValue16 = 8
      textValue13 = textValue13(textValue14, textValue15, textValue16)
      textValue14 = cmgCall5
      textValue15 = textValue10
      textValue16 = 0
      textValue17 = 8
      textValue14, textValue15, textValue16, textValue17, textValue18 = textValue14(textValue15, textValue16, textValue17)
      textValue11 = textValue11(textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18)
      textValue9 = textValue11
    end
    cmgCall6[textValue49] = textValue9
    textValue49 = textValue49 + 1
  end
  if 1 == workValue8 then
    textValue = arg1
    textValue51 = arg1.byte
    textValue2 = textValue50 - 3
    textValue3 = textValue50 - 1
    textValue51, textValue, textValue2 = textValue51(textValue, textValue2, textValue3)
    textValue3 = arg2[textValue51]
    textValue3 = textValue3 * 262144
    textValue4 = arg2[textValue]
    textValue4 = textValue4 * 4096
    textValue3 = textValue3 + textValue4
    textValue4 = arg2[textValue2]
    textValue4 = textValue4 * 64
    textValue3 = textValue3 + textValue4
    textValue4 = stringHelper
    textValue6 = cmgCall5
    textValue7 = textValue3
    textValue8 = 16
    textValue9 = 8
    textValue6 = textValue6(textValue7, textValue8, textValue9)
    textValue7 = cmgCall5
    textValue8 = textValue3
    textValue9 = 8
    textValue10 = 8
    textValue7, textValue8, textValue9, textValue10, textValue11, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18 = textValue7(textValue8, textValue9, textValue10)
    textValue4 = textValue4(textValue6, textValue7, textValue8, textValue9, textValue10, textValue11, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18)
    cmgCall6[textValue49] = textValue4
  elseif 2 == workValue8 then
    textValue = arg1
    textValue51 = arg1.byte
    textValue2 = textValue50 - 3
    textValue3 = textValue50 - 2
    textValue51, textValue = textValue51(textValue, textValue2, textValue3)
    textValue2 = arg2[textValue51]
    textValue2 = textValue2 * 262144
    textValue3 = arg2[textValue]
    textValue3 = textValue3 * 4096
    textValue2 = textValue2 + textValue3
    textValue3 = stringHelper
    textValue4 = cmgCall5
    textValue6 = textValue2
    textValue7 = 16
    textValue8 = 8
    textValue4, textValue6, textValue7, textValue8, textValue9, textValue10, textValue11, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18 = textValue4(textValue6, textValue7, textValue8)
    textValue3 = textValue3(textValue4, textValue6, textValue7, textValue8, textValue9, textValue10, textValue11, textValue12, textValue13, textValue14, textValue15, textValue16, textValue17, textValue18)
    cmgCall6[textValue49] = textValue3
  end
  textValue51 = tableHelper2
  textValue = cmgCall6
  return textValue51(textValue)
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2) ===
function workValue9(arg1, arg2)
  local arg3, textValue32, workValue5, cmgCall6, textValue49, textValue50, workValue8, textValue51, textValue, textValue2, textValue3, textValue4, textValue6, textValue7
  arg3 = flag
  if not arg3 then
    return arg2
  end
  arg3 = string
  arg3 = arg3.find
  textValue32 = arg1
  workValue5 = "cfg"
  arg3 = arg3(textValue32, workValue5)
  if not arg3 or arg3 <= 0 then
    return arg2
  end
  textValue32 = string
  textValue32 = textValue32.sub
  workValue5 = arg1
  cmgCall6 = arg3 + 4
  textValue49 = -1
  textValue32 = textValue32(workValue5, cmgCall6, textValue49)
  workValue5 = GetHashKey
  cmgCall6 = textValue32
  -- Beginner: result below is hash.
  workValue5 = workValue5(cmgCall6)
  cmgCall6 = table
  cmgCall6 = cmgCall6.create
  textValue49 = #arg2
  textValue50 = 0
  cmgCall6 = cmgCall6(textValue49, textValue50)
  textValue49 = 5
  textValue50 = #arg2
  workValue8 = 1
  for textValue51 = textValue49, textValue50, workValue8 do
    textValue = string
    textValue = textValue.byte
    textValue2 = arg2
    textValue3 = textValue51
    textValue = textValue(textValue2, textValue3)
    textValue2 = textValue51 % 8
    textValue2 = textValue2 * 4
    textValue2 = workValue5 >> textValue2
    textValue2 = textValue2 & 15
    textValue3 = textValue2 + textValue51
    textValue3 = textValue3 % 63
    textValue3 = textValue - textValue3
    textValue4 = textValue51 - 4
    textValue6 = string
    textValue6 = textValue6.char
    textValue7 = textValue3
    textValue6 = textValue6(textValue7)
    cmgCall6[textValue4] = textValue6
  end
  textValue49 = workValue7
  textValue50 = table
  textValue50 = textValue50.concat
  workValue8 = cmgCall6
  textValue50, workValue8, textValue51, textValue, textValue2, textValue3, textValue4, textValue6, textValue7 = textValue50(workValue8)
  return textValue49(textValue50, workValue8, textValue51, textValue, textValue2, textValue3, textValue4, textValue6, textValue7)
end
cmgCall = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1, arg2) ===
function cmgCall2(arg1, arg2)
  local arg3, textValue32, workValue5, cmgCall6, textValue49
  arg3 = nil
  textValue32 = IsDuplicityVersion
  textValue32 = textValue32()
  if textValue32 then
    textValue32 = GetConvarInt
    workValue5 = "serverNum"
    cmgCall6 = 0
    textValue32 = textValue32(workValue5, cmgCall6)
    if 0 ~= textValue32 then
      goto flow_label_17
    end
  end
  textValue32 = LoadResourceFile
  workValue5 = arg1
  cmgCall6 = arg2
  textValue32 = textValue32(workValue5, cmgCall6)
  arg3 = textValue32
  ::flow_label_17::
  if not arg3 then
    textValue32 = LoadResourceFile
    workValue5 = arg1
    cmgCall6 = "prod/"
    textValue49 = arg2
    cmgCall6 = cmgCall6 .. textValue49
    textValue32 = textValue32(workValue5, cmgCall6)
    arg3 = textValue32
  end
  if arg3 then
    textValue32 = #arg3
    if textValue32 > 4 then
      textValue32 = string
      textValue32 = textValue32.sub
      workValue5 = arg3
      cmgCall6 = 1
      textValue49 = 4
      textValue32 = textValue32(workValue5, cmgCall6, textValue49)
      if "CMGP" == textValue32 then
        textValue32 = workValue9
        workValue5 = arg2
        cmgCall6 = arg3
        textValue32 = textValue32(workValue5, cmgCall6)
        arg3 = textValue32
      end
    end
  end
  return arg3
end
cmgCall.loadResourceFile = cmgCall2
cmgCall = nil
cmgCall2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1, arg2) ===
function cmgCall3(arg1, arg2)
  local arg3, textValue32
  arg3 = type
  textValue32 = arg1
  arg3 = arg3(textValue32)
  if "boolean" == arg3 then
    arg3 = type
    textValue32 = arg2
    arg3 = arg3(textValue32)
    if "number" == arg3 then
      arg3 = GetFrameCount
      arg3 = arg3()
      if arg2 == arg3 then
        arg3 = string
        arg3 = arg3.dump
        textValue32 = CMG
        textValue32 = textValue32.setGameplayTask
        arg3 = arg3(textValue32)
        textValue32 = cmgCall
        if arg3 == textValue32 then
          flag = arg1
        end
      end
    end
  end
end
cmgCall2.setGameplayTask = cmgCall3
cmgCall2 = string
cmgCall2 = cmgCall2.dump
cmgCall3 = CMG
cmgCall3 = cmgCall3.setGameplayTask
cmgCall2 = cmgCall2(cmgCall3)
cmgCall = cmgCall2
cmgCall2 = IsDuplicityVersion
cmgCall2 = cmgCall2()
if not cmgCall2 then
  cmgCall2 = Citizen
  cmgCall2 = cmgCall2.CreateThread

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
  function cmgCall3()
    local arg1, arg2
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 0
    arg1(arg2)
    arg1 = false
    flag = arg1
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  cmgCall2(cmgCall3)
end

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1, arg2, arg3) ===
function cmgCall2(arg1, arg2, arg3)
  local textValue32, workValue5, cmgCall6, textValue49, textValue50, workValue8
  if nil == arg3 then
    arg3 = 5000
  end
  textValue32 = {}
  textValue32.done = false

  -- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg12) ===
  function workValue5(arg12)
    local arg22, tableHelper, workValue3
    arg22 = textValue32.done
    if not arg22 then
      if nil == arg12 then
        arg22 = arg2
        arg12 = arg22 or arg12
        if not arg22 then
          arg22 = {}
          arg12 = arg22
        end
      end
      textValue32.done = true
      arg22 = arg1
      tableHelper = table
      tableHelper = tableHelper.unpack
      workValue3 = arg12
      tableHelper, workValue3 = tableHelper(workValue3)
      arg22(tableHelper, workValue3)
    end
  end
  cmgCall6 = setmetatable
  textValue49 = textValue32
  textValue50 = {}

  -- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg12, arg22) ===
  function workValue8(arg12, arg22)
    local tableHelper, workValue3
    tableHelper = workValue5
    workValue3 = arg22
    tableHelper(workValue3)
  end
  textValue50.__call = workValue8
  cmgCall6(textValue49, textValue50)
  cmgCall6 = SetTimeout
  textValue49 = arg3

  -- === HELPER FUNCTION (decompiler name: textValue50; parameters: none) ===
  function textValue50()
    local arg12, arg22
    arg12 = workValue5
    arg22 = arg2
    arg12(arg22)
  end
  cmgCall6(textValue49, textValue50)
  return textValue32
end
Task = cmgCall2

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, arg3, textValue32
  arg2 = tonumber
  arg3 = arg1
  arg2 = arg2(arg3)
  if nil == arg2 then
    arg3 = 0
    return arg3
  else
    arg3 = math
    arg3 = arg3.floor
    textValue32 = arg2
    return arg3(textValue32)
  end
end
parseInt = cmgCall2

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, arg3
  arg2 = tonumber
  arg3 = arg1
  arg2 = arg2(arg3)
  if nil == arg2 then
    arg2 = 0
  end
  return arg2
end
parseDouble = cmgCall2

-- === HELPER FUNCTION (decompiler name: cmgCall2; parameters: arg1) ===
function cmgCall2(arg1)
  local arg2, arg3
  arg2 = parseDouble
  arg3 = arg1
  return arg2(arg3)
end
parseFloat = cmgCall2
cmgCall2 = {}

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1, arg2, arg3) ===
function cmgCall3(arg1, arg2, arg3)
  local textValue32, workValue5, cmgCall6, textValue49, textValue50, workValue8, textValue51, textValue, textValue2, textValue3, textValue4
  textValue32 = ""
  workValue5 = cmgCall2
  workValue5 = workValue5[arg2]
  if nil == workValue5 then
    cmgCall6 = {}
    workValue5 = cmgCall6
    cmgCall6 = string
    cmgCall6 = cmgCall6.len
    textValue49 = arg2
    cmgCall6 = cmgCall6(textValue49)
    textValue49 = 1
    textValue50 = cmgCall6
    workValue8 = 1
    for textValue51 = textValue49, textValue50, workValue8 do
      textValue = string
      textValue = textValue.sub
      textValue2 = arg2
      textValue3 = textValue51
      textValue4 = textValue51
      textValue = textValue(textValue2, textValue3, textValue4)
      workValue5[textValue] = true
    end
    textValue49 = cmgCall2
    textValue49[arg2] = workValue5
  end
  cmgCall6 = string
  cmgCall6 = cmgCall6.len
  textValue49 = arg1
  cmgCall6 = cmgCall6(textValue49)
  textValue49 = 1
  textValue50 = cmgCall6
  workValue8 = 1
  for textValue51 = textValue49, textValue50, workValue8 do
    textValue = string
    textValue = textValue.sub
    textValue2 = arg1
    textValue3 = textValue51
    textValue4 = textValue51
    textValue = textValue(textValue2, textValue3, textValue4)
    if arg3 then
      textValue2 = workValue5[textValue]
      if textValue2 then
        goto flow_label_51
      end
    end
    if not arg3 then
      textValue2 = workValue5[textValue]
      ::flow_label_51::
      if not textValue2 then
        textValue2 = textValue32
        textValue3 = textValue
        textValue2 = textValue2 .. textValue3
        textValue32 = textValue2
      end
    end
  end
  return textValue32
end
sanitizeString = cmgCall3

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1, arg2) ===
function cmgCall3(arg1, arg2)
  local arg3, textValue32, workValue5, cmgCall6, textValue49, textValue50, workValue8, textValue51, textValue
  if nil == arg2 then
    arg2 = "%s"
  end
  arg3 = {}
  textValue32 = 1
  workValue5 = string
  workValue5 = workValue5.gmatch
  cmgCall6 = arg1
  textValue49 = "([^"
  textValue50 = arg2
  workValue8 = "]+)"
  textValue49 = textValue49 .. textValue50 .. workValue8
  workValue5, cmgCall6, textValue49, textValue50 = workValue5(cmgCall6, textValue49)
  for workValue8 in workValue5, cmgCall6, textValue49, textValue50 do
    arg3[textValue32] = workValue8
    textValue32 = textValue32 + 1
  end
  return arg3
end
splitString = cmgCall3

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: arg1, arg2) ===
function cmgCall3(arg1, arg2)
  local arg3, textValue32, workValue5, cmgCall6, textValue49, textValue50, workValue8, textValue51, textValue, textValue2, textValue3
  if nil == arg2 then
    arg2 = ""
  end
  arg3 = ""
  textValue32 = 0
  workValue5 = #arg1
  cmgCall6 = pairs
  textValue49 = arg1
  cmgCall6, textValue49, textValue50, workValue8 = cmgCall6(textValue49)
  for textValue51, textValue in cmgCall6, textValue49, textValue50, workValue8 do
    textValue32 = textValue32 + 1
    textValue2 = arg3
    textValue3 = textValue
    textValue2 = textValue2 .. textValue3
    arg3 = textValue2
    if workValue5 > textValue32 then
      textValue2 = arg3
      textValue3 = arg2
      textValue2 = textValue2 .. textValue3
      arg3 = textValue2
    end
  end
  return arg3
end
joinStrings = cmgCall3
cmgCall3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1) ===
function cmgCall4(arg1)
  local arg2, arg3, textValue32
  arg2 = dataTable
  arg2 = arg2[arg1]
  if arg2 then
    arg2 = dataTable
    arg2 = arg2[arg1]
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.loadResourceFile
  arg3 = GetCurrentResourceName
  arg3 = arg3()
  textValue32 = arg1
  arg2 = arg2(arg3, textValue32)
  arg3 = json
  arg3 = arg3.decode
  textValue32 = arg2
  arg3 = arg3(textValue32)
  textValue32 = dataTable
  textValue32[arg1] = arg3
  return arg3
end
cmgCall3.loadJsonModule = cmgCall4
cmgCall3 = {}
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2, arg3) ===
function textValue5(arg1, arg2, arg3)
  local textValue32, workValue5, cmgCall6, textValue49
  textValue32 = cmgCall3
  textValue32[arg1] = true
  textValue32 = RegisterCommand
  workValue5 = arg1
  cmgCall6 = arg2
  textValue49 = arg3
  -- Beginner: Register a chat/console command. Event/command: false.
  textValue32(workValue5, cmgCall6, textValue49)
end
cmgCall4.registerCommand = textValue5
cmgCall4 = exports
textValue5 = "isCommandHidden"
-- Beginner: this function is the command handler for "isCommandHidden".

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2, arg3, textValue32
  arg2 = string
  arg2 = arg2.starts
  arg3 = arg1
  textValue32 = "+"
  arg2 = arg2(arg3, textValue32)
  if not arg2 then
    arg2 = string
    arg2 = arg2.starts
    arg3 = arg1
    textValue32 = "-"
    arg2 = arg2(arg3, textValue32)
    if not arg2 then
      goto flow_label_17
    end
  end
  arg2 = true
  return arg2
  ::flow_label_17::
  arg2 = cmgCall3
  arg2 = arg2[arg1]
  return arg2
end
cmgCall4(textValue5, workValue)
