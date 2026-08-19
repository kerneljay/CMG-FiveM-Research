--[[
    LEVEL 1 BEGINNER GUIDE — Casinochips
    =========================================

    File: cmg/prod/client/casino/cl_casinochips.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: casino gameplay and casino UI/features, specifically the Casinochips feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 20
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
local text, number15, workingValue5, text7, text8, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, text2, text3, number3, number5, number7, number8, number9, number10, number12, number14, number16, createVector3, createVector32, number19, number21, number23
text = "0"
number15 = 0
workingValue5 = RMenu
workingValue5 = workingValue5.Add
text7 = "cmgchips"
text8 = "cashier"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text11 = ""
text12 = ""
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
text2 = "cmg_casino"
text3 = "cmg_casino"
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, text2, text3, number3, number5, number7, number8, number9, number10, number12, number14, number16, createVector3, createVector32, number19, number21, number23 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, text2, text3)
workingValue5(text7, text8, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, text2, text3, number3, number5, number7, number8, number9, number10, number12, number14, number16, createVector3, createVector32, number19, number21, number23)
workingValue5 = RMenu
text7 = workingValue5
workingValue5 = workingValue5.Get
text8 = "cmgchips"
rageUiOperation = "cashier"
-- Beginner: result below is menu.
workingValue5 = workingValue5(text7, text8, rageUiOperation)
text7 = workingValue5
workingValue5 = workingValue5.SetSubtitle
text8 = "~b~CHIPS"
workingValue5(text7, text8)
workingValue5 = RMenu
workingValue5 = workingValue5.Add
text7 = "casino_enter"
text8 = "casino"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text11 = ""
text12 = ""
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
text2 = "cmg_casino"
text3 = "cmg_casino"
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, text2, text3, number3, number5, number7, number8, number9, number10, number12, number14, number16, createVector3, createVector32, number19, number21, number23 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, text2, text3)
workingValue5(text7, text8, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, text2, text3, number3, number5, number7, number8, number9, number10, number12, number14, number16, createVector3, createVector32, number19, number21, number23)
workingValue5 = RMenu
text7 = workingValue5
workingValue5 = workingValue5.Get
text8 = "casino_enter"
rageUiOperation = "casino"
-- Beginner: result below is menu.
workingValue5 = workingValue5(text7, text8, rageUiOperation)
text7 = workingValue5
workingValue5 = workingValue5.SetSubtitle
text8 = "~b~ENTER"
workingValue5(text7, text8)
workingValue5 = RMenu
workingValue5 = workingValue5.Add
text7 = "casino_exit"
text8 = "casino"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text11 = ""
text12 = ""
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
text2 = "cmg_casino"
text3 = "cmg_casino"
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, text2, text3, number3, number5, number7, number8, number9, number10, number12, number14, number16, createVector3, createVector32, number19, number21, number23 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, text2, text3)
workingValue5(text7, text8, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, text2, text3, number3, number5, number7, number8, number9, number10, number12, number14, number16, createVector3, createVector32, number19, number21, number23)
workingValue5 = RMenu
text7 = workingValue5
workingValue5 = workingValue5.Get
text8 = "casino_exit"
rageUiOperation = "casino"
-- Beginner: result below is menu.
workingValue5 = workingValue5(text7, text8, rageUiOperation)
text7 = workingValue5
workingValue5 = workingValue5.SetSubtitle
text8 = "~b~EXIT"
workingValue5(text7, text8)
workingValue5 = RMenu
workingValue5 = workingValue5.Add
text7 = "casino_rooftop_exit"
text8 = "casino"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text11 = ""
text12 = ""
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
text2 = "cmg_casino"
text3 = "cmg_casino"
rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, text2, text3, number3, number5, number7, number8, number9, number10, number12, number14, number16, createVector3, createVector32, number19, number21, number23 = rageUiOperation(text11, text12, rageUiOperation2, rageUiOperation3, text2, text3)
workingValue5(text7, text8, rageUiOperation, text11, text12, rageUiOperation2, rageUiOperation3, text2, text3, number3, number5, number7, number8, number9, number10, number12, number14, number16, createVector3, createVector32, number19, number21, number23)
workingValue5 = RMenu
text7 = workingValue5
workingValue5 = workingValue5.Get
text8 = "casino_rooftop_exit"
rageUiOperation = "casino"
-- Beginner: result below is menu.
workingValue5 = workingValue5(text7, text8, rageUiOperation)
text7 = workingValue5
workingValue5 = workingValue5.SetSubtitle
text8 = "~b~EXIT"
workingValue5(text7, text8)
workingValue5 = {}
text7 = {}
text7.model = -1156746507
text8 = vector3
rageUiOperation = 966.41003417969
text11 = 23.916101455688
text12 = 81.00611114502
text8 = text8(rageUiOperation, text11, text12)
text7.pedPosition = text8
text7.pedHeading = 328.0
text8 = vector3
rageUiOperation = 967.09735107422
text11 = 25.525142669678
text12 = 80.026103515625
text8 = text8(rageUiOperation, text11, text12)
text7.entryPosition = text8
text8 = {}
text8.model = -1156746507
rageUiOperation = vector3
text11 = 414.69891357422
text12 = 8.465934753418
rageUiOperation2 = 91.927490234375
rageUiOperation = rageUiOperation(text11, text12, rageUiOperation2)
text8.pedPosition = rageUiOperation
text8.pedHeading = 62.362205505371
rageUiOperation = vector3
text11 = 412.84494018555
text12 = 9.5947942733765
rageUiOperation2 = 91.035302734375
rageUiOperation = rageUiOperation(text11, text12, rageUiOperation2)
text8.entryPosition = rageUiOperation
rageUiOperation = {}
rageUiOperation.model = -1156746507
text11 = vector3
text12 = -274.54943847656
rageUiOperation2 = -732.19781494141
rageUiOperation3 = 125.49230957031
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
rageUiOperation.pedPosition = text11
rageUiOperation.pedHeading = 73.700790405273
text11 = vector3
text12 = -276.10549926758
rageUiOperation2 = -731.72308349609
rageUiOperation3 = 124.46861816406
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
rageUiOperation.entryPosition = text11
text11 = {}
text11.model = -1156746507
text12 = vector3
rageUiOperation2 = -54.039554595947
rageUiOperation3 = 8039.7231445312
text2 = 12.665893554688
text12 = text12(rageUiOperation2, rageUiOperation3, text2)
text11.pedPosition = text12
text11.pedHeading = 249.44882202148
text12 = vector3
rageUiOperation2 = -52.50394821167
rageUiOperation3 = 8039.302734375
text2 = 11.70361164093
text12 = text12(rageUiOperation2, rageUiOperation3, text2)
text11.entryPosition = text12
text12 = {}
text12.model = -1156746507
rageUiOperation2 = vector3
rageUiOperation3 = 1148.6636962891
text2 = -428.51867675781
text3 = 62.22119140625
rageUiOperation2 = rageUiOperation2(rageUiOperation3, text2, text3)
text12.pedPosition = rageUiOperation2
text12.pedHeading = 167.24407958984
rageUiOperation2 = vector3
rageUiOperation3 = 1147.1414794922
text2 = -429.94134521484
text3 = 61.235101470947
rageUiOperation2 = rageUiOperation2(rageUiOperation3, text2, text3)
text12.entryPosition = rageUiOperation2
rageUiOperation2 = {}
rageUiOperation2.model = -1156746507
rageUiOperation3 = vector3
text2 = -114.57550811768
text3 = 384.71957397461
number3 = 113.28313446045
rageUiOperation3 = rageUiOperation3(text2, text3, number3)
rageUiOperation2.pedPosition = rageUiOperation3
rageUiOperation2.pedHeading = 252.28346252441
rageUiOperation3 = vector3
text2 = -112.58515167236
text3 = 383.98904418945
number3 = 112.28524890137
rageUiOperation3 = rageUiOperation3(text2, text3, number3)
rageUiOperation2.entryPosition = rageUiOperation3
rageUiOperation3 = {}
rageUiOperation3.model = -1156746507
text2 = vector3
text3 = -263.38021850586
number3 = -913.14727783203
number5 = 32.312866210938
text2 = text2(text3, number3, number5)
rageUiOperation3.pedPosition = text2
rageUiOperation3.pedHeading = 17.007873535156
text2 = vector3
text3 = -262.64916992188
number3 = -911.17016601562
number5 = 31.34413269043
text2 = text2(text3, number3, number5)
rageUiOperation3.entryPosition = text2
text2 = {}
text2.model = -1156746507
text3 = vector3
number3 = 2071.5825195312
number5 = 5085.4946289062
number7 = 41.950927734375
text3 = text3(number3, number5, number7)
text2.pedPosition = text3
text2.pedHeading = 124.72441101074
text3 = vector3
number3 = 2070.2563476562
number5 = 5084.326171875
number7 = 40.965917358398
text3 = text3(number3, number5, number7)
text2.entryPosition = text3
text3 = {}
text3.model = -1156746507
number3 = vector3
number5 = 3943.1472167969
number7 = 4859.7495117188
number8 = 14.114990234375
number3 = number3(number5, number7, number8)
text3.pedPosition = number3
text3.pedHeading = 289.13385009766
number3 = vector3
number5 = 3943.9750976562
number7 = 4860.068359375
number8 = 13.121613502502
number3 = number3(number5, number7, number8)
text3.entryPosition = number3
number3 = {}
number3.model = -1156746507
number5 = vector3
number7 = 1157.31640625
number8 = -436.75601196289
number9 = 62.225215911865
number5 = number5(number7, number8, number9)
number3.pedPosition = number5
number3.pedHeading = 345.82678222656
number5 = vector3
number7 = 1157.9731445312
number8 = -434.87191772461
number9 = 61.225276947021
number5 = number5(number7, number8, number9)
number3.entryPosition = number5
number5 = {}
number5.model = -1156746507
number7 = vector3
number8 = 3762.5803222656
number9 = -1556.5977783203
number10 = 4.02197265625
number7 = number7(number8, number9, number10)
number5.pedPosition = number7
number5.pedHeading = 164.4094543457
number7 = vector3
number8 = 3762.2326660156
number9 = -1559.1011962891
number10 = 3.0253777503967
number7 = number7(number8, number9, number10)
number5.entryPosition = number7
number7 = {}
number7.model = -1156746507
number8 = vector3
number9 = -3007.8989257812
number10 = 76.193405151367
number12 = 16.305541992188
number8 = number8(number9, number10, number12)
number7.pedPosition = number8
number7.pedHeading = 238.11022949219
number8 = vector3
number9 = -3006.765625
number10 = 75.510192871094
number12 = 15.231451034546
number8 = number8(number9, number10, number12)
number7.entryPosition = number8
number8 = {}
number8.model = -1156746507
number9 = vector3
number10 = -1026.8967285156
number12 = -1369.3714599609
number14 = 9.4476318359375
number9 = number9(number10, number12, number14)
number8.pedPosition = number9
number8.pedHeading = 289.13385009766
number9 = vector3
number10 = -1026.01171875
number12 = -1368.8759765625
number14 = 8.4597616195679
number9 = number9(number10, number12, number14)
number8.entryPosition = number9
number9 = {}
number9.model = -1156746507
number10 = vector3
number12 = -1890.4483642578
number14 = 2064.3295898438
number16 = 145.56042480469
number10 = number10(number12, number14, number16)
number9.pedPosition = number10
number9.pedHeading = 252.28346252441
number10 = vector3
number12 = -1888.734375
number14 = 2063.6904296875
number16 = 144.57385253906
number10 = number10(number12, number14, number16)
number9.entryPosition = number10
workingValue5[1] = text7
workingValue5[2] = text8
workingValue5[3] = rageUiOperation
workingValue5[4] = text11
workingValue5[5] = text12
workingValue5[6] = rageUiOperation2
workingValue5[7] = rageUiOperation3
workingValue5[8] = text2
workingValue5[9] = text3
workingValue5[10] = number3
workingValue5[11] = number5
workingValue5[12] = number7
workingValue5[13] = number8
workingValue5[14] = number9
text7 = Citizen
text7 = text7.CreateThread

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, localValue2, stateFlag2, stateFlag3, stateFlag5, text9, cmgOperation4, iterator, workingValue8, number26, stateFlag, text4, text5, cmgOperation, workingValue, workingValue2
  localValue1 = pairs
  localValue2 = workingValue5
  localValue1, localValue2, stateFlag2, stateFlag3 = localValue1(localValue2)
  for stateFlag5, text9 in localValue1, localValue2, stateFlag2, stateFlag3 do
    cmgOperation4 = CMG
    cmgOperation4 = cmgOperation4.createDynamicPed
    iterator = text9.model
    workingValue8 = text9.pedPosition
    number26 = 100.0
    stateFlag = true
    text4 = "mini@strip_club@idles@bouncer@base"
    text5 = "base"
    cmgOperation = 75.0
    workingValue = nil

    -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue12) ===
    function workingValue2(localValue12)
      local workingValue4, workingValue6, stateFlag4, stateFlag6, number25, stateFlag7, stateFlag8, stateFlag9
      workingValue4 = SetEntityCanBeDamaged
      workingValue6 = localValue12
      stateFlag4 = false
      workingValue4(workingValue6, stateFlag4)
      workingValue4 = SetPedAsEnemy
      workingValue6 = localValue12
      stateFlag4 = false
      workingValue4(workingValue6, stateFlag4)
      workingValue4 = SetBlockingOfNonTemporaryEvents
      workingValue6 = localValue12
      stateFlag4 = true
      workingValue4(workingValue6, stateFlag4)
      workingValue4 = SetPedResetFlag
      workingValue6 = localValue12
      stateFlag4 = 249
      stateFlag6 = true
      workingValue4(workingValue6, stateFlag4, stateFlag6)
      workingValue4 = SetPedConfigFlag
      workingValue6 = localValue12
      stateFlag4 = 185
      stateFlag6 = true
      workingValue4(workingValue6, stateFlag4, stateFlag6)
      workingValue4 = SetPedConfigFlag
      workingValue6 = localValue12
      stateFlag4 = 108
      stateFlag6 = true
      workingValue4(workingValue6, stateFlag4, stateFlag6)
      workingValue4 = SetPedCanEvasiveDive
      workingValue6 = localValue12
      stateFlag4 = false
      workingValue4(workingValue6, stateFlag4)
      workingValue4 = SetPedCanRagdollFromPlayerImpact
      workingValue6 = localValue12
      stateFlag4 = false
      workingValue4(workingValue6, stateFlag4)
      workingValue4 = SetPedConfigFlag
      workingValue6 = localValue12
      stateFlag4 = 208
      stateFlag6 = true
      workingValue4(workingValue6, stateFlag4, stateFlag6)
      workingValue4 = SetEntityCollision
      workingValue6 = localValue12
      stateFlag4 = false
      stateFlag6 = false
      workingValue4(workingValue6, stateFlag4, stateFlag6)
      workingValue4 = SetEntityCoordsNoOffset
      workingValue6 = localValue12
      stateFlag4 = text9.pedPosition
      stateFlag4 = stateFlag4.x
      stateFlag6 = text9.pedPosition
      stateFlag6 = stateFlag6.y
      number25 = text9.pedPosition
      number25 = number25.z
      stateFlag7 = false
      stateFlag8 = false
      stateFlag9 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      workingValue4(workingValue6, stateFlag4, stateFlag6, number25, stateFlag7, stateFlag8, stateFlag9)
      workingValue4 = SetEntityHeading
      workingValue6 = localValue12
      stateFlag4 = text9.pedHeading
      -- Beginner: Change the direction an entity is facing.
      workingValue4(workingValue6, stateFlag4)
      workingValue4 = FreezeEntityPosition
      workingValue6 = localValue12
      stateFlag4 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      workingValue4(workingValue6, stateFlag4)
    end
    cmgOperation4(iterator, workingValue8, number26, stateFlag, text4, text5, cmgOperation, workingValue, workingValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
text7(text8)
text7 = RageUI
text7 = text7.CreateWhile
text8 = 1.0
rageUiOperation = RMenu
text11 = rageUiOperation
rageUiOperation = rageUiOperation.Get
text12 = "cmgchips"
rageUiOperation2 = "cashier"
-- Beginner: result below is menu.
rageUiOperation = rageUiOperation(text11, text12, rageUiOperation2)
text11 = nil

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2, stateFlag2, stateFlag3, stateFlag5, text9, cmgOperation4
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  stateFlag2 = localValue2
  localValue2 = localValue2.Get
  stateFlag3 = "cmgchips"
  stateFlag5 = "cashier"
  -- Beginner: result below is menu.
  localValue2 = localValue2(stateFlag2, stateFlag3, stateFlag5)
  stateFlag2 = true
  stateFlag3 = true
  stateFlag5 = true

  -- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
  function text9()
    local localValue12, workingValue4, workingValue6, stateFlag4, stateFlag6, number25
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    workingValue4 = "Buy chips"
    workingValue6 = ""
    stateFlag4 = {}
    stateFlag4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: number25; parameters: localValue13, localValue22, localValue3) ===
    function number25(localValue13, localValue22, localValue3)
      local cmgOperation2, cmgOperation3, text10, mathHelper, workingValue7
      if localValue3 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.GetRageInputInt
        cmgOperation3 = "Enter Chips"
        cmgOperation2 = cmgOperation2(cmgOperation3)
        if cmgOperation2 then
          if cmgOperation2 > 0 then
            cmgOperation3 = TriggerServerEvent
            text10 = "d5dbf55707"
            mathHelper = math
            mathHelper = mathHelper.floor
            workingValue7 = cmgOperation2
            mathHelper, workingValue7 = mathHelper(workingValue7)
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d5dbf55707".
            cmgOperation3(text10, mathHelper, workingValue7)
          else
            cmgOperation3 = tCMG
            cmgOperation3 = cmgOperation3.notify
            text10 = "~r~Negative amount."
            -- Beginner: Show a notification to the player.
            cmgOperation3(text10)
          end
        else
          cmgOperation3 = tCMG
          cmgOperation3 = cmgOperation3.notify
          text10 = "~r~Invalid amount."
          cmgOperation3(text10)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(workingValue4, workingValue6, stateFlag4, stateFlag6, number25)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    workingValue4 = "Buy all chips"
    workingValue6 = ""
    stateFlag4 = {}
    stateFlag4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: number25; parameters: localValue13, localValue22, localValue3) ===
    function number25(localValue13, localValue22, localValue3)
      local cmgOperation2, cmgOperation3
      if localValue3 then
        cmgOperation2 = TriggerServerEvent
        cmgOperation3 = "434a212611"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "434a212611".
        cmgOperation2(cmgOperation3)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(workingValue4, workingValue6, stateFlag4, stateFlag6, number25)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    workingValue4 = "Sell chips"
    workingValue6 = ""
    stateFlag4 = {}
    stateFlag4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: number25; parameters: localValue13, localValue22, localValue3) ===
    function number25(localValue13, localValue22, localValue3)
      local cmgOperation2, cmgOperation3, text10, mathHelper
      if localValue3 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.GetRageInputInt
        cmgOperation3 = "Enter Chips"
        cmgOperation2 = cmgOperation2(cmgOperation3)
        if cmgOperation2 then
          if cmgOperation2 > 0 then
            cmgOperation3 = TriggerServerEvent
            text10 = "5de4d2dc4c"
            mathHelper = cmgOperation2
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5de4d2dc4c".
            cmgOperation3(text10, mathHelper)
          else
            cmgOperation3 = tCMG
            cmgOperation3 = cmgOperation3.notify
            text10 = "~r~Negative amount."
            -- Beginner: Show a notification to the player.
            cmgOperation3(text10)
          end
        else
          cmgOperation3 = tCMG
          cmgOperation3 = cmgOperation3.notify
          text10 = "~r~Invalid amount."
          cmgOperation3(text10)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(workingValue4, workingValue6, stateFlag4, stateFlag6, number25)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    workingValue4 = "Sell all chips"
    workingValue6 = ""
    stateFlag4 = {}
    stateFlag4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: number25; parameters: localValue13, localValue22, localValue3) ===
    function number25(localValue13, localValue22, localValue3)
      local cmgOperation2, cmgOperation3
      if localValue3 then
        cmgOperation2 = TriggerServerEvent
        cmgOperation3 = "d1aaad3e19"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d1aaad3e19".
        cmgOperation2(cmgOperation3)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(workingValue4, workingValue6, stateFlag4, stateFlag6, number25)
  end

  -- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
  function cmgOperation4()
    local localValue12, workingValue4
  end
  localValue1(localValue2, stateFlag2, stateFlag3, stateFlag5, text9, cmgOperation4)
