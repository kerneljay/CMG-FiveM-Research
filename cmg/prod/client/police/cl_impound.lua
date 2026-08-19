--[[
    LEVEL 1 BEGINNER GUIDE — Impound
    =====================================

    File: cmg/prod/client/police/cl_impound.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Impound feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 40
      * Background threads: 0
      * Always-running loops: 2
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
local cmgOperation, dataCollection3, workingValue7, dataCollection4, number10, backgroundThread, text9, text10, rageUiOperation4, text11, text, rageUiOperation, rageUiOperation2, text2, text3
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection3 = "cfg/cfg_impound"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection3)
dataCollection3 = {}
dataCollection3.owner_id = 0
dataCollection3.owner_name = ""
dataCollection3.vehicle = ""
dataCollection3.vehicle_name = ""
workingValue7 = nil
dataCollection4 = {}
number10 = 786469
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag24, workingValue13, cmgOperation2, dataCollection2
  localValue1 = CMG
  localValue1 = localValue1.createDynamicPed
  localValue2 = cmgOperation.ped
  localValue2 = localValue2.modelHash
  localValue3 = cmgOperation.ped
  localValue3 = localValue3.position
  localValue4 = 215.0
  localValue5 = true
  localValue6 = cmgOperation.ped
  localValue6 = localValue6.animDict
  localValue7 = cmgOperation.ped
  localValue7 = localValue7.animName
  localValue8 = 30
  stateFlag24 = false

  -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
  function workingValue13()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag24, workingValue13)
  localValue1 = CMG
  localValue1 = localValue1.createDynamicPed
  localValue2 = cmgOperation.paletoPed
  localValue2 = localValue2.modelHash
  localValue3 = cmgOperation.paletoPed
  localValue3 = localValue3.position
  localValue4 = 315.0
  localValue5 = true
  localValue6 = cmgOperation.paletoPed
  localValue6 = localValue6.animDict
  localValue7 = cmgOperation.paletoPed
  localValue7 = localValue7.animName
  localValue8 = 30
  stateFlag24 = false

  -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
  function workingValue13()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag24, workingValue13)
  localValue1 = tCMG
  localValue1 = localValue1.addBlip
  localValue2 = cmgOperation.ped
  localValue2 = localValue2.position
  localValue2 = localValue2.x
  localValue3 = cmgOperation.ped
  localValue3 = localValue3.position
  localValue3 = localValue3.y
  localValue4 = cmgOperation.ped
  localValue4 = localValue4.position
  localValue4 = localValue4.z
  localValue5 = 357
  localValue6 = 81
  localValue7 = "Vehicle Impound"
  localValue8 = 0.8
  stateFlag24 = false
  -- Beginner: Create a minimap blip.
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag24)
  localValue1 = tCMG
  localValue1 = localValue1.addBlip
  localValue2 = cmgOperation.paletoPed
  localValue2 = localValue2.position
  localValue2 = localValue2.x
  localValue3 = cmgOperation.paletoPed
  localValue3 = localValue3.position
  localValue3 = localValue3.y
  localValue4 = cmgOperation.paletoPed
  localValue4 = localValue4.position
  localValue4 = localValue4.z
  localValue5 = 357
  localValue6 = 81
  localValue7 = "Vehicle Impound"
  localValue8 = 0.8
  stateFlag24 = false
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag24)
  localValue1 = Wait
  localValue2 = 2000
  localValue1(localValue2)

  -- === HELPER FUNCTION: localValue1(localValue12) ===
  function localValue1(localValue12)
    local localValue22, workingValue8, stateFlag18, rageUiOperation3, text7
    localValue22 = localValue12.type
    workingValue7 = localValue22
    localValue22 = RageUI
    localValue22 = localValue22.Visible
    workingValue8 = RMenu
    stateFlag18 = workingValue8
    workingValue8 = workingValue8.Get
    rageUiOperation3 = "cmgimpound"
    text7 = "main"
    -- Beginner: result below is menu.
    workingValue8 = workingValue8(stateFlag18, rageUiOperation3, text7)
    stateFlag18 = true
    localValue22(workingValue8, stateFlag18)
  end

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, localValue22
    localValue12 = RageUI
    localValue12 = localValue12.CloseAll
    localValue12()
  end

  -- === HELPER FUNCTION: localValue3() ===
  function localValue3()
    local localValue12, localValue22
  end
  localValue4 = CMG
  localValue4 = localValue4.createArea
  localValue5 = "vehicle_impound"
  localValue6 = cmgOperation.ped
  localValue6 = localValue6.position
  localValue7 = 3.0
  localValue8 = 6
  stateFlag24 = localValue1
  workingValue13 = localValue2
  cmgOperation2 = localValue3
  dataCollection2 = {}
  dataCollection2.type = "city"
  -- Beginner: Create an interaction area around a world position.
  localValue4(localValue5, localValue6, localValue7, localValue8, stateFlag24, workingValue13, cmgOperation2, dataCollection2)
  localValue4 = CMG
  localValue4 = localValue4.createArea
  localValue5 = "vehicle_paleto_impound"
  localValue6 = cmgOperation.paletoPed
  localValue6 = localValue6.position
  localValue7 = 3.0
  localValue8 = 6
  stateFlag24 = localValue1
  workingValue13 = localValue2
  cmgOperation2 = localValue3
  dataCollection2 = {}
  dataCollection2.type = "paleto"
  localValue4(localValue5, localValue6, localValue7, localValue8, stateFlag24, workingValue13, cmgOperation2, dataCollection2)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(text9)
backgroundThread = RMenu
backgroundThread = backgroundThread.Add
text9 = "cmgimpound"
text10 = "reasons"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateMenu
text11 = ""
text = "~b~Impounding Vehicle..."
rageUiOperation = CMG
rageUiOperation = rageUiOperation.getRageUIMenuWidth
rageUiOperation = rageUiOperation()
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuHeight
rageUiOperation2 = rageUiOperation2()
text2 = "cmg_jobselectorui"
text3 = "metpd"
rageUiOperation4, text11, text, rageUiOperation, rageUiOperation2, text2, text3 = rageUiOperation4(text11, text, rageUiOperation, rageUiOperation2, text2, text3)
backgroundThread(text9, text10, rageUiOperation4, text11, text, rageUiOperation, rageUiOperation2, text2, text3)
backgroundThread = RMenu
backgroundThread = backgroundThread.Add
text9 = "cmgimpound"
text10 = "main"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateMenu
text11 = ""
text = "~b~Your Impounded Vehicles"
rageUiOperation = CMG
rageUiOperation = rageUiOperation.getRageUIMenuWidth
rageUiOperation = rageUiOperation()
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuHeight
rageUiOperation2 = rageUiOperation2()
text2 = "cmg_jobselectorui"
text3 = "metpd"
rageUiOperation4, text11, text, rageUiOperation, rageUiOperation2, text2, text3 = rageUiOperation4(text11, text, rageUiOperation, rageUiOperation2, text2, text3)
backgroundThread(text9, text10, rageUiOperation4, text11, text, rageUiOperation, rageUiOperation2, text2, text3)
backgroundThread = RMenu
backgroundThread = backgroundThread.Add
text9 = "cmgimpound"
text10 = "vehicle_information"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text11 = RMenu
text = text11
text11 = text11.Get
rageUiOperation = "cmgimpound"
rageUiOperation2 = "main"
text11, text, rageUiOperation, rageUiOperation2, text2, text3 = text11(text, rageUiOperation, rageUiOperation2)
rageUiOperation4, text11, text, rageUiOperation, rageUiOperation2, text2, text3 = rageUiOperation4(text11, text, rageUiOperation, rageUiOperation2, text2, text3)
backgroundThread(text9, text10, rageUiOperation4, text11, text, rageUiOperation, rageUiOperation2, text2, text3)
backgroundThread = RMenu
backgroundThread = backgroundThread.Add
text9 = "cmgimpound"
text10 = "pay_fine_confirmation"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateSubMenu
text11 = RMenu
text = text11
text11 = text11.Get
rageUiOperation = "cmgimpound"
rageUiOperation2 = "vehicle_information"
text11, text, rageUiOperation, rageUiOperation2, text2, text3 = text11(text, rageUiOperation, rageUiOperation2)
rageUiOperation4, text11, text, rageUiOperation, rageUiOperation2, text2, text3 = rageUiOperation4(text11, text, rageUiOperation, rageUiOperation2, text2, text3)
backgroundThread(text9, text10, rageUiOperation4, text11, text, rageUiOperation, rageUiOperation2, text2, text3)
backgroundThread = RMenu
backgroundThread = backgroundThread.Add
text9 = "cmgimpound"
text10 = "requestvehicle"
rageUiOperation4 = RageUI
rageUiOperation4 = rageUiOperation4.CreateMenu
text11 = ""
text = "~b~Request Impounded Vehicle"
rageUiOperation = CMG
rageUiOperation = rageUiOperation.getRageUIMenuWidth
rageUiOperation = rageUiOperation()
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuHeight
rageUiOperation2 = rageUiOperation2()
text2 = "cmg_jobselectorui"
text3 = "metpd"
rageUiOperation4, text11, text, rageUiOperation, rageUiOperation2, text2, text3 = rageUiOperation4(text11, text, rageUiOperation, rageUiOperation2, text2, text3)
backgroundThread(text9, text10, rageUiOperation4, text11, text, rageUiOperation, rageUiOperation2, text2, text3)
backgroundThread = nil
text9 = {}
text10 = 2
rageUiOperation4 = 4
text11 = 5
text9[1] = text10
text9[2] = rageUiOperation4
text9[3] = text11
text10 = 1

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: none) ===
function rageUiOperation4()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = ipairs
  localValue2 = cmgOperation.reasonsForImpound
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, localValue6 in localValue1, localValue2, localValue3, localValue4 do
    localValue6.checked = false
  end
