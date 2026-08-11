--[[
    LEVEL 1 BEGINNER GUIDE — Licenseplate
    ==========================================

    File: cmg/prod/client/vehicles/cl_licenseplate.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: vehicle gameplay and vehicle systems, specifically the Licenseplate feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 38
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
local cmgCall, textValue8, textValue9, dataTable3, workValue4, workValue5, textValue14, textValue17, rageUiCall5, textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue8 = "cfg/cfg_licenseplate"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue8)
textValue8 = cmgCall.licenseChangerCoords
textValue9 = ""
dataTable3 = {}
workValue4 = nil
workValue5 = RMenu
workValue5 = workValue5.Add
textValue14 = "main"
textValue17 = "dvla"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateMenu
textValue19 = ""
textValue = ""
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "cmg_licenseplateui"
textValue3 = "cmg_licenseplateui"
rageUiCall5, textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5 = rageUiCall5(textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3)
workValue5(textValue14, textValue17, rageUiCall5, textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5)
workValue5 = RMenu
textValue14 = workValue5
workValue5 = workValue5.Get
textValue17 = "main"
rageUiCall5 = "dvla"
-- Beginner: result below is menu.
workValue5 = workValue5(textValue14, textValue17, rageUiCall5)
textValue14 = workValue5
workValue5 = workValue5.SetSubtitle
textValue17 = "~b~DVLA"
workValue5(textValue14, textValue17)
workValue5 = RMenu
workValue5 = workValue5.Add
textValue14 = "owned"
textValue17 = "dvla"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue19 = RMenu
textValue = textValue19
textValue19 = textValue19.Get
rageUiCall2 = "main"
rageUiCall3 = "dvla"
-- Beginner: result below is menu.
textValue19 = textValue19(textValue, rageUiCall2, rageUiCall3)
textValue = ""
rageUiCall2 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue3 = "cmg_licenseplateui"
textValue5 = "cmg_licenseplateui"
rageUiCall5, textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5 = rageUiCall5(textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5)
workValue5(textValue14, textValue17, rageUiCall5, textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5)
workValue5 = RMenu
textValue14 = workValue5
workValue5 = workValue5.Get
textValue17 = "owned"
rageUiCall5 = "dvla"
-- Beginner: result below is menu.
workValue5 = workValue5(textValue14, textValue17, rageUiCall5)
textValue14 = workValue5
workValue5 = workValue5.SetSubtitle
textValue17 = "~b~Owned license plates"
workValue5(textValue14, textValue17)
workValue5 = RMenu
workValue5 = workValue5.Add
textValue14 = "owned_inuse"
textValue17 = "dvla"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue19 = RMenu
textValue = textValue19
textValue19 = textValue19.Get
rageUiCall2 = "owned"
rageUiCall3 = "dvla"
-- Beginner: result below is menu.
textValue19 = textValue19(textValue, rageUiCall2, rageUiCall3)
textValue = ""
rageUiCall2 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue3 = "cmg_licenseplateui"
textValue5 = "cmg_licenseplateui"
rageUiCall5, textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5 = rageUiCall5(textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5)
workValue5(textValue14, textValue17, rageUiCall5, textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5)
workValue5 = RMenu
textValue14 = workValue5
workValue5 = workValue5.Get
textValue17 = "owned_inuse"
rageUiCall5 = "dvla"
-- Beginner: result below is menu.
workValue5 = workValue5(textValue14, textValue17, rageUiCall5)
textValue14 = workValue5
workValue5 = workValue5.SetSubtitle
textValue17 = "~b~Owned license plates"
workValue5(textValue14, textValue17)
workValue5 = RMenu
workValue5 = workValue5.Add
textValue14 = "owned_notinuse"
textValue17 = "dvla"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue19 = RMenu
textValue = textValue19
textValue19 = textValue19.Get
rageUiCall2 = "owned"
rageUiCall3 = "dvla"
-- Beginner: result below is menu.
textValue19 = textValue19(textValue, rageUiCall2, rageUiCall3)
textValue = ""
rageUiCall2 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue3 = "cmg_licenseplateui"
textValue5 = "cmg_licenseplateui"
rageUiCall5, textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5 = rageUiCall5(textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5)
workValue5(textValue14, textValue17, rageUiCall5, textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5)
workValue5 = RMenu
textValue14 = workValue5
workValue5 = workValue5.Get
textValue17 = "owned_notinuse"
rageUiCall5 = "dvla"
-- Beginner: result below is menu.
workValue5 = workValue5(textValue14, textValue17, rageUiCall5)
textValue14 = workValue5
workValue5 = workValue5.SetSubtitle
textValue17 = "~b~Owned license plates"
workValue5(textValue14, textValue17)
workValue5 = RMenu
workValue5 = workValue5.Add
textValue14 = "individual_plate"
textValue17 = "dvla"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue19 = RMenu
textValue = textValue19
textValue19 = textValue19.Get
rageUiCall2 = "owned"
rageUiCall3 = "dvla"
-- Beginner: result below is menu.
textValue19 = textValue19(textValue, rageUiCall2, rageUiCall3)
textValue = ""
rageUiCall2 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue3 = "cmg_licenseplateui"
textValue5 = "cmg_licenseplateui"
rageUiCall5, textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5 = rageUiCall5(textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5)
workValue5(textValue14, textValue17, rageUiCall5, textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5)
workValue5 = RMenu
textValue14 = workValue5
workValue5 = workValue5.Get
textValue17 = "individual_plate"
rageUiCall5 = "dvla"
-- Beginner: result below is menu.
workValue5 = workValue5(textValue14, textValue17, rageUiCall5)
textValue14 = workValue5
workValue5 = workValue5.SetSubtitle
textValue17 = "~b~Plate management"
workValue5(textValue14, textValue17)
workValue5 = RMenu
workValue5 = workValue5.Add
textValue14 = "vehicle_list"
textValue17 = "dvla"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateSubMenu
textValue19 = RMenu
textValue = textValue19
textValue19 = textValue19.Get
rageUiCall2 = "owned"
rageUiCall3 = "dvla"
-- Beginner: result below is menu.
textValue19 = textValue19(textValue, rageUiCall2, rageUiCall3)
textValue = ""
rageUiCall2 = ""
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue3 = "cmg_licenseplateui"
textValue5 = "cmg_licenseplateui"
rageUiCall5, textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5 = rageUiCall5(textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5)
workValue5(textValue14, textValue17, rageUiCall5, textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5)
workValue5 = RMenu
textValue14 = workValue5
workValue5 = workValue5.Get
textValue17 = "vehicle_list"
rageUiCall5 = "dvla"
-- Beginner: result below is menu.
workValue5 = workValue5(textValue14, textValue17, rageUiCall5)
textValue14 = workValue5
workValue5 = workValue5.SetSubtitle
textValue17 = "~b~Choose which vehicle to apply this plate to!"
workValue5(textValue14, textValue17)
workValue5 = RMenu
workValue5 = workValue5.Add
textValue14 = "confirm"
textValue17 = "dvla"
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateMenu
textValue19 = ""
textValue = ""
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "cmg_licenseplateui"
textValue3 = "cmg_licenseplateui"
rageUiCall5, textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5 = rageUiCall5(textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3)
workValue5(textValue14, textValue17, rageUiCall5, textValue19, textValue, rageUiCall2, rageUiCall3, rageUiCall4, textValue3, textValue5)
workValue5 = RMenu
textValue14 = workValue5
workValue5 = workValue5.Get
textValue17 = "confirm"
rageUiCall5 = "dvla"
-- Beginner: result below is menu.
workValue5 = workValue5(textValue14, textValue17, rageUiCall5)
textValue14 = workValue5
workValue5 = workValue5.SetSubtitle
textValue17 = "~b~Are you sure?"
workValue5(textValue14, textValue17)
workValue5 = RegisterNetEvent
textValue14 = "9d793d59ff"
-- Beginner: this function handles network event "9d793d59ff".

-- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg1) ===
function textValue17(arg1)
  local arg2, arg3, flag3, flag4, cmgCall3, textValue15, workValue6, numberValue7, numberValue8
  arg2 = pairs
  arg3 = arg1
  arg2, arg3, flag3, flag4 = arg2(arg3)
  for cmgCall3, textValue15 in arg2, arg3, flag3, flag4 do
    numberValue7 = textValue15.license_plate
    workValue6 = dataTable3
    numberValue8 = textValue15.uuid
    workValue6[numberValue7] = numberValue8
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9d793d59ff".
workValue5(textValue14, textValue17)
workValue5 = AddEventHandler
textValue14 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: textValue17; parameters: arg1, arg2) ===
function textValue17(arg1, arg2)
  local arg3, flag3, flag4, cmgCall3, textValue15, workValue6, numberValue7, numberValue8, numberValue, textValue2, numberValue2, dataTable2, numberValue3, numberValue4, numberValue5, numberValue6
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: arg3() ===
    function arg3()
      local rageUiCall, workValue3
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: flag3; parameters: none) ===
    function flag3()
      local rageUiCall, workValue3, flag2, textValue10, textValue11
      rageUiCall = RageUI
      rageUiCall = rageUiCall.Visible
      workValue3 = RMenu
      flag2 = workValue3
      workValue3 = workValue3.Get
      textValue10 = "main"
      textValue11 = "dvla"
      -- Beginner: result below is menu.
      workValue3 = workValue3(flag2, textValue10, textValue11)
      flag2 = false
      rageUiCall(workValue3, flag2)
    end

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: none) ===
    function flag4()
      local rageUiCall, workValue3, flag2, textValue10, textValue11, textValue12, textValue16
      rageUiCall = IsControlJustPressed
      workValue3 = 1
      flag2 = 38
      rageUiCall = rageUiCall(workValue3, flag2)
      if rageUiCall then
        rageUiCall = RageUI
        rageUiCall = rageUiCall.CloseAll
        rageUiCall()
        rageUiCall = RageUI
        rageUiCall = rageUiCall.Visible
        workValue3 = RMenu
        flag2 = workValue3
        workValue3 = workValue3.Get
        textValue10 = "main"
        textValue11 = "dvla"
        -- Beginner: result below is menu.
        workValue3 = workValue3(flag2, textValue10, textValue11)
        flag2 = RageUI
        flag2 = flag2.Visible
        textValue10 = RMenu
        textValue11 = textValue10
        textValue10 = textValue10.Get
        textValue12 = "main"
        textValue16 = "dvla"
        textValue10, textValue11, textValue12, textValue16 = textValue10(textValue11, textValue12, textValue16)
        -- Beginner: result below is menuVisible.
        flag2 = flag2(textValue10, textValue11, textValue12, textValue16)
        flag2 = not flag2
        rageUiCall(workValue3, flag2)
      end
      rageUiCall = CMG
      rageUiCall = rageUiCall.DrawText3D
      workValue3 = textValue8
      flag2 = "Press [E] to open License Plate Management"
      textValue10 = 0.2
      rageUiCall(workValue3, flag2, textValue10)
    end
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.createArea
    textValue15 = "licenseplate"
    workValue6 = textValue8
    numberValue7 = 1.5
    numberValue8 = 6
    numberValue = arg3
    textValue2 = flag3
    numberValue2 = flag4
    dataTable2 = {}
    -- Beginner: Create an interaction area around a world position.
    cmgCall3(textValue15, workValue6, numberValue7, numberValue8, numberValue, textValue2, numberValue2, dataTable2)
    cmgCall3 = tCMG
    cmgCall3 = cmgCall3.addMarker
    textValue15 = textValue8.x
    workValue6 = textValue8.y
    numberValue7 = textValue8.z
    numberValue7 = numberValue7 - 1
    numberValue8 = 1.0
    numberValue = 1.0
    textValue2 = 1.0
    numberValue2 = 255
    dataTable2 = 0
    numberValue3 = 0
    numberValue4 = 170
    numberValue5 = 50
    numberValue6 = 27
    -- Beginner: Create a world marker.
    cmgCall3(textValue15, workValue6, numberValue7, numberValue8, numberValue, textValue2, numberValue2, dataTable2, numberValue3, numberValue4, numberValue5, numberValue6)
    cmgCall3 = tCMG
    cmgCall3 = cmgCall3.addBlip
    textValue15 = textValue8.x
    workValue6 = textValue8.y
    numberValue7 = textValue8.z
    numberValue8 = 606
    numberValue = 2
    textValue2 = "Licence Plate Manager"
    -- Beginner: Create a minimap blip.
    cmgCall3(textValue15, workValue6, numberValue7, numberValue8, numberValue, textValue2)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
