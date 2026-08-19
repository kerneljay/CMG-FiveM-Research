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
local cmgOperation, text6, number10, number16, workingValue14, workingValue18, workingValue20, workingValue21, workingValue22, workingValue23, workingValue, workingValue2, workingValue3, workingValue4, workingValue5, dataCollection2, dataCollection4, workingValue7, dataCollection5, dataCollection6, dataCollection7, workingValue8, text7, text8, rageUiOperation, text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10, text11, cmgOperation4, text12, workingValue10, number11, number12, number13, number14, number15, dataCollection10, number17, number18, number19, number20, number21, number22, workingValue11, workingValue12, workingValue13, workingValue15, workingValue16, eventHandler, text14, workingValue17
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text6 = "cfg/cfg_business"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text6)
text6 = 93
number10 = 2
number16 = 1.3
workingValue14 = nil
workingValue18 = nil
workingValue20 = nil
workingValue21 = nil
workingValue22 = nil
workingValue23 = nil
workingValue = nil
workingValue2 = nil
workingValue3 = nil
workingValue4 = nil
workingValue5 = nil
dataCollection2 = {}
dataCollection4 = {}
workingValue7 = nil
dataCollection5 = {}
dataCollection6 = {}
dataCollection7 = {}
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text7 = "business"
text8 = "marker"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text9 = ""
cmgOperation3 = "~b~CMG Business"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "cmg_marketui"
text10 = "cmg_marketui"
rageUiOperation, text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10, text11, cmgOperation4, text12, workingValue10, number11, number12, number13, number14, number15, dataCollection10, number17, number18, number19, number20, number21, number22, workingValue11, workingValue12, workingValue13, workingValue15, workingValue16, eventHandler, text14, workingValue17 = rageUiOperation(text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10)
workingValue8(text7, text8, rageUiOperation, text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10, text11, cmgOperation4, text12, workingValue10, number11, number12, number13, number14, number15, dataCollection10, number17, number18, number19, number20, number21, number22, workingValue11, workingValue12, workingValue13, workingValue15, workingValue16, eventHandler, text14, workingValue17)
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text7 = "business"
text8 = "purchase"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text9 = RMenu
cmgOperation3 = text9
text9 = text9.Get
rageUiOperation2 = "business"
rageUiOperation3 = "marker"
-- Beginner: result below is menu.
text9 = text9(cmgOperation3, rageUiOperation2, rageUiOperation3)
cmgOperation3 = ""
rageUiOperation2 = "~b~CMG Business"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text10 = "cmg_marketui"
text11 = "cmg_marketui"
rageUiOperation, text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10, text11, cmgOperation4, text12, workingValue10, number11, number12, number13, number14, number15, dataCollection10, number17, number18, number19, number20, number21, number22, workingValue11, workingValue12, workingValue13, workingValue15, workingValue16, eventHandler, text14, workingValue17 = rageUiOperation(text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10, text11)
workingValue8(text7, text8, rageUiOperation, text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10, text11, cmgOperation4, text12, workingValue10, number11, number12, number13, number14, number15, dataCollection10, number17, number18, number19, number20, number21, number22, workingValue11, workingValue12, workingValue13, workingValue15, workingValue16, eventHandler, text14, workingValue17)
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text7 = "business"
text8 = "edititemprices"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text9 = RMenu
cmgOperation3 = text9
text9 = text9.Get
rageUiOperation2 = "business"
rageUiOperation3 = "marker"
-- Beginner: result below is menu.
text9 = text9(cmgOperation3, rageUiOperation2, rageUiOperation3)
cmgOperation3 = ""
rageUiOperation2 = "~b~CMG Business"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text10 = "cmg_marketui"
text11 = "cmg_marketui"
rageUiOperation, text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10, text11, cmgOperation4, text12, workingValue10, number11, number12, number13, number14, number15, dataCollection10, number17, number18, number19, number20, number21, number22, workingValue11, workingValue12, workingValue13, workingValue15, workingValue16, eventHandler, text14, workingValue17 = rageUiOperation(text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10, text11)
workingValue8(text7, text8, rageUiOperation, text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10, text11, cmgOperation4, text12, workingValue10, number11, number12, number13, number14, number15, dataCollection10, number17, number18, number19, number20, number21, number22, workingValue11, workingValue12, workingValue13, workingValue15, workingValue16, eventHandler, text14, workingValue17)
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text7 = "business"
text8 = "viewusers"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateSubMenu
text9 = RMenu
cmgOperation3 = text9
text9 = text9.Get
rageUiOperation2 = "business"
rageUiOperation3 = "marker"
-- Beginner: result below is menu.
text9 = text9(cmgOperation3, rageUiOperation2, rageUiOperation3)
cmgOperation3 = ""
rageUiOperation2 = "~b~CMG Business"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text10 = "cmg_marketui"
text11 = "cmg_marketui"
rageUiOperation, text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10, text11, cmgOperation4, text12, workingValue10, number11, number12, number13, number14, number15, dataCollection10, number17, number18, number19, number20, number21, number22, workingValue11, workingValue12, workingValue13, workingValue15, workingValue16, eventHandler, text14, workingValue17 = rageUiOperation(text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10, text11)
workingValue8(text7, text8, rageUiOperation, text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10, text11, cmgOperation4, text12, workingValue10, number11, number12, number13, number14, number15, dataCollection10, number17, number18, number19, number20, number21, number22, workingValue11, workingValue12, workingValue13, workingValue15, workingValue16, eventHandler, text14, workingValue17)
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text7 = "business"
text8 = "menu"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text9 = ""
cmgOperation3 = "~b~CMG Business"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "cmg_marketui"
text10 = "cmg_marketui"
rageUiOperation, text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10, text11, cmgOperation4, text12, workingValue10, number11, number12, number13, number14, number15, dataCollection10, number17, number18, number19, number20, number21, number22, workingValue11, workingValue12, workingValue13, workingValue15, workingValue16, eventHandler, text14, workingValue17 = rageUiOperation(text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10)
workingValue8(text7, text8, rageUiOperation, text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10, text11, cmgOperation4, text12, workingValue10, number11, number12, number13, number14, number15, dataCollection10, number17, number18, number19, number20, number21, number22, workingValue11, workingValue12, workingValue13, workingValue15, workingValue16, eventHandler, text14, workingValue17)
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text7 = "business"
text8 = "employees"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text9 = ""
cmgOperation3 = "~b~CMG Business"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = "cmg_marketui"
text10 = "cmg_marketui"
rageUiOperation, text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10, text11, cmgOperation4, text12, workingValue10, number11, number12, number13, number14, number15, dataCollection10, number17, number18, number19, number20, number21, number22, workingValue11, workingValue12, workingValue13, workingValue15, workingValue16, eventHandler, text14, workingValue17 = rageUiOperation(text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10)
workingValue8(text7, text8, rageUiOperation, text9, cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4, text10, text11, cmgOperation4, text12, workingValue10, number11, number12, number13, number14, number15, dataCollection10, number17, number18, number19, number20, number21, number22, workingValue11, workingValue12, workingValue13, workingValue15, workingValue16, eventHandler, text14, workingValue17)
workingValue8 = {}
text7 = "1 Week"
text8 = "2 Weeks"
rageUiOperation = "3 Weeks"
text9 = "4 Weeks"
workingValue8[1] = text7
workingValue8[2] = text8
workingValue8[3] = rageUiOperation
workingValue8[4] = text9
text7 = {}
text8 = 1
rageUiOperation = 2
text9 = 3
cmgOperation3 = 4
text7[1] = text8
text7[2] = rageUiOperation
text7[3] = text9
text7[4] = cmgOperation3
text8 = 1
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateWhile
text9 = 1.0
cmgOperation3 = RMenu
rageUiOperation2 = cmgOperation3
cmgOperation3 = cmgOperation3.Get
rageUiOperation3 = "business"
rageUiOperation4 = "marker"
-- Beginner: result below is menu.
cmgOperation3 = cmgOperation3(rageUiOperation2, rageUiOperation3, rageUiOperation4)
rageUiOperation2 = nil

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, text15
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "business"
  localValue5 = "marker"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION (decompiler name: text15; parameters: none) ===
  function text15()
    local localValue12, cmgOperation2, workingValue9, dataCollection9, stateFlag4, stateFlag5, rageUiOperation5, text18, text20, dataCollection11, stateFlag, dataCollection, text, stringHelper, text3, text4
    localValue12 = workingValue5
    if localValue12 then
      localValue12 = workingValue5.ownerId
      if localValue12 then
        localValue12 = workingValue5.ownerId
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.getClientUserId
        -- Beginner: result below is userId.
        cmgOperation2 = cmgOperation2()
        if localValue12 == cmgOperation2 then
          localValue12 = RageUI
          localValue12 = localValue12.Separator
          cmgOperation2 = "~y~You are the owner of "
          workingValue9 = workingValue4
          cmgOperation2 = cmgOperation2 .. workingValue9
          localValue12(cmgOperation2)
          localValue12 = RageUI
          localValue12 = localValue12.Separator
          cmgOperation2 = "Options"
          localValue12(cmgOperation2)
          localValue12 = RageUI
          localValue12 = localValue12.ButtonWithStyle
          cmgOperation2 = "~g~Manage Employees"
          workingValue9 = nil
          dataCollection9 = {}
          dataCollection9.RightLabel = "\226\134\146\226\134\146\226\134\146"
          stateFlag4 = true

          -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: none) ===
          function stateFlag5()
            local localValue13, localValue22
          end
          rageUiOperation5 = RMenu
          text18 = rageUiOperation5
          rageUiOperation5 = rageUiOperation5.Get
          text20 = "business"
          dataCollection11 = "viewusers"
          rageUiOperation5, text18, text20, dataCollection11, stateFlag, dataCollection, text, stringHelper, text3, text4 = rageUiOperation5(text18, text20, dataCollection11)
          -- Beginner: Draw a selectable RageUI menu button.
          localValue12(cmgOperation2, workingValue9, dataCollection9, stateFlag4, stateFlag5, rageUiOperation5, text18, text20, dataCollection11, stateFlag, dataCollection, text, stringHelper, text3, text4)
          localValue12 = pairs
          cmgOperation2 = cmgOperation.locations
          workingValue9 = workingValue4
          cmgOperation2 = cmgOperation2[workingValue9]
          cmgOperation2 = cmgOperation2.jobs
          localValue12, cmgOperation2, workingValue9, dataCollection9 = localValue12(cmgOperation2)
          for stateFlag4, stateFlag5 in localValue12, cmgOperation2, workingValue9, dataCollection9 do
            rageUiOperation5 = stateFlag5.jobType
            if "waiter" == rageUiOperation5 then
              rageUiOperation5 = RageUI
              rageUiOperation5 = rageUiOperation5.ButtonWithStyle
              text18 = "~y~Edit Item Prices"
              text20 = nil
              dataCollection11 = {}
              dataCollection11.RightLabel = "\226\134\146\226\134\146\226\134\146"
              stateFlag = true

              -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue13, localValue22, localValue32) ===
              function dataCollection(localValue13, localValue22, localValue32)
                local localValue42, text13, workingValue19
                if localValue32 then
                  localValue42 = TriggerServerEvent
                  text13 = "e76e0858eb"
                  workingValue19 = workingValue4
                  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e76e0858eb".
                  localValue42(text13, workingValue19)
                end
              end
              text = RMenu
              stringHelper = text
              text = text.Get
              text3 = "business"
              text4 = "edititemprices"
              text, stringHelper, text3, text4 = text(stringHelper, text3, text4)
              -- Beginner: Draw a selectable RageUI menu button.
              rageUiOperation5(text18, text20, dataCollection11, stateFlag, dataCollection, text, stringHelper, text3, text4)
              break
            end
          end
          localValue12 = RageUI
          localValue12 = localValue12.ButtonWithStyle
          cmgOperation2 = "~r~Dissolve Business"
          workingValue9 = "Immediately closes the business with no money returned."
          dataCollection9 = {}
          dataCollection9.RightLabel = "\226\134\146\226\134\146\226\134\146"
          stateFlag4 = true

          -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: localValue13, localValue22, localValue32) ===
          function stateFlag5(localValue13, localValue22, localValue32)
            local localValue42, text13, workingValue19
            if localValue32 then
              localValue42 = TriggerServerEvent
              text13 = "6b1c458600"
              workingValue19 = workingValue4
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6b1c458600".
              localValue42(text13, workingValue19)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          localValue12(cmgOperation2, workingValue9, dataCollection9, stateFlag4, stateFlag5)
          localValue12 = RageUI
          localValue12 = localValue12.Separator
          cmgOperation2 = "~y~Cash Stored: \194\163"
          workingValue9 = getMoneyStringFormatted
          dataCollection9 = workingValue5.totalMoneyDisplay
          workingValue9 = workingValue9(dataCollection9)
          cmgOperation2 = cmgOperation2 .. workingValue9
          localValue12(cmgOperation2)
          localValue12 = RageUI
          localValue12 = localValue12.ButtonWithStyle
          cmgOperation2 = "Withdraw Cash"
          workingValue9 = ""
          dataCollection9 = {}
          dataCollection9.RightLabel = "\226\134\146\226\134\146\226\134\146"
          stateFlag4 = workingValue5.totalMoneyDisplay
          stateFlag4 = stateFlag4 > 0

          -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: localValue13, localValue22, localValue32) ===
          function stateFlag5(localValue13, localValue22, localValue32)
            local localValue42, text13, workingValue19
            if localValue32 then
              localValue42 = TriggerServerEvent
              text13 = "3a86b10cb1"
              workingValue19 = workingValue4
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3a86b10cb1".
              localValue42(text13, workingValue19)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          localValue12(cmgOperation2, workingValue9, dataCollection9, stateFlag4, stateFlag5)
        else
          localValue12 = workingValue5.users
          cmgOperation2 = CMG
          cmgOperation2 = cmgOperation2.getClientUserId
          -- Beginner: result below is userId.
          cmgOperation2 = cmgOperation2()
          localValue12 = localValue12[cmgOperation2]
          if localValue12 then
            cmgOperation2 = RageUI
            cmgOperation2 = cmgOperation2.Separator
            workingValue9 = "~y~"
            dataCollection9 = workingValue4
            stateFlag4 = " is owned by "
            stateFlag5 = workingValue5.ownerName
            rageUiOperation5 = "."
            workingValue9 = workingValue9 .. dataCollection9 .. stateFlag4 .. stateFlag5 .. rageUiOperation5
            cmgOperation2(workingValue9)
            cmgOperation2 = localValue12.isManager
            if cmgOperation2 then
              cmgOperation2 = RageUI
              cmgOperation2 = cmgOperation2.ButtonWithStyle
              workingValue9 = "~g~Manage Employees"
              dataCollection9 = nil
              stateFlag4 = {}
              stateFlag4.RightLabel = "\226\134\146\226\134\146\226\134\146"
              stateFlag5 = true

              -- === HELPER FUNCTION (decompiler name: rageUiOperation5; parameters: none) ===
              function rageUiOperation5()
                local localValue13, localValue22
              end
              text18 = RMenu
              text20 = text18
              text18 = text18.Get
              dataCollection11 = "business"
              stateFlag = "viewusers"
              text18, text20, dataCollection11, stateFlag, dataCollection, text, stringHelper, text3, text4 = text18(text20, dataCollection11, stateFlag)
              -- Beginner: Draw a selectable RageUI menu button.
              cmgOperation2(workingValue9, dataCollection9, stateFlag4, stateFlag5, rageUiOperation5, text18, text20, dataCollection11, stateFlag, dataCollection, text, stringHelper, text3, text4)
              cmgOperation2 = RageUI
              cmgOperation2 = cmgOperation2.Separator
              workingValue9 = "~y~You are a manager of the business."
              cmgOperation2(workingValue9)
            else
              cmgOperation2 = RageUI
              cmgOperation2 = cmgOperation2.Separator
              workingValue9 = "~y~You are an employee of the business."
              cmgOperation2(workingValue9)
            end
          else
            cmgOperation2 = RageUI
            cmgOperation2 = cmgOperation2.Separator
            workingValue9 = "~y~"
            dataCollection9 = workingValue4
            stateFlag4 = " is owned by "
            stateFlag5 = workingValue5.ownerName
            rageUiOperation5 = "."
            workingValue9 = workingValue9 .. dataCollection9 .. stateFlag4 .. stateFlag5 .. rageUiOperation5
            cmgOperation2(workingValue9)
            cmgOperation2 = RageUI
            cmgOperation2 = cmgOperation2.Separator
            workingValue9 = "~y~Contact them if you are interested in a job."
            cmgOperation2(workingValue9)
          end
        end
      else
        localValue12 = RageUI
        localValue12 = localValue12.ButtonWithStyle
        cmgOperation2 = "~y~Purchase Business"
        workingValue9 = ""
        dataCollection9 = {}
        dataCollection9.RightLabel = "\226\134\146\226\134\146\226\134\146"
        stateFlag4 = true

        -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: none) ===
        function stateFlag5()
          local localValue13, localValue22
        end
        rageUiOperation5 = RMenu
        text18 = rageUiOperation5
        rageUiOperation5 = rageUiOperation5.Get
        text20 = "business"
        dataCollection11 = "purchase"
        rageUiOperation5, text18, text20, dataCollection11, stateFlag, dataCollection, text, stringHelper, text3, text4 = rageUiOperation5(text18, text20, dataCollection11)
        -- Beginner: Draw a selectable RageUI menu button.
        localValue12(cmgOperation2, workingValue9, dataCollection9, stateFlag4, stateFlag5, rageUiOperation5, text18, text20, dataCollection11, stateFlag, dataCollection, text, stringHelper, text3, text4)
      end
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, text15)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "business"
  localValue5 = "viewusers"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION (decompiler name: text15; parameters: none) ===
  function text15()
    local localValue12, cmgOperation2, workingValue9, dataCollection9, stateFlag4, stateFlag5, rageUiOperation5, text18, text20, dataCollection11, stateFlag, dataCollection, text, stringHelper, text3
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    cmgOperation2 = "~y~Invite Person"
    workingValue9 = nil
    dataCollection9 = {}
    dataCollection9.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag4 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: localValue13, localValue22, localValue32) ===
    function stateFlag5(localValue13, localValue22, localValue32)
      local localValue42, text13, workingValue19
      if localValue32 then
        localValue42 = TriggerServerEvent
        text13 = "86c5f9a5d9"
        workingValue19 = workingValue4
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "86c5f9a5d9".
        localValue42(text13, workingValue19)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(cmgOperation2, workingValue9, dataCollection9, stateFlag4, stateFlag5)
    localValue12 = workingValue5
    if localValue12 then
      localValue12 = workingValue5.ownerId
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.getClientUserId
      -- Beginner: result below is userId.
      cmgOperation2 = cmgOperation2()
      localValue12 = localValue12 == cmgOperation2
      cmgOperation2 = pairs
      workingValue9 = workingValue5.users
      cmgOperation2, workingValue9, dataCollection9, stateFlag4 = cmgOperation2(workingValue9)
      for stateFlag5, rageUiOperation5 in cmgOperation2, workingValue9, dataCollection9, stateFlag4 do
        text18 = rageUiOperation5.name
        text20 = workingValue5.ownerId
        if stateFlag5 == text20 then
          text20 = text18
          dataCollection11 = " [Owner]"
          text20 = text20 .. dataCollection11
          text18 = text20
        else
          text20 = rageUiOperation5.isManager
          if text20 then
            text20 = text18
            dataCollection11 = " [Manager]"
            text20 = text20 .. dataCollection11
            text18 = text20
          end
        end
        text20 = RageUI
        text20 = text20.ButtonWithStyle
        dataCollection11 = text18
        stateFlag = ""
        dataCollection = {}
        text = "PermID: "
        stringHelper = tostring
        text3 = stateFlag5
        stringHelper = stringHelper(text3)
        text = text .. stringHelper
        dataCollection.RightLabel = text
        text = true

        -- === HELPER FUNCTION: stringHelper(localValue13, localValue22, localValue32) ===
        function stringHelper(localValue13, localValue22, localValue32)
          local localValue42, text13, workingValue19, text17, text19
          if localValue22 then
            localValue42 = "Press ~INPUT_FRONTEND_ACCEPT~ to remove the user."
            text13 = localValue12
            if text13 then
              text13 = localValue42
              workingValue19 = [[

Press ~INPUT_FRONTEND_X~ to ]]
              text17 = rageUiOperation5.isManager
              if text17 then
                text17 = "demote"
                if text17 then
                  goto continueAtStep16
                end
              end
              text17 = "promote"
              ::continueAtStep16::
              text19 = " the user."
              text13 = text13 .. workingValue19 .. text17 .. text19
              localValue42 = text13
            end
            text13 = drawNativeNotification
            workingValue19 = localValue42
            -- Beginner: Show a GTA-style notification/help prompt.
            text13(workingValue19)
          end
          if localValue32 then
            localValue42 = TriggerServerEvent
            text13 = "58871193a2"
            workingValue19 = workingValue4
            text17 = stateFlag5
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "58871193a2".
            localValue42(text13, workingValue19, text17)
          end
          localValue42 = localValue12
          if localValue42 then
            localValue42 = DisableControlAction
            text13 = 0
            workingValue19 = 203
            text17 = true
            localValue42(text13, workingValue19, text17)
            localValue42 = IsDisabledControlJustPressed
            text13 = 0
            workingValue19 = 203
            localValue42 = localValue42(text13, workingValue19)
            if localValue42 then
              localValue42 = TriggerServerEvent
              text13 = "59bcded368"
              workingValue19 = workingValue4
              text17 = stateFlag5
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "59bcded368".
              localValue42(text13, workingValue19, text17)
            end
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        text20(dataCollection11, stateFlag, dataCollection, text, stringHelper)
      end
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, text15)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "business"
  localValue5 = "purchase"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION (decompiler name: text15; parameters: none) ===
  function text15()
    local localValue12, cmgOperation2, workingValue9, dataCollection9, stateFlag4, stateFlag5, rageUiOperation5, text18, text20
    cmgOperation2 = text8
    localValue12 = text7
    localValue12 = localValue12[cmgOperation2]
    cmgOperation2 = RageUI
    cmgOperation2 = cmgOperation2.Separator
    workingValue9 = "Business Cost \194\163"
    dataCollection9 = getMoneyStringFormatted
    stateFlag4 = cmgOperation.weekCost
    stateFlag4 = stateFlag4 * localValue12
    dataCollection9 = dataCollection9(stateFlag4)
    workingValue9 = workingValue9 .. dataCollection9
    cmgOperation2(workingValue9)
    cmgOperation2 = RageUI
    cmgOperation2 = cmgOperation2.List
    workingValue9 = "Weeks To Rent"
    dataCollection9 = workingValue8
    stateFlag4 = text8
    stateFlag5 = ""
    rageUiOperation5 = {}
    text18 = true

    -- === HELPER FUNCTION (decompiler name: text20; parameters: localValue13, localValue22, localValue32, localValue42) ===
    function text20(localValue13, localValue22, localValue32, localValue42)
      text8 = localValue42
    end
    -- Beginner: Draw a RageUI list selector.
    cmgOperation2(workingValue9, dataCollection9, stateFlag4, stateFlag5, rageUiOperation5, text18, text20)
    cmgOperation2 = RageUI
    cmgOperation2 = cmgOperation2.ButtonWithStyle
    workingValue9 = "~y~Confirm Purchase"
    dataCollection9 = ""
    stateFlag4 = {}
    stateFlag4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag5 = true

    -- === HELPER FUNCTION (decompiler name: rageUiOperation5; parameters: localValue13, localValue22, localValue32) ===
    function rageUiOperation5(localValue13, localValue22, localValue32)
      local localValue42, text13, workingValue19, text17
      if localValue32 then
        localValue42 = TriggerServerEvent
        text13 = "5504a12141"
        workingValue19 = workingValue4
        text17 = localValue12
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5504a12141".
        localValue42(text13, workingValue19, text17)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    cmgOperation2(workingValue9, dataCollection9, stateFlag4, stateFlag5, rageUiOperation5)
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, text15)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "business"
  localValue5 = "edititemprices"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION (decompiler name: text15; parameters: none) ===
  function text15()
    local localValue12, cmgOperation2, workingValue9, dataCollection9, stateFlag4, stateFlag5, rageUiOperation5, text18, text20, dataCollection11, stateFlag, dataCollection, text, stringHelper, text3, text4, workingValue6
    localValue12 = workingValue4
    if not localValue12 then
      return
    end
    localValue12 = cmgOperation.locations
    cmgOperation2 = workingValue4
    localValue12 = localValue12[cmgOperation2]
    cmgOperation2 = nil
    workingValue9 = pairs
    dataCollection9 = localValue12.jobs
    workingValue9, dataCollection9, stateFlag4, stateFlag5 = workingValue9(dataCollection9)
    for rageUiOperation5, text18 in workingValue9, dataCollection9, stateFlag4, stateFlag5 do
      text20 = text18.jobType
      if "waiter" == text20 then
        cmgOperation2 = text18
        break
      end
    end
    if cmgOperation2 then
      workingValue9 = pairs
      dataCollection9 = cmgOperation2.jobMetadata
      dataCollection9 = dataCollection9.sellableItems
      workingValue9, dataCollection9, stateFlag4, stateFlag5 = workingValue9(dataCollection9)
      for rageUiOperation5, text18 in workingValue9, dataCollection9, stateFlag4, stateFlag5 do
        text20 = localValue12.items
        text20 = text20[rageUiOperation5]
        if text20 then
          dataCollection11 = CMG
          dataCollection11 = dataCollection11.getBusinessPriceOverrides
          stateFlag = workingValue4
          dataCollection11 = dataCollection11(stateFlag)
          dataCollection11 = dataCollection11[rageUiOperation5]
          if not dataCollection11 then
            dataCollection11 = text18
          end
          stateFlag = RageUI
          stateFlag = stateFlag.ButtonWithStyle
          dataCollection = text20[1]
          text = "Minimum Price \194\163"
          stringHelper = getMoneyStringFormatted
          text3 = text18
          stringHelper = stringHelper(text3)
          text = text .. stringHelper
          stringHelper = {}
          text3 = "\194\163"
          text4 = getMoneyStringFormatted
          workingValue6 = dataCollection11
          text4 = text4(workingValue6)
          text3 = text3 .. text4
          stringHelper.RightLabel = text3
          text3 = true

          -- === HELPER FUNCTION (decompiler name: text4; parameters: localValue13, localValue22, localValue32) ===
          function text4(localValue13, localValue22, localValue32)
            local localValue42, text13, workingValue19, text17
            if localValue32 then
              localValue42 = TriggerServerEvent
              text13 = "12848977b5"
              workingValue19 = workingValue4
              text17 = rageUiOperation5
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "12848977b5".
              localValue42(text13, workingValue19, text17)
            end
          end
          -- Beginner: Draw a selectable RageUI menu button.
          stateFlag(dataCollection, text, stringHelper, text3, text4)
        end
      end
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, text15)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "business"
  localValue5 = "menu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION (decompiler name: text15; parameters: none) ===
  function text15()
    local localValue12, cmgOperation2, workingValue9, dataCollection9, stateFlag4, stateFlag5, rageUiOperation5, text18, text20, dataCollection11, stateFlag, dataCollection, text, stringHelper, text3, text4, workingValue6
    localValue12 = nil
    cmgOperation2 = workingValue7
    if cmgOperation2 then
      cmgOperation2 = pairs
      workingValue9 = workingValue7.locationInfo
      workingValue9 = workingValue9.jobs
      cmgOperation2, workingValue9, dataCollection9, stateFlag4 = cmgOperation2(workingValue9)
      for stateFlag5, rageUiOperation5 in cmgOperation2, workingValue9, dataCollection9, stateFlag4 do
        text18 = rageUiOperation5.jobType
        if "waiter" == text18 then
          localValue12 = rageUiOperation5
          break
        end
      end
    end
    cmgOperation2 = {}
    if localValue12 then
      workingValue9 = workingValue7
      if workingValue9 then
        workingValue9 = pairs
        dataCollection9 = localValue12.jobMetadata
        dataCollection9 = dataCollection9.sellableItems
        workingValue9, dataCollection9, stateFlag4, stateFlag5 = workingValue9(dataCollection9)
        for rageUiOperation5, text18 in workingValue9, dataCollection9, stateFlag4, stateFlag5 do
          text20 = workingValue7.locationInfo
          text20 = text20.items
          text20 = text20[rageUiOperation5]
          if text20 then
            dataCollection11 = CMG
            dataCollection11 = dataCollection11.getBusinessPriceOverrides
            stateFlag = workingValue7.businessName
            dataCollection11 = dataCollection11(stateFlag)
            dataCollection11 = dataCollection11[rageUiOperation5]
            if not dataCollection11 then
              dataCollection11 = text18
            end
            stateFlag = table
            stateFlag = stateFlag.insert
            dataCollection = cmgOperation2
            text = {}
            text.localItemId = rageUiOperation5
            stringHelper = text20[1]
            text.name = stringHelper
            text.price = dataCollection11
            stringHelper = dataCollection5
            stringHelper = stringHelper[rageUiOperation5]
            if not stringHelper then
              stringHelper = false
            end
            text.inStock = stringHelper
            stateFlag(dataCollection, text)
          end
        end
      end
    end
    workingValue9 = table
    workingValue9 = workingValue9.sort
    dataCollection9 = cmgOperation2

    -- === HELPER FUNCTION (decompiler name: stateFlag4; parameters: localValue13, localValue22) ===
    function stateFlag4(localValue13, localValue22)
      local localValue32, localValue42
      localValue32 = localValue13.name
      localValue42 = localValue22.name
      localValue32 = localValue32 < localValue42
      return localValue32
    end
    workingValue9(dataCollection9, stateFlag4)
    workingValue9 = pairs
    dataCollection9 = cmgOperation2
    workingValue9, dataCollection9, stateFlag4, stateFlag5 = workingValue9(dataCollection9)
    for rageUiOperation5, text18 in workingValue9, dataCollection9, stateFlag4, stateFlag5 do
      text20 = text18.inStock
      if text20 then
        text20 = "~g~"
        if text20 then
          goto continueAtStep78
        end
      end
      text20 = "~r~"
      ::continueAtStep78::
      dataCollection11 = text18.inStock
      if dataCollection11 then
        dataCollection11 = "Purchase this item"
        if dataCollection11 then
          goto continueAtStep85
        end
      end
      dataCollection11 = "Out of stock"
      ::continueAtStep85::
      stateFlag = RageUI
      stateFlag = stateFlag.ButtonWithStyle
      dataCollection = text20
      text = text18.name
      dataCollection = dataCollection .. text
      text = dataCollection11
      stringHelper = {}
      text3 = "\194\163"
      text4 = getMoneyStringFormatted
      workingValue6 = text18.price
      text4 = text4(workingValue6)
      text3 = text3 .. text4
      stringHelper.RightLabel = text3
      text3 = text18.inStock

      -- === HELPER FUNCTION (decompiler name: text4; parameters: localValue13, localValue22, localValue32) ===
      function text4(localValue13, localValue22, localValue32)
        local localValue42, text13, workingValue19, text17
        if localValue32 then
          localValue42 = workingValue7
          if localValue42 then
            localValue42 = TriggerServerEvent
            text13 = "67c8d1e23b"
            workingValue19 = workingValue7.businessName
            text17 = text18.localItemId
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "67c8d1e23b".
            localValue42(text13, workingValue19, text17)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      stateFlag(dataCollection, text, stringHelper, text3, text4)
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, text15)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "business"
  localValue5 = "employees"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = false
  localValue5 = true

  -- === HELPER FUNCTION (decompiler name: text15; parameters: none) ===
  function text15()
    local localValue12, cmgOperation2, workingValue9, dataCollection9, stateFlag4, stateFlag5, rageUiOperation5, text18, text20, dataCollection11, stateFlag, dataCollection
    localValue12 = pairs
    cmgOperation2 = dataCollection7
    localValue12, cmgOperation2, workingValue9, dataCollection9 = localValue12(cmgOperation2)
    for stateFlag4, stateFlag5 in localValue12, cmgOperation2, workingValue9, dataCollection9 do
      rageUiOperation5 = RageUI
      rageUiOperation5 = rageUiOperation5.ButtonWithStyle
      text18 = stateFlag5.name
      text20 = ""
      dataCollection11 = {}
      stateFlag = stateFlag5.jobName
      dataCollection11.RightLabel = stateFlag
      stateFlag = true

      -- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
      function dataCollection()
        local localValue13, localValue22
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation5(text18, text20, dataCollection11, stateFlag, dataCollection)
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, text15)
end
rageUiOperation(text9, cmgOperation3, rageUiOperation2, rageUiOperation3)

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1) ===
function rageUiOperation(localValue1)
  local localValue2, localValue3, localValue4, localValue5, text15
  localValue2 = localValue1[1]
  workingValue4 = localValue2
  localValue2 = TriggerServerEvent
  localValue3 = "bb058c40b1"
  localValue4 = localValue1[1]
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bb058c40b1".
  localValue2(localValue3, localValue4)
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  localValue3 = RMenu
  localValue4 = localValue3
  localValue3 = localValue3.Get
  localValue5 = "business"
  text15 = "marker"
  -- Beginner: result below is menu.
  localValue3 = localValue3(localValue4, localValue5, text15)
  localValue4 = true
  localValue2(localValue3, localValue4)
