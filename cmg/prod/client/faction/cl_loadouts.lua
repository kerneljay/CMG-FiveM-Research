--[[
    LEVEL 1 BEGINNER GUIDE — Loadouts
    ======================================

    File: cmg/prod/client/faction/cl_loadouts.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: faction equipment/radio features, specifically the Loadouts feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 15
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
local cmgCall, dataTable3, workValue2, numberValue10, textValue7, workValue3, textValue9, textValue11, rageUiCall5, textValue14, textValue, rageUiCall, rageUiCall2, rageUiCall3, textValue3, textValue4
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable3 = "cfg/cfg_loadouts"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable3)
dataTable3 = {}
workValue2 = nil
numberValue10 = 0
textValue7 = ""
workValue3 = RMenu
workValue3 = workValue3.Add
textValue9 = "loadouts"
textValue11 = "mainmenu"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateMenu
textValue14 = ""
textValue = "Loadouts"
rageUiCall = CMG
rageUiCall = rageUiCall.getRageUIMenuWidth
rageUiCall = rageUiCall()
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuHeight
rageUiCall2 = rageUiCall2()
rageUiCall3 = "cmg_loadouts"
textValue3 = "cmg_loadouts"
rageUiCall5, textValue14, textValue, rageUiCall, rageUiCall2, rageUiCall3, textValue3, textValue4 = rageUiCall5(textValue14, textValue, rageUiCall, rageUiCall2, rageUiCall3, textValue3)
workValue3(textValue9, textValue11, rageUiCall5, textValue14, textValue, rageUiCall, rageUiCall2, rageUiCall3, textValue3, textValue4)
workValue3 = RMenu
workValue3 = workValue3.Add
textValue9 = "loadouts"
textValue11 = "view"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue14 = RMenu
textValue = textValue14
textValue14 = textValue14.Get
rageUiCall = "loadouts"
rageUiCall2 = "mainmenu"
-- Beginner: result below is menu.
textValue14 = textValue14(textValue, rageUiCall, rageUiCall2)
textValue = ""
rageUiCall = "Loadouts"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue3 = "cmg_loadouts"
textValue4 = "cmg_loadouts"
rageUiCall5, textValue14, textValue, rageUiCall, rageUiCall2, rageUiCall3, textValue3, textValue4 = rageUiCall5(textValue14, textValue, rageUiCall, rageUiCall2, rageUiCall3, textValue3, textValue4)
workValue3(textValue9, textValue11, rageUiCall5, textValue14, textValue, rageUiCall, rageUiCall2, rageUiCall3, textValue3, textValue4)
workValue3 = RageUI
workValue3 = workValue3.CreateWhile
textValue9 = 1.0
textValue11 = RMenu
rageUiCall5 = textValue11
textValue11 = textValue11.Get
textValue14 = "loadouts"
textValue = "mainmenu"
-- Beginner: result below is menu.
textValue11 = textValue11(rageUiCall5, textValue14, textValue)
rageUiCall5 = nil

-- === HELPER FUNCTION (decompiler name: textValue14; parameters: none) ===
function textValue14()
  local arg1, arg2, flag4, flag5, flag6, flag8
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag5 = "loadouts"
  flag6 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag5, flag6)
  flag4 = true
  flag5 = true
  flag6 = true

  -- === HELPER FUNCTION (decompiler name: flag8; parameters: none) ===
  function flag8()
    local arg12, textValue5, textValue6, dataTable4, flag7, workValue4, workValue5, rageUiCall4, textValue13, textValue15
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    textValue5 = "~y~View Custom Loadouts"
    textValue6 = ""
    dataTable4 = {}
    dataTable4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag7 = true

    -- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg13, arg22, arg3) ===
    function workValue4(arg13, arg22, arg3)
      local serverEventCall
      if arg3 then
        serverEventCall = 0
        numberValue10 = serverEventCall
      end
    end
    workValue5 = RMenu
    rageUiCall4 = workValue5
    workValue5 = workValue5.Get
    textValue13 = "loadouts"
    textValue15 = "view"
    workValue5, rageUiCall4, textValue13, textValue15 = workValue5(rageUiCall4, textValue13, textValue15)
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(textValue5, textValue6, dataTable4, flag7, workValue4, workValue5, rageUiCall4, textValue13, textValue15)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    textValue5 = "~g~Save Current Loadout"
    textValue6 = ""
    dataTable4 = {}
    dataTable4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag7 = true

    -- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg13, arg22, arg3) ===
    function workValue4(arg13, arg22, arg3)
      local serverEventCall, textValue8, numberValue11
      if arg3 then
        serverEventCall = TriggerServerEvent
        textValue8 = "ee12a1db92"
        numberValue11 = workValue2
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ee12a1db92".
        serverEventCall(textValue8, numberValue11)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(textValue5, textValue6, dataTable4, flag7, workValue4)
  end
  arg1(arg2, flag4, flag5, flag6, flag8)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag5 = "loadouts"
  flag6 = "view"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag5, flag6)
  flag4 = true
  flag5 = true
  flag6 = true

  -- === HELPER FUNCTION (decompiler name: flag8; parameters: none) ===
  function flag8()
    local arg12, textValue5, textValue6, dataTable4, flag7, workValue4, workValue5, rageUiCall4, textValue13, textValue15, dataTable, stringHelper, textValue2, workValue
    textValue5 = workValue2
    arg12 = dataTable3
    arg12 = arg12[textValue5]
    if arg12 then
      textValue5 = #arg12
      if 0 ~= textValue5 then
        goto flow_label_14
      end
    end
    textValue5 = RageUI
    textValue5 = textValue5.Separator
    textValue6 = "~r~You have no saved loadouts in this category"
    textValue5(textValue6)
    return
    ::flow_label_14::
    textValue5 = pairs
    textValue6 = arg12
    textValue5, textValue6, dataTable4, flag7 = textValue5(textValue6)
    for workValue4, workValue5 in textValue5, textValue6, dataTable4, flag7 do
      rageUiCall4 = RageUI
      rageUiCall4 = rageUiCall4.ButtonWithStyle
      textValue13 = workValue5.name
      textValue15 = textValue7
      dataTable = {}
      stringHelper = string
      stringHelper = stringHelper.format
      textValue2 = "\194\163%s"
      workValue = workValue5.price
      stringHelper = stringHelper(textValue2, workValue)
      dataTable.RightLabel = stringHelper
      stringHelper = true

      -- === HELPER FUNCTION (decompiler name: textValue2; parameters: arg13, arg22, arg3) ===
      function textValue2(arg13, arg22, arg3)
        local serverEventCall, textValue8, numberValue11, workValue6, workValue7
        if arg22 then
          serverEventCall = numberValue10
          textValue8 = workValue4
          if serverEventCall ~= textValue8 then
            serverEventCall = workValue4
            numberValue10 = serverEventCall
            serverEventCall = ""
            textValue7 = serverEventCall
            serverEventCall = TriggerServerEvent
            textValue8 = "78e1192fb6"
            numberValue11 = workValue2
            workValue6 = workValue4
            workValue7 = workValue5.items
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "78e1192fb6".
            serverEventCall(textValue8, numberValue11, workValue6, workValue7)
          end
        end
        if arg22 then
          serverEventCall = drawNativeNotification
          textValue8 = "Press ~INPUT_FRONTEND_DELETE~ to delete this loadout"
          -- Beginner: Show a GTA-style notification/help prompt.
          serverEventCall(textValue8)
          serverEventCall = IsControlJustPressed
          textValue8 = 0
          numberValue11 = 214
          serverEventCall = serverEventCall(textValue8, numberValue11)
          if serverEventCall then
            serverEventCall = table
            serverEventCall = serverEventCall.remove
            textValue8 = arg12
            numberValue11 = workValue4
            serverEventCall(textValue8, numberValue11)
            serverEventCall = SetResourceKvp
            textValue8 = "cmg_loadouts"
            numberValue11 = json
            numberValue11 = numberValue11.encode
            workValue6 = dataTable3
            numberValue11, workValue6, workValue7 = numberValue11(workValue6)
            serverEventCall(textValue8, numberValue11, workValue6, workValue7)
            serverEventCall = notify
            textValue8 = "~r~Loadout removed successfully."
            -- Beginner: Show a notification to the player.
            serverEventCall(textValue8)
          end
        end
        if arg3 then
          serverEventCall = CMG
          serverEventCall = serverEventCall.isPlatClub
          serverEventCall = serverEventCall()
          if serverEventCall then
            serverEventCall = TriggerServerEvent
            textValue8 = "cbd7c161ac"
            numberValue11 = workValue2
            workValue6 = workValue5.items
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cbd7c161ac".
            serverEventCall(textValue8, numberValue11, workValue6)
          else
            serverEventCall = notify
            textValue8 = "~y~You need to be a subscriber of CMG Platinum to use this feature."
            -- Beginner: Show a notification to the player.
            serverEventCall(textValue8)
            serverEventCall = notify
            textValue8 = "~y~Available @ store.cmgstudios.net"
            serverEventCall(textValue8)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall4(textValue13, textValue15, dataTable, stringHelper, textValue2)
    end
  end
  arg1(arg2, flag4, flag5, flag6, flag8)
