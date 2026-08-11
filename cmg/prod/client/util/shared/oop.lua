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
local stringHelper, tableHelper, tableHelper2, iterator, workValue26, workValue28, workValue30, workValue32, workValue34, workValue36, workValue, workValue2, workValue3, workValue4, workValue5, workValue6, workValue7, workValue8, workValue9, workValue10, workValue12, workValue14, workValue16, workValue18, workValue20, workValue21, workValue22, workValue23, workValue24, dataTable2, dataTable3, workValue25
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

-- === HELPER FUNCTION (decompiler name: workValue26; parameters: arg1, arg2) ===
function workValue26(arg1, arg2)
  local arg3, arg4, workValue27, workValue29, workValue31, workValue33, workValue35, workValue37
  arg3 = arg1.luaoop
  arg3 = arg3.custom
  if not arg3 then
    arg3 = {}
    arg4 = iterator
    workValue27 = arg1
    arg4, workValue27, workValue29, workValue31 = arg4(workValue27)
    for workValue33, workValue35 in arg4, workValue27, workValue29, workValue31 do
      arg3[workValue33] = workValue35
    end
    arg4 = {}
    arg3.luaoop = arg4
    arg4 = iterator
    workValue27 = arg1.luaoop
    arg4, workValue27, workValue29, workValue31 = arg4(workValue27)
    for workValue33, workValue35 in arg4, workValue27, workValue29, workValue31 do
      workValue37 = arg3.luaoop
      workValue37[workValue33] = workValue35
    end
    arg4 = arg3.luaoop
    arg4.custom = true
    arg4 = tableHelper2
    workValue27 = arg2
    workValue29 = arg3
    arg4(workValue27, workValue29)
    arg1 = arg3
  end
  arg3 = arg1
  arg4 = arg1.luaoop
  return arg3, arg4
end

-- === HELPER FUNCTION (decompiler name: workValue28; parameters: arg1) ===
function workValue28(arg1)
  local arg2, arg3, arg4
  if arg1 then
    arg2 = tableHelper
    arg3 = arg1
    arg2 = arg2(arg3)
    arg3 = nil
    if arg2 then
      arg3 = arg2.luaoop
    end
    if arg3 then
      arg4 = arg3.type
      if not arg4 then
        arg4 = arg1
      end
      return arg4
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue30; parameters: arg1) ===
function workValue30(arg1)
  local arg2, arg3, arg4
  if arg1 then
    arg2 = tableHelper
    arg3 = arg1
    arg2 = arg2(arg3)
    arg3 = nil
    if arg2 then
      arg3 = arg2.luaoop
    end
    if arg3 then
      arg4 = arg3.name
      return arg4
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue32; parameters: arg1, arg2, arg3, arg4) ===
function workValue32(arg1, arg2, arg3, arg4)
  local workValue27, workValue29, workValue31, workValue33, workValue35, workValue37, textValue, nameValue, textValue2, stringHelper2, textValue3, numberValue, stringHelper3
  workValue27 = tableHelper
  workValue29 = arg1
  workValue27 = workValue27(workValue29)
  workValue29 = nil
  if workValue27 then
    workValue29 = workValue27.luaoop
  end
  if workValue29 then
    workValue31 = workValue29.type
    if workValue31 then
      workValue31 = nil
      workValue33 = nil
      if nil ~= arg3 then
        workValue35 = workValue28
        workValue37 = arg3
        workValue35 = workValue35(workValue37)
        workValue31 = workValue35
        if not workValue31 then
          workValue35 = type
          workValue37 = arg3
          workValue35 = workValue35(workValue37)
          workValue31 = workValue35
        end
        workValue35 = workValue29.type
        workValue35 = workValue35[arg2]
        workValue33 = workValue35[workValue31]
      else
        workValue35 = workValue29.type
        workValue33 = workValue35[arg2]
      end
      if workValue33 then
        return workValue33
      elseif not arg4 then
        workValue35 = nil
        if nil == workValue31 then
          workValue35 = "nil"
        else
          workValue37 = type
          textValue = workValue31
          workValue37 = workValue37(textValue)
          if "string" == workValue37 then
            workValue35 = workValue31
          else
            workValue37 = workValue30
            textValue = workValue31
            workValue37 = workValue37(textValue)
            workValue35 = workValue37
          end
        end
        workValue37 = error
        textValue = "operator <"
        nameValue = workValue29.name
        textValue2 = "> ["
        stringHelper2 = string
        stringHelper2 = stringHelper2.sub
        textValue3 = arg2
        numberValue = 3
        stringHelper2 = stringHelper2(textValue3, numberValue)
        textValue3 = "] <"
        numberValue = workValue35
        stringHelper3 = "> undefined"
        textValue = textValue .. nameValue .. textValue2 .. stringHelper2 .. textValue3 .. numberValue .. stringHelper3
        workValue37(textValue)
      end
  end
  elseif not arg4 then
    workValue31 = error
    workValue33 = "left operand for operator ["
    workValue35 = string
    workValue35 = workValue35.sub
    workValue37 = arg2
    textValue = 3
    workValue35 = workValue35(workValue37, textValue)
    workValue37 = "] is not an instance"
    workValue33 = workValue33 .. workValue35 .. workValue37
    workValue31(workValue33)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue34; parameters: arg1) ===