end
text7(text8, rageUiOperation, text11, text12)

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2, stateFlag2, stateFlag3, stateFlag5, text9
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  stateFlag2 = RMenu
  stateFlag3 = stateFlag2
  stateFlag2 = stateFlag2.Get
  stateFlag5 = "cmgchips"
  text9 = "cashier"
  -- Beginner: result below is menu.
  stateFlag2 = stateFlag2(stateFlag3, stateFlag5, text9)
  stateFlag3 = localValue1
  localValue2(stateFlag2, stateFlag3)
end
text8 = RegisterNetEvent
rageUiOperation = "5b934498c8"
-- Beginner: this function handles network event "5b934498c8".

-- === HELPER FUNCTION (decompiler name: text11; parameters: localValue1) ===
function text11(localValue1)
  local localValue2, stateFlag2, stateFlag3
  localValue2 = math
  localValue2 = localValue2.floor
  stateFlag2 = localValue1
  localValue2 = localValue2(stateFlag2)
  number15 = localValue2
  localValue2 = tostring
  stateFlag2 = math
  stateFlag2 = stateFlag2.floor
  stateFlag3 = localValue1
  stateFlag2, stateFlag3 = stateFlag2(stateFlag3)
  localValue2 = localValue2(stateFlag2, stateFlag3)
  stateFlag2 = getMoneyStringFormatted
  stateFlag3 = localValue2
  stateFlag2 = stateFlag2(stateFlag3)
  text = stateFlag2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5b934498c8".