workValue5(textValue14, textValue17)

-- === HELPER FUNCTION (decompiler name: workValue5; parameters: arg1) ===
function workValue5(arg1)
  local arg2, arg3, flag3, flag4, cmgCall3, textValue15, workValue6
  arg2 = pairs
  arg3 = dataTable3
  arg2, arg3, flag3, flag4 = arg2(arg3)
  for cmgCall3, textValue15 in arg2, arg3, flag3, flag4 do
    if arg1 == textValue15 then
      return cmgCall3
    end
  end
end
textValue14 = RageUI
textValue14 = textValue14.CreateWhile
textValue17 = 1.0
rageUiCall5 = RMenu
textValue19 = rageUiCall5
rageUiCall5 = rageUiCall5.Get
textValue = "main"
rageUiCall2 = "dvla"
-- Beginner: result below is menu.
rageUiCall5 = rageUiCall5(textValue19, textValue, rageUiCall2)
textValue19 = nil

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, arg3, flag3, flag4, cmgCall3, textValue15
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  flag3 = "main"
  flag4 = "dvla"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, flag3, flag4)
  arg3 = true
  flag3 = true
  flag4 = true

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
  function cmgCall3()
    local rageUiCall, workValue3, flag2, textValue10, textValue11, textValue12, textValue16, workValue7, textValue18, textValue20
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    workValue3 = "Owned License Plates"
    flag2 = ""
    textValue10 = {}
    textValue10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    textValue11 = true

    -- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg12, arg22, arg32) ===
    function textValue12(arg12, arg22, arg32)
    end
    textValue16 = RMenu
    workValue7 = textValue16
    textValue16 = textValue16.Get
    textValue18 = "owned"
    textValue20 = "dvla"
    textValue16, workValue7, textValue18, textValue20 = textValue16(workValue7, textValue18, textValue20)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(workValue3, flag2, textValue10, textValue11, textValue12, textValue16, workValue7, textValue18, textValue20)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    workValue3 = "Check Plate Availability"
    flag2 = ""
    textValue10 = {}
    textValue10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    textValue11 = true

    -- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg12, arg22, arg32) ===
    function textValue12(arg12, arg22, arg32)
      local cmgCall2, serverEventCall, textValue13, stringHelper
      if arg32 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.GetRageInputText
        serverEventCall = "Enter License Plate"
        cmgCall2 = cmgCall2(serverEventCall)
        if not cmgCall2 then
          cmgCall2 = ""
        end
        if "" ~= cmgCall2 then
          serverEventCall = TriggerServerEvent
          textValue13 = "49c1072fac"
          stringHelper = cmgCall2
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "49c1072fac".
          serverEventCall(textValue13, stringHelper)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(workValue3, flag2, textValue10, textValue11, textValue12)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    workValue3 = "Redeem License Plate"
    flag2 = ""
    textValue10 = {}
    textValue10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    textValue11 = true

    -- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg12, arg22, arg32) ===
    function textValue12(arg12, arg22, arg32)
      local cmgCall2, serverEventCall, textValue13, stringHelper, workValue8
      if arg32 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.GetRageInputText
        serverEventCall = "Enter License Plate"
        cmgCall2 = cmgCall2(serverEventCall)
        if not cmgCall2 then
          cmgCall2 = ""
        end
        if "" ~= cmgCall2 then
          serverEventCall = TriggerServerEvent
          textValue13 = "3b8c5be385"
          stringHelper = string
          stringHelper = stringHelper.upper
          workValue8 = cmgCall2
          stringHelper, workValue8 = stringHelper(workValue8)
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3b8c5be385".
          serverEventCall(textValue13, stringHelper, workValue8)
        end
      end
    end
    textValue16 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(workValue3, flag2, textValue10, textValue11, textValue12, textValue16)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    workValue3 = "Check Phone Number Availability"
    flag2 = ""
    textValue10 = {}
    textValue10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    textValue11 = true

    -- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg12, arg22, arg32) ===
    function textValue12(arg12, arg22, arg32)
      local cmgCall2, serverEventCall, textValue13, stringHelper
      if arg32 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.GetRageInputText
        serverEventCall = "Enter Phone Number"
        cmgCall2 = cmgCall2(serverEventCall)
        if "" ~= cmgCall2 then
          serverEventCall = TriggerServerEvent
          textValue13 = "96fcc3ba5a"
          stringHelper = cmgCall2
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "96fcc3ba5a".
          serverEventCall(textValue13, stringHelper)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(workValue3, flag2, textValue10, textValue11, textValue12)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    workValue3 = "Redeem Phone Number"
    flag2 = ""
    textValue10 = {}
    textValue10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    textValue11 = true

    -- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg12, arg22, arg32) ===
    function textValue12(arg12, arg22, arg32)
      local cmgCall2, serverEventCall, textValue13, stringHelper, workValue8
      if arg32 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.GetRageInputText
        serverEventCall = "Enter Phone Number"
        cmgCall2 = cmgCall2(serverEventCall)
        if "" ~= cmgCall2 then
          serverEventCall = TriggerServerEvent
          textValue13 = "924833014b"
          stringHelper = string
          stringHelper = stringHelper.upper
          workValue8 = cmgCall2
          stringHelper, workValue8 = stringHelper(workValue8)
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "924833014b".
          serverEventCall(textValue13, stringHelper, workValue8)
        end
      end
    end
    textValue16 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(workValue3, flag2, textValue10, textValue11, textValue12, textValue16)
  end

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: none) ===
  function textValue15()
    local rageUiCall, workValue3
  end
  arg1(arg2, arg3, flag3, flag4, cmgCall3, textValue15)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  flag3 = "owned"
  flag4 = "dvla"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, flag3, flag4)
  arg3 = true
  flag3 = true
  flag4 = true

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
  function cmgCall3()
    local rageUiCall, workValue3, flag2, textValue10, textValue11, textValue12, textValue16, workValue7, textValue18, textValue20
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    workValue3 = "Equipped plates"
    flag2 = ""
    textValue10 = {}
    textValue10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    textValue11 = true

    -- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg12, arg22, arg32) ===
    function textValue12(arg12, arg22, arg32)
    end
    textValue16 = RMenu
    workValue7 = textValue16
    textValue16 = textValue16.Get
    textValue18 = "owned_inuse"
    textValue20 = "dvla"
    textValue16, workValue7, textValue18, textValue20 = textValue16(workValue7, textValue18, textValue20)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(workValue3, flag2, textValue10, textValue11, textValue12, textValue16, workValue7, textValue18, textValue20)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    workValue3 = "Available plates"
    flag2 = ""
    textValue10 = {}
    textValue10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    textValue11 = true

    -- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg12, arg22, arg32) ===
    function textValue12(arg12, arg22, arg32)
    end
    textValue16 = RMenu
    workValue7 = textValue16
    textValue16 = textValue16.Get
    textValue18 = "owned_notinuse"
    textValue20 = "dvla"
    textValue16, workValue7, textValue18, textValue20 = textValue16(workValue7, textValue18, textValue20)
    rageUiCall(workValue3, flag2, textValue10, textValue11, textValue12, textValue16, workValue7, textValue18, textValue20)
  end

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: none) ===
  function textValue15()
    local rageUiCall, workValue3
  end
  arg1(arg2, arg3, flag3, flag4, cmgCall3, textValue15)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  flag3 = "confirm"
  flag4 = "dvla"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, flag3, flag4)
  arg3 = true
  flag3 = true
  flag4 = true

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
  function cmgCall3()
    local rageUiCall, workValue3, flag2, textValue10, textValue11, textValue12, textValue16, workValue7, textValue18, textValue20
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    workValue3 = "Yes"
    flag2 = ""
    textValue10 = {}
    textValue10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    textValue11 = true

    -- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg12, arg22, arg32) ===
    function textValue12(arg12, arg22, arg32)
    end
    textValue16 = RMenu
    workValue7 = textValue16
    textValue16 = textValue16.Get
    textValue18 = "main"
    textValue20 = "dvla"
    textValue16, workValue7, textValue18, textValue20 = textValue16(workValue7, textValue18, textValue20)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(workValue3, flag2, textValue10, textValue11, textValue12, textValue16, workValue7, textValue18, textValue20)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    workValue3 = "No"
    flag2 = ""
    textValue10 = {}
    textValue10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    textValue11 = true

    -- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg12, arg22, arg32) ===
    function textValue12(arg12, arg22, arg32)
      local cmgCall2, serverEventCall
      if arg32 then
        cmgCall2 = tCMG
        cmgCall2 = cmgCall2.notify
        serverEventCall = "~r~Cancelled."
        -- Beginner: Show a notification to the player.
        cmgCall2(serverEventCall)
      end
    end
    textValue16 = RMenu
    workValue7 = textValue16
    textValue16 = textValue16.Get
    textValue18 = "main"
    textValue20 = "dvla"
    textValue16, workValue7, textValue18, textValue20 = textValue16(workValue7, textValue18, textValue20)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(workValue3, flag2, textValue10, textValue11, textValue12, textValue16, workValue7, textValue18, textValue20)
  end

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: none) ===
  function textValue15()
    local rageUiCall, workValue3
  end
  arg1(arg2, arg3, flag3, flag4, cmgCall3, textValue15)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  flag3 = "owned_inuse"
  flag4 = "dvla"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, flag3, flag4)
  arg3 = true
  flag3 = true
  flag4 = true

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
  function cmgCall3()
    local rageUiCall, workValue3, flag2, textValue10, textValue11, textValue12, textValue16, workValue7, textValue18, textValue20, dataTable, flag, workValue, workValue2
    rageUiCall = pairs
    workValue3 = dataTable3
    rageUiCall, workValue3, flag2, textValue10 = rageUiCall(workValue3)
    for textValue11, textValue12 in rageUiCall, workValue3, flag2, textValue10 do
      textValue16 = CMG
      textValue16 = textValue16.getVehicleInfoFromUUID
      workValue7 = textValue12
      textValue16 = textValue16(workValue7)
      if textValue16 and 0 ~= textValue12 then
        workValue7 = RageUI
        workValue7 = workValue7.ButtonWithStyle
        textValue18 = textValue11
        textValue20 = "In use on "
        dataTable = textValue16.name
        textValue20 = textValue20 .. dataTable
        dataTable = {}
        dataTable.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag = true

        -- === HELPER FUNCTION (decompiler name: workValue; parameters: arg12, arg22, arg32) ===
        function workValue(arg12, arg22, arg32)
          local cmgCall2
          if arg32 then
            cmgCall2 = textValue11
            textValue9 = cmgCall2
          end
        end
        workValue2 = nil
        -- Beginner: Draw a selectable RageUI menu button.
        workValue7(textValue18, textValue20, dataTable, flag, workValue, workValue2)
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: none) ===
  function textValue15()
    local rageUiCall, workValue3
  end
  arg1(arg2, arg3, flag3, flag4, cmgCall3, textValue15)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  flag3 = "owned_notinuse"
  flag4 = "dvla"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, flag3, flag4)
  arg3 = true
  flag3 = true
  flag4 = true

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
  function cmgCall3()
    local rageUiCall, workValue3, flag2, textValue10, textValue11, textValue12, textValue16, workValue7, textValue18, textValue20, dataTable, flag, workValue, workValue2, textValue4, textValue6
    rageUiCall = pairs
    workValue3 = dataTable3
    rageUiCall, workValue3, flag2, textValue10 = rageUiCall(workValue3)
    for textValue11, textValue12 in rageUiCall, workValue3, flag2, textValue10 do
      if 0 == textValue12 then
        textValue16 = RageUI
        textValue16 = textValue16.ButtonWithStyle
        workValue7 = textValue11
        textValue18 = ""
        textValue20 = {}
        textValue20.RightLabel = "\226\134\146\226\134\146\226\134\146"
        dataTable = true

        -- === HELPER FUNCTION (decompiler name: flag; parameters: arg12, arg22, arg32) ===
        function flag(arg12, arg22, arg32)
          local cmgCall2
          if arg32 then
            cmgCall2 = textValue11
            textValue9 = cmgCall2
          end
        end
        workValue = RMenu
        workValue2 = workValue
        workValue = workValue.Get
        textValue4 = "individual_plate"
        textValue6 = "dvla"
        workValue, workValue2, textValue4, textValue6 = workValue(workValue2, textValue4, textValue6)
        -- Beginner: Draw a selectable RageUI menu button.
        textValue16(workValue7, textValue18, textValue20, dataTable, flag, workValue, workValue2, textValue4, textValue6)
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: none) ===
  function textValue15()
    local rageUiCall, workValue3
  end
  arg1(arg2, arg3, flag3, flag4, cmgCall3, textValue15)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  flag3 = "individual_plate"
  flag4 = "dvla"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, flag3, flag4)
  arg3 = true
  flag3 = true
  flag4 = true

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
  function cmgCall3()
    local rageUiCall, workValue3, flag2, textValue10, textValue11, textValue12, textValue16, workValue7, textValue18, textValue20
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    workValue3 = "Apply on Vehicle"
    flag2 = ""
    textValue10 = {}
    textValue10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    textValue11 = true

    -- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg12, arg22, arg32) ===
    function textValue12(arg12, arg22, arg32)
      local cmgCall2, serverEventCall, textValue13, stringHelper
      if arg32 then
        cmgCall2 = workValue4
        if cmgCall2 then
          serverEventCall = textValue9
          cmgCall2 = dataTable3
          cmgCall2 = cmgCall2[serverEventCall]
          if 0 == cmgCall2 then
            cmgCall2 = TriggerServerEvent
            serverEventCall = "aafd1f557c"
            textValue13 = workValue4
            stringHelper = textValue9
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "aafd1f557c".
            cmgCall2(serverEventCall, textValue13, stringHelper)
          else
            cmgCall2 = tCMG
            cmgCall2 = cmgCall2.notify
            serverEventCall = "~r~Cannot apply this plate onto a vehicle, it is already in use!"
            -- Beginner: Show a notification to the player.
            cmgCall2(serverEventCall)
          end
          cmgCall2 = nil
          workValue4 = cmgCall2
        end
      end
    end
    textValue16 = RMenu
    workValue7 = textValue16
    textValue16 = textValue16.Get
    textValue18 = "vehicle_list"
    textValue20 = "dvla"
    textValue16, workValue7, textValue18, textValue20 = textValue16(workValue7, textValue18, textValue20)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(workValue3, flag2, textValue10, textValue11, textValue12, textValue16, workValue7, textValue18, textValue20)
    workValue3 = textValue9
    rageUiCall = dataTable3
    rageUiCall = rageUiCall[workValue3]
    if 0 == rageUiCall then
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ButtonWithStyle
      workValue3 = "Sell to Player"
      flag2 = ""
      textValue10 = {}
      textValue10.RightLabel = "\226\134\146\226\134\146\226\134\146"
      textValue11 = true

      -- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg12, arg22, arg32) ===
      function textValue12(arg12, arg22, arg32)
        local cmgCall2, serverEventCall, textValue13
        if arg32 then
          cmgCall2 = TriggerServerEvent
          serverEventCall = "20eaf734bb"
          textValue13 = textValue9
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "20eaf734bb".
          cmgCall2(serverEventCall, textValue13)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall(workValue3, flag2, textValue10, textValue11, textValue12)
    else
      rageUiCall = RageUI
      rageUiCall = rageUiCall.Separator
      workValue3 = "~r~Cannot sell this plate, it is in use."
      rageUiCall(workValue3)
    end
  end

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: none) ===
  function textValue15()
    local rageUiCall, workValue3
  end
  arg1(arg2, arg3, flag3, flag4, cmgCall3, textValue15)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  flag3 = "vehicle_list"
  flag4 = "dvla"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, flag3, flag4)
  arg3 = true
  flag3 = true
  flag4 = true

  -- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
  function cmgCall3()
    local rageUiCall, workValue3, flag2, textValue10, textValue11, textValue12, textValue16, workValue7, textValue18, textValue20, dataTable, flag, workValue, workValue2, textValue4, textValue6, textValue7
    rageUiCall = pairs
    workValue3 = CMG
    workValue3 = workValue3.getVehicleInfoLookup
    workValue3, flag2, textValue10, textValue11, textValue12, textValue16, workValue7, textValue18, textValue20, dataTable, flag, workValue, workValue2, textValue4, textValue6, textValue7 = workValue3()
    rageUiCall, workValue3, flag2, textValue10 = rageUiCall(workValue3, flag2, textValue10, textValue11, textValue12, textValue16, workValue7, textValue18, textValue20, dataTable, flag, workValue, workValue2, textValue4, textValue6, textValue7)
    for textValue11, textValue12 in rageUiCall, workValue3, flag2, textValue10 do
      textValue16 = workValue5
      workValue7 = textValue11
      textValue16 = textValue16(workValue7)
      if not textValue16 then
        textValue16 = "N/A"
      end
      workValue7 = RageUI
      workValue7 = workValue7.ButtonWithStyle
      textValue18 = textValue12.name
      textValue20 = "Current plate: "
      dataTable = textValue16
      textValue20 = textValue20 .. dataTable
      dataTable = {}
      dataTable.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag = true

      -- === HELPER FUNCTION (decompiler name: workValue; parameters: arg12, arg22, arg32) ===
      function workValue(arg12, arg22, arg32)
        local cmgCall2
        if arg32 then
          cmgCall2 = textValue11
          workValue4 = cmgCall2
        end
      end
      workValue2 = RMenu
      textValue4 = workValue2
      workValue2 = workValue2.Get
      textValue6 = "individual_plate"
      textValue7 = "dvla"
      workValue2, textValue4, textValue6, textValue7 = workValue2(textValue4, textValue6, textValue7)
      -- Beginner: Draw a selectable RageUI menu button.
      workValue7(textValue18, textValue20, dataTable, flag, workValue, workValue2, textValue4, textValue6, textValue7)
    end
  end

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: none) ===
  function textValue15()
    local rageUiCall, workValue3
  end
  arg1(arg2, arg3, flag3, flag4, cmgCall3, textValue15)
