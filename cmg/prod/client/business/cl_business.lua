--[[
    LEVEL 1 BEGINNER GUIDE — Business
    ======================================

    File: cmg/prod/client/business/cl_business.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: business gameplay and business job logic, specifically the Business feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 95
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
local cmgCall, textValue6, numberValue10, numberValue16, workValue14, workValue18, workValue20, workValue21, workValue22, workValue23, workValue, workValue2, workValue3, workValue4, workValue5, dataTable2, dataTable4, workValue7, dataTable5, dataTable6, dataTable7, workValue8, textValue7, textValue8, rageUiCall, textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10, textValue11, cmgCall4, textValue12, workValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, dataTable10, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, workValue11, workValue12, workValue13, workValue15, workValue16, eventRegistration, textValue14, workValue17
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue6 = "cfg/cfg_business"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue6)
textValue6 = 93
numberValue10 = 2
numberValue16 = 1.3
workValue14 = nil
workValue18 = nil
workValue20 = nil
workValue21 = nil
workValue22 = nil
workValue23 = nil
workValue = nil
workValue2 = nil
workValue3 = nil
workValue4 = nil
workValue5 = nil
dataTable2 = {}
dataTable4 = {}
workValue7 = nil
dataTable5 = {}
dataTable6 = {}
dataTable7 = {}
workValue8 = RMenu
workValue8 = workValue8.Add
textValue7 = "business"
textValue8 = "marker"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue9 = ""
cmgCall3 = "~b~CMG Business"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "cmg_marketui"
textValue10 = "cmg_marketui"
rageUiCall, textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10, textValue11, cmgCall4, textValue12, workValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, dataTable10, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, workValue11, workValue12, workValue13, workValue15, workValue16, eventRegistration, textValue14, workValue17 = rageUiCall(textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10)
workValue8(textValue7, textValue8, rageUiCall, textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10, textValue11, cmgCall4, textValue12, workValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, dataTable10, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, workValue11, workValue12, workValue13, workValue15, workValue16, eventRegistration, textValue14, workValue17)
workValue8 = RMenu
workValue8 = workValue8.Add
textValue7 = "business"
textValue8 = "purchase"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue9 = RMenu
cmgCall3 = textValue9
textValue9 = textValue9.Get
rageUiCall2 = "business"
rageUiCall3 = "marker"
-- Beginner: result below is menu.
textValue9 = textValue9(cmgCall3, rageUiCall2, rageUiCall3)
cmgCall3 = ""
rageUiCall2 = "~b~CMG Business"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue10 = "cmg_marketui"
textValue11 = "cmg_marketui"
rageUiCall, textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10, textValue11, cmgCall4, textValue12, workValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, dataTable10, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, workValue11, workValue12, workValue13, workValue15, workValue16, eventRegistration, textValue14, workValue17 = rageUiCall(textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10, textValue11)
workValue8(textValue7, textValue8, rageUiCall, textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10, textValue11, cmgCall4, textValue12, workValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, dataTable10, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, workValue11, workValue12, workValue13, workValue15, workValue16, eventRegistration, textValue14, workValue17)
workValue8 = RMenu
workValue8 = workValue8.Add
textValue7 = "business"
textValue8 = "edititemprices"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue9 = RMenu
cmgCall3 = textValue9
textValue9 = textValue9.Get
rageUiCall2 = "business"
rageUiCall3 = "marker"
-- Beginner: result below is menu.
textValue9 = textValue9(cmgCall3, rageUiCall2, rageUiCall3)
cmgCall3 = ""
rageUiCall2 = "~b~CMG Business"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue10 = "cmg_marketui"
textValue11 = "cmg_marketui"
rageUiCall, textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10, textValue11, cmgCall4, textValue12, workValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, dataTable10, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, workValue11, workValue12, workValue13, workValue15, workValue16, eventRegistration, textValue14, workValue17 = rageUiCall(textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10, textValue11)
workValue8(textValue7, textValue8, rageUiCall, textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10, textValue11, cmgCall4, textValue12, workValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, dataTable10, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, workValue11, workValue12, workValue13, workValue15, workValue16, eventRegistration, textValue14, workValue17)
workValue8 = RMenu
workValue8 = workValue8.Add
textValue7 = "business"
textValue8 = "viewusers"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateSubMenu
textValue9 = RMenu
cmgCall3 = textValue9
textValue9 = textValue9.Get
rageUiCall2 = "business"
rageUiCall3 = "marker"
-- Beginner: result below is menu.
textValue9 = textValue9(cmgCall3, rageUiCall2, rageUiCall3)
cmgCall3 = ""
rageUiCall2 = "~b~CMG Business"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue10 = "cmg_marketui"
textValue11 = "cmg_marketui"
rageUiCall, textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10, textValue11, cmgCall4, textValue12, workValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, dataTable10, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, workValue11, workValue12, workValue13, workValue15, workValue16, eventRegistration, textValue14, workValue17 = rageUiCall(textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10, textValue11)
workValue8(textValue7, textValue8, rageUiCall, textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10, textValue11, cmgCall4, textValue12, workValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, dataTable10, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, workValue11, workValue12, workValue13, workValue15, workValue16, eventRegistration, textValue14, workValue17)
workValue8 = RMenu
workValue8 = workValue8.Add
textValue7 = "business"
textValue8 = "menu"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue9 = ""
cmgCall3 = "~b~CMG Business"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "cmg_marketui"
textValue10 = "cmg_marketui"
rageUiCall, textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10, textValue11, cmgCall4, textValue12, workValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, dataTable10, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, workValue11, workValue12, workValue13, workValue15, workValue16, eventRegistration, textValue14, workValue17 = rageUiCall(textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10)
workValue8(textValue7, textValue8, rageUiCall, textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10, textValue11, cmgCall4, textValue12, workValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, dataTable10, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, workValue11, workValue12, workValue13, workValue15, workValue16, eventRegistration, textValue14, workValue17)
workValue8 = RMenu
workValue8 = workValue8.Add
textValue7 = "business"
textValue8 = "employees"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue9 = ""
cmgCall3 = "~b~CMG Business"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall4 = "cmg_marketui"
textValue10 = "cmg_marketui"
rageUiCall, textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10, textValue11, cmgCall4, textValue12, workValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, dataTable10, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, workValue11, workValue12, workValue13, workValue15, workValue16, eventRegistration, textValue14, workValue17 = rageUiCall(textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10)
workValue8(textValue7, textValue8, rageUiCall, textValue9, cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4, textValue10, textValue11, cmgCall4, textValue12, workValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, dataTable10, numberValue17, numberValue18, numberValue19, numberValue20, numberValue21, numberValue22, workValue11, workValue12, workValue13, workValue15, workValue16, eventRegistration, textValue14, workValue17)
workValue8 = {}
textValue7 = "1 Week"
textValue8 = "2 Weeks"
rageUiCall = "3 Weeks"
textValue9 = "4 Weeks"
workValue8[1] = textValue7
workValue8[2] = textValue8
workValue8[3] = rageUiCall
workValue8[4] = textValue9
textValue7 = {}
textValue8 = 1
rageUiCall = 2
textValue9 = 3
cmgCall3 = 4
textValue7[1] = textValue8
textValue7[2] = rageUiCall
textValue7[3] = textValue9
textValue7[4] = cmgCall3
textValue8 = 1
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateWhile
textValue9 = 1.0
cmgCall3 = RMenu
rageUiCall2 = cmgCall3
cmgCall3 = cmgCall3.Get
rageUiCall3 = "business"
rageUiCall4 = "marker"
-- Beginner: result below is menu.
cmgCall3 = cmgCall3(rageUiCall2, rageUiCall3, rageUiCall4)
rageUiCall2 = nil

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: none) ===
function rageUiCall3()
  local arg1, arg2, arg3, arg4, arg5, textValue15
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "business"
  arg5 = "marker"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: none) ===
  function textValue15()
    local arg12, cmgCall2, workValue9, dataTable9, flag4, flag5, rageUiCall5, textValue18, textValue20, dataTable11, flag, dataTable, textValue, stringHelper, textValue3, textValue4
    arg12 = workValue5
    if arg12 then
      arg12 = workValue5.ownerId
      if arg12 then
        arg12 = workValue5.ownerId
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.getClientUserId
        -- Beginner: result below is userId.
        cmgCall2 = cmgCall2()
        if arg12 == cmgCall2 then
          arg12 = RageUI
          arg12 = arg12.Separator
          cmgCall2 = "~y~You are the owner of "
          workValue9 = workValue4
          cmgCall2 = cmgCall2 .. workValue9
          arg12(cmgCall2)
          arg12 = RageUI
          arg12 = arg12.Separator
          cmgCall2 = "Options"
          arg12(cmgCall2)
          arg12 = RageUI
          arg12 = arg12.ButtonWithStyle
          cmgCall2 = "~g~Manage Employees"
          workValue9 = nil
          dataTable9 = {}
          dataTable9.RightLabel = "\226\134\146\226\134\146\226\134\146"
          flag4 = true

          -- === HELPER FUNCTION (decompiler name: flag5; parameters: none) ===
          function flag5()
            local arg13, arg22
          end
          rageUiCall5 = RMenu
          textValue18 = rageUiCall5
          rageUiCall5 = rageUiCall5.Get
          textValue20 = "business"
          dataTable11 = "viewusers"
          rageUiCall5, textValue18, textValue20, dataTable11, flag, dataTable, textValue, stringHelper, textValue3, textValue4 = rageUiCall5(textValue18, textValue20, dataTable11)
          -- Beginner: Draw a selectable RageUI menu button.
          arg12(cmgCall2, workValue9, dataTable9, flag4, flag5, rageUiCall5, textValue18, textValue20, dataTable11, flag, dataTable, textValue, stringHelper, textValue3, textValue4)
          arg12 = pairs
          cmgCall2 = cmgCall.locations
          workValue9 = workValue4
          cmgCall2 = cmgCall2[workValue9]
          cmgCall2 = cmgCall2.jobs
          arg12, cmgCall2, workValue9, dataTable9 = arg12(cmgCall2)
          for flag4, flag5 in arg12, cmgCall2, workValue9, dataTable9 do
            rageUiCall5 = flag5.jobType
            if "waiter" == rageUiCall5 then
              rageUiCall5 = RageUI
              rageUiCall5 = rageUiCall5.ButtonWithStyle
              textValue18 = "~y~Edit Item Prices"
              textValue20 = nil
              dataTable11 = {}
              dataTable11.RightLabel = "\226\134\146\226\134\146\226\134\146"
              flag = true

              -- === HELPER FUNCTION (decompiler name: dataTable; parameters: arg13, arg22, arg32) ===
              function dataTable(arg13, arg22, arg32)
                local arg42, textValue13, workValue19
                if arg32 then
                  arg42 = TriggerServerEvent
                  textValue13 = "e76e0858eb"
                  workValue19 = workValue4
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e76e0858eb".
                  arg42(textValue13, workValue19)
                end
              end
              textValue = RMenu
              stringHelper = textValue
              textValue = textValue.Get
              textValue3 = "business"
              textValue4 = "edititemprices"
              textValue, stringHelper, textValue3, textValue4 = textValue(stringHelper, textValue3, textValue4)
              -- Beginner: Draw a selectable RageUI menu button.
              rageUiCall5(textValue18, textValue20, dataTable11, flag, dataTable, textValue, stringHelper, textValue3, textValue4)
              break
            end
          end
          arg12 = RageUI
          arg12 = arg12.ButtonWithStyle
          cmgCall2 = "~r~Dissolve Business"
          workValue9 = "Immediately closes the business with no money returned."
          dataTable9 = {}
          dataTable9.RightLabel = "\226\134\146\226\134\146\226\134\146"
          flag4 = true

          -- === HELPER FUNCTION (decompiler name: flag5; parameters: arg13, arg22, arg32) ===
          function flag5(arg13, arg22, arg32)
            local arg42, textValue13, workValue19
            if arg32 then
              arg42 = TriggerServerEvent
              textValue13 = "6b1c458600"
              workValue19 = workValue4
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6b1c458600".
              arg42(textValue13, workValue19)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          arg12(cmgCall2, workValue9, dataTable9, flag4, flag5)
          arg12 = RageUI
          arg12 = arg12.Separator
          cmgCall2 = "~y~Cash Stored: \194\163"
          workValue9 = getMoneyStringFormatted
          dataTable9 = workValue5.totalMoneyDisplay
          workValue9 = workValue9(dataTable9)
          cmgCall2 = cmgCall2 .. workValue9
          arg12(cmgCall2)
          arg12 = RageUI
          arg12 = arg12.ButtonWithStyle
          cmgCall2 = "Withdraw Cash"
          workValue9 = ""
          dataTable9 = {}
          dataTable9.RightLabel = "\226\134\146\226\134\146\226\134\146"
          flag4 = workValue5.totalMoneyDisplay
          flag4 = flag4 > 0

          -- === HELPER FUNCTION (decompiler name: flag5; parameters: arg13, arg22, arg32) ===
          function flag5(arg13, arg22, arg32)
            local arg42, textValue13, workValue19
            if arg32 then
              arg42 = TriggerServerEvent
              textValue13 = "3a86b10cb1"
              workValue19 = workValue4
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a86b10cb1".
              arg42(textValue13, workValue19)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          arg12(cmgCall2, workValue9, dataTable9, flag4, flag5)
        else
          arg12 = workValue5.users
          cmgCall2 = CMG
          cmgCall2 = cmgCall2.getClientUserId
          -- Beginner: result below is userId.
          cmgCall2 = cmgCall2()
          arg12 = arg12[cmgCall2]
          if arg12 then
            cmgCall2 = RageUI
            cmgCall2 = cmgCall2.Separator
            workValue9 = "~y~"
            dataTable9 = workValue4
            flag4 = " is owned by "
            flag5 = workValue5.ownerName
            rageUiCall5 = "."
            workValue9 = workValue9 .. dataTable9 .. flag4 .. flag5 .. rageUiCall5
            cmgCall2(workValue9)
            cmgCall2 = arg12.isManager
            if cmgCall2 then
              cmgCall2 = RageUI
              cmgCall2 = cmgCall2.ButtonWithStyle
              workValue9 = "~g~Manage Employees"
              dataTable9 = nil
              flag4 = {}
              flag4.RightLabel = "\226\134\146\226\134\146\226\134\146"
              flag5 = true

              -- === HELPER FUNCTION (decompiler name: rageUiCall5; parameters: none) ===
              function rageUiCall5()
                local arg13, arg22
              end
              textValue18 = RMenu
              textValue20 = textValue18
              textValue18 = textValue18.Get
              dataTable11 = "business"
              flag = "viewusers"
              textValue18, textValue20, dataTable11, flag, dataTable, textValue, stringHelper, textValue3, textValue4 = textValue18(textValue20, dataTable11, flag)
              -- Beginner: Draw a selectable RageUI menu button.
              cmgCall2(workValue9, dataTable9, flag4, flag5, rageUiCall5, textValue18, textValue20, dataTable11, flag, dataTable, textValue, stringHelper, textValue3, textValue4)
              cmgCall2 = RageUI
              cmgCall2 = cmgCall2.Separator
              workValue9 = "~y~You are a manager of the business."
              cmgCall2(workValue9)
            else
              cmgCall2 = RageUI
              cmgCall2 = cmgCall2.Separator
              workValue9 = "~y~You are an employee of the business."
              cmgCall2(workValue9)
            end
          else
            cmgCall2 = RageUI
            cmgCall2 = cmgCall2.Separator
            workValue9 = "~y~"
            dataTable9 = workValue4
            flag4 = " is owned by "
            flag5 = workValue5.ownerName
            rageUiCall5 = "."
            workValue9 = workValue9 .. dataTable9 .. flag4 .. flag5 .. rageUiCall5
            cmgCall2(workValue9)
            cmgCall2 = RageUI
            cmgCall2 = cmgCall2.Separator
            workValue9 = "~y~Contact them if you are interested in a job."
            cmgCall2(workValue9)
          end
        end
      else
        arg12 = RageUI
        arg12 = arg12.ButtonWithStyle
        cmgCall2 = "~y~Purchase Business"
        workValue9 = ""
        dataTable9 = {}
        dataTable9.RightLabel = "\226\134\146\226\134\146\226\134\146"
        flag4 = true

        -- === HELPER FUNCTION (decompiler name: flag5; parameters: none) ===
        function flag5()
          local arg13, arg22
        end
        rageUiCall5 = RMenu
        textValue18 = rageUiCall5
        rageUiCall5 = rageUiCall5.Get
        textValue20 = "business"
        dataTable11 = "purchase"
        rageUiCall5, textValue18, textValue20, dataTable11, flag, dataTable, textValue, stringHelper, textValue3, textValue4 = rageUiCall5(textValue18, textValue20, dataTable11)
        -- Beginner: Draw a selectable RageUI menu button.
        arg12(cmgCall2, workValue9, dataTable9, flag4, flag5, rageUiCall5, textValue18, textValue20, dataTable11, flag, dataTable, textValue, stringHelper, textValue3, textValue4)
      end
    end
  end
  arg1(arg2, arg3, arg4, arg5, textValue15)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "business"
  arg5 = "viewusers"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: none) ===
  function textValue15()
    local arg12, cmgCall2, workValue9, dataTable9, flag4, flag5, rageUiCall5, textValue18, textValue20, dataTable11, flag, dataTable, textValue, stringHelper, textValue3
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    cmgCall2 = "~y~Invite Person"
    workValue9 = nil
    dataTable9 = {}
    dataTable9.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag4 = true

    -- === HELPER FUNCTION (decompiler name: flag5; parameters: arg13, arg22, arg32) ===
    function flag5(arg13, arg22, arg32)
      local arg42, textValue13, workValue19
      if arg32 then
        arg42 = TriggerServerEvent
        textValue13 = "86c5f9a5d9"
        workValue19 = workValue4
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "86c5f9a5d9".
        arg42(textValue13, workValue19)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(cmgCall2, workValue9, dataTable9, flag4, flag5)
    arg12 = workValue5
    if arg12 then
      arg12 = workValue5.ownerId
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.getClientUserId
      -- Beginner: result below is userId.
      cmgCall2 = cmgCall2()
      arg12 = arg12 == cmgCall2
      cmgCall2 = pairs
      workValue9 = workValue5.users
      cmgCall2, workValue9, dataTable9, flag4 = cmgCall2(workValue9)
      for flag5, rageUiCall5 in cmgCall2, workValue9, dataTable9, flag4 do
        textValue18 = rageUiCall5.name
        textValue20 = workValue5.ownerId
        if flag5 == textValue20 then
          textValue20 = textValue18
          dataTable11 = " [Owner]"
          textValue20 = textValue20 .. dataTable11
          textValue18 = textValue20
        else
          textValue20 = rageUiCall5.isManager
          if textValue20 then
            textValue20 = textValue18
            dataTable11 = " [Manager]"
            textValue20 = textValue20 .. dataTable11
            textValue18 = textValue20
          end
        end
        textValue20 = RageUI
        textValue20 = textValue20.ButtonWithStyle
        dataTable11 = textValue18
        flag = ""
        dataTable = {}
        textValue = "PermID: "
        stringHelper = tostring
        textValue3 = flag5
        stringHelper = stringHelper(textValue3)
        textValue = textValue .. stringHelper
        dataTable.RightLabel = textValue
        textValue = true

        -- === HELPER FUNCTION: stringHelper(arg13, arg22, arg32) ===
        function stringHelper(arg13, arg22, arg32)
          local arg42, textValue13, workValue19, textValue17, textValue19
          if arg22 then
            arg42 = "Press ~INPUT_FRONTEND_ACCEPT~ to remove the user."
            textValue13 = arg12
            if textValue13 then
              textValue13 = arg42
              workValue19 = [[

Press ~INPUT_FRONTEND_X~ to ]]
              textValue17 = rageUiCall5.isManager
              if textValue17 then
                textValue17 = "demote"
                if textValue17 then
                  goto flow_label_16
                end
              end
              textValue17 = "promote"
              ::flow_label_16::
              textValue19 = " the user."
              textValue13 = textValue13 .. workValue19 .. textValue17 .. textValue19
              arg42 = textValue13
            end
            textValue13 = drawNativeNotification
            workValue19 = arg42
            -- Beginner: Show a GTA-style notification/help prompt.
            textValue13(workValue19)
          end
          if arg32 then
            arg42 = TriggerServerEvent
            textValue13 = "58871193a2"
            workValue19 = workValue4
            textValue17 = flag5
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "58871193a2".
            arg42(textValue13, workValue19, textValue17)
          end
          arg42 = arg12
          if arg42 then
            arg42 = DisableControlAction
            textValue13 = 0
            workValue19 = 203
            textValue17 = true
            arg42(textValue13, workValue19, textValue17)
            arg42 = IsDisabledControlJustPressed
            textValue13 = 0
            workValue19 = 203
            arg42 = arg42(textValue13, workValue19)
            if arg42 then
              arg42 = TriggerServerEvent
              textValue13 = "59bcded368"
              workValue19 = workValue4
              textValue17 = flag5
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "59bcded368".
              arg42(textValue13, workValue19, textValue17)
            end
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        textValue20(dataTable11, flag, dataTable, textValue, stringHelper)
      end
    end
  end
  arg1(arg2, arg3, arg4, arg5, textValue15)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "business"
  arg5 = "purchase"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: none) ===
  function textValue15()
    local arg12, cmgCall2, workValue9, dataTable9, flag4, flag5, rageUiCall5, textValue18, textValue20
    cmgCall2 = textValue8
    arg12 = textValue7
    arg12 = arg12[cmgCall2]
    cmgCall2 = RageUI
    cmgCall2 = cmgCall2.Separator
    workValue9 = "Business Cost \194\163"
    dataTable9 = getMoneyStringFormatted
    flag4 = cmgCall.weekCost
    flag4 = flag4 * arg12
    dataTable9 = dataTable9(flag4)
    workValue9 = workValue9 .. dataTable9
    cmgCall2(workValue9)
    cmgCall2 = RageUI
    cmgCall2 = cmgCall2.List
    workValue9 = "Weeks To Rent"
    dataTable9 = workValue8
    flag4 = textValue8
    flag5 = ""
    rageUiCall5 = {}
    textValue18 = true

    -- === HELPER FUNCTION (decompiler name: textValue20; parameters: arg13, arg22, arg32, arg42) ===
    function textValue20(arg13, arg22, arg32, arg42)
      textValue8 = arg42
    end
    -- Beginner: Draw a RageUI list selector.
    cmgCall2(workValue9, dataTable9, flag4, flag5, rageUiCall5, textValue18, textValue20)
    cmgCall2 = RageUI
    cmgCall2 = cmgCall2.ButtonWithStyle
    workValue9 = "~y~Confirm Purchase"
    dataTable9 = ""
    flag4 = {}
    flag4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag5 = true

    -- === HELPER FUNCTION (decompiler name: rageUiCall5; parameters: arg13, arg22, arg32) ===
    function rageUiCall5(arg13, arg22, arg32)
      local arg42, textValue13, workValue19, textValue17
      if arg32 then
        arg42 = TriggerServerEvent
        textValue13 = "5504a12141"
        workValue19 = workValue4
        textValue17 = arg12
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5504a12141".
        arg42(textValue13, workValue19, textValue17)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    cmgCall2(workValue9, dataTable9, flag4, flag5, rageUiCall5)
  end
  arg1(arg2, arg3, arg4, arg5, textValue15)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "business"
  arg5 = "edititemprices"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: none) ===
  function textValue15()
    local arg12, cmgCall2, workValue9, dataTable9, flag4, flag5, rageUiCall5, textValue18, textValue20, dataTable11, flag, dataTable, textValue, stringHelper, textValue3, textValue4, workValue6
    arg12 = workValue4
    if not arg12 then
      return
    end
    arg12 = cmgCall.locations
    cmgCall2 = workValue4
    arg12 = arg12[cmgCall2]
    cmgCall2 = nil
    workValue9 = pairs
    dataTable9 = arg12.jobs
    workValue9, dataTable9, flag4, flag5 = workValue9(dataTable9)
    for rageUiCall5, textValue18 in workValue9, dataTable9, flag4, flag5 do
      textValue20 = textValue18.jobType
      if "waiter" == textValue20 then
        cmgCall2 = textValue18
        break
      end
    end
    if cmgCall2 then
      workValue9 = pairs
      dataTable9 = cmgCall2.jobMetadata
      dataTable9 = dataTable9.sellableItems
      workValue9, dataTable9, flag4, flag5 = workValue9(dataTable9)
      for rageUiCall5, textValue18 in workValue9, dataTable9, flag4, flag5 do
        textValue20 = arg12.items
        textValue20 = textValue20[rageUiCall5]
        if textValue20 then
          dataTable11 = CMG
          dataTable11 = dataTable11.getBusinessPriceOverrides
          flag = workValue4
          dataTable11 = dataTable11(flag)
          dataTable11 = dataTable11[rageUiCall5]
          if not dataTable11 then
            dataTable11 = textValue18
          end
          flag = RageUI
          flag = flag.ButtonWithStyle
          dataTable = textValue20[1]
          textValue = "Minimum Price \194\163"
          stringHelper = getMoneyStringFormatted
          textValue3 = textValue18
          stringHelper = stringHelper(textValue3)
          textValue = textValue .. stringHelper
          stringHelper = {}
          textValue3 = "\194\163"
          textValue4 = getMoneyStringFormatted
          workValue6 = dataTable11
          textValue4 = textValue4(workValue6)
          textValue3 = textValue3 .. textValue4
          stringHelper.RightLabel = textValue3
          textValue3 = true

          -- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg13, arg22, arg32) ===
          function textValue4(arg13, arg22, arg32)
            local arg42, textValue13, workValue19, textValue17
            if arg32 then
              arg42 = TriggerServerEvent
              textValue13 = "12848977b5"
              workValue19 = workValue4
              textValue17 = rageUiCall5
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "12848977b5".
              arg42(textValue13, workValue19, textValue17)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          flag(dataTable, textValue, stringHelper, textValue3, textValue4)
        end
      end
    end
  end
  arg1(arg2, arg3, arg4, arg5, textValue15)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "business"
  arg5 = "menu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: none) ===
  function textValue15()
    local arg12, cmgCall2, workValue9, dataTable9, flag4, flag5, rageUiCall5, textValue18, textValue20, dataTable11, flag, dataTable, textValue, stringHelper, textValue3, textValue4, workValue6
    arg12 = nil
    cmgCall2 = workValue7
    if cmgCall2 then
      cmgCall2 = pairs
      workValue9 = workValue7.locationInfo
      workValue9 = workValue9.jobs
      cmgCall2, workValue9, dataTable9, flag4 = cmgCall2(workValue9)
      for flag5, rageUiCall5 in cmgCall2, workValue9, dataTable9, flag4 do
        textValue18 = rageUiCall5.jobType
        if "waiter" == textValue18 then
          arg12 = rageUiCall5
          break
        end
      end
    end
    cmgCall2 = {}
    if arg12 then
      workValue9 = workValue7
      if workValue9 then
        workValue9 = pairs
        dataTable9 = arg12.jobMetadata
        dataTable9 = dataTable9.sellableItems
        workValue9, dataTable9, flag4, flag5 = workValue9(dataTable9)
        for rageUiCall5, textValue18 in workValue9, dataTable9, flag4, flag5 do
          textValue20 = workValue7.locationInfo
          textValue20 = textValue20.items
          textValue20 = textValue20[rageUiCall5]
          if textValue20 then
            dataTable11 = CMG
            dataTable11 = dataTable11.getBusinessPriceOverrides
            flag = workValue7.businessName
            dataTable11 = dataTable11(flag)
            dataTable11 = dataTable11[rageUiCall5]
            if not dataTable11 then
              dataTable11 = textValue18
            end
            flag = table
            flag = flag.insert
            dataTable = cmgCall2
            textValue = {}
            textValue.localItemId = rageUiCall5
            stringHelper = textValue20[1]
            textValue.name = stringHelper
            textValue.price = dataTable11
            stringHelper = dataTable5
            stringHelper = stringHelper[rageUiCall5]
            if not stringHelper then
              stringHelper = false
            end
            textValue.inStock = stringHelper
            flag(dataTable, textValue)
          end
        end
      end
    end
    workValue9 = table
    workValue9 = workValue9.sort
    dataTable9 = cmgCall2

    -- === HELPER FUNCTION (decompiler name: flag4; parameters: arg13, arg22) ===
    function flag4(arg13, arg22)
      local arg32, arg42
      arg32 = arg13.name
      arg42 = arg22.name
      arg32 = arg32 < arg42
      return arg32
    end
    workValue9(dataTable9, flag4)
    workValue9 = pairs
    dataTable9 = cmgCall2
    workValue9, dataTable9, flag4, flag5 = workValue9(dataTable9)
    for rageUiCall5, textValue18 in workValue9, dataTable9, flag4, flag5 do
      textValue20 = textValue18.inStock
      if textValue20 then
        textValue20 = "~g~"
        if textValue20 then
          goto flow_label_78
        end
      end
      textValue20 = "~r~"
      ::flow_label_78::
      dataTable11 = textValue18.inStock
      if dataTable11 then
        dataTable11 = "Purchase this item"
        if dataTable11 then
          goto flow_label_85
        end
      end
      dataTable11 = "Out of stock"
      ::flow_label_85::
      flag = RageUI
      flag = flag.ButtonWithStyle
      dataTable = textValue20
      textValue = textValue18.name
      dataTable = dataTable .. textValue
      textValue = dataTable11
      stringHelper = {}
      textValue3 = "\194\163"
      textValue4 = getMoneyStringFormatted
      workValue6 = textValue18.price
      textValue4 = textValue4(workValue6)
      textValue3 = textValue3 .. textValue4
      stringHelper.RightLabel = textValue3
      textValue3 = textValue18.inStock

      -- === HELPER FUNCTION (decompiler name: textValue4; parameters: arg13, arg22, arg32) ===
      function textValue4(arg13, arg22, arg32)
        local arg42, textValue13, workValue19, textValue17
        if arg32 then
          arg42 = workValue7
          if arg42 then
            arg42 = TriggerServerEvent
            textValue13 = "67c8d1e23b"
            workValue19 = workValue7.businessName
            textValue17 = textValue18.localItemId
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "67c8d1e23b".
            arg42(textValue13, workValue19, textValue17)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      flag(dataTable, textValue, stringHelper, textValue3, textValue4)
    end
  end
  arg1(arg2, arg3, arg4, arg5, textValue15)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "business"
  arg5 = "employees"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, arg5)
  arg3 = true
  arg4 = false
  arg5 = true

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: none) ===
  function textValue15()
    local arg12, cmgCall2, workValue9, dataTable9, flag4, flag5, rageUiCall5, textValue18, textValue20, dataTable11, flag, dataTable
    arg12 = pairs
    cmgCall2 = dataTable7
    arg12, cmgCall2, workValue9, dataTable9 = arg12(cmgCall2)
    for flag4, flag5 in arg12, cmgCall2, workValue9, dataTable9 do
      rageUiCall5 = RageUI
      rageUiCall5 = rageUiCall5.ButtonWithStyle
      textValue18 = flag5.name
      textValue20 = ""
      dataTable11 = {}
      flag = flag5.jobName
      dataTable11.RightLabel = flag
      flag = true

      -- === HELPER FUNCTION (decompiler name: dataTable; parameters: none) ===
      function dataTable()
        local arg13, arg22
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall5(textValue18, textValue20, dataTable11, flag, dataTable)
    end
  end
  arg1(arg2, arg3, arg4, arg5, textValue15)
