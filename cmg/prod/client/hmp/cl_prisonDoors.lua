--[[
    Beginner Guide: cl_prisonDoors.lua
    ==================================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Prison Doors
    =============================

    File: cmg/prod/client/hmp/cl_prisonDoors.lua
    Purpose: This file contains prison/HMP gameplay.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Decompiled-code note:
      This file came from decompiled Lua. The repeated AI-cleanup boilerplate
      has been removed. Any remaining SHX-style values are compiler/decompiler
      temporaries whose meaning changes repeatedly; follow the surrounding API
      call and the comments rather than treating one SHX variable as one concept.

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

    Config/data used:
      * cfg/cfg_prison
      * cfg/cfg_factiongroups

    Commands/command-like entries found:
      * hmpkeyfob

    Network/hash identifiers found: 8
      They are intentionally left unchanged because matching server code may use them.
      * e1a464cf07
      * 1bfa3cabbc
      * a93701fa04
      * 6d3dee7984
      * 0fad7a76a8
      * 62bd2178cb
      * c5dd6087ae
      * 6c335938c2

    Named framework/network events found:
      * CMG:onClientSpawn

    Example player-facing text in this file:
      * Press ~INPUT_CONTEXT~ to open the control panel
      * ~b~Gate Keyfob Menu
      * ~r~You must be in your vehicle to use the fob.
      * ~r~You are not close enough to the gate to use this.

]]
local cmgCall, cmgCall5, textValue7, workValue12, flag5, flag7, flag8, flag9, dataTable5, dataTable6, dataTable, workValue, workValue3, workValue5, cmgCall3, cmgCall4, eventHandlerRegistration, flag3, textValue2, rageUiCall, textValue3, textValue4, rageUiCall2, rageUiCall3, textValue5, textValue6
cmgCall = CMG
cmgCall = cmgCall.loadModule
cmgCall5 = "cfg/cfg_prison"
-- Beginner: result below is config.
cmgCall = cmgCall(cmgCall5)
cmgCall5 = CMG
cmgCall5 = cmgCall5.loadModule
textValue7 = "cfg/cfg_factiongroups"
-- Beginner: result below is config.
cmgCall5 = cmgCall5(textValue7)
function textValue7()
  local arg1, arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8
  arg1 = ipairs
  arg2 = cmgCall5.hmpRanks
  arg1, arg2, numberValue4, textValue8 = arg1(arg2)
  for textValue9, numberValue6 in arg1, arg2, numberValue4, textValue8 do
    numberValue7 = numberValue6[3]
    if numberValue7 then
      cmgCall9 = CMG
      cmgCall9 = cmgCall9.hasClientPermission
      numberValue8 = numberValue7
      cmgCall9 = cmgCall9(numberValue8)
      if cmgCall9 then
        cmgCall9 = true
        return cmgCall9
      end
    end
  end
  arg1 = false
  return arg1
end
workValue12 = GetInteriorAtCoordsWithType
flag5 = 1787.004
flag7 = 2593.1984
flag8 = 45.7978
flag9 = "int_prison_main"
workValue12 = workValue12(flag5, flag7, flag8, flag9)
flag5 = false
flag7 = false
flag8 = true
flag9 = true
dataTable5 = {}
dataTable6 = {}
dataTable = {}
dataTable6.allEntranceDoors = dataTable
dataTable = {}
dataTable6.allPrisonCellDoors = dataTable
dataTable = {}
dataTable6.allSegregationDoors = dataTable
dataTable = {}
dataTable6.allOtherDoors = dataTable
dataTable = {}
dataTable6.outsideStairDoors = dataTable
dataTable = false
workValue = dataTable6.allEntranceDoors
function workValue3(arg1)
  local arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2
  arg2 = pairs
  numberValue4 = cmgCall.doors
  arg2, numberValue4, textValue8, textValue9 = arg2(numberValue4)
  for numberValue6, numberValue7 in arg2, numberValue4, textValue8, textValue9 do
    cmgCall9 = 1
    numberValue8 = #numberValue7
    cmgCall10 = 1
    for textValue = cmgCall9, numberValue8, cmgCall10 do
      workValue2 = numberValue7[textValue]
      workValue2 = workValue2.doorHash
      if workValue2 == arg1 then
        workValue2 = numberValue7[textValue]
        return workValue2
      end
    end
  end
end
function workValue5(arg1)
  local arg2, numberValue4, textValue8, textValue9
  numberValue4 = arg1
  arg2 = arg1.gsub
  textValue8 = "%s+%(A%)$"
  textValue9 = ""
  arg2 = arg2(numberValue4, textValue8, textValue9)
  return arg2
end
cmgCall3 = Citizen
cmgCall3 = cmgCall3.CreateThread
function cmgCall4()
  local arg1, arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7, nameValue, dataTable3, position
  arg1 = pairs
  arg2 = cmgCall.doors
  arg1, arg2, numberValue4, textValue8 = arg1(arg2)
  for textValue9, numberValue6 in arg1, arg2, numberValue4, textValue8 do
    numberValue7 = 0
    cmgCall9 = 0.207
    numberValue8 = 0.241
    cmgCall10 = 0.099
    textValue = 0.08
    workValue2 = 1
    workValue4 = #numberValue6
    dataTable2 = 1
    for numberValue2 = workValue2, workValue4, dataTable2 do
      workValue6 = numberValue6[numberValue2]
      workValue6 = workValue6.pairedDoorHash
      if workValue6 then
        workValue6 = numberValue6[numberValue2]
        workValue6 = workValue6.doorHash
        workValue7 = numberValue6[numberValue2]
        workValue7 = workValue7.pairedDoorHash
        if workValue6 > workValue7 then
          goto flow_label_67
        end
      end
      workValue6 = numberValue6[numberValue2]
      workValue6 = workValue6.name
      workValue7 = numberValue6[numberValue2]
      workValue7 = workValue7.pairedDoorHash
      if workValue7 then
        workValue7 = workValue5
        nameValue = numberValue6[numberValue2]
        nameValue = nameValue.name
        workValue7 = workValue7(nameValue)
        workValue6 = workValue7
      end
      workValue7 = dataTable6
      workValue7 = workValue7[textValue9]
      nameValue = dataTable6
      nameValue = nameValue[textValue9]
      nameValue = #nameValue
      nameValue = nameValue + 1
      dataTable3 = {}
      dataTable3.name = workValue6
      dataTable3.x = cmgCall9
      dataTable3.y = numberValue8
      position = numberValue6[numberValue2]
      position = position.doorHash
      dataTable3.doorHash = position
      workValue7[nameValue] = dataTable3
      numberValue7 = numberValue7 + 1
      workValue7 = cmgCall10 / 2
      workValue7 = cmgCall9 + workValue7
      cmgCall9 = workValue7 + 0.06
      if 6 == numberValue7 then
        cmgCall9 = 0.207
        workValue7 = numberValue8 + textValue
        numberValue8 = workValue7 + 0.01
        numberValue7 = 0
      end
      ::flow_label_67::
    end
    workValue2 = dataTable6
    workValue2 = workValue2[textValue9]
    workValue4 = dataTable6
    workValue4 = workValue4[textValue9]
    workValue4 = #workValue4
    workValue4 = workValue4 + 1
    dataTable2 = {}
    dataTable2.name = "All"
    dataTable2.x = 0.497
    dataTable2.y = 0.819
    dataTable2.doorHash = textValue9
    workValue2[workValue4] = dataTable2
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall3(cmgCall4)
cmgCall3 = CMG
cmgCall3 = cmgCall3.registerCommand
cmgCall4 = "+openhmpmenu"
function eventHandlerRegistration()
  local arg1, arg2
  arg1 = true
  dataTable = arg1
end
flag3 = false
cmgCall3(cmgCall4, eventHandlerRegistration, flag3)
cmgCall3 = CMG
cmgCall3 = cmgCall3.registerCommand
cmgCall4 = "-openhmpmenu"
function eventHandlerRegistration()
  local arg1, arg2
  arg1 = false
  dataTable = arg1