function workValue34(arg1)
  local arg2, arg3, arg4, workValue27, workValue29, workValue31, workValue33, workValue35
  arg2 = workValue32
  arg3 = arg1
  arg4 = "__tostring"
  workValue27 = nil
  workValue29 = true
  arg2 = arg2(arg3, arg4, workValue27, workValue29)
  if arg2 then
    arg3 = arg2
    arg4 = arg1
    return arg3(arg4)
  else
    arg3 = tableHelper
    arg4 = arg1
    arg3 = arg3(arg4)
    arg3.__tostring = nil
    arg4 = string
    arg4 = arg4.gsub
    workValue27 = tostring
    workValue29 = arg1
    workValue27 = workValue27(workValue29)
    workValue29 = "table:"
    workValue31 = "instance<"
    workValue33 = workValue30
    workValue35 = arg1
    workValue33 = workValue33(workValue35)
    workValue35 = ">:"
    workValue31 = workValue31 .. workValue33 .. workValue35
    workValue33 = 1
    arg4 = arg4(workValue27, workValue29, workValue31, workValue33)
    workValue27 = workValue34
    arg3.__tostring = workValue27
    return arg4
  end
end

-- === HELPER FUNCTION (decompiler name: workValue36; parameters: arg1, arg2) ===
function workValue36(arg1, arg2)
  local arg3, arg4, workValue27, workValue29, workValue31
  arg3 = workValue32
  arg4 = arg1
  workValue27 = "__concat"
  workValue29 = arg2
  workValue31 = true
  arg3 = arg3(arg4, workValue27, workValue29, workValue31)
  if arg3 then
    arg4 = arg3
    workValue27 = arg1
    workValue29 = arg2
    return arg4(workValue27, workValue29)
  end
  arg4 = workValue32
  workValue27 = arg2
  workValue29 = "__concat"
  workValue31 = arg1
  arg4 = arg4(workValue27, workValue29, workValue31)
  arg3 = arg4
  if arg3 then
    arg4 = arg3
    workValue27 = arg2
    workValue29 = arg1
    workValue31 = true
    return arg4(workValue27, workValue29, workValue31)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue; parameters: arg1) ===
function workValue(arg1)
  local arg2, arg3, arg4, workValue27
  arg2 = workValue32
  arg3 = arg1
  arg4 = "__unm"
  workValue27 = nil
  arg2 = arg2(arg3, arg4, workValue27)
  if arg2 then
    arg3 = arg2
    arg4 = arg1
    return arg3(arg4)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg1, ...) ===
