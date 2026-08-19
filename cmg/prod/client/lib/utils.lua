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
local dataCollection, stateFlag, cmgOperation5, workingValue2, workingValue4, workingValue6, stringHelper, tableHelper2, workingValue7, workingValue9, cmgOperation, cmgOperation2, cmgOperation3, cmgOperation4, text5, workingValue
dataCollection = {}
stateFlag = true
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2) ===
function workingValue2(localValue1, localValue2)
  local localValue3, text32, workingValue5, cmgOperation6, text49, text50, workingValue8, text51, text, text2, text3, text4
  if nil == localValue2 then
    localValue2 = localValue1
    localValue1 = "cmg"
  end
  localValue3 = stateFlag
  if not localValue3 then
    localValue3 = CMG
    localValue3 = localValue3.warn
    text32 = "Failed to load "
    workingValue5 = localValue1
    cmgOperation6 = "/"
    text49 = localValue2
    text50 = ", isLoadingFiles is false"
    text32 = text32 .. workingValue5 .. cmgOperation6 .. text49 .. text50
    localValue3(text32)
    localValue3 = {}
    return localValue3
  end
  localValue3 = localValue1
  text32 = localValue2
  localValue3 = localValue3 .. text32
  text32 = dataCollection
  text32 = text32[localValue3]
  if text32 then
    text32 = table
    text32 = text32.unpack
    workingValue5 = dataCollection
    workingValue5 = workingValue5[localValue3]
    return text32(workingValue5)
  else
    text32 = CMG
    text32 = text32.loadResourceFile
    workingValue5 = localValue1
    cmgOperation6 = localValue2
    text49 = ".lua"
    cmgOperation6 = cmgOperation6 .. text49
    text32 = text32(workingValue5, cmgOperation6)
    if not text32 then
      workingValue5 = CMG
      workingValue5 = workingValue5.warn
      cmgOperation6 = "[CMG] Failed to CMG.loadResourceFile "
      text49 = localValue1
      text50 = "/"
      workingValue8 = localValue2
      cmgOperation6 = cmgOperation6 .. text49 .. text50 .. workingValue8
      workingValue5(cmgOperation6)
      workingValue5 = {}
      return workingValue5
    end
    workingValue5 = load
    cmgOperation6 = text32
    workingValue5, cmgOperation6 = workingValue5(cmgOperation6)
    if workingValue5 then
      text49 = {}
      text50 = pcall
      workingValue8 = workingValue5
      text50, workingValue8, text51, text, text2, text3, text4 = text50(workingValue8)
      text49[1] = text50
      text49[2] = workingValue8
      text49[3] = text51
      text49[4] = text
      text49[5] = text2
      text49[6] = text3
      text49[7] = text4
      text50 = text49[1]
      if text50 then
        text50 = table
        text50 = text50.remove
        workingValue8 = text49
        text51 = 1
        text50(workingValue8, text51)
        text50 = dataCollection
        text50[localValue3] = text49
        text50 = table
        text50 = text50.unpack
        workingValue8 = text49
        return text50(workingValue8)
      else
        text50 = dataCollection
        text50[localValue3] = nil
        text50 = CMG
        text50 = text50.warn
        workingValue8 = "[CMG] error loading module "
        text51 = localValue1
        text = "/"
        text2 = localValue2
        text3 = ":"
        text4 = text49[2]
        workingValue8 = workingValue8 .. text51 .. text .. text2 .. text3 .. text4
        text50(workingValue8)
      end
    else
      text49 = CMG
      text49 = text49.warn
      text50 = "[CMG] error parsing module "
      workingValue8 = localValue1
      text51 = "/"
      text = localValue2
      text2 = ":"
      text3 = cmgOperation6
      text50 = text50 .. workingValue8 .. text51 .. text .. text2 .. text3
      text49(text50)
    end
  end
  text32 = {}
  return text32
end
cmgOperation5.loadModule = workingValue2