end

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2
  localValue1 = nil
  workingValue4 = localValue1
  localValue1 = nil
  workingValue5 = localValue1
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
end
cmgOperation3 = pairs
rageUiOperation2 = cmgOperation.locations
cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4 = cmgOperation3(rageUiOperation2)
for text10, text11 in cmgOperation3, rageUiOperation2, rageUiOperation3, rageUiOperation4 do
  cmgOperation4 = CMG
  cmgOperation4 = cmgOperation4.createArea
  text12 = "business_"
  workingValue10 = text10
  text12 = text12 .. workingValue10
  workingValue10 = text11.ownerMarker
  number11 = 1.5
  number12 = 3.0
  number13 = rageUiOperation
  number14 = text9

  -- === HELPER FUNCTION (decompiler name: number15; parameters: none) ===
  function number15()
    local localValue1, localValue2
  end
  dataCollection10 = {}
  number17 = text10
  dataCollection10[1] = number17
  -- Beginner: Create an interaction area around a world position.
  cmgOperation4(text12, workingValue10, number11, number12, number13, number14, number15, dataCollection10)
  cmgOperation4 = tCMG
  cmgOperation4 = cmgOperation4.addMarker
  text12 = text11.ownerMarker
  text12 = text12.x
  workingValue10 = text11.ownerMarker
  workingValue10 = workingValue10.y
  number11 = text11.ownerMarker
  number11 = number11.z
  number12 = 1.0
  number13 = 1.0
  number14 = 1.0
  number15 = 255
  dataCollection10 = 0
  number17 = 0
  number18 = 170
  number19 = 50
  number20 = 27
  -- Beginner: Create a world marker.
  cmgOperation4(text12, workingValue10, number11, number12, number13, number14, number15, dataCollection10, number17, number18, number19, number20)
  cmgOperation4 = text11.doorAreaName
  if cmgOperation4 then
    cmgOperation4 = CMG
    cmgOperation4 = cmgOperation4.registerCanAccessGangDoorLocation
    text12 = text11.doorAreaName

    -- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
    function workingValue10()
      local localValue1, localValue2
      localValue2 = text10
      localValue1 = dataCollection6
      localValue1 = localValue1[localValue2]
      if not localValue1 then
        localValue1 = false
      end
      return localValue1
    end
    cmgOperation4(text12, workingValue10)
  end
