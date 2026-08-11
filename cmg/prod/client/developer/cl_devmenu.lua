--[[
    LEVEL 1 BEGINNER GUIDE — Devmenu
    =====================================

    File: cmg/prod/client/developer/cl_devmenu.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: developer/admin testing utilities, specifically the Devmenu feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 27
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
local textValue, dataTable2, dataTable3, dataTable4, flag2, dataTable5, dataTable7, workValue8, workValue10, rageUiCall8, textValue2, textValue3, rageUiCall, textValue5, textValue6, rageUiCall3, rageUiCall4, workValue4, flag
textValue = "0.0.1784367447"
dataTable2 = {}
dataTable3 = {}
dataTable4 = {}
flag2 = false
dataTable5 = {}
dataTable7 = {}

-- === HELPER FUNCTION (decompiler name: workValue8; parameters: arg1) ===
function workValue8(arg1)
  local arg2, arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11
  arg2 = {}
  arg3 = pairs
  arg4 = arg1
  arg3, arg4, textValue9, dataTable6 = arg3(arg4)
  for dataTable8 in arg3, arg4, textValue9, dataTable6 do
    rageUiCall7 = #arg2
    rageUiCall7 = rageUiCall7 + 1
    arg2[rageUiCall7] = dataTable8
  end
  arg3 = table
  arg3 = arg3.sort
  arg4 = arg2

  -- === HELPER FUNCTION (decompiler name: textValue9; parameters: arg12, arg22) ===
  function textValue9(arg12, arg22)
    local arg32, arg42, flag3
    arg32 = tostring
    arg42 = arg12
    arg32 = arg32(arg42)
    arg42 = arg32
    arg32 = arg32.lower
    arg32 = arg32(arg42)
    arg42 = tostring
    flag3 = arg22
    arg42 = arg42(flag3)
    flag3 = arg42
    arg42 = arg42.lower
    arg42 = arg42(flag3)
    arg32 = arg32 < arg42
    return arg32
  end
  arg3(arg4, textValue9)
  return arg2
end

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1) ===
function workValue10(arg1)
  local arg2, arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11, dataTable9, stringHelper, workValue2
  arg2 = {}
  arg3 = ipairs
  arg4 = arg1
  arg3, arg4, textValue9, dataTable6 = arg3(arg4)
  for dataTable8, rageUiCall7 in arg3, arg4, textValue9, dataTable6 do
    workValue11 = #arg2
    workValue11 = workValue11 + 1
    dataTable9 = {}
    dataTable9.i = dataTable8
    stringHelper = rageUiCall7.key
    if stringHelper then
      stringHelper = tostring
      workValue2 = rageUiCall7.key
      stringHelper = stringHelper(workValue2)
      workValue2 = stringHelper
      stringHelper = stringHelper.lower
      stringHelper = stringHelper(workValue2)
      if stringHelper then
        goto flow_label_24
      end
    end
    stringHelper = nil
    ::flow_label_24::
    dataTable9.key = stringHelper
    stringHelper = rageUiCall7.cb
    if not stringHelper then
      stringHelper = rageUiCall7
    end
    dataTable9.cb = stringHelper
    arg2[workValue11] = dataTable9
  end
  arg3 = table
  arg3 = arg3.sort
  arg4 = arg2

  -- === HELPER FUNCTION (decompiler name: textValue9; parameters: arg12, arg22) ===
  function textValue9(arg12, arg22)
    local arg32, arg42
    arg32 = arg12.key
    if arg32 then
      arg32 = arg22.key
      if arg32 then
        arg32 = arg12.key
        arg42 = arg22.key
        if arg32 == arg42 then
          arg32 = arg12.i
          arg42 = arg22.i
          arg32 = arg32 < arg42
          return arg32
        end
        arg32 = arg12.key
        arg42 = arg22.key
        arg32 = arg32 < arg42
        return arg32
      end
    end
    arg32 = arg12.key
    if arg32 then
      arg32 = arg22.key
      if not arg32 then
        arg32 = true
        return arg32
      end
    end
    arg32 = arg12.key
    if not arg32 then
      arg32 = arg22.key
      if arg32 then
        arg32 = false
        return arg32
      end
    end
    arg32 = arg12.i
    arg42 = arg22.i
    arg32 = arg32 < arg42
    return arg32
  end
  arg3(arg4, textValue9)
  return arg2
end
rageUiCall8 = RMenu
rageUiCall8 = rageUiCall8.Add
textValue2 = "devmenu"
textValue3 = "main"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue5 = ""
textValue6 = "Developer Tools"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4, workValue4, flag = rageUiCall4()
rageUiCall, textValue5, textValue6, rageUiCall3, rageUiCall4, workValue4, flag = rageUiCall(textValue5, textValue6, rageUiCall3, rageUiCall4, workValue4, flag)
rageUiCall8(textValue2, textValue3, rageUiCall, textValue5, textValue6, rageUiCall3, rageUiCall4, workValue4, flag)
rageUiCall8 = RageUI
rageUiCall8 = rageUiCall8.CreateWhile
textValue2 = 1.0
textValue3 = RMenu
rageUiCall = textValue3
textValue3 = textValue3.Get
textValue5 = "devmenu"
textValue6 = "main"
-- Beginner: result below is menu.
textValue3 = textValue3(rageUiCall, textValue5, textValue6)
rageUiCall = nil

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
function textValue5()
  local arg1, arg2, arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11, dataTable9, stringHelper, workValue2, textValue4
  arg1 = ipairs
  arg2 = workValue8
  arg3 = dataTable2
  arg2, arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11, dataTable9, stringHelper, workValue2, textValue4 = arg2(arg3)
  arg1, arg2, arg3, arg4 = arg1(arg2, arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11, dataTable9, stringHelper, workValue2, textValue4)
  for textValue9, dataTable6 in arg1, arg2, arg3, arg4 do
    dataTable8 = dataTable2
    dataTable8 = dataTable8[dataTable6]
    rageUiCall7 = RageUI
    rageUiCall7 = rageUiCall7.IsVisible
    workValue11 = RMenu
    dataTable9 = workValue11
    workValue11 = workValue11.Get
    stringHelper = "devmenu"
    workValue2 = dataTable6
    -- Beginner: result below is menu.
    workValue11 = workValue11(dataTable9, stringHelper, workValue2)
    dataTable9 = true
    stringHelper = true
    workValue2 = true

    -- === HELPER FUNCTION (decompiler name: textValue4; parameters: none) ===
    function textValue4()
      local arg12, arg22, arg32, arg42, flag3, workValue6, workValue7
      arg12 = dataTable6
      if "main" == arg12 then
        arg12 = RageUI
        arg12 = arg12.Separator
        arg22 = string
        arg22 = arg22.format
        arg32 = "Latest Commit: %s"
        arg42 = textValue
        arg22, arg32, arg42, flag3, workValue6, workValue7 = arg22(arg32, arg42)
        arg12(arg22, arg32, arg42, flag3, workValue6, workValue7)
      end
      arg12 = ipairs
      arg22 = workValue10
      arg32 = dataTable8
      arg22, arg32, arg42, flag3, workValue6, workValue7 = arg22(arg32)
      arg12, arg22, arg32, arg42 = arg12(arg22, arg32, arg42, flag3, workValue6, workValue7)
      for flag3, workValue6 in arg12, arg22, arg32, arg42 do
        workValue7 = workValue6.cb
        workValue7()
      end
    end
    rageUiCall7(workValue11, dataTable9, stringHelper, workValue2, textValue4)
  end
end
rageUiCall8(textValue2, textValue3, rageUiCall, textValue5)
rageUiCall8 = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1) ===
function textValue2(arg1)
  local arg2, arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11, dataTable9, stringHelper, workValue2
  arg2 = stringsplit
  arg3 = arg1
  arg4 = "/"
  arg2 = arg2(arg3, arg4)
  arg3 = "main"
  arg4 = pairs
  textValue9 = arg2
  arg4, textValue9, dataTable6, dataTable8 = arg4(textValue9)
  for rageUiCall7, workValue11 in arg4, textValue9, dataTable6, dataTable8 do
    dataTable9 = arg3
    stringHelper = "_"
    workValue2 = workValue11
    dataTable9 = dataTable9 .. stringHelper .. workValue2
    arg3 = dataTable9
  end
  return arg3