-- === HELPER FUNCTION (decompiler name: cmgOperation5; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation5(localValue1, localValue2, localValue3)
  local text32, workingValue5
  text32 = localValue1 >> localValue2
  workingValue5 = 1 << localValue3
  workingValue5 = workingValue5 - 1
  text32 = text32 & workingValue5
  return text32
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, localValue2, localValue3) ===
function workingValue2(localValue1, localValue2, localValue3)
  local text32, workingValue5, cmgOperation6, text49, text50, workingValue8, text51, text, text2, text3, text4, text6, text7, text8, text9, text10, text11, text12, text13, text14, text15, text16, text17, text18, text19, text20, text21, text22, text23, text24, text25, text26, text27, text28, text29, text30, text31, text33, text34, text35, text36, text37, text38, text39, text40, text41, text42, text43, text44, text45, text46, text47, text48
  text32 = {}
  workingValue5 = pairs
  cmgOperation6 = {}
  cmgOperation6[0] = "A"
  text49 = "B"
  text50 = "C"
  workingValue8 = "D"
  text51 = "E"
  text = "F"
  text2 = "G"
  text3 = "H"
  text4 = "I"
  text6 = "J"
  text7 = "K"
  text8 = "L"
  text9 = "M"
  text10 = "N"
  text11 = "O"
  text12 = "P"
  text13 = "Q"
  text14 = "R"
  text15 = "S"
  text16 = "T"
  text17 = "U"
  text18 = "V"
  text19 = "W"
  text20 = "X"
  text21 = "Y"
  text22 = "Z"
  text23 = "a"
  text24 = "b"
  text25 = "c"
  text26 = "d"
  text27 = "e"
  text28 = "f"
  text29 = "g"
  text30 = "h"
  text31 = "i"
  text33 = "j"
  text34 = "k"
  text35 = "l"
  text36 = "m"
  text37 = "n"
  text38 = "o"
  text39 = "p"
  text40 = "q"
  text41 = "r"
  text42 = "s"
  text43 = "t"
  text44 = "u"
  text45 = "v"
  text46 = "w"
  text47 = "x"
  text48 = "y"
  cmgOperation6[1] = text49
  cmgOperation6[2] = text50
  cmgOperation6[3] = workingValue8
  cmgOperation6[4] = text51
  cmgOperation6[5] = text
  cmgOperation6[6] = text2
  cmgOperation6[7] = text3
  cmgOperation6[8] = text4
  cmgOperation6[9] = text6
  cmgOperation6[10] = text7
  cmgOperation6[11] = text8
  cmgOperation6[12] = text9
  cmgOperation6[13] = text10
  cmgOperation6[14] = text11
  cmgOperation6[15] = text12
  cmgOperation6[16] = text13
  cmgOperation6[17] = text14
  cmgOperation6[18] = text15
  cmgOperation6[19] = text16
  cmgOperation6[20] = text17
  cmgOperation6[21] = text18
  cmgOperation6[22] = text19
  cmgOperation6[23] = text20
  cmgOperation6[24] = text21
  cmgOperation6[25] = text22
  cmgOperation6[26] = text23
  cmgOperation6[27] = text24
  cmgOperation6[28] = text25
  cmgOperation6[29] = text26
  cmgOperation6[30] = text27
  cmgOperation6[31] = text28
  cmgOperation6[32] = text29
  cmgOperation6[33] = text30
  cmgOperation6[34] = text31
  cmgOperation6[35] = text33
  cmgOperation6[36] = text34
  cmgOperation6[37] = text35
  cmgOperation6[38] = text36
  cmgOperation6[39] = text37
  cmgOperation6[40] = text38
  cmgOperation6[41] = text39
  cmgOperation6[42] = text40
  cmgOperation6[43] = text41
  cmgOperation6[44] = text42
  cmgOperation6[45] = text43
  cmgOperation6[46] = text44
  cmgOperation6[47] = text45
  cmgOperation6[48] = text46
  cmgOperation6[49] = text47
  cmgOperation6[50] = text48
  text49 = "z"
  text50 = "0"
  workingValue8 = "1"
  text51 = "2"
  text = "3"
  text2 = "4"
  text3 = "5"
  text4 = "6"
  text6 = "7"
  text7 = "8"
  text8 = "9"
  text9 = localValue1 or text9
  if not localValue1 then
    text9 = "+"
  end
  text10 = localValue2 or text10
  if not localValue2 then
    text10 = "/"
  end
  text11 = localValue3 or text11
  if not localValue3 then
    text11 = "="
  end
  cmgOperation6[51] = text49
  cmgOperation6[52] = text50
  cmgOperation6[53] = workingValue8
  cmgOperation6[54] = text51
  cmgOperation6[55] = text
  cmgOperation6[56] = text2
  cmgOperation6[57] = text3
  cmgOperation6[58] = text4
  cmgOperation6[59] = text6
  cmgOperation6[60] = text7
  cmgOperation6[61] = text8
  cmgOperation6[62] = text9
  cmgOperation6[63] = text10
  cmgOperation6[64] = text11
  workingValue5, cmgOperation6, text49, text50 = workingValue5(cmgOperation6)
  for workingValue8, text51 in workingValue5, cmgOperation6, text49, text50 do
    text = string
    text = text.byte
    text2 = text51
    text = text(text2)
    text32[workingValue8] = text
  end
  return text32
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2, localValue3) ===
function workingValue4(localValue1, localValue2, localValue3)
  local text32, workingValue5, cmgOperation6, text49, text50, workingValue8, text51, text
  text32 = {}
  workingValue5 = pairs
  cmgOperation6 = workingValue2
  text49 = localValue1
  text50 = localValue2
  workingValue8 = localValue3
  cmgOperation6, text49, text50, workingValue8, text51, text = cmgOperation6(text49, text50, workingValue8)
  workingValue5, cmgOperation6, text49, text50 = workingValue5(cmgOperation6, text49, text50, workingValue8, text51, text)
  for workingValue8, text51 in workingValue5, cmgOperation6, text49, text50 do
    text32[text51] = workingValue8
  end
  return text32
