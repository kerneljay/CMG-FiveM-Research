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
local cmgOperation, text8, text9, dataCollection3, workingValue4, workingValue5, text14, text17, rageUiOperation5, text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text8 = "cfg/cfg_licenseplate"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text8)
text8 = cmgOperation.licenseChangerCoords
text9 = ""
dataCollection3 = {}
workingValue4 = nil
workingValue5 = RMenu
workingValue5 = workingValue5.Add
text14 = "main"
text17 = "dvla"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateMenu
text19 = ""
text = ""
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "cmg_licenseplateui"
text3 = "cmg_licenseplateui"
rageUiOperation5, text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5 = rageUiOperation5(text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3)
workingValue5(text14, text17, rageUiOperation5, text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5)
workingValue5 = RMenu
text14 = workingValue5
workingValue5 = workingValue5.Get
text17 = "main"
rageUiOperation5 = "dvla"
-- Beginner: result below is menu.
workingValue5 = workingValue5(text14, text17, rageUiOperation5)
text14 = workingValue5
workingValue5 = workingValue5.SetSubtitle
text17 = "~b~DVLA"
workingValue5(text14, text17)
workingValue5 = RMenu
workingValue5 = workingValue5.Add
text14 = "owned"
text17 = "dvla"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text19 = RMenu
text = text19
text19 = text19.Get
rageUiOperation2 = "main"
rageUiOperation3 = "dvla"
-- Beginner: result below is menu.
text19 = text19(text, rageUiOperation2, rageUiOperation3)
text = ""
rageUiOperation2 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text3 = "cmg_licenseplateui"
text5 = "cmg_licenseplateui"
rageUiOperation5, text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5 = rageUiOperation5(text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5)
workingValue5(text14, text17, rageUiOperation5, text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5)
workingValue5 = RMenu
text14 = workingValue5
workingValue5 = workingValue5.Get
text17 = "owned"
rageUiOperation5 = "dvla"
-- Beginner: result below is menu.
workingValue5 = workingValue5(text14, text17, rageUiOperation5)
text14 = workingValue5
workingValue5 = workingValue5.SetSubtitle
text17 = "~b~Owned license plates"
workingValue5(text14, text17)
workingValue5 = RMenu
workingValue5 = workingValue5.Add
text14 = "owned_inuse"
text17 = "dvla"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text19 = RMenu
text = text19
text19 = text19.Get
rageUiOperation2 = "owned"
rageUiOperation3 = "dvla"
-- Beginner: result below is menu.
text19 = text19(text, rageUiOperation2, rageUiOperation3)
text = ""
rageUiOperation2 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text3 = "cmg_licenseplateui"
text5 = "cmg_licenseplateui"
rageUiOperation5, text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5 = rageUiOperation5(text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5)
workingValue5(text14, text17, rageUiOperation5, text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5)
workingValue5 = RMenu
text14 = workingValue5
workingValue5 = workingValue5.Get
text17 = "owned_inuse"
rageUiOperation5 = "dvla"
-- Beginner: result below is menu.
workingValue5 = workingValue5(text14, text17, rageUiOperation5)
text14 = workingValue5
workingValue5 = workingValue5.SetSubtitle
text17 = "~b~Owned license plates"
workingValue5(text14, text17)
workingValue5 = RMenu
workingValue5 = workingValue5.Add
text14 = "owned_notinuse"
text17 = "dvla"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text19 = RMenu
text = text19
text19 = text19.Get
rageUiOperation2 = "owned"
rageUiOperation3 = "dvla"
-- Beginner: result below is menu.
text19 = text19(text, rageUiOperation2, rageUiOperation3)
text = ""
rageUiOperation2 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text3 = "cmg_licenseplateui"
text5 = "cmg_licenseplateui"
rageUiOperation5, text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5 = rageUiOperation5(text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5)
workingValue5(text14, text17, rageUiOperation5, text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5)
workingValue5 = RMenu
text14 = workingValue5
workingValue5 = workingValue5.Get
text17 = "owned_notinuse"
rageUiOperation5 = "dvla"
-- Beginner: result below is menu.
workingValue5 = workingValue5(text14, text17, rageUiOperation5)
text14 = workingValue5
workingValue5 = workingValue5.SetSubtitle
text17 = "~b~Owned license plates"
workingValue5(text14, text17)
workingValue5 = RMenu
workingValue5 = workingValue5.Add
text14 = "individual_plate"
text17 = "dvla"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text19 = RMenu
text = text19
text19 = text19.Get
rageUiOperation2 = "owned"
rageUiOperation3 = "dvla"
-- Beginner: result below is menu.
text19 = text19(text, rageUiOperation2, rageUiOperation3)
text = ""
rageUiOperation2 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text3 = "cmg_licenseplateui"
text5 = "cmg_licenseplateui"
rageUiOperation5, text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5 = rageUiOperation5(text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5)
workingValue5(text14, text17, rageUiOperation5, text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5)
workingValue5 = RMenu
text14 = workingValue5
workingValue5 = workingValue5.Get
text17 = "individual_plate"
rageUiOperation5 = "dvla"
-- Beginner: result below is menu.
workingValue5 = workingValue5(text14, text17, rageUiOperation5)
text14 = workingValue5
workingValue5 = workingValue5.SetSubtitle
text17 = "~b~Plate management"
workingValue5(text14, text17)
workingValue5 = RMenu
workingValue5 = workingValue5.Add
text14 = "vehicle_list"
text17 = "dvla"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateSubMenu
text19 = RMenu
text = text19
text19 = text19.Get
rageUiOperation2 = "owned"
rageUiOperation3 = "dvla"
-- Beginner: result below is menu.
text19 = text19(text, rageUiOperation2, rageUiOperation3)
text = ""
rageUiOperation2 = ""
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text3 = "cmg_licenseplateui"
text5 = "cmg_licenseplateui"
rageUiOperation5, text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5 = rageUiOperation5(text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5)
workingValue5(text14, text17, rageUiOperation5, text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5)
workingValue5 = RMenu
text14 = workingValue5
workingValue5 = workingValue5.Get
text17 = "vehicle_list"
rageUiOperation5 = "dvla"
-- Beginner: result below is menu.
workingValue5 = workingValue5(text14, text17, rageUiOperation5)
text14 = workingValue5
workingValue5 = workingValue5.SetSubtitle
text17 = "~b~Choose which vehicle to apply this plate to!"
workingValue5(text14, text17)
workingValue5 = RMenu
workingValue5 = workingValue5.Add
text14 = "confirm"
text17 = "dvla"
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateMenu
text19 = ""
text = ""
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "cmg_licenseplateui"
text3 = "cmg_licenseplateui"
rageUiOperation5, text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5 = rageUiOperation5(text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3)
workingValue5(text14, text17, rageUiOperation5, text19, text, rageUiOperation2, rageUiOperation3, rageUiOperation4, text3, text5)
workingValue5 = RMenu
text14 = workingValue5
workingValue5 = workingValue5.Get
text17 = "confirm"
rageUiOperation5 = "dvla"
-- Beginner: result below is menu.
workingValue5 = workingValue5(text14, text17, rageUiOperation5)
text14 = workingValue5
workingValue5 = workingValue5.SetSubtitle
text17 = "~b~Are you sure?"
workingValue5(text14, text17)
workingValue5 = RegisterNetEvent
text14 = "9d793d59ff"
-- Beginner: this function handles network event "9d793d59ff".