end
cmgOperation3 = RegisterNetEvent
rageUiOperation2 = "018b28fa1e"
-- Beginner: this function handles network event "018b28fa1e".

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1) ===
function rageUiOperation3(localValue1)
  local localValue2
  dataCollection6 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "018b28fa1e".
cmgOperation3(rageUiOperation2, rageUiOperation3)
cmgOperation3 = RegisterNetEvent
rageUiOperation2 = "03b0ee5cda"
-- Beginner: this function handles network event "03b0ee5cda".

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1) ===
function rageUiOperation3(localValue1)
  local localValue2, localValue3, localValue4, localValue5, text15, text16, stringHelper2, cmgOperation5, cmgOperation6, number, number2, number3, number4, text2, dataCollection3, text5, stateFlag2
  localValue2 = pairs
  localValue3 = cmgOperation.locations
  localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
  for text15, text16 in localValue2, localValue3, localValue4, localValue5 do
    stringHelper2 = "business_open_"
    cmgOperation5 = text15
    stringHelper2 = stringHelper2 .. cmgOperation5
    cmgOperation5 = localValue1[text15]
    if cmgOperation5 then
      cmgOperation5 = text16.jobMarker
      cmgOperation6 = tCMG
      cmgOperation6 = cmgOperation6.setNamedBlip
      number = stringHelper2
      number2 = cmgOperation5.x
      number3 = cmgOperation5.y
      number4 = cmgOperation5.z
      text2 = text6
      dataCollection3 = number10
      text5 = text15
      stateFlag2 = number16
      cmgOperation6(number, number2, number3, number4, text2, dataCollection3, text5, stateFlag2)
    else
      cmgOperation5 = tCMG
      cmgOperation5 = cmgOperation5.removeNamedBlip
      cmgOperation6 = stringHelper2
      cmgOperation5(cmgOperation6)
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "03b0ee5cda".
cmgOperation3(rageUiOperation2, rageUiOperation3)
cmgOperation3 = RegisterNetEvent
rageUiOperation2 = "7e14d0799b"
-- Beginner: this function handles network event "7e14d0799b".

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1, localValue2) ===
function rageUiOperation3(localValue1, localValue2)
  local localValue3
  localValue3 = dataCollection6
  localValue3[localValue1] = localValue2