end
text11 = RageUI
text11 = text11.CreateWhile
text = 1.0
rageUiOperation = RMenu
rageUiOperation2 = rageUiOperation
rageUiOperation = rageUiOperation.Get
text2 = "cmgimpound"
text3 = "main"
-- Beginner: result below is menu.
rageUiOperation = rageUiOperation(rageUiOperation2, text2, text3)
rageUiOperation2 = nil

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7
  localValue1 = RageUI
  localValue1 = localValue1.BackspaceMenuCallback

  -- === HELPER FUNCTION: localValue2() ===
  function localValue2()
    local localValue12, localValue22
    localValue12 = rageUiOperation4
    localValue12()
  end
  localValue1(localValue2)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgimpound"
  localValue5 = "reasons"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, workingValue8, stateFlag18, rageUiOperation3, text7, cmgOperation3, workingValue10, dataCollection5, text12
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "Vehicle: ~b~"
    workingValue8 = dataCollection3.vehicle_name
    stateFlag18 = "~s~ | Owner: ~b~"
    rageUiOperation3 = dataCollection3.owner_name
    localValue22 = localValue22 .. workingValue8 .. stateFlag18 .. rageUiOperation3
    localValue12(localValue22)
    localValue12 = 1
    localValue22 = cmgOperation.reasonsForImpound
    localValue22 = #localValue22
    workingValue8 = 1
    for stateFlag18 = localValue12, localValue22, workingValue8 do
      rageUiOperation3 = RageUI
      rageUiOperation3 = rageUiOperation3.Checkbox
      text7 = cmgOperation.reasonsForImpound
      text7 = text7[stateFlag18]
      text7 = text7.option
      cmgOperation3 = ""
      workingValue10 = cmgOperation.reasonsForImpound
      workingValue10 = workingValue10[stateFlag18]
      workingValue10 = workingValue10.checked
      dataCollection5 = {}
      dataCollection5.Style = 1

      -- === HELPER FUNCTION (decompiler name: text12; parameters: localValue13, localValue23, localValue32, localValue42) ===
      function text12(localValue13, localValue23, localValue32, localValue42)
        local serverEventCall, text8
        if localValue23 then
          serverEventCall = cmgOperation.reasonsForImpound
          text8 = stateFlag18
          serverEventCall = serverEventCall[text8]
          serverEventCall.checked = localValue42
        end
      end
      -- Beginner: Draw a RageUI checkbox.
      rageUiOperation3(text7, cmgOperation3, workingValue10, dataCollection5, text12)
    end
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "~g~Confirm Selection"
    workingValue8 = ""
    stateFlag18 = {}
    stateFlag18.RightLabel = "\226\134\146\226\134\146\226\134\146"
    rageUiOperation3 = true

    -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue23, localValue32) ===
    function text7(localValue13, localValue23, localValue32)
      local localValue42, serverEventCall, text8, workingValue9, workingValue11, workingValue12, workingValue14, tableHelper, workingValue, workingValue3, workingValue5
      if localValue32 then
        localValue42 = {}
        serverEventCall = ipairs
        text8 = cmgOperation.reasonsForImpound
        serverEventCall, text8, workingValue9, workingValue11 = serverEventCall(text8)
        for workingValue12, workingValue14 in serverEventCall, text8, workingValue9, workingValue11 do
          tableHelper = workingValue14.checked
          if tableHelper then
            tableHelper = table
            tableHelper = tableHelper.insert
            workingValue = localValue42
            workingValue3 = workingValue12
            tableHelper(workingValue, workingValue3)
            workingValue14.checked = false
          end
        end
        serverEventCall = TriggerServerEvent
        text8 = "bd4dad4950"
        workingValue9 = dataCollection3.owner_id
        workingValue11 = dataCollection3.owner_name
        workingValue12 = dataCollection3.vehicle
        workingValue14 = dataCollection3.vehicle_name
        tableHelper = localValue42
        workingValue = dataCollection3.vehicle_net_id
        workingValue3 = dataCollection3.uuid
        workingValue5 = dataCollection3.isEmergencyVehicle
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bd4dad4950".
        serverEventCall(text8, workingValue9, workingValue11, workingValue12, workingValue14, tableHelper, workingValue, workingValue3, workingValue5)
        serverEventCall = RageUI
        serverEventCall = serverEventCall.CloseAll
        serverEventCall()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, workingValue8, stateFlag18, rageUiOperation3, text7)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "~r~Cancel"
    workingValue8 = ""
    stateFlag18 = {}
    stateFlag18.RightLabel = "\226\134\146\226\134\146\226\134\146"
    rageUiOperation3 = true

    -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue23, localValue32) ===
    function text7(localValue13, localValue23, localValue32)
      local localValue42
      if localValue32 then
        localValue42 = RageUI
        localValue42 = localValue42.CloseAll
        localValue42()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, workingValue8, stateFlag18, rageUiOperation3, text7)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgimpound"
  localValue5 = "main"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, workingValue8, stateFlag18, rageUiOperation3, text7, cmgOperation3, workingValue10, dataCollection5, text12, dataCollection, stateFlag, workingValue2, workingValue4, workingValue6, text5, text6
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "View your impounded vehicles here."
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "You can pay the ~g~\194\16310,000~s~ fine to release your vehicle."
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "---"
    localValue12(localValue22)
    localValue12 = dataCollection4
    if nil ~= localValue12 then
      localValue12 = dataCollection4
      localValue22 = {}
      if localValue12 ~= localValue22 then
        localValue12 = pairs
        localValue22 = dataCollection4
        localValue12, localValue22, workingValue8, stateFlag18 = localValue12(localValue22)
        for rageUiOperation3, text7 in localValue12, localValue22, workingValue8, stateFlag18 do
          cmgOperation3 = CMG
          cmgOperation3 = cmgOperation3.getVehicleInfoFromUUID
          workingValue10 = rageUiOperation3
          cmgOperation3 = cmgOperation3(workingValue10)
          if cmgOperation3 then
            workingValue10 = RageUI
            workingValue10 = workingValue10.ButtonWithStyle
            dataCollection5 = cmgOperation3.name
            text12 = ""
            dataCollection = {}
            dataCollection.RightLabel = "\226\134\146\226\134\146\226\134\146"
            stateFlag = true

            -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue13, localValue23, localValue32) ===
            function workingValue2(localValue13, localValue23, localValue32)
              local localValue42
              if localValue32 then
                localValue42 = text7
                backgroundThread = localValue42
              end
            end
            workingValue4 = RMenu
            workingValue6 = workingValue4
            workingValue4 = workingValue4.Get
            text5 = "cmgimpound"
            text6 = "vehicle_information"
            workingValue4, workingValue6, text5, text6 = workingValue4(workingValue6, text5, text6)
            -- Beginner: Draw a selectable RageUI menu button.
            workingValue10(dataCollection5, text12, dataCollection, stateFlag, workingValue2, workingValue4, workingValue6, text5, text6)
          end
        end
    end
    else
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "~r~None of your vehicles are currently impounded."
      localValue12(localValue22)
    end
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgimpound"
  localValue5 = "vehicle_information"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, workingValue8, stateFlag18, rageUiOperation3, text7, cmgOperation3, workingValue10, dataCollection5, text12, dataCollection
    localValue12 = backgroundThread
    if 0 ~= localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = CMG
      localValue22 = localValue22.getVehicleInfoFromUUID
      workingValue8 = backgroundThread.uuid
      localValue22 = localValue22(workingValue8)
      localValue22 = localValue22.name
      localValue12(localValue22)
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "This vehicle was impounded by ~b~"
      workingValue8 = backgroundThread.impounded_by_name
      stateFlag18 = "(ID: "
      rageUiOperation3 = backgroundThread.impounder
      text7 = ") ~s~for:"
      localValue22 = localValue22 .. workingValue8 .. stateFlag18 .. rageUiOperation3 .. text7
      localValue12(localValue22)
      localValue12 = json
      localValue12 = localValue12.decode
      localValue22 = backgroundThread.reasons
      localValue12 = localValue12(localValue22)
      if localValue12 then
        localValue22 = ipairs
        workingValue8 = localValue12
        localValue22, workingValue8, stateFlag18, rageUiOperation3 = localValue22(workingValue8)
        for text7 in localValue22, workingValue8, stateFlag18, rageUiOperation3 do
          cmgOperation3 = RageUI
          cmgOperation3 = cmgOperation3.Separator
          workingValue10 = "\194\187 "
          dataCollection5 = cmgOperation.reasonsForImpound
          text12 = localValue12[text7]
          dataCollection5 = dataCollection5[text12]
          dataCollection5 = dataCollection5.option
          workingValue10 = workingValue10 .. dataCollection5
          cmgOperation3(workingValue10)
        end
      end
      localValue22 = RageUI
      localValue22 = localValue22.ButtonWithStyle
      workingValue8 = "~g~Pay Fine"
      stateFlag18 = "Paying the fine will release your vehicle."
      rageUiOperation3 = {}
      rageUiOperation3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      text7 = true

      -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: localValue13, localValue23, localValue32) ===
      function cmgOperation3(localValue13, localValue23, localValue32)
      end
      workingValue10 = RMenu
      dataCollection5 = workingValue10
      workingValue10 = workingValue10.Get
      text12 = "cmgimpound"
      dataCollection = "pay_fine_confirmation"
      workingValue10, dataCollection5, text12, dataCollection = workingValue10(dataCollection5, text12, dataCollection)
      -- Beginner: Draw a selectable RageUI menu button.
      localValue22(workingValue8, stateFlag18, rageUiOperation3, text7, cmgOperation3, workingValue10, dataCollection5, text12, dataCollection)
    end
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgimpound"
  localValue5 = "pay_fine_confirmation"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, workingValue8, stateFlag18, rageUiOperation3, text7, cmgOperation3, workingValue10, dataCollection5, text12
    localValue12 = backgroundThread
    if 0 ~= localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "Would you like to release your vehicle?"
      localValue12(localValue22)
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "This action will cost you ~g~\194\16310,000~s~."
      localValue12(localValue22)
      localValue12 = RageUI
      localValue12 = localValue12.Separator
      localValue22 = "---"
      localValue12(localValue22)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "~g~Pay"
      workingValue8 = "Pay the fine"
      stateFlag18 = {}
      stateFlag18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      rageUiOperation3 = true

      -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue23, localValue32) ===
      function text7(localValue13, localValue23, localValue32)
        local localValue42, serverEventCall, text8, workingValue9
        if localValue32 then
          localValue42 = TriggerServerEvent
          serverEventCall = "8fff197382"
          text8 = backgroundThread.uuid
          workingValue9 = workingValue7
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8fff197382".
          localValue42(serverEventCall, text8, workingValue9)
        end
      end
      cmgOperation3 = RMenu
      workingValue10 = cmgOperation3
      cmgOperation3 = cmgOperation3.Get
      dataCollection5 = "cmgimpound"
      text12 = "main"
      cmgOperation3, workingValue10, dataCollection5, text12 = cmgOperation3(workingValue10, dataCollection5, text12)
      -- Beginner: Draw a selectable RageUI menu button.
      localValue12(localValue22, workingValue8, stateFlag18, rageUiOperation3, text7, cmgOperation3, workingValue10, dataCollection5, text12)
      localValue12 = RageUI
      localValue12 = localValue12.ButtonWithStyle
      localValue22 = "~r~Cancel"
      workingValue8 = "Go back"
      stateFlag18 = {}
      stateFlag18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      rageUiOperation3 = true

      -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue23, localValue32) ===
      function text7(localValue13, localValue23, localValue32)
      end
      cmgOperation3 = RMenu
      workingValue10 = cmgOperation3
      cmgOperation3 = cmgOperation3.Get
      dataCollection5 = "cmgimpound"
      text12 = "main"
      cmgOperation3, workingValue10, dataCollection5, text12 = cmgOperation3(workingValue10, dataCollection5, text12)
      localValue12(localValue22, workingValue8, stateFlag18, rageUiOperation3, text7, cmgOperation3, workingValue10, dataCollection5, text12)
    end
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "cmgimpound"
  localValue5 = "requestvehicle"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION: localValue6() ===
  function localValue6()
    local localValue12, localValue22, workingValue8, stateFlag18, rageUiOperation3, text7, cmgOperation3, workingValue10, dataCollection5
    localValue12 = RageUI
    localValue12 = localValue12.List
    localValue22 = "Minimum Seat Amount"
    workingValue8 = text9
    stateFlag18 = text10
    rageUiOperation3 = "The minimum amount of seats this vehicle should have"
    text7 = {}
    cmgOperation3 = true

    -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue13, localValue23, localValue32, localValue42) ===
    function workingValue10(localValue13, localValue23, localValue32, localValue42)
      text10 = localValue42
    end

    -- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: none) ===
    function dataCollection5()
      local localValue13, localValue23
    end
    -- Beginner: Draw a RageUI list selector.
    localValue12(localValue22, workingValue8, stateFlag18, rageUiOperation3, text7, cmgOperation3, workingValue10, dataCollection5)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "Request Impounded Vehicle"
    workingValue8 = ""
    stateFlag18 = {}
    stateFlag18.RightLabel = "\226\134\146\226\134\146\226\134\146"
    rageUiOperation3 = true

    -- === HELPER FUNCTION (decompiler name: text7; parameters: localValue13, localValue23, localValue32) ===
    function text7(localValue13, localValue23, localValue32)
      local localValue42, serverEventCall, text8, workingValue9
      if localValue32 then
        localValue42 = TriggerServerEvent
        serverEventCall = "007a0c4d08"
        workingValue9 = text10
        text8 = text9
        text8 = text8[workingValue9]
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "007a0c4d08".
        localValue42(serverEventCall, text8)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, workingValue8, stateFlag18, rageUiOperation3, text7)
  end

  -- === HELPER FUNCTION: localValue7() ===
  function localValue7()
    local localValue12, localValue22
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
end
text11(text, rageUiOperation, rageUiOperation2, text2)
text11 = RegisterNetEvent
text = "11cbf24793"
-- Beginner: this function handles network event "11cbf24793".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7) ===
function rageUiOperation(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7)
  local localValue8, stateFlag24, workingValue13
  localValue8 = {}
  stateFlag24 = tonumber
  workingValue13 = localValue1
  stateFlag24 = stateFlag24(workingValue13)
  localValue8.owner_id = stateFlag24
  localValue8.owner_name = localValue2
  localValue8.vehicle = localValue4
  localValue8.vehicle_name = localValue3
  localValue8.vehicle_net_id = localValue5
  localValue8.uuid = localValue6
  localValue8.isEmergencyVehicle = localValue7
  dataCollection3 = localValue8
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "11cbf24793".
text11(text, rageUiOperation)
text11 = RegisterNetEvent
text = "e27c143134"
-- Beginner: this function handles network event "e27c143134".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2
  dataCollection4 = localValue1