-- === HELPER FUNCTION (decompiler name: text17; parameters: localValue1) ===
function text17(localValue1)
  local localValue2, localValue3, stateFlag3, stateFlag4, cmgOperation3, text15, workingValue6, number7, number8
  localValue2 = pairs
  localValue3 = localValue1
  localValue2, localValue3, stateFlag3, stateFlag4 = localValue2(localValue3)
  for cmgOperation3, text15 in localValue2, localValue3, stateFlag3, stateFlag4 do
    number7 = text15.license_plate
    workingValue6 = dataCollection3
    number8 = text15.uuid
    workingValue6[number7] = number8
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9d793d59ff".
workingValue5(text14, text17)
workingValue5 = AddEventHandler
text14 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: text17; parameters: localValue1, localValue2) ===
function text17(localValue1, localValue2)
  local localValue3, stateFlag3, stateFlag4, cmgOperation3, text15, workingValue6, number7, number8, number, text2, number2, dataCollection2, number3, number4, number5, number6
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: localValue3() ===
    function localValue3()
      local rageUiOperation, workingValue3
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: none) ===
    function stateFlag3()
      local rageUiOperation, workingValue3, stateFlag2, text10, text11
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.Visible
      workingValue3 = RMenu
      stateFlag2 = workingValue3
      workingValue3 = workingValue3.Get
      text10 = "main"
      text11 = "dvla"
      -- Beginner: result below is menu.
      workingValue3 = workingValue3(stateFlag2, text10, text11)
      stateFlag2 = false
      rageUiOperation(workingValue3, stateFlag2)
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: none) ===
    function stateFlag4()
      local rageUiOperation, workingValue3, stateFlag2, text10, text11, text12, text16
      rageUiOperation = IsControlJustPressed
      workingValue3 = 1
      stateFlag2 = 38
      rageUiOperation = rageUiOperation(workingValue3, stateFlag2)
      if rageUiOperation then
        rageUiOperation = RageUI
        rageUiOperation = rageUiOperation.CloseAll
        rageUiOperation()
        rageUiOperation = RageUI
        rageUiOperation = rageUiOperation.Visible
        workingValue3 = RMenu
        stateFlag2 = workingValue3
        workingValue3 = workingValue3.Get
        text10 = "main"
        text11 = "dvla"
        -- Beginner: result below is menu.
        workingValue3 = workingValue3(stateFlag2, text10, text11)
        stateFlag2 = RageUI
        stateFlag2 = stateFlag2.Visible
        text10 = RMenu
        text11 = text10
        text10 = text10.Get
        text12 = "main"
        text16 = "dvla"
        text10, text11, text12, text16 = text10(text11, text12, text16)
        -- Beginner: result below is menuVisible.
        stateFlag2 = stateFlag2(text10, text11, text12, text16)
        stateFlag2 = not stateFlag2
        rageUiOperation(workingValue3, stateFlag2)
      end
      rageUiOperation = CMG
      rageUiOperation = rageUiOperation.DrawText3D
      workingValue3 = text8
      stateFlag2 = "Press [E] to open License Plate Management"
      text10 = 0.2
      rageUiOperation(workingValue3, stateFlag2, text10)
    end
    cmgOperation3 = CMG
    cmgOperation3 = cmgOperation3.createArea
    text15 = "licenseplate"
    workingValue6 = text8
    number7 = 1.5
    number8 = 6
    number = localValue3
    text2 = stateFlag3
    number2 = stateFlag4
    dataCollection2 = {}
    -- Beginner: Create an interaction area around a world position.
    cmgOperation3(text15, workingValue6, number7, number8, number, text2, number2, dataCollection2)
    cmgOperation3 = tCMG
    cmgOperation3 = cmgOperation3.addMarker
    text15 = text8.x
    workingValue6 = text8.y
    number7 = text8.z
    number7 = number7 - 1
    number8 = 1.0
    number = 1.0
    text2 = 1.0
    number2 = 255
    dataCollection2 = 0
    number3 = 0
    number4 = 170
    number5 = 50
    number6 = 27
    -- Beginner: Create a world marker.
    cmgOperation3(text15, workingValue6, number7, number8, number, text2, number2, dataCollection2, number3, number4, number5, number6)
    cmgOperation3 = tCMG
    cmgOperation3 = cmgOperation3.addBlip
    text15 = text8.x
    workingValue6 = text8.y
    number7 = text8.z
    number8 = 606
    number = 2
    text2 = "Licence Plate Manager"
    -- Beginner: Create a minimap blip.
    cmgOperation3(text15, workingValue6, number7, number8, number, text2)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