end
rageUiCall(textValue9, cmgCall3, rageUiCall2, rageUiCall3)

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: arg1) ===
function rageUiCall(arg1)
  local arg2, arg3, arg4, arg5, textValue15
  arg2 = arg1[1]
  workValue4 = arg2
  arg2 = TriggerServerEvent
  arg3 = "bb058c40b1"
  arg4 = arg1[1]
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bb058c40b1".
  arg2(arg3, arg4)
  arg2 = RageUI
  arg2 = arg2.Visible
  arg3 = RMenu
  arg4 = arg3
  arg3 = arg3.Get
  arg5 = "business"
  textValue15 = "marker"
  -- Beginner: result below is menu.
  arg3 = arg3(arg4, arg5, textValue15)
  arg4 = true
  arg2(arg3, arg4)
end

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: none) ===
function textValue9()
  local arg1, arg2
  arg1 = nil
  workValue4 = arg1
  arg1 = nil
  workValue5 = arg1
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
end
cmgCall3 = pairs
rageUiCall2 = cmgCall.locations
cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4 = cmgCall3(rageUiCall2)
for textValue10, textValue11 in cmgCall3, rageUiCall2, rageUiCall3, rageUiCall4 do
  cmgCall4 = CMG
  cmgCall4 = cmgCall4.createArea
  textValue12 = "business_"
  workValue10 = textValue10
  textValue12 = textValue12 .. workValue10
  workValue10 = textValue11.ownerMarker
  numberValue11 = 1.5
  numberValue12 = 3.0
  numberValue13 = rageUiCall
  numberValue14 = textValue9

  -- === HELPER FUNCTION (decompiler name: numberValue15; parameters: none) ===
  function numberValue15()
    local arg1, arg2
  end
  dataTable10 = {}
  numberValue17 = textValue10
  dataTable10[1] = numberValue17
  -- Beginner: Create an interaction area around a world position.
  cmgCall4(textValue12, workValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, dataTable10)
  cmgCall4 = tCMG
  cmgCall4 = cmgCall4.addMarker
  textValue12 = textValue11.ownerMarker
  textValue12 = textValue12.x
  workValue10 = textValue11.ownerMarker
  workValue10 = workValue10.y
  numberValue11 = textValue11.ownerMarker
  numberValue11 = numberValue11.z
  numberValue12 = 1.0
  numberValue13 = 1.0
  numberValue14 = 1.0
  numberValue15 = 255
  dataTable10 = 0
  numberValue17 = 0
  numberValue18 = 170
  numberValue19 = 50
  numberValue20 = 27
  -- Beginner: Create a world marker.
  cmgCall4(textValue12, workValue10, numberValue11, numberValue12, numberValue13, numberValue14, numberValue15, dataTable10, numberValue17, numberValue18, numberValue19, numberValue20)
  cmgCall4 = textValue11.doorAreaName
  if cmgCall4 then
    cmgCall4 = CMG
    cmgCall4 = cmgCall4.registerCanAccessGangDoorLocation
    textValue12 = textValue11.doorAreaName

    -- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
    function workValue10()
      local arg1, arg2
      arg2 = textValue10
      arg1 = dataTable6
      arg1 = arg1[arg2]
      if not arg1 then
        arg1 = false
      end
      return arg1
    end
    cmgCall4(textValue12, workValue10)
  end
