--[[
    Beginner Guide: cl_impound.lua
    ==============================

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
    BEGINNER GUIDE — Impound
    ========================

    File: cmg/prod/client/police/cl_impound.lua
    Purpose: This file contains police gameplay.

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
      * cfg/cfg_impound

    Commands/command-like entries found:
      * impound

    Network/hash identifiers found: 13
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * Vehicle Impound
      * ~b~Impounding Vehicle...
      * ~b~Your Impounded Vehicles
      * ~b~Request Impounded Vehicle
      * Vehicle: ~b~

]]
local cmgCall, dataTable3, workValue7, dataTable4, numberValue10, threadCall, textValue9, textValue10, rageUiCall4, textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable3 = "cfg/cfg_impound"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable3)
dataTable3 = {}
dataTable3.owner_id = 0
dataTable3.owner_name = ""
dataTable3.vehicle = ""
dataTable3.vehicle_name = ""
workValue7 = nil
dataTable4 = {}
numberValue10 = 786469
threadCall = Citizen
threadCall = threadCall.CreateThread
function textValue9()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag24, workValue13, cmgCall2, dataTable2
  arg1 = CMG
  arg1 = arg1.createDynamicPed
  arg2 = cmgCall.ped
  arg2 = arg2.modelHash
  arg3 = cmgCall.ped
  arg3 = arg3.position
  arg4 = 215.0
  arg5 = true
  arg6 = cmgCall.ped
  arg6 = arg6.animDict
  arg7 = cmgCall.ped
  arg7 = arg7.animName
  arg8 = 30
  flag24 = false
  function workValue13()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag24, workValue13)
  arg1 = CMG
  arg1 = arg1.createDynamicPed
  arg2 = cmgCall.paletoPed
  arg2 = arg2.modelHash
  arg3 = cmgCall.paletoPed
  arg3 = arg3.position
  arg4 = 315.0
  arg5 = true
  arg6 = cmgCall.paletoPed
  arg6 = arg6.animDict
  arg7 = cmgCall.paletoPed
  arg7 = arg7.animName
  arg8 = 30
  flag24 = false
  function workValue13()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag24, workValue13)
  arg1 = tCMG
  arg1 = arg1.addBlip
  arg2 = cmgCall.ped
  arg2 = arg2.position
  arg2 = arg2.x
  arg3 = cmgCall.ped
  arg3 = arg3.position
  arg3 = arg3.y
  arg4 = cmgCall.ped
  arg4 = arg4.position
  arg4 = arg4.z
  arg5 = 357
  arg6 = 81
  arg7 = "Vehicle Impound"
  arg8 = 0.8
  flag24 = false
  -- Beginner: Create a minimap blip.
  arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag24)
  arg1 = tCMG
  arg1 = arg1.addBlip
  arg2 = cmgCall.paletoPed
  arg2 = arg2.position
  arg2 = arg2.x
  arg3 = cmgCall.paletoPed
  arg3 = arg3.position
  arg3 = arg3.y
  arg4 = cmgCall.paletoPed
  arg4 = arg4.position
  arg4 = arg4.z
  arg5 = 357
  arg6 = 81
  arg7 = "Vehicle Impound"
  arg8 = 0.8
  flag24 = false
  arg1(arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag24)
  arg1 = Wait
  arg2 = 2000
  arg1(arg2)
  function arg1(arg12)
    local arg22, workValue8, flag18, rageUiCall3, textValue7
    arg22 = arg12.type
    workValue7 = arg22
    arg22 = RageUI
    arg22 = arg22.Visible
    workValue8 = RMenu
    flag18 = workValue8
    workValue8 = workValue8.Get
    rageUiCall3 = "cmgimpound"
    textValue7 = "main"
    -- Beginner: result below is menu.
    workValue8 = workValue8(flag18, rageUiCall3, textValue7)
    flag18 = true
    arg22(workValue8, flag18)
  end
  function arg2()
    local arg12, arg22
    arg12 = RageUI
    arg12 = arg12.CloseAll
    arg12()
  end
  function arg3()
    local arg12, arg22
  end
  arg4 = CMG
  arg4 = arg4.createArea
  arg5 = "vehicle_impound"
  arg6 = cmgCall.ped
  arg6 = arg6.position
  arg7 = 3.0
  arg8 = 6
  flag24 = arg1
  workValue13 = arg2
  cmgCall2 = arg3
  dataTable2 = {}
  dataTable2.type = "city"
  -- Beginner: Create an interaction area around a world position.
  arg4(arg5, arg6, arg7, arg8, flag24, workValue13, cmgCall2, dataTable2)
  arg4 = CMG
  arg4 = arg4.createArea
  arg5 = "vehicle_paleto_impound"
  arg6 = cmgCall.paletoPed
  arg6 = arg6.position
  arg7 = 3.0
  arg8 = 6
  flag24 = arg1
  workValue13 = arg2
  cmgCall2 = arg3
  dataTable2 = {}
  dataTable2.type = "paleto"
  arg4(arg5, arg6, arg7, arg8, flag24, workValue13, cmgCall2, dataTable2)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(textValue9)
threadCall = RMenu
threadCall = threadCall.Add
textValue9 = "cmgimpound"
textValue10 = "reasons"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateMenu
textValue11 = ""
textValue = "~b~Impounding Vehicle..."
rageUiCall = CMG
rageUiCall = rageUiCall.getRageUIMenuWidth
rageUiCall = rageUiCall()
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuHeight
rageUiCall2 = rageUiCall2()
textValue2 = "cmg_jobselectorui"
textValue3 = "metpd"
rageUiCall4, textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3 = rageUiCall4(textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3)
threadCall(textValue9, textValue10, rageUiCall4, textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3)
threadCall = RMenu
threadCall = threadCall.Add
textValue9 = "cmgimpound"
textValue10 = "main"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateMenu
textValue11 = ""
textValue = "~b~Your Impounded Vehicles"
rageUiCall = CMG
rageUiCall = rageUiCall.getRageUIMenuWidth
rageUiCall = rageUiCall()
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuHeight
rageUiCall2 = rageUiCall2()
textValue2 = "cmg_jobselectorui"
textValue3 = "metpd"
rageUiCall4, textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3 = rageUiCall4(textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3)
threadCall(textValue9, textValue10, rageUiCall4, textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3)
threadCall = RMenu
threadCall = threadCall.Add
textValue9 = "cmgimpound"
textValue10 = "vehicle_information"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue11 = RMenu
textValue = textValue11
textValue11 = textValue11.Get
rageUiCall = "cmgimpound"
rageUiCall2 = "main"
textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3 = textValue11(textValue, rageUiCall, rageUiCall2)
rageUiCall4, textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3 = rageUiCall4(textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3)
threadCall(textValue9, textValue10, rageUiCall4, textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3)
threadCall = RMenu
threadCall = threadCall.Add
textValue9 = "cmgimpound"
textValue10 = "pay_fine_confirmation"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateSubMenu
textValue11 = RMenu
textValue = textValue11
textValue11 = textValue11.Get
rageUiCall = "cmgimpound"
rageUiCall2 = "vehicle_information"
textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3 = textValue11(textValue, rageUiCall, rageUiCall2)
rageUiCall4, textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3 = rageUiCall4(textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3)
threadCall(textValue9, textValue10, rageUiCall4, textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3)
threadCall = RMenu
threadCall = threadCall.Add
textValue9 = "cmgimpound"
textValue10 = "requestvehicle"
rageUiCall4 = RageUI
rageUiCall4 = rageUiCall4.CreateMenu
textValue11 = ""
textValue = "~b~Request Impounded Vehicle"
rageUiCall = CMG
rageUiCall = rageUiCall.getRageUIMenuWidth
rageUiCall = rageUiCall()
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuHeight
rageUiCall2 = rageUiCall2()
textValue2 = "cmg_jobselectorui"
textValue3 = "metpd"
rageUiCall4, textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3 = rageUiCall4(textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3)
threadCall(textValue9, textValue10, rageUiCall4, textValue11, textValue, rageUiCall, rageUiCall2, textValue2, textValue3)
threadCall = nil
textValue9 = {}
textValue10 = 2
rageUiCall4 = 4
textValue11 = 5
textValue9[1] = textValue10
textValue9[2] = rageUiCall4
textValue9[3] = textValue11
textValue10 = 1
function rageUiCall4()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = ipairs
  arg2 = cmgCall.reasonsForImpound
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    arg6.checked = false
  end