function workValue2(arg1, ...)
  local arg2, arg3, arg4, workValue27
  arg2 = workValue32
  arg3 = arg1
  arg4 = "__call"
  workValue27 = nil
  arg2 = arg2(arg3, arg4, workValue27)
  if arg2 then
    arg3 = arg2
    arg4 = arg1
    workValue27 = ...
    return arg3(arg4, workValue27)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1, arg2) ===
function workValue3(arg1, arg2)
  local arg3, arg4, workValue27, workValue29, workValue31
  arg3 = workValue32
  arg4 = arg1
  workValue27 = "__add"
  workValue29 = arg2
  workValue31 = true
  arg3 = arg3(arg4, workValue27, workValue29, workValue31)
  if arg3 then
    arg4 = arg3
    workValue27 = arg1
    workValue29 = arg2
    return arg4(workValue27, workValue29)
  end
  arg4 = workValue32
  workValue27 = arg2
  workValue29 = "__add"
  workValue31 = arg1
  arg4 = arg4(workValue27, workValue29, workValue31)
  arg3 = arg4
  if arg3 then
    arg4 = arg3
    workValue27 = arg2
    workValue29 = arg1
    return arg4(workValue27, workValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg1, arg2) ===
function workValue4(arg1, arg2)
  local arg3, arg4, workValue27, workValue29, workValue31
  arg3 = workValue32
  arg4 = arg1
  workValue27 = "__sub"
  workValue29 = arg2
  workValue31 = true
  arg3 = arg3(arg4, workValue27, workValue29, workValue31)
  if arg3 then
    arg4 = arg3
    workValue27 = arg1
    workValue29 = arg2
    return arg4(workValue27, workValue29)
  end
  arg4 = workValue32
  workValue27 = arg1
  workValue29 = "__add"
  workValue31 = arg2
  arg4 = arg4(workValue27, workValue29, workValue31)
  arg3 = arg4
  if arg3 then
    arg4 = arg3
    workValue27 = arg1
    workValue29 = -arg2
    return arg4(workValue27, workValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1, arg2) ===
function workValue5(arg1, arg2)
  local arg3, arg4, workValue27, workValue29, workValue31
  arg3 = workValue32
  arg4 = arg1
  workValue27 = "__mul"
  workValue29 = arg2
  workValue31 = true
  arg3 = arg3(arg4, workValue27, workValue29, workValue31)
  if arg3 then
    arg4 = arg3
    workValue27 = arg1
    workValue29 = arg2
    return arg4(workValue27, workValue29)
  end
  arg4 = workValue32
  workValue27 = arg2
  workValue29 = "__mul"
  workValue31 = arg1
  arg4 = arg4(workValue27, workValue29, workValue31)
  arg3 = arg4
  if arg3 then
    arg4 = arg3
    workValue27 = arg2
    workValue29 = arg1
    return arg4(workValue27, workValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue6; parameters: arg1, arg2) ===
function workValue6(arg1, arg2)
  local arg3, arg4, workValue27, workValue29
  arg3 = workValue32
  arg4 = arg1
  workValue27 = "__div"
  workValue29 = arg2
  arg3 = arg3(arg4, workValue27, workValue29)
  if arg3 then
    arg4 = arg3
    workValue27 = arg1
    workValue29 = arg2
    return arg4(workValue27, workValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue7; parameters: arg1, arg2) ===
function workValue7(arg1, arg2)
  local arg3, arg4, workValue27, workValue29
  arg3 = workValue32
  arg4 = arg1
  workValue27 = "__mod"
  workValue29 = arg2
  arg3 = arg3(arg4, workValue27, workValue29)
  if arg3 then
    arg4 = arg3
    workValue27 = arg1
    workValue29 = arg2
    return arg4(workValue27, workValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1, arg2) ===