end
cmgCall3 = RegisterNetEvent
rageUiCall2 = "018b28fa1e"
-- Beginner: this function handles network event "018b28fa1e".

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: arg1) ===
function rageUiCall3(arg1)
  local arg2
  dataTable6 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "018b28fa1e".
cmgCall3(rageUiCall2, rageUiCall3)
cmgCall3 = RegisterNetEvent
rageUiCall2 = "03b0ee5cda"
-- Beginner: this function handles network event "03b0ee5cda".

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: arg1) ===
function rageUiCall3(arg1)
  local arg2, arg3, arg4, arg5, textValue15, textValue16, stringHelper2, cmgCall5, cmgCall6, numberValue, numberValue2, numberValue3, numberValue4, textValue2, dataTable3, textValue5, flag2
  arg2 = pairs
  arg3 = cmgCall.locations
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for textValue15, textValue16 in arg2, arg3, arg4, arg5 do
    stringHelper2 = "business_open_"
    cmgCall5 = textValue15
    stringHelper2 = stringHelper2 .. cmgCall5
    cmgCall5 = arg1[textValue15]
    if cmgCall5 then
      cmgCall5 = textValue16.jobMarker
      cmgCall6 = tCMG
      cmgCall6 = cmgCall6.setNamedBlip
      numberValue = stringHelper2
      numberValue2 = cmgCall5.x
      numberValue3 = cmgCall5.y
      numberValue4 = cmgCall5.z
      textValue2 = textValue6
      dataTable3 = numberValue10
      textValue5 = textValue15
      flag2 = numberValue16
      cmgCall6(numberValue, numberValue2, numberValue3, numberValue4, textValue2, dataTable3, textValue5, flag2)
    else
      cmgCall5 = tCMG
      cmgCall5 = cmgCall5.removeNamedBlip
      cmgCall6 = stringHelper2
      cmgCall5(cmgCall6)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "03b0ee5cda".