end
text11(text, rageUiOperation)
text11 = RegisterNetEvent
text = "f85a25a536"
-- Beginner: this function handles network event "f85a25a536".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8) ===
function rageUiOperation(localValue1, localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8)
  local stateFlag24, workingValue13, cmgOperation2, dataCollection2, number, stateFlag2, text4, stateFlag3, stateFlag4, stateFlag5, stateFlag6, number2, number3, number4, number5, stateFlag7, stateFlag8, createVector3, stateFlag9, stateFlag10, stateFlag11, stateFlag12, number6, stateFlag13, stateFlag14, networkId, networkId2, number7, stateFlag15, stateFlag16, stateFlag17, number8, stateFlag19, stateFlag20, stateFlag21, stateFlag22, number9, stateFlag23
  stateFlag24 = CMG
  stateFlag24 = stateFlag24.getObjectId
  workingValue13 = localValue1
  cmgOperation2 = "CMG:impoundSuccess (1)"
  stateFlag24 = stateFlag24(workingValue13, cmgOperation2)
  workingValue13 = GetEntityCoords
  cmgOperation2 = stateFlag24
  dataCollection2 = false
  -- Beginner: result below is entityCoords.
  workingValue13 = workingValue13(cmgOperation2, dataCollection2)
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.requestEntitySpawn
  dataCollection2 = "impound_sticker_object"
  number = workingValue13
  cmgOperation2(dataCollection2, number)
  cmgOperation2 = CreateObject
  dataCollection2 = 1289584093
  number = workingValue13.x
  stateFlag2 = workingValue13.y
  text4 = workingValue13.z
  stateFlag3 = true
  stateFlag4 = true
  stateFlag5 = true
  -- Beginner: result below is objectEntity.
  cmgOperation2 = cmgOperation2(dataCollection2, number, stateFlag2, text4, stateFlag3, stateFlag4, stateFlag5)
  dataCollection2 = CMG
  dataCollection2 = dataCollection2.loadModel
  number = -1099035225
  -- Beginner: Request/load a GTA model before spawning or applying it.
  dataCollection2(number)
  dataCollection2 = FreezeEntityPosition
  number = stateFlag24
  stateFlag2 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  dataCollection2(number, stateFlag2)
  dataCollection2 = CMG
  dataCollection2 = dataCollection2.requestEntitySpawn
  number = "impound_clamp_object"
  stateFlag2 = workingValue13
  dataCollection2(number, stateFlag2)
  dataCollection2 = CreateObject
  number = -1099035225
  stateFlag2 = workingValue13.x
  text4 = workingValue13.y
  stateFlag3 = workingValue13.z
  stateFlag4 = true
  stateFlag5 = true
  stateFlag6 = true
  -- Beginner: result below is objectEntity.
  dataCollection2 = dataCollection2(number, stateFlag2, text4, stateFlag3, stateFlag4, stateFlag5, stateFlag6)
  number = SetModelAsNoLongerNeeded
  stateFlag2 = -1099035225
  number(stateFlag2)
  number = GetEntityBoneIndexByName
  stateFlag2 = stateFlag24
  text4 = "wheel_lf"
  number = number(stateFlag2, text4)
  stateFlag2 = SetEntityHeading
  text4 = dataCollection2
  stateFlag3 = 0.0
  -- Beginner: Change the direction an entity is facing.
  stateFlag2(text4, stateFlag3)
  stateFlag2 = AttachEntityToEntity
  text4 = dataCollection2
  stateFlag3 = stateFlag24
  stateFlag4 = number
  stateFlag5 = -0.1
  stateFlag6 = 0.15
  number2 = -0.3
  number3 = 180.0
  number4 = 200.0
  number5 = 90.0
  stateFlag7 = true
  stateFlag8 = true
  createVector3 = false
  stateFlag9 = false
  stateFlag10 = 2
  stateFlag11 = true
  -- Beginner: Attach one entity to another entity.
  stateFlag2(text4, stateFlag3, stateFlag4, stateFlag5, stateFlag6, number2, number3, number4, number5, stateFlag7, stateFlag8, createVector3, stateFlag9, stateFlag10, stateFlag11)
  stateFlag2 = FreezeEntityPosition
  text4 = dataCollection2
  stateFlag3 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  stateFlag2(text4, stateFlag3)
  stateFlag2 = IsVehicleWindowIntact
  text4 = stateFlag24
  stateFlag3 = 0
  stateFlag2 = stateFlag2(text4, stateFlag3)
  if stateFlag2 then
    stateFlag2 = GetEntityBoneIndexByName
    text4 = stateFlag24
    stateFlag3 = "windscreen"
    stateFlag2 = stateFlag2(text4, stateFlag3)
    text4 = FreezeEntityPosition
    stateFlag3 = cmgOperation2
    stateFlag4 = true
    text4(stateFlag3, stateFlag4)
    text4 = AttachEntityToEntity
    stateFlag3 = cmgOperation2
    stateFlag4 = stateFlag24
    stateFlag5 = stateFlag2
    stateFlag6 = 0.1
    number2 = -2.7
    number3 = -1.65
    number4 = -32.0
    number5 = 5.0
    stateFlag7 = 180.0
    stateFlag8 = true
    createVector3 = true
    stateFlag9 = false
    stateFlag10 = true
    stateFlag11 = 0
    stateFlag12 = true
    -- Beginner: Attach one entity to another entity.
    text4(stateFlag3, stateFlag4, stateFlag5, stateFlag6, number2, number3, number4, number5, stateFlag7, stateFlag8, createVector3, stateFlag9, stateFlag10, stateFlag11, stateFlag12)
  end
  stateFlag2 = CMG
  stateFlag2 = stateFlag2.notifyPicture
  text4 = "polnotification"
  stateFlag3 = "notification"
  stateFlag4 = "You have siezed a ~b~"
  stateFlag5 = localValue2
  stateFlag6 = "~s~ owned by ~b~"
  number2 = localValue3
  number3 = [[
~s~.

A tow truck will pick up the vehicle shortly and take it to the impound.]]
  stateFlag4 = stateFlag4 .. stateFlag5 .. stateFlag6 .. number2 .. number3
  stateFlag5 = "Metropolitan Police"
  stateFlag6 = "Impound"
  number2 = nil
  number3 = nil
  stateFlag2(text4, stateFlag3, stateFlag4, stateFlag5, stateFlag6, number2, number3)
  stateFlag2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  stateFlag2 = stateFlag2()
  text4 = GetEntityCoords
  stateFlag3 = stateFlag2
  -- Beginner: result below is entityCoords.
  text4 = text4(stateFlag3)
  stateFlag3 = GetClosestVehicleNodeWithHeading
  stateFlag4 = text4.x
  stateFlag5 = text4.y
  stateFlag6 = text4.z
  number2 = nil
  number3 = 8
  number4 = 8
  number5 = 8
  stateFlag7 = 8
  stateFlag3, stateFlag4, stateFlag5 = stateFlag3(stateFlag4, stateFlag5, stateFlag6, number2, number3, number4, number5, stateFlag7)
  stateFlag6 = GetPointOnRoadSide
  number2 = text4.x
  number3 = text4.y
  number4 = text4.z
  number5 = 0.0
  stateFlag6, number2, number3 = stateFlag6(number2, number3, number4, number5)
  number4 = GetNthClosestVehicleNode
  number5 = text4.x
  stateFlag7 = text4.y
  stateFlag8 = text4.z
  createVector3 = 15
  number4, number5 = number4(number5, stateFlag7, stateFlag8, createVector3)
  stateFlag7 = nil
  stateFlag8 = nil
  createVector3 = vector3
  stateFlag9 = 0
  stateFlag10 = 0
  stateFlag11 = 0
  createVector3 = createVector3(stateFlag9, stateFlag10, stateFlag11)
  if number5 ~= createVector3 then
    createVector3 = vector3
    stateFlag9 = 0
    stateFlag10 = 0
    stateFlag11 = 0
    createVector3 = createVector3(stateFlag9, stateFlag10, stateFlag11)
    if number2 ~= createVector3 then
      createVector3 = CMG
      createVector3 = createVector3.loadModel
      stateFlag9 = 1353720154
      -- Beginner: Request/load a GTA model before spawning or applying it.
      createVector3(stateFlag9)
      createVector3 = CMG
      createVector3 = createVector3.loadModel
      stateFlag9 = -1760377969
      createVector3(stateFlag9)
      createVector3 = CMG
      createVector3 = createVector3.requestEntitySpawn
      stateFlag9 = "impound_flatbed"
      stateFlag10 = number5
      createVector3(stateFlag9, stateFlag10)
      createVector3 = CMG
      createVector3 = createVector3.spawnVehicle
      stateFlag9 = 1353720154
      stateFlag10 = number5.x
      stateFlag11 = number5.y
      stateFlag12 = number5.z
      number6 = stateFlag5
      stateFlag13 = false
      stateFlag14 = true
      networkId = true
      createVector3 = createVector3(stateFlag9, stateFlag10, stateFlag11, stateFlag12, number6, stateFlag13, stateFlag14, networkId)
      stateFlag7 = createVector3
      createVector3 = NetworkGetNetworkIdFromEntity
      stateFlag9 = stateFlag7
      createVector3 = createVector3(stateFlag9)
      stateFlag9 = SetVehicleDoorsLocked
      stateFlag10 = stateFlag7
      stateFlag11 = 2
      stateFlag9(stateFlag10, stateFlag11)
      stateFlag9 = SetNetworkIdCanMigrate
      stateFlag10 = createVector3
      stateFlag11 = false
      stateFlag9(stateFlag10, stateFlag11)
      stateFlag9 = SetModelAsNoLongerNeeded
      stateFlag10 = 1353720154
      stateFlag9(stateFlag10)
      stateFlag9 = AddBlipForEntity
      stateFlag10 = stateFlag7
      -- Beginner: result below is blipHandle.
      stateFlag9 = stateFlag9(stateFlag10)
      stateFlag10 = SetBlipSprite
      stateFlag11 = stateFlag9
      stateFlag12 = 68
      stateFlag10(stateFlag11, stateFlag12)
      stateFlag10 = SetBlipDisplay
      stateFlag11 = stateFlag9
      stateFlag12 = 4
      stateFlag10(stateFlag11, stateFlag12)
      stateFlag10 = SetBlipScale
      stateFlag11 = stateFlag9
      stateFlag12 = 1.0
      stateFlag10(stateFlag11, stateFlag12)
      stateFlag10 = SetBlipColour
      stateFlag11 = stateFlag9
      stateFlag12 = 5
      stateFlag10(stateFlag11, stateFlag12)
      stateFlag10 = SetBlipAsShortRange
      stateFlag11 = stateFlag9
      stateFlag12 = true
      stateFlag10(stateFlag11, stateFlag12)
      stateFlag10 = CMG
      stateFlag10 = stateFlag10.requestEntitySpawn
      stateFlag11 = "impound_ped"
      stateFlag12 = number5
      stateFlag10(stateFlag11, stateFlag12)
      stateFlag10 = CreatePedInsideVehicle
      stateFlag11 = stateFlag7
      stateFlag12 = 1
      number6 = -1760377969
      stateFlag13 = -1
      stateFlag14 = true
      networkId = false
      stateFlag10 = stateFlag10(stateFlag11, stateFlag12, number6, stateFlag13, stateFlag14, networkId)
      stateFlag8 = stateFlag10
      stateFlag10 = NetworkGetNetworkIdFromEntity
      stateFlag11 = stateFlag8
      stateFlag10 = stateFlag10(stateFlag11)
      stateFlag11 = TaskVehicleDriveToCoord
      stateFlag12 = stateFlag8
      number6 = stateFlag7
      stateFlag13 = number2.x
      stateFlag14 = number2.y
      networkId = number2.z
      networkId2 = 15.0
      number7 = 1.0
      stateFlag15 = 1353720154
      stateFlag16 = number10
      stateFlag17 = 5.0
      number8 = 0.0
      stateFlag11(stateFlag12, number6, stateFlag13, stateFlag14, networkId, networkId2, number7, stateFlag15, stateFlag16, stateFlag17, number8)
      stateFlag11 = SetModelAsNoLongerNeeded
      stateFlag12 = -1760377969
      stateFlag11(stateFlag12)
      stateFlag11 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      stateFlag11 = stateFlag11()
      stateFlag12 = GetEntityCoords
      number6 = stateFlag24
      -- Beginner: result below is entityCoords.
      stateFlag12 = stateFlag12(number6)
      number6 = GetEntityCoords
      stateFlag13 = stateFlag7
      -- Beginner: result below is entityCoords.
      number6 = number6(stateFlag13)
      stateFlag12 = stateFlag12 - number6
      stateFlag12 = #stateFlag12
      while stateFlag12 > 15.0 do
        number6 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        number6 = number6()
        number6 = number6 - stateFlag11
        stateFlag13 = 20000
        if not (number6 < stateFlag13) then
          break
        end
        number6 = Wait
        stateFlag13 = 1000
        number6(stateFlag13)
        number6 = GetEntityCoords
        stateFlag13 = stateFlag24
        -- Beginner: result below is entityCoords.
        number6 = number6(stateFlag13)
        stateFlag13 = GetEntityCoords
        stateFlag14 = stateFlag7
        -- Beginner: result below is entityCoords.
        stateFlag13 = stateFlag13(stateFlag14)
        number6 = number6 - stateFlag13
        stateFlag12 = #number6
      end
      number6 = TriggerServerEvent
      stateFlag13 = "8e7fb83d26"
      stateFlag14 = localValue1
      networkId = NetworkGetNetworkIdFromEntity
      networkId2 = dataCollection2
      networkId = networkId(networkId2)
      networkId2 = NetworkGetNetworkIdFromEntity
      number7 = cmgOperation2
      networkId2, number7, stateFlag15, stateFlag16, stateFlag17, number8, stateFlag19, stateFlag20, stateFlag21, stateFlag22, number9, stateFlag23 = networkId2(number7)
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8e7fb83d26".
      number6(stateFlag13, stateFlag14, networkId, networkId2, number7, stateFlag15, stateFlag16, stateFlag17, number8, stateFlag19, stateFlag20, stateFlag21, stateFlag22, number9, stateFlag23)
      number6 = CMG
      number6 = number6.requestEntitySpawn
      stateFlag13 = "impound_vehicle"
      number6(stateFlag13)
      number6 = CMG
      number6 = number6.spawnVehicle
      stateFlag13 = localValue4
      stateFlag14 = localValue7.x
      networkId = localValue7.y
      networkId2 = localValue7.z
      number7 = localValue8
      stateFlag15 = false
      stateFlag16 = true
      stateFlag17 = false
      number6 = number6(stateFlag13, stateFlag14, networkId, networkId2, number7, stateFlag15, stateFlag16, stateFlag17)
      stateFlag24 = number6
      number6 = CMG
      number6 = number6.getNetId
      stateFlag13 = stateFlag24
      stateFlag14 = "CMG:impoundSuccess (2)"
      number6 = number6(stateFlag13, stateFlag14)
      localValue1 = number6
      number6 = SetVehicleDoorsLocked
      stateFlag13 = stateFlag24
      stateFlag14 = 2
      number6(stateFlag13, stateFlag14)
      number6 = SetNetworkIdCanMigrate
      stateFlag13 = localValue1
      stateFlag14 = false
      number6(stateFlag13, stateFlag14)
      number6 = SetVehicleColours
      stateFlag13 = stateFlag24
      stateFlag14 = localValue5
      networkId = localValue6
      number6(stateFlag13, stateFlag14, networkId)
      number6 = AttachEntityToEntity
      stateFlag13 = stateFlag24
      stateFlag14 = stateFlag7
      networkId = 20
      networkId2 = -0.5
      number7 = -5.0
      stateFlag15 = 1.0
      stateFlag16 = 0.0
      stateFlag17 = 0.0
      number8 = 0.0
      stateFlag19 = false
      stateFlag20 = false
      stateFlag21 = false
      stateFlag22 = false
      number9 = 20
      stateFlag23 = true
      -- Beginner: Attach one entity to another entity.
      number6(stateFlag13, stateFlag14, networkId, networkId2, number7, stateFlag15, stateFlag16, stateFlag17, number8, stateFlag19, stateFlag20, stateFlag21, stateFlag22, number9, stateFlag23)
      number6 = TriggerServerEvent
      stateFlag13 = "cd4e53e76b"
      stateFlag14 = localValue1
      networkId = createVector3
      networkId2 = stateFlag10
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cd4e53e76b".
      number6(stateFlag13, stateFlag14, networkId, networkId2)
      number6 = TaskVehicleDriveToCoord
      stateFlag13 = stateFlag8
      stateFlag14 = stateFlag7
      networkId = cmgOperation.driveToPosition
      networkId = networkId.x
      networkId2 = cmgOperation.driveToPosition
      networkId2 = networkId2.y
      number7 = cmgOperation.driveToPosition
      number7 = number7.z
      stateFlag15 = 15.0
      stateFlag16 = 1.0
      stateFlag17 = 1353720154
      number8 = number10
      stateFlag19 = 5.0
      stateFlag20 = 0.0
      number6(stateFlag13, stateFlag14, networkId, networkId2, number7, stateFlag15, stateFlag16, stateFlag17, number8, stateFlag19, stateFlag20)
      number6 = SetEntityInvincible
      stateFlag13 = stateFlag24
      stateFlag14 = true
      number6(stateFlag13, stateFlag14)
      number6 = SetEntityInvincible
      stateFlag13 = stateFlag7
      stateFlag14 = true
      number6(stateFlag13, stateFlag14)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f85a25a536".