function workValue8(arg1, arg2)
  local arg3, arg4, workValue27, workValue29
  arg3 = workValue32
  arg4 = arg1
  workValue27 = "__pow"
  workValue29 = arg2
  arg3 = arg3(arg4, workValue27, workValue29)
  if arg3 then
    arg4 = arg3
    workValue27 = arg1
    workValue29 = arg2
    return arg4(workValue27, workValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue9; parameters: arg1, arg2) ===
function workValue9(arg1, arg2)
  local arg3, arg4, workValue27, workValue29, workValue31
  arg3 = workValue32
  arg4 = arg1
  workValue27 = "__eq"
  workValue29 = arg2
  workValue31 = true
  arg3 = arg3(arg4, workValue27, workValue29, workValue31)
  if arg3 then
    arg4 = arg3
    workValue27 = arg1
    workValue29 = arg2
    return arg4(workValue27, workValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1, arg2) ===
function workValue10(arg1, arg2)
  local arg3, arg4, workValue27, workValue29
  arg3 = workValue32
  arg4 = arg1
  workValue27 = "__lt"
  workValue29 = arg2
  arg3 = arg3(arg4, workValue27, workValue29)
  if arg3 then
    arg4 = arg3
    workValue27 = arg1
    workValue29 = arg2
    return arg4(workValue27, workValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: arg1, arg2) ===
function workValue12(arg1, arg2)
  local arg3, arg4, workValue27, workValue29
  arg3 = workValue32
  arg4 = arg1
  workValue27 = "__le"
  workValue29 = arg2
  arg3 = arg3(arg4, workValue27, workValue29)
  if arg3 then
    arg4 = arg3
    workValue27 = arg1
    workValue29 = arg2
    return arg4(workValue27, workValue29)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue14; parameters: arg1) ===
