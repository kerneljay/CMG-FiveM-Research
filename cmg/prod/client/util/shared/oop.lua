--[[
    LEVEL 1 BEGINNER GUIDE — Oop
    =================================

    File: cmg/prod/client/util/shared/oop.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: shared utility/framework helper code.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 26
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
local stringHelper, tableHelper, tableHelper2, iterator, workingValue26, workingValue28, workingValue30, workingValue32, workingValue34, workingValue36, workingValue, workingValue2, workingValue3, workingValue4, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue12, workingValue14, workingValue16, workingValue18, workingValue20, workingValue21, workingValue22, workingValue23, workingValue24, dataCollection2, dataCollection3, workingValue25
stringHelper = {}
Luaoop = stringHelper
stringHelper = string
stringHelper = stringHelper.find
tableHelper = _VERSION
tableHelper2 = "5.1"
stringHelper = stringHelper(tableHelper, tableHelper2)
stringHelper = nil ~= stringHelper
tableHelper = getmetatable
tableHelper2 = setmetatable
iterator = pairs

-- === HELPER FUNCTION (decompiler name: workingValue26; parameters: localValue1, localValue2) ===
function workingValue26(localValue1, localValue2)
  local localValue3, localValue4, workingValue27, workingValue29, workingValue31, workingValue33, workingValue35, workingValue37
  localValue3 = localValue1.luaoop
  localValue3 = localValue3.custom
  if not localValue3 then
    localValue3 = {}
    localValue4 = iterator
    workingValue27 = localValue1
    localValue4, workingValue27, workingValue29, workingValue31 = localValue4(workingValue27)
    for workingValue33, workingValue35 in localValue4, workingValue27, workingValue29, workingValue31 do
      localValue3[workingValue33] = workingValue35
    end
    localValue4 = {}
    localValue3.luaoop = localValue4
    localValue4 = iterator
    workingValue27 = localValue1.luaoop
    localValue4, workingValue27, workingValue29, workingValue31 = localValue4(workingValue27)
    for workingValue33, workingValue35 in localValue4, workingValue27, workingValue29, workingValue31 do
      workingValue37 = localValue3.luaoop
      workingValue37[workingValue33] = workingValue35
    end
    localValue4 = localValue3.luaoop
    localValue4.custom = true
    localValue4 = tableHelper2
    workingValue27 = localValue2
    workingValue29 = localValue3
    localValue4(workingValue27, workingValue29)
    localValue1 = localValue3
  end
  localValue3 = localValue1
  localValue4 = localValue1.luaoop
  return localValue3, localValue4
end

-- === HELPER FUNCTION (decompiler name: workingValue28; parameters: localValue1) ===
function workingValue28(localValue1)
  local localValue2, localValue3, localValue4
  if localValue1 then
    localValue2 = tableHelper
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    localValue3 = nil
    if localValue2 then
      localValue3 = localValue2.luaoop
    end
    if localValue3 then
      localValue4 = localValue3.type
      if not localValue4 then
        localValue4 = localValue1
      end
      return localValue4
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue30; parameters: localValue1) ===
function workingValue30(localValue1)
  local localValue2, localValue3, localValue4
  if localValue1 then
    localValue2 = tableHelper
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    localValue3 = nil
    if localValue2 then
      localValue3 = localValue2.luaoop
    end
    if localValue3 then
      localValue4 = localValue3.name
      return localValue4
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue32; parameters: localValue1, localValue2, localValue3, localValue4) ===
function workingValue32(localValue1, localValue2, localValue3, localValue4)
  local workingValue27, workingValue29, workingValue31, workingValue33, workingValue35, workingValue37, text, nameValue, text2, stringHelper2, text3, number, stringHelper3
  workingValue27 = tableHelper
  workingValue29 = localValue1
  workingValue27 = workingValue27(workingValue29)
  workingValue29 = nil
  if workingValue27 then
    workingValue29 = workingValue27.luaoop
  end
  if workingValue29 then
    workingValue31 = workingValue29.type
    if workingValue31 then
      workingValue31 = nil
      workingValue33 = nil
      if nil ~= localValue3 then
        workingValue35 = workingValue28
        workingValue37 = localValue3
        workingValue35 = workingValue35(workingValue37)
        workingValue31 = workingValue35
        if not workingValue31 then
          workingValue35 = type
          workingValue37 = localValue3
          workingValue35 = workingValue35(workingValue37)
          workingValue31 = workingValue35
        end
        workingValue35 = workingValue29.type
        workingValue35 = workingValue35[localValue2]
        workingValue33 = workingValue35[workingValue31]
      else
        workingValue35 = workingValue29.type
        workingValue33 = workingValue35[localValue2]
      end
      if workingValue33 then
        return workingValue33
      elseif not localValue4 then
        workingValue35 = nil
        if nil == workingValue31 then
          workingValue35 = "nil"
        else
          workingValue37 = type
          text = workingValue31
          workingValue37 = workingValue37(text)
          if "string" == workingValue37 then
            workingValue35 = workingValue31
          else
            workingValue37 = workingValue30
            text = workingValue31
            workingValue37 = workingValue37(text)
            workingValue35 = workingValue37
          end
        end
        workingValue37 = error
        text = "operator <"
        nameValue = workingValue29.name
        text2 = "> ["
        stringHelper2 = string
        stringHelper2 = stringHelper2.sub
        text3 = localValue2
        number = 3
        stringHelper2 = stringHelper2(text3, number)
        text3 = "] <"
        number = workingValue35
        stringHelper3 = "> undefined"
        text = text .. nameValue .. text2 .. stringHelper2 .. text3 .. number .. stringHelper3
        workingValue37(text)
      end
  end
  elseif not localValue4 then
    workingValue31 = error
    workingValue33 = "left operand for operator ["
    workingValue35 = string
    workingValue35 = workingValue35.sub
    workingValue37 = localValue2
    text = 3
    workingValue35 = workingValue35(workingValue37, text)
    workingValue37 = "] is not an instance"
    workingValue33 = workingValue33 .. workingValue35 .. workingValue37
    workingValue31(workingValue33)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue34; parameters: localValue1) ===