text8(rageUiOperation, text11)
text8 = {}
rageUiOperation = {}
text11 = vector3
text12 = 967.20806884766
rageUiOperation2 = 36.561210632324
rageUiOperation3 = 80.994140625
text11 = text11(text12, rageUiOperation2, rageUiOperation3)
rageUiOperation.position = text11
rageUiOperation.radius = 100
text11 = {}
text12 = vector3
rageUiOperation2 = 54.053936004639
rageUiOperation3 = 6742.1513671875
text2 = -107.354347229
text12 = text12(rageUiOperation2, rageUiOperation3, text2)
text11.position = text12
text11.radius = 100
text12 = {}
rageUiOperation2 = vector3
rageUiOperation3 = -1896.8582763672
text2 = 2069.3537597656
text3 = 144.86274719238
rageUiOperation2 = rageUiOperation2(rageUiOperation3, text2, text3)
text12.position = rageUiOperation2
text12.radius = 10
rageUiOperation2 = {}
rageUiOperation3 = vector3
text2 = 774.75134277344
text3 = -552.91137695312
number3 = 22.498882293701
rageUiOperation3 = rageUiOperation3(text2, text3, number3)
rageUiOperation2.position = rageUiOperation3
rageUiOperation2.radius = 100
rageUiOperation3 = {}
text2 = vector3
text3 = -1137.8917236328
number3 = -184.71762084961
number5 = 40.0803565979
text2 = text2(text3, number3, number5)
rageUiOperation3.position = text2
rageUiOperation3.radius = 50
text2 = {}
text3 = vector3
number3 = 422.06201171875
number5 = 18.277492523193
number7 = 91.935234069824
text3 = text3(number3, number5, number7)
text2.position = text3
text2.radius = 25
text3 = {}
number3 = vector3
number5 = -276.10549926758
number7 = -731.72308349609
number8 = 124.46861816406
number3 = number3(number5, number7, number8)
text3.position = number3
text3.radius = 25
number3 = {}
number5 = vector3
number7 = -112.58515167236
number8 = 383.98904418945
number9 = 113.28324890137
number5 = number5(number7, number8, number9)
number3.position = number5
number3.radius = 25
number5 = {}
number7 = vector3
number8 = -52.887622833252
number9 = 8034.4389648438
number10 = 12.681856155396
number7 = number7(number8, number9, number10)
number5.position = number7
number5.radius = 25
number5.ignoreInteriorCheck = true
number7 = {}
number8 = vector3
number9 = 1147.0424804688
number10 = -433.18096923828
number12 = 62.217880249023
number8 = number8(number9, number10, number12)
number7.position = number8
number7.radius = 25
number8 = {}
number9 = vector3
number10 = -251.02876281738
number12 = -914.43530273438
number14 = 32.557731628418
number9 = number9(number10, number12, number14)
number8.position = number9
number8.radius = 25
number9 = {}
number10 = vector3
number12 = -266.23413085938
number14 = -912.22039794922
number16 = 46.270469665527
number10 = number10(number12, number14, number16)
number9.position = number10
number9.radius = 10
number10 = {}
number12 = vector3
number14 = 2062.2058105469
number16 = 5095.21484375
createVector3 = 41.955909729004
number12 = number12(number14, number16, createVector3)
number10.position = number12
number10.radius = 25
number12 = {}
number14 = vector3
number16 = 3945.9306640625
createVector3 = 4855.9868164062
createVector32 = 14.121611595154
number14 = number14(number16, createVector3, createVector32)
number12.position = number14
number12.radius = 10
number14 = {}
number16 = vector3
createVector3 = 3761.9794921875
createVector32 = -1559.1925048828
number19 = 4.0253777503967
number16 = number16(createVector3, createVector32, number19)
number14.position = number16
number14.radius = 40
number14.ignoreInteriorCheck = true
number16 = {}
createVector3 = vector3
createVector32 = -3006.765625
number19 = 75.510192871094
number21 = 16.231451034546
createVector3 = createVector3(createVector32, number19, number21)
number16.position = createVector3
number16.radius = 40
number16.ignoreInteriorCheck = true
createVector3 = {}
createVector32 = vector3
number19 = -1022.5
number21 = -1367.5
number23 = 9.46
createVector32 = createVector32(number19, number21, number23)
createVector3.position = createVector32
createVector3.radius = 25
text8[1] = rageUiOperation
text8[2] = text11
text8[3] = text12
text8[4] = rageUiOperation2
text8[5] = rageUiOperation3
text8[6] = text2
text8[7] = text3
text8[8] = number3
text8[9] = number5
text8[10] = number7
text8[11] = number8
text8[12] = number9
text8[13] = number10
text8[14] = number12
text8[15] = number14
text8[16] = number16
text8[17] = createVector3
rageUiOperation = false
text11 = CMG

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2
  localValue1 = rageUiOperation
  return localValue1