function workValue14(arg1)
  local arg2, arg3, arg4, workValue27, workValue29, workValue31, workValue33, workValue35, workValue37, textValue, nameValue, textValue2, stringHelper2, textValue3, numberValue, stringHelper3, dataTable, numberValue2, numberValue3, workValue13, workValue15, workValue17, workValue19
  if arg1 then
    arg2 = tableHelper
    arg3 = arg1
    arg2 = arg2(arg3)
    arg3 = nil
    if arg2 then
      arg3 = arg2.luaoop
    end
    if arg3 then
      arg4 = arg3.type
      if not arg4 then
        arg4 = arg3.build
        if not arg4 then
          arg4 = {}
          arg3.build = arg4
        end
        arg4 = iterator
        workValue27 = arg3.build
        arg4, workValue27, workValue29, workValue31 = arg4(workValue27)
        for workValue33 in arg4, workValue27, workValue29, workValue31 do
          workValue35 = arg3.build
          workValue35[workValue33] = nil
        end
        arg4 = arg3.types
        if not arg4 then
          arg4 = {}
          arg3.types = arg4
        end
        arg4 = iterator
        workValue27 = arg3.types
        arg4, workValue27, workValue29, workValue31 = arg4(workValue27)
        for workValue33 in arg4, workValue27, workValue29, workValue31 do
          workValue35 = arg3.types
          workValue35[workValue33] = nil
        end
        arg4 = arg3.instance_build
        if not arg4 then
          arg4 = {}
          arg3.instance_build = arg4
        end
        arg4 = iterator
        workValue27 = arg3.instance_build
        arg4, workValue27, workValue29, workValue31 = arg4(workValue27)
        for workValue33 in arg4, workValue27, workValue29, workValue31 do
          workValue35 = arg3.instance_build
          workValue35[workValue33] = nil
        end
        arg4 = ipairs
        workValue27 = arg3.bases
        arg4, workValue27, workValue29, workValue31 = arg4(workValue27)
        for workValue33, workValue35 in arg4, workValue27, workValue29, workValue31 do
          workValue37 = tableHelper
          textValue = workValue35
          workValue37 = workValue37(textValue)
          workValue37 = workValue37.luaoop
          textValue = iterator
          nameValue = workValue37.types
          textValue, nameValue, textValue2, stringHelper2 = textValue(nameValue)
          for textValue3 in textValue, nameValue, textValue2, stringHelper2 do
            numberValue = arg3.types
            numberValue[textValue3] = true
          end
          textValue = iterator
          nameValue = workValue37.build
          textValue, nameValue, textValue2, stringHelper2 = textValue(nameValue)
          for textValue3, numberValue in textValue, nameValue, textValue2, stringHelper2 do
            stringHelper3 = type
            dataTable = numberValue
            stringHelper3 = stringHelper3(dataTable)
            if "table" == stringHelper3 then
              stringHelper3 = string
              stringHelper3 = stringHelper3.sub
              dataTable = textValue3
              numberValue2 = 1
              numberValue3 = 2
              stringHelper3 = stringHelper3(dataTable, numberValue2, numberValue3)
              if "__" == stringHelper3 then
                stringHelper3 = arg3.build
                stringHelper3 = stringHelper3[textValue3]
                if not stringHelper3 then
                  dataTable = {}
                  stringHelper3 = dataTable
                  dataTable = arg3.build
                  dataTable[textValue3] = stringHelper3
                end
                dataTable = iterator
                numberValue2 = numberValue
                dataTable, numberValue2, numberValue3, workValue13 = dataTable(numberValue2)
                for workValue15, workValue17 in dataTable, numberValue2, numberValue3, workValue13 do
                  stringHelper3[workValue15] = workValue17
                end
            end
            else
              stringHelper3 = arg3.build
              stringHelper3[textValue3] = numberValue
            end
          end
          textValue = iterator
          nameValue = workValue35
          textValue, nameValue, textValue2, stringHelper2 = textValue(nameValue)
          for textValue3, numberValue in textValue, nameValue, textValue2, stringHelper2 do
            stringHelper3 = type
            dataTable = numberValue
            stringHelper3 = stringHelper3(dataTable)
            if "table" == stringHelper3 then
              stringHelper3 = string
              stringHelper3 = stringHelper3.sub
              dataTable = textValue3
              numberValue2 = 1
              numberValue3 = 2
              stringHelper3 = stringHelper3(dataTable, numberValue2, numberValue3)
              if "__" == stringHelper3 then
                stringHelper3 = arg3.build
                stringHelper3 = stringHelper3[textValue3]
                if not stringHelper3 then
                  dataTable = {}
                  stringHelper3 = dataTable
                  dataTable = arg3.build
                  dataTable[textValue3] = stringHelper3
                end
                dataTable = iterator
                numberValue2 = numberValue
                dataTable, numberValue2, numberValue3, workValue13 = dataTable(numberValue2)
                for workValue15, workValue17 in dataTable, numberValue2, numberValue3, workValue13 do
                  stringHelper3[workValue15] = workValue17
                end
            end
            else
              stringHelper3 = arg3.build
              stringHelper3[textValue3] = numberValue
            end
          end
        end
        arg4 = arg3.types
        arg4[arg1] = true
        arg4 = arg3.__postbuild
        if arg4 then
          arg4 = arg3.__postbuild
          workValue27 = arg1
          workValue29 = arg3.build
          arg4(workValue27, workValue29)
        end
        arg4 = iterator
        workValue27 = arg3.build
        arg4, workValue27, workValue29, workValue31 = arg4(workValue27)
        for workValue33, workValue35 in arg4, workValue27, workValue29, workValue31 do
          workValue37 = string
          workValue37 = workValue37.sub
          textValue = workValue33
          nameValue = 1
          textValue2 = 2
          workValue37 = workValue37(textValue, nameValue, textValue2)
          if "__" ~= workValue37 then
            workValue37 = arg3.instance_build
            workValue37[workValue33] = workValue35
          end
        end
        arg4 = iterator
        workValue27 = arg1
        arg4, workValue27, workValue29, workValue31 = arg4(workValue27)
        for workValue33, workValue35 in arg4, workValue27, workValue29, workValue31 do
          workValue37 = string
          workValue37 = workValue37.sub
          textValue = workValue33
          nameValue = 1
          textValue2 = 2
          workValue37 = workValue37(textValue, nameValue, textValue2)
          if "__" ~= workValue37 then
            workValue37 = arg3.instance_build
            workValue37[workValue33] = workValue35
          end
        end
        arg4 = arg3.meta
        if not arg4 then
          arg4 = {}
          workValue27 = arg3.instance_build
          arg4.__index = workValue27
          workValue27 = {}
          workValue29 = arg3.name
          workValue27.name = workValue29
          workValue29 = arg3.types
          workValue27.types = workValue29
          workValue27.type = arg1
          arg4.luaoop = workValue27
          workValue27 = workValue2
          arg4.__call = workValue27
          workValue27 = workValue
          arg4.__unm = workValue27
          workValue27 = workValue3
          arg4.__add = workValue27
          workValue27 = workValue4
          arg4.__sub = workValue27
          workValue27 = workValue5
          arg4.__mul = workValue27
          workValue27 = workValue6
          arg4.__div = workValue27
          workValue27 = workValue8
          arg4.__pow = workValue27
          workValue27 = workValue7
          arg4.__mod = workValue27
          workValue27 = workValue9
          arg4.__eq = workValue27
          workValue27 = workValue12
          arg4.__le = workValue27
          workValue27 = workValue10
          arg4.__lt = workValue27
          workValue27 = workValue34
          arg4.__tostring = workValue27
          workValue27 = workValue36
          arg4.__concat = workValue27
          arg3.meta = arg4
          arg4 = arg3.__postmeta
          if arg4 then
            arg4 = arg3.__postmeta
            workValue27 = arg1
            workValue29 = arg3.meta
            arg4(workValue27, workValue29)
          end
        end
        arg4 = arg3.build
        arg2.__index = arg4
        arg4 = iterator
        workValue27 = arg1
        arg4, workValue27, workValue29, workValue31 = arg4(workValue27)
        for workValue33, workValue35 in arg4, workValue27, workValue29, workValue31 do
          workValue37 = type
          textValue = workValue35
          workValue37 = workValue37(textValue)
          if "table" == workValue37 then
            workValue37 = string
            workValue37 = workValue37.sub
            textValue = workValue33
            nameValue = 1
            textValue2 = 2
            workValue37 = workValue37(textValue, nameValue, textValue2)
            if "__" == workValue37 then
              workValue37 = tableHelper2
              textValue = workValue35
              nameValue = {}
              textValue2 = arg3.build
              textValue2 = textValue2[workValue33]
              nameValue.__index = textValue2
              workValue37(textValue, nameValue)
            end
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue16; parameters: arg1) ===
function workValue16(arg1)
  local arg2, arg3, arg4
  arg2 = tableHelper
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = arg2.destructor
  arg4 = arg2.instance
  arg3(arg4)