end
workingValue6 = workingValue4
workingValue6 = workingValue6()
stringHelper = string
stringHelper = stringHelper.char
tableHelper2 = table
tableHelper2 = tableHelper2.concat

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2, localValue3) ===
function workingValue7(localValue1, localValue2, localValue3)
  local text32, workingValue5, cmgOperation6, text49, text50, workingValue8, text51, text, text2, text3, text4, text6, text7, text8, text9, text10, text11, text12, text13, text14, text15, text16, text17, text18
  if not localValue2 then
    localValue2 = workingValue6
  end
  text32 = "[^%w%+%/%=]"
  if localValue2 then
    workingValue5 = nil
    cmgOperation6 = nil
    text49 = pairs
    text50 = localValue2
    text49, text50, workingValue8, text51 = text49(text50)
    for text, text2 in text49, text50, workingValue8, text51 do
      if 62 == text2 then
        workingValue5 = text
      elseif 63 == text2 then
        cmgOperation6 = text
      end
    end
    text49 = string
    text49 = text49.format
    text50 = "[^%%w%%%s%%%s%%=]"
    workingValue8 = stringHelper
    text51 = workingValue5
    workingValue8 = workingValue8(text51)
    text51 = stringHelper
    text = cmgOperation6
    text51, text, text2, text3, text4, text6, text7, text8, text9, text10, text11, text12, text13, text14, text15, text16, text17, text18 = text51(text)
    text49 = text49(text50, workingValue8, text51, text, text2, text3, text4, text6, text7, text8, text9, text10, text11, text12, text13, text14, text15, text16, text17, text18)
    text32 = text49
  end
  cmgOperation6 = localValue1
  workingValue5 = localValue1.gsub
  text49 = text32
  text50 = ""
  workingValue5 = workingValue5(cmgOperation6, text49, text50)
  localValue1 = workingValue5
  workingValue5 = localValue3 or workingValue5
  if localValue3 then
    workingValue5 = {}
  end
  cmgOperation6 = {}
  text49 = 1
  text50 = #localValue1
  text51 = localValue1
  workingValue8 = localValue1.sub
  text = -2
  workingValue8 = workingValue8(text51, text)
  if "==" == workingValue8 then
    workingValue8 = 2
    if workingValue8 then
      goto continueAtStep63
    end
  end
  text51 = localValue1
  workingValue8 = localValue1.sub
  text = -1
  workingValue8 = workingValue8(text51, text)
  if "=" == workingValue8 then
    workingValue8 = 1
    if workingValue8 then
      goto continueAtStep63
    end
  end
  workingValue8 = 0
  ::continueAtStep63::
  text51 = 1
  if workingValue8 > 0 then
    text = text50 - 4
    if text then
      goto continueAtStep71
    end
  end
  text = text50
  ::continueAtStep71::
  text2 = 4
  for text3 = text51, text, text2 do
    text6 = localValue1
    text4 = localValue1.byte
    text7 = text3
    text8 = text3 + 3
    text4, text6, text7, text8 = text4(text6, text7, text8)
    text9 = nil
    if localValue3 then
      text10 = text4 * 16777216
      text11 = text6 * 65536
      text10 = text10 + text11
      text11 = text7 * 256
      text10 = text10 + text11
      text10 = text10 + text8
      text9 = workingValue5[text10]
      if not text9 then
        text11 = localValue2[text4]
        text11 = text11 * 262144
        text12 = localValue2[text6]
        text12 = text12 * 4096
        text11 = text11 + text12
        text12 = localValue2[text7]
        text12 = text12 * 64
        text11 = text11 + text12
        text12 = localValue2[text8]
        text11 = text11 + text12
        text12 = stringHelper
        text13 = cmgOperation5
        text14 = text11
        text15 = 16
        text16 = 8
        text13 = text13(text14, text15, text16)
        text14 = cmgOperation5
        text15 = text11
        text16 = 8
        text17 = 8
        text14 = text14(text15, text16, text17)
        text15 = cmgOperation5
        text16 = text11
        text17 = 0
        text18 = 8
        text15, text16, text17, text18 = text15(text16, text17, text18)
        text12 = text12(text13, text14, text15, text16, text17, text18)
        text9 = text12
        workingValue5[text10] = text9
      end
    else
      text10 = localValue2[text4]
      text10 = text10 * 262144
      text11 = localValue2[text6]
      text11 = text11 * 4096
      text10 = text10 + text11
      text11 = localValue2[text7]
      text11 = text11 * 64
      text10 = text10 + text11
      text11 = localValue2[text8]
      text10 = text10 + text11
      text11 = stringHelper
      text12 = cmgOperation5
      text13 = text10
      text14 = 16
      text15 = 8
      text12 = text12(text13, text14, text15)
      text13 = cmgOperation5
      text14 = text10
      text15 = 8
      text16 = 8
      text13 = text13(text14, text15, text16)
      text14 = cmgOperation5
      text15 = text10
      text16 = 0
      text17 = 8
      text14, text15, text16, text17, text18 = text14(text15, text16, text17)
      text11 = text11(text12, text13, text14, text15, text16, text17, text18)
      text9 = text11
    end
    cmgOperation6[text49] = text9
    text49 = text49 + 1
  end
  if 1 == workingValue8 then
    text = localValue1
    text51 = localValue1.byte
    text2 = text50 - 3
    text3 = text50 - 1
    text51, text, text2 = text51(text, text2, text3)
    text3 = localValue2[text51]
    text3 = text3 * 262144
    text4 = localValue2[text]
    text4 = text4 * 4096
    text3 = text3 + text4
    text4 = localValue2[text2]
    text4 = text4 * 64
    text3 = text3 + text4
    text4 = stringHelper
    text6 = cmgOperation5
    text7 = text3
    text8 = 16
    text9 = 8
    text6 = text6(text7, text8, text9)
    text7 = cmgOperation5
    text8 = text3
    text9 = 8
    text10 = 8
    text7, text8, text9, text10, text11, text12, text13, text14, text15, text16, text17, text18 = text7(text8, text9, text10)
    text4 = text4(text6, text7, text8, text9, text10, text11, text12, text13, text14, text15, text16, text17, text18)
    cmgOperation6[text49] = text4
  elseif 2 == workingValue8 then
    text = localValue1
    text51 = localValue1.byte
    text2 = text50 - 3
    text3 = text50 - 2
    text51, text = text51(text, text2, text3)
    text2 = localValue2[text51]
    text2 = text2 * 262144
    text3 = localValue2[text]
    text3 = text3 * 4096
    text2 = text2 + text3
    text3 = stringHelper
    text4 = cmgOperation5
    text6 = text2
    text7 = 16
    text8 = 8
    text4, text6, text7, text8, text9, text10, text11, text12, text13, text14, text15, text16, text17, text18 = text4(text6, text7, text8)
    text3 = text3(text4, text6, text7, text8, text9, text10, text11, text12, text13, text14, text15, text16, text17, text18)
    cmgOperation6[text49] = text3
  end
  text51 = tableHelper2
  text = cmgOperation6
  return text51(text)
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2) ===
function workingValue9(localValue1, localValue2)
  local localValue3, text32, workingValue5, cmgOperation6, text49, text50, workingValue8, text51, text, text2, text3, text4, text6, text7
  localValue3 = stateFlag
  if not localValue3 then
    return localValue2
  end
  localValue3 = string
  localValue3 = localValue3.find
  text32 = localValue1
  workingValue5 = "cfg"
  localValue3 = localValue3(text32, workingValue5)
  if not localValue3 or localValue3 <= 0 then
    return localValue2
  end
  text32 = string
  text32 = text32.sub
  workingValue5 = localValue1
  cmgOperation6 = localValue3 + 4
  text49 = -1
  text32 = text32(workingValue5, cmgOperation6, text49)
  workingValue5 = GetHashKey
  cmgOperation6 = text32
  -- Beginner: result below is hash.
  workingValue5 = workingValue5(cmgOperation6)
  cmgOperation6 = table
  cmgOperation6 = cmgOperation6.create
  text49 = #localValue2
  text50 = 0
  cmgOperation6 = cmgOperation6(text49, text50)
  text49 = 5
  text50 = #localValue2
  workingValue8 = 1
  for text51 = text49, text50, workingValue8 do
    text = string
    text = text.byte
    text2 = localValue2
    text3 = text51
    text = text(text2, text3)
    text2 = text51 % 8
    text2 = text2 * 4
    text2 = workingValue5 >> text2
    text2 = text2 & 15
    text3 = text2 + text51
    text3 = text3 % 63
    text3 = text - text3
    text4 = text51 - 4
    text6 = string
    text6 = text6.char
    text7 = text3
    text6 = text6(text7)
    cmgOperation6[text4] = text6
  end
  text49 = workingValue7
  text50 = table
  text50 = text50.concat
  workingValue8 = cmgOperation6
  text50, workingValue8, text51, text, text2, text3, text4, text6, text7 = text50(workingValue8)
  return text49(text50, workingValue8, text51, text, text2, text3, text4, text6, text7)