end
workValue3(textValue9, textValue11, rageUiCall5, textValue14)

-- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg1) ===
function workValue3(arg1)
  local arg2, flag4, flag5, flag6, flag8, textValue10, cmgCall2
  arg2 = cmgCall.types
  flag4 = arg1.info
  flag4 = flag4.type
  arg2 = arg2[flag4]
  if arg2 then
    flag4 = arg2.permission
    if flag4 then
      flag4 = CMG
      flag4 = flag4.hasClientPermission
      flag5 = arg2.permission
      flag4 = flag4(flag5)
      if flag4 then
        flag4 = arg1.info
        flag4 = flag4.type
        workValue2 = flag4
        flag5 = workValue2
        flag4 = dataTable3
        flag4 = flag4[flag5]
        if flag4 then
          flag5 = #flag4
          if flag5 > 0 then
            flag5 = TriggerServerEvent
            flag6 = "fbc104fb05"
            flag8 = workValue2
            textValue10 = flag4
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fbc104fb05".
            flag5(flag6, flag8, textValue10)
          end
        end
        flag5 = RageUI
        flag5 = flag5.Visible
        flag6 = RMenu
        flag8 = flag6
        flag6 = flag6.Get
        textValue10 = "loadouts"
        cmgCall2 = "mainmenu"
        -- Beginner: result below is menu.
        flag6 = flag6(flag8, textValue10, cmgCall2)
        flag8 = true
        flag5(flag6, flag8)
      else
        flag4 = notify
        flag5 = "~r~No permission to access loadouts here."
        -- Beginner: Show a notification to the player.
        flag4(flag5)
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: none) ===
function textValue9()
  local arg1, arg2
  arg1 = RageUI
  arg1 = arg1.IsAnyMenuOfTypeVisible
  arg2 = "loadouts"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = RageUI
    arg1 = arg1.CloseAll
    arg1()
  end