end

-- === HELPER FUNCTION (decompiler name: workValue18; parameters: arg1, ...) ===
function workValue18(arg1, ...)
  local arg2, arg3, arg4, workValue27, workValue29, workValue31, workValue33, workValue35, workValue37, textValue, nameValue, textValue2
  arg2 = tableHelper
  arg3 = arg1
  arg2 = arg2(arg3)
  arg3 = nil
  if arg2 then
    arg3 = arg2.luaoop
  end
  if arg3 then
    arg4 = arg3.type
    if not arg4 then
      arg4 = arg3.build
      if not arg4 then
        arg4 = workValue14
        workValue27 = arg1
        arg4(workValue27)
      end
      arg4 = arg3.__instantiate
      if arg4 then
        workValue27 = arg4
        workValue29 = arg1
        workValue31, workValue33, workValue35, workValue37, textValue, nameValue, textValue2 = ...
        return workValue27(workValue29, workValue31, workValue33, workValue35, workValue37, textValue, nameValue, textValue2)
      else
        workValue27 = tableHelper2
        workValue29 = {}
        workValue31 = arg3.meta
        workValue27 = workValue27(workValue29, workValue31)
        workValue29 = arg1.__construct
        workValue31 = arg1.__destruct
        if workValue31 then
          workValue33 = workValue26
          workValue35 = arg3.meta
          workValue37 = workValue27
          workValue33, workValue35 = workValue33(workValue35, workValue37)
          workValue37 = stringHelper
          if workValue37 then
            workValue37 = newproxy
            textValue = true
            workValue37 = workValue37(textValue)
            textValue = tableHelper
            nameValue = workValue37
            textValue = textValue(nameValue)
            nameValue = workValue16
            textValue.__gc = nameValue
            textValue.destructor = workValue31
            textValue.instance = workValue27
            workValue35.proxy = workValue37
          else
            workValue37 = tableHelper2
            textValue = {}
            nameValue = {}
            textValue2 = workValue16
            nameValue.__gc = textValue2
            nameValue.instance = workValue27
            nameValue.destructor = workValue31
            workValue37 = workValue37(textValue, nameValue)
            workValue35.proxy = workValue37
          end
        end
        if workValue29 then
          workValue33 = workValue29
          workValue35 = workValue27
          workValue37, textValue, nameValue, textValue2 = ...
          workValue33(workValue35, workValue37, textValue, nameValue, textValue2)
        end
        return workValue27
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue20; parameters: arg1, ...) ===
function workValue20(arg1, ...)
  local arg2, arg3, arg4, workValue27, workValue29, workValue31, workValue33, workValue35, workValue37, textValue, nameValue, textValue2, stringHelper2
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "string" == arg2 then
    arg2 = {}
    arg3 = {}
    arg2.__add = arg3
    arg3 = {}
    arg2.__sub = arg3
    arg3 = {}
    arg2.__mul = arg3
    arg3 = {}
    arg2.__div = arg3
    arg3 = {}
    arg2.__pow = arg3
    arg3 = {}
    arg2.__mod = arg3
    arg3 = {}
    arg2.__eq = arg3
    arg3 = {}
    arg2.__le = arg3
    arg3 = {}
    arg2.__lt = arg3
    arg3 = {}
    arg2.__concat = arg3
    arg3 = {}
    arg4, workValue27, workValue29, workValue31, workValue33, workValue35, workValue37, textValue, nameValue, textValue2, stringHelper2 = ...
    arg3[1] = arg4
    arg3[2] = workValue27
    arg3[3] = workValue29
    arg3[4] = workValue31
    arg3[5] = workValue33
    arg3[6] = workValue35
    arg3[7] = workValue37
    arg3[8] = textValue
    arg3[9] = nameValue
    arg3[10] = textValue2
    arg3[11] = stringHelper2
    arg4 = iterator
    workValue27 = arg3
    arg4, workValue27, workValue29, workValue31 = arg4(workValue27)
    for workValue33, workValue35 in arg4, workValue27, workValue29, workValue31 do
      workValue37 = tableHelper
      textValue = workValue35
      workValue37 = workValue37(textValue)
      textValue = nil
      if workValue37 then
        textValue = workValue37.luaoop
      end
      if textValue then
        nameValue = textValue.type
        if not nameValue then
          goto flow_label_64
        end
      end
      nameValue = error
      textValue2 = "invalid base class #"
      stringHelper2 = workValue33
      textValue2 = textValue2 .. stringHelper2
      nameValue(textValue2)
      ::flow_label_64::
      nameValue = textValue.build
      if not nameValue then
        nameValue = workValue14
        textValue2 = workValue35
        nameValue(textValue2)
      end
    end
    arg4 = string
    arg4 = arg4.gsub
    workValue27 = tostring
    workValue29 = arg2
    workValue27 = workValue27(workValue29)
    workValue29 = "table:"
    workValue31 = "class<"
    workValue33 = arg1
    workValue35 = ">:"
    workValue31 = workValue31 .. workValue33 .. workValue35
    workValue33 = 1
    arg4 = arg4(workValue27, workValue29, workValue31, workValue33)
    workValue27 = tableHelper2
    workValue29 = arg2
    workValue31 = {}
    workValue33 = {}
    workValue33.bases = arg3
    workValue33.name = arg1
    workValue31.luaoop = workValue33
    workValue33 = workValue18
    workValue31.__call = workValue33

    -- === HELPER FUNCTION (decompiler name: workValue33; parameters: arg12) ===
    function workValue33(arg12)
      local workValue11
      workValue11 = arg4
      return workValue11
    end
    workValue31.__tostring = workValue33
    return workValue27(workValue29, workValue31)
  else
    arg2 = error
    arg3 = "class name is not a string"
    arg2(arg3)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue21; parameters: arg1, arg2) ===