end
cmgOperation3(rageUiOperation2, rageUiOperation3)
cmgOperation3 = RegisterNetEvent
rageUiOperation2 = "bb058c40b1"
-- Beginner: this function handles network event "bb058c40b1".

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1) ===
function rageUiOperation3(localValue1)
  local localValue2, localValue3
  workingValue5 = localValue1
  if localValue1 then
    localValue2 = localValue1.ownerId
    localValue3 = CMG
    localValue3 = localValue3.getClientUserId
    -- Beginner: result below is userId.
    localValue3 = localValue3()
    if localValue2 ~= localValue3 then
      localValue2 = localValue1.users
      localValue3 = CMG
      localValue3 = localValue3.getClientUserId
      -- Beginner: result below is userId.
      localValue3 = localValue3()
      localValue2 = localValue2[localValue3]
      if not localValue2 then
        goto continueAtStep20
      end
    end
    localValue2 = TriggerServerEvent
    localValue3 = "e7a86c3e34"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e7a86c3e34".
    localValue2(localValue3)
  end
  ::continueAtStep20::
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bb058c40b1".
cmgOperation3(rageUiOperation2, rageUiOperation3)
cmgOperation3 = RegisterNetEvent
rageUiOperation2 = "ad32ced60b"
-- Beginner: this function handles network event "ad32ced60b".

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2
  localValue1 = TriggerServerEvent
  localValue2 = "e7a86c3e34"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e7a86c3e34".
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ad32ced60b".
cmgOperation3(rageUiOperation2, rageUiOperation3)
-- Beginner: this function handles network event "ad32ced60b".

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, localValue2, localValue3
  localValue1 = TriggerServerEvent
  localValue2 = "c195715473"
  localValue3 = false
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "c195715473".
  localValue1(localValue2, localValue3)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, localValue2
  localValue1 = TriggerEvent
  localValue2 = "2a70dddd80"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "2a70dddd80".
  localValue1(localValue2)
  localValue1 = TriggerServerEvent
  localValue2 = "72490db2b8"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "72490db2b8".
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: none) ===
function rageUiOperation3()
  local localValue1, localValue2, localValue3, localValue4, localValue5, text15, text16, stringHelper2, cmgOperation5, cmgOperation6, number, number2, number3, number4, text2, dataCollection3, text5, stateFlag2, number5, stateFlag3
  localValue1 = {}
  workingValue14 = localValue1
  localValue1 = cmgOperation.locations
  localValue2 = workingValue18
  localValue1 = localValue1[localValue2]
  if localValue1 then
    localValue1 = pairs
    localValue2 = cmgOperation.locations
    localValue3 = workingValue18
    localValue2 = localValue2[localValue3]
    localValue2 = localValue2.inventoryPositions
    localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
    for localValue5, text15 in localValue1, localValue2, localValue3, localValue4 do
      text16 = "business_inventory_"
      stringHelper2 = tostring
      cmgOperation5 = localValue5
      stringHelper2 = stringHelper2(cmgOperation5)
      text16 = text16 .. stringHelper2
      stringHelper2 = CMG
      stringHelper2 = stringHelper2.createArea
      cmgOperation5 = text16
      cmgOperation6 = text15
      number = 1.25
      number2 = 3.0
      number3 = cmgOperation3
      number4 = rageUiOperation2

      -- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
      function text2()
        local localValue12, cmgOperation2
      end
      dataCollection3 = {}
      -- Beginner: Create an interaction area around a world position.
      stringHelper2(cmgOperation5, cmgOperation6, number, number2, number3, number4, text2, dataCollection3)
      stringHelper2 = tCMG
      stringHelper2 = stringHelper2.addMarker
      cmgOperation5 = text15.x
      cmgOperation6 = text15.y
      number = text15.z
      number2 = 0.5
      number3 = 0.5
      number4 = 0.5
      text2 = 255
      dataCollection3 = 0
      text5 = 0
      stateFlag2 = 170
      number5 = 50
      stateFlag3 = 27
      stringHelper2 = stringHelper2(cmgOperation5, cmgOperation6, number, number2, number3, number4, text2, dataCollection3, text5, stateFlag2, number5, stateFlag3)
      cmgOperation5 = table
      cmgOperation5 = cmgOperation5.insert
      cmgOperation6 = workingValue14
      number = {}
      number2 = text16
      number3 = stringHelper2
      number[1] = number2
      number[2] = number3
      cmgOperation5(cmgOperation6, number)
    end
  end