end
textValue11 = RageUI
textValue11 = textValue11.CreateWhile
textValue = 1.0
rageUiCall = RMenu
rageUiCall2 = rageUiCall
rageUiCall = rageUiCall.Get
textValue2 = "cmgimpound"
textValue3 = "main"
-- Beginner: result below is menu.
rageUiCall = rageUiCall(rageUiCall2, textValue2, textValue3)
rageUiCall2 = nil
function textValue2()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = RageUI
  arg1 = arg1.BackspaceMenuCallback
  function arg2()
    local arg12, arg22
    arg12 = rageUiCall4
    arg12()
  end
  arg1(arg2)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgimpound"
  arg5 = "reasons"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, workValue8, flag18, rageUiCall3, textValue7, cmgCall3, workValue10, dataTable5, textValue12
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "Vehicle: ~b~"
    workValue8 = dataTable3.vehicle_name
    flag18 = "~s~ | Owner: ~b~"
    rageUiCall3 = dataTable3.owner_name
    arg22 = arg22 .. workValue8 .. flag18 .. rageUiCall3
    arg12(arg22)
    arg12 = 1
    arg22 = cmgCall.reasonsForImpound
    arg22 = #arg22
    workValue8 = 1
    for flag18 = arg12, arg22, workValue8 do
      rageUiCall3 = RageUI
      rageUiCall3 = rageUiCall3.Checkbox
      textValue7 = cmgCall.reasonsForImpound
      textValue7 = textValue7[flag18]
      textValue7 = textValue7.option
      cmgCall3 = ""
      workValue10 = cmgCall.reasonsForImpound
      workValue10 = workValue10[flag18]
      workValue10 = workValue10.checked
      dataTable5 = {}
      dataTable5.Style = 1
      function textValue12(arg13, arg23, arg32, arg42)
        local serverEventCall, textValue8
        if arg23 then
          serverEventCall = cmgCall.reasonsForImpound
          textValue8 = flag18
          serverEventCall = serverEventCall[textValue8]
          serverEventCall.checked = arg42
        end
      end
      -- Beginner: Draw a RageUI checkbox.
      rageUiCall3(textValue7, cmgCall3, workValue10, dataTable5, textValue12)
    end
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "~g~Confirm Selection"
    workValue8 = ""
    flag18 = {}
    flag18.RightLabel = "\226\134\146\226\134\146\226\134\146"
    rageUiCall3 = true
    function textValue7(arg13, arg23, arg32)
      local arg42, serverEventCall, textValue8, workValue9, workValue11, workValue12, workValue14, tableHelper, workValue, workValue3, workValue5
      if arg32 then
        arg42 = {}
        serverEventCall = ipairs
        textValue8 = cmgCall.reasonsForImpound
        serverEventCall, textValue8, workValue9, workValue11 = serverEventCall(textValue8)
        for workValue12, workValue14 in serverEventCall, textValue8, workValue9, workValue11 do
          tableHelper = workValue14.checked
          if tableHelper then
            tableHelper = table
            tableHelper = tableHelper.insert
            workValue = arg42
            workValue3 = workValue12
            tableHelper(workValue, workValue3)
            workValue14.checked = false
          end
        end
        serverEventCall = TriggerServerEvent
        textValue8 = "bd4dad4950"
        workValue9 = dataTable3.owner_id
        workValue11 = dataTable3.owner_name
        workValue12 = dataTable3.vehicle
        workValue14 = dataTable3.vehicle_name
        tableHelper = arg42
        workValue = dataTable3.vehicle_net_id
        workValue3 = dataTable3.uuid
        workValue5 = dataTable3.isEmergencyVehicle
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bd4dad4950".
        serverEventCall(textValue8, workValue9, workValue11, workValue12, workValue14, tableHelper, workValue, workValue3, workValue5)
        serverEventCall = RageUI
        serverEventCall = serverEventCall.CloseAll
        serverEventCall()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, workValue8, flag18, rageUiCall3, textValue7)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "~r~Cancel"
    workValue8 = ""
    flag18 = {}
    flag18.RightLabel = "\226\134\146\226\134\146\226\134\146"
    rageUiCall3 = true
    function textValue7(arg13, arg23, arg32)
      local arg42
      if arg32 then
        arg42 = RageUI
        arg42 = arg42.CloseAll
        arg42()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, workValue8, flag18, rageUiCall3, textValue7)
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgimpound"
  arg5 = "main"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, workValue8, flag18, rageUiCall3, textValue7, cmgCall3, workValue10, dataTable5, textValue12, dataTable, flag, workValue2, workValue4, workValue6, textValue5, textValue6
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "View your impounded vehicles here."
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "You can pay the ~g~\194\16310,000~s~ fine to release your vehicle."
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "---"
    arg12(arg22)
    arg12 = dataTable4
    if nil ~= arg12 then
      arg12 = dataTable4
      arg22 = {}
      if arg12 ~= arg22 then
        arg12 = pairs
        arg22 = dataTable4
        arg12, arg22, workValue8, flag18 = arg12(arg22)
        for rageUiCall3, textValue7 in arg12, arg22, workValue8, flag18 do
          cmgCall3 = CMG
          cmgCall3 = cmgCall3.getVehicleInfoFromUUID
          workValue10 = rageUiCall3
          cmgCall3 = cmgCall3(workValue10)
          if cmgCall3 then
            workValue10 = RageUI
            workValue10 = workValue10.ButtonWithStyle
            dataTable5 = cmgCall3.name
            textValue12 = ""
            dataTable = {}
            dataTable.RightLabel = "\226\134\146\226\134\146\226\134\146"
            flag = true
            function workValue2(arg13, arg23, arg32)
              local arg42
              if arg32 then
                arg42 = textValue7
                threadCall = arg42
              end
            end
            workValue4 = RMenu
            workValue6 = workValue4
            workValue4 = workValue4.Get
            textValue5 = "cmgimpound"
            textValue6 = "vehicle_information"
            workValue4, workValue6, textValue5, textValue6 = workValue4(workValue6, textValue5, textValue6)
            -- Beginner: Draw a selectable RageUI menu button.
            workValue10(dataTable5, textValue12, dataTable, flag, workValue2, workValue4, workValue6, textValue5, textValue6)
          end
        end
    end
    else
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "~r~None of your vehicles are currently impounded."
      arg12(arg22)
    end
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgimpound"
  arg5 = "vehicle_information"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, workValue8, flag18, rageUiCall3, textValue7, cmgCall3, workValue10, dataTable5, textValue12, dataTable
    arg12 = threadCall
    if 0 ~= arg12 then
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = CMG
      arg22 = arg22.getVehicleInfoFromUUID
      workValue8 = threadCall.uuid
      arg22 = arg22(workValue8)
      arg22 = arg22.name
      arg12(arg22)
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "This vehicle was impounded by ~b~"
      workValue8 = threadCall.impounded_by_name
      flag18 = "(ID: "
      rageUiCall3 = threadCall.impounder
      textValue7 = ") ~s~for:"
      arg22 = arg22 .. workValue8 .. flag18 .. rageUiCall3 .. textValue7
      arg12(arg22)
      arg12 = json
      arg12 = arg12.decode
      arg22 = threadCall.reasons
      arg12 = arg12(arg22)
      if arg12 then
        arg22 = ipairs
        workValue8 = arg12
        arg22, workValue8, flag18, rageUiCall3 = arg22(workValue8)
        for textValue7 in arg22, workValue8, flag18, rageUiCall3 do
          cmgCall3 = RageUI
          cmgCall3 = cmgCall3.Separator
          workValue10 = "\194\187 "
          dataTable5 = cmgCall.reasonsForImpound
          textValue12 = arg12[textValue7]
          dataTable5 = dataTable5[textValue12]
          dataTable5 = dataTable5.option
          workValue10 = workValue10 .. dataTable5
          cmgCall3(workValue10)
        end
      end
      arg22 = RageUI
      arg22 = arg22.ButtonWithStyle
      workValue8 = "~g~Pay Fine"
      flag18 = "Paying the fine will release your vehicle."
      rageUiCall3 = {}
      rageUiCall3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      textValue7 = true
      function cmgCall3(arg13, arg23, arg32)
      end
      workValue10 = RMenu
      dataTable5 = workValue10
      workValue10 = workValue10.Get
      textValue12 = "cmgimpound"
      dataTable = "pay_fine_confirmation"
      workValue10, dataTable5, textValue12, dataTable = workValue10(dataTable5, textValue12, dataTable)
      -- Beginner: Draw a selectable RageUI menu button.
      arg22(workValue8, flag18, rageUiCall3, textValue7, cmgCall3, workValue10, dataTable5, textValue12, dataTable)
    end
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgimpound"
  arg5 = "pay_fine_confirmation"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, workValue8, flag18, rageUiCall3, textValue7, cmgCall3, workValue10, dataTable5, textValue12
    arg12 = threadCall
    if 0 ~= arg12 then
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "Would you like to release your vehicle?"
      arg12(arg22)
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "This action will cost you ~g~\194\16310,000~s~."
      arg12(arg22)
      arg12 = RageUI
      arg12 = arg12.Separator
      arg22 = "---"
      arg12(arg22)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "~g~Pay"
      workValue8 = "Pay the fine"
      flag18 = {}
      flag18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      rageUiCall3 = true
      function textValue7(arg13, arg23, arg32)
        local arg42, serverEventCall, textValue8, workValue9
        if arg32 then
          arg42 = TriggerServerEvent
          serverEventCall = "8fff197382"
          textValue8 = threadCall.uuid
          workValue9 = workValue7
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8fff197382".
          arg42(serverEventCall, textValue8, workValue9)
        end
      end
      cmgCall3 = RMenu
      workValue10 = cmgCall3
      cmgCall3 = cmgCall3.Get
      dataTable5 = "cmgimpound"
      textValue12 = "main"
      cmgCall3, workValue10, dataTable5, textValue12 = cmgCall3(workValue10, dataTable5, textValue12)
      -- Beginner: Draw a selectable RageUI menu button.
      arg12(arg22, workValue8, flag18, rageUiCall3, textValue7, cmgCall3, workValue10, dataTable5, textValue12)
      arg12 = RageUI
      arg12 = arg12.ButtonWithStyle
      arg22 = "~r~Cancel"
      workValue8 = "Go back"
      flag18 = {}
      flag18.RightLabel = "\226\134\146\226\134\146\226\134\146"
      rageUiCall3 = true
      function textValue7(arg13, arg23, arg32)
      end
      cmgCall3 = RMenu
      workValue10 = cmgCall3
      cmgCall3 = cmgCall3.Get
      dataTable5 = "cmgimpound"
      textValue12 = "main"
      cmgCall3, workValue10, dataTable5, textValue12 = cmgCall3(workValue10, dataTable5, textValue12)
      arg12(arg22, workValue8, flag18, rageUiCall3, textValue7, cmgCall3, workValue10, dataTable5, textValue12)
    end
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cmgimpound"
  arg5 = "requestvehicle"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = true
  arg5 = true
  function arg6()
    local arg12, arg22, workValue8, flag18, rageUiCall3, textValue7, cmgCall3, workValue10, dataTable5
    arg12 = RageUI
    arg12 = arg12.List
    arg22 = "Minimum Seat Amount"
    workValue8 = textValue9
    flag18 = textValue10
    rageUiCall3 = "The minimum amount of seats this vehicle should have"
    textValue7 = {}
    cmgCall3 = true
    function workValue10(arg13, arg23, arg32, arg42)
      textValue10 = arg42
    end
    function dataTable5()
      local arg13, arg23
    end
    -- Beginner: Draw a RageUI list selector.
    arg12(arg22, workValue8, flag18, rageUiCall3, textValue7, cmgCall3, workValue10, dataTable5)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "Request Impounded Vehicle"
    workValue8 = ""
    flag18 = {}
    flag18.RightLabel = "\226\134\146\226\134\146\226\134\146"
    rageUiCall3 = true
    function textValue7(arg13, arg23, arg32)
      local arg42, serverEventCall, textValue8, workValue9
      if arg32 then
        arg42 = TriggerServerEvent
        serverEventCall = "007a0c4d08"
        workValue9 = textValue10
        textValue8 = textValue9
        textValue8 = textValue8[workValue9]
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "007a0c4d08".
        arg42(serverEventCall, textValue8)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, workValue8, flag18, rageUiCall3, textValue7)
  end
  function arg7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, arg5, arg6, arg7)