cmgCall3(rageUiCall2, rageUiCall3)
cmgCall3 = RegisterNetEvent
rageUiCall2 = "7e14d0799b"
-- Beginner: this function handles network event "7e14d0799b".

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: arg1, arg2) ===
function rageUiCall3(arg1, arg2)
  local arg3
  arg3 = dataTable6
  arg3[arg1] = arg2
end
cmgCall3(rageUiCall2, rageUiCall3)
cmgCall3 = RegisterNetEvent
rageUiCall2 = "bb058c40b1"
-- Beginner: this function handles network event "bb058c40b1".

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: arg1) ===
function rageUiCall3(arg1)
  local arg2, arg3
  workValue5 = arg1
  if arg1 then
    arg2 = arg1.ownerId
    arg3 = CMG
    arg3 = arg3.getClientUserId
    -- Beginner: result below is userId.
    arg3 = arg3()
    if arg2 ~= arg3 then
      arg2 = arg1.users
      arg3 = CMG
      arg3 = arg3.getClientUserId
      -- Beginner: result below is userId.
      arg3 = arg3()
      arg2 = arg2[arg3]
      if not arg2 then
        goto flow_label_20
      end
    end
    arg2 = TriggerServerEvent
    arg3 = "e7a86c3e34"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e7a86c3e34".
    arg2(arg3)
  end
  ::flow_label_20::
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bb058c40b1".
cmgCall3(rageUiCall2, rageUiCall3)
cmgCall3 = RegisterNetEvent
rageUiCall2 = "ad32ced60b"
-- Beginner: this function handles network event "ad32ced60b".

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: none) ===
function rageUiCall3()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "e7a86c3e34"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e7a86c3e34".
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ad32ced60b".
cmgCall3(rageUiCall2, rageUiCall3)
-- Beginner: this function handles network event "ad32ced60b".

-- === HELPER FUNCTION (decompiler name: cmgCall3; parameters: none) ===
function cmgCall3()
  local arg1, arg2, arg3
  arg1 = TriggerServerEvent
  arg2 = "c195715473"
  arg3 = false
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c195715473".
  arg1(arg2, arg3)
end

-- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: none) ===
function rageUiCall2()
  local arg1, arg2
  arg1 = TriggerEvent
  arg2 = "2a70dddd80"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "2a70dddd80".
  arg1(arg2)
  arg1 = TriggerServerEvent
  arg2 = "72490db2b8"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "72490db2b8".
  arg1(arg2)
end

-- === HELPER FUNCTION (decompiler name: rageUiCall3; parameters: none) ===
function rageUiCall3()
  local arg1, arg2, arg3, arg4, arg5, textValue15, textValue16, stringHelper2, cmgCall5, cmgCall6, numberValue, numberValue2, numberValue3, numberValue4, textValue2, dataTable3, textValue5, flag2, numberValue5, flag3
  arg1 = {}
  workValue14 = arg1
  arg1 = cmgCall.locations
  arg2 = workValue18
  arg1 = arg1[arg2]
  if arg1 then
    arg1 = pairs
    arg2 = cmgCall.locations
    arg3 = workValue18
    arg2 = arg2[arg3]
    arg2 = arg2.inventoryPositions
    arg1, arg2, arg3, arg4 = arg1(arg2)
    for arg5, textValue15 in arg1, arg2, arg3, arg4 do
      textValue16 = "business_inventory_"
      stringHelper2 = tostring
      cmgCall5 = arg5
      stringHelper2 = stringHelper2(cmgCall5)
      textValue16 = textValue16 .. stringHelper2
      stringHelper2 = CMG
      stringHelper2 = stringHelper2.createArea
      cmgCall5 = textValue16
      cmgCall6 = textValue15
      numberValue = 1.25
      numberValue2 = 3.0
      numberValue3 = cmgCall3
      numberValue4 = rageUiCall2

      -- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
      function textValue2()
        local arg12, cmgCall2
      end
      dataTable3 = {}
      -- Beginner: Create an interaction area around a world position.
      stringHelper2(cmgCall5, cmgCall6, numberValue, numberValue2, numberValue3, numberValue4, textValue2, dataTable3)
      stringHelper2 = tCMG
      stringHelper2 = stringHelper2.addMarker
      cmgCall5 = textValue15.x
      cmgCall6 = textValue15.y
      numberValue = textValue15.z
      numberValue2 = 0.5
      numberValue3 = 0.5
      numberValue4 = 0.5
      textValue2 = 255
      dataTable3 = 0
      textValue5 = 0
      flag2 = 170
      numberValue5 = 50
      flag3 = 27
      stringHelper2 = stringHelper2(cmgCall5, cmgCall6, numberValue, numberValue2, numberValue3, numberValue4, textValue2, dataTable3, textValue5, flag2, numberValue5, flag3)
      cmgCall5 = table
      cmgCall5 = cmgCall5.insert
      cmgCall6 = workValue14
      numberValue = {}
      numberValue2 = textValue16
      numberValue3 = stringHelper2
      numberValue[1] = numberValue2
      numberValue[2] = numberValue3
      cmgCall5(cmgCall6, numberValue)
    end
  end
end
rageUiCall4 = CMG

-- === HELPER FUNCTION (decompiler name: textValue10; parameters: arg1, arg2) ===
function textValue10(arg1, arg2)
  return arg2
end
rageUiCall4.getBusinessItemId = textValue10
rageUiCall4 = CMG

-- === HELPER FUNCTION (decompiler name: textValue10; parameters: arg1, arg2) ===
function textValue10(arg1, arg2)
  local arg3, arg4, arg5, textValue15, textValue16
  arg3 = string
  arg3 = arg3.lower
  arg4 = string
  arg4 = arg4.gsub
  arg5 = arg1
  textValue15 = "%s+"
  textValue16 = "_"
  arg4, arg5, textValue15, textValue16 = arg4(arg5, textValue15, textValue16)
  arg3 = arg3(arg4, arg5, textValue15, textValue16)
  arg4 = "_"
  arg3 = arg3 .. arg4
  arg4 = string
  arg4 = arg4.sub
  arg5 = arg2
  textValue15 = 1
  textValue16 = #arg3
  arg4 = arg4(arg5, textValue15, textValue16)
  if arg4 == arg3 then
    arg4 = string
    arg4 = arg4.sub
    arg5 = arg2
    textValue15 = #arg3
    textValue15 = textValue15 + 1
    return arg4(arg5, textValue15)
  end
  return arg2
end
rageUiCall4.getBusinessLocalItemId = textValue10

-- === HELPER FUNCTION (decompiler name: rageUiCall4; parameters: arg1) ===
function rageUiCall4(arg1)
  local arg2, arg3, arg4
  arg2 = workValue18
  if not arg2 then
    arg2 = false
    return arg2
  end
  arg2 = CMG
  arg2 = arg2.getBusinessLocalItemId
  arg3 = workValue18
  arg4 = arg1
  arg2 = arg2(arg3, arg4)
  arg3 = cmgCall.locations
  arg4 = workValue18
  arg3 = arg3[arg4]
  arg3 = arg3.items
  arg3 = arg3[arg2]
  if arg3 then
    arg3 = true
    return arg3
  else
    arg3 = false
    return arg3
  end
end
textValue10 = RegisterNetEvent
textValue11 = "6caf35bab2"
-- Beginner: this function handles network event "6caf35bab2".

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1, arg2, arg3, arg4) ===
function cmgCall4(arg1, arg2, arg3, arg4)
  local arg5, textValue15, textValue16, stringHelper2, cmgCall5, cmgCall6, numberValue, numberValue2, numberValue3, numberValue4, textValue2, dataTable3, textValue5, flag2, numberValue5, flag3
  arg5 = cmgCall.locations
  arg5 = arg5[arg1]
  textValue15 = pairs
  textValue16 = arg5.jobs
  textValue15, textValue16, stringHelper2, cmgCall5 = textValue15(textValue16)
  for cmgCall6, numberValue in textValue15, textValue16, stringHelper2, cmgCall5 do
    numberValue2 = numberValue.jobType
    if numberValue2 == arg3 then
      workValue18 = arg1
      workValue20 = arg2
      numberValue2 = dataTable2
      numberValue2 = numberValue2[arg3]
      workValue21 = numberValue2
      numberValue2 = workValue21.initStage
      workValue = numberValue2
      workValue2 = arg4
      workValue3 = arg3
      numberValue2 = rageUiCall3
      numberValue2()
      numberValue2 = CMG
      numberValue2 = numberValue2.setInventoryBusinessCb
      numberValue3 = rageUiCall4
      numberValue2(numberValue3)
      numberValue2 = numberValue.jobMetadata
      workValue22 = numberValue2
      numberValue2 = {}
      workValue23 = numberValue2
      numberValue2 = CMG
      numberValue2 = numberValue2.getUserBusinessData
      numberValue2 = numberValue2()
      numberValue3 = assert
      numberValue4 = numberValue2
      textValue2 = "Expecting valid business data whilst trying to set working"
      numberValue3(numberValue4, textValue2)
      numberValue3 = workValue21.init
      if numberValue3 then
        numberValue3 = workValue21.init
        numberValue4 = numberValue2
        numberValue3(numberValue4)
      end
      numberValue3 = workValue21.stages
      numberValue4 = workValue
      numberValue3 = numberValue3[numberValue4]
      numberValue3 = numberValue3.init
      if numberValue3 then
        numberValue4 = numberValue3
        textValue2 = numberValue2
        numberValue4(textValue2)
      end
      numberValue4 = PlaySound
      textValue2 = -1
      dataTable3 = "CHECKPOINT_BEHIND"
      textValue5 = "HUD_MINI_GAME_SOUNDSET"
      flag2 = false
      numberValue5 = 0
      flag3 = true
      numberValue4(textValue2, dataTable3, textValue5, flag2, numberValue5, flag3)
      numberValue4 = CMG
      numberValue4 = numberValue4.initializeInstructionalJobScaleform
      textValue2 = workValue20
      dataTable3 = "You have started working, follow the instructions to fulfill your job."
      numberValue4(textValue2, dataTable3)
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6caf35bab2".
textValue10(textValue11, cmgCall4)

-- === HELPER FUNCTION (decompiler name: textValue10; parameters: none) ===
function textValue10()
  local arg1, arg2, arg3, arg4, arg5, textValue15, textValue16, stringHelper2
  arg1 = workValue14
  if arg1 then
    arg1 = pairs
    arg2 = workValue14
    arg1, arg2, arg3, arg4 = arg1(arg2)
    for arg5, textValue15 in arg1, arg2, arg3, arg4 do
      textValue16 = tCMG
      textValue16 = textValue16.removeArea
      stringHelper2 = textValue15[1]
      textValue16(stringHelper2)
      textValue16 = tCMG
      textValue16 = textValue16.removeMarker
      stringHelper2 = textValue15[2]
      textValue16(stringHelper2)
    end
  end
  arg1 = nil
  workValue14 = arg1
end
textValue11 = RegisterNetEvent
cmgCall4 = "458add671d"
-- Beginner: this function handles network event "458add671d".

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: none) ===
function textValue12()
  local arg1, arg2, arg3, arg4
  arg1 = workValue21
  if arg1 then
    arg1 = textValue10
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    arg1()
    arg1 = CMG
    arg1 = arg1.getUserBusinessData
    arg1 = arg1()
    arg2 = assert
    arg3 = arg1
    arg4 = "Expecting valid business data whilst trying to stop working"
    arg2(arg3, arg4)
    arg2 = workValue21.stages
    arg3 = workValue
    arg2 = arg2[arg3]
    arg2 = arg2.finish
    if arg2 then
      arg3 = arg2
      arg4 = arg1
      arg3(arg4)
    end
    arg3 = workValue21.finish
    if arg3 then
      arg3 = workValue21.finish
      arg4 = arg1
      arg3(arg4)
    end
    arg3 = nil
    workValue18 = arg3
    arg3 = nil
    workValue20 = arg3
    arg3 = nil
    workValue22 = arg3
    arg3 = nil
    workValue23 = arg3
    arg3 = nil
    workValue2 = arg3
    arg3 = nil
    workValue3 = arg3
    arg3 = nil
    workValue21 = arg3
    arg3 = CMG
    arg3 = arg3.setInventoryBusinessCb
    arg4 = nil
    arg3(arg4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "458add671d".
textValue11(cmgCall4, textValue12)
textValue11 = AddEventHandler
cmgCall4 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg1) ===
function textValue12(arg1)
  local arg2, arg3
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg2 == arg1 then
    arg2 = TriggerEvent
    arg3 = "458add671d"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "458add671d".
    arg2(arg3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
textValue11(cmgCall4, textValue12)

-- === HELPER FUNCTION (decompiler name: textValue11; parameters: none) ===
function textValue11()
  local arg1, arg2, arg3, arg4, arg5
  arg1 = workValue21
  if not arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.getUserBusinessData
  arg1 = arg1()
  if not arg1 then
    return
  end
  arg2 = workValue21.stages
  arg3 = workValue
  arg2 = arg2[arg3]
  arg3 = arg2.tick
  arg4 = arg1
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = arg2.finish
    if arg3 then
      arg3 = arg2.finish
      arg4 = arg1
      arg3(arg4)
    end
    arg3 = arg2.next
    workValue = arg3
    arg3 = workValue21.stages
    arg4 = workValue
    arg3 = arg3[arg4]
    arg3 = arg3.init
    if arg3 then
      arg4 = arg3
      arg5 = arg1
      arg4(arg5)
    end
  end
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.createThreadOnTick
textValue12 = textValue11
workValue10 = "Business Job Type Tick"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall4(textValue12, workValue10)
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg1, arg2, arg3, arg4, arg5) ===
function textValue12(arg1, arg2, arg3, arg4, arg5)
  local textValue15, textValue16
  textValue15 = dataTable2
  textValue16 = {}
  textValue16.init = arg2
  textValue16.initStage = arg3
  textValue16.stages = arg4
  textValue16.finish = arg5
  textValue15[arg1] = textValue16