end
rageUiCall8.getDevMenuId = textValue2
rageUiCall8 = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1, arg2) ===
function textValue2(arg1, arg2)
  local arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11, dataTable9, stringHelper, workValue2, textValue4, dataTable, rageUiCall2, workValue3, textValue7, textValue8, rageUiCall5, rageUiCall6
  arg3 = stringsplit
  arg4 = arg1
  textValue9 = "/"
  arg3 = arg3(arg4, textValue9)
  arg4 = "main"
  textValue9 = dataTable2
  textValue9 = textValue9[arg4]
  if not textValue9 then
    textValue9 = dataTable2
    dataTable6 = {}
    textValue9[arg4] = dataTable6
  end
  textValue9 = #arg3
  if 0 == textValue9 then
    textValue9 = table
    textValue9 = textValue9.insert
    dataTable6 = dataTable2.main
    dataTable8 = {}
    dataTable8.cb = arg2
    textValue9(dataTable6, dataTable8)
    return
  end
  textValue9 = pairs
  dataTable6 = arg3
  textValue9, dataTable6, dataTable8, rageUiCall7 = textValue9(dataTable6)
  for workValue11, dataTable9 in textValue9, dataTable6, dataTable8, rageUiCall7 do
    stringHelper = arg4
    workValue2 = "_"
    textValue4 = dataTable9
    stringHelper = stringHelper .. workValue2 .. textValue4
    workValue2 = dataTable2
    workValue2 = workValue2[stringHelper]
    if not workValue2 then
      workValue2 = RMenu
      workValue2 = workValue2.Add
      textValue4 = "devmenu"
      dataTable = stringHelper
      rageUiCall2 = RageUI
      rageUiCall2 = rageUiCall2.CreateSubMenu
      workValue3 = RMenu
      textValue7 = workValue3
      workValue3 = workValue3.Get
      textValue8 = "devmenu"
      rageUiCall5 = arg4
      -- Beginner: result below is menu.
      workValue3 = workValue3(textValue7, textValue8, rageUiCall5)
      textValue7 = ""
      textValue8 = dataTable9
      rageUiCall5 = CMG
      rageUiCall5 = rageUiCall5.getRageUIMenuWidth
      rageUiCall5 = rageUiCall5()
      rageUiCall6 = CMG
      rageUiCall6 = rageUiCall6.getRageUIMenuHeight
      rageUiCall6 = rageUiCall6()
      rageUiCall2, workValue3, textValue7, textValue8, rageUiCall5, rageUiCall6 = rageUiCall2(workValue3, textValue7, textValue8, rageUiCall5, rageUiCall6)
      workValue2(textValue4, dataTable, rageUiCall2, workValue3, textValue7, textValue8, rageUiCall5, rageUiCall6)
      workValue2 = table
      workValue2 = workValue2.insert
      textValue4 = dataTable2
      textValue4 = textValue4[arg4]
      dataTable = {}
      dataTable.key = dataTable9

      -- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: none) ===
      function rageUiCall2()
        local arg12, arg22, arg32, arg42, flag3, workValue6, workValue7, workValue9, textValue10, workValue12
        arg12 = RageUI
        arg12 = arg12.ButtonWithStyle
        arg22 = dataTable9
        arg32 = ""
        arg42 = {}
        arg42.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag3 = true

        -- === HELPER FUNCTION (decompiler name: workValue6; parameters: none) ===
        function workValue6()
          local workValue, workValue5
        end
        workValue7 = RMenu
        workValue9 = workValue7
        workValue7 = workValue7.Get
        textValue10 = "devmenu"
        workValue12 = stringHelper
        workValue7, workValue9, textValue10, workValue12 = workValue7(workValue9, textValue10, workValue12)
        -- Beginner: Draw a selectable RageUI menu button.
        arg12(arg22, arg32, arg42, flag3, workValue6, workValue7, workValue9, textValue10, workValue12)
      end
      dataTable.cb = rageUiCall2
      workValue2(textValue4, dataTable)
      workValue2 = dataTable2
      textValue4 = {}
      workValue2[stringHelper] = textValue4
    end
    workValue2 = #arg3
    if workValue11 == workValue2 then
      workValue2 = table
      workValue2 = workValue2.insert
      textValue4 = dataTable2
      textValue4 = textValue4[stringHelper]
      dataTable = {}
      dataTable.cb = arg2
      workValue2(textValue4, dataTable)
    end
    arg4 = stringHelper
  end