end
flag3 = false
cmgCall3(cmgCall4, eventHandlerRegistration, flag3)
cmgCall3 = RegisterKeyMapping
cmgCall4 = "+openhmpmenu"
eventHandlerRegistration = "HMP Control Panel"
flag3 = "KEYBOARD"
textValue2 = "E"
-- Beginner: Bind a command to a keyboard/controller key.
cmgCall3(cmgCall4, eventHandlerRegistration, flag3, textValue2)
cmgCall3 = AddEventHandler
cmgCall4 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function eventHandlerRegistration(arg1, arg2)
  local numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7, nameValue
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function numberValue4()
      local arg12, flag4
      arg12 = drawNativeNotification
      flag4 = "Press ~INPUT_CONTEXT~ to open the control panel"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(flag4)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function textValue8()
      local arg12, flag4
      arg12 = false
      flag7 = arg12
      arg12 = CMG
      arg12 = arg12.setCursor
      flag4 = 0
      arg12(flag4)
      arg12 = CMG
      arg12 = arg12.setInGUI
      flag4 = false
      arg12(flag4)
    end
    function textValue9()
      local arg12, flag4, numberValue5
      arg12 = dataTable
      if arg12 then
        arg12 = flag7
        if not arg12 then
          arg12 = CMG
          arg12 = arg12.hasClientPermission
          flag4 = "prisonguard.onduty.permission"
          arg12 = arg12(flag4)
          if arg12 then
            arg12 = true
            flag7 = arg12
            arg12 = CMG
            arg12 = arg12.setCursor
            flag4 = 1
            arg12(flag4)
            arg12 = CMG
            arg12 = arg12.setInGUI
            flag4 = true
            arg12(flag4)
            arg12 = false
            dataTable = arg12
          end
      end
      else
        arg12 = IsControlJustPressed
        flag4 = 1
        numberValue5 = 177
        arg12 = arg12(flag4, numberValue5)
        if not arg12 then
          arg12 = dataTable
          if not arg12 then
            goto flow_label_51
          end
          arg12 = flag7
          if not arg12 then
            goto flow_label_51
          end
        end
        arg12 = false
        flag7 = arg12
        arg12 = CMG
        arg12 = arg12.setInGUI
        flag4 = false
        arg12(flag4)
        arg12 = CMG
        arg12 = arg12.setCursor
        flag4 = 0
        arg12(flag4)
        arg12 = false
        dataTable = arg12
        goto flow_label_84
        ::flow_label_51::
        arg12 = IsControlJustPressed
        flag4 = 0
        numberValue5 = 168
        arg12 = arg12(flag4, numberValue5)
        if arg12 then
          arg12 = CMG
          arg12 = arg12.getClientUserId
          -- Beginner: result below is userId.
          arg12 = arg12()
          if arg12 then
            flag4 = CMG
            flag4 = flag4.isDeveloper
            numberValue5 = arg12
            flag4 = flag4(numberValue5)
            if flag4 then
              flag4 = CMG
              flag4 = flag4.hasClientPermission
              numberValue5 = "prisonguard.onduty.permission"
              flag4 = flag4(numberValue5)
              if flag4 then
                flag4 = true
                flag7 = flag4
                flag4 = CMG
                flag4 = flag4.setCursor
                numberValue5 = 1
                flag4(numberValue5)
                flag4 = CMG
                flag4 = flag4.setInGUI
                numberValue5 = true
                flag4(numberValue5)
              end
            end
          end
        end
      end
      ::flow_label_84::
    end
    numberValue6 = 1
    numberValue7 = cmgCall.controlPanels
    numberValue7 = #numberValue7
    cmgCall9 = 1
    for numberValue8 = numberValue6, numberValue7, cmgCall9 do
      cmgCall10 = CMG
      cmgCall10 = cmgCall10.createArea
      textValue = "prisonControlPanel_"
      workValue2 = numberValue8
      textValue = textValue .. workValue2
      workValue2 = cmgCall.controlPanels
      workValue2 = workValue2[numberValue8]
      workValue2 = workValue2.coords
      workValue4 = 1.5
      dataTable2 = 5
      numberValue2 = numberValue4
      workValue6 = textValue8
      workValue7 = textValue9
      nameValue = {}
      -- Beginner: Create an interaction area around a world position.
      cmgCall10(textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7, nameValue)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgCall3(cmgCall4, eventHandlerRegistration)