end
textValue14(textValue17, rageUiCall5, textValue19, textValue)
textValue14 = RegisterNetEvent
textValue17 = "a4a422640d"
-- Beginner: this function handles network event "a4a422640d".

-- === HELPER FUNCTION (decompiler name: rageUiCall5; parameters: arg1, arg2, arg3) ===
function rageUiCall5(arg1, arg2, arg3)
  local flag3
  flag3 = dataTable3
  flag3[arg1] = arg3
  flag3 = dataTable3
  flag3[arg2] = 0
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a4a422640d".
textValue14(textValue17, rageUiCall5)
textValue14 = RegisterNetEvent
textValue17 = "724b8c37e4"
-- Beginner: this function handles network event "724b8c37e4".

-- === HELPER FUNCTION (decompiler name: rageUiCall5; parameters: arg1) ===
function rageUiCall5(arg1)
  local arg2
  arg2 = dataTable3
  arg2[arg1] = 0
end
textValue14(textValue17, rageUiCall5)
textValue14 = RegisterNetEvent
textValue17 = "88371b8fc9"
-- Beginner: this function handles network event "88371b8fc9".

-- === HELPER FUNCTION (decompiler name: rageUiCall5; parameters: arg1) ===
function rageUiCall5(arg1)
  local arg2
  arg2 = dataTable3
  arg2[arg1] = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "88371b8fc9".
textValue14(textValue17, rageUiCall5)