end
rageUiCall8.registerDevMenuItems = textValue2
rageUiCall8 = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1, arg2) ===
function textValue2(arg1, arg2)
  local arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11, dataTable9, stringHelper
  arg3 = GetResourceKvpString
  arg4 = string
  arg4 = arg4.format
  textValue9 = "devmenu_state_%s"
  dataTable6 = arg1
  arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11, dataTable9, stringHelper = arg4(textValue9, dataTable6)
  arg3 = arg3(arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11, dataTable9, stringHelper)
  arg4 = nil
  if arg3 then
    textValue9 = #arg3
    if textValue9 > 0 then
      textValue9 = json
      textValue9 = textValue9.decode
      dataTable6 = arg3
      textValue9 = textValue9(dataTable6)
      arg4 = textValue9
    end
  end
  if not arg4 then
    arg4 = arg2
  end
  textValue9 = pairs
  dataTable6 = arg2
  textValue9, dataTable6, dataTable8, rageUiCall7 = textValue9(dataTable6)
  for workValue11, dataTable9 in textValue9, dataTable6, dataTable8, rageUiCall7 do
    stringHelper = arg4[workValue11]
    if not stringHelper then
      arg4[workValue11] = dataTable9
    end
  end
  textValue9 = dataTable3
  textValue9[arg1] = arg4
  textValue9 = dataTable4
  dataTable6 = table
  dataTable6 = dataTable6.copy
  dataTable8 = arg4
  dataTable6 = dataTable6(dataTable8)
  textValue9[arg1] = dataTable6
  return arg4