function cmgCall3()
  local arg1, arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7
  arg1 = flag7
  if arg1 then
    arg1 = DrawRect
    arg2 = 0.493
    numberValue4 = 0.489
    textValue8 = 0.71
    textValue9 = 0.765
    numberValue6 = 0
    numberValue7 = 0
    cmgCall9 = 0
    numberValue8 = 150
    arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8)
    arg1 = DrawRect
    arg2 = 0.207
    numberValue4 = 0.241
    textValue8 = 0.099
    textValue9 = 0.08
    numberValue6 = 0
    numberValue7 = 0
    cmgCall9 = 0
    numberValue8 = 150
    arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8)
    arg1 = DrawRect
    arg2 = 0.239
    numberValue4 = 0.148
    textValue8 = 0.185
    textValue9 = 0.055
    numberValue6 = 0
    numberValue7 = 0
    cmgCall9 = 0
    numberValue8 = 150
    arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8)
    arg1 = DrawRect
    arg2 = 0.423
    numberValue4 = 0.148
    textValue8 = 0.183
    textValue9 = 0.055
    numberValue6 = 0
    numberValue7 = 0
    cmgCall9 = 0
    numberValue8 = 150
    arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8)
    arg1 = DrawRect
    arg2 = 0.597
    numberValue4 = 0.148
    textValue8 = 0.165
    textValue9 = 0.055
    numberValue6 = 0
    numberValue7 = 0
    cmgCall9 = 0
    numberValue8 = 150
    arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8)
    arg1 = DrawRect
    arg2 = 0.7605
    numberValue4 = 0.148
    textValue8 = 0.162
    textValue9 = 0.055
    numberValue6 = 0
    numberValue7 = 0
    cmgCall9 = 0
    numberValue8 = 150
    arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8)
    arg1 = CursorInArea
    arg2 = GetArea
    numberValue4 = 0.239
    textValue8 = 0.148
    textValue9 = 0.185
    numberValue6 = 0.055
    arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7 = arg2(numberValue4, textValue8, textValue9, numberValue6)
    arg1 = arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7)
    if not arg1 then
      arg1 = DrawAdvancedText
      arg2 = 0.341
      numberValue4 = 0.15
      textValue8 = 0.005
      textValue9 = 0.0028
      numberValue6 = 0.4
      numberValue7 = "Entrance Doors"
      cmgCall9 = 255
      numberValue8 = 255
      cmgCall10 = 255
      textValue = 255
      workValue2 = 0
      workValue4 = 0
      arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4)
    else
      arg1 = IsControlJustPressed
      arg2 = 1
      numberValue4 = 329
      arg1 = arg1(arg2, numberValue4)
      if not arg1 then
        arg1 = IsDisabledControlJustPressed
        arg2 = 1
        numberValue4 = 329
        arg1 = arg1(arg2, numberValue4)
        if not arg1 then
          goto flow_label_111
        end
      end
      arg1 = dataTable6.allEntranceDoors
      workValue = arg1
      arg1 = PlaySound
      arg2 = -1
      numberValue4 = "SELECT"
      textValue8 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      textValue9 = false
      numberValue6 = 0
      numberValue7 = true
      arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7)
      ::flow_label_111::
      arg1 = DrawAdvancedText
      arg2 = 0.341
      numberValue4 = 0.15
      textValue8 = 0.005
      textValue9 = 0.0028
      numberValue6 = 0.4
      numberValue7 = "Entrance Doors"
      cmgCall9 = 138
      numberValue8 = 138
      cmgCall10 = 138
      textValue = 255
      workValue2 = 0
      workValue4 = 0
      arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4)
    end
    arg1 = CursorInArea
    arg2 = GetArea
    numberValue4 = 0.423
    textValue8 = 0.148
    textValue9 = 0.183
    numberValue6 = 0.056
    arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7 = arg2(numberValue4, textValue8, textValue9, numberValue6)
    arg1 = arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7)
    if not arg1 then
      arg1 = DrawAdvancedText
      arg2 = 0.513
      numberValue4 = 0.15
      textValue8 = 0.005
      textValue9 = 0.0028
      numberValue6 = 0.4
      numberValue7 = "Prison Cell Doors"
      cmgCall9 = 255
      numberValue8 = 255
      cmgCall10 = 255
      textValue = 255
      workValue2 = 0
      workValue4 = 0
      arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4)
    else
      arg1 = IsControlJustPressed
      arg2 = 1
      numberValue4 = 329
      arg1 = arg1(arg2, numberValue4)
      if not arg1 then
        arg1 = IsDisabledControlJustPressed
        arg2 = 1
        numberValue4 = 329
        arg1 = arg1(arg2, numberValue4)
        if not arg1 then
          goto flow_label_172
        end
      end
      arg1 = dataTable6.allPrisonCellDoors
      workValue = arg1
      arg1 = PlaySound
      arg2 = -1
      numberValue4 = "SELECT"
      textValue8 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      textValue9 = false
      numberValue6 = 0
      numberValue7 = true
      arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7)
      ::flow_label_172::
      arg1 = DrawAdvancedText
      arg2 = 0.513
      numberValue4 = 0.15
      textValue8 = 0.005
      textValue9 = 0.0028
      numberValue6 = 0.4
      numberValue7 = "Prison Cell Doors"
      cmgCall9 = 138
      numberValue8 = 138
      cmgCall10 = 138
      textValue = 255
      workValue2 = 0
      workValue4 = 0
      arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4)
    end
    arg1 = CursorInArea
    arg2 = GetArea
    numberValue4 = 0.597
    textValue8 = 0.148
    textValue9 = 0.166
    numberValue6 = 0.055
    arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7 = arg2(numberValue4, textValue8, textValue9, numberValue6)
    arg1 = arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7)
    if not arg1 then
      arg1 = DrawAdvancedText
      arg2 = 0.691
      numberValue4 = 0.15
      textValue8 = 0.005
      textValue9 = 0.0028
      numberValue6 = 0.4
      numberValue7 = "Segregation Doors"
      cmgCall9 = 255
      numberValue8 = 255
      cmgCall10 = 255
      textValue = 255
      workValue2 = 0
      workValue4 = 0
      arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4)
    else
      arg1 = IsControlJustPressed
      arg2 = 1
      numberValue4 = 329
      arg1 = arg1(arg2, numberValue4)
      if not arg1 then
        arg1 = IsDisabledControlJustPressed
        arg2 = 1
        numberValue4 = 329
        arg1 = arg1(arg2, numberValue4)
        if not arg1 then
          goto flow_label_233
        end
      end
      arg1 = dataTable6.allSegregationDoors
      workValue = arg1
      arg1 = PlaySound
      arg2 = -1
      numberValue4 = "SELECT"
      textValue8 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      textValue9 = false
      numberValue6 = 0
      numberValue7 = true
      arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7)
      ::flow_label_233::
      arg1 = DrawAdvancedText
      arg2 = 0.691
      numberValue4 = 0.15
      textValue8 = 0.005
      textValue9 = 0.0028
      numberValue6 = 0.4
      numberValue7 = "Segregation Doors"
      cmgCall9 = 138
      numberValue8 = 138
      cmgCall10 = 138
      textValue = 255
      workValue2 = 0
      workValue4 = 0
      arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4)
    end
    arg1 = CursorInArea
    arg2 = GetArea
    numberValue4 = 0.761
    textValue8 = 0.148
    textValue9 = 0.162
    numberValue6 = 0.055
    arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7 = arg2(numberValue4, textValue8, textValue9, numberValue6)
    arg1 = arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7)
    if not arg1 then
      arg1 = DrawAdvancedText
      arg2 = 0.857
      numberValue4 = 0.15
      textValue8 = 0.005
      textValue9 = 0.0028
      numberValue6 = 0.4
      numberValue7 = "Other Doors"
      cmgCall9 = 255
      numberValue8 = 255
      cmgCall10 = 255
      textValue = 255
      workValue2 = 0
      workValue4 = 0
      arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4)
    else
      arg1 = IsControlJustPressed
      arg2 = 1
      numberValue4 = 329
      arg1 = arg1(arg2, numberValue4)
      if not arg1 then
        arg1 = IsDisabledControlJustPressed
        arg2 = 1
        numberValue4 = 329
        arg1 = arg1(arg2, numberValue4)
        if not arg1 then
          goto flow_label_301
        end
      end
      arg1 = workValue
      arg2 = dataTable6.allOtherDoors
      if arg1 == arg2 then
        arg1 = dataTable6.outsideStairDoors
        workValue = arg1
      else
        arg1 = dataTable6.allOtherDoors
        workValue = arg1
      end
      arg1 = PlaySound
      arg2 = -1
      numberValue4 = "SELECT"
      textValue8 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      textValue9 = false
      numberValue6 = 0
      numberValue7 = true
      arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7)
      ::flow_label_301::
      arg1 = DrawAdvancedText
      arg2 = 0.857
      numberValue4 = 0.15
      textValue8 = 0.005
      textValue9 = 0.0028
      numberValue6 = 0.4
      numberValue7 = "Other Doors"
      cmgCall9 = 138
      numberValue8 = 138
      cmgCall10 = 138
      textValue = 255
      workValue2 = 0
      workValue4 = 0
      arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4)
    end
    arg1 = 1
    arg2 = workValue
    arg2 = #arg2
    numberValue4 = 1
    for textValue8 = arg1, arg2, numberValue4 do
      textValue9 = workValue
      textValue9 = textValue9[textValue8]
      textValue9 = textValue9.name
      if "All" == textValue9 then
        textValue9 = workValue
        textValue9 = textValue9[textValue8]
        numberValue6 = textValue9.doorHash
        textValue9 = dataTable5
        textValue9 = textValue9[numberValue6]
        textValue9 = textValue9.currentState
        if 5 ~= textValue9 then
          textValue9 = workValue
          textValue9 = textValue9[textValue8]
          numberValue6 = textValue9.doorHash
          textValue9 = dataTable5
          textValue9 = textValue9[numberValue6]
          textValue9 = textValue9.currentState
          if 0 ~= textValue9 then
            goto flow_label_352
          end
        end
        textValue9 = DrawRect
        numberValue6 = 0.497
        numberValue7 = 0.819
        cmgCall9 = 0.185
        numberValue8 = 0.058
        cmgCall10 = 0
        textValue = 180
        workValue2 = 0
        workValue4 = 150
        textValue9(numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4)
        goto flow_label_362
        ::flow_label_352::
        textValue9 = DrawRect
        numberValue6 = 0.497
        numberValue7 = 0.819
        cmgCall9 = 0.185
        numberValue8 = 0.058
        cmgCall10 = 180
        textValue = 0
        workValue2 = 0
        workValue4 = 150
        textValue9(numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4)
        ::flow_label_362::
        textValue9 = CursorInArea
        numberValue6 = GetArea
        numberValue7 = 0.497
        cmgCall9 = 0.819
        numberValue8 = 0.185
        cmgCall10 = 0.058
        numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7 = numberValue6(numberValue7, cmgCall9, numberValue8, cmgCall10)
        textValue9 = textValue9(numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7)
        if not textValue9 then
          textValue9 = DrawAdvancedText
          numberValue6 = 0.592
          numberValue7 = 0.82
          cmgCall9 = 0.005
          numberValue8 = 0.0028
          cmgCall10 = 0.4
          textValue = "All"
          workValue2 = 255
          workValue4 = 255
          dataTable2 = 255
          numberValue2 = 255
          workValue6 = 0
          workValue7 = 0
          textValue9(numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7)
        else
          textValue9 = flag9
          if textValue9 then
            textValue9 = IsControlJustPressed
            numberValue6 = 1
            numberValue7 = 329
            textValue9 = textValue9(numberValue6, numberValue7)
            if not textValue9 then
              textValue9 = IsDisabledControlJustPressed
              numberValue6 = 1
              numberValue7 = 329
              textValue9 = textValue9(numberValue6, numberValue7)
              if not textValue9 then
                goto flow_label_447
              end
            end
            textValue9 = workValue
            textValue9 = textValue9[textValue8]
            numberValue6 = textValue9.doorHash
            textValue9 = dataTable5
            textValue9 = textValue9[numberValue6]
            textValue9 = textValue9.currentState
            if 5 ~= textValue9 then
              textValue9 = workValue
              textValue9 = textValue9[textValue8]
              numberValue6 = textValue9.doorHash
              textValue9 = dataTable5
              textValue9 = textValue9[numberValue6]
              textValue9 = textValue9.currentState
              if 0 ~= textValue9 then
                goto flow_label_426
              end
            end
            textValue9 = TriggerServerEvent
            numberValue6 = "e1a464cf07"
            numberValue7 = workValue
            numberValue7 = numberValue7[textValue8]
            numberValue7 = numberValue7.doorHash
            cmgCall9 = 4
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e1a464cf07".
            textValue9(numberValue6, numberValue7, cmgCall9)
            goto flow_label_433
            ::flow_label_426::
            textValue9 = TriggerServerEvent
            numberValue6 = "e1a464cf07"
            numberValue7 = workValue
            numberValue7 = numberValue7[textValue8]
            numberValue7 = numberValue7.doorHash
            cmgCall9 = 5
            textValue9(numberValue6, numberValue7, cmgCall9)
            ::flow_label_433::
            textValue9 = PlaySound
            numberValue6 = -1
            numberValue7 = "SELECT"
            cmgCall9 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            numberValue8 = false
            cmgCall10 = 0
            textValue = true
            textValue9(numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue)
            textValue9 = false
            flag9 = textValue9
            textValue9 = SetTimeout
            numberValue6 = 500
            function numberValue7()
              local arg12, flag4
              arg12 = true
              flag9 = arg12
            end
            textValue9(numberValue6, numberValue7)
            ::flow_label_447::
            textValue9 = DrawAdvancedText
            numberValue6 = 0.592
            numberValue7 = 0.82
            cmgCall9 = 0.005
            numberValue8 = 0.0028
            cmgCall10 = 0.4
            textValue = "All"
            workValue2 = 138
            workValue4 = 138
            dataTable2 = 138
            numberValue2 = 255
            workValue6 = 0
            workValue7 = 0
            textValue9(numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7)
          else
            textValue9 = DrawAdvancedText
            numberValue6 = 0.592
            numberValue7 = 0.82
            cmgCall9 = 0.005
            numberValue8 = 0.0028
            cmgCall10 = 0.4
            textValue = "All"
            workValue2 = 255
            workValue4 = 255
            dataTable2 = 255
            numberValue2 = 255
            workValue6 = 0
            workValue7 = 0
            textValue9(numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7)
          end
        end
      else
        textValue9 = workValue
        textValue9 = textValue9[textValue8]
        numberValue6 = textValue9.doorHash
        textValue9 = dataTable5
        textValue9 = textValue9[numberValue6]
        textValue9 = textValue9.currentState
        if 5 ~= textValue9 then
          textValue9 = workValue
          textValue9 = textValue9[textValue8]
          numberValue6 = textValue9.doorHash
          textValue9 = dataTable5
          textValue9 = textValue9[numberValue6]
          textValue9 = textValue9.currentState
          if 0 ~= textValue9 then
            goto flow_label_508
          end
        end
        textValue9 = DrawRect
        numberValue6 = workValue
        numberValue6 = numberValue6[textValue8]
        numberValue6 = numberValue6.x
        numberValue7 = workValue
        numberValue7 = numberValue7[textValue8]
        numberValue7 = numberValue7.y
        cmgCall9 = 0.099
        numberValue8 = 0.08
        cmgCall10 = 0
        textValue = 180
        workValue2 = 0
        workValue4 = 150
        textValue9(numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4)
        goto flow_label_522
        ::flow_label_508::
        textValue9 = DrawRect
        numberValue6 = workValue
        numberValue6 = numberValue6[textValue8]
        numberValue6 = numberValue6.x
        numberValue7 = workValue
        numberValue7 = numberValue7[textValue8]
        numberValue7 = numberValue7.y
        cmgCall9 = 0.099
        numberValue8 = 0.08
        cmgCall10 = 180
        textValue = 0
        workValue2 = 0
        workValue4 = 150
        textValue9(numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4)
        ::flow_label_522::
        textValue9 = CursorInArea
        numberValue6 = GetArea
        numberValue7 = workValue
        numberValue7 = numberValue7[textValue8]
        numberValue7 = numberValue7.x
        cmgCall9 = workValue
        cmgCall9 = cmgCall9[textValue8]
        cmgCall9 = cmgCall9.y
        numberValue8 = 0.099
        cmgCall10 = 0.08
        numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7 = numberValue6(numberValue7, cmgCall9, numberValue8, cmgCall10)
        textValue9 = textValue9(numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7)
        if not textValue9 then
          textValue9 = DrawAdvancedText
          numberValue6 = workValue
          numberValue6 = numberValue6[textValue8]
          numberValue6 = numberValue6.x
          numberValue6 = numberValue6 + 0.0967
          numberValue7 = workValue
          numberValue7 = numberValue7[textValue8]
          numberValue7 = numberValue7.y
          numberValue7 = numberValue7 + 0.0098
          cmgCall9 = 0.001
          numberValue8 = 0.001
          cmgCall10 = 0.25
          textValue = workValue
          textValue = textValue[textValue8]
          textValue = textValue.name
          workValue2 = 255
          workValue4 = 255
          dataTable2 = 255
          numberValue2 = 255
          workValue6 = 0
          workValue7 = 0
          textValue9(numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7)
        else
          textValue9 = flag9
          if textValue9 then
            textValue9 = IsControlJustPressed
            numberValue6 = 1
            numberValue7 = 329
            textValue9 = textValue9(numberValue6, numberValue7)
            if not textValue9 then
              textValue9 = IsDisabledControlJustPressed
              numberValue6 = 1
              numberValue7 = 329
              textValue9 = textValue9(numberValue6, numberValue7)
              if not textValue9 then
                goto flow_label_613
              end
            end
            textValue9 = workValue
            textValue9 = textValue9[textValue8]
            numberValue6 = textValue9.doorHash
            textValue9 = dataTable5
            textValue9 = textValue9[numberValue6]
            textValue9 = textValue9.currentState
            if 4 == textValue9 then
              textValue9 = TriggerServerEvent
              numberValue6 = "e1a464cf07"
              numberValue7 = workValue
              numberValue7 = numberValue7[textValue8]
              numberValue7 = numberValue7.doorHash
              cmgCall9 = 5
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e1a464cf07".
              textValue9(numberValue6, numberValue7, cmgCall9)
            else
              textValue9 = TriggerServerEvent
              numberValue6 = "e1a464cf07"
              numberValue7 = workValue
              numberValue7 = numberValue7[textValue8]
              numberValue7 = numberValue7.doorHash
              cmgCall9 = 4
              textValue9(numberValue6, numberValue7, cmgCall9)
            end
            textValue9 = PlaySound
            numberValue6 = -1
            numberValue7 = "SELECT"
            cmgCall9 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            numberValue8 = false
            cmgCall10 = 0
            textValue = true
            textValue9(numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue)
            textValue9 = false
            flag9 = textValue9
            textValue9 = SetTimeout
            numberValue6 = 500
            function numberValue7()
              local arg12, flag4
              arg12 = true
              flag9 = arg12
            end
            textValue9(numberValue6, numberValue7)
            ::flow_label_613::
            textValue9 = DrawAdvancedText
            numberValue6 = workValue
            numberValue6 = numberValue6[textValue8]
            numberValue6 = numberValue6.x
            numberValue6 = numberValue6 + 0.0967
            numberValue7 = workValue
            numberValue7 = numberValue7[textValue8]
            numberValue7 = numberValue7.y
            numberValue7 = numberValue7 + 0.0098
            cmgCall9 = 0.001
            numberValue8 = 0.001
            cmgCall10 = 0.25
            textValue = workValue
            textValue = textValue[textValue8]
            textValue = textValue.name
            workValue2 = 138
            workValue4 = 138
            dataTable2 = 138
            numberValue2 = 255
            workValue6 = 0
            workValue7 = 0
            textValue9(numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7)
          else
            textValue9 = DrawAdvancedText
            numberValue6 = workValue
            numberValue6 = numberValue6[textValue8]
            numberValue6 = numberValue6.x
            numberValue6 = numberValue6 + 0.0967
            numberValue7 = workValue
            numberValue7 = numberValue7[textValue8]
            numberValue7 = numberValue7.y
            numberValue7 = numberValue7 + 0.0098
            cmgCall9 = 0.001
            numberValue8 = 0.001
            cmgCall10 = 0.25
            textValue = workValue
            textValue = textValue[textValue8]
            textValue = textValue.name
            workValue2 = 255
            workValue4 = 255
            dataTable2 = 255
            numberValue2 = 255
            workValue6 = 0
            workValue7 = 0
            textValue9(numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7)
          end
        end
      end
    end
    arg1 = flag5
    if arg1 then
      arg1 = DrawRect
      arg2 = 0.791
      numberValue4 = 0.819
      textValue8 = 0.081
      textValue9 = 0.06
      numberValue6 = 180
      numberValue7 = 0
      cmgCall9 = 0
      numberValue8 = 150
      arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8)
    else
      arg1 = DrawRect
      arg2 = 0.791
      numberValue4 = 0.819
      textValue8 = 0.081
      textValue9 = 0.06
      numberValue6 = 0
      numberValue7 = 180
      cmgCall9 = 0
      numberValue8 = 150
      arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8)
    end
    arg1 = CursorInArea
    arg2 = GetArea
    numberValue4 = 0.791
    textValue8 = 0.819
    textValue9 = 0.081
    numberValue6 = 0.06
    arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7 = arg2(numberValue4, textValue8, textValue9, numberValue6)
    arg1 = arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7)
    if not arg1 then
      arg1 = DrawAdvancedText
      arg2 = 0.886
      numberValue4 = 0.82
      textValue8 = 0.005
      textValue9 = 0.0028
      numberValue6 = 0.4
      numberValue7 = "LOCKDOWN"
      cmgCall9 = 255
      numberValue8 = 255
      cmgCall10 = 255
      textValue = 255
      workValue2 = 0
      workValue4 = 0
      arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4)
    else
      arg1 = flag8
      if arg1 then
        arg1 = IsControlJustPressed
        arg2 = 1
        numberValue4 = 329
        arg1 = arg1(arg2, numberValue4)
        if not arg1 then
          arg1 = IsDisabledControlJustPressed
          arg2 = 1
          numberValue4 = 329
          arg1 = arg1(arg2, numberValue4)
          if not arg1 then
            goto flow_label_734
          end
        end
        arg1 = flag5
        arg1 = not arg1
        flag5 = arg1
        arg1 = TriggerServerEvent
        arg2 = "1bfa3cabbc"
        numberValue4 = flag5
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1bfa3cabbc".
        arg1(arg2, numberValue4)
        ::flow_label_734::
        arg1 = DrawAdvancedText
        arg2 = 0.886
        numberValue4 = 0.82
        textValue8 = 0.005
        textValue9 = 0.0028
        numberValue6 = 0.4
        numberValue7 = "LOCKDOWN"
        cmgCall9 = 0
        numberValue8 = 138
        cmgCall10 = 138
        textValue = 138
        workValue2 = 0
        workValue4 = 0
        arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4)
      else
        arg1 = DrawAdvancedText
        arg2 = 0.886
        numberValue4 = 0.82
        textValue8 = 0.005
        textValue9 = 0.0028
        numberValue6 = 0.4
        numberValue7 = "LOCKDOWN"
        cmgCall9 = 255
        numberValue8 = 255
        cmgCall10 = 255
        textValue = 255
        workValue2 = 0
        workValue4 = 0
        arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4)
      end
    end
  end