end
rageUiOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text10; parameters: localValue1, localValue2) ===
function text10(localValue1, localValue2)
  return localValue2
end
rageUiOperation4.getBusinessItemId = text10
rageUiOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text10; parameters: localValue1, localValue2) ===
function text10(localValue1, localValue2)
  local localValue3, localValue4, localValue5, text15, text16
  localValue3 = string
  localValue3 = localValue3.lower
  localValue4 = string
  localValue4 = localValue4.gsub
  localValue5 = localValue1
  text15 = "%s+"
  text16 = "_"
  localValue4, localValue5, text15, text16 = localValue4(localValue5, text15, text16)
  localValue3 = localValue3(localValue4, localValue5, text15, text16)
  localValue4 = "_"
  localValue3 = localValue3 .. localValue4
  localValue4 = string
  localValue4 = localValue4.sub
  localValue5 = localValue2
  text15 = 1
  text16 = #localValue3
  localValue4 = localValue4(localValue5, text15, text16)
  if localValue4 == localValue3 then
    localValue4 = string
    localValue4 = localValue4.sub
    localValue5 = localValue2
    text15 = #localValue3
    text15 = text15 + 1
    return localValue4(localValue5, text15)
  end
  return localValue2
end
rageUiOperation4.getBusinessLocalItemId = text10

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = workingValue18
  if not localValue2 then
    localValue2 = false
    return localValue2
  end
  localValue2 = CMG
  localValue2 = localValue2.getBusinessLocalItemId
  localValue3 = workingValue18
  localValue4 = localValue1
  localValue2 = localValue2(localValue3, localValue4)
  localValue3 = cmgOperation.locations
  localValue4 = workingValue18
  localValue3 = localValue3[localValue4]
  localValue3 = localValue3.items
  localValue3 = localValue3[localValue2]
  if localValue3 then
    localValue3 = true
    return localValue3
  else
    localValue3 = false
    return localValue3
  end
end
text10 = RegisterNetEvent
text11 = "6caf35bab2"
-- Beginner: this function handles network event "6caf35bab2".

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1, localValue2, localValue3, localValue4) ===
function cmgOperation4(localValue1, localValue2, localValue3, localValue4)
  local localValue5, text15, text16, stringHelper2, cmgOperation5, cmgOperation6, number, number2, number3, number4, text2, dataCollection3, text5, stateFlag2, number5, stateFlag3
  localValue5 = cmgOperation.locations
  localValue5 = localValue5[localValue1]
  text15 = pairs
  text16 = localValue5.jobs
  text15, text16, stringHelper2, cmgOperation5 = text15(text16)
  for cmgOperation6, number in text15, text16, stringHelper2, cmgOperation5 do
    number2 = number.jobType
    if number2 == localValue3 then
      workingValue18 = localValue1
      workingValue20 = localValue2
      number2 = dataCollection2
      number2 = number2[localValue3]
      workingValue21 = number2
      number2 = workingValue21.initStage
      workingValue = number2
      workingValue2 = localValue4
      workingValue3 = localValue3
      number2 = rageUiOperation3
      number2()
      number2 = CMG
      number2 = number2.setInventoryBusinessCb
      number3 = rageUiOperation4
      number2(number3)
      number2 = number.jobMetadata
      workingValue22 = number2
      number2 = {}
      workingValue23 = number2
      number2 = CMG
      number2 = number2.getUserBusinessData
      number2 = number2()
      number3 = assert
      number4 = number2
      text2 = "Expecting valid business data whilst trying to set working"
      number3(number4, text2)
      number3 = workingValue21.init
      if number3 then
        number3 = workingValue21.init
        number4 = number2
        number3(number4)
      end
      number3 = workingValue21.stages
      number4 = workingValue
      number3 = number3[number4]
      number3 = number3.init
      if number3 then
        number4 = number3
        text2 = number2
        number4(text2)
      end
      number4 = PlaySound
      text2 = -1
      dataCollection3 = "CHECKPOINT_BEHIND"
      text5 = "HUD_MINI_GAME_SOUNDSET"
      stateFlag2 = false
      number5 = 0
      stateFlag3 = true
      number4(text2, dataCollection3, text5, stateFlag2, number5, stateFlag3)
      number4 = CMG
      number4 = number4.initializeInstructionalJobScaleform
      text2 = workingValue20
      dataCollection3 = "You have started working, follow the instructions to fulfill your job."
      number4(text2, dataCollection3)
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6caf35bab2".
text10(text11, cmgOperation4)

-- === HELPER FUNCTION (decompiler name: text10; parameters: none) ===
function text10()
  local localValue1, localValue2, localValue3, localValue4, localValue5, text15, text16, stringHelper2
  localValue1 = workingValue14
  if localValue1 then
    localValue1 = pairs
    localValue2 = workingValue14
    localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
    for localValue5, text15 in localValue1, localValue2, localValue3, localValue4 do
      text16 = tCMG
      text16 = text16.removeArea
      stringHelper2 = text15[1]
      text16(stringHelper2)
      text16 = tCMG
      text16 = text16.removeMarker
      stringHelper2 = text15[2]
      text16(stringHelper2)
    end
  end
  localValue1 = nil
  workingValue14 = localValue1
end
text11 = RegisterNetEvent
cmgOperation4 = "458add671d"
-- Beginner: this function handles network event "458add671d".

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = workingValue21
  if localValue1 then
    localValue1 = text10
    -- Beginner: Register a network event handler that the server/other clients can trigger.
    localValue1()
    localValue1 = CMG
    localValue1 = localValue1.getUserBusinessData
    localValue1 = localValue1()
    localValue2 = assert
    localValue3 = localValue1
    localValue4 = "Expecting valid business data whilst trying to stop working"
    localValue2(localValue3, localValue4)
    localValue2 = workingValue21.stages
    localValue3 = workingValue
    localValue2 = localValue2[localValue3]
    localValue2 = localValue2.finish
    if localValue2 then
      localValue3 = localValue2
      localValue4 = localValue1
      localValue3(localValue4)
    end
    localValue3 = workingValue21.finish
    if localValue3 then
      localValue3 = workingValue21.finish
      localValue4 = localValue1
      localValue3(localValue4)
    end
    localValue3 = nil
    workingValue18 = localValue3
    localValue3 = nil
    workingValue20 = localValue3
    localValue3 = nil
    workingValue22 = localValue3
    localValue3 = nil
    workingValue23 = localValue3
    localValue3 = nil
    workingValue2 = localValue3
    localValue3 = nil
    workingValue3 = localValue3
    localValue3 = nil
    workingValue21 = localValue3
    localValue3 = CMG
    localValue3 = localValue3.setInventoryBusinessCb
    localValue4 = nil
    localValue3(localValue4)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "458add671d".