end
cmgOperation = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1, localValue2) ===
function cmgOperation2(localValue1, localValue2)
  local localValue3, text32, workingValue5, cmgOperation6, text49
  localValue3 = nil
  text32 = IsDuplicityVersion
  text32 = text32()
  if text32 then
    text32 = GetConvarInt
    workingValue5 = "serverNum"
    cmgOperation6 = 0
    text32 = text32(workingValue5, cmgOperation6)
    if 0 ~= text32 then
      goto continueAtStep17
    end
  end
  text32 = LoadResourceFile
  workingValue5 = localValue1
  cmgOperation6 = localValue2
  text32 = text32(workingValue5, cmgOperation6)
  localValue3 = text32
  ::continueAtStep17::
  if not localValue3 then
    text32 = LoadResourceFile
    workingValue5 = localValue1
    cmgOperation6 = "prod/"
    text49 = localValue2
    cmgOperation6 = cmgOperation6 .. text49
    text32 = text32(workingValue5, cmgOperation6)
    localValue3 = text32
  end
  if localValue3 then
    text32 = #localValue3
    if text32 > 4 then
      text32 = string
      text32 = text32.sub
      workingValue5 = localValue3
      cmgOperation6 = 1
      text49 = 4
      text32 = text32(workingValue5, cmgOperation6, text49)
      if "CMGP" == text32 then
        text32 = workingValue9
        workingValue5 = localValue2
        cmgOperation6 = localValue3
        text32 = text32(workingValue5, cmgOperation6)
        localValue3 = text32
      end
    end
  end
  return localValue3
end
cmgOperation.loadResourceFile = cmgOperation2
cmgOperation = nil
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1, localValue2) ===
function cmgOperation3(localValue1, localValue2)
  local localValue3, text32
  localValue3 = type
  text32 = localValue1
  localValue3 = localValue3(text32)
  if "boolean" == localValue3 then
    localValue3 = type
    text32 = localValue2
    localValue3 = localValue3(text32)
    if "number" == localValue3 then
      localValue3 = GetFrameCount
      localValue3 = localValue3()
      if localValue2 == localValue3 then
        localValue3 = string
        localValue3 = localValue3.dump
        text32 = CMG
        text32 = text32.setGameplayTask
        localValue3 = localValue3(text32)
        text32 = cmgOperation
        if localValue3 == text32 then
          stateFlag = localValue1
        end
      end
    end
  end
end
cmgOperation2.setGameplayTask = cmgOperation3
cmgOperation2 = string
cmgOperation2 = cmgOperation2.dump
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.setGameplayTask
cmgOperation2 = cmgOperation2(cmgOperation3)
cmgOperation = cmgOperation2
cmgOperation2 = IsDuplicityVersion
cmgOperation2 = cmgOperation2()
if not cmgOperation2 then
  cmgOperation2 = Citizen
  cmgOperation2 = cmgOperation2.CreateThread

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local localValue1, localValue2
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 0
    localValue1(localValue2)
    localValue1 = false
    stateFlag = localValue1
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  cmgOperation2(cmgOperation3)
end

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation2(localValue1, localValue2, localValue3)
  local text32, workingValue5, cmgOperation6, text49, text50, workingValue8
  if nil == localValue3 then
    localValue3 = 5000
  end
  text32 = {}
  text32.done = false

  -- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue12) ===
  function workingValue5(localValue12)
    local localValue22, tableHelper, workingValue3
    localValue22 = text32.done
    if not localValue22 then
      if nil == localValue12 then
        localValue22 = localValue2
        localValue12 = localValue22 or localValue12
        if not localValue22 then
          localValue22 = {}
          localValue12 = localValue22
        end
      end
      text32.done = true
      localValue22 = localValue1
      tableHelper = table
      tableHelper = tableHelper.unpack
      workingValue3 = localValue12
      tableHelper, workingValue3 = tableHelper(workingValue3)
      localValue22(tableHelper, workingValue3)
    end
  end
  cmgOperation6 = setmetatable
  text49 = text32
  text50 = {}

  -- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue12, localValue22) ===
  function workingValue8(localValue12, localValue22)
    local tableHelper, workingValue3
    tableHelper = workingValue5
    workingValue3 = localValue22
    tableHelper(workingValue3)
  end
  text50.__call = workingValue8
  cmgOperation6(text49, text50)
  cmgOperation6 = SetTimeout
  text49 = localValue3

  -- === HELPER FUNCTION (decompiler name: text50; parameters: none) ===
  function text50()
    local localValue12, localValue22
    localValue12 = workingValue5
    localValue22 = localValue2
    localValue12(localValue22)
  end
  cmgOperation6(text49, text50)
  return text32
end
Task = cmgOperation2

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, text32
  localValue2 = tonumber
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if nil == localValue2 then
    localValue3 = 0
    return localValue3
  else
    localValue3 = math
    localValue3 = localValue3.floor
    text32 = localValue2
    return localValue3(text32)
  end
end
parseInt = cmgOperation2

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3
  localValue2 = tonumber
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if nil == localValue2 then
    localValue2 = 0
  end
  return localValue2
end
parseDouble = cmgOperation2

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3
  localValue2 = parseDouble
  localValue3 = localValue1
  return localValue2(localValue3)
end
parseFloat = cmgOperation2
cmgOperation2 = {}

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1, localValue2, localValue3) ===
function cmgOperation3(localValue1, localValue2, localValue3)
  local text32, workingValue5, cmgOperation6, text49, text50, workingValue8, text51, text, text2, text3, text4
  text32 = ""
  workingValue5 = cmgOperation2
  workingValue5 = workingValue5[localValue2]
  if nil == workingValue5 then
    cmgOperation6 = {}
    workingValue5 = cmgOperation6
    cmgOperation6 = string
    cmgOperation6 = cmgOperation6.len
    text49 = localValue2
    cmgOperation6 = cmgOperation6(text49)
    text49 = 1
    text50 = cmgOperation6
    workingValue8 = 1
    for text51 = text49, text50, workingValue8 do
      text = string
      text = text.sub
      text2 = localValue2
      text3 = text51
      text4 = text51
      text = text(text2, text3, text4)
      workingValue5[text] = true
    end
    text49 = cmgOperation2
    text49[localValue2] = workingValue5
  end
  cmgOperation6 = string
  cmgOperation6 = cmgOperation6.len
  text49 = localValue1
  cmgOperation6 = cmgOperation6(text49)
  text49 = 1
  text50 = cmgOperation6
  workingValue8 = 1
  for text51 = text49, text50, workingValue8 do
    text = string
    text = text.sub
    text2 = localValue1
    text3 = text51
    text4 = text51
    text = text(text2, text3, text4)
    if localValue3 then
      text2 = workingValue5[text]
      if text2 then
        goto continueAtStep51
      end
    end
    if not localValue3 then
      text2 = workingValue5[text]
      ::continueAtStep51::
      if not text2 then
        text2 = text32
        text3 = text
        text2 = text2 .. text3
        text32 = text2
      end
    end
  end
  return text32