text11(text, rageUiOperation)
text11 = RegisterNetEvent
text = "3cfe51923c"
-- Beginner: this function handles network event "3cfe51923c".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1, localValue2) ===
function rageUiOperation(localValue1, localValue2)
  local localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag24, workingValue13, cmgOperation2, dataCollection2, number, stateFlag2, text4, stateFlag3, stateFlag4, stateFlag5, stateFlag6, number2
  localValue3 = CMG
  localValue3 = localValue3.getObjectId
  localValue4 = localValue1
  localValue5 = "CMG:attachVehToTowCl (vehicle)"
  localValue3 = localValue3(localValue4, localValue5)
  localValue4 = CMG
  localValue4 = localValue4.getObjectId
  localValue5 = localValue2
  localValue6 = "CMG:attachVehToTowCl (towTruck)"
  localValue4 = localValue4(localValue5, localValue6)
  localValue5 = AttachEntityToEntity
  localValue6 = localValue3
  localValue7 = localValue4
  localValue8 = 20
  stateFlag24 = -0.5
  workingValue13 = -5.0
  cmgOperation2 = 1.0
  dataCollection2 = 0.0
  number = 0.0
  stateFlag2 = 0.0
  text4 = false
  stateFlag3 = false
  stateFlag4 = false
  stateFlag5 = false
  stateFlag6 = 20
  number2 = true
  -- Beginner: Attach one entity to another entity.
  localValue5(localValue6, localValue7, localValue8, stateFlag24, workingValue13, cmgOperation2, dataCollection2, number, stateFlag2, text4, stateFlag3, stateFlag4, stateFlag5, stateFlag6, number2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3cfe51923c".
text11(text, rageUiOperation)

-- === HELPER FUNCTION (decompiler name: text11; parameters: localValue1) ===
function text11(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8
  localValue2 = -1
  localValue3 = GetVehicleMaxNumberOfPassengers
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  localValue3 = localValue3 - 1
  localValue4 = 1
  for localValue5 = localValue2, localValue3, localValue4 do
    localValue6 = IsVehicleSeatFree
    localValue7 = localValue1
    localValue8 = localValue5
    localValue6 = localValue6(localValue7, localValue8)
    if not localValue6 then
      localValue6 = true
      return localValue6
    end
  end
  localValue2 = false
  return localValue2
end
text = CMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function rageUiOperation(localValue1, localValue2, localValue3, localValue4, localValue5)
  local localValue6, localValue7, localValue8, stateFlag24, workingValue13, cmgOperation2, dataCollection2, number, stateFlag2, text4, stateFlag3, stateFlag4
  localValue6 = CMG
  localValue6 = localValue6.getVehicleIdFromModel
  localValue7 = localValue2
  localValue6 = localValue6(localValue7)
  localValue7 = text11
  localValue8 = localValue4
  localValue7 = localValue7(localValue8)
  if localValue7 then
    localValue7 = CMG
    localValue7 = localValue7.notifyPicture
    localValue8 = "polnotification"
    stateFlag24 = "notification"
    workingValue13 = "The vehicle cannot be impounded with a person inside."
    cmgOperation2 = "Metropolitan Police"
    dataCollection2 = "Impound"
    number = nil
    stateFlag2 = nil
    localValue7(localValue8, stateFlag24, workingValue13, cmgOperation2, dataCollection2, number, stateFlag2)
    return
  end
  localValue7 = tCMG
  localValue7 = localValue7.getVehicleInfos
  localValue8 = localValue4
  localValue7 = localValue7(localValue8)
  if not localValue7 then
    localValue7 = 0
  end
  localValue8 = GetVehicleClass
  stateFlag24 = localValue4
  localValue8 = localValue8(stateFlag24)
  stateFlag24 = 18 == localValue8
  workingValue13 = cmgOperation.disallowedVehicleClasses
  workingValue13 = workingValue13[localValue8]
  if workingValue13 then
    workingValue13 = CMG
    workingValue13 = workingValue13.notifyPicture
    cmgOperation2 = "polnotification"
    dataCollection2 = "notification"
    number = "That vehicle is too large to be impounded."
    stateFlag2 = "Metropolitan Police"
    text4 = "Impound"
    stateFlag3 = nil
    stateFlag4 = nil
    workingValue13(cmgOperation2, dataCollection2, number, stateFlag2, text4, stateFlag3, stateFlag4)
  else
    workingValue13 = TriggerServerEvent
    cmgOperation2 = "0a61d49b9d"
    dataCollection2 = localValue1
    number = localValue6
    stateFlag2 = localValue3
    text4 = localValue5
    stateFlag3 = stateFlag24
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0a61d49b9d".
    workingValue13(cmgOperation2, dataCollection2, number, stateFlag2, text4, stateFlag3)
    workingValue13 = RageUI
    workingValue13 = workingValue13.Visible
    cmgOperation2 = RMenu
    dataCollection2 = cmgOperation2
    cmgOperation2 = cmgOperation2.Get
    number = "cmgimpound"
    stateFlag2 = "reasons"
    -- Beginner: result below is menu.
    cmgOperation2 = cmgOperation2(dataCollection2, number, stateFlag2)
    dataCollection2 = true
    workingValue13(cmgOperation2, dataCollection2)
  end
end
text.impoundVehicleOptions = rageUiOperation
text = RegisterCommand
rageUiOperation = "impound"
-- Beginner: this function is the command handler for "impound".

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = CMG
  localValue1 = localValue1.hasClientPermission
  localValue2 = "police.onduty.permission"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.Visible
    localValue2 = RMenu
    localValue3 = localValue2
    localValue2 = localValue2.Get
    localValue4 = "cmgimpound"
    localValue5 = "requestvehicle"
    -- Beginner: result below is menu.
    localValue2 = localValue2(localValue3, localValue4, localValue5)
    localValue3 = true
    localValue1(localValue2, localValue3)
  end
end
text2 = false
-- Beginner: Register a chat/console command. Event/command: "impound".
text(rageUiOperation, rageUiOperation2, text2)
text = tCMG

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag24, workingValue13
  localValue2 = {}
  localValue3 = pairs
  localValue4 = localValue1
  localValue3, localValue4, localValue5, localValue6 = localValue3(localValue4)
  for localValue7, localValue8 in localValue3, localValue4, localValue5, localValue6 do
    stateFlag24 = GetVehicleModelNumberOfSeats
    workingValue13 = localValue8
    stateFlag24 = stateFlag24(workingValue13)
    localValue2[localValue8] = stateFlag24
  end
  return localValue2
end
text.getVehicleSeatAmountsFromList = rageUiOperation
text = RegisterNetEvent
rageUiOperation = "ddf87b5c68"
-- Beginner: this function handles network event "ddf87b5c68".

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1) ===
function rageUiOperation2(localValue1)
  local localValue2, localValue3, localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag24, workingValue13, cmgOperation2, dataCollection2, number, stateFlag2, text4, stateFlag3, stateFlag4, stateFlag5, stateFlag6, number2, number3, number4, number5, stateFlag7, stateFlag8, createVector3, stateFlag9, stateFlag10, stateFlag11
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = GetClosestVehicleNodeWithHeading
  localValue4 = localValue2.x
  localValue5 = localValue2.y
  localValue6 = localValue2.z
  localValue7 = nil
  localValue8 = 8
  stateFlag24 = 8
  workingValue13 = 8
  cmgOperation2 = 8
  localValue3, localValue4, localValue5 = localValue3(localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag24, workingValue13, cmgOperation2)
  localValue6 = GetPointOnRoadSide
  localValue7 = localValue2.x
  localValue8 = localValue2.y
  stateFlag24 = localValue2.z
  workingValue13 = 0.0
  localValue6, localValue7 = localValue6(localValue7, localValue8, stateFlag24, workingValue13)
  localValue8 = GetNthClosestVehicleNode
  stateFlag24 = localValue2.x
  workingValue13 = localValue2.y
  cmgOperation2 = localValue2.z
  dataCollection2 = 15
  localValue8, stateFlag24 = localValue8(stateFlag24, workingValue13, cmgOperation2, dataCollection2)
  workingValue13 = vector3
  cmgOperation2 = 0.0
  dataCollection2 = 0.0
  number = 0.0
  workingValue13 = workingValue13(cmgOperation2, dataCollection2, number)
  if stateFlag24 ~= workingValue13 then
    workingValue13 = vector3
    cmgOperation2 = 0.0
    dataCollection2 = 0.0
    number = 0.0
    workingValue13 = workingValue13(cmgOperation2, dataCollection2, number)
    if localValue7 ~= workingValue13 then
      goto continueAtStep41
    end
  end
  return
  ::continueAtStep41::
  workingValue13 = CMG
  workingValue13 = workingValue13.loadModel
  cmgOperation2 = 1353720154
  -- Beginner: Request/load a GTA model before spawning or applying it.
  workingValue13(cmgOperation2)
  workingValue13 = CMG
  workingValue13 = workingValue13.requestEntitySpawn
  cmgOperation2 = "impound_request_flatbed"
  dataCollection2 = stateFlag24
  workingValue13(cmgOperation2, dataCollection2)
  workingValue13 = CMG
  workingValue13 = workingValue13.spawnVehicle
  cmgOperation2 = 1353720154
  dataCollection2 = stateFlag24.x
  number = stateFlag24.y
  stateFlag2 = stateFlag24.z
  text4 = localValue5
  stateFlag3 = false
  stateFlag4 = true
  stateFlag5 = true
  workingValue13 = workingValue13(cmgOperation2, dataCollection2, number, stateFlag2, text4, stateFlag3, stateFlag4, stateFlag5)
  cmgOperation2 = SetModelAsNoLongerNeeded
  dataCollection2 = 1353720154
  cmgOperation2(dataCollection2)
  cmgOperation2 = SetVehicleDoorsLocked
  dataCollection2 = workingValue13
  number = 2
  cmgOperation2(dataCollection2, number)
  cmgOperation2 = SetEntityInvincible
  dataCollection2 = workingValue13
  number = true
  cmgOperation2(dataCollection2, number)
  cmgOperation2 = AddBlipForEntity
  dataCollection2 = workingValue13
  -- Beginner: result below is blipHandle.
  cmgOperation2 = cmgOperation2(dataCollection2)
  dataCollection2 = SetBlipSprite
  number = cmgOperation2
  stateFlag2 = 68
  dataCollection2(number, stateFlag2)
  dataCollection2 = SetBlipDisplay
  number = cmgOperation2
  stateFlag2 = 4
  dataCollection2(number, stateFlag2)
  dataCollection2 = SetBlipScale
  number = cmgOperation2
  stateFlag2 = 1.0
  dataCollection2(number, stateFlag2)
  dataCollection2 = SetBlipColour
  number = cmgOperation2
  stateFlag2 = 5
  dataCollection2(number, stateFlag2)
  dataCollection2 = SetBlipAsShortRange
  number = cmgOperation2
  stateFlag2 = true
  dataCollection2(number, stateFlag2)
  dataCollection2 = CMG
  dataCollection2 = dataCollection2.loadModel
  number = -1760377969
  -- Beginner: Request/load a GTA model before spawning or applying it.
  dataCollection2(number)
  dataCollection2 = CMG
  dataCollection2 = dataCollection2.requestEntitySpawn
  number = "impound_request_ped"
  stateFlag2 = stateFlag24
  dataCollection2(number, stateFlag2)
  dataCollection2 = CreatePedInsideVehicle
  number = workingValue13
  stateFlag2 = 1
  text4 = -1760377969
  stateFlag3 = -1
  stateFlag4 = true
  stateFlag5 = false
  dataCollection2 = dataCollection2(number, stateFlag2, text4, stateFlag3, stateFlag4, stateFlag5)
  number = SetModelAsNoLongerNeeded
  stateFlag2 = -1760377969
  number(stateFlag2)
  number = SetEntityInvincible
  stateFlag2 = dataCollection2
  text4 = true
  number(stateFlag2, text4)
  number = CMG
  number = number.loadModel
  stateFlag2 = localValue1
  -- Beginner: Request/load a GTA model before spawning or applying it.
  number(stateFlag2)
  number = CMG
  number = number.requestEntitySpawn
  stateFlag2 = "impound_request_vehicle"
  text4 = stateFlag24
  number(stateFlag2, text4)
  number = CMG
  number = number.spawnVehicle
  stateFlag2 = localValue1
  text4 = stateFlag24.x
  stateFlag3 = stateFlag24.y
  stateFlag4 = stateFlag24.z
  stateFlag5 = GetEntityHeading
  stateFlag6 = workingValue13
  -- Beginner: result below is heading.
  stateFlag5 = stateFlag5(stateFlag6)
  stateFlag6 = false
  number2 = true
  number3 = false
  number = number(stateFlag2, text4, stateFlag3, stateFlag4, stateFlag5, stateFlag6, number2, number3)
  stateFlag2 = SetModelAsNoLongerNeeded
  text4 = localValue1
  stateFlag2(text4)
  stateFlag2 = AttachEntityToEntity
  text4 = number
  stateFlag3 = workingValue13
  stateFlag4 = 20
  stateFlag5 = -0.5
  stateFlag6 = -5.0
  number2 = 1.0
  number3 = 0.0
  number4 = 0.0
  number5 = 0.0
  stateFlag7 = false
  stateFlag8 = false
  createVector3 = false
  stateFlag9 = false
  stateFlag10 = 20
  stateFlag11 = true
  -- Beginner: Attach one entity to another entity.
  stateFlag2(text4, stateFlag3, stateFlag4, stateFlag5, stateFlag6, number2, number3, number4, number5, stateFlag7, stateFlag8, createVector3, stateFlag9, stateFlag10, stateFlag11)
  stateFlag2 = SetEntityInvincible
  text4 = number
  stateFlag3 = true
  stateFlag2(text4, stateFlag3)
  stateFlag2 = TaskVehicleDriveToCoord
  text4 = dataCollection2
  stateFlag3 = workingValue13
  stateFlag4 = localValue7.x
  stateFlag5 = localValue7.y
  stateFlag6 = localValue7.z
  number2 = 15.0
  number3 = 1.0
  number4 = 1353720154
  number5 = number10
  stateFlag7 = 5.0
  stateFlag8 = 0.0
  stateFlag2(text4, stateFlag3, stateFlag4, stateFlag5, stateFlag6, number2, number3, number4, number5, stateFlag7, stateFlag8)
  stateFlag2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  stateFlag2 = stateFlag2()
  while true do
    text4 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    text4 = text4()
    text4 = text4 - stateFlag2
    stateFlag3 = 5000
    if not (text4 < stateFlag3) then
      break
    end
    text4 = NetworkGetNetworkIdFromEntity
    stateFlag3 = workingValue13
    text4 = text4(stateFlag3)
    stateFlag3 = NetworkGetNetworkIdFromEntity
    stateFlag4 = dataCollection2
    stateFlag3 = stateFlag3(stateFlag4)
    stateFlag4 = NetworkGetNetworkIdFromEntity
    stateFlag5 = number
    stateFlag4 = stateFlag4(stateFlag5)
    if 0 ~= text4 and 0 ~= stateFlag3 and 0 ~= stateFlag4 then
      stateFlag5 = TriggerServerEvent
      stateFlag6 = "6d0044938f"
      number2 = text4
      number3 = stateFlag3
      number4 = stateFlag4
      number5 = localValue7
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6d0044938f".
      stateFlag5(stateFlag6, number2, number3, number4, number5)
      return
    end
    stateFlag5 = Citizen
    stateFlag5 = stateFlag5.Wait
    stateFlag6 = 0
    stateFlag5(stateFlag6)
  end
  text4 = DeleteEntity
  stateFlag3 = workingValue13
  -- Beginner: Delete a GTA entity.
  text4(stateFlag3)
  text4 = DeleteEntity
  stateFlag3 = dataCollection2
  text4(stateFlag3)
  text4 = DeleteEntity
  stateFlag3 = number
  -- Beginner: Delete a GTA entity.
  text4(stateFlag3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ddf87b5c68".
text(rageUiOperation, rageUiOperation2)
text = RegisterNetEvent
rageUiOperation = "09c0273fe4"
-- Beginner: this function handles network event "09c0273fe4".

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1, localValue2, localValue3) ===
function rageUiOperation2(localValue1, localValue2, localValue3)
  local localValue4, localValue5, localValue6, localValue7, localValue8, stateFlag24, workingValue13, cmgOperation2, dataCollection2, number, stateFlag2, text4
  -- Beginner: this function handles network event "09c0273fe4".

  -- === HELPER FUNCTION: localValue4(localValue12, localValue22) ===
  function localValue4(localValue12, localValue22)
    local workingValue8, stateFlag18, rageUiOperation3
    if 0 ~= localValue12 then
      workingValue8 = DoesEntityExist
      stateFlag18 = localValue12
      workingValue8 = workingValue8(stateFlag18)
      if workingValue8 then
        goto continueAtStep10
      end
    end
    workingValue8 = false
    return workingValue8
    ::continueAtStep10::
    workingValue8 = NetworkRequestControlOfEntity
    stateFlag18 = localValue12
    workingValue8(stateFlag18)
    workingValue8 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workingValue8 = workingValue8()
    workingValue8 = workingValue8 + localValue22
    while true do
      stateFlag18 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      stateFlag18 = stateFlag18()
      if not (workingValue8 > stateFlag18) then
        break
      end
      stateFlag18 = NetworkHasControlOfEntity
      rageUiOperation3 = localValue12
      stateFlag18 = stateFlag18(rageUiOperation3)
      if stateFlag18 then
        break
      end
      stateFlag18 = NetworkRequestControlOfEntity
      rageUiOperation3 = localValue12
      stateFlag18(rageUiOperation3)
      stateFlag18 = Citizen
      stateFlag18 = stateFlag18.Wait
      rageUiOperation3 = 0
      stateFlag18(rageUiOperation3)
    end
    stateFlag18 = NetworkHasControlOfEntity
    rageUiOperation3 = localValue12
    return stateFlag18(rageUiOperation3)
  end
  localValue5 = 0
  localValue6 = NetworkDoesNetworkIdExist
  localValue7 = localValue2
  localValue6 = localValue6(localValue7)
  if localValue6 then
    localValue6 = NetworkDoesEntityExistWithNetworkId
    localValue7 = localValue2
    localValue6 = localValue6(localValue7)
    if localValue6 then
      localValue6 = NetworkGetEntityFromNetworkId
      localValue7 = localValue2
      localValue6 = localValue6(localValue7)
      localValue5 = localValue6
    end
  end
  if 0 ~= localValue5 then
    localValue6 = localValue4
    localValue7 = localValue5
    localValue8 = 1500
    localValue6(localValue7, localValue8)
    localValue6 = NetworkHasControlOfEntity
    localValue7 = localValue5
    localValue6 = localValue6(localValue7)
    if localValue6 then
      localValue6 = DetachEntity
      localValue7 = localValue5
      localValue8 = true
      stateFlag24 = true
      localValue6(localValue7, localValue8, stateFlag24)
      localValue6 = SetEntityCoordsNoOffset
      localValue7 = localValue5
      localValue8 = localValue3.x
      stateFlag24 = localValue3.y
      workingValue13 = localValue3.z
      cmgOperation2 = true
      dataCollection2 = false
      number = false
      -- Beginner: Move/teleport an entity to new coordinates.
      localValue6(localValue7, localValue8, stateFlag24, workingValue13, cmgOperation2, dataCollection2, number)
      localValue6 = pairs
      localValue7 = CMG
      localValue7 = localValue7.getAllVehicles
      localValue7, localValue8, stateFlag24, workingValue13, cmgOperation2, dataCollection2, number, stateFlag2, text4 = localValue7()
      localValue6, localValue7, localValue8, stateFlag24 = localValue6(localValue7, localValue8, stateFlag24, workingValue13, cmgOperation2, dataCollection2, number, stateFlag2, text4)
      for workingValue13, cmgOperation2 in localValue6, localValue7, localValue8, stateFlag24 do
        dataCollection2 = SetEntityNoCollisionEntity
        number = localValue5
        stateFlag2 = cmgOperation2
        text4 = false
        dataCollection2(number, stateFlag2, text4)
      end
      localValue6 = Wait
      localValue7 = 2000
      localValue6(localValue7)
      localValue6 = pairs
      localValue7 = CMG
      localValue7 = localValue7.getAllVehicles
      localValue7, localValue8, stateFlag24, workingValue13, cmgOperation2, dataCollection2, number, stateFlag2, text4 = localValue7()
      localValue6, localValue7, localValue8, stateFlag24 = localValue6(localValue7, localValue8, stateFlag24, workingValue13, cmgOperation2, dataCollection2, number, stateFlag2, text4)
      for workingValue13, cmgOperation2 in localValue6, localValue7, localValue8, stateFlag24 do
        dataCollection2 = SetEntityNoCollisionEntity
        number = localValue5
        stateFlag2 = cmgOperation2
        text4 = true
        dataCollection2(number, stateFlag2, text4)
      end
      localValue6 = SetVehicleFixed
      localValue7 = localValue5
      localValue6(localValue7)
    end
  end
  localValue6 = NetworkDoesNetworkIdExist
  localValue7 = localValue1
  localValue6 = localValue6(localValue7)
  if localValue6 then
    localValue6 = NetworkDoesEntityExistWithNetworkId
    localValue7 = localValue1
    localValue6 = localValue6(localValue7)
    if localValue6 then
      localValue6 = NetworkGetEntityFromNetworkId
      localValue7 = localValue1
      localValue6 = localValue6(localValue7)
      if 0 ~= localValue6 then
        localValue7 = localValue4
        localValue8 = localValue6
        stateFlag24 = 800
        localValue7(localValue8, stateFlag24)
        localValue7 = NetworkHasControlOfEntity
        localValue8 = localValue6
        localValue7 = localValue7(localValue8)
        if localValue7 then
          localValue7 = GetVehiclePedIsUsing
          localValue8 = localValue6
          localValue7 = localValue7(localValue8)
          if 0 ~= localValue7 then
            localValue8 = TaskVehicleDriveWander
            stateFlag24 = localValue6
            workingValue13 = localValue7
            cmgOperation2 = 15.0
            dataCollection2 = 786603
            localValue8(stateFlag24, workingValue13, cmgOperation2, dataCollection2)
          end
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "09c0273fe4".
text(rageUiOperation, rageUiOperation2)