function workValue21(arg1, arg2)
  local arg3, arg4, workValue27, workValue29
  if arg1 then
    arg3 = tableHelper
    arg4 = arg1
    arg3 = arg3(arg4)
    arg4 = nil
    if arg3 then
      arg4 = arg3.luaoop
    end
    if arg4 then
      workValue27 = arg4.type
      if not workValue27 then
        workValue27 = arg4.types
        if not workValue27 then
          workValue27 = workValue14
          workValue29 = arg1
          workValue27(workValue29)
        end
      end
      workValue27 = arg4.types
      workValue27 = workValue27[arg2]
      return workValue27
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue22; parameters: arg1) ===
function workValue22(arg1)
  local arg2, arg3, arg4, workValue27, workValue29, workValue31, workValue33, workValue35, workValue37, textValue
  if arg1 then
    arg2 = tableHelper
    arg3 = arg1
    arg2 = arg2(arg3)
    arg3 = nil
    if arg2 then
      arg3 = arg2.luaoop
    end
    if arg3 then
      arg4 = arg3.types
      if not arg4 then
        arg4 = arg3.type
        if not arg4 then
          arg4 = workValue14
          workValue27 = arg1
          arg4(workValue27)
        end
      end
      arg4 = {}
      workValue27 = iterator
      workValue29 = arg3.types
      workValue27, workValue29, workValue31, workValue33 = workValue27(workValue29)
      for workValue35, workValue37 in workValue27, workValue29, workValue31, workValue33 do
        arg4[workValue35] = workValue37
      end
      return arg4
    end
  end