function workingValue34(localValue1)
  local localValue2, localValue3, localValue4, workingValue27, workingValue29, workingValue31, workingValue33, workingValue35
  localValue2 = workingValue32
  localValue3 = localValue1
  localValue4 = "__tostring"
  workingValue27 = nil
  workingValue29 = true
  localValue2 = localValue2(localValue3, localValue4, workingValue27, workingValue29)
  if localValue2 then
    localValue3 = localValue2
    localValue4 = localValue1
    return localValue3(localValue4)
  else
    localValue3 = tableHelper
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    localValue3.__tostring = nil
    localValue4 = string
    localValue4 = localValue4.gsub
    workingValue27 = tostring
    workingValue29 = localValue1
    workingValue27 = workingValue27(workingValue29)
    workingValue29 = "table:"
    workingValue31 = "instance<"
    workingValue33 = workingValue30
    workingValue35 = localValue1
    workingValue33 = workingValue33(workingValue35)
    workingValue35 = ">:"
    workingValue31 = workingValue31 .. workingValue33 .. workingValue35
    workingValue33 = 1
    localValue4 = localValue4(workingValue27, workingValue29, workingValue31, workingValue33)
    workingValue27 = workingValue34
    localValue3.__tostring = workingValue27
    return localValue4
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue36; parameters: localValue1, localValue2) ===
function workingValue36(localValue1, localValue2)
  local localValue3, localValue4, workingValue27, workingValue29, workingValue31
  localValue3 = workingValue32
  localValue4 = localValue1
  workingValue27 = "__concat"
  workingValue29 = localValue2
  workingValue31 = true
  localValue3 = localValue3(localValue4, workingValue27, workingValue29, workingValue31)
  if localValue3 then
    localValue4 = localValue3
    workingValue27 = localValue1
    workingValue29 = localValue2
    return localValue4(workingValue27, workingValue29)
  end
  localValue4 = workingValue32
  workingValue27 = localValue2
  workingValue29 = "__concat"
  workingValue31 = localValue1
  localValue4 = localValue4(workingValue27, workingValue29, workingValue31)
  localValue3 = localValue4
  if localValue3 then
    localValue4 = localValue3
    workingValue27 = localValue2
    workingValue29 = localValue1
    workingValue31 = true
    return localValue4(workingValue27, workingValue29, workingValue31)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, localValue3, localValue4, workingValue27
  localValue2 = workingValue32
  localValue3 = localValue1
  localValue4 = "__unm"
  workingValue27 = nil
  localValue2 = localValue2(localValue3, localValue4, workingValue27)
  if localValue2 then
    localValue3 = localValue2
    localValue4 = localValue1
    return localValue3(localValue4)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1, ...) ===