end
sanitizeString = cmgOperation3

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1, localValue2) ===
function cmgOperation3(localValue1, localValue2)
  local localValue3, text32, workingValue5, cmgOperation6, text49, text50, workingValue8, text51, text
  if nil == localValue2 then
    localValue2 = "%s"
  end
  localValue3 = {}
  text32 = 1
  workingValue5 = string
  workingValue5 = workingValue5.gmatch
  cmgOperation6 = localValue1
  text49 = "([^"
  text50 = localValue2
  workingValue8 = "]+)"
  text49 = text49 .. text50 .. workingValue8
  workingValue5, cmgOperation6, text49, text50 = workingValue5(cmgOperation6, text49)
  for workingValue8 in workingValue5, cmgOperation6, text49, text50 do
    localValue3[text32] = workingValue8
    text32 = text32 + 1
  end
  return localValue3
end
splitString = cmgOperation3

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue1, localValue2) ===
function cmgOperation3(localValue1, localValue2)
  local localValue3, text32, workingValue5, cmgOperation6, text49, text50, workingValue8, text51, text, text2, text3
  if nil == localValue2 then
    localValue2 = ""
  end
  localValue3 = ""
  text32 = 0
  workingValue5 = #localValue1
  cmgOperation6 = pairs
  text49 = localValue1
  cmgOperation6, text49, text50, workingValue8 = cmgOperation6(text49)
  for text51, text in cmgOperation6, text49, text50, workingValue8 do
    text32 = text32 + 1
    text2 = localValue3
    text3 = text
    text2 = text2 .. text3
    localValue3 = text2
    if workingValue5 > text32 then
      text2 = localValue3
      text3 = localValue2
      text2 = text2 .. text3
      localValue3 = text2
    end
  end
  return localValue3
end
joinStrings = cmgOperation3
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1) ===
function cmgOperation4(localValue1)
  local localValue2, localValue3, text32
  localValue2 = dataCollection
  localValue2 = localValue2[localValue1]
  if localValue2 then
    localValue2 = dataCollection
    localValue2 = localValue2[localValue1]
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.loadResourceFile
  localValue3 = GetCurrentResourceName
  localValue3 = localValue3()
  text32 = localValue1
  localValue2 = localValue2(localValue3, text32)
  localValue3 = json
  localValue3 = localValue3.decode
  text32 = localValue2
  localValue3 = localValue3(text32)
  text32 = dataCollection
  text32[localValue1] = localValue3
  return localValue3
end
cmgOperation3.loadJsonModule = cmgOperation4
cmgOperation3 = {}
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text5; parameters: localValue1, localValue2, localValue3) ===
function text5(localValue1, localValue2, localValue3)
  local text32, workingValue5, cmgOperation6, text49
  text32 = cmgOperation3
  text32[localValue1] = true
  text32 = RegisterCommand
  workingValue5 = localValue1
  cmgOperation6 = localValue2
  text49 = localValue3
  -- Beginner: Register a chat/console command. Event/command: false.
  text32(workingValue5, cmgOperation6, text49)
end
cmgOperation4.registerCommand = text5
cmgOperation4 = exports
text5 = "isCommandHidden"
-- Beginner: this function is the command handler for "isCommandHidden".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, text32
  localValue2 = string
  localValue2 = localValue2.starts
  localValue3 = localValue1
  text32 = "+"
  localValue2 = localValue2(localValue3, text32)
  if not localValue2 then
    localValue2 = string
    localValue2 = localValue2.starts
    localValue3 = localValue1
    text32 = "-"
    localValue2 = localValue2(localValue3, text32)
    if not localValue2 then
      goto continueAtStep17
    end
  end
  localValue2 = true
  return localValue2
  ::continueAtStep17::
  localValue2 = cmgOperation3
  localValue2 = localValue2[localValue1]
  return localValue2
end
cmgOperation4(text5, workingValue)