text11(cmgOperation4, text12)
text11 = AddEventHandler
cmgOperation4 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1) ===
function text12(localValue1)
  local localValue2, localValue3
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue2 == localValue1 then
    localValue2 = TriggerEvent
    localValue3 = "458add671d"
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "458add671d".
    localValue2(localValue3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
text11(cmgOperation4, text12)

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2, localValue3, localValue4, localValue5
  localValue1 = workingValue21
  if not localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.getUserBusinessData
  localValue1 = localValue1()
  if not localValue1 then
    return
  end
  localValue2 = workingValue21.stages
  localValue3 = workingValue
  localValue2 = localValue2[localValue3]
  localValue3 = localValue2.tick
  localValue4 = localValue1
  localValue3 = localValue3(localValue4)
  if localValue3 then
    localValue3 = localValue2.finish
    if localValue3 then
      localValue3 = localValue2.finish
      localValue4 = localValue1
      localValue3(localValue4)
    end
    localValue3 = localValue2.next
    workingValue = localValue3
    localValue3 = workingValue21.stages
    localValue4 = workingValue
    localValue3 = localValue3[localValue4]
    localValue3 = localValue3.init
    if localValue3 then
      localValue4 = localValue3
      localValue5 = localValue1
      localValue4(localValue5)
    end
  end
end
cmgOperation4 = CMG
cmgOperation4 = cmgOperation4.createThreadOnTick
text12 = text11
workingValue10 = "Business Job Type Tick"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation4(text12, workingValue10)
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function text12(localValue1, localValue2, localValue3, localValue4, localValue5)
  local text15, text16
  text15 = dataCollection2
  text16 = {}
  text16.init = localValue2
  text16.initStage = localValue3
  text16.stages = localValue4
  text16.finish = localValue5
  text15[localValue1] = text16
end
cmgOperation4.registerBusinessJob = text12
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1) ===
function text12(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = workingValue18
  if not localValue2 then
    localValue2 = nil
    return localValue2
  end
  localValue2 = cmgOperation.locations
  localValue3 = workingValue18
  localValue2 = localValue2[localValue3]
  if not localValue2 then
    localValue3 = nil
    return localValue3
  end
  localValue3 = false
  if localValue1 then
    localValue4 = workingValue3
    localValue3 = localValue1 == localValue4
  else
    localValue3 = true
  end
  if not localValue3 then
    localValue4 = nil
    return localValue4
  end
  localValue4 = assert
  localValue5 = workingValue22
  localValue4(localValue5)
  localValue4 = assert
  localValue5 = workingValue23
  localValue4(localValue5)
  localValue4 = {}
  localValue5 = workingValue18
  localValue4.name = localValue5
  localValue4.locationInfo = localValue2
  localValue5 = workingValue22
  localValue4.jobMetadata = localValue5
  localValue5 = workingValue23
  localValue4.jobInfo = localValue5
  localValue5 = workingValue2
  if not localValue5 then
    localValue5 = {}
  end
  localValue4.state = localValue5
  return localValue4
end
cmgOperation4.getUserBusinessData = text12
cmgOperation4 = RegisterNetEvent
text12 = "48d68977ee"
-- Beginner: this function handles network event "48d68977ee".

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1) ===
function workingValue10(localValue1)
  local localValue2
  workingValue2 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "48d68977ee".
cmgOperation4(text12, workingValue10)
cmgOperation4 = RegisterNetEvent
text12 = "da8e8bb9ff"
-- Beginner: this function handles network event "da8e8bb9ff".

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: none) ===
function workingValue10()
  local localValue1, localValue2
  localValue1 = CMG
  localValue1 = localValue1.setInventoryTransferDisabled
  localValue2 = true
  localValue1(localValue2)
  while true do
    localValue1 = CMG
    localValue1 = localValue1.isDrawingInventoryUI
    localValue1 = localValue1()
    if not localValue1 then
      break
    end
    localValue1 = Citizen
    localValue1 = localValue1.Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = CMG
  localValue1 = localValue1.setInventoryTransferDisabled
  localValue2 = false
  localValue1(localValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "da8e8bb9ff".
cmgOperation4(text12, workingValue10)
cmgOperation4 = RegisterNetEvent
text12 = "7eef379887"
-- Beginner: this function handles network event "7eef379887".

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1, localValue2) ===
function workingValue10(localValue1, localValue2)
  local localValue3
  localValue3 = dataCollection4
  localValue3[localValue1] = localValue2
end
cmgOperation4(text12, workingValue10)
cmgOperation4 = CMG
-- Beginner: this function handles network event "7eef379887".

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1) ===
function text12(localValue1)
  local localValue2
  localValue2 = dataCollection4
  localValue2 = localValue2[localValue1]
  if not localValue2 then
    localValue2 = {}
  end
  return localValue2
end
cmgOperation4.getBusinessPriceOverrides = text12

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue1) ===
function cmgOperation4(localValue1)
  local localValue2, localValue3, localValue4, localValue5, text15
  localValue2 = DisableControlAction
  localValue3 = 0
  localValue4 = 22
  localValue5 = true
  localValue2(localValue3, localValue4, localValue5)
  localValue2 = localValue1.distance
  if localValue2 > 1.0 then
    return
  end
  localValue2 = drawNativeNotification
  localValue3 = "Press ~INPUT_CONTEXT~ to view the menu"
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue2(localValue3)
  localValue2 = IsControlJustPressed
  localValue3 = 0
  localValue4 = 51
  localValue2 = localValue2(localValue3, localValue4)
  if localValue2 then
    localValue2 = RageUI
    localValue2 = localValue2.Visible
    localValue3 = RMenu
    localValue4 = localValue3
    localValue3 = localValue3.Get
    localValue5 = "business"
    text15 = "menu"
    -- Beginner: result below is menu.
    localValue3 = localValue3(localValue4, localValue5, text15)
    localValue4 = true
    localValue2(localValue3, localValue4)
    workingValue7 = localValue1
    localValue2 = TriggerServerEvent
    localValue3 = "e76e0858eb"
    localValue4 = localValue1.businessName
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e76e0858eb".
    localValue2(localValue3, localValue4)
  end
end

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
end
workingValue10 = Citizen
workingValue10 = workingValue10.CreateThread

-- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
function number11()
  local localValue1, localValue2, localValue3, localValue4, localValue5, text15, text16, stringHelper2, cmgOperation5, cmgOperation6, number, number2, number3, number4, text2, dataCollection3, text5, stateFlag2, number5, stateFlag3, dataCollection8, number6, number7, number8, number9
  localValue1 = DecorRegister
  localValue2 = "adf4399051"
  localValue3 = 2
  localValue1(localValue2, localValue3)
  localValue1 = pairs
  localValue2 = cmgOperation.locations
  localValue1, localValue2, localValue3, localValue4 = localValue1(localValue2)
  for localValue5, text15 in localValue1, localValue2, localValue3, localValue4 do
    text16 = pairs
    stringHelper2 = text15.menuPositions
    text16, stringHelper2, cmgOperation5, cmgOperation6 = text16(stringHelper2)
    for number, number2 in text16, stringHelper2, cmgOperation5, cmgOperation6 do
      number3 = tCMG
      number3 = number3.addMarker
      number4 = number2.x
      text2 = number2.y
      dataCollection3 = number2.z
      dataCollection3 = dataCollection3 - 0.95
      text5 = 0.2
      stateFlag2 = 0.2
      number5 = 0.2
      stateFlag3 = 255
      dataCollection8 = 255
      number6 = 0
      number7 = 150
      number8 = 25.0
      number9 = 27
      -- Beginner: Create a world marker.
      number3(number4, text2, dataCollection3, text5, stateFlag2, number5, stateFlag3, dataCollection8, number6, number7, number8, number9)
      number3 = CMG
      number3 = number3.createArea
      number4 = "business_menu_"
      text2 = localValue5
      dataCollection3 = "_"
      text5 = tostring
      stateFlag2 = number
      text5 = text5(stateFlag2)
      number4 = number4 .. text2 .. dataCollection3 .. text5
      text2 = number2
      dataCollection3 = 5.0
      text5 = 1.5

      -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: none) ===
      function stateFlag2()
        local localValue12, cmgOperation2
      end
      number5 = text12
      stateFlag3 = cmgOperation4
      dataCollection8 = {}
      dataCollection8.businessName = localValue5
      dataCollection8.locationInfo = text15
      -- Beginner: Create an interaction area around a world position.
      number3(number4, text2, dataCollection3, text5, stateFlag2, number5, stateFlag3, dataCollection8)
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
workingValue10(number11)
workingValue10 = RegisterNetEvent
number11 = "7902668e2b"
-- Beginner: this function handles network event "7902668e2b".