end
rageUiCall8.registerDevMenuState = textValue2
rageUiCall8 = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1, arg2) ===
function textValue2(arg1, arg2)
  local arg3
  arg3 = dataTable5
  arg3[arg1] = arg2
end
rageUiCall8.registerDevMenuThread = textValue2
rageUiCall8 = CMG

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg1, arg2, arg3, arg4) ===
function textValue2(arg1, arg2, arg3, arg4)
  local textValue9, dataTable6, dataTable8
  textValue9 = table
  textValue9 = textValue9.insert
  dataTable6 = dataTable7
  dataTable8 = {}
  dataTable8.name = arg1
  dataTable8.entityType = arg2
  dataTable8.debugInfoCallback = arg3
  dataTable8.editorButtonsCallback = arg4
  textValue9(dataTable6, dataTable8)
end
rageUiCall8.registerDevMenuEntityEditor = textValue2
rageUiCall8 = CMG
rageUiCall8 = rageUiCall8.registerDevMenuState
textValue2 = "Display Options"
textValue3 = {}
textValue3.pedsEnabled = false
textValue3.vehiclesEnabled = false
textValue3.objectsEnabled = false
rageUiCall8 = rageUiCall8(textValue2, textValue3)

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
function textValue2()
  local arg1, arg2, arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11, dataTable9
  arg1 = pairs
  arg2 = dataTable3
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for textValue9, dataTable6 in arg1, arg2, arg3, arg4 do
    dataTable8 = table
    dataTable8 = dataTable8.contentEquals
    rageUiCall7 = dataTable6
    workValue11 = dataTable4
    workValue11 = workValue11[textValue9]
    dataTable8 = dataTable8(rageUiCall7, workValue11)
    if not dataTable8 then
      dataTable8 = SetResourceKvp
      rageUiCall7 = string
      rageUiCall7 = rageUiCall7.format
      workValue11 = "devmenu_state_%s"
      dataTable9 = textValue9
      rageUiCall7 = rageUiCall7(workValue11, dataTable9)
      workValue11 = json
      workValue11 = workValue11.encode
      dataTable9 = dataTable6
      workValue11, dataTable9 = workValue11(dataTable9)
      dataTable8(rageUiCall7, workValue11, dataTable9)
      dataTable8 = dataTable4
      rageUiCall7 = table
      rageUiCall7 = rageUiCall7.copy
      workValue11 = dataTable6
      rageUiCall7 = rageUiCall7(workValue11)
      dataTable8[textValue9] = rageUiCall7
    end
  end