end

-- === HELPER FUNCTION (decompiler name: workValue23; parameters: arg1) ===
function workValue23(arg1)
  local arg2, arg3, arg4, workValue27
  if arg1 then
    arg2 = tableHelper
    arg3 = arg1
    arg2 = arg2(arg3)
    arg3 = nil
    if arg2 then
      arg3 = arg2.luaoop
    end
    if arg3 then
      arg4 = arg3.type
      if not arg4 then
        arg4 = arg3.build
        if not arg4 then
          arg4 = workValue14
          workValue27 = arg1
          arg4(workValue27)
        end
        arg4 = arg3.meta
        return arg4
      end
    end
  end
end
workValue24 = tableHelper2
dataTable2 = {}
dataTable2.new = workValue20
dataTable2.name = workValue30
dataTable2.type = workValue28
dataTable2.is = workValue21
dataTable2.types = workValue22
dataTable2.meta = workValue23
dataTable2.instantiate = workValue18
dataTable2.build = workValue14
dataTable2.getop = workValue32
dataTable3 = {}

-- === HELPER FUNCTION (decompiler name: workValue25; parameters: arg1, arg2, ...) ===
function workValue25(arg1, arg2, ...)
  local arg3, arg4, workValue27
  arg3 = workValue20
  arg4 = arg2
  workValue27 = ...
  return arg3(arg4, workValue27)
end
dataTable3.__call = workValue25
workValue24 = workValue24(dataTable2, dataTable3)
class = workValue24
workValue24 = Luaoop
dataTable2 = class
workValue24.class = dataTable2