-- === HELPER FUNCTION (decompiler name: number12; parameters: none) ===
function number12()
  local localValue1, localValue2
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7902668e2b".
workingValue10(number11, number12)
workingValue10 = false
number11 = nil
number12 = nil
number13 = nil
number14 = nil
number15 = nil
dataCollection10 = nil
number17 = nil
number18 = nil
number19 = nil
number20 = 400
number21 = 20.0
number22 = 30000

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = number11
  if localValue1 then
    localValue1 = SetSwimMultiplierForPlayer
    localValue2 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    localValue2 = localValue2()
    localValue3 = 1.49
    localValue1(localValue2, localValue3)
  end
  localValue1 = number12
  if localValue1 then
    localValue1 = SetRunSprintMultiplierForPlayer
    localValue2 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    localValue2 = localValue2()
    localValue3 = 1.49
    localValue1(localValue2, localValue3)
  end
  localValue1 = number13
  if localValue1 then
    localValue1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue1 = localValue1()
    localValue2 = number13.lastChange
    if localValue2 then
      localValue2 = number13.lastChange
      localValue2 = localValue1 - localValue2
      localValue3 = number22
      if not (localValue2 > localValue3) then
        goto continueAtStep42
      end
    end
    localValue2 = CMG
    localValue2 = localValue2.getRandomWalkStyle
    localValue2 = localValue2()
    if localValue2 then
      localValue3 = Citizen
      localValue3 = localValue3.CreateThread

      -- === HELPER FUNCTION: localValue4() ===
      function localValue4()
        local localValue12, cmgOperation2, workingValue9, dataCollection9
        localValue12 = CMG
        localValue12 = localValue12.loadAnimDict
        cmgOperation2 = localValue2
        -- Beginner: Load a GTA animation dictionary before using it.
        localValue12(cmgOperation2)
        localValue12 = SetPedMovementClipset
        cmgOperation2 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        cmgOperation2 = cmgOperation2()
        workingValue9 = localValue2
        dataCollection9 = 0.2
        localValue12(cmgOperation2, workingValue9, dataCollection9)
        localValue12 = RemoveAnimSet
        cmgOperation2 = localValue2
        localValue12(cmgOperation2)
        localValue12 = RemoveAnimDict
        cmgOperation2 = localValue2
        localValue12(cmgOperation2)
      end
      -- Beginner: Start a separate FiveM thread so this code can run independently.
      localValue3(localValue4)
      number13.lastChange = localValue1
    end
  end
  ::continueAtStep42::
  localValue1 = number14
  if localValue1 then
    localValue1 = DecorSetBool
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = "adf4399051"
    localValue4 = true
    localValue1(localValue2, localValue3, localValue4)
  end
  localValue1 = number15
  if localValue1 then
    localValue1 = IsPedReloading
    localValue2 = PlayerPedId
    localValue2, localValue3, localValue4 = localValue2()
    localValue1 = localValue1(localValue2, localValue3, localValue4)
    if localValue1 then
      localValue1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue1 = localValue1()
      localValue2 = number15.wantsTime
      if not localValue2 then
        localValue2 = number15.lastReloadTime
        if localValue2 then
          localValue2 = number15.lastReloadTime
          localValue2 = localValue1 - localValue2
          localValue3 = number20
        end
        if localValue2 > localValue3 then
          number15.wantsTime = localValue1
        end
      else
        localValue2 = number15.wantsTime
        localValue2 = localValue1 - localValue2
        localValue3 = number20
        if localValue2 > localValue3 then
          localValue2 = RefillAmmoInstantly
          localValue3 = PlayerPedId
          localValue3, localValue4 = localValue3()
          localValue2(localValue3, localValue4)
          number15.wantsTime = nil
          localValue2 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          localValue2 = localValue2()
          number15.lastReloadTime = localValue2
        end
      end
    end
  end
  localValue1 = dataCollection10
  if localValue1 then
    localValue1 = SetNightvision
    localValue2 = true
    localValue1(localValue2)
  end
  localValue1 = number17
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.isScubaJobInProgress
    localValue1 = localValue1()
    if not localValue1 then
      localValue1 = SetPedMaxTimeUnderwater
      localValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = number21
      localValue1(localValue2, localValue3)
    end
  end
  localValue1 = number18
  if localValue1 then
    localValue1 = StatSetInt
    localValue2 = -1210645269
    localValue3 = 500
    localValue4 = false
    localValue1(localValue2, localValue3, localValue4)
  end
  localValue1 = number19
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.enablePunching
    localValue2 = true
    localValue1(localValue2)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
function workingValue12()
  local localValue1, localValue2, localValue3
  localValue1 = workingValue10
  if not localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.createThreadOnTick
    localValue2 = workingValue11
    localValue3 = "Business Item Effect Tick"
    -- Beginner: Run a helper every game frame while this script is active.
    localValue1(localValue2, localValue3)
    localValue1 = true
    workingValue10 = localValue1
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2
  localValue1 = workingValue10
  if not localValue1 then
    return
  end
  localValue1 = number11
  if not localValue1 then
    localValue1 = number12
    if not localValue1 then
      localValue1 = number13
      if not localValue1 then
        localValue1 = number14
        if not localValue1 then
          localValue1 = number15
          if not localValue1 then
            localValue1 = dataCollection10
            if not localValue1 then
              localValue1 = number17
              if not localValue1 then
                localValue1 = number18
                if not localValue1 then
                  localValue1 = number19
                  if not localValue1 then
                    goto continueAtStep33
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
  ::continueAtStep33::
  localValue1 = CMG
  localValue1 = localValue1.deleteThreadOnTick
  localValue2 = workingValue11
  localValue1(localValue2)
  localValue1 = false
  workingValue10 = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1, localValue2) ===
function workingValue15(localValue1, localValue2)
  local localValue3, localValue4, localValue5
  localValue3 = RegisterNetEvent
  localValue4 = localValue1
  -- Beginner: this function handles network event (event name set just above).

  -- === HELPER FUNCTION: localValue5(localValue12) ===
  function localValue5(localValue12)
    local cmgOperation2, workingValue9
    cmgOperation2 = workingValue12
    cmgOperation2()
    cmgOperation2 = localValue2
    workingValue9 = localValue12
    cmgOperation2(workingValue9)
    cmgOperation2 = workingValue13
    cmgOperation2()
  end
  -- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: false.
  localValue3(localValue4, localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function workingValue16(localValue1, localValue2, localValue3, localValue4, localValue5)
  local text15, text16, stringHelper2, cmgOperation5, cmgOperation6
  text15 = localValue3.duration
  if text15 then
    text15 = localValue3.duration
    if not (text15 <= 0) then
      goto continueAtStep8
    end
  end
  return
  ::continueAtStep8::
  text15 = localValue4
  text16 = localValue3
  text15(text16)
  text15 = CMG
  text15 = text15.addHudDurationTimer
  text16 = localValue1
  stringHelper2 = localValue2
  cmgOperation5 = localValue3.duration

  -- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
  function cmgOperation6()
    local localValue12, cmgOperation2
    localValue12 = localValue5
    cmgOperation2 = localValue3
    localValue12(cmgOperation2)
  end
  text15(text16, stringHelper2, cmgOperation5, cmgOperation6)
  text15 = Citizen
  text15 = text15.Wait
  text16 = localValue3.duration
  text16 = text16 * 1000
  text15(text16)
  text15 = localValue5
  text16 = localValue3
  text15(text16)
end
eventHandler = RegisterNetEvent
text14 = "0c657e4148"
-- Beginner: this function handles network event "0c657e4148".

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, text15, text16, stringHelper2
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = GetEntityHealth
  localValue4 = localValue2
  -- Beginner: result below is health.
  localValue3 = localValue3(localValue4)
  localValue4 = GetEntityMaxHealth
  localValue5 = localValue2
  localValue4 = localValue4(localValue5)
  if not (localValue3 <= 102) then
    localValue5 = tCMG
    localValue5 = localValue5.isInComa
    localValue5 = localValue5()
    if not localValue5 then
      goto continueAtStep17
    end
  end
  return
  ::continueAtStep17::
  localValue5 = math
  localValue5 = localValue5.min
  text15 = localValue1.amount
  text15 = localValue3 + text15
  text16 = localValue4
  localValue5 = localValue5(text15, text16)
  text15 = SetEntityHealth
  text16 = localValue2
  stringHelper2 = localValue5
  text15(text16, stringHelper2)
  text15 = notify
  text16 = "~y~You start beginning to feel refreshed."
  -- Beginner: Show a notification to the player.
  text15(text16)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "0c657e4148".
eventHandler(text14, workingValue17)
eventHandler = workingValue15
text14 = "3166a56bf1"

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, text15, text16
  localValue2 = notify
  localValue3 = "~y~You feel a sudden burst of energy..."
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
  localValue2 = workingValue16
  localValue3 = "businessSwim"
  localValue4 = "Swim Boost"
  localValue5 = localValue1

  -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue12) ===
  function text15(localValue12)
    local cmgOperation2
    number11 = localValue12
  end

  -- === HELPER FUNCTION (decompiler name: text16; parameters: localValue12) ===
  function text16(localValue12)
    local cmgOperation2, workingValue9, dataCollection9
    cmgOperation2 = number11
    if cmgOperation2 == localValue12 then
      cmgOperation2 = SetSwimMultiplierForPlayer
      workingValue9 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      workingValue9 = workingValue9()
      dataCollection9 = 1.0
      cmgOperation2(workingValue9, dataCollection9)
      cmgOperation2 = nil
      number11 = cmgOperation2
    end
  end
  localValue2(localValue3, localValue4, localValue5, text15, text16)
end
eventHandler(text14, workingValue17)
eventHandler = workingValue15
text14 = "d2497ff135"

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, text15, text16
  localValue2 = notify
  localValue3 = "~y~You feel a sudden burst of energy..."
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
  localValue2 = workingValue16
  localValue3 = "businessSprint"
  localValue4 = "Sprint Boost"
  localValue5 = localValue1

  -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue12) ===
  function text15(localValue12)
    local cmgOperation2
    number12 = localValue12
  end

  -- === HELPER FUNCTION (decompiler name: text16; parameters: localValue12) ===
  function text16(localValue12)
    local cmgOperation2, workingValue9, dataCollection9
    cmgOperation2 = number12
    if cmgOperation2 == localValue12 then
      cmgOperation2 = SetRunSprintMultiplierForPlayer
      workingValue9 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      workingValue9 = workingValue9()
      dataCollection9 = 1.0
      cmgOperation2(workingValue9, dataCollection9)
      cmgOperation2 = nil
      number12 = cmgOperation2
    end
  end
  localValue2(localValue3, localValue4, localValue5, text15, text16)
end
eventHandler(text14, workingValue17)
eventHandler = workingValue15
text14 = "e100559849"

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, text15
  localValue2 = notify
  localValue3 = "~y~You begin to work effectively..."
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
  localValue2 = localValue1.duration
  if localValue2 then
    localValue2 = localValue1.duration
    if localValue2 > 0 then
      localValue2 = CMG
      localValue2 = localValue2.addHudDurationTimer
      localValue3 = "businessFarming"
      localValue4 = "Farming Boost"
      localValue5 = localValue1.duration
      text15 = nil
      localValue2(localValue3, localValue4, localValue5, text15)
      localValue2 = Citizen
      localValue2 = localValue2.Wait
      localValue3 = localValue1.duration
      localValue3 = localValue3 * 1000
      localValue2(localValue3)
    end
  end