end
textValue11 = Citizen
textValue11 = textValue11.CreateThread

-- === HELPER FUNCTION (decompiler name: rageUiCall5; parameters: none) ===
function rageUiCall5()
  local arg1, arg2, flag4, flag5, flag6, flag8, textValue10, cmgCall2, textValue12, stringHelper2, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, dataTable2, numberValue6, numberValue7, numberValue8, numberValue9, flag, flag2, flag3
  arg1 = GetResourceKvpString
  arg2 = "cmg_loadouts"
  arg1 = arg1(arg2)
  if arg1 then
    arg2 = json
    arg2 = arg2.decode
    flag4 = arg1
    arg2 = arg2(flag4)
    if not arg2 then
      arg2 = {}
    end
    dataTable3 = arg2
  end
  arg2 = pairs
  flag4 = cmgCall.locations
  arg2, flag4, flag5, flag6 = arg2(flag4)
  for flag8, textValue10 in arg2, flag4, flag5, flag6 do
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.createArea
    textValue12 = "loadout_"
    stringHelper2 = tostring
    numberValue = flag8
    stringHelper2 = stringHelper2(numberValue)
    textValue12 = textValue12 .. stringHelper2
    stringHelper2 = textValue10.position
    numberValue = 1.5
    numberValue2 = 2.5
    numberValue3 = workValue3
    numberValue4 = textValue9

    -- === HELPER FUNCTION (decompiler name: numberValue5; parameters: none) ===
    function numberValue5()
      local arg12, textValue5
    end
    dataTable2 = {}
    dataTable2.info = textValue10
    -- Beginner: Create an interaction area around a world position.
    cmgCall2(textValue12, stringHelper2, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, dataTable2)
    cmgCall2 = tCMG
    cmgCall2 = cmgCall2.addMarker
    textValue12 = textValue10.position
    textValue12 = textValue12.x
    stringHelper2 = textValue10.position
    stringHelper2 = stringHelper2.y
    numberValue = textValue10.position
    numberValue = numberValue.z
    numberValue = numberValue - 0.2
    numberValue2 = 0.5
    numberValue3 = 0.5
    numberValue4 = 0.5
    numberValue5 = 255
    dataTable2 = 165
    numberValue6 = 0
    numberValue7 = 170
    numberValue8 = 50
    numberValue9 = 20
    flag = false
    flag2 = false
    flag3 = true
    -- Beginner: Create a world marker.
    cmgCall2(textValue12, stringHelper2, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, dataTable2, numberValue6, numberValue7, numberValue8, numberValue9, flag, flag2, flag3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue11(rageUiCall5)
textValue11 = RegisterNetEvent
rageUiCall5 = "cbd7c161ac"
-- Beginner: this function handles network event "cbd7c161ac".

-- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg1) ===
function textValue14(arg1)
  local arg2, flag4, flag5, flag6, flag8, textValue10, cmgCall2, textValue12, stringHelper2, numberValue
  arg2 = pairs
  flag4 = arg1
  arg2, flag4, flag5, flag6 = arg2(flag4)
  for flag8, textValue10 in arg2, flag4, flag5, flag6 do
    cmgCall2 = textValue10.isInGunstore
    if cmgCall2 then
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.purchaseFromGunstore
      textValue12 = textValue10.gunstoreName
      stringHelper2 = flag8
      numberValue = textValue10.amount
      cmgCall2(textValue12, stringHelper2, numberValue)
    else
      cmgCall2 = textValue10.isInMarket
      if cmgCall2 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.purchaseFromMarket
        textValue12 = textValue10.marketName
        stringHelper2 = flag8
        numberValue = textValue10.amount
        cmgCall2(textValue12, stringHelper2, numberValue)
      end
    end
  end
  arg2 = TriggerServerEvent
  flag4 = "53d18271be"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "53d18271be".
  arg2(flag4)
  arg2 = notify
  flag4 = "~g~Custom loadout equipped!"
  -- Beginner: Show a notification to the player.
  arg2(flag4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "cbd7c161ac".
textValue11(rageUiCall5, textValue14)
textValue11 = RegisterNetEvent
rageUiCall5 = "ee12a1db92"
-- Beginner: this function handles network event "ee12a1db92".

-- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg1, arg2) ===
function textValue14(arg1, arg2)
  local flag4, flag5, flag6, flag8
  flag4 = dataTable3
  flag4 = flag4[arg1]
  if not flag4 then
    flag4 = dataTable3
    flag5 = {}
    flag4[arg1] = flag5
  end
  flag4 = CMG
  flag4 = flag4.clientPrompt
  flag5 = "Enter Loadout Name"
  flag6 = ""

  -- === HELPER FUNCTION (decompiler name: flag8; parameters: arg12) ===
  function flag8(arg12)
    local textValue5, textValue6, dataTable4, flag7, workValue4
    textValue5 = #arg12
    if textValue5 < 2 then
      textValue5 = notify
      textValue6 = "~r~Loadout name must be at least 2 characters."
      -- Beginner: Show a notification to the player.
      textValue5(textValue6)
      return
    end
    textValue5 = {}
    textValue5.name = arg12
    textValue6 = arg2
    textValue5.items = textValue6
    textValue6 = table
    textValue6 = textValue6.insert
    flag7 = arg1
    dataTable4 = dataTable3
    dataTable4 = dataTable4[flag7]
    flag7 = textValue5
    textValue6(dataTable4, flag7)
    textValue6 = SetResourceKvp
    dataTable4 = "cmg_loadouts"
    flag7 = json
    flag7 = flag7.encode
    workValue4 = dataTable3
    flag7, workValue4 = flag7(workValue4)
    textValue6(dataTable4, flag7, workValue4)
    textValue6 = notify
    dataTable4 = "~g~Loadout saved successfully!"
    -- Beginner: Show a notification to the player.
    textValue6(dataTable4)
  end
  flag4(flag5, flag6, flag8)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ee12a1db92".
textValue11(rageUiCall5, textValue14)
textValue11 = RegisterNetEvent
rageUiCall5 = "78e1192fb6"
-- Beginner: this function handles network event "78e1192fb6".

-- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg1, arg2) ===
function textValue14(arg1, arg2)
  local flag4
  flag4 = numberValue10
  if arg1 == flag4 then
    textValue7 = arg2
  end
end
textValue11(rageUiCall5, textValue14)
textValue11 = RegisterNetEvent
rageUiCall5 = "d39749e61b"
-- Beginner: this function handles network event "d39749e61b".

-- === HELPER FUNCTION (decompiler name: textValue14; parameters: arg1, arg2) ===
function textValue14(arg1, arg2)
  local flag4
  flag4 = workValue2
  if flag4 == arg1 then
    flag4 = dataTable3
    flag4[arg1] = arg2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d39749e61b".
textValue11(rageUiCall5, textValue14)