end
textValue11(textValue, rageUiCall, rageUiCall2, textValue2)
textValue11 = RegisterNetEvent
textValue = "11cbf24793"
-- Beginner: this function handles network event "11cbf24793".
function rageUiCall(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local arg8, flag24, workValue13
  arg8 = {}
  flag24 = tonumber
  workValue13 = arg1
  flag24 = flag24(workValue13)
  arg8.owner_id = flag24
  arg8.owner_name = arg2
  arg8.vehicle = arg4
  arg8.vehicle_name = arg3
  arg8.vehicle_net_id = arg5
  arg8.uuid = arg6
  arg8.isEmergencyVehicle = arg7
  dataTable3 = arg8
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "11cbf24793".
textValue11(textValue, rageUiCall)
textValue11 = RegisterNetEvent
textValue = "e27c143134"
-- Beginner: this function handles network event "e27c143134".
function rageUiCall(arg1)
  local arg2
  dataTable4 = arg1
end
textValue11(textValue, rageUiCall)
textValue11 = RegisterNetEvent
textValue = "f85a25a536"
-- Beginner: this function handles network event "f85a25a536".
function rageUiCall(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
  local flag24, workValue13, cmgCall2, dataTable2, numberValue, flag2, textValue4, flag3, flag4, flag5, flag6, numberValue2, numberValue3, numberValue4, numberValue5, flag7, flag8, vector3Builder, flag9, flag10, flag11, flag12, numberValue6, flag13, flag14, networkId, networkId2, numberValue7, flag15, flag16, flag17, numberValue8, flag19, flag20, flag21, flag22, numberValue9, flag23
  flag24 = CMG
  flag24 = flag24.getObjectId
  workValue13 = arg1
  cmgCall2 = "CMG:impoundSuccess (1)"
  flag24 = flag24(workValue13, cmgCall2)
  workValue13 = GetEntityCoords
  cmgCall2 = flag24
  dataTable2 = false
  -- Beginner: result below is entityCoords.
  workValue13 = workValue13(cmgCall2, dataTable2)
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.requestEntitySpawn
  dataTable2 = "impound_sticker_object"
  numberValue = workValue13
  cmgCall2(dataTable2, numberValue)
  cmgCall2 = CreateObject
  dataTable2 = 1289584093
  numberValue = workValue13.x
  flag2 = workValue13.y
  textValue4 = workValue13.z
  flag3 = true
  flag4 = true
  flag5 = true
  -- Beginner: result below is objectEntity.
  cmgCall2 = cmgCall2(dataTable2, numberValue, flag2, textValue4, flag3, flag4, flag5)
  dataTable2 = CMG
  dataTable2 = dataTable2.loadModel
  numberValue = -1099035225
  -- Beginner: Request/load a GTA model before spawning or applying it.
  dataTable2(numberValue)
  dataTable2 = FreezeEntityPosition
  numberValue = flag24
  flag2 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  dataTable2(numberValue, flag2)
  dataTable2 = CMG
  dataTable2 = dataTable2.requestEntitySpawn
  numberValue = "impound_clamp_object"
  flag2 = workValue13
  dataTable2(numberValue, flag2)
  dataTable2 = CreateObject
  numberValue = -1099035225
  flag2 = workValue13.x
  textValue4 = workValue13.y
  flag3 = workValue13.z
  flag4 = true
  flag5 = true
  flag6 = true
  -- Beginner: result below is objectEntity.
  dataTable2 = dataTable2(numberValue, flag2, textValue4, flag3, flag4, flag5, flag6)
  numberValue = SetModelAsNoLongerNeeded
  flag2 = -1099035225
  numberValue(flag2)
  numberValue = GetEntityBoneIndexByName
  flag2 = flag24
  textValue4 = "wheel_lf"
  numberValue = numberValue(flag2, textValue4)
  flag2 = SetEntityHeading
  textValue4 = dataTable2
  flag3 = 0.0
  -- Beginner: Change the direction an entity is facing.
  flag2(textValue4, flag3)
  flag2 = AttachEntityToEntity
  textValue4 = dataTable2
  flag3 = flag24
  flag4 = numberValue
  flag5 = -0.1
  flag6 = 0.15
  numberValue2 = -0.3
  numberValue3 = 180.0
  numberValue4 = 200.0
  numberValue5 = 90.0
  flag7 = true
  flag8 = true
  vector3Builder = false
  flag9 = false
  flag10 = 2
  flag11 = true
  -- Beginner: Attach one entity to another entity.
  flag2(textValue4, flag3, flag4, flag5, flag6, numberValue2, numberValue3, numberValue4, numberValue5, flag7, flag8, vector3Builder, flag9, flag10, flag11)
  flag2 = FreezeEntityPosition
  textValue4 = dataTable2
  flag3 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  flag2(textValue4, flag3)
  flag2 = IsVehicleWindowIntact
  textValue4 = flag24
  flag3 = 0
  flag2 = flag2(textValue4, flag3)
  if flag2 then
    flag2 = GetEntityBoneIndexByName
    textValue4 = flag24
    flag3 = "windscreen"
    flag2 = flag2(textValue4, flag3)
    textValue4 = FreezeEntityPosition
    flag3 = cmgCall2
    flag4 = true
    textValue4(flag3, flag4)
    textValue4 = AttachEntityToEntity
    flag3 = cmgCall2
    flag4 = flag24
    flag5 = flag2
    flag6 = 0.1
    numberValue2 = -2.7
    numberValue3 = -1.65
    numberValue4 = -32.0
    numberValue5 = 5.0
    flag7 = 180.0
    flag8 = true
    vector3Builder = true
    flag9 = false
    flag10 = true
    flag11 = 0
    flag12 = true
    -- Beginner: Attach one entity to another entity.
    textValue4(flag3, flag4, flag5, flag6, numberValue2, numberValue3, numberValue4, numberValue5, flag7, flag8, vector3Builder, flag9, flag10, flag11, flag12)
  end
  flag2 = CMG
  flag2 = flag2.notifyPicture
  textValue4 = "polnotification"
  flag3 = "notification"
  flag4 = "You have siezed a ~b~"
  flag5 = arg2
  flag6 = "~s~ owned by ~b~"
  numberValue2 = arg3
  numberValue3 = [[
~s~. 
 
A tow truck will pick up the vehicle shortly and take it to the impound.]]
  flag4 = flag4 .. flag5 .. flag6 .. numberValue2 .. numberValue3
  flag5 = "Metropolitan Police"
  flag6 = "Impound"
  numberValue2 = nil
  numberValue3 = nil
  flag2(textValue4, flag3, flag4, flag5, flag6, numberValue2, numberValue3)
  flag2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  flag2 = flag2()
  textValue4 = GetEntityCoords
  flag3 = flag2
  -- Beginner: result below is entityCoords.
  textValue4 = textValue4(flag3)
  flag3 = GetClosestVehicleNodeWithHeading
  flag4 = textValue4.x
  flag5 = textValue4.y
  flag6 = textValue4.z
  numberValue2 = nil
  numberValue3 = 8
  numberValue4 = 8
  numberValue5 = 8
  flag7 = 8
  flag3, flag4, flag5 = flag3(flag4, flag5, flag6, numberValue2, numberValue3, numberValue4, numberValue5, flag7)
  flag6 = GetPointOnRoadSide
  numberValue2 = textValue4.x
  numberValue3 = textValue4.y
  numberValue4 = textValue4.z
  numberValue5 = 0.0
  flag6, numberValue2, numberValue3 = flag6(numberValue2, numberValue3, numberValue4, numberValue5)
  numberValue4 = GetNthClosestVehicleNode
  numberValue5 = textValue4.x
  flag7 = textValue4.y
  flag8 = textValue4.z
  vector3Builder = 15
  numberValue4, numberValue5 = numberValue4(numberValue5, flag7, flag8, vector3Builder)
  flag7 = nil
  flag8 = nil
  vector3Builder = vector3
  flag9 = 0
  flag10 = 0
  flag11 = 0
  vector3Builder = vector3Builder(flag9, flag10, flag11)
  if numberValue5 ~= vector3Builder then
    vector3Builder = vector3
    flag9 = 0
    flag10 = 0
    flag11 = 0
    vector3Builder = vector3Builder(flag9, flag10, flag11)
    if numberValue2 ~= vector3Builder then
      vector3Builder = CMG
      vector3Builder = vector3Builder.loadModel
      flag9 = 1353720154
      -- Beginner: Request/load a GTA model before spawning or applying it.
      vector3Builder(flag9)
      vector3Builder = CMG
      vector3Builder = vector3Builder.loadModel
      flag9 = -1760377969
      vector3Builder(flag9)
      vector3Builder = CMG
      vector3Builder = vector3Builder.requestEntitySpawn
      flag9 = "impound_flatbed"
      flag10 = numberValue5
      vector3Builder(flag9, flag10)
      vector3Builder = CMG
      vector3Builder = vector3Builder.spawnVehicle
      flag9 = 1353720154
      flag10 = numberValue5.x
      flag11 = numberValue5.y
      flag12 = numberValue5.z
      numberValue6 = flag5
      flag13 = false
      flag14 = true
      networkId = true
      vector3Builder = vector3Builder(flag9, flag10, flag11, flag12, numberValue6, flag13, flag14, networkId)
      flag7 = vector3Builder
      vector3Builder = NetworkGetNetworkIdFromEntity
      flag9 = flag7
      vector3Builder = vector3Builder(flag9)
      flag9 = SetVehicleDoorsLocked
      flag10 = flag7
      flag11 = 2
      flag9(flag10, flag11)
      flag9 = SetNetworkIdCanMigrate
      flag10 = vector3Builder
      flag11 = false
      flag9(flag10, flag11)
      flag9 = SetModelAsNoLongerNeeded
      flag10 = 1353720154
      flag9(flag10)
      flag9 = AddBlipForEntity
      flag10 = flag7
      -- Beginner: result below is blipHandle.
      flag9 = flag9(flag10)
      flag10 = SetBlipSprite
      flag11 = flag9
      flag12 = 68
      flag10(flag11, flag12)
      flag10 = SetBlipDisplay
      flag11 = flag9
      flag12 = 4
      flag10(flag11, flag12)
      flag10 = SetBlipScale
      flag11 = flag9
      flag12 = 1.0
      flag10(flag11, flag12)
      flag10 = SetBlipColour
      flag11 = flag9
      flag12 = 5
      flag10(flag11, flag12)
      flag10 = SetBlipAsShortRange
      flag11 = flag9
      flag12 = true
      flag10(flag11, flag12)
      flag10 = CMG
      flag10 = flag10.requestEntitySpawn
      flag11 = "impound_ped"
      flag12 = numberValue5
      flag10(flag11, flag12)
      flag10 = CreatePedInsideVehicle
      flag11 = flag7
      flag12 = 1
      numberValue6 = -1760377969
      flag13 = -1
      flag14 = true
      networkId = false
      flag10 = flag10(flag11, flag12, numberValue6, flag13, flag14, networkId)
      flag8 = flag10
      flag10 = NetworkGetNetworkIdFromEntity
      flag11 = flag8
      flag10 = flag10(flag11)
      flag11 = TaskVehicleDriveToCoord
      flag12 = flag8
      numberValue6 = flag7
      flag13 = numberValue2.x
      flag14 = numberValue2.y
      networkId = numberValue2.z
      networkId2 = 15.0
      numberValue7 = 1.0
      flag15 = 1353720154
      flag16 = numberValue10
      flag17 = 5.0
      numberValue8 = 0.0
      flag11(flag12, numberValue6, flag13, flag14, networkId, networkId2, numberValue7, flag15, flag16, flag17, numberValue8)
      flag11 = SetModelAsNoLongerNeeded
      flag12 = -1760377969
      flag11(flag12)
      flag11 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      flag11 = flag11()
      flag12 = GetEntityCoords
      numberValue6 = flag24
      -- Beginner: result below is entityCoords.
      flag12 = flag12(numberValue6)
      numberValue6 = GetEntityCoords
      flag13 = flag7
      -- Beginner: result below is entityCoords.
      numberValue6 = numberValue6(flag13)
      flag12 = flag12 - numberValue6
      flag12 = #flag12
      while flag12 > 15.0 do
        numberValue6 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        numberValue6 = numberValue6()
        numberValue6 = numberValue6 - flag11
        flag13 = 20000
        if not (numberValue6 < flag13) then
          break
        end
        numberValue6 = Wait
        flag13 = 1000
        numberValue6(flag13)
        numberValue6 = GetEntityCoords
        flag13 = flag24
        -- Beginner: result below is entityCoords.
        numberValue6 = numberValue6(flag13)
        flag13 = GetEntityCoords
        flag14 = flag7
        -- Beginner: result below is entityCoords.
        flag13 = flag13(flag14)
        numberValue6 = numberValue6 - flag13
        flag12 = #numberValue6
      end
      numberValue6 = TriggerServerEvent
      flag13 = "8e7fb83d26"
      flag14 = arg1
      networkId = NetworkGetNetworkIdFromEntity
      networkId2 = dataTable2
      networkId = networkId(networkId2)
      networkId2 = NetworkGetNetworkIdFromEntity
      numberValue7 = cmgCall2
      networkId2, numberValue7, flag15, flag16, flag17, numberValue8, flag19, flag20, flag21, flag22, numberValue9, flag23 = networkId2(numberValue7)
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8e7fb83d26".
      numberValue6(flag13, flag14, networkId, networkId2, numberValue7, flag15, flag16, flag17, numberValue8, flag19, flag20, flag21, flag22, numberValue9, flag23)
      numberValue6 = CMG
      numberValue6 = numberValue6.requestEntitySpawn
      flag13 = "impound_vehicle"
      numberValue6(flag13)
      numberValue6 = CMG
      numberValue6 = numberValue6.spawnVehicle
      flag13 = arg4
      flag14 = arg7.x
      networkId = arg7.y
      networkId2 = arg7.z
      numberValue7 = arg8
      flag15 = false
      flag16 = true
      flag17 = false
      numberValue6 = numberValue6(flag13, flag14, networkId, networkId2, numberValue7, flag15, flag16, flag17)
      flag24 = numberValue6
      numberValue6 = CMG
      numberValue6 = numberValue6.getNetId
      flag13 = flag24
      flag14 = "CMG:impoundSuccess (2)"
      numberValue6 = numberValue6(flag13, flag14)
      arg1 = numberValue6
      numberValue6 = SetVehicleDoorsLocked
      flag13 = flag24
      flag14 = 2
      numberValue6(flag13, flag14)
      numberValue6 = SetNetworkIdCanMigrate
      flag13 = arg1
      flag14 = false
      numberValue6(flag13, flag14)
      numberValue6 = SetVehicleColours
      flag13 = flag24
      flag14 = arg5
      networkId = arg6
      numberValue6(flag13, flag14, networkId)
      numberValue6 = AttachEntityToEntity
      flag13 = flag24
      flag14 = flag7
      networkId = 20
      networkId2 = -0.5
      numberValue7 = -5.0
      flag15 = 1.0
      flag16 = 0.0
      flag17 = 0.0
      numberValue8 = 0.0
      flag19 = false
      flag20 = false
      flag21 = false
      flag22 = false
      numberValue9 = 20
      flag23 = true
      -- Beginner: Attach one entity to another entity.
      numberValue6(flag13, flag14, networkId, networkId2, numberValue7, flag15, flag16, flag17, numberValue8, flag19, flag20, flag21, flag22, numberValue9, flag23)
      numberValue6 = TriggerServerEvent
      flag13 = "cd4e53e76b"
      flag14 = arg1
      networkId = vector3Builder
      networkId2 = flag10
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "cd4e53e76b".
      numberValue6(flag13, flag14, networkId, networkId2)
      numberValue6 = TaskVehicleDriveToCoord
      flag13 = flag8
      flag14 = flag7
      networkId = cmgCall.driveToPosition
      networkId = networkId.x
      networkId2 = cmgCall.driveToPosition
      networkId2 = networkId2.y
      numberValue7 = cmgCall.driveToPosition
      numberValue7 = numberValue7.z
      flag15 = 15.0
      flag16 = 1.0
      flag17 = 1353720154
      numberValue8 = numberValue10
      flag19 = 5.0
      flag20 = 0.0
      numberValue6(flag13, flag14, networkId, networkId2, numberValue7, flag15, flag16, flag17, numberValue8, flag19, flag20)
      numberValue6 = SetEntityInvincible
      flag13 = flag24
      flag14 = true
      numberValue6(flag13, flag14)
      numberValue6 = SetEntityInvincible
      flag13 = flag7
      flag14 = true
      numberValue6(flag13, flag14)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f85a25a536".
textValue11(textValue, rageUiCall)
textValue11 = RegisterNetEvent
textValue = "3cfe51923c"
-- Beginner: this function handles network event "3cfe51923c".
function rageUiCall(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, arg8, flag24, workValue13, cmgCall2, dataTable2, numberValue, flag2, textValue4, flag3, flag4, flag5, flag6, numberValue2
  arg3 = CMG
  arg3 = arg3.getObjectId
  arg4 = arg1
  arg5 = "CMG:attachVehToTowCl (vehicle)"
  arg3 = arg3(arg4, arg5)
  arg4 = CMG
  arg4 = arg4.getObjectId
  arg5 = arg2
  arg6 = "CMG:attachVehToTowCl (towTruck)"
  arg4 = arg4(arg5, arg6)
  arg5 = AttachEntityToEntity
  arg6 = arg3
  arg7 = arg4
  arg8 = 20
  flag24 = -0.5
  workValue13 = -5.0
  cmgCall2 = 1.0
  dataTable2 = 0.0
  numberValue = 0.0
  flag2 = 0.0
  textValue4 = false
  flag3 = false
  flag4 = false
  flag5 = false
  flag6 = 20
  numberValue2 = true
  -- Beginner: Attach one entity to another entity.
  arg5(arg6, arg7, arg8, flag24, workValue13, cmgCall2, dataTable2, numberValue, flag2, textValue4, flag3, flag4, flag5, flag6, numberValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "3cfe51923c".
textValue11(textValue, rageUiCall)
function textValue11(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8
  arg2 = -1
  arg3 = GetVehicleMaxNumberOfPassengers
  arg4 = arg1
  arg3 = arg3(arg4)
  arg3 = arg3 - 1
  arg4 = 1
  for arg5 = arg2, arg3, arg4 do
    arg6 = IsVehicleSeatFree
    arg7 = arg1
    arg8 = arg5
    arg6 = arg6(arg7, arg8)
    if not arg6 then
      arg6 = true
      return arg6
    end
  end
  arg2 = false
  return arg2
end
textValue = CMG
function rageUiCall(arg1, arg2, arg3, arg4, arg5)
  local arg6, arg7, arg8, flag24, workValue13, cmgCall2, dataTable2, numberValue, flag2, textValue4, flag3, flag4
  arg6 = CMG
  arg6 = arg6.getVehicleIdFromModel
  arg7 = arg2
  arg6 = arg6(arg7)
  arg7 = textValue11
  arg8 = arg4
  arg7 = arg7(arg8)
  if arg7 then
    arg7 = CMG
    arg7 = arg7.notifyPicture
    arg8 = "polnotification"
    flag24 = "notification"
    workValue13 = "The vehicle cannot be impounded with a person inside."
    cmgCall2 = "Metropolitan Police"
    dataTable2 = "Impound"
    numberValue = nil
    flag2 = nil
    arg7(arg8, flag24, workValue13, cmgCall2, dataTable2, numberValue, flag2)
    return
  end
  arg7 = tCMG
  arg7 = arg7.getVehicleInfos
  arg8 = arg4
  arg7 = arg7(arg8)
  if not arg7 then
    arg7 = 0
  end
  arg8 = GetVehicleClass
  flag24 = arg4
  arg8 = arg8(flag24)
  flag24 = 18 == arg8
  workValue13 = cmgCall.disallowedVehicleClasses
  workValue13 = workValue13[arg8]
  if workValue13 then
    workValue13 = CMG
    workValue13 = workValue13.notifyPicture
    cmgCall2 = "polnotification"
    dataTable2 = "notification"
    numberValue = "That vehicle is too large to be impounded."
    flag2 = "Metropolitan Police"
    textValue4 = "Impound"
    flag3 = nil
    flag4 = nil
    workValue13(cmgCall2, dataTable2, numberValue, flag2, textValue4, flag3, flag4)
  else
    workValue13 = TriggerServerEvent
    cmgCall2 = "0a61d49b9d"
    dataTable2 = arg1
    numberValue = arg6
    flag2 = arg3
    textValue4 = arg5
    flag3 = flag24
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0a61d49b9d".
    workValue13(cmgCall2, dataTable2, numberValue, flag2, textValue4, flag3)
    workValue13 = RageUI
    workValue13 = workValue13.Visible
    cmgCall2 = RMenu
    dataTable2 = cmgCall2
    cmgCall2 = cmgCall2.Get
    numberValue = "cmgimpound"
    flag2 = "reasons"
    -- Beginner: result below is menu.
    cmgCall2 = cmgCall2(dataTable2, numberValue, flag2)
    dataTable2 = true
    workValue13(cmgCall2, dataTable2)
  end
end
textValue.impoundVehicleOptions = rageUiCall
textValue = RegisterCommand
rageUiCall = "impound"
-- Beginner: this function is the command handler for "impound".
function rageUiCall2()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = CMG
  arg1 = arg1.hasClientPermission
  arg2 = "police.onduty.permission"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = RageUI
    arg1 = arg1.Visible
    arg2 = RMenu
    arg3 = arg2
    arg2 = arg2.Get
    arg4 = "cmgimpound"
    arg5 = "requestvehicle"
    -- Beginner: result below is menu.
    arg2 = arg2(arg3, arg4, arg5)
    arg3 = true
    arg1(arg2, arg3)
  end
end
textValue2 = false
-- Beginner: Register a chat/console command. Event/command: "impound".
textValue(rageUiCall, rageUiCall2, textValue2)
textValue = tCMG
function rageUiCall(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag24, workValue13
  arg2 = {}
  arg3 = pairs
  arg4 = arg1
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, arg8 in arg3, arg4, arg5, arg6 do
    flag24 = GetVehicleModelNumberOfSeats
    workValue13 = arg8
    flag24 = flag24(workValue13)
    arg2[arg8] = flag24
  end
  return arg2
end
textValue.getVehicleSeatAmountsFromList = rageUiCall
textValue = RegisterNetEvent
rageUiCall = "ddf87b5c68"
-- Beginner: this function handles network event "ddf87b5c68".
function rageUiCall2(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, arg8, flag24, workValue13, cmgCall2, dataTable2, numberValue, flag2, textValue4, flag3, flag4, flag5, flag6, numberValue2, numberValue3, numberValue4, numberValue5, flag7, flag8, vector3Builder, flag9, flag10, flag11
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = GetClosestVehicleNodeWithHeading
  arg4 = arg2.x
  arg5 = arg2.y
  arg6 = arg2.z
  arg7 = nil
  arg8 = 8
  flag24 = 8
  workValue13 = 8
  cmgCall2 = 8
  arg3, arg4, arg5 = arg3(arg4, arg5, arg6, arg7, arg8, flag24, workValue13, cmgCall2)
  arg6 = GetPointOnRoadSide
  arg7 = arg2.x
  arg8 = arg2.y
  flag24 = arg2.z
  workValue13 = 0.0
  arg6, arg7 = arg6(arg7, arg8, flag24, workValue13)
  arg8 = GetNthClosestVehicleNode
  flag24 = arg2.x
  workValue13 = arg2.y
  cmgCall2 = arg2.z
  dataTable2 = 15
  arg8, flag24 = arg8(flag24, workValue13, cmgCall2, dataTable2)
  workValue13 = vector3
  cmgCall2 = 0.0
  dataTable2 = 0.0
  numberValue = 0.0
  workValue13 = workValue13(cmgCall2, dataTable2, numberValue)
  if flag24 ~= workValue13 then
    workValue13 = vector3
    cmgCall2 = 0.0
    dataTable2 = 0.0
    numberValue = 0.0
    workValue13 = workValue13(cmgCall2, dataTable2, numberValue)
    if arg7 ~= workValue13 then
      goto flow_label_41
    end
  end
  return
  ::flow_label_41::
  workValue13 = CMG
  workValue13 = workValue13.loadModel
  cmgCall2 = 1353720154
  -- Beginner: Request/load a GTA model before spawning or applying it.
  workValue13(cmgCall2)
  workValue13 = CMG
  workValue13 = workValue13.requestEntitySpawn
  cmgCall2 = "impound_request_flatbed"
  dataTable2 = flag24
  workValue13(cmgCall2, dataTable2)
  workValue13 = CMG
  workValue13 = workValue13.spawnVehicle
  cmgCall2 = 1353720154
  dataTable2 = flag24.x
  numberValue = flag24.y
  flag2 = flag24.z
  textValue4 = arg5
  flag3 = false
  flag4 = true
  flag5 = true
  workValue13 = workValue13(cmgCall2, dataTable2, numberValue, flag2, textValue4, flag3, flag4, flag5)
  cmgCall2 = SetModelAsNoLongerNeeded
  dataTable2 = 1353720154
  cmgCall2(dataTable2)
  cmgCall2 = SetVehicleDoorsLocked
  dataTable2 = workValue13
  numberValue = 2
  cmgCall2(dataTable2, numberValue)
  cmgCall2 = SetEntityInvincible
  dataTable2 = workValue13
  numberValue = true
  cmgCall2(dataTable2, numberValue)
  cmgCall2 = AddBlipForEntity
  dataTable2 = workValue13
  -- Beginner: result below is blipHandle.
  cmgCall2 = cmgCall2(dataTable2)
  dataTable2 = SetBlipSprite
  numberValue = cmgCall2
  flag2 = 68
  dataTable2(numberValue, flag2)
  dataTable2 = SetBlipDisplay
  numberValue = cmgCall2
  flag2 = 4
  dataTable2(numberValue, flag2)
  dataTable2 = SetBlipScale
  numberValue = cmgCall2
  flag2 = 1.0
  dataTable2(numberValue, flag2)
  dataTable2 = SetBlipColour
  numberValue = cmgCall2
  flag2 = 5
  dataTable2(numberValue, flag2)
  dataTable2 = SetBlipAsShortRange
  numberValue = cmgCall2
  flag2 = true
  dataTable2(numberValue, flag2)
  dataTable2 = CMG
  dataTable2 = dataTable2.loadModel
  numberValue = -1760377969
  -- Beginner: Request/load a GTA model before spawning or applying it.
  dataTable2(numberValue)
  dataTable2 = CMG
  dataTable2 = dataTable2.requestEntitySpawn
  numberValue = "impound_request_ped"
  flag2 = flag24
  dataTable2(numberValue, flag2)
  dataTable2 = CreatePedInsideVehicle
  numberValue = workValue13
  flag2 = 1
  textValue4 = -1760377969
  flag3 = -1
  flag4 = true
  flag5 = false
  dataTable2 = dataTable2(numberValue, flag2, textValue4, flag3, flag4, flag5)
  numberValue = SetModelAsNoLongerNeeded
  flag2 = -1760377969
  numberValue(flag2)
  numberValue = SetEntityInvincible
  flag2 = dataTable2
  textValue4 = true
  numberValue(flag2, textValue4)
  numberValue = CMG
  numberValue = numberValue.loadModel
  flag2 = arg1
  -- Beginner: Request/load a GTA model before spawning or applying it.
  numberValue(flag2)
  numberValue = CMG
  numberValue = numberValue.requestEntitySpawn
  flag2 = "impound_request_vehicle"
  textValue4 = flag24
  numberValue(flag2, textValue4)
  numberValue = CMG
  numberValue = numberValue.spawnVehicle
  flag2 = arg1
  textValue4 = flag24.x
  flag3 = flag24.y
  flag4 = flag24.z
  flag5 = GetEntityHeading
  flag6 = workValue13
  -- Beginner: result below is heading.
  flag5 = flag5(flag6)
  flag6 = false
  numberValue2 = true
  numberValue3 = false
  numberValue = numberValue(flag2, textValue4, flag3, flag4, flag5, flag6, numberValue2, numberValue3)
  flag2 = SetModelAsNoLongerNeeded
  textValue4 = arg1
  flag2(textValue4)
  flag2 = AttachEntityToEntity
  textValue4 = numberValue
  flag3 = workValue13
  flag4 = 20
  flag5 = -0.5
  flag6 = -5.0
  numberValue2 = 1.0
  numberValue3 = 0.0
  numberValue4 = 0.0
  numberValue5 = 0.0
  flag7 = false
  flag8 = false
  vector3Builder = false
  flag9 = false
  flag10 = 20
  flag11 = true
  -- Beginner: Attach one entity to another entity.
  flag2(textValue4, flag3, flag4, flag5, flag6, numberValue2, numberValue3, numberValue4, numberValue5, flag7, flag8, vector3Builder, flag9, flag10, flag11)
  flag2 = SetEntityInvincible
  textValue4 = numberValue
  flag3 = true
  flag2(textValue4, flag3)
  flag2 = TaskVehicleDriveToCoord
  textValue4 = dataTable2
  flag3 = workValue13
  flag4 = arg7.x
  flag5 = arg7.y
  flag6 = arg7.z
  numberValue2 = 15.0
  numberValue3 = 1.0
  numberValue4 = 1353720154
  numberValue5 = numberValue10
  flag7 = 5.0
  flag8 = 0.0
  flag2(textValue4, flag3, flag4, flag5, flag6, numberValue2, numberValue3, numberValue4, numberValue5, flag7, flag8)
  flag2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  flag2 = flag2()
  while true do
    textValue4 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    textValue4 = textValue4()
    textValue4 = textValue4 - flag2
    flag3 = 5000
    if not (textValue4 < flag3) then
      break
    end
    textValue4 = NetworkGetNetworkIdFromEntity
    flag3 = workValue13
    textValue4 = textValue4(flag3)
    flag3 = NetworkGetNetworkIdFromEntity
    flag4 = dataTable2
    flag3 = flag3(flag4)
    flag4 = NetworkGetNetworkIdFromEntity
    flag5 = numberValue
    flag4 = flag4(flag5)
    if 0 ~= textValue4 and 0 ~= flag3 and 0 ~= flag4 then
      flag5 = TriggerServerEvent
      flag6 = "6d0044938f"
      numberValue2 = textValue4
      numberValue3 = flag3
      numberValue4 = flag4
      numberValue5 = arg7
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6d0044938f".
      flag5(flag6, numberValue2, numberValue3, numberValue4, numberValue5)
      return
    end
    flag5 = Citizen
    flag5 = flag5.Wait
    flag6 = 0
    flag5(flag6)
  end
  textValue4 = DeleteEntity
  flag3 = workValue13
  -- Beginner: Delete a GTA entity.
  textValue4(flag3)
  textValue4 = DeleteEntity
  flag3 = dataTable2
  textValue4(flag3)
  textValue4 = DeleteEntity
  flag3 = numberValue
  -- Beginner: Delete a GTA entity.
  textValue4(flag3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ddf87b5c68".
textValue(rageUiCall, rageUiCall2)
textValue = RegisterNetEvent
rageUiCall = "09c0273fe4"
-- Beginner: this function handles network event "09c0273fe4".
function rageUiCall2(arg1, arg2, arg3)
  local arg4, arg5, arg6, arg7, arg8, flag24, workValue13, cmgCall2, dataTable2, numberValue, flag2, textValue4
  -- Beginner: this function handles network event "09c0273fe4".
  function arg4(arg12, arg22)
    local workValue8, flag18, rageUiCall3
    if 0 ~= arg12 then
      workValue8 = DoesEntityExist
      flag18 = arg12
      workValue8 = workValue8(flag18)
      if workValue8 then
        goto flow_label_10
      end
    end
    workValue8 = false
    return workValue8
    ::flow_label_10::
    workValue8 = NetworkRequestControlOfEntity
    flag18 = arg12
    workValue8(flag18)
    workValue8 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    workValue8 = workValue8()
    workValue8 = workValue8 + arg22
    while true do
      flag18 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      flag18 = flag18()
      if not (workValue8 > flag18) then
        break
      end
      flag18 = NetworkHasControlOfEntity
      rageUiCall3 = arg12
      flag18 = flag18(rageUiCall3)
      if flag18 then
        break
      end
      flag18 = NetworkRequestControlOfEntity
      rageUiCall3 = arg12
      flag18(rageUiCall3)
      flag18 = Citizen
      flag18 = flag18.Wait
      rageUiCall3 = 0
      flag18(rageUiCall3)
    end
    flag18 = NetworkHasControlOfEntity
    rageUiCall3 = arg12
    return flag18(rageUiCall3)
  end
  arg5 = 0
  arg6 = NetworkDoesNetworkIdExist
  arg7 = arg2
  arg6 = arg6(arg7)
  if arg6 then
    arg6 = NetworkDoesEntityExistWithNetworkId
    arg7 = arg2
    arg6 = arg6(arg7)
    if arg6 then
      arg6 = NetworkGetEntityFromNetworkId
      arg7 = arg2
      arg6 = arg6(arg7)
      arg5 = arg6
    end
  end
  if 0 ~= arg5 then
    arg6 = arg4
    arg7 = arg5
    arg8 = 1500
    arg6(arg7, arg8)
    arg6 = NetworkHasControlOfEntity
    arg7 = arg5
    arg6 = arg6(arg7)
    if arg6 then
      arg6 = DetachEntity
      arg7 = arg5
      arg8 = true
      flag24 = true
      arg6(arg7, arg8, flag24)
      arg6 = SetEntityCoordsNoOffset
      arg7 = arg5
      arg8 = arg3.x
      flag24 = arg3.y
      workValue13 = arg3.z
      cmgCall2 = true
      dataTable2 = false
      numberValue = false
      -- Beginner: Move/teleport an entity to new coordinates.
      arg6(arg7, arg8, flag24, workValue13, cmgCall2, dataTable2, numberValue)
      arg6 = pairs
      arg7 = CMG
      arg7 = arg7.getAllVehicles
      arg7, arg8, flag24, workValue13, cmgCall2, dataTable2, numberValue, flag2, textValue4 = arg7()
      arg6, arg7, arg8, flag24 = arg6(arg7, arg8, flag24, workValue13, cmgCall2, dataTable2, numberValue, flag2, textValue4)
      for workValue13, cmgCall2 in arg6, arg7, arg8, flag24 do
        dataTable2 = SetEntityNoCollisionEntity
        numberValue = arg5
        flag2 = cmgCall2
        textValue4 = false
        dataTable2(numberValue, flag2, textValue4)
      end
      arg6 = Wait
      arg7 = 2000
      arg6(arg7)
      arg6 = pairs
      arg7 = CMG
      arg7 = arg7.getAllVehicles
      arg7, arg8, flag24, workValue13, cmgCall2, dataTable2, numberValue, flag2, textValue4 = arg7()
      arg6, arg7, arg8, flag24 = arg6(arg7, arg8, flag24, workValue13, cmgCall2, dataTable2, numberValue, flag2, textValue4)
      for workValue13, cmgCall2 in arg6, arg7, arg8, flag24 do
        dataTable2 = SetEntityNoCollisionEntity
        numberValue = arg5
        flag2 = cmgCall2
        textValue4 = true
        dataTable2(numberValue, flag2, textValue4)
      end
      arg6 = SetVehicleFixed
      arg7 = arg5
      arg6(arg7)
    end
  end
  arg6 = NetworkDoesNetworkIdExist
  arg7 = arg1
  arg6 = arg6(arg7)
  if arg6 then
    arg6 = NetworkDoesEntityExistWithNetworkId
    arg7 = arg1
    arg6 = arg6(arg7)
    if arg6 then
      arg6 = NetworkGetEntityFromNetworkId
      arg7 = arg1
      arg6 = arg6(arg7)
      if 0 ~= arg6 then
        arg7 = arg4
        arg8 = arg6
        flag24 = 800
        arg7(arg8, flag24)
        arg7 = NetworkHasControlOfEntity
        arg8 = arg6
        arg7 = arg7(arg8)
        if arg7 then
          arg7 = GetVehiclePedIsUsing
          arg8 = arg6
          arg7 = arg7(arg8)
          if 0 ~= arg7 then
            arg8 = TaskVehicleDriveWander
            flag24 = arg6
            workValue13 = arg7
            cmgCall2 = 15.0
            dataTable2 = 786603
            arg8(flag24, workValue13, cmgCall2, dataTable2)
          end
        end
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "09c0273fe4".
textValue(rageUiCall, rageUiCall2)