workingValue5(text14, text17)

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, localValue3, stateFlag3, stateFlag4, cmgOperation3, text15, workingValue6
  localValue2 = pairs
  localValue3 = dataCollection3
  localValue2, localValue3, stateFlag3, stateFlag4 = localValue2(localValue3)
  for cmgOperation3, text15 in localValue2, localValue3, stateFlag3, stateFlag4 do
    if localValue1 == text15 then
      return cmgOperation3
    end
  end
end
text14 = RageUI
text14 = text14.CreateWhile
text17 = 1.0
rageUiOperation5 = RMenu
text19 = rageUiOperation5
rageUiOperation5 = rageUiOperation5.Get
text = "main"
rageUiOperation2 = "dvla"
-- Beginner: result below is menu.
rageUiOperation5 = rageUiOperation5(text19, text, rageUiOperation2)
text19 = nil

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, localValue3, stateFlag3, stateFlag4, cmgOperation3, text15
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  stateFlag3 = "main"
  stateFlag4 = "dvla"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, stateFlag3, stateFlag4)
  localValue3 = true
  stateFlag3 = true
  stateFlag4 = true

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local rageUiOperation, workingValue3, stateFlag2, text10, text11, text12, text16, workingValue7, text18, text20
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    workingValue3 = "Owned License Plates"
    stateFlag2 = ""
    text10 = {}
    text10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    text11 = true

    -- === HELPER FUNCTION (decompiler name: text12; parameters: localValue12, localValue22, localValue32) ===
    function text12(localValue12, localValue22, localValue32)
    end
    text16 = RMenu
    workingValue7 = text16
    text16 = text16.Get
    text18 = "owned"
    text20 = "dvla"
    text16, workingValue7, text18, text20 = text16(workingValue7, text18, text20)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(workingValue3, stateFlag2, text10, text11, text12, text16, workingValue7, text18, text20)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    workingValue3 = "Check Plate Availability"
    stateFlag2 = ""
    text10 = {}
    text10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    text11 = true

    -- === HELPER FUNCTION (decompiler name: text12; parameters: localValue12, localValue22, localValue32) ===
    function text12(localValue12, localValue22, localValue32)
      local cmgOperation2, serverEventCall, text13, stringHelper
      if localValue32 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.GetRageInputText
        serverEventCall = "Enter License Plate"
        cmgOperation2 = cmgOperation2(serverEventCall)
        if not cmgOperation2 then
          cmgOperation2 = ""
        end
        if "" ~= cmgOperation2 then
          serverEventCall = TriggerServerEvent
          text13 = "49c1072fac"
          stringHelper = cmgOperation2
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "49c1072fac".
          serverEventCall(text13, stringHelper)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(workingValue3, stateFlag2, text10, text11, text12)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    workingValue3 = "Redeem License Plate"
    stateFlag2 = ""
    text10 = {}
    text10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    text11 = true

    -- === HELPER FUNCTION (decompiler name: text12; parameters: localValue12, localValue22, localValue32) ===
    function text12(localValue12, localValue22, localValue32)
      local cmgOperation2, serverEventCall, text13, stringHelper, workingValue8
      if localValue32 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.GetRageInputText
        serverEventCall = "Enter License Plate"
        cmgOperation2 = cmgOperation2(serverEventCall)
        if not cmgOperation2 then
          cmgOperation2 = ""
        end
        if "" ~= cmgOperation2 then
          serverEventCall = TriggerServerEvent
          text13 = "3b8c5be385"
          stringHelper = string
          stringHelper = stringHelper.upper
          workingValue8 = cmgOperation2
          stringHelper, workingValue8 = stringHelper(workingValue8)
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3b8c5be385".
          serverEventCall(text13, stringHelper, workingValue8)
        end
      end
    end
    text16 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(workingValue3, stateFlag2, text10, text11, text12, text16)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    workingValue3 = "Check Phone Number Availability"
    stateFlag2 = ""
    text10 = {}
    text10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    text11 = true

    -- === HELPER FUNCTION (decompiler name: text12; parameters: localValue12, localValue22, localValue32) ===
    function text12(localValue12, localValue22, localValue32)
      local cmgOperation2, serverEventCall, text13, stringHelper
      if localValue32 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.GetRageInputText
        serverEventCall = "Enter Phone Number"
        cmgOperation2 = cmgOperation2(serverEventCall)
        if "" ~= cmgOperation2 then
          serverEventCall = TriggerServerEvent
          text13 = "96fcc3ba5a"
          stringHelper = cmgOperation2
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "96fcc3ba5a".
          serverEventCall(text13, stringHelper)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(workingValue3, stateFlag2, text10, text11, text12)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    workingValue3 = "Redeem Phone Number"
    stateFlag2 = ""
    text10 = {}
    text10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    text11 = true

    -- === HELPER FUNCTION (decompiler name: text12; parameters: localValue12, localValue22, localValue32) ===
    function text12(localValue12, localValue22, localValue32)
      local cmgOperation2, serverEventCall, text13, stringHelper, workingValue8
      if localValue32 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.GetRageInputText
        serverEventCall = "Enter Phone Number"
        cmgOperation2 = cmgOperation2(serverEventCall)
        if "" ~= cmgOperation2 then
          serverEventCall = TriggerServerEvent
          text13 = "924833014b"
          stringHelper = string
          stringHelper = stringHelper.upper
          workingValue8 = cmgOperation2
          stringHelper, workingValue8 = stringHelper(workingValue8)
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "924833014b".
          serverEventCall(text13, stringHelper, workingValue8)
        end
      end
    end
    text16 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(workingValue3, stateFlag2, text10, text11, text12, text16)
  end

  -- === HELPER FUNCTION (decompiler name: text15; parameters: none) ===
  function text15()
    local rageUiOperation, workingValue3
  end
  localValue1(localValue2, localValue3, stateFlag3, stateFlag4, cmgOperation3, text15)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  stateFlag3 = "owned"
  stateFlag4 = "dvla"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, stateFlag3, stateFlag4)
  localValue3 = true
  stateFlag3 = true
  stateFlag4 = true

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local rageUiOperation, workingValue3, stateFlag2, text10, text11, text12, text16, workingValue7, text18, text20
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    workingValue3 = "Equipped plates"
    stateFlag2 = ""
    text10 = {}
    text10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    text11 = true

    -- === HELPER FUNCTION (decompiler name: text12; parameters: localValue12, localValue22, localValue32) ===
    function text12(localValue12, localValue22, localValue32)
    end
    text16 = RMenu
    workingValue7 = text16
    text16 = text16.Get
    text18 = "owned_inuse"
    text20 = "dvla"
    text16, workingValue7, text18, text20 = text16(workingValue7, text18, text20)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(workingValue3, stateFlag2, text10, text11, text12, text16, workingValue7, text18, text20)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    workingValue3 = "Available plates"
    stateFlag2 = ""
    text10 = {}
    text10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    text11 = true

    -- === HELPER FUNCTION (decompiler name: text12; parameters: localValue12, localValue22, localValue32) ===
    function text12(localValue12, localValue22, localValue32)
    end
    text16 = RMenu
    workingValue7 = text16
    text16 = text16.Get
    text18 = "owned_notinuse"
    text20 = "dvla"
    text16, workingValue7, text18, text20 = text16(workingValue7, text18, text20)
    rageUiOperation(workingValue3, stateFlag2, text10, text11, text12, text16, workingValue7, text18, text20)
  end

  -- === HELPER FUNCTION (decompiler name: text15; parameters: none) ===
  function text15()
    local rageUiOperation, workingValue3
  end
  localValue1(localValue2, localValue3, stateFlag3, stateFlag4, cmgOperation3, text15)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  stateFlag3 = "confirm"
  stateFlag4 = "dvla"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, stateFlag3, stateFlag4)
  localValue3 = true
  stateFlag3 = true
  stateFlag4 = true

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local rageUiOperation, workingValue3, stateFlag2, text10, text11, text12, text16, workingValue7, text18, text20
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    workingValue3 = "Yes"
    stateFlag2 = ""
    text10 = {}
    text10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    text11 = true

    -- === HELPER FUNCTION (decompiler name: text12; parameters: localValue12, localValue22, localValue32) ===
    function text12(localValue12, localValue22, localValue32)
    end
    text16 = RMenu
    workingValue7 = text16
    text16 = text16.Get
    text18 = "main"
    text20 = "dvla"
    text16, workingValue7, text18, text20 = text16(workingValue7, text18, text20)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(workingValue3, stateFlag2, text10, text11, text12, text16, workingValue7, text18, text20)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    workingValue3 = "No"
    stateFlag2 = ""
    text10 = {}
    text10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    text11 = true

    -- === HELPER FUNCTION (decompiler name: text12; parameters: localValue12, localValue22, localValue32) ===
    function text12(localValue12, localValue22, localValue32)
      local cmgOperation2, serverEventCall
      if localValue32 then
        cmgOperation2 = tCMG
        cmgOperation2 = cmgOperation2.notify
        serverEventCall = "~r~Cancelled."
        -- Beginner: Show a notification to the player.
        cmgOperation2(serverEventCall)
      end
    end
    text16 = RMenu
    workingValue7 = text16
    text16 = text16.Get
    text18 = "main"
    text20 = "dvla"
    text16, workingValue7, text18, text20 = text16(workingValue7, text18, text20)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(workingValue3, stateFlag2, text10, text11, text12, text16, workingValue7, text18, text20)
  end

  -- === HELPER FUNCTION (decompiler name: text15; parameters: none) ===
  function text15()
    local rageUiOperation, workingValue3
  end
  localValue1(localValue2, localValue3, stateFlag3, stateFlag4, cmgOperation3, text15)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  stateFlag3 = "owned_inuse"
  stateFlag4 = "dvla"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, stateFlag3, stateFlag4)
  localValue3 = true
  stateFlag3 = true
  stateFlag4 = true

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local rageUiOperation, workingValue3, stateFlag2, text10, text11, text12, text16, workingValue7, text18, text20, dataCollection, stateFlag, workingValue, workingValue2
    rageUiOperation = pairs
    workingValue3 = dataCollection3
    rageUiOperation, workingValue3, stateFlag2, text10 = rageUiOperation(workingValue3)
    for text11, text12 in rageUiOperation, workingValue3, stateFlag2, text10 do
      text16 = CMG
      text16 = text16.getVehicleInfoFromUUID
      workingValue7 = text12
      text16 = text16(workingValue7)
      if text16 and 0 ~= text12 then
        workingValue7 = RageUI
        workingValue7 = workingValue7.ButtonWithStyle
        text18 = text11
        text20 = "In use on "
        dataCollection = text16.name
        text20 = text20 .. dataCollection
        dataCollection = {}
        dataCollection.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag = true

        -- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue12, localValue22, localValue32) ===
        function workingValue(localValue12, localValue22, localValue32)
          local cmgOperation2
          if localValue32 then
            cmgOperation2 = text11
            text9 = cmgOperation2
          end
        end
        workingValue2 = nil
        -- Beginner: Draw a selectable RageUI menu button.
        workingValue7(text18, text20, dataCollection, stateFlag, workingValue, workingValue2)
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: text15; parameters: none) ===
  function text15()
    local rageUiOperation, workingValue3
  end
  localValue1(localValue2, localValue3, stateFlag3, stateFlag4, cmgOperation3, text15)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  stateFlag3 = "owned_notinuse"
  stateFlag4 = "dvla"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, stateFlag3, stateFlag4)
  localValue3 = true
  stateFlag3 = true
  stateFlag4 = true

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local rageUiOperation, workingValue3, stateFlag2, text10, text11, text12, text16, workingValue7, text18, text20, dataCollection, stateFlag, workingValue, workingValue2, text4, text6
    rageUiOperation = pairs
    workingValue3 = dataCollection3
    rageUiOperation, workingValue3, stateFlag2, text10 = rageUiOperation(workingValue3)
    for text11, text12 in rageUiOperation, workingValue3, stateFlag2, text10 do
      if 0 == text12 then
        text16 = RageUI
        text16 = text16.ButtonWithStyle
        workingValue7 = text11
        text18 = ""
        text20 = {}
        text20.RightLabel = "\226\134\146\226\134\146\226\134\146"
        dataCollection = true

        -- === HELPER FUNCTION (decompiler name: stateFlag; parameters: localValue12, localValue22, localValue32) ===
        function stateFlag(localValue12, localValue22, localValue32)
          local cmgOperation2
          if localValue32 then
            cmgOperation2 = text11
            text9 = cmgOperation2
          end
        end
        workingValue = RMenu
        workingValue2 = workingValue
        workingValue = workingValue.Get
        text4 = "individual_plate"
        text6 = "dvla"
        workingValue, workingValue2, text4, text6 = workingValue(workingValue2, text4, text6)
        -- Beginner: Draw a selectable RageUI menu button.
        text16(workingValue7, text18, text20, dataCollection, stateFlag, workingValue, workingValue2, text4, text6)
      end
    end
  end

  -- === HELPER FUNCTION (decompiler name: text15; parameters: none) ===
  function text15()
    local rageUiOperation, workingValue3
  end
  localValue1(localValue2, localValue3, stateFlag3, stateFlag4, cmgOperation3, text15)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  stateFlag3 = "individual_plate"
  stateFlag4 = "dvla"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, stateFlag3, stateFlag4)
  localValue3 = true
  stateFlag3 = true
  stateFlag4 = true

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local rageUiOperation, workingValue3, stateFlag2, text10, text11, text12, text16, workingValue7, text18, text20
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    workingValue3 = "Apply on Vehicle"
    stateFlag2 = ""
    text10 = {}
    text10.RightLabel = "\226\134\146\226\134\146\226\134\146"
    text11 = true

    -- === HELPER FUNCTION (decompiler name: text12; parameters: localValue12, localValue22, localValue32) ===
    function text12(localValue12, localValue22, localValue32)
      local cmgOperation2, serverEventCall, text13, stringHelper
      if localValue32 then
        cmgOperation2 = workingValue4
        if cmgOperation2 then
          serverEventCall = text9
          cmgOperation2 = dataCollection3
          cmgOperation2 = cmgOperation2[serverEventCall]
          if 0 == cmgOperation2 then
            cmgOperation2 = TriggerServerEvent
            serverEventCall = "aafd1f557c"
            text13 = workingValue4
            stringHelper = text9
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "aafd1f557c".
            cmgOperation2(serverEventCall, text13, stringHelper)
          else
            cmgOperation2 = tCMG
            cmgOperation2 = cmgOperation2.notify
            serverEventCall = "~r~Cannot apply this plate onto a vehicle, it is already in use!"
            -- Beginner: Show a notification to the player.
            cmgOperation2(serverEventCall)
          end
          cmgOperation2 = nil
          workingValue4 = cmgOperation2
        end
      end
    end
    text16 = RMenu
    workingValue7 = text16
    text16 = text16.Get
    text18 = "vehicle_list"
    text20 = "dvla"
    text16, workingValue7, text18, text20 = text16(workingValue7, text18, text20)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(workingValue3, stateFlag2, text10, text11, text12, text16, workingValue7, text18, text20)
    workingValue3 = text9
    rageUiOperation = dataCollection3
    rageUiOperation = rageUiOperation[workingValue3]
    if 0 == rageUiOperation then
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.ButtonWithStyle
      workingValue3 = "Sell to Player"
      stateFlag2 = ""
      text10 = {}
      text10.RightLabel = "\226\134\146\226\134\146\226\134\146"
      text11 = true

      -- === HELPER FUNCTION (decompiler name: text12; parameters: localValue12, localValue22, localValue32) ===
      function text12(localValue12, localValue22, localValue32)
        local cmgOperation2, serverEventCall, text13
        if localValue32 then
          cmgOperation2 = TriggerServerEvent
          serverEventCall = "20eaf734bb"
          text13 = text9
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "20eaf734bb".
          cmgOperation2(serverEventCall, text13)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation(workingValue3, stateFlag2, text10, text11, text12)
    else
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.Separator
      workingValue3 = "~r~Cannot sell this plate, it is in use."
      rageUiOperation(workingValue3)
    end
  end

  -- === HELPER FUNCTION (decompiler name: text15; parameters: none) ===
  function text15()
    local rageUiOperation, workingValue3
  end
  localValue1(localValue2, localValue3, stateFlag3, stateFlag4, cmgOperation3, text15)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  stateFlag3 = "vehicle_list"
  stateFlag4 = "dvla"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, stateFlag3, stateFlag4)
  localValue3 = true
  stateFlag3 = true
  stateFlag4 = true

  -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
  function cmgOperation3()
    local rageUiOperation, workingValue3, stateFlag2, text10, text11, text12, text16, workingValue7, text18, text20, dataCollection, stateFlag, workingValue, workingValue2, text4, text6, text7
    rageUiOperation = pairs
    workingValue3 = CMG
    workingValue3 = workingValue3.getVehicleInfoLookup
    workingValue3, stateFlag2, text10, text11, text12, text16, workingValue7, text18, text20, dataCollection, stateFlag, workingValue, workingValue2, text4, text6, text7 = workingValue3()
    rageUiOperation, workingValue3, stateFlag2, text10 = rageUiOperation(workingValue3, stateFlag2, text10, text11, text12, text16, workingValue7, text18, text20, dataCollection, stateFlag, workingValue, workingValue2, text4, text6, text7)
    for text11, text12 in rageUiOperation, workingValue3, stateFlag2, text10 do
      text16 = workingValue5
      workingValue7 = text11
      text16 = text16(workingValue7)
      if not text16 then
        text16 = "N/A"
      end
      workingValue7 = RageUI
      workingValue7 = workingValue7.ButtonWithStyle
      text18 = text12.name
      text20 = "Current plate: "
      dataCollection = text16
      text20 = text20 .. dataCollection
      dataCollection = {}
      dataCollection.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag = true

      -- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue12, localValue22, localValue32) ===
      function workingValue(localValue12, localValue22, localValue32)
        local cmgOperation2
        if localValue32 then
          cmgOperation2 = text11
          workingValue4 = cmgOperation2
        end
      end
      workingValue2 = RMenu
      text4 = workingValue2
      workingValue2 = workingValue2.Get
      text6 = "individual_plate"
      text7 = "dvla"
      workingValue2, text4, text6, text7 = workingValue2(text4, text6, text7)
      -- Beginner: Draw a selectable RageUI menu button.
      workingValue7(text18, text20, dataCollection, stateFlag, workingValue, workingValue2, text4, text6, text7)
    end
  end

  -- === HELPER FUNCTION (decompiler name: text15; parameters: none) ===
  function text15()
    local rageUiOperation, workingValue3
  end
  localValue1(localValue2, localValue3, stateFlag3, stateFlag4, cmgOperation3, text15)