end
cmgCall4.registerBusinessJob = textValue12
cmgCall4 = CMG

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg1) ===
function textValue12(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = workValue18
  if not arg2 then
    arg2 = nil
    return arg2
  end
  arg2 = cmgCall.locations
  arg3 = workValue18
  arg2 = arg2[arg3]
  if not arg2 then
    arg3 = nil
    return arg3
  end
  arg3 = false
  if arg1 then
    arg4 = workValue3
    arg3 = arg1 == arg4
  else
    arg3 = true
  end
  if not arg3 then
    arg4 = nil
    return arg4
  end
  arg4 = assert
  arg5 = workValue22
  arg4(arg5)
  arg4 = assert
  arg5 = workValue23
  arg4(arg5)
  arg4 = {}
  arg5 = workValue18
  arg4.name = arg5
  arg4.locationInfo = arg2
  arg5 = workValue22
  arg4.jobMetadata = arg5
  arg5 = workValue23
  arg4.jobInfo = arg5
  arg5 = workValue2
  if not arg5 then
    arg5 = {}
  end
  arg4.state = arg5
  return arg4
end
cmgCall4.getUserBusinessData = textValue12
cmgCall4 = RegisterNetEvent
textValue12 = "48d68977ee"
-- Beginner: this function handles network event "48d68977ee".

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1) ===
function workValue10(arg1)
  local arg2
  workValue2 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "48d68977ee".
cmgCall4(textValue12, workValue10)
cmgCall4 = RegisterNetEvent
textValue12 = "da8e8bb9ff"
-- Beginner: this function handles network event "da8e8bb9ff".

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: none) ===
function workValue10()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.setInventoryTransferDisabled
  arg2 = true
  arg1(arg2)
  while true do
    arg1 = CMG
    arg1 = arg1.isDrawingInventoryUI
    arg1 = arg1()
    if not arg1 then
      break
    end
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = CMG
  arg1 = arg1.setInventoryTransferDisabled
  arg2 = false
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "da8e8bb9ff".
cmgCall4(textValue12, workValue10)
cmgCall4 = RegisterNetEvent
textValue12 = "7eef379887"
-- Beginner: this function handles network event "7eef379887".

-- === HELPER FUNCTION (decompiler name: workValue10; parameters: arg1, arg2) ===
function workValue10(arg1, arg2)
  local arg3
  arg3 = dataTable4
  arg3[arg1] = arg2
end
cmgCall4(textValue12, workValue10)
cmgCall4 = CMG
-- Beginner: this function handles network event "7eef379887".

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: arg1) ===
function textValue12(arg1)
  local arg2
  arg2 = dataTable4
  arg2 = arg2[arg1]
  if not arg2 then
    arg2 = {}
  end
  return arg2
end
cmgCall4.getBusinessPriceOverrides = textValue12

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg1) ===
function cmgCall4(arg1)
  local arg2, arg3, arg4, arg5, textValue15
  arg2 = DisableControlAction
  arg3 = 0
  arg4 = 22
  arg5 = true
  arg2(arg3, arg4, arg5)
  arg2 = arg1.distance
  if arg2 > 1.0 then
    return
  end
  arg2 = drawNativeNotification
  arg3 = "Press ~INPUT_CONTEXT~ to view the menu"
  -- Beginner: Show a GTA-style notification/help prompt.
  arg2(arg3)
  arg2 = IsControlJustPressed
  arg3 = 0
  arg4 = 51
  arg2 = arg2(arg3, arg4)
  if arg2 then
    arg2 = RageUI
    arg2 = arg2.Visible
    arg3 = RMenu
    arg4 = arg3
    arg3 = arg3.Get
    arg5 = "business"
    textValue15 = "menu"
    -- Beginner: result below is menu.
    arg3 = arg3(arg4, arg5, textValue15)
    arg4 = true
    arg2(arg3, arg4)
    workValue7 = arg1
    arg2 = TriggerServerEvent
    arg3 = "e76e0858eb"
    arg4 = arg1.businessName
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e76e0858eb".
    arg2(arg3, arg4)
  end
end

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: none) ===
function textValue12()
  local arg1, arg2
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
end
workValue10 = Citizen
workValue10 = workValue10.CreateThread

-- === HELPER FUNCTION (decompiler name: numberValue11; parameters: none) ===
function numberValue11()
  local arg1, arg2, arg3, arg4, arg5, textValue15, textValue16, stringHelper2, cmgCall5, cmgCall6, numberValue, numberValue2, numberValue3, numberValue4, textValue2, dataTable3, textValue5, flag2, numberValue5, flag3, dataTable8, numberValue6, numberValue7, numberValue8, numberValue9
  arg1 = DecorRegister
  arg2 = "adf4399051"
  arg3 = 2
  arg1(arg2, arg3)
  arg1 = pairs
  arg2 = cmgCall.locations
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, textValue15 in arg1, arg2, arg3, arg4 do
    textValue16 = pairs
    stringHelper2 = textValue15.menuPositions
    textValue16, stringHelper2, cmgCall5, cmgCall6 = textValue16(stringHelper2)
    for numberValue, numberValue2 in textValue16, stringHelper2, cmgCall5, cmgCall6 do
      numberValue3 = tCMG
      numberValue3 = numberValue3.addMarker
      numberValue4 = numberValue2.x
      textValue2 = numberValue2.y
      dataTable3 = numberValue2.z
      dataTable3 = dataTable3 - 0.95
      textValue5 = 0.2
      flag2 = 0.2
      numberValue5 = 0.2
      flag3 = 255
      dataTable8 = 255
      numberValue6 = 0
      numberValue7 = 150
      numberValue8 = 25.0
      numberValue9 = 27
      -- Beginner: Create a world marker.
      numberValue3(numberValue4, textValue2, dataTable3, textValue5, flag2, numberValue5, flag3, dataTable8, numberValue6, numberValue7, numberValue8, numberValue9)
      numberValue3 = CMG
      numberValue3 = numberValue3.createArea
      numberValue4 = "business_menu_"
      textValue2 = arg5
      dataTable3 = "_"
      textValue5 = tostring
      flag2 = numberValue
      textValue5 = textValue5(flag2)
      numberValue4 = numberValue4 .. textValue2 .. dataTable3 .. textValue5
      textValue2 = numberValue2
      dataTable3 = 5.0
      textValue5 = 1.5

      -- === HELPER FUNCTION (decompiler name: flag2; parameters: none) ===
      function flag2()
        local arg12, cmgCall2
      end
      numberValue5 = textValue12
      flag3 = cmgCall4
      dataTable8 = {}
      dataTable8.businessName = arg5
      dataTable8.locationInfo = textValue15
      -- Beginner: Create an interaction area around a world position.
      numberValue3(numberValue4, textValue2, dataTable3, textValue5, flag2, numberValue5, flag3, dataTable8)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workValue10(numberValue11)
workValue10 = RegisterNetEvent
numberValue11 = "7902668e2b"
-- Beginner: this function handles network event "7902668e2b".

-- === HELPER FUNCTION (decompiler name: numberValue12; parameters: none) ===
function numberValue12()
  local arg1, arg2
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7902668e2b".
workValue10(numberValue11, numberValue12)
workValue10 = false
numberValue11 = nil
numberValue12 = nil
numberValue13 = nil
numberValue14 = nil
numberValue15 = nil
dataTable10 = nil
numberValue17 = nil
numberValue18 = nil
numberValue19 = nil
numberValue20 = 400
numberValue21 = 20.0
numberValue22 = 30000

-- === HELPER FUNCTION (decompiler name: workValue11; parameters: none) ===
function workValue11()
  local arg1, arg2, arg3, arg4
  arg1 = numberValue11
  if arg1 then
    arg1 = SetSwimMultiplierForPlayer
    arg2 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    arg2 = arg2()
    arg3 = 1.49
    arg1(arg2, arg3)
  end
  arg1 = numberValue12
  if arg1 then
    arg1 = SetRunSprintMultiplierForPlayer
    arg2 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    arg2 = arg2()
    arg3 = 1.49
    arg1(arg2, arg3)
  end
  arg1 = numberValue13
  if arg1 then
    arg1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg1 = arg1()
    arg2 = numberValue13.lastChange
    if arg2 then
      arg2 = numberValue13.lastChange
      arg2 = arg1 - arg2
      arg3 = numberValue22
      if not (arg2 > arg3) then
        goto flow_label_42
      end
    end
    arg2 = CMG
    arg2 = arg2.getRandomWalkStyle
    arg2 = arg2()
    if arg2 then
      arg3 = Citizen
      arg3 = arg3.CreateThread

      -- === HELPER FUNCTION: arg4() ===
      function arg4()
        local arg12, cmgCall2, workValue9, dataTable9
        arg12 = CMG
        arg12 = arg12.loadAnimDict
        cmgCall2 = arg2
        -- Beginner: Load a GTA animation dictionary before using it.
        arg12(cmgCall2)
        arg12 = SetPedMovementClipset
        cmgCall2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        cmgCall2 = cmgCall2()
        workValue9 = arg2
        dataTable9 = 0.2
        arg12(cmgCall2, workValue9, dataTable9)
        arg12 = RemoveAnimSet
        cmgCall2 = arg2
        arg12(cmgCall2)
        arg12 = RemoveAnimDict
        cmgCall2 = arg2
        arg12(cmgCall2)
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      arg3(arg4)
      numberValue13.lastChange = arg1
    end
  end
  ::flow_label_42::
  arg1 = numberValue14
  if arg1 then
    arg1 = DecorSetBool
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = "adf4399051"
    arg4 = true
    arg1(arg2, arg3, arg4)
  end
  arg1 = numberValue15
  if arg1 then
    arg1 = IsPedReloading
    arg2 = PlayerPedId
    arg2, arg3, arg4 = arg2()
    arg1 = arg1(arg2, arg3, arg4)
    if arg1 then
      arg1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg1 = arg1()
      arg2 = numberValue15.wantsTime
      if not arg2 then
        arg2 = numberValue15.lastReloadTime
        if arg2 then
          arg2 = numberValue15.lastReloadTime
          arg2 = arg1 - arg2
          arg3 = numberValue20
        end
        if arg2 > arg3 then
          numberValue15.wantsTime = arg1
        end
      else
        arg2 = numberValue15.wantsTime
        arg2 = arg1 - arg2
        arg3 = numberValue20
        if arg2 > arg3 then
          arg2 = RefillAmmoInstantly
          arg3 = PlayerPedId
          arg3, arg4 = arg3()
          arg2(arg3, arg4)
          numberValue15.wantsTime = nil
          arg2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          arg2 = arg2()
          numberValue15.lastReloadTime = arg2
        end
      end
    end
  end
  arg1 = dataTable10
  if arg1 then
    arg1 = SetNightvision
    arg2 = true
    arg1(arg2)
  end
  arg1 = numberValue17
  if arg1 then
    arg1 = CMG
    arg1 = arg1.isScubaJobInProgress
    arg1 = arg1()
    if not arg1 then
      arg1 = SetPedMaxTimeUnderwater
      arg2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = numberValue21
      arg1(arg2, arg3)
    end
  end
  arg1 = numberValue18
  if arg1 then
    arg1 = StatSetInt
    arg2 = -1210645269
    arg3 = 500
    arg4 = false
    arg1(arg2, arg3, arg4)
  end
  arg1 = numberValue19
  if arg1 then
    arg1 = CMG
    arg1 = arg1.enablePunching
    arg2 = true
    arg1(arg2)
  end