end
cmgCall4 = RegisterNetEvent
eventHandlerRegistration = "a93701fa04"
-- Beginner: this function handles network event "a93701fa04".
function flag3(arg1)
  local arg2, numberValue4, textValue8
  flag5 = arg1
  arg2 = flag5
  if arg2 then
    arg2 = RefreshInterior
    numberValue4 = workValue12
    arg2(numberValue4)
    arg2 = ActivateInteriorEntitySet
    numberValue4 = workValue12
    textValue8 = "prison_alarm"
    arg2(numberValue4, textValue8)
    arg2 = Citizen
    arg2 = arg2.CreateThread
    function numberValue4()
      local arg12, flag4, numberValue5
      while true do
        arg12 = PrepareAlarm
        flag4 = "PRISON_ALARMS"
        arg12 = arg12(flag4)
        if arg12 then
          break
        end
        arg12 = Citizen
        arg12 = arg12.Wait
        flag4 = 100
        arg12(flag4)
      end
      arg12 = StartAlarm
      flag4 = "PRISON_ALARMS"
      numberValue5 = true
      arg12(flag4, numberValue5)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg2(numberValue4)
  else
    arg2 = RefreshInterior
    numberValue4 = workValue12
    arg2(numberValue4)
    arg2 = DeactivateInteriorEntitySet
    numberValue4 = workValue12
    textValue8 = "prison_alarm"
    arg2(numberValue4, textValue8)
    arg2 = Citizen
    arg2 = arg2.CreateThread
    function numberValue4()
      local arg12, flag4
      while true do
        arg12 = PrepareAlarm
        flag4 = "PRISON_ALARMS"
        arg12 = arg12(flag4)
        if arg12 then
          break
        end
        arg12 = Citizen
        arg12 = arg12.Wait
        flag4 = 100
        arg12(flag4)
      end
      arg12 = StopAllAlarms
      flag4 = true
      arg12(flag4)
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg2(numberValue4)
  end
  arg2 = flag5
  if false == arg2 then
    arg2 = false
    flag8 = arg2
    arg2 = SetTimeout
    numberValue4 = 300000
    function textValue8()
      local arg12, flag4
      arg12 = true
      flag8 = arg12
    end
    arg2(numberValue4, textValue8)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a93701fa04".