end

-- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
function textValue3()
  local arg1, arg2, arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11, dataTable9, stringHelper
  arg1 = flag2
  if arg1 then
    return
  end
  arg1 = true
  flag2 = arg1
  arg1 = pairs
  arg2 = dataTable5
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for textValue9, dataTable6 in arg1, arg2, arg3, arg4 do
    dataTable8 = CMG
    dataTable8 = dataTable8.createThreadOnTick
    rageUiCall7 = dataTable6
    workValue11 = string
    workValue11 = workValue11.format
    dataTable9 = "DevMenu %s"
    stringHelper = textValue9
    workValue11, dataTable9, stringHelper = workValue11(dataTable9, stringHelper)
    -- Beginner: Run a helper every game frame while this script is active.
    dataTable8(rageUiCall7, workValue11, dataTable9, stringHelper)
  end
  while true do
    arg1 = textValue2
    arg1()
    arg1 = Wait
    arg2 = 1000
    arg1(arg2)
  end
end
rageUiCall = AddEventHandler
textValue5 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1) ===
function textValue6(arg1)
  local arg2
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg2 == arg1 then
    arg2 = flag2
    if arg2 then
      arg2 = textValue2
      arg2()
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
rageUiCall(textValue5, textValue6)
rageUiCall = RegisterCommand
textValue5 = "devmenu"
-- Beginner: this function is the command handler for "devmenu".

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2, arg3, arg4, textValue9, dataTable6
  arg1 = CMG
  arg1 = arg1.getClientUserId
  -- Beginner: result below is userId.
  arg1 = arg1()
  if arg1 then
    arg2 = CMG
    arg2 = arg2.isDeveloper
    arg3 = arg1
    arg2 = arg2(arg3)
    if arg2 then
      goto flow_label_13
    end
  end
  return
  ::flow_label_13::
  arg2 = RageUI
  arg2 = arg2.Visible
  arg3 = RMenu
  arg4 = arg3
  arg3 = arg3.Get
  textValue9 = "devmenu"
  dataTable6 = "main"
  -- Beginner: result below is menu.
  arg3 = arg3(arg4, textValue9, dataTable6)
  arg4 = true
  arg2(arg3, arg4)
  arg2 = textValue3
  arg2()
end
rageUiCall3 = false
-- Beginner: Register a chat/console command. Event/command: "devmenu".
rageUiCall(textValue5, textValue6, rageUiCall3)

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: arg1) ===
function rageUiCall(arg1)
  local arg2, arg3, arg4, textValue9
  arg2 = GetScreenCoordFromWorldCoord
  arg3 = arg1.x
  arg4 = arg1.y
  textValue9 = arg1.z
  return arg2(arg3, arg4, textValue9)
end
textValue5 = CMG

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: arg1, arg2) ===
function textValue6(arg1, arg2)
  local arg3, arg4, textValue9, dataTable6, dataTable8
  arg3 = rageUiCall
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = rageUiCall
    arg4 = vector3
    textValue9 = arg2
    dataTable6 = 0.0
    dataTable8 = 0.0
    arg4 = arg4(textValue9, dataTable6, dataTable8)
    arg4 = arg1 + arg4
    arg3 = arg3(arg4)
    if not arg3 then
      arg3 = rageUiCall
      arg4 = vector3
      textValue9 = arg2
      dataTable6 = 0.0
      dataTable8 = 0.0
      arg4 = arg4(textValue9, dataTable6, dataTable8)
      arg4 = arg1 - arg4
      arg3 = arg3(arg4)
      if not arg3 then
        arg3 = rageUiCall
        arg4 = vector3
        textValue9 = 0.0
        dataTable6 = arg2
        dataTable8 = 0.0
        arg4 = arg4(textValue9, dataTable6, dataTable8)
        arg4 = arg1 + arg4
        arg3 = arg3(arg4)
        if not arg3 then
          arg3 = rageUiCall
          arg4 = vector3
          textValue9 = 0.0
          dataTable6 = arg2
          dataTable8 = 0.0
          arg4 = arg4(textValue9, dataTable6, dataTable8)
          arg4 = arg1 - arg4
          arg3 = arg3(arg4)
          if not arg3 then
            arg3 = rageUiCall
            arg4 = vector3
            textValue9 = 0.0
            dataTable6 = 0.0
            dataTable8 = arg2
            arg4 = arg4(textValue9, dataTable6, dataTable8)
            arg4 = arg1 + arg4
            arg3 = arg3(arg4)
            if not arg3 then
              arg3 = rageUiCall
              arg4 = vector3
              textValue9 = 0.0
              dataTable6 = 0.0
              dataTable8 = arg2
              arg4 = arg4(textValue9, dataTable6, dataTable8)
              arg4 = arg1 - arg4
              arg3 = arg3(arg4)
            end
          end
        end
      end
    end
  end
  return arg3