end

-- === HELPER FUNCTION (decompiler name: workValue12; parameters: none) ===
function workValue12()
  local arg1, arg2, arg3
  arg1 = workValue10
  if not arg1 then
    arg1 = CMG
    arg1 = arg1.createThreadOnTick
    arg2 = workValue11
    arg3 = "Business Item Effect Tick"
    -- Beginner: Run a helper every game frame while this script is active.
    arg1(arg2, arg3)
    arg1 = true
    workValue10 = arg1
  end
end

-- === HELPER FUNCTION (decompiler name: workValue13; parameters: none) ===
function workValue13()
  local arg1, arg2
  arg1 = workValue10
  if not arg1 then
    return
  end
  arg1 = numberValue11
  if not arg1 then
    arg1 = numberValue12
    if not arg1 then
      arg1 = numberValue13
      if not arg1 then
        arg1 = numberValue14
        if not arg1 then
          arg1 = numberValue15
          if not arg1 then
            arg1 = dataTable10
            if not arg1 then
              arg1 = numberValue17
              if not arg1 then
                arg1 = numberValue18
                if not arg1 then
                  arg1 = numberValue19
                  if not arg1 then
                    goto flow_label_33
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  return
  ::flow_label_33::
  arg1 = CMG
  arg1 = arg1.deleteThreadOnTick
  arg2 = workValue11
  arg1(arg2)
  arg1 = false
  workValue10 = arg1
end

-- === HELPER FUNCTION (decompiler name: workValue15; parameters: arg1, arg2) ===
function workValue15(arg1, arg2)
  local arg3, arg4, arg5
  arg3 = RegisterNetEvent
  arg4 = arg1
  -- Beginner: this function handles network event (event name set just above).

  -- === HELPER FUNCTION: arg5(arg12) ===
  function arg5(arg12)
    local cmgCall2, workValue9
    cmgCall2 = workValue12
    cmgCall2()
    cmgCall2 = arg2
    workValue9 = arg12
    cmgCall2(workValue9)
    cmgCall2 = workValue13
    cmgCall2()
  end
  -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: false.
  arg3(arg4, arg5)
end

-- === HELPER FUNCTION (decompiler name: workValue16; parameters: arg1, arg2, arg3, arg4, arg5) ===
function workValue16(arg1, arg2, arg3, arg4, arg5)
  local textValue15, textValue16, stringHelper2, cmgCall5, cmgCall6
  textValue15 = arg3.duration
  if textValue15 then
    textValue15 = arg3.duration
    if not (textValue15 <= 0) then
      goto flow_label_8
    end
  end
  return
  ::flow_label_8::
  textValue15 = arg4
  textValue16 = arg3
  textValue15(textValue16)
  textValue15 = CMG
  textValue15 = textValue15.addHudDurationTimer
  textValue16 = arg1
  stringHelper2 = arg2
  cmgCall5 = arg3.duration

  -- === HELPER FUNCTION (decompiler name: cmgCall6; parameters: none) ===
  function cmgCall6()
    local arg12, cmgCall2
    arg12 = arg5
    cmgCall2 = arg3
    arg12(cmgCall2)
  end
  textValue15(textValue16, stringHelper2, cmgCall5, cmgCall6)
  textValue15 = Citizen
  textValue15 = textValue15.Wait
  textValue16 = arg3.duration
  textValue16 = textValue16 * 1000
  textValue15(textValue16)
  textValue15 = arg5
  textValue16 = arg3
  textValue15(textValue16)
end
eventRegistration = RegisterNetEvent
textValue14 = "0c657e4148"
-- Beginner: this function handles network event "0c657e4148".

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2, arg3, arg4, arg5, textValue15, textValue16, stringHelper2
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = GetEntityHealth
  arg4 = arg2
  -- Beginner: result below is health.
  arg3 = arg3(arg4)
  arg4 = GetEntityMaxHealth
  arg5 = arg2
  arg4 = arg4(arg5)
  if not (arg3 <= 102) then
    arg5 = tCMG
    arg5 = arg5.isInComa
    arg5 = arg5()
    if not arg5 then
      goto flow_label_17
    end
  end
  return
  ::flow_label_17::
  arg5 = math
  arg5 = arg5.min
  textValue15 = arg1.amount
  textValue15 = arg3 + textValue15
  textValue16 = arg4
  arg5 = arg5(textValue15, textValue16)
  textValue15 = SetEntityHealth
  textValue16 = arg2
  stringHelper2 = arg5
  textValue15(textValue16, stringHelper2)
  textValue15 = notify
  textValue16 = "~y~You start beginning to feel refreshed."
  -- Beginner: Show a notification to the player.
  textValue15(textValue16)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0c657e4148".
eventRegistration(textValue14, workValue17)
eventRegistration = workValue15
textValue14 = "3166a56bf1"

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2, arg3, arg4, arg5, textValue15, textValue16
  arg2 = notify
  arg3 = "~y~You feel a sudden burst of energy..."
  -- Beginner: Show a notification to the player.
  arg2(arg3)
  arg2 = workValue16
  arg3 = "businessSwim"
  arg4 = "Swim Boost"
  arg5 = arg1

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg12) ===
  function textValue15(arg12)
    local cmgCall2
    numberValue11 = arg12
  end

  -- === HELPER FUNCTION (decompiler name: textValue16; parameters: arg12) ===
  function textValue16(arg12)
    local cmgCall2, workValue9, dataTable9
    cmgCall2 = numberValue11
    if cmgCall2 == arg12 then
      cmgCall2 = SetSwimMultiplierForPlayer
      workValue9 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      workValue9 = workValue9()
      dataTable9 = 1.0
      cmgCall2(workValue9, dataTable9)
      cmgCall2 = nil
      numberValue11 = cmgCall2
    end
  end
  arg2(arg3, arg4, arg5, textValue15, textValue16)
end
eventRegistration(textValue14, workValue17)
eventRegistration = workValue15
textValue14 = "d2497ff135"

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2, arg3, arg4, arg5, textValue15, textValue16
  arg2 = notify
  arg3 = "~y~You feel a sudden burst of energy..."
  -- Beginner: Show a notification to the player.
  arg2(arg3)
  arg2 = workValue16
  arg3 = "businessSprint"
  arg4 = "Sprint Boost"
  arg5 = arg1

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg12) ===
  function textValue15(arg12)
    local cmgCall2
    numberValue12 = arg12
  end

  -- === HELPER FUNCTION (decompiler name: textValue16; parameters: arg12) ===
  function textValue16(arg12)
    local cmgCall2, workValue9, dataTable9
    cmgCall2 = numberValue12
    if cmgCall2 == arg12 then
      cmgCall2 = SetRunSprintMultiplierForPlayer
      workValue9 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      workValue9 = workValue9()
      dataTable9 = 1.0
      cmgCall2(workValue9, dataTable9)
      cmgCall2 = nil
      numberValue12 = cmgCall2
    end
  end
  arg2(arg3, arg4, arg5, textValue15, textValue16)
end
eventRegistration(textValue14, workValue17)
eventRegistration = workValue15
textValue14 = "e100559849"

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2, arg3, arg4, arg5, textValue15
  arg2 = notify
  arg3 = "~y~You begin to work effectively..."
  -- Beginner: Show a notification to the player.
  arg2(arg3)
  arg2 = arg1.duration
  if arg2 then
    arg2 = arg1.duration
    if arg2 > 0 then
      arg2 = CMG
      arg2 = arg2.addHudDurationTimer
      arg3 = "businessFarming"
      arg4 = "Farming Boost"
      arg5 = arg1.duration
      textValue15 = nil
      arg2(arg3, arg4, arg5, textValue15)
      arg2 = Citizen
      arg2 = arg2.Wait
      arg3 = arg1.duration
      arg3 = arg3 * 1000
      arg2(arg3)
    end
  end
end
eventRegistration(textValue14, workValue17)
eventRegistration = workValue15
textValue14 = "462ba9d5f3"

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2, arg3, arg4, arg5, textValue15, textValue16
  arg2 = notify
  arg3 = "~y~You start to feel dizzy..."
  -- Beginner: Show a notification to the player.
  arg2(arg3)
  arg2 = workValue16
  arg3 = "businessRandomWalk"
  arg4 = "Dizzy"
  arg5 = arg1

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg12) ===
  function textValue15(arg12)
    local cmgCall2
    numberValue13 = arg12
  end

  -- === HELPER FUNCTION (decompiler name: textValue16; parameters: arg12) ===
  function textValue16(arg12)
    local cmgCall2
    cmgCall2 = numberValue13
    if cmgCall2 == arg12 then
      cmgCall2 = nil
      numberValue13 = cmgCall2
    end
  end
  arg2(arg3, arg4, arg5, textValue15, textValue16)