function workingValue2(localValue1, ...)
  local localValue2, localValue3, localValue4, workingValue27
  localValue2 = workingValue32
  localValue3 = localValue1
  localValue4 = "__call"
  workingValue27 = nil
  localValue2 = localValue2(localValue3, localValue4, workingValue27)
  if localValue2 then
    localValue3 = localValue2
    localValue4 = localValue1
    workingValue27 = ...
    return localValue3(localValue4, workingValue27)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1, localValue2) ===
function workingValue3(localValue1, localValue2)
  local localValue3, localValue4, workingValue27, workingValue29, workingValue31
  localValue3 = workingValue32
  localValue4 = localValue1
  workingValue27 = "__add"
  workingValue29 = localValue2
  workingValue31 = true
  localValue3 = localValue3(localValue4, workingValue27, workingValue29, workingValue31)
  if localValue3 then
    localValue4 = localValue3
    workingValue27 = localValue1
    workingValue29 = localValue2
    return localValue4(workingValue27, workingValue29)
  end
  localValue4 = workingValue32
  workingValue27 = localValue2
  workingValue29 = "__add"
  workingValue31 = localValue1
  localValue4 = localValue4(workingValue27, workingValue29, workingValue31)
  localValue3 = localValue4
  if localValue3 then
    localValue4 = localValue3
    workingValue27 = localValue2
    workingValue29 = localValue1
    return localValue4(workingValue27, workingValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2) ===
function workingValue4(localValue1, localValue2)
  local localValue3, localValue4, workingValue27, workingValue29, workingValue31
  localValue3 = workingValue32
  localValue4 = localValue1
  workingValue27 = "__sub"
  workingValue29 = localValue2
  workingValue31 = true
  localValue3 = localValue3(localValue4, workingValue27, workingValue29, workingValue31)
  if localValue3 then
    localValue4 = localValue3
    workingValue27 = localValue1
    workingValue29 = localValue2
    return localValue4(workingValue27, workingValue29)
  end
  localValue4 = workingValue32
  workingValue27 = localValue1
  workingValue29 = "__add"
  workingValue31 = localValue2
  localValue4 = localValue4(workingValue27, workingValue29, workingValue31)
  localValue3 = localValue4
  if localValue3 then
    localValue4 = localValue3
    workingValue27 = localValue1
    workingValue29 = -localValue2
    return localValue4(workingValue27, workingValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2) ===