end
text14(text17, rageUiOperation5, text19, text)
text14 = RegisterNetEvent
text17 = "a4a422640d"
-- Beginner: this function handles network event "a4a422640d".

-- === HELPER FUNCTION (decompiler name: rageUiOperation5; parameters: localValue1, localValue2, localValue3) ===
function rageUiOperation5(localValue1, localValue2, localValue3)
  local stateFlag3
  stateFlag3 = dataCollection3
  stateFlag3[localValue1] = localValue3
  stateFlag3 = dataCollection3
  stateFlag3[localValue2] = 0
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a4a422640d".
text14(text17, rageUiOperation5)
text14 = RegisterNetEvent
text17 = "724b8c37e4"
-- Beginner: this function handles network event "724b8c37e4".

-- === HELPER FUNCTION (decompiler name: rageUiOperation5; parameters: localValue1) ===
function rageUiOperation5(localValue1)
  local localValue2
  localValue2 = dataCollection3
  localValue2[localValue1] = 0
end
text14(text17, rageUiOperation5)
text14 = RegisterNetEvent
text17 = "88371b8fc9"
-- Beginner: this function handles network event "88371b8fc9".

-- === HELPER FUNCTION (decompiler name: rageUiOperation5; parameters: localValue1) ===
function rageUiOperation5(localValue1)
  local localValue2
  localValue2 = dataCollection3
  localValue2[localValue1] = nil
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "88371b8fc9".
text14(text17, rageUiOperation5)