end
eventRegistration(textValue14, workValue17)
eventRegistration = workValue15
textValue14 = "83e8ddd5af"

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2, arg3, arg4, arg5, textValue15, textValue16
  arg2 = notify
  arg3 = "~y~You start feel more concentrated..."
  -- Beginner: Show a notification to the player.
  arg2(arg3)
  arg2 = workValue16
  arg3 = "businessDriveSpeed"
  arg4 = "Drive Boost"
  arg5 = arg1

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg12) ===
  function textValue15(arg12)
    local cmgCall2
    numberValue14 = arg12
  end

  -- === HELPER FUNCTION (decompiler name: textValue16; parameters: arg12) ===
  function textValue16(arg12)
    local cmgCall2, workValue9, dataTable9
    cmgCall2 = numberValue14
    if cmgCall2 == arg12 then
      cmgCall2 = DecorRemove
      workValue9 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workValue9 = workValue9()
      dataTable9 = "adf4399051"
      cmgCall2(workValue9, dataTable9)
      cmgCall2 = nil
      numberValue14 = cmgCall2
    end
  end
  arg2(arg3, arg4, arg5, textValue15, textValue16)
end
eventRegistration(textValue14, workValue17)
eventRegistration = workValue15
textValue14 = "90424f5389"

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2, arg3, arg4, arg5, textValue15, textValue16
  arg2 = notify
  arg3 = "~y~Your hand grip strengthens."
  -- Beginner: Show a notification to the player.
  arg2(arg3)
  arg2 = workValue16
  arg3 = "businessFastReload"
  arg4 = "Fast Reload"
  arg5 = arg1

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg12) ===
  function textValue15(arg12)
    local cmgCall2
    numberValue15 = arg12
  end

  -- === HELPER FUNCTION (decompiler name: textValue16; parameters: arg12) ===
  function textValue16(arg12)
    local cmgCall2
    cmgCall2 = numberValue15
    if cmgCall2 == arg12 then
      cmgCall2 = nil
      numberValue15 = cmgCall2
    end
  end
  arg2(arg3, arg4, arg5, textValue15, textValue16)
end
eventRegistration(textValue14, workValue17)
eventRegistration = workValue15
textValue14 = "4a387338b1"

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2, arg3, arg4, arg5, textValue15, textValue16
  arg2 = notify
  arg3 = "~y~Your pupils dilate."
  -- Beginner: Show a notification to the player.
  arg2(arg3)
  arg2 = workValue16
  arg3 = "businessNightVision"
  arg4 = "Night Vision"
  arg5 = arg1

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg12) ===
  function textValue15(arg12)
    local cmgCall2
    dataTable10 = arg12
  end

  -- === HELPER FUNCTION (decompiler name: textValue16; parameters: arg12) ===
  function textValue16(arg12)
    local cmgCall2, workValue9
    cmgCall2 = dataTable10
    if cmgCall2 == arg12 then
      cmgCall2 = SetNightvision
      workValue9 = false
      cmgCall2(workValue9)
      cmgCall2 = nil
      dataTable10 = cmgCall2
    end
  end
  arg2(arg3, arg4, arg5, textValue15, textValue16)
end
eventRegistration(textValue14, workValue17)
eventRegistration = workValue15
textValue14 = "825b9d40ef"

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2, arg3, arg4, arg5, textValue15, textValue16
  arg2 = notify
  arg3 = "~y~You start feeling less exhausted..."
  -- Beginner: Show a notification to the player.
  arg2(arg3)
  arg2 = workValue16
  arg3 = "businessLungCapacity"
  arg4 = "Lung Capacity"
  arg5 = arg1

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg12) ===
  function textValue15(arg12)
    local cmgCall2
    numberValue17 = arg12
  end

  -- === HELPER FUNCTION (decompiler name: textValue16; parameters: arg12) ===
  function textValue16(arg12)
    local cmgCall2, workValue9, dataTable9
    cmgCall2 = numberValue17
    if cmgCall2 == arg12 then
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.isScubaJobInProgress
      cmgCall2 = cmgCall2()
      if not cmgCall2 then
        cmgCall2 = SetPedMaxTimeUnderwater
        workValue9 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        workValue9 = workValue9()
        dataTable9 = 10.0
        cmgCall2(workValue9, dataTable9)
      end
      cmgCall2 = nil
      numberValue17 = cmgCall2
    end
  end
  arg2(arg3, arg4, arg5, textValue15, textValue16)
end
eventRegistration(textValue14, workValue17)
eventRegistration = workValue15
textValue14 = "ea7a34b297"

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2, arg3, arg4, arg5, textValue15, textValue16
  arg2 = notify
  arg3 = "~y~You start feeling more flexible..."
  -- Beginner: Show a notification to the player.
  arg2(arg3)
  arg2 = workValue16
  arg3 = "businessDoubleRoll"
  arg4 = "Double Roll"
  arg5 = arg1

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg12) ===
  function textValue15(arg12)
    local cmgCall2
    numberValue18 = arg12
  end

  -- === HELPER FUNCTION (decompiler name: textValue16; parameters: arg12) ===
  function textValue16(arg12)
    local cmgCall2, workValue9, dataTable9, flag4
    cmgCall2 = numberValue18
    if cmgCall2 == arg12 then
      cmgCall2 = StatSetInt
      workValue9 = -1210645269
      dataTable9 = 0
      flag4 = false
      cmgCall2(workValue9, dataTable9, flag4)
      cmgCall2 = nil
      numberValue18 = cmgCall2
    end
  end
  arg2(arg3, arg4, arg5, textValue15, textValue16)
end
eventRegistration(textValue14, workValue17)
eventRegistration = workValue15
textValue14 = "341cc286bd"

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2, arg3, arg4, arg5, textValue15, textValue16
  arg2 = notify
  arg3 = "~y~Your fists clench..."
  -- Beginner: Show a notification to the player.
  arg2(arg3)
  arg2 = workValue16
  arg3 = "businessPunch"
  arg4 = "Punch Boost"
  arg5 = arg1

  -- === HELPER FUNCTION (decompiler name: textValue15; parameters: arg12) ===
  function textValue15(arg12)
    local cmgCall2
    numberValue19 = arg12
  end

  -- === HELPER FUNCTION (decompiler name: textValue16; parameters: arg12) ===
  function textValue16(arg12)
    local cmgCall2, workValue9
    cmgCall2 = numberValue19
    if cmgCall2 == arg12 then
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.enablePunching
      workValue9 = false
      cmgCall2(workValue9)
      cmgCall2 = nil
      numberValue19 = cmgCall2
    end
  end
  arg2(arg3, arg4, arg5, textValue15, textValue16)
end
eventRegistration(textValue14, workValue17)
eventRegistration = RegisterNetEvent
textValue14 = "a4028221c0"
-- Beginner: this function handles network event "a4028221c0".

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2, arg3, arg4, arg5, textValue15, textValue16
  arg2 = arg1.duration
  if not arg2 then
    arg2 = 300
  end
  arg3 = CMG
  arg3 = arg3.addHudDurationTimer
  arg4 = "businessStorage"
  arg5 = "Extra Storage"
  textValue15 = arg2
  textValue16 = nil
  arg3(arg4, arg5, textValue15, textValue16)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a4028221c0".
eventRegistration(textValue14, workValue17)
eventRegistration = RegisterNetEvent
textValue14 = "a0b1882a81"
-- Beginner: this function handles network event "a0b1882a81".

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2, arg3
  if "food" == arg1 then
    arg2 = CMG
    arg2 = arg2.playEmote
    arg3 = "burger"
    arg2(arg3)
  elseif "drink" == arg1 then
    arg2 = CMG
    arg2 = arg2.playEmote
    arg3 = "sipsoda"
    arg2(arg3)
  elseif "milkshake" == arg1 then
    arg2 = CMG
    arg2 = arg2.playEmote
    arg3 = "sipshakel"
    arg2(arg3)
  elseif "icecream" == arg1 then
    arg2 = CMG
    arg2 = arg2.playEmote
    arg3 = "icecreama"
    arg2(arg3)
  elseif "cupcake" == arg1 then
    arg2 = CMG
    arg2 = arg2.playEmote
    arg3 = "xmascc"
    arg2(arg3)
  elseif "egobar" == arg1 then
    arg2 = CMG
    arg2 = arg2.playEmote
    arg3 = "egobar"
    arg2(arg3)
  elseif "edrink" == arg1 then
    arg2 = CMG
    arg2 = arg2.playEmote
    arg3 = "edrink"
    arg2(arg3)
  elseif "beer2" == arg1 then
    arg2 = CMG
    arg2 = arg2.playEmote
    arg3 = "beer2"
    arg2(arg3)
  elseif "carrot" == arg1 then
    arg2 = CMG
    arg2 = arg2.playEmote
    arg3 = "carrot"
    arg2(arg3)
  end
  arg2 = Wait
  arg3 = 4000
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.cancelEmote
  arg3 = true
  arg2(arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a0b1882a81".
eventRegistration(textValue14, workValue17)
eventRegistration = CMG

-- === HELPER FUNCTION (decompiler name: textValue14; parameters: none) ===
function textValue14()
  local arg1, arg2
  arg1 = workValue18
  arg1 = nil ~= arg1
  return arg1
end
eventRegistration.isWorkingInBusiness = textValue14
eventRegistration = RegisterNetEvent
textValue14 = "082804e988"
-- Beginner: this function handles network event "082804e988".

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2
  dataTable5 = arg1
end
eventRegistration(textValue14, workValue17)
eventRegistration = RegisterNetEvent
textValue14 = "b50f9b40e3"
-- Beginner: this function handles network event "b50f9b40e3".

-- === HELPER FUNCTION (decompiler name: workValue17; parameters: arg1) ===
function workValue17(arg1)
  local arg2, arg3, arg4, arg5, textValue15
  dataTable7 = arg1
  arg2 = RageUI
  arg2 = arg2.Visible
  arg3 = RMenu
  arg4 = arg3
  arg3 = arg3.Get
  arg5 = "business"
  textValue15 = "employees"
  -- Beginner: result below is menu.
  arg3 = arg3(arg4, arg5, textValue15)
  arg4 = true
  arg2(arg3, arg4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b50f9b40e3".
eventRegistration(textValue14, workValue17)