function workingValue5(localValue1, localValue2)
  local localValue3, localValue4, workingValue27, workingValue29, workingValue31
  localValue3 = workingValue32
  localValue4 = localValue1
  workingValue27 = "__mul"
  workingValue29 = localValue2
  workingValue31 = true
  localValue3 = localValue3(localValue4, workingValue27, workingValue29, workingValue31)
  if localValue3 then
    localValue4 = localValue3
    workingValue27 = localValue1
    workingValue29 = localValue2
    return localValue4(workingValue27, workingValue29)
  end
  localValue4 = workingValue32
  workingValue27 = localValue2
  workingValue29 = "__mul"
  workingValue31 = localValue1
  localValue4 = localValue4(workingValue27, workingValue29, workingValue31)
  localValue3 = localValue4
  if localValue3 then
    localValue4 = localValue3
    workingValue27 = localValue2
    workingValue29 = localValue1
    return localValue4(workingValue27, workingValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local localValue3, localValue4, workingValue27, workingValue29
  localValue3 = workingValue32
  localValue4 = localValue1
  workingValue27 = "__div"
  workingValue29 = localValue2
  localValue3 = localValue3(localValue4, workingValue27, workingValue29)
  if localValue3 then
    localValue4 = localValue3
    workingValue27 = localValue1
    workingValue29 = localValue2
    return localValue4(workingValue27, workingValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1, localValue2) ===
function workingValue7(localValue1, localValue2)
  local localValue3, localValue4, workingValue27, workingValue29
  localValue3 = workingValue32
  localValue4 = localValue1
  workingValue27 = "__mod"
  workingValue29 = localValue2
  localValue3 = localValue3(localValue4, workingValue27, workingValue29)
  if localValue3 then
    localValue4 = localValue3
    workingValue27 = localValue1
    workingValue29 = localValue2
    return localValue4(workingValue27, workingValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1, localValue2) ===
function workingValue8(localValue1, localValue2)
  local localValue3, localValue4, workingValue27, workingValue29
  localValue3 = workingValue32
  localValue4 = localValue1
  workingValue27 = "__pow"
  workingValue29 = localValue2
  localValue3 = localValue3(localValue4, workingValue27, workingValue29)
  if localValue3 then
    localValue4 = localValue3
    workingValue27 = localValue1
    workingValue29 = localValue2
    return localValue4(workingValue27, workingValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1, localValue2) ===
function workingValue9(localValue1, localValue2)
  local localValue3, localValue4, workingValue27, workingValue29, workingValue31
  localValue3 = workingValue32
  localValue4 = localValue1
  workingValue27 = "__eq"
  workingValue29 = localValue2
  workingValue31 = true
  localValue3 = localValue3(localValue4, workingValue27, workingValue29, workingValue31)
  if localValue3 then
    localValue4 = localValue3
    workingValue27 = localValue1
    workingValue29 = localValue2
    return localValue4(workingValue27, workingValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1, localValue2) ===
function workingValue10(localValue1, localValue2)
  local localValue3, localValue4, workingValue27, workingValue29
  localValue3 = workingValue32
  localValue4 = localValue1
  workingValue27 = "__lt"
  workingValue29 = localValue2
  localValue3 = localValue3(localValue4, workingValue27, workingValue29)
  if localValue3 then
    localValue4 = localValue3
    workingValue27 = localValue1
    workingValue29 = localValue2
    return localValue4(workingValue27, workingValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1, localValue2) ===
function workingValue12(localValue1, localValue2)
  local localValue3, localValue4, workingValue27, workingValue29
  localValue3 = workingValue32
  localValue4 = localValue1
  workingValue27 = "__le"
  workingValue29 = localValue2
  localValue3 = localValue3(localValue4, workingValue27, workingValue29)
  if localValue3 then
    localValue4 = localValue3
    workingValue27 = localValue1
    workingValue29 = localValue2
    return localValue4(workingValue27, workingValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue1) ===
function workingValue14(localValue1)
  local localValue2, localValue3, localValue4, workingValue27, workingValue29, workingValue31, workingValue33, workingValue35, workingValue37, text, nameValue, text2, stringHelper2, text3, number, stringHelper3, dataCollection, number2, number3, workingValue13, workingValue15, workingValue17, workingValue19
  if localValue1 then
    localValue2 = tableHelper
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    localValue3 = nil
    if localValue2 then
      localValue3 = localValue2.luaoop
    end
    if localValue3 then
      localValue4 = localValue3.type
      if not localValue4 then
        localValue4 = localValue3.build
        if not localValue4 then
          localValue4 = {}
          localValue3.build = localValue4
        end
        localValue4 = iterator
        workingValue27 = localValue3.build
        localValue4, workingValue27, workingValue29, workingValue31 = localValue4(workingValue27)
        for workingValue33 in localValue4, workingValue27, workingValue29, workingValue31 do
          workingValue35 = localValue3.build
          workingValue35[workingValue33] = nil
        end
        localValue4 = localValue3.types
        if not localValue4 then
          localValue4 = {}
          localValue3.types = localValue4
        end
        localValue4 = iterator
        workingValue27 = localValue3.types
        localValue4, workingValue27, workingValue29, workingValue31 = localValue4(workingValue27)
        for workingValue33 in localValue4, workingValue27, workingValue29, workingValue31 do
          workingValue35 = localValue3.types
          workingValue35[workingValue33] = nil
        end
        localValue4 = localValue3.instance_build
        if not localValue4 then
          localValue4 = {}
          localValue3.instance_build = localValue4
        end
        localValue4 = iterator
        workingValue27 = localValue3.instance_build
        localValue4, workingValue27, workingValue29, workingValue31 = localValue4(workingValue27)
        for workingValue33 in localValue4, workingValue27, workingValue29, workingValue31 do
          workingValue35 = localValue3.instance_build
          workingValue35[workingValue33] = nil
        end
        localValue4 = ipairs
        workingValue27 = localValue3.bases
        localValue4, workingValue27, workingValue29, workingValue31 = localValue4(workingValue27)
        for workingValue33, workingValue35 in localValue4, workingValue27, workingValue29, workingValue31 do
          workingValue37 = tableHelper
          text = workingValue35
          workingValue37 = workingValue37(text)
          workingValue37 = workingValue37.luaoop
          text = iterator
          nameValue = workingValue37.types
          text, nameValue, text2, stringHelper2 = text(nameValue)
          for text3 in text, nameValue, text2, stringHelper2 do
            number = localValue3.types
            number[text3] = true
          end
          text = iterator
          nameValue = workingValue37.build
          text, nameValue, text2, stringHelper2 = text(nameValue)
          for text3, number in text, nameValue, text2, stringHelper2 do
            stringHelper3 = type
            dataCollection = number
            stringHelper3 = stringHelper3(dataCollection)
            if "table" == stringHelper3 then
              stringHelper3 = string
              stringHelper3 = stringHelper3.sub
              dataCollection = text3
              number2 = 1
              number3 = 2
              stringHelper3 = stringHelper3(dataCollection, number2, number3)
              if "__" == stringHelper3 then
                stringHelper3 = localValue3.build
                stringHelper3 = stringHelper3[text3]
                if not stringHelper3 then
                  dataCollection = {}
                  stringHelper3 = dataCollection
                  dataCollection = localValue3.build
                  dataCollection[text3] = stringHelper3
                end
                dataCollection = iterator
                number2 = number
                dataCollection, number2, number3, workingValue13 = dataCollection(number2)
                for workingValue15, workingValue17 in dataCollection, number2, number3, workingValue13 do
                  stringHelper3[workingValue15] = workingValue17
                end
            end
            else
              stringHelper3 = localValue3.build
              stringHelper3[text3] = number
            end
          end
          text = iterator
          nameValue = workingValue35
          text, nameValue, text2, stringHelper2 = text(nameValue)
          for text3, number in text, nameValue, text2, stringHelper2 do
            stringHelper3 = type
            dataCollection = number
            stringHelper3 = stringHelper3(dataCollection)
            if "table" == stringHelper3 then
              stringHelper3 = string
              stringHelper3 = stringHelper3.sub
              dataCollection = text3
              number2 = 1
              number3 = 2
              stringHelper3 = stringHelper3(dataCollection, number2, number3)
              if "__" == stringHelper3 then
                stringHelper3 = localValue3.build
                stringHelper3 = stringHelper3[text3]
                if not stringHelper3 then
                  dataCollection = {}
                  stringHelper3 = dataCollection
                  dataCollection = localValue3.build
                  dataCollection[text3] = stringHelper3
                end
                dataCollection = iterator
                number2 = number
                dataCollection, number2, number3, workingValue13 = dataCollection(number2)
                for workingValue15, workingValue17 in dataCollection, number2, number3, workingValue13 do
                  stringHelper3[workingValue15] = workingValue17
                end
            end
            else
              stringHelper3 = localValue3.build
              stringHelper3[text3] = number
            end
          end
        end
        localValue4 = localValue3.types
        localValue4[localValue1] = true
        localValue4 = localValue3.__postbuild
        if localValue4 then
          localValue4 = localValue3.__postbuild
          workingValue27 = localValue1
          workingValue29 = localValue3.build
          localValue4(workingValue27, workingValue29)
        end
        localValue4 = iterator
        workingValue27 = localValue3.build
        localValue4, workingValue27, workingValue29, workingValue31 = localValue4(workingValue27)
        for workingValue33, workingValue35 in localValue4, workingValue27, workingValue29, workingValue31 do
          workingValue37 = string
          workingValue37 = workingValue37.sub
          text = workingValue33
          nameValue = 1
          text2 = 2
          workingValue37 = workingValue37(text, nameValue, text2)
          if "__" ~= workingValue37 then
            workingValue37 = localValue3.instance_build
            workingValue37[workingValue33] = workingValue35
          end
        end
        localValue4 = iterator
        workingValue27 = localValue1
        localValue4, workingValue27, workingValue29, workingValue31 = localValue4(workingValue27)
        for workingValue33, workingValue35 in localValue4, workingValue27, workingValue29, workingValue31 do
          workingValue37 = string
          workingValue37 = workingValue37.sub
          text = workingValue33
          nameValue = 1
          text2 = 2
          workingValue37 = workingValue37(text, nameValue, text2)
          if "__" ~= workingValue37 then
            workingValue37 = localValue3.instance_build
            workingValue37[workingValue33] = workingValue35
          end
        end
        localValue4 = localValue3.meta
        if not localValue4 then
          localValue4 = {}
          workingValue27 = localValue3.instance_build
          localValue4.__index = workingValue27
          workingValue27 = {}
          workingValue29 = localValue3.name
          workingValue27.name = workingValue29
          workingValue29 = localValue3.types
          workingValue27.types = workingValue29
          workingValue27.type = localValue1
          localValue4.luaoop = workingValue27
          workingValue27 = workingValue2
          localValue4.__call = workingValue27
          workingValue27 = workingValue
          localValue4.__unm = workingValue27
          workingValue27 = workingValue3
          localValue4.__add = workingValue27
          workingValue27 = workingValue4
          localValue4.__sub = workingValue27
          workingValue27 = workingValue5
          localValue4.__mul = workingValue27
          workingValue27 = workingValue6
          localValue4.__div = workingValue27
          workingValue27 = workingValue8
          localValue4.__pow = workingValue27
          workingValue27 = workingValue7
          localValue4.__mod = workingValue27
          workingValue27 = workingValue9
          localValue4.__eq = workingValue27
          workingValue27 = workingValue12
          localValue4.__le = workingValue27
          workingValue27 = workingValue10
          localValue4.__lt = workingValue27
          workingValue27 = workingValue34
          localValue4.__tostring = workingValue27
          workingValue27 = workingValue36
          localValue4.__concat = workingValue27
          localValue3.meta = localValue4
          localValue4 = localValue3.__postmeta
          if localValue4 then
            localValue4 = localValue3.__postmeta
            workingValue27 = localValue1
            workingValue29 = localValue3.meta
            localValue4(workingValue27, workingValue29)
          end
        end
        localValue4 = localValue3.build
        localValue2.__index = localValue4
        localValue4 = iterator
        workingValue27 = localValue1
        localValue4, workingValue27, workingValue29, workingValue31 = localValue4(workingValue27)
        for workingValue33, workingValue35 in localValue4, workingValue27, workingValue29, workingValue31 do
          workingValue37 = type
          text = workingValue35
          workingValue37 = workingValue37(text)
          if "table" == workingValue37 then
            workingValue37 = string
            workingValue37 = workingValue37.sub
            text = workingValue33
            nameValue = 1
            text2 = 2
            workingValue37 = workingValue37(text, nameValue, text2)
            if "__" == workingValue37 then
              workingValue37 = tableHelper2
              text = workingValue35
              nameValue = {}
              text2 = localValue3.build
              text2 = text2[workingValue33]
              nameValue.__index = text2
              workingValue37(text, nameValue)
            end
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue1) ===
function workingValue16(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = tableHelper
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = localValue2.destructor
  localValue4 = localValue2.instance
  localValue3(localValue4)
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1, ...) ===
function workingValue18(localValue1, ...)
  local localValue2, localValue3, localValue4, workingValue27, workingValue29, workingValue31, workingValue33, workingValue35, workingValue37, text, nameValue, text2
  localValue2 = tableHelper
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  localValue3 = nil
  if localValue2 then
    localValue3 = localValue2.luaoop
  end
  if localValue3 then
    localValue4 = localValue3.type
    if not localValue4 then
      localValue4 = localValue3.build
      if not localValue4 then
        localValue4 = workingValue14
        workingValue27 = localValue1
        localValue4(workingValue27)
      end
      localValue4 = localValue3.__instantiate
      if localValue4 then
        workingValue27 = localValue4
        workingValue29 = localValue1
        workingValue31, workingValue33, workingValue35, workingValue37, text, nameValue, text2 = ...
        return workingValue27(workingValue29, workingValue31, workingValue33, workingValue35, workingValue37, text, nameValue, text2)
      else
        workingValue27 = tableHelper2
        workingValue29 = {}
        workingValue31 = localValue3.meta
        workingValue27 = workingValue27(workingValue29, workingValue31)
        workingValue29 = localValue1.__construct
        workingValue31 = localValue1.__destruct
        if workingValue31 then
          workingValue33 = workingValue26
          workingValue35 = localValue3.meta
          workingValue37 = workingValue27
          workingValue33, workingValue35 = workingValue33(workingValue35, workingValue37)
          workingValue37 = stringHelper
          if workingValue37 then
            workingValue37 = newproxy
            text = true
            workingValue37 = workingValue37(text)
            text = tableHelper
            nameValue = workingValue37
            text = text(nameValue)
            nameValue = workingValue16
            text.__gc = nameValue
            text.destructor = workingValue31
            text.instance = workingValue27
            workingValue35.proxy = workingValue37
          else
            workingValue37 = tableHelper2
            text = {}
            nameValue = {}
            text2 = workingValue16
            nameValue.__gc = text2
            nameValue.instance = workingValue27
            nameValue.destructor = workingValue31
            workingValue37 = workingValue37(text, nameValue)
            workingValue35.proxy = workingValue37
          end
        end
        if workingValue29 then
          workingValue33 = workingValue29
          workingValue35 = workingValue27
          workingValue37, text, nameValue, text2 = ...
          workingValue33(workingValue35, workingValue37, text, nameValue, text2)
        end
        return workingValue27
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue1, ...) ===
function workingValue20(localValue1, ...)
  local localValue2, localValue3, localValue4, workingValue27, workingValue29, workingValue31, workingValue33, workingValue35, workingValue37, text, nameValue, text2, stringHelper2
  localValue2 = type
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if "string" == localValue2 then
    localValue2 = {}
    localValue3 = {}
    localValue2.__add = localValue3
    localValue3 = {}
    localValue2.__sub = localValue3
    localValue3 = {}
    localValue2.__mul = localValue3
    localValue3 = {}
    localValue2.__div = localValue3
    localValue3 = {}
    localValue2.__pow = localValue3
    localValue3 = {}
    localValue2.__mod = localValue3
    localValue3 = {}
    localValue2.__eq = localValue3
    localValue3 = {}
    localValue2.__le = localValue3
    localValue3 = {}
    localValue2.__lt = localValue3
    localValue3 = {}
    localValue2.__concat = localValue3
    localValue3 = {}
    localValue4, workingValue27, workingValue29, workingValue31, workingValue33, workingValue35, workingValue37, text, nameValue, text2, stringHelper2 = ...
    localValue3[1] = localValue4
    localValue3[2] = workingValue27
    localValue3[3] = workingValue29
    localValue3[4] = workingValue31
    localValue3[5] = workingValue33
    localValue3[6] = workingValue35
    localValue3[7] = workingValue37
    localValue3[8] = text
    localValue3[9] = nameValue
    localValue3[10] = text2
    localValue3[11] = stringHelper2
    localValue4 = iterator
    workingValue27 = localValue3
    localValue4, workingValue27, workingValue29, workingValue31 = localValue4(workingValue27)
    for workingValue33, workingValue35 in localValue4, workingValue27, workingValue29, workingValue31 do
      workingValue37 = tableHelper
      text = workingValue35
      workingValue37 = workingValue37(text)
      text = nil
      if workingValue37 then
        text = workingValue37.luaoop
      end
      if text then
        nameValue = text.type
        if not nameValue then
          goto continueAtStep64
        end
      end
      nameValue = error
      text2 = "invalid base class #"
      stringHelper2 = workingValue33
      text2 = text2 .. stringHelper2
      nameValue(text2)
      ::continueAtStep64::
      nameValue = text.build
      if not nameValue then
        nameValue = workingValue14
        text2 = workingValue35
        nameValue(text2)
      end
    end
    localValue4 = string
    localValue4 = localValue4.gsub
    workingValue27 = tostring
    workingValue29 = localValue2
    workingValue27 = workingValue27(workingValue29)
    workingValue29 = "table:"
    workingValue31 = "class<"
    workingValue33 = localValue1
    workingValue35 = ">:"
    workingValue31 = workingValue31 .. workingValue33 .. workingValue35
    workingValue33 = 1
    localValue4 = localValue4(workingValue27, workingValue29, workingValue31, workingValue33)
    workingValue27 = tableHelper2
    workingValue29 = localValue2
    workingValue31 = {}
    workingValue33 = {}
    workingValue33.bases = localValue3
    workingValue33.name = localValue1
    workingValue31.luaoop = workingValue33
    workingValue33 = workingValue18
    workingValue31.__call = workingValue33

    -- === HELPER FUNCTION (decompiler name: workingValue33; parameters: localValue12) ===
    function workingValue33(localValue12)
      local workingValue11
      workingValue11 = localValue4
      return workingValue11
    end
    workingValue31.__tostring = workingValue33
    return workingValue27(workingValue29, workingValue31)
  else
    localValue2 = error
    localValue3 = "class name is not a string"
    localValue2(localValue3)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue1, localValue2) ===