end
eventHandler(text14, workingValue17)
eventHandler = workingValue15
text14 = "462ba9d5f3"

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, text15, text16
  localValue2 = notify
  localValue3 = "~y~You start to feel dizzy..."
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
  localValue2 = workingValue16
  localValue3 = "businessRandomWalk"
  localValue4 = "Dizzy"
  localValue5 = localValue1

  -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue12) ===
  function text15(localValue12)
    local cmgOperation2
    number13 = localValue12
  end

  -- === HELPER FUNCTION (decompiler name: text16; parameters: localValue12) ===
  function text16(localValue12)
    local cmgOperation2
    cmgOperation2 = number13
    if cmgOperation2 == localValue12 then
      cmgOperation2 = nil
      number13 = cmgOperation2
    end
  end
  localValue2(localValue3, localValue4, localValue5, text15, text16)
end
eventHandler(text14, workingValue17)
eventHandler = workingValue15
text14 = "83e8ddd5af"

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, text15, text16
  localValue2 = notify
  localValue3 = "~y~You start feel more concentrated..."
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
  localValue2 = workingValue16
  localValue3 = "businessDriveSpeed"
  localValue4 = "Drive Boost"
  localValue5 = localValue1

  -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue12) ===
  function text15(localValue12)
    local cmgOperation2
    number14 = localValue12
  end

  -- === HELPER FUNCTION (decompiler name: text16; parameters: localValue12) ===
  function text16(localValue12)
    local cmgOperation2, workingValue9, dataCollection9
    cmgOperation2 = number14
    if cmgOperation2 == localValue12 then
      cmgOperation2 = DecorRemove
      workingValue9 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      workingValue9 = workingValue9()
      dataCollection9 = "adf4399051"
      cmgOperation2(workingValue9, dataCollection9)
      cmgOperation2 = nil
      number14 = cmgOperation2
    end
  end
  localValue2(localValue3, localValue4, localValue5, text15, text16)
end
eventHandler(text14, workingValue17)
eventHandler = workingValue15
text14 = "90424f5389"

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, text15, text16
  localValue2 = notify
  localValue3 = "~y~Your hand grip strengthens."
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
  localValue2 = workingValue16
  localValue3 = "businessFastReload"
  localValue4 = "Fast Reload"
  localValue5 = localValue1

  -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue12) ===
  function text15(localValue12)
    local cmgOperation2
    number15 = localValue12
  end

  -- === HELPER FUNCTION (decompiler name: text16; parameters: localValue12) ===
  function text16(localValue12)
    local cmgOperation2
    cmgOperation2 = number15
    if cmgOperation2 == localValue12 then
      cmgOperation2 = nil
      number15 = cmgOperation2
    end
  end
  localValue2(localValue3, localValue4, localValue5, text15, text16)
end
eventHandler(text14, workingValue17)
eventHandler = workingValue15
text14 = "4a387338b1"

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, text15, text16
  localValue2 = notify
  localValue3 = "~y~Your pupils dilate."
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
  localValue2 = workingValue16
  localValue3 = "businessNightVision"
  localValue4 = "Night Vision"
  localValue5 = localValue1

  -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue12) ===
  function text15(localValue12)
    local cmgOperation2
    dataCollection10 = localValue12
  end

  -- === HELPER FUNCTION (decompiler name: text16; parameters: localValue12) ===
  function text16(localValue12)
    local cmgOperation2, workingValue9
    cmgOperation2 = dataCollection10
    if cmgOperation2 == localValue12 then
      cmgOperation2 = SetNightvision
      workingValue9 = false
      cmgOperation2(workingValue9)
      cmgOperation2 = nil
      dataCollection10 = cmgOperation2
    end
  end
  localValue2(localValue3, localValue4, localValue5, text15, text16)
end
eventHandler(text14, workingValue17)
eventHandler = workingValue15
text14 = "825b9d40ef"

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, text15, text16
  localValue2 = notify
  localValue3 = "~y~You start feeling less exhausted..."
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
  localValue2 = workingValue16
  localValue3 = "businessLungCapacity"
  localValue4 = "Lung Capacity"
  localValue5 = localValue1

  -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue12) ===
  function text15(localValue12)
    local cmgOperation2
    number17 = localValue12
  end

  -- === HELPER FUNCTION (decompiler name: text16; parameters: localValue12) ===
  function text16(localValue12)
    local cmgOperation2, workingValue9, dataCollection9
    cmgOperation2 = number17
    if cmgOperation2 == localValue12 then
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.isScubaJobInProgress
      cmgOperation2 = cmgOperation2()
      if not cmgOperation2 then
        cmgOperation2 = SetPedMaxTimeUnderwater
        workingValue9 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        workingValue9 = workingValue9()
        dataCollection9 = 10.0
        cmgOperation2(workingValue9, dataCollection9)
      end
      cmgOperation2 = nil
      number17 = cmgOperation2
    end
  end
  localValue2(localValue3, localValue4, localValue5, text15, text16)
end
eventHandler(text14, workingValue17)
eventHandler = workingValue15
text14 = "ea7a34b297"

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, text15, text16
  localValue2 = notify
  localValue3 = "~y~You start feeling more flexible..."
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
  localValue2 = workingValue16
  localValue3 = "businessDoubleRoll"
  localValue4 = "Double Roll"
  localValue5 = localValue1

  -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue12) ===
  function text15(localValue12)
    local cmgOperation2
    number18 = localValue12
  end

  -- === HELPER FUNCTION (decompiler name: text16; parameters: localValue12) ===
  function text16(localValue12)
    local cmgOperation2, workingValue9, dataCollection9, stateFlag4
    cmgOperation2 = number18
    if cmgOperation2 == localValue12 then
      cmgOperation2 = StatSetInt
      workingValue9 = -1210645269
      dataCollection9 = 0
      stateFlag4 = false
      cmgOperation2(workingValue9, dataCollection9, stateFlag4)
      cmgOperation2 = nil
      number18 = cmgOperation2
    end
  end
  localValue2(localValue3, localValue4, localValue5, text15, text16)
end
eventHandler(text14, workingValue17)
eventHandler = workingValue15
text14 = "341cc286bd"

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, text15, text16
  localValue2 = notify
  localValue3 = "~y~Your fists clench..."
  -- Beginner: Show a notification to the player.
  localValue2(localValue3)
  localValue2 = workingValue16
  localValue3 = "businessPunch"
  localValue4 = "Punch Boost"
  localValue5 = localValue1

  -- === HELPER FUNCTION (decompiler name: text15; parameters: localValue12) ===
  function text15(localValue12)
    local cmgOperation2
    number19 = localValue12
  end

  -- === HELPER FUNCTION (decompiler name: text16; parameters: localValue12) ===
  function text16(localValue12)
    local cmgOperation2, workingValue9
    cmgOperation2 = number19
    if cmgOperation2 == localValue12 then
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.enablePunching
      workingValue9 = false
      cmgOperation2(workingValue9)
      cmgOperation2 = nil
      number19 = cmgOperation2
    end
  end
  localValue2(localValue3, localValue4, localValue5, text15, text16)
end
eventHandler(text14, workingValue17)
eventHandler = RegisterNetEvent
text14 = "a4028221c0"
-- Beginner: this function handles network event "a4028221c0".

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, text15, text16
  localValue2 = localValue1.duration
  if not localValue2 then
    localValue2 = 300
  end
  localValue3 = CMG
  localValue3 = localValue3.addHudDurationTimer
  localValue4 = "businessStorage"
  localValue5 = "Extra Storage"
  text15 = localValue2
  text16 = nil
  localValue3(localValue4, localValue5, text15, text16)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a4028221c0".
eventHandler(text14, workingValue17)
eventHandler = RegisterNetEvent
text14 = "a0b1882a81"
-- Beginner: this function handles network event "a0b1882a81".

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3
  if "food" == localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.playEmote
    localValue3 = "burger"
    localValue2(localValue3)
  elseif "drink" == localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.playEmote
    localValue3 = "sipsoda"
    localValue2(localValue3)
  elseif "milkshake" == localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.playEmote
    localValue3 = "sipshakel"
    localValue2(localValue3)
  elseif "icecream" == localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.playEmote
    localValue3 = "icecreama"
    localValue2(localValue3)
  elseif "cupcake" == localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.playEmote
    localValue3 = "xmascc"
    localValue2(localValue3)
  elseif "egobar" == localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.playEmote
    localValue3 = "egobar"
    localValue2(localValue3)
  elseif "edrink" == localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.playEmote
    localValue3 = "edrink"
    localValue2(localValue3)
  elseif "beer2" == localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.playEmote
    localValue3 = "beer2"
    localValue2(localValue3)
  elseif "carrot" == localValue1 then
    localValue2 = CMG
    localValue2 = localValue2.playEmote
    localValue3 = "carrot"
    localValue2(localValue3)
  end
  localValue2 = Wait
  localValue3 = 4000
  localValue2(localValue3)
  localValue2 = CMG
  localValue2 = localValue2.cancelEmote
  localValue3 = true
  localValue2(localValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a0b1882a81".
eventHandler(text14, workingValue17)
eventHandler = CMG

-- === HELPER FUNCTION (decompiler name: text14; parameters: none) ===
function text14()
  local localValue1, localValue2
  localValue1 = workingValue18
  localValue1 = nil ~= localValue1
  return localValue1
end
eventHandler.isWorkingInBusiness = text14
eventHandler = RegisterNetEvent
text14 = "082804e988"
-- Beginner: this function handles network event "082804e988".

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2
  dataCollection5 = localValue1
end
eventHandler(text14, workingValue17)
eventHandler = RegisterNetEvent
text14 = "b50f9b40e3"
-- Beginner: this function handles network event "b50f9b40e3".

-- === HELPER FUNCTION (decompiler name: workingValue17; parameters: localValue1) ===
function workingValue17(localValue1)
  local localValue2, localValue3, localValue4, localValue5, text15
  dataCollection7 = localValue1
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  localValue3 = RMenu
  localValue4 = localValue3
  localValue3 = localValue3.Get
  localValue5 = "business"
  text15 = "employees"
  -- Beginner: result below is menu.
  localValue3 = localValue3(localValue4, localValue5, text15)
  localValue4 = true
  localValue2(localValue3, localValue4)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "b50f9b40e3".
eventHandler(text14, workingValue17)