cmgCall4(eventHandlerRegistration, flag3)
cmgCall4 = CMG
cmgCall4 = cmgCall4.createThreadOnTick
eventHandlerRegistration = cmgCall3
flag3 = "Prison Control Panels"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall4(eventHandlerRegistration, flag3)
function cmgCall4()
  local arg1, arg2, numberValue4, textValue8
  arg1 = DisableControlAction
  arg2 = 0
  numberValue4 = 22
  textValue8 = true
  arg1(arg2, numberValue4, textValue8)
end
eventHandlerRegistration = AddEventHandler
flag3 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function textValue2(arg1, arg2)
  local numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7, nameValue, dataTable3, position, position2, numberValue3, workValue8, workValue9, workValue10, dataTable4, workValue11
  if arg2 then
    while true do
      numberValue4 = table
      numberValue4 = numberValue4.count
      textValue8 = dataTable5
      -- Beginner: result below is count.
      numberValue4 = numberValue4(textValue8)
      if 0 ~= numberValue4 then
        break
      end
      numberValue4 = Citizen
      numberValue4 = numberValue4.Wait
      textValue8 = 0
      numberValue4(textValue8)
    end
    function numberValue4()
      local arg12, flag4
    end
    function textValue8()
      local arg12, flag4
    end
    function textValue9(arg12)
      local flag4, numberValue5, cmgCall6, textValue10, cmgCall8, textValue11, workValue13, numberValue9, textValue14, flag
      flag4 = ""
      numberValue5 = false
      cmgCall6 = CMG
      cmgCall6 = cmgCall6.hasClientPermission
      textValue10 = "police.onduty.permission"
      cmgCall6 = cmgCall6(textValue10)
      textValue10 = arg12.isAllowlisted
      if textValue10 then
        textValue10 = textValue7
        textValue10 = textValue10()
      end
      cmgCall8 = CMG
      cmgCall8 = cmgCall8.isStaffedOnClient
      cmgCall8 = cmgCall8()
      if not cmgCall8 and not textValue10 then
        cmgCall8 = CMG
        cmgCall8 = cmgCall8.hasClientPermission
        textValue11 = "prisonguard.onduty.permission"
        cmgCall8 = cmgCall8(textValue11)
        if not cmgCall8 then
          cmgCall8 = CMG
          cmgCall8 = cmgCall8.hasClientPermission
          textValue11 = "borderforce.onduty.permission"
          cmgCall8 = cmgCall8(textValue11)
          if not cmgCall8 and not cmgCall6 then
            cmgCall8 = CMG
            cmgCall8 = cmgCall8.hasClientPermission
            textValue11 = "nhs.onduty.permission"
            cmgCall8 = cmgCall8(textValue11)
            if not cmgCall8 then
              cmgCall8 = CMG
              cmgCall8 = cmgCall8.hasClientPermission
              textValue11 = "lfb.onduty.permission"
              cmgCall8 = cmgCall8(textValue11)
              if not cmgCall8 then
                goto flow_label_50
              end
            end
            cmgCall8 = arg12.nhsOpen
            if not cmgCall8 then
              goto flow_label_50
            end
          end
        end
      end
      flag4 = " (E to toggle lock) "
      numberValue5 = true
      ::flow_label_50::
      textValue11 = arg12.doorHash
      cmgCall8 = dataTable5
      cmgCall8 = cmgCall8[textValue11]
      cmgCall8 = cmgCall8.currentState
      if 5 ~= cmgCall8 then
        textValue11 = arg12.doorHash
        cmgCall8 = dataTable5
        cmgCall8 = cmgCall8[textValue11]
        cmgCall8 = cmgCall8.currentState
        if 0 ~= cmgCall8 then
          goto flow_label_73
        end
      end
      cmgCall8 = CMG
      cmgCall8 = cmgCall8.DrawText3D
      textValue11 = arg12.coords
      workValue13 = arg12.doorName
      numberValue9 = flag4
      textValue14 = " \240\159\148\147"
      workValue13 = workValue13 .. numberValue9 .. textValue14
      numberValue9 = 0.45
      textValue14 = 4
      cmgCall8(textValue11, workValue13, numberValue9, textValue14)
      goto flow_label_83
      ::flow_label_73::
      cmgCall8 = CMG
      cmgCall8 = cmgCall8.DrawText3D
      textValue11 = arg12.coords
      workValue13 = arg12.doorName
      numberValue9 = flag4
      textValue14 = " \240\159\148\146"
      workValue13 = workValue13 .. numberValue9 .. textValue14
      numberValue9 = 0.45
      textValue14 = 4
      cmgCall8(textValue11, workValue13, numberValue9, textValue14)
      ::flow_label_83::
      cmgCall8 = IsControlJustPressed
      textValue11 = 0
      workValue13 = 38
      cmgCall8 = cmgCall8(textValue11, workValue13)
      if cmgCall8 then
        cmgCall8 = CMG
        cmgCall8 = cmgCall8.isStaffedOnClient
        cmgCall8 = cmgCall8()
        if not cmgCall8 and not textValue10 then
          cmgCall8 = CMG
          cmgCall8 = cmgCall8.hasClientPermission
          textValue11 = "prisonguard.onduty.permission"
          cmgCall8 = cmgCall8(textValue11)
          if not cmgCall8 then
            cmgCall8 = CMG
            cmgCall8 = cmgCall8.hasClientPermission
            textValue11 = "borderforce.onduty.permission"
            cmgCall8 = cmgCall8(textValue11)
            if not (cmgCall8 or cmgCall6) then
              goto flow_label_115
            end
          end
          if not numberValue5 then
            cmgCall8 = arg12.overrideLock
            ::flow_label_115::
            if not cmgCall8 then
              if cmgCall6 then
                cmgCall8 = arg12.pdOpen
                if cmgCall8 then
                  goto flow_label_135
                end
              end
              cmgCall8 = CMG
              cmgCall8 = cmgCall8.hasClientPermission
              textValue11 = "nhs.onduty.permission"
              cmgCall8 = cmgCall8(textValue11)
              if not cmgCall8 then
                cmgCall8 = CMG
                cmgCall8 = cmgCall8.hasClientPermission
                textValue11 = "lfb.onduty.permission"
                cmgCall8 = cmgCall8(textValue11)
                if not cmgCall8 then
                  goto flow_label_170
                end
              end
              cmgCall8 = arg12.nhsOpen
              if not cmgCall8 then
                goto flow_label_170
              end
            end
          end
        end
        ::flow_label_135::
        cmgCall8 = CMG
        cmgCall8 = cmgCall8.setIgnoreRadialInputThisFrame
        cmgCall8()
        cmgCall8 = CMG
        cmgCall8 = cmgCall8.getSelectedEntity
        cmgCall8, textValue11 = cmgCall8()
        if not cmgCall8 or 1 ~= textValue11 then
          workValue13 = CMG
          workValue13 = workValue13.loadAnimDict
          numberValue9 = "anim@heists@keycard@"
          -- Beginner: Load a GTA animation dictionary before using it.
          workValue13(numberValue9)
          workValue13 = Citizen
          workValue13 = workValue13.CreateThread
          function numberValue9()
            local arg13, arg22, arg3, cmgCall7, flag6, iterator, serverEventCall, textValue12, textValue13, flag10, flag2, cmgCall2
            arg13 = TaskPlayAnim
            arg22 = PlayerPedId
            -- Beginner: result below is localPlayerPed.
            arg22 = arg22()
            arg3 = "anim@heists@keycard@"
            cmgCall7 = "exit"
            flag6 = 5.0
            iterator = 1.0
            serverEventCall = -1
            textValue12 = 48
            textValue13 = 0
            flag10 = false
            flag2 = false
            cmgCall2 = false
            -- Beginner: Play an animation on a ped.
            arg13(arg22, arg3, cmgCall7, flag6, iterator, serverEventCall, textValue12, textValue13, flag10, flag2, cmgCall2)
            arg13 = Wait
            arg22 = 1200
            arg13(arg22)
            arg13 = ClearPedTasks
            arg22 = PlayerPedId
            arg22, arg3, cmgCall7, flag6, iterator, serverEventCall, textValue12, textValue13, flag10, flag2, cmgCall2 = arg22()
            arg13(arg22, arg3, cmgCall7, flag6, iterator, serverEventCall, textValue12, textValue13, flag10, flag2, cmgCall2)
            arg13 = RemoveAnimDict
            arg22 = "anim@heists@keycard@"
            arg13(arg22)
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          workValue13(numberValue9)
          numberValue9 = arg12.doorHash
          workValue13 = dataTable5
          workValue13 = workValue13[numberValue9]
          workValue13 = workValue13.currentState
          if 4 == workValue13 then
            workValue13 = TriggerServerEvent
            numberValue9 = "e1a464cf07"
            textValue14 = arg12.doorHash
            flag = 5
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e1a464cf07".
            workValue13(numberValue9, textValue14, flag)
          else
            workValue13 = TriggerServerEvent
            numberValue9 = "e1a464cf07"
            textValue14 = arg12.doorHash
            flag = 4
            workValue13(numberValue9, textValue14, flag)
          end
        end
      end
      ::flow_label_170::
    end
    numberValue6 = pairs
    numberValue7 = cmgCall.doors
    numberValue6, numberValue7, cmgCall9, numberValue8 = numberValue6(numberValue7)
    for cmgCall10, textValue in numberValue6, numberValue7, cmgCall9, numberValue8 do
      workValue2 = 1
      workValue4 = #textValue
      dataTable2 = 1
      for numberValue2 = workValue2, workValue4, dataTable2 do
        workValue6 = textValue[numberValue2]
        workValue6 = workValue6.pairedDoorHash
        if workValue6 then
          workValue6 = textValue[numberValue2]
          workValue6 = workValue6.doorHash
          workValue7 = textValue[numberValue2]
          workValue7 = workValue7.pairedDoorHash
          if workValue6 > workValue7 then
            goto flow_label_149
          end
        end
        workValue6 = textValue[numberValue2]
        workValue6 = workValue6.coords
        workValue7 = textValue[numberValue2]
        workValue7 = workValue7.pairedDoorHash
        if workValue7 then
          workValue7 = workValue3
          nameValue = textValue[numberValue2]
          nameValue = nameValue.pairedDoorHash
          workValue7 = workValue7(nameValue)
          if workValue7 then
            nameValue = vector3
            dataTable3 = textValue[numberValue2]
            dataTable3 = dataTable3.coords
            dataTable3 = dataTable3.x
            position = workValue7.coords
            position = position.x
            dataTable3 = dataTable3 + position
            dataTable3 = dataTable3 * 0.5
            position = textValue[numberValue2]
            position = position.coords
            position = position.y
            position2 = workValue7.coords
            position2 = position2.y
            position = position + position2
            position = position * 0.5
            position2 = textValue[numberValue2]
            position2 = position2.coords
            position2 = position2.z
            numberValue3 = workValue7.coords
            numberValue3 = numberValue3.z
            position2 = position2 + numberValue3
            position2 = position2 * 0.5
            nameValue = nameValue(dataTable3, position, position2)
            workValue6 = nameValue
          end
        end
        workValue7 = textValue[numberValue2]
        workValue7 = workValue7.name
        nameValue = textValue[numberValue2]
        nameValue = nameValue.pairedDoorHash
        if nameValue then
          nameValue = workValue5
          dataTable3 = textValue[numberValue2]
          dataTable3 = dataTable3.name
          nameValue = nameValue(dataTable3)
          workValue7 = nameValue
        end
        nameValue = CMG
        nameValue = nameValue.createArea
        dataTable3 = "openPrisonDoor_"
        position = textValue[numberValue2]
        position = position.doorHash
        dataTable3 = dataTable3 .. position
        position = workValue6
        position2 = 1.5
        numberValue3 = 5
        workValue8 = numberValue4
        workValue9 = textValue8
        workValue10 = textValue9
        dataTable4 = {}
        dataTable4.doorName = workValue7
        workValue11 = textValue[numberValue2]
        workValue11 = workValue11.doorHash
        dataTable4.doorHash = workValue11
        dataTable4.coords = workValue6
        workValue11 = textValue[numberValue2]
        workValue11 = workValue11.overrideLocks
        if not workValue11 then
          workValue11 = false
        end
        dataTable4.overrideLock = workValue11
        workValue11 = textValue[numberValue2]
        workValue11 = workValue11.nhsOpen
        if not workValue11 then
          workValue11 = false
        end
        dataTable4.nhsOpen = workValue11
        workValue11 = textValue[numberValue2]
        workValue11 = workValue11.pdOpen
        if not workValue11 then
          workValue11 = false
        end
        dataTable4.pdOpen = workValue11
        workValue11 = textValue[numberValue2]
        workValue11 = workValue11.isAllowlisted
        dataTable4.isAllowlisted = workValue11
        -- Beginner: Create an interaction area around a world position.
        nameValue(dataTable3, position, position2, numberValue3, workValue8, workValue9, workValue10, dataTable4)
        nameValue = textValue[numberValue2]
        nameValue = nameValue.disableClimb
        if nameValue then
          nameValue = CMG
          nameValue = nameValue.createArea
          dataTable3 = "prisonDoorDisableClimb_"
          position = textValue[numberValue2]
          position = position.doorHash
          dataTable3 = dataTable3 .. position
          position = textValue[numberValue2]
          position = position.coords
          position2 = 10.0
          numberValue3 = 25.0
          function workValue8()
            local arg12, flag4
          end
          function workValue9()
            local arg12, flag4
          end
          workValue10 = cmgCall4
          dataTable4 = {}
          nameValue(dataTable3, position, position2, numberValue3, workValue8, workValue9, workValue10, dataTable4)
        end
        ::flow_label_149::
      end
    end
    function numberValue6()
      local arg12, flag4, numberValue5, cmgCall6, textValue10, cmgCall8, textValue11, workValue13, numberValue9, textValue14, flag
      arg12 = CMG
      arg12 = arg12.TriggerServerCallback
      flag4 = "6d3dee7984"
      arg12 = arg12(flag4)
      dataTable5 = arg12
      arg12 = pairs
      flag4 = dataTable5
      arg12, flag4, numberValue5, cmgCall6 = arg12(flag4)
      for textValue10, cmgCall8 in arg12, flag4, numberValue5, cmgCall6 do
        textValue11 = DoorSystemSetDoorState
        workValue13 = textValue10
        numberValue9 = cmgCall8.currentState
        textValue14 = false
        flag = false
        textValue11(workValue13, numberValue9, textValue14, flag)
        textValue11 = cmgCall8.currentState
        if 0 ~= textValue11 then
          textValue11 = cmgCall8.currentState
          if 5 ~= textValue11 then
            goto flow_label_27
          end
        end
        textValue11 = DoorSystemSetHoldOpen
        workValue13 = textValue10
        numberValue9 = true
        textValue11(workValue13, numberValue9)
        goto flow_label_31
        ::flow_label_27::
        textValue11 = DoorSystemSetHoldOpen
        workValue13 = textValue10
        numberValue9 = false
        textValue11(workValue13, numberValue9)
        ::flow_label_31::
      end
    end
    numberValue7 = CMG
    numberValue7 = numberValue7.createArea
    cmgCall9 = "prisonSyncDoorsOnAreaEnter"
    numberValue8 = cmgCall.prisonMainCoords
    cmgCall10 = 250
    textValue = 250
    workValue2 = numberValue6
    function workValue4()
      local arg12, flag4
    end
    function dataTable2()
      local arg12, flag4
    end
    numberValue2 = {}
    -- Beginner: Create an interaction area around a world position.
    numberValue7(cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventHandlerRegistration(flag3, textValue2)
eventHandlerRegistration = RegisterNetEvent
flag3 = "0fad7a76a8"
-- Beginner: this function handles network event "0fad7a76a8".
function textValue2(arg1)
  local arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2, workValue4, dataTable2, numberValue2, workValue6, workValue7, nameValue, dataTable3, position
  dataTable5 = arg1
  arg2 = pairs
  numberValue4 = cmgCall.doors
  arg2, numberValue4, textValue8, textValue9 = arg2(numberValue4)
  for numberValue6, numberValue7 in arg2, numberValue4, textValue8, textValue9 do
    cmgCall9 = 1
    numberValue8 = #numberValue7
    cmgCall10 = 1
    for textValue = cmgCall9, numberValue8, cmgCall10 do
      workValue2 = AddDoorToSystem
      workValue4 = numberValue7[textValue]
      workValue4 = workValue4.doorHash
      dataTable2 = numberValue7[textValue]
      dataTable2 = dataTable2.modelHash
      numberValue2 = numberValue7[textValue]
      numberValue2 = numberValue2.coords
      numberValue2 = numberValue2.x
      workValue6 = numberValue7[textValue]
      workValue6 = workValue6.coords
      workValue6 = workValue6.y
      workValue7 = numberValue7[textValue]
      workValue7 = workValue7.coords
      workValue7 = workValue7.z
      nameValue = false
      dataTable3 = false
      position = false
      workValue2(workValue4, dataTable2, numberValue2, workValue6, workValue7, nameValue, dataTable3, position)
      workValue2 = DoorSystemSetDoorState
      workValue4 = numberValue7[textValue]
      workValue4 = workValue4.doorHash
      dataTable2 = numberValue7[textValue]
      numberValue2 = dataTable2.doorHash
      dataTable2 = dataTable5
      dataTable2 = dataTable2[numberValue2]
      dataTable2 = dataTable2.currentState
      numberValue2 = false
      workValue6 = false
      workValue2(workValue4, dataTable2, numberValue2, workValue6)
      workValue2 = numberValue7[textValue]
      workValue4 = workValue2.doorHash
      workValue2 = dataTable5
      workValue2 = workValue2[workValue4]
      workValue2 = workValue2.currentState
      if 0 ~= workValue2 then
        workValue2 = numberValue7[textValue]
        workValue4 = workValue2.doorHash
        workValue2 = dataTable5
        workValue2 = workValue2[workValue4]
        workValue2 = workValue2.currentState
        if 5 ~= workValue2 then
          goto flow_label_59
        end
      end
      workValue2 = DoorSystemSetHoldOpen
      workValue4 = numberValue7[textValue]
      workValue4 = workValue4.doorHash
      dataTable2 = true
      workValue2(workValue4, dataTable2)
      goto flow_label_64
      ::flow_label_59::
      workValue2 = DoorSystemSetHoldOpen
      workValue4 = numberValue7[textValue]
      workValue4 = workValue4.doorHash
      dataTable2 = false
      workValue2(workValue4, dataTable2)
      ::flow_label_64::
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0fad7a76a8".
eventHandlerRegistration(flag3, textValue2)
eventHandlerRegistration = RegisterNetEvent
flag3 = "62bd2178cb"
-- Beginner: this function handles network event "62bd2178cb".
function textValue2(arg1)
  local arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7, cmgCall9, numberValue8, cmgCall10, textValue, workValue2
  if nil ~= arg1 then
    arg2 = pairs
    numberValue4 = dataTable5
    arg2, numberValue4, textValue8, textValue9 = arg2(numberValue4)
    for numberValue6, numberValue7 in arg2, numberValue4, textValue8, textValue9 do
      numberValue7.currentState = arg1
      cmgCall9 = DoorSystemSetDoorState
      numberValue8 = numberValue6
      cmgCall10 = arg1
      textValue = false
      workValue2 = false
      cmgCall9(numberValue8, cmgCall10, textValue, workValue2)
      if 0 == arg1 or 5 == arg1 then
        cmgCall9 = DoorSystemSetHoldOpen
        numberValue8 = numberValue6
        cmgCall10 = true
        cmgCall9(numberValue8, cmgCall10)
      else
        cmgCall9 = DoorSystemSetHoldOpen
        numberValue8 = numberValue6
        cmgCall10 = false
        cmgCall9(numberValue8, cmgCall10)
      end
    end
  else
    arg2 = pairs
    numberValue4 = dataTable5
    arg2, numberValue4, textValue8, textValue9 = arg2(numberValue4)
    for numberValue6, numberValue7 in arg2, numberValue4, textValue8, textValue9 do
      cmgCall9 = numberValue7.defaultState
      numberValue7.currentState = cmgCall9
      cmgCall9 = DoorSystemSetDoorState
      numberValue8 = numberValue6
      cmgCall10 = numberValue7.defaultState
      textValue = false
      workValue2 = false
      cmgCall9(numberValue8, cmgCall10, textValue, workValue2)
      cmgCall9 = numberValue7.defaultState
      if 0 ~= cmgCall9 then
        cmgCall9 = numberValue7.defaultState
        if 5 ~= cmgCall9 then
          goto flow_label_54
        end
      end
      cmgCall9 = DoorSystemSetHoldOpen
      numberValue8 = numberValue6
      cmgCall10 = true
      cmgCall9(numberValue8, cmgCall10)
      goto flow_label_58
      ::flow_label_54::
      cmgCall9 = DoorSystemSetHoldOpen
      numberValue8 = numberValue6
      cmgCall10 = false
      cmgCall9(numberValue8, cmgCall10)
      ::flow_label_58::
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "62bd2178cb".
eventHandlerRegistration(flag3, textValue2)
eventHandlerRegistration = RegisterNetEvent
flag3 = "c5dd6087ae"
-- Beginner: this function handles network event "c5dd6087ae".
function textValue2(arg1, arg2)
  local numberValue4, textValue8, textValue9, numberValue6, numberValue7
  numberValue4 = DoorSystemSetDoorState
  textValue8 = arg1
  textValue9 = arg2
  numberValue6 = false
  numberValue7 = false
  numberValue4(textValue8, textValue9, numberValue6, numberValue7)
  if 0 == arg2 or 5 == arg2 then
    numberValue4 = DoorSystemSetHoldOpen
    textValue8 = arg1
    textValue9 = true
    numberValue4(textValue8, textValue9)
  else
    numberValue4 = DoorSystemSetHoldOpen
    textValue8 = arg1
    textValue9 = false
    numberValue4(textValue8, textValue9)
  end
  numberValue4 = dataTable5
  numberValue4 = numberValue4[arg1]
  if nil ~= numberValue4 then
    numberValue4 = dataTable5
    numberValue4 = numberValue4[arg1]
    numberValue4.currentState = arg2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c5dd6087ae".
eventHandlerRegistration(flag3, textValue2)
eventHandlerRegistration = RMenu
eventHandlerRegistration = eventHandlerRegistration.Add
flag3 = "prison"
textValue2 = "keyfob"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue3 = ""
textValue4 = "~b~Gate Keyfob Menu"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue5 = "cmg_prisonui"
textValue6 = "cmg_prisonui"
rageUiCall, textValue3, textValue4, rageUiCall2, rageUiCall3, textValue5, textValue6 = rageUiCall(textValue3, textValue4, rageUiCall2, rageUiCall3, textValue5, textValue6)
eventHandlerRegistration(flag3, textValue2, rageUiCall, textValue3, textValue4, rageUiCall2, rageUiCall3, textValue5, textValue6)
eventHandlerRegistration = RageUI
eventHandlerRegistration = eventHandlerRegistration.CreateWhile
flag3 = 1.0
textValue2 = RMenu
rageUiCall = textValue2
textValue2 = textValue2.Get
textValue3 = "prison"
textValue4 = "keyfob"
-- Beginner: result below is menu.
textValue2 = textValue2(rageUiCall, textValue3, textValue4)
rageUiCall = nil
function textValue3()
  local arg1, arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  numberValue4 = arg2
  arg2 = arg2.Get
  textValue8 = "prison"
  textValue9 = "keyfob"
  -- Beginner: result below is menu.
  arg2 = arg2(numberValue4, textValue8, textValue9)
  numberValue4 = true
  textValue8 = false
  textValue9 = true
  function numberValue6()
    local arg12, flag4, numberValue5, cmgCall6, textValue10, cmgCall8
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    flag4 = "Front Gate"
    numberValue5 = ""
    cmgCall6 = {}
    cmgCall6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    textValue10 = true
    function cmgCall8(arg13, arg22, arg3)
      local cmgCall7, flag6, iterator, serverEventCall, textValue12, textValue13, flag10, flag2, cmgCall2, numberValue
      if arg3 then
        cmgCall7 = CMG
        cmgCall7 = cmgCall7.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        cmgCall7 = cmgCall7()
        if 0 == cmgCall7 then
          flag6 = notify
          iterator = "~r~You must be in your vehicle to use the fob."
          -- Beginner: Show a notification to the player.
          flag6(iterator)
          return
        end
        flag6 = false
        iterator = pairs
        serverEventCall = cmgCall.frontFobCoords
        iterator, serverEventCall, textValue12, textValue13 = iterator(serverEventCall)
        for flag10, flag2 in iterator, serverEventCall, textValue12, textValue13 do
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.getPlayerCoords
          -- Beginner: result below is playerCoords.
          cmgCall2 = cmgCall2()
          cmgCall2 = cmgCall2 - flag2
          cmgCall2 = #cmgCall2
          numberValue = 7.5
          if cmgCall2 < numberValue then
            flag6 = true
            break
          end
        end
        if not flag6 then
          iterator = notify
          serverEventCall = "~r~You are not close enough to the gate to use this."
          iterator(serverEventCall)
          return
        end
        iterator = dataTable5.mainGate1
        if iterator then
          iterator = dataTable5.mainGate1
          iterator = iterator.currentState
          if 5 == iterator then
            iterator = 4
            if iterator then
              goto flow_label_48
            end
          end
          iterator = 5
          ::flow_label_48::
          serverEventCall = TriggerServerEvent
          textValue12 = "e1a464cf07"
          textValue13 = "mainGate1"
          flag10 = iterator
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e1a464cf07".
          serverEventCall(textValue12, textValue13, flag10)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(flag4, numberValue5, cmgCall6, textValue10, cmgCall8)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    flag4 = "Rear Gate"
    numberValue5 = ""
    cmgCall6 = {}
    cmgCall6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    textValue10 = true
    function cmgCall8(arg13, arg22, arg3)
      local cmgCall7, flag6, iterator, serverEventCall, textValue12, textValue13, flag10, flag2, cmgCall2, numberValue
      if arg3 then
        cmgCall7 = CMG
        cmgCall7 = cmgCall7.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        cmgCall7 = cmgCall7()
        if 0 == cmgCall7 then
          flag6 = notify
          iterator = "~r~You must be in your vehicle to use the fob."
          -- Beginner: Show a notification to the player.
          flag6(iterator)
          return
        end
        flag6 = false
        iterator = pairs
        serverEventCall = cmgCall.rearFobCoords
        iterator, serverEventCall, textValue12, textValue13 = iterator(serverEventCall)
        for flag10, flag2 in iterator, serverEventCall, textValue12, textValue13 do
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.getPlayerCoords
          -- Beginner: result below is playerCoords.
          cmgCall2 = cmgCall2()
          cmgCall2 = cmgCall2 - flag2
          cmgCall2 = #cmgCall2
          numberValue = 7.5
          if cmgCall2 < numberValue then
            flag6 = true
            break
          end
        end
        if not flag6 then
          iterator = notify
          serverEventCall = "~r~You are not close enough to the gate to use this."
          iterator(serverEventCall)
          return
        end
        iterator = dataTable5.mainGate2
        if iterator then
          iterator = dataTable5.mainGate2
          iterator = iterator.currentState
          if 5 == iterator then
            iterator = 4
            if iterator then
              goto flow_label_48
            end
          end
          iterator = 5
          ::flow_label_48::
          serverEventCall = TriggerServerEvent
          textValue12 = "e1a464cf07"
          textValue13 = "mainGate2"
          flag10 = iterator
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e1a464cf07".
          serverEventCall(textValue12, textValue13, flag10)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(flag4, numberValue5, cmgCall6, textValue10, cmgCall8)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    flag4 = "Side Gate"
    numberValue5 = ""
    cmgCall6 = {}
    cmgCall6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    textValue10 = true
    function cmgCall8(arg13, arg22, arg3)
      local cmgCall7, flag6, iterator, serverEventCall, textValue12, textValue13, flag10
      if arg3 then
        cmgCall7 = CMG
        cmgCall7 = cmgCall7.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        cmgCall7 = cmgCall7()
        if 0 == cmgCall7 then
          flag6 = notify
          iterator = "~r~You must be in your vehicle to use the fob."
          -- Beginner: Show a notification to the player.
          flag6(iterator)
          return
        end
        flag6 = workValue3
        iterator = "mainEntranceDoorE4"
        flag6 = flag6(iterator)
        if not flag6 then
          return
        end
        iterator = CMG
        iterator = iterator.getPlayerCoords
        -- Beginner: result below is playerCoords.
        iterator = iterator()
        serverEventCall = flag6.coords
        iterator = iterator - serverEventCall
        iterator = #iterator
        serverEventCall = 7.5
        if iterator >= serverEventCall then
          iterator = notify
          serverEventCall = "~r~You are not close enough to the gate to use this."
          iterator(serverEventCall)
          return
        end
        iterator = dataTable5.mainEntranceDoorE4
        if iterator then
          iterator = dataTable5.mainEntranceDoorE4
          iterator = iterator.currentState
          if 5 == iterator then
            iterator = 4
            if iterator then
              goto flow_label_43
            end
          end
          iterator = 5
          ::flow_label_43::
          serverEventCall = TriggerServerEvent
          textValue12 = "e1a464cf07"
          textValue13 = "mainEntranceDoorE4"
          flag10 = iterator
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e1a464cf07".
          serverEventCall(textValue12, textValue13, flag10)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(flag4, numberValue5, cmgCall6, textValue10, cmgCall8)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    flag4 = "Garage Gate"
    numberValue5 = ""
    cmgCall6 = {}
    cmgCall6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    textValue10 = true
    function cmgCall8(arg13, arg22, arg3)
      local cmgCall7, flag6, iterator, serverEventCall, textValue12, textValue13, flag10
      if arg3 then
        cmgCall7 = CMG
        cmgCall7 = cmgCall7.getPlayerVehicle
        -- Beginner: result below is currentVehicle.
        cmgCall7 = cmgCall7()
        if 0 == cmgCall7 then
          flag6 = notify
          iterator = "~r~You must be in your vehicle to use the fob."
          -- Beginner: Show a notification to the player.
          flag6(iterator)
          return
        end
        flag6 = workValue3
        iterator = "garage1_1"
        flag6 = flag6(iterator)
        if not flag6 then
          return
        end
        iterator = CMG
        iterator = iterator.getPlayerCoords
        -- Beginner: result below is playerCoords.
        iterator = iterator()
        serverEventCall = flag6.coords
        iterator = iterator - serverEventCall
        iterator = #iterator
        serverEventCall = 7.5
        if iterator >= serverEventCall then
          iterator = notify
          serverEventCall = "~r~You are not close enough to the gate to use this."
          iterator(serverEventCall)
          return
        end
        iterator = dataTable5.garage1_1
        if iterator then
          iterator = dataTable5.garage1_1
          iterator = iterator.currentState
          if 5 == iterator then
            iterator = 4
            if iterator then
              goto flow_label_43
            end
          end
          iterator = 5
          ::flow_label_43::
          serverEventCall = TriggerServerEvent
          textValue12 = "e1a464cf07"
          textValue13 = "garage1_1"
          flag10 = iterator
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e1a464cf07".
          serverEventCall(textValue12, textValue13, flag10)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(flag4, numberValue5, cmgCall6, textValue10, cmgCall8)
  end
  function numberValue7()
    local arg12, flag4
  end
  arg1(arg2, numberValue4, textValue8, textValue9, numberValue6, numberValue7)
end
eventHandlerRegistration(flag3, textValue2, rageUiCall, textValue3)
eventHandlerRegistration = RegisterNetEvent
flag3 = "6c335938c2"
-- Beginner: this function handles network event "6c335938c2".
function textValue2()
  local arg1, arg2, numberValue4, textValue8, textValue9
  arg1 = CMG
  arg1 = arg1.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg1 = arg1()
  if 0 == arg1 then
    arg1 = notify
    arg2 = "~r~You must be in your vehicle to use the fob."
    -- Beginner: Show a notification to the player.
    arg1(arg2)
  else
    arg1 = RageUI
    arg1 = arg1.Visible
    arg2 = RMenu
    numberValue4 = arg2
    arg2 = arg2.Get
    textValue8 = "prison"
    textValue9 = "keyfob"
    -- Beginner: result below is menu.
    arg2 = arg2(numberValue4, textValue8, textValue9)
    numberValue4 = true
    arg1(arg2, numberValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6c335938c2".
eventHandlerRegistration(flag3, textValue2)
eventHandlerRegistration = RegisterCommand
flag3 = "hmpkeyfob"
-- Beginner: this function is the command handler for "hmpkeyfob".
function textValue2()
  local arg1, arg2, numberValue4, textValue8
  arg1 = CMGclient
  arg1 = arg1.useInventoryItem
  arg2 = {}
  numberValue4 = "hmpgatekeyfob"
  textValue8 = 1
  arg2[1] = numberValue4
  arg2[2] = textValue8
  arg1(arg2)
end
rageUiCall = false
-- Beginner: Register a chat/console command. Event/command: "hmpkeyfob".
eventHandlerRegistration(flag3, textValue2, rageUiCall)
eventHandlerRegistration = RegisterKeyMapping
flag3 = "hmpkeyfob"
textValue2 = "HMP Gate Keyfob"
rageUiCall = "KEYBOARD"
textValue3 = ""
-- Beginner: Bind a command to a keyboard/controller key.
eventHandlerRegistration(flag3, textValue2, rageUiCall, textValue3)