function workingValue21(localValue1, localValue2)
  local localValue3, localValue4, workingValue27, workingValue29
  if localValue1 then
    localValue3 = tableHelper
    localValue4 = localValue1
    localValue3 = localValue3(localValue4)
    localValue4 = nil
    if localValue3 then
      localValue4 = localValue3.luaoop
    end
    if localValue4 then
      workingValue27 = localValue4.type
      if not workingValue27 then
        workingValue27 = localValue4.types
        if not workingValue27 then
          workingValue27 = workingValue14
          workingValue29 = localValue1
          workingValue27(workingValue29)
        end
      end
      workingValue27 = localValue4.types
      workingValue27 = workingValue27[localValue2]
      return workingValue27
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue22; parameters: localValue1) ===
function workingValue22(localValue1)
  local localValue2, localValue3, localValue4, workingValue27, workingValue29, workingValue31, workingValue33, workingValue35, workingValue37, text
  if localValue1 then
    localValue2 = tableHelper
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    localValue3 = nil
    if localValue2 then
      localValue3 = localValue2.luaoop
    end
    if localValue3 then
      localValue4 = localValue3.types
      if not localValue4 then
        localValue4 = localValue3.type
        if not localValue4 then
          localValue4 = workingValue14
          workingValue27 = localValue1
          localValue4(workingValue27)
        end
      end
      localValue4 = {}
      workingValue27 = iterator
      workingValue29 = localValue3.types
      workingValue27, workingValue29, workingValue31, workingValue33 = workingValue27(workingValue29)
      for workingValue35, workingValue37 in workingValue27, workingValue29, workingValue31, workingValue33 do
        localValue4[workingValue35] = workingValue37
      end
      return localValue4
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue1) ===
function workingValue23(localValue1)
  local localValue2, localValue3, localValue4, workingValue27
  if localValue1 then
    localValue2 = tableHelper
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    localValue3 = nil
    if localValue2 then
      localValue3 = localValue2.luaoop
    end
    if localValue3 then
      localValue4 = localValue3.type
      if not localValue4 then
        localValue4 = localValue3.build
        if not localValue4 then
          localValue4 = workingValue14
          workingValue27 = localValue1
          localValue4(workingValue27)
        end
        localValue4 = localValue3.meta
        return localValue4
      end
    end
  end
end
workingValue24 = tableHelper2
dataCollection2 = {}
dataCollection2.new = workingValue20
dataCollection2.name = workingValue30
dataCollection2.type = workingValue28
dataCollection2.is = workingValue21
dataCollection2.types = workingValue22
dataCollection2.meta = workingValue23
dataCollection2.instantiate = workingValue18
dataCollection2.build = workingValue14
dataCollection2.getop = workingValue32
dataCollection3 = {}

-- === HELPER FUNCTION (decompiler name: workingValue25; parameters: localValue1, localValue2, ...) ===
function workingValue25(localValue1, localValue2, ...)
  local localValue3, localValue4, workingValue27
  localValue3 = workingValue20
  localValue4 = localValue2
  workingValue27 = ...
  return localValue3(localValue4, workingValue27)
end
dataCollection3.__call = workingValue25
workingValue24 = workingValue24(dataCollection2, dataCollection3)
class = workingValue24
workingValue24 = Luaoop
dataCollection2 = class
workingValue24.class = dataCollection2