end
text11.isDrawingCasinoChipsUI = text12
text11 = CMG

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, localValue2
  localValue1 = number15
  return localValue1
end
text11.getChipsClientDisplayAmount = text12
text11 = AddEventHandler
text12 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1, localValue2) ===
function rageUiOperation2(localValue1, localValue2)
  local stateFlag2, stateFlag3, stateFlag5, text9, cmgOperation4, iterator, workingValue8, number26, stateFlag, text4, text5, cmgOperation, workingValue, workingValue2, workingValue3, number11, number13, text6, number17, dataCollection, number18, number20, number22, number24
  if localValue2 then
    stateFlag2 = RequestStreamedTextureDict
    stateFlag3 = "CommonMenu"
    stateFlag5 = false
    stateFlag2(stateFlag3, stateFlag5)
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: none) ===
    function stateFlag2()
      local localValue12, workingValue4
      localValue12 = text7
      workingValue4 = true
      localValue12(workingValue4)
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag3; parameters: none) ===
    function stateFlag3()
      local localValue12, workingValue4
      localValue12 = text7
      workingValue4 = false
      localValue12(workingValue4)
    end

    -- === HELPER FUNCTION (decompiler name: stateFlag5; parameters: none) ===
    function stateFlag5()
      local localValue12, workingValue4
    end

    -- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
    function text9()
      local localValue12, workingValue4
      localValue12 = false
      rageUiOperation = localValue12
    end

    -- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: localValue12) ===
    function cmgOperation4(localValue12)
      local workingValue4, workingValue6, stateFlag4, stateFlag6, number25, stateFlag7, stateFlag8, stateFlag9, number27, number, number2, number4, number6
      workingValue4 = false
      rageUiOperation = workingValue4
      workingValue4 = GetRoomKeyFromEntity
      workingValue6 = PlayerPedId
      workingValue6, stateFlag4, stateFlag6, number25, stateFlag7, stateFlag8, stateFlag9, number27, number, number2, number4, number6 = workingValue6()
      workingValue4 = workingValue4(workingValue6, stateFlag4, stateFlag6, number25, stateFlag7, stateFlag8, stateFlag9, number27, number, number2, number4, number6)
      if 0 == workingValue4 then
        workingValue4 = localValue12.ignoreInteriorCheck
        if not workingValue4 then
          goto continueAtStep57
        end
      end
      workingValue4 = SetScriptGfxDrawOrder
      workingValue6 = 7
      workingValue4(workingValue6)
      workingValue4 = DrawSprite
      workingValue6 = "CommonMenu"
      stateFlag4 = "shop_chips_b"
      stateFlag6 = 0.89
      number25 = 0.078
      stateFlag7 = 0.025
      stateFlag8 = 0.03
      stateFlag9 = 0.0
      number27 = 255
      number = 255
      number2 = 255
      number4 = 255
      workingValue4(workingValue6, stateFlag4, stateFlag6, number25, stateFlag7, stateFlag8, stateFlag9, number27, number, number2, number4)
      workingValue4 = SetScriptGfxDrawOrder
      workingValue6 = 1
      workingValue4(workingValue6)
      workingValue4 = DrawRect
      workingValue6 = 0.934
      stateFlag4 = 0.077
      stateFlag6 = 0.104
      number25 = 0.036
      stateFlag7 = 0
      stateFlag8 = 0
      stateFlag9 = 0
      number27 = 150
      workingValue4(workingValue6, stateFlag4, stateFlag6, number25, stateFlag7, stateFlag8, stateFlag9, number27)
      workingValue4 = DrawAdvancedTextNoOutline
      workingValue6 = 1.037
      stateFlag4 = 0.08
      stateFlag6 = 0.005
      number25 = 0.0028
      stateFlag7 = 0.52
      stateFlag8 = text
      stateFlag9 = 255
      number27 = 255
      number = 255
      number2 = 255
      number4 = 7
      number6 = 0
      workingValue4(workingValue6, stateFlag4, stateFlag6, number25, stateFlag7, stateFlag8, stateFlag9, number27, number, number2, number4, number6)
      workingValue4 = true
      rageUiOperation = workingValue4
      ::continueAtStep57::
    end
    iterator = pairs
    workingValue8 = workingValue5
    iterator, workingValue8, number26, stateFlag = iterator(workingValue8)
    for text4, text5 in iterator, workingValue8, number26, stateFlag do
      cmgOperation = tCMG
      cmgOperation = cmgOperation.addBlip
      workingValue = text5.entryPosition
      workingValue = workingValue.x
      workingValue2 = text5.entryPosition
      workingValue2 = workingValue2.y
      workingValue3 = text5.entryPosition
      workingValue3 = workingValue3.z
      number11 = 683
      number13 = 0
      text6 = "Chips Cashier"
      number17 = 0.7
      dataCollection = true
      -- Beginner: Create a minimap blip.
      cmgOperation(workingValue, workingValue2, workingValue3, number11, number13, text6, number17, dataCollection)
      cmgOperation = tCMG
      cmgOperation = cmgOperation.addMarker
      workingValue = text5.entryPosition
      workingValue = workingValue.x
      workingValue2 = text5.entryPosition
      workingValue2 = workingValue2.y
      workingValue3 = text5.entryPosition
      workingValue3 = workingValue3.z
      number11 = 1.0
      number13 = 1.0
      text6 = 1.0
      number17 = 138
      dataCollection = 43
      number18 = 226
      number20 = 70
      number22 = 50
      number24 = 27
      -- Beginner: Create a world marker.
      cmgOperation(workingValue, workingValue2, workingValue3, number11, number13, text6, number17, dataCollection, number18, number20, number22, number24)
      cmgOperation = CMG
      cmgOperation = cmgOperation.createArea
      workingValue = "chipscashier_"
      workingValue2 = text4
      workingValue = workingValue .. workingValue2
      workingValue2 = text5.entryPosition
      workingValue3 = 1.5
      number11 = 6
      number13 = stateFlag2
      text6 = stateFlag3
      number17 = stateFlag5
      dataCollection = {}
      -- Beginner: Create an interaction area around a world position.
      cmgOperation(workingValue, workingValue2, workingValue3, number11, number13, text6, number17, dataCollection)
    end
    iterator = pairs
    workingValue8 = text8
    iterator, workingValue8, number26, stateFlag = iterator(workingValue8)
    for text4, text5 in iterator, workingValue8, number26, stateFlag do
      cmgOperation = CMG
      cmgOperation = cmgOperation.createArea
      workingValue = "casinos_"
      workingValue2 = text4
      workingValue = workingValue .. workingValue2
      workingValue2 = text5.position
      workingValue3 = text5.radius
      number11 = 6

      -- === HELPER FUNCTION (decompiler name: number13; parameters: none) ===
      function number13()
        local localValue12, workingValue4
      end
      text6 = text9
      number17 = cmgOperation4
      dataCollection = {}
      number18 = text5.ignoreInteriorCheck
      dataCollection.ignoreInteriorCheck = number18
      cmgOperation(workingValue, workingValue2, workingValue3, number11, number13, text6, number17, dataCollection)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
text11(text12, rageUiOperation2)