end
textValue5.isSphereOnScreen = textValue6
textValue5 = CMG
textValue5 = textValue5.registerDevMenuItems
textValue6 = "Displays"

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: none) ===
function rageUiCall3()
  local arg1, arg2, arg3, arg4, textValue9, dataTable6
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Player Debug"
  arg3 = "Whether to draw information and activate the editor for players."
  arg4 = rageUiCall8.playersEnabled
  textValue9 = {}

  -- === HELPER FUNCTION (decompiler name: dataTable6; parameters: arg12, arg22, arg32, arg42) ===
  function dataTable6(arg12, arg22, arg32, arg42)
    rageUiCall8.playersEnabled = arg42
  end
  -- Beginner: Draw a RageUI checkbox.
  arg1(arg2, arg3, arg4, textValue9, dataTable6)
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Ped Debug"
  arg3 = "Whether to draw information and activate the editor for peds."
  arg4 = rageUiCall8.pedsEnabled
  textValue9 = {}

  -- === HELPER FUNCTION (decompiler name: dataTable6; parameters: arg12, arg22, arg32, arg42) ===
  function dataTable6(arg12, arg22, arg32, arg42)
    rageUiCall8.pedsEnabled = arg42
  end
  arg1(arg2, arg3, arg4, textValue9, dataTable6)
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Vehicle Debug"
  arg3 = "Whether to draw information and activate the editor for vehicles."
  arg4 = rageUiCall8.vehiclesEnabled
  textValue9 = {}

  -- === HELPER FUNCTION (decompiler name: dataTable6; parameters: arg12, arg22, arg32, arg42) ===
  function dataTable6(arg12, arg22, arg32, arg42)
    rageUiCall8.vehiclesEnabled = arg42
  end
  -- Beginner: Draw a RageUI checkbox.
  arg1(arg2, arg3, arg4, textValue9, dataTable6)
  arg1 = RageUI
  arg1 = arg1.Checkbox
  arg2 = "Object Debug"
  arg3 = "Whether to draw information and activate the editor for objects."
  arg4 = rageUiCall8.objectsEnabled
  textValue9 = {}

  -- === HELPER FUNCTION (decompiler name: dataTable6; parameters: arg12, arg22, arg32, arg42) ===
  function dataTable6(arg12, arg22, arg32, arg42)
    rageUiCall8.objectsEnabled = arg42
  end
  arg1(arg2, arg3, arg4, textValue9, dataTable6)
end
textValue5(textValue6, rageUiCall3)

-- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg1, arg2) ===
function textValue5(arg1, arg2)
  local arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11, dataTable9, stringHelper, workValue2, textValue4
  arg3 = GetEntityCoords
  arg4 = arg2
  -- Beginner: result below is entityCoords.
  arg3 = arg3(arg4)
  arg4 = rageUiCall
  textValue9 = arg3
  arg4 = arg4(textValue9)
  if arg4 then
    arg4 = CMG
    arg4 = arg4.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg4 = arg4()
    arg4 = arg4 - arg3
    arg4 = #arg4
    if not (arg4 > 50.0) then
      goto flow_label_18
    end
  end
  return
  ::flow_label_18::
  arg4 = ""
  textValue9 = pairs
  dataTable6 = dataTable7
  textValue9, dataTable6, dataTable8, rageUiCall7 = textValue9(dataTable6)
  for workValue11, dataTable9 in textValue9, dataTable6, dataTable8, rageUiCall7 do
    stringHelper = dataTable9.entityType
    if "entity" ~= stringHelper then
      stringHelper = dataTable9.entityType
      if stringHelper ~= arg1 then
        goto flow_label_45
      end
    end
    stringHelper = dataTable9.debugInfoCallback
    workValue2 = arg2
    stringHelper = stringHelper(workValue2)
    if "" ~= stringHelper then
      workValue2 = #arg4
      if workValue2 > 0 then
        workValue2 = arg4
        textValue4 = "\n"
        workValue2 = workValue2 .. textValue4
        arg4 = workValue2
      end
      workValue2 = arg4
      textValue4 = stringHelper
      workValue2 = workValue2 .. textValue4
      arg4 = workValue2
    end
    ::flow_label_45::
  end
  if "" ~= arg4 then
    textValue9 = CMG
    textValue9 = textValue9.DrawText3D
    dataTable6 = arg3
    dataTable8 = arg4
    rageUiCall7 = 0.25
    workValue11 = nil
    dataTable9 = true
    textValue9(dataTable6, dataTable8, rageUiCall7, workValue11, dataTable9)
  end
end

-- === HELPER FUNCTION (decompiler name: textValue6; parameters: none) ===
function textValue6()
  local arg1, arg2, arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11
  arg1 = rageUiCall8.pedsEnabled
  if arg1 then
    arg1 = pairs
    arg2 = GetGamePool
    arg3 = "CPed"
    arg2, arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11 = arg2(arg3)
    arg1, arg2, arg3, arg4 = arg1(arg2, arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11)
    for textValue9, dataTable6 in arg1, arg2, arg3, arg4 do
      dataTable8 = textValue5
      rageUiCall7 = "ped"
      workValue11 = dataTable6
      dataTable8(rageUiCall7, workValue11)
    end
  end
  arg1 = rageUiCall8.vehiclesEnabled
  if arg1 then
    arg1 = pairs
    arg2 = CMG
    arg2 = arg2.getAllVehicles
    arg2, arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11 = arg2()
    arg1, arg2, arg3, arg4 = arg1(arg2, arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11)
    for textValue9, dataTable6 in arg1, arg2, arg3, arg4 do
      dataTable8 = textValue5
      rageUiCall7 = "vehicle"
      workValue11 = dataTable6
      dataTable8(rageUiCall7, workValue11)
    end
  end
  arg1 = rageUiCall8.objectsEnabled
  if arg1 then
    arg1 = pairs
    arg2 = GetGamePool
    arg3 = "CObject"
    arg2, arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11 = arg2(arg3)
    arg1, arg2, arg3, arg4 = arg1(arg2, arg3, arg4, textValue9, dataTable6, dataTable8, rageUiCall7, workValue11)
    for textValue9, dataTable6 in arg1, arg2, arg3, arg4 do
      dataTable8 = textValue5
      rageUiCall7 = "object"
      workValue11 = dataTable6
      dataTable8(rageUiCall7, workValue11)
    end
  end
end
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.registerDevMenuThread
rageUiCall4 = "Entity Debug"
workValue4 = textValue6
rageUiCall3(rageUiCall4, workValue4)
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.isDevMode
rageUiCall3 = rageUiCall3()
if rageUiCall3 then
  rageUiCall3 = Citizen
  rageUiCall3 = rageUiCall3.CreateThread
  rageUiCall4 = textValue3
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  rageUiCall3(rageUiCall4)
end
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.registerCommand
rageUiCall4 = "latestcommit"

-- === HELPER FUNCTION (decompiler name: workValue4; parameters: none) ===
function workValue4()
  local arg1, arg2, arg3, arg4
  arg1 = print
  arg2 = string
  arg2 = arg2.format
  arg3 = "Latest commit is: %s"
  arg4 = textValue
  arg2, arg3, arg4 = arg2(arg3, arg4)
  arg1(arg2, arg3, arg4)
end
flag = true
rageUiCall3(rageUiCall4, workValue4, flag)
