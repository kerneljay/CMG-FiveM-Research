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
local textValue, numberValue15, workValue5, textValue7, textValue8, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, textValue2, textValue3, numberValue3, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue14, numberValue16, vector3Builder, vector3Builder2, numberValue19, numberValue21, numberValue23
textValue = "0"
numberValue15 = 0
workValue5 = RMenu
workValue5 = workValue5.Add
textValue7 = "cmgchips"
textValue8 = "cashier"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue11 = ""
textValue12 = ""
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue2 = "cmg_casino"
textValue3 = "cmg_casino"
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, textValue2, textValue3, numberValue3, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue14, numberValue16, vector3Builder, vector3Builder2, numberValue19, numberValue21, numberValue23 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, textValue2, textValue3)
workValue5(textValue7, textValue8, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, textValue2, textValue3, numberValue3, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue14, numberValue16, vector3Builder, vector3Builder2, numberValue19, numberValue21, numberValue23)
workValue5 = RMenu
textValue7 = workValue5
workValue5 = workValue5.Get
textValue8 = "cmgchips"
rageUiCall = "cashier"
-- Beginner: result below is menu.
workValue5 = workValue5(textValue7, textValue8, rageUiCall)
textValue7 = workValue5
workValue5 = workValue5.SetSubtitle
textValue8 = "~b~CHIPS"
workValue5(textValue7, textValue8)
workValue5 = RMenu
workValue5 = workValue5.Add
textValue7 = "casino_enter"
textValue8 = "casino"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue11 = ""
textValue12 = ""
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue2 = "cmg_casino"
textValue3 = "cmg_casino"
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, textValue2, textValue3, numberValue3, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue14, numberValue16, vector3Builder, vector3Builder2, numberValue19, numberValue21, numberValue23 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, textValue2, textValue3)
workValue5(textValue7, textValue8, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, textValue2, textValue3, numberValue3, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue14, numberValue16, vector3Builder, vector3Builder2, numberValue19, numberValue21, numberValue23)
workValue5 = RMenu
textValue7 = workValue5
workValue5 = workValue5.Get
textValue8 = "casino_enter"
rageUiCall = "casino"
-- Beginner: result below is menu.
workValue5 = workValue5(textValue7, textValue8, rageUiCall)
textValue7 = workValue5
workValue5 = workValue5.SetSubtitle
textValue8 = "~b~ENTER"
workValue5(textValue7, textValue8)
workValue5 = RMenu
workValue5 = workValue5.Add
textValue7 = "casino_exit"
textValue8 = "casino"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue11 = ""
textValue12 = ""
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue2 = "cmg_casino"
textValue3 = "cmg_casino"
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, textValue2, textValue3, numberValue3, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue14, numberValue16, vector3Builder, vector3Builder2, numberValue19, numberValue21, numberValue23 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, textValue2, textValue3)
workValue5(textValue7, textValue8, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, textValue2, textValue3, numberValue3, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue14, numberValue16, vector3Builder, vector3Builder2, numberValue19, numberValue21, numberValue23)
workValue5 = RMenu
textValue7 = workValue5
workValue5 = workValue5.Get
textValue8 = "casino_exit"
rageUiCall = "casino"
-- Beginner: result below is menu.
workValue5 = workValue5(textValue7, textValue8, rageUiCall)
textValue7 = workValue5
workValue5 = workValue5.SetSubtitle
textValue8 = "~b~EXIT"
workValue5(textValue7, textValue8)
workValue5 = RMenu
workValue5 = workValue5.Add
textValue7 = "casino_rooftop_exit"
textValue8 = "casino"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue11 = ""
textValue12 = ""
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue2 = "cmg_casino"
textValue3 = "cmg_casino"
rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, textValue2, textValue3, numberValue3, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue14, numberValue16, vector3Builder, vector3Builder2, numberValue19, numberValue21, numberValue23 = rageUiCall(textValue11, textValue12, rageUiCall2, rageUiCall3, textValue2, textValue3)
workValue5(textValue7, textValue8, rageUiCall, textValue11, textValue12, rageUiCall2, rageUiCall3, textValue2, textValue3, numberValue3, numberValue5, numberValue7, numberValue8, numberValue9, numberValue10, numberValue12, numberValue14, numberValue16, vector3Builder, vector3Builder2, numberValue19, numberValue21, numberValue23)
workValue5 = RMenu
textValue7 = workValue5
workValue5 = workValue5.Get
textValue8 = "casino_rooftop_exit"
rageUiCall = "casino"
-- Beginner: result below is menu.
workValue5 = workValue5(textValue7, textValue8, rageUiCall)
textValue7 = workValue5
workValue5 = workValue5.SetSubtitle
textValue8 = "~b~EXIT"
workValue5(textValue7, textValue8)
workValue5 = {}
textValue7 = {}
textValue7.model = -1156746507
textValue8 = vector3
rageUiCall = 966.41003417969
textValue11 = 23.916101455688
textValue12 = 81.00611114502
textValue8 = textValue8(rageUiCall, textValue11, textValue12)
textValue7.pedPosition = textValue8
textValue7.pedHeading = 328.0
textValue8 = vector3
rageUiCall = 967.09735107422
textValue11 = 25.525142669678
textValue12 = 80.026103515625
textValue8 = textValue8(rageUiCall, textValue11, textValue12)
textValue7.entryPosition = textValue8
textValue8 = {}
textValue8.model = -1156746507
rageUiCall = vector3
textValue11 = 414.69891357422
textValue12 = 8.465934753418
rageUiCall2 = 91.927490234375
rageUiCall = rageUiCall(textValue11, textValue12, rageUiCall2)
textValue8.pedPosition = rageUiCall
textValue8.pedHeading = 62.362205505371
rageUiCall = vector3
textValue11 = 412.84494018555
textValue12 = 9.5947942733765
rageUiCall2 = 91.035302734375
rageUiCall = rageUiCall(textValue11, textValue12, rageUiCall2)
textValue8.entryPosition = rageUiCall
rageUiCall = {}
rageUiCall.model = -1156746507
textValue11 = vector3
textValue12 = -274.54943847656
rageUiCall2 = -732.19781494141
rageUiCall3 = 125.49230957031
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
rageUiCall.pedPosition = textValue11
rageUiCall.pedHeading = 73.700790405273
textValue11 = vector3
textValue12 = -276.10549926758
rageUiCall2 = -731.72308349609
rageUiCall3 = 124.46861816406
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
rageUiCall.entryPosition = textValue11
textValue11 = {}
textValue11.model = -1156746507
textValue12 = vector3
rageUiCall2 = -54.039554595947
rageUiCall3 = 8039.7231445312
textValue2 = 12.665893554688
textValue12 = textValue12(rageUiCall2, rageUiCall3, textValue2)
textValue11.pedPosition = textValue12
textValue11.pedHeading = 249.44882202148
textValue12 = vector3
rageUiCall2 = -52.50394821167
rageUiCall3 = 8039.302734375
textValue2 = 11.70361164093
textValue12 = textValue12(rageUiCall2, rageUiCall3, textValue2)
textValue11.entryPosition = textValue12
textValue12 = {}
textValue12.model = -1156746507
rageUiCall2 = vector3
rageUiCall3 = 1148.6636962891
textValue2 = -428.51867675781
textValue3 = 62.22119140625
rageUiCall2 = rageUiCall2(rageUiCall3, textValue2, textValue3)
textValue12.pedPosition = rageUiCall2
textValue12.pedHeading = 167.24407958984
rageUiCall2 = vector3
rageUiCall3 = 1147.1414794922
textValue2 = -429.94134521484
textValue3 = 61.235101470947
rageUiCall2 = rageUiCall2(rageUiCall3, textValue2, textValue3)
textValue12.entryPosition = rageUiCall2
rageUiCall2 = {}
rageUiCall2.model = -1156746507
rageUiCall3 = vector3
textValue2 = -114.57550811768
textValue3 = 384.71957397461
numberValue3 = 113.28313446045
rageUiCall3 = rageUiCall3(textValue2, textValue3, numberValue3)
rageUiCall2.pedPosition = rageUiCall3
rageUiCall2.pedHeading = 252.28346252441
rageUiCall3 = vector3
textValue2 = -112.58515167236
textValue3 = 383.98904418945
numberValue3 = 112.28524890137
rageUiCall3 = rageUiCall3(textValue2, textValue3, numberValue3)
rageUiCall2.entryPosition = rageUiCall3
rageUiCall3 = {}
rageUiCall3.model = -1156746507
textValue2 = vector3
textValue3 = -263.38021850586
numberValue3 = -913.14727783203
numberValue5 = 32.312866210938
textValue2 = textValue2(textValue3, numberValue3, numberValue5)
rageUiCall3.pedPosition = textValue2
rageUiCall3.pedHeading = 17.007873535156
textValue2 = vector3
textValue3 = -262.64916992188
numberValue3 = -911.17016601562
numberValue5 = 31.34413269043
textValue2 = textValue2(textValue3, numberValue3, numberValue5)
rageUiCall3.entryPosition = textValue2
textValue2 = {}
textValue2.model = -1156746507
textValue3 = vector3
numberValue3 = 2071.5825195312
numberValue5 = 5085.4946289062
numberValue7 = 41.950927734375
textValue3 = textValue3(numberValue3, numberValue5, numberValue7)
textValue2.pedPosition = textValue3
textValue2.pedHeading = 124.72441101074
textValue3 = vector3
numberValue3 = 2070.2563476562
numberValue5 = 5084.326171875
numberValue7 = 40.965917358398
textValue3 = textValue3(numberValue3, numberValue5, numberValue7)
textValue2.entryPosition = textValue3
textValue3 = {}
textValue3.model = -1156746507
numberValue3 = vector3
numberValue5 = 3943.1472167969
numberValue7 = 4859.7495117188
numberValue8 = 14.114990234375
numberValue3 = numberValue3(numberValue5, numberValue7, numberValue8)
textValue3.pedPosition = numberValue3
textValue3.pedHeading = 289.13385009766
numberValue3 = vector3
numberValue5 = 3943.9750976562
numberValue7 = 4860.068359375
numberValue8 = 13.121613502502
numberValue3 = numberValue3(numberValue5, numberValue7, numberValue8)
textValue3.entryPosition = numberValue3
numberValue3 = {}
numberValue3.model = -1156746507
numberValue5 = vector3
numberValue7 = 1157.31640625
numberValue8 = -436.75601196289
numberValue9 = 62.225215911865
numberValue5 = numberValue5(numberValue7, numberValue8, numberValue9)
numberValue3.pedPosition = numberValue5
numberValue3.pedHeading = 345.82678222656
numberValue5 = vector3
numberValue7 = 1157.9731445312
numberValue8 = -434.87191772461
numberValue9 = 61.225276947021
numberValue5 = numberValue5(numberValue7, numberValue8, numberValue9)
numberValue3.entryPosition = numberValue5
numberValue5 = {}
numberValue5.model = -1156746507
numberValue7 = vector3
numberValue8 = 3762.5803222656
numberValue9 = -1556.5977783203
numberValue10 = 4.02197265625
numberValue7 = numberValue7(numberValue8, numberValue9, numberValue10)
numberValue5.pedPosition = numberValue7
numberValue5.pedHeading = 164.4094543457
numberValue7 = vector3
numberValue8 = 3762.2326660156
numberValue9 = -1559.1011962891
numberValue10 = 3.0253777503967
numberValue7 = numberValue7(numberValue8, numberValue9, numberValue10)
numberValue5.entryPosition = numberValue7
numberValue7 = {}
numberValue7.model = -1156746507
numberValue8 = vector3
numberValue9 = -3007.8989257812
numberValue10 = 76.193405151367
numberValue12 = 16.305541992188
numberValue8 = numberValue8(numberValue9, numberValue10, numberValue12)
numberValue7.pedPosition = numberValue8
numberValue7.pedHeading = 238.11022949219
numberValue8 = vector3
numberValue9 = -3006.765625
numberValue10 = 75.510192871094
numberValue12 = 15.231451034546
numberValue8 = numberValue8(numberValue9, numberValue10, numberValue12)
numberValue7.entryPosition = numberValue8
numberValue8 = {}
numberValue8.model = -1156746507
numberValue9 = vector3
numberValue10 = -1026.8967285156
numberValue12 = -1369.3714599609
numberValue14 = 9.4476318359375
numberValue9 = numberValue9(numberValue10, numberValue12, numberValue14)
numberValue8.pedPosition = numberValue9
numberValue8.pedHeading = 289.13385009766
numberValue9 = vector3
numberValue10 = -1026.01171875
numberValue12 = -1368.8759765625
numberValue14 = 8.4597616195679
numberValue9 = numberValue9(numberValue10, numberValue12, numberValue14)
numberValue8.entryPosition = numberValue9
numberValue9 = {}
numberValue9.model = -1156746507
numberValue10 = vector3
numberValue12 = -1890.4483642578
numberValue14 = 2064.3295898438
numberValue16 = 145.56042480469
numberValue10 = numberValue10(numberValue12, numberValue14, numberValue16)
numberValue9.pedPosition = numberValue10
numberValue9.pedHeading = 252.28346252441
numberValue10 = vector3
numberValue12 = -1888.734375
numberValue14 = 2063.6904296875
numberValue16 = 144.57385253906
numberValue10 = numberValue10(numberValue12, numberValue14, numberValue16)
numberValue9.entryPosition = numberValue10
workValue5[1] = textValue7
workValue5[2] = textValue8
workValue5[3] = rageUiCall
workValue5[4] = textValue11
workValue5[5] = textValue12
workValue5[6] = rageUiCall2
workValue5[7] = rageUiCall3
workValue5[8] = textValue2
workValue5[9] = textValue3
workValue5[10] = numberValue3
workValue5[11] = numberValue5
workValue5[12] = numberValue7
workValue5[13] = numberValue8
workValue5[14] = numberValue9
textValue7 = Citizen
textValue7 = textValue7.CreateThread

-- === HELPER FUNCTION (decompiler name: textValue8; parameters: none) ===
function textValue8()
  local arg1, arg2, flag2, flag3, flag5, textValue9, cmgCall4, iterator, workValue8, numberValue26, flag, textValue4, textValue5, cmgCall, workValue, workValue2
  arg1 = pairs
  arg2 = workValue5
  arg1, arg2, flag2, flag3 = arg1(arg2)
  for flag5, textValue9 in arg1, arg2, flag2, flag3 do
    cmgCall4 = CMG
    cmgCall4 = cmgCall4.createDynamicPed
    iterator = textValue9.model
    workValue8 = textValue9.pedPosition
    numberValue26 = 100.0
    flag = true
    textValue4 = "mini@strip_club@idles@bouncer@base"
    textValue5 = "base"
    cmgCall = 75.0
    workValue = nil

    -- === HELPER FUNCTION (decompiler name: workValue2; parameters: arg12) ===
    function workValue2(arg12)
      local workValue4, workValue6, flag4, flag6, numberValue25, flag7, flag8, flag9
      workValue4 = SetEntityCanBeDamaged
      workValue6 = arg12
      flag4 = false
      workValue4(workValue6, flag4)
      workValue4 = SetPedAsEnemy
      workValue6 = arg12
      flag4 = false
      workValue4(workValue6, flag4)
      workValue4 = SetBlockingOfNonTemporaryEvents
      workValue6 = arg12
      flag4 = true
      workValue4(workValue6, flag4)
      workValue4 = SetPedResetFlag
      workValue6 = arg12
      flag4 = 249
      flag6 = true
      workValue4(workValue6, flag4, flag6)
      workValue4 = SetPedConfigFlag
      workValue6 = arg12
      flag4 = 185
      flag6 = true
      workValue4(workValue6, flag4, flag6)
      workValue4 = SetPedConfigFlag
      workValue6 = arg12
      flag4 = 108
      flag6 = true
      workValue4(workValue6, flag4, flag6)
      workValue4 = SetPedCanEvasiveDive
      workValue6 = arg12
      flag4 = false
      workValue4(workValue6, flag4)
      workValue4 = SetPedCanRagdollFromPlayerImpact
      workValue6 = arg12
      flag4 = false
      workValue4(workValue6, flag4)
      workValue4 = SetPedConfigFlag
      workValue6 = arg12
      flag4 = 208
      flag6 = true
      workValue4(workValue6, flag4, flag6)
      workValue4 = SetEntityCollision
      workValue6 = arg12
      flag4 = false
      flag6 = false
      workValue4(workValue6, flag4, flag6)
      workValue4 = SetEntityCoordsNoOffset
      workValue6 = arg12
      flag4 = textValue9.pedPosition
      flag4 = flag4.x
      flag6 = textValue9.pedPosition
      flag6 = flag6.y
      numberValue25 = textValue9.pedPosition
      numberValue25 = numberValue25.z
      flag7 = false
      flag8 = false
      flag9 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      workValue4(workValue6, flag4, flag6, numberValue25, flag7, flag8, flag9)
      workValue4 = SetEntityHeading
      workValue6 = arg12
      flag4 = textValue9.pedHeading
      -- Beginner: Change the direction an entity is facing.
      workValue4(workValue6, flag4)
      workValue4 = FreezeEntityPosition
      workValue6 = arg12
      flag4 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      workValue4(workValue6, flag4)
    end
    cmgCall4(iterator, workValue8, numberValue26, flag, textValue4, textValue5, cmgCall, workValue, workValue2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
textValue7(textValue8)
textValue7 = RageUI
textValue7 = textValue7.CreateWhile
textValue8 = 1.0
rageUiCall = RMenu
textValue11 = rageUiCall
rageUiCall = rageUiCall.Get
textValue12 = "cmgchips"
rageUiCall2 = "cashier"
-- Beginner: result below is menu.
rageUiCall = rageUiCall(textValue11, textValue12, rageUiCall2)
textValue11 = nil

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: none) ===
function textValue12()
  local arg1, arg2, flag2, flag3, flag5, textValue9, cmgCall4
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag2 = arg2
  arg2 = arg2.Get
  flag3 = "cmgchips"
  flag5 = "cashier"
  -- Beginner: result below is menu.
  arg2 = arg2(flag2, flag3, flag5)
  flag2 = true
  flag3 = true
  flag5 = true

  -- === HELPER FUNCTION (decompiler name: textValue9; parameters: none) ===
  function textValue9()
    local arg12, workValue4, workValue6, flag4, flag6, numberValue25
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    workValue4 = "Buy chips"
    workValue6 = ""
    flag4 = {}
    flag4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true

    -- === HELPER FUNCTION (decompiler name: numberValue25; parameters: arg13, arg22, arg3) ===
    function numberValue25(arg13, arg22, arg3)
      local cmgCall2, cmgCall3, textValue10, mathHelper, workValue7
      if arg3 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.GetRageInputInt
        cmgCall3 = "Enter Chips"
        cmgCall2 = cmgCall2(cmgCall3)
        if cmgCall2 then
          if cmgCall2 > 0 then
            cmgCall3 = TriggerServerEvent
            textValue10 = "d5dbf55707"
            mathHelper = math
            mathHelper = mathHelper.floor
            workValue7 = cmgCall2
            mathHelper, workValue7 = mathHelper(workValue7)
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d5dbf55707".
            cmgCall3(textValue10, mathHelper, workValue7)
          else
            cmgCall3 = tCMG
            cmgCall3 = cmgCall3.notify
            textValue10 = "~r~Negative amount."
            -- Beginner: Show a notification to the player.
            cmgCall3(textValue10)
          end
        else
          cmgCall3 = tCMG
          cmgCall3 = cmgCall3.notify
          textValue10 = "~r~Invalid amount."
          cmgCall3(textValue10)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(workValue4, workValue6, flag4, flag6, numberValue25)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    workValue4 = "Buy all chips"
    workValue6 = ""
    flag4 = {}
    flag4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true

    -- === HELPER FUNCTION (decompiler name: numberValue25; parameters: arg13, arg22, arg3) ===
    function numberValue25(arg13, arg22, arg3)
      local cmgCall2, cmgCall3
      if arg3 then
        cmgCall2 = TriggerServerEvent
        cmgCall3 = "434a212611"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "434a212611".
        cmgCall2(cmgCall3)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(workValue4, workValue6, flag4, flag6, numberValue25)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    workValue4 = "Sell chips"
    workValue6 = ""
    flag4 = {}
    flag4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true

    -- === HELPER FUNCTION (decompiler name: numberValue25; parameters: arg13, arg22, arg3) ===
    function numberValue25(arg13, arg22, arg3)
      local cmgCall2, cmgCall3, textValue10, mathHelper
      if arg3 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.GetRageInputInt
        cmgCall3 = "Enter Chips"
        cmgCall2 = cmgCall2(cmgCall3)
        if cmgCall2 then
          if cmgCall2 > 0 then
            cmgCall3 = TriggerServerEvent
            textValue10 = "5de4d2dc4c"
            mathHelper = cmgCall2
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "5de4d2dc4c".
            cmgCall3(textValue10, mathHelper)
          else
            cmgCall3 = tCMG
            cmgCall3 = cmgCall3.notify
            textValue10 = "~r~Negative amount."
            -- Beginner: Show a notification to the player.
            cmgCall3(textValue10)
          end
        else
          cmgCall3 = tCMG
          cmgCall3 = cmgCall3.notify
          textValue10 = "~r~Invalid amount."
          cmgCall3(textValue10)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(workValue4, workValue6, flag4, flag6, numberValue25)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    workValue4 = "Sell all chips"
    workValue6 = ""
    flag4 = {}
    flag4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true

    -- === HELPER FUNCTION (decompiler name: numberValue25; parameters: arg13, arg22, arg3) ===
    function numberValue25(arg13, arg22, arg3)
      local cmgCall2, cmgCall3
      if arg3 then
        cmgCall2 = TriggerServerEvent
        cmgCall3 = "d1aaad3e19"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d1aaad3e19".
        cmgCall2(cmgCall3)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(workValue4, workValue6, flag4, flag6, numberValue25)
  end

  -- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
  function cmgCall4()
    local arg12, workValue4
  end
  arg1(arg2, flag2, flag3, flag5, textValue9, cmgCall4)
end
textValue7(textValue8, rageUiCall, textValue11, textValue12)

-- === HELPER FUNCTION (decompiler name: textValue7; parameters: arg1) ===
function textValue7(arg1)
  local arg2, flag2, flag3, flag5, textValue9
  arg2 = RageUI
  arg2 = arg2.Visible
  flag2 = RMenu
  flag3 = flag2
  flag2 = flag2.Get
  flag5 = "cmgchips"
  textValue9 = "cashier"
  -- Beginner: result below is menu.
  flag2 = flag2(flag3, flag5, textValue9)
  flag3 = arg1
  arg2(flag2, flag3)
end
textValue8 = RegisterNetEvent
rageUiCall = "5b934498c8"
-- Beginner: this function handles network event "5b934498c8".

-- === HELPER FUNCTION (decompiler name: textValue11; parameters: arg1) ===
function textValue11(arg1)
  local arg2, flag2, flag3
  arg2 = math
  arg2 = arg2.floor
  flag2 = arg1
  arg2 = arg2(flag2)
  numberValue15 = arg2
  arg2 = tostring
  flag2 = math
  flag2 = flag2.floor
  flag3 = arg1
  flag2, flag3 = flag2(flag3)
  arg2 = arg2(flag2, flag3)
  flag2 = getMoneyStringFormatted
  flag3 = arg2
  flag2 = flag2(flag3)
  textValue = flag2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5b934498c8".
textValue8(rageUiCall, textValue11)
textValue8 = {}
rageUiCall = {}
textValue11 = vector3
textValue12 = 967.20806884766
rageUiCall2 = 36.561210632324
rageUiCall3 = 80.994140625
textValue11 = textValue11(textValue12, rageUiCall2, rageUiCall3)
rageUiCall.position = textValue11
rageUiCall.radius = 100
textValue11 = {}
textValue12 = vector3
rageUiCall2 = 54.053936004639
rageUiCall3 = 6742.1513671875
textValue2 = -107.354347229
textValue12 = textValue12(rageUiCall2, rageUiCall3, textValue2)
textValue11.position = textValue12
textValue11.radius = 100
textValue12 = {}
rageUiCall2 = vector3
rageUiCall3 = -1896.8582763672
textValue2 = 2069.3537597656
textValue3 = 144.86274719238
rageUiCall2 = rageUiCall2(rageUiCall3, textValue2, textValue3)
textValue12.position = rageUiCall2
textValue12.radius = 10
rageUiCall2 = {}
rageUiCall3 = vector3
textValue2 = 774.75134277344
textValue3 = -552.91137695312
numberValue3 = 22.498882293701
rageUiCall3 = rageUiCall3(textValue2, textValue3, numberValue3)
rageUiCall2.position = rageUiCall3
rageUiCall2.radius = 100
rageUiCall3 = {}
textValue2 = vector3
textValue3 = -1137.8917236328
numberValue3 = -184.71762084961
numberValue5 = 40.0803565979
textValue2 = textValue2(textValue3, numberValue3, numberValue5)
rageUiCall3.position = textValue2
rageUiCall3.radius = 50
textValue2 = {}
textValue3 = vector3
numberValue3 = 422.06201171875
numberValue5 = 18.277492523193
numberValue7 = 91.935234069824
textValue3 = textValue3(numberValue3, numberValue5, numberValue7)
textValue2.position = textValue3
textValue2.radius = 25
textValue3 = {}
numberValue3 = vector3
numberValue5 = -276.10549926758
numberValue7 = -731.72308349609
numberValue8 = 124.46861816406
numberValue3 = numberValue3(numberValue5, numberValue7, numberValue8)
textValue3.position = numberValue3
textValue3.radius = 25
numberValue3 = {}
numberValue5 = vector3
numberValue7 = -112.58515167236
numberValue8 = 383.98904418945
numberValue9 = 113.28324890137
numberValue5 = numberValue5(numberValue7, numberValue8, numberValue9)
numberValue3.position = numberValue5
numberValue3.radius = 25
numberValue5 = {}
numberValue7 = vector3
numberValue8 = -52.887622833252
numberValue9 = 8034.4389648438
numberValue10 = 12.681856155396
numberValue7 = numberValue7(numberValue8, numberValue9, numberValue10)
numberValue5.position = numberValue7
numberValue5.radius = 25
numberValue5.ignoreInteriorCheck = true
numberValue7 = {}
numberValue8 = vector3
numberValue9 = 1147.0424804688
numberValue10 = -433.18096923828
numberValue12 = 62.217880249023
numberValue8 = numberValue8(numberValue9, numberValue10, numberValue12)
numberValue7.position = numberValue8
numberValue7.radius = 25
numberValue8 = {}
numberValue9 = vector3
numberValue10 = -251.02876281738
numberValue12 = -914.43530273438
numberValue14 = 32.557731628418
numberValue9 = numberValue9(numberValue10, numberValue12, numberValue14)
numberValue8.position = numberValue9
numberValue8.radius = 25
numberValue9 = {}
numberValue10 = vector3
numberValue12 = -266.23413085938
numberValue14 = -912.22039794922
numberValue16 = 46.270469665527
numberValue10 = numberValue10(numberValue12, numberValue14, numberValue16)
numberValue9.position = numberValue10
numberValue9.radius = 10
numberValue10 = {}
numberValue12 = vector3
numberValue14 = 2062.2058105469
numberValue16 = 5095.21484375
vector3Builder = 41.955909729004
numberValue12 = numberValue12(numberValue14, numberValue16, vector3Builder)
numberValue10.position = numberValue12
numberValue10.radius = 25
numberValue12 = {}
numberValue14 = vector3
numberValue16 = 3945.9306640625
vector3Builder = 4855.9868164062
vector3Builder2 = 14.121611595154
numberValue14 = numberValue14(numberValue16, vector3Builder, vector3Builder2)
numberValue12.position = numberValue14
numberValue12.radius = 10
numberValue14 = {}
numberValue16 = vector3
vector3Builder = 3761.9794921875
vector3Builder2 = -1559.1925048828
numberValue19 = 4.0253777503967
numberValue16 = numberValue16(vector3Builder, vector3Builder2, numberValue19)
numberValue14.position = numberValue16
numberValue14.radius = 40
numberValue14.ignoreInteriorCheck = true
numberValue16 = {}
vector3Builder = vector3
vector3Builder2 = -3006.765625
numberValue19 = 75.510192871094
numberValue21 = 16.231451034546
vector3Builder = vector3Builder(vector3Builder2, numberValue19, numberValue21)
numberValue16.position = vector3Builder
numberValue16.radius = 40
numberValue16.ignoreInteriorCheck = true
vector3Builder = {}
vector3Builder2 = vector3
numberValue19 = -1022.5
numberValue21 = -1367.5
numberValue23 = 9.46
vector3Builder2 = vector3Builder2(numberValue19, numberValue21, numberValue23)
vector3Builder.position = vector3Builder2
vector3Builder.radius = 25
textValue8[1] = rageUiCall
textValue8[2] = textValue11
textValue8[3] = textValue12
textValue8[4] = rageUiCall2
textValue8[5] = rageUiCall3
textValue8[6] = textValue2
textValue8[7] = textValue3
textValue8[8] = numberValue3
textValue8[9] = numberValue5
textValue8[10] = numberValue7
textValue8[11] = numberValue8
textValue8[12] = numberValue9
textValue8[13] = numberValue10
textValue8[14] = numberValue12
textValue8[15] = numberValue14
textValue8[16] = numberValue16
textValue8[17] = vector3Builder
rageUiCall = false
textValue11 = CMG

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: none) ===
function textValue12()
  local arg1, arg2
  arg1 = rageUiCall
  return arg1
end
textValue11.isDrawingCasinoChipsUI = textValue12
textValue11 = CMG

-- === HELPER FUNCTION (decompiler name: textValue12; parameters: none) ===
function textValue12()
  local arg1, arg2
  arg1 = numberValue15
  return arg1
end
textValue11.getChipsClientDisplayAmount = textValue12
textValue11 = AddEventHandler
textValue12 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: rageUiCall2; parameters: arg1, arg2) ===
function rageUiCall2(arg1, arg2)
  local flag2, flag3, flag5, textValue9, cmgCall4, iterator, workValue8, numberValue26, flag, textValue4, textValue5, cmgCall, workValue, workValue2, workValue3, numberValue11, numberValue13, textValue6, numberValue17, dataTable, numberValue18, numberValue20, numberValue22, numberValue24
  if arg2 then
    flag2 = RequestStreamedTextureDict
    flag3 = "CommonMenu"
    flag5 = false
    flag2(flag3, flag5)
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: flag2; parameters: none) ===
    function flag2()
      local arg12, workValue4
      arg12 = textValue7
      workValue4 = true
      arg12(workValue4)
    end

    -- === HELPER FUNCTION (decompiler name: flag3; parameters: none) ===
    function flag3()
      local arg12, workValue4
      arg12 = textValue7
      workValue4 = false
      arg12(workValue4)
    end

    -- === HELPER FUNCTION (decompiler name: flag5; parameters: none) ===
    function flag5()
      local arg12, workValue4
    end

    -- === HELPER FUNCTION (decompiler name: textValue9; parameters: none) ===
    function textValue9()
      local arg12, workValue4
      arg12 = false
      rageUiCall = arg12
    end

    -- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: arg12) ===
    function cmgCall4(arg12)
      local workValue4, workValue6, flag4, flag6, numberValue25, flag7, flag8, flag9, numberValue27, numberValue, numberValue2, numberValue4, numberValue6
      workValue4 = false
      rageUiCall = workValue4
      workValue4 = GetRoomKeyFromEntity
      workValue6 = PlayerPedId
      workValue6, flag4, flag6, numberValue25, flag7, flag8, flag9, numberValue27, numberValue, numberValue2, numberValue4, numberValue6 = workValue6()
      workValue4 = workValue4(workValue6, flag4, flag6, numberValue25, flag7, flag8, flag9, numberValue27, numberValue, numberValue2, numberValue4, numberValue6)
      if 0 == workValue4 then
        workValue4 = arg12.ignoreInteriorCheck
        if not workValue4 then
          goto flow_label_57
        end
      end
      workValue4 = SetScriptGfxDrawOrder
      workValue6 = 7
      workValue4(workValue6)
      workValue4 = DrawSprite
      workValue6 = "CommonMenu"
      flag4 = "shop_chips_b"
      flag6 = 0.89
      numberValue25 = 0.078
      flag7 = 0.025
      flag8 = 0.03
      flag9 = 0.0
      numberValue27 = 255
      numberValue = 255
      numberValue2 = 255
      numberValue4 = 255
      workValue4(workValue6, flag4, flag6, numberValue25, flag7, flag8, flag9, numberValue27, numberValue, numberValue2, numberValue4)
      workValue4 = SetScriptGfxDrawOrder
      workValue6 = 1
      workValue4(workValue6)
      workValue4 = DrawRect
      workValue6 = 0.934
      flag4 = 0.077
      flag6 = 0.104
      numberValue25 = 0.036
      flag7 = 0
      flag8 = 0
      flag9 = 0
      numberValue27 = 150
      workValue4(workValue6, flag4, flag6, numberValue25, flag7, flag8, flag9, numberValue27)
      workValue4 = DrawAdvancedTextNoOutline
      workValue6 = 1.037
      flag4 = 0.08
      flag6 = 0.005
      numberValue25 = 0.0028
      flag7 = 0.52
      flag8 = textValue
      flag9 = 255
      numberValue27 = 255
      numberValue = 255
      numberValue2 = 255
      numberValue4 = 7
      numberValue6 = 0
      workValue4(workValue6, flag4, flag6, numberValue25, flag7, flag8, flag9, numberValue27, numberValue, numberValue2, numberValue4, numberValue6)
      workValue4 = true
      rageUiCall = workValue4
      ::flow_label_57::
    end
    iterator = pairs
    workValue8 = workValue5
    iterator, workValue8, numberValue26, flag = iterator(workValue8)
    for textValue4, textValue5 in iterator, workValue8, numberValue26, flag do
      cmgCall = tCMG
      cmgCall = cmgCall.addBlip
      workValue = textValue5.entryPosition
      workValue = workValue.x
      workValue2 = textValue5.entryPosition
      workValue2 = workValue2.y
      workValue3 = textValue5.entryPosition
      workValue3 = workValue3.z
      numberValue11 = 683
      numberValue13 = 0
      textValue6 = "Chips Cashier"
      numberValue17 = 0.7
      dataTable = true
      -- Beginner: Create a minimap blip.
      cmgCall(workValue, workValue2, workValue3, numberValue11, numberValue13, textValue6, numberValue17, dataTable)
      cmgCall = tCMG
      cmgCall = cmgCall.addMarker
      workValue = textValue5.entryPosition
      workValue = workValue.x
      workValue2 = textValue5.entryPosition
      workValue2 = workValue2.y
      workValue3 = textValue5.entryPosition
      workValue3 = workValue3.z
      numberValue11 = 1.0
      numberValue13 = 1.0
      textValue6 = 1.0
      numberValue17 = 138
      dataTable = 43
      numberValue18 = 226
      numberValue20 = 70
      numberValue22 = 50
      numberValue24 = 27
      -- Beginner: Create a world marker.
      cmgCall(workValue, workValue2, workValue3, numberValue11, numberValue13, textValue6, numberValue17, dataTable, numberValue18, numberValue20, numberValue22, numberValue24)
      cmgCall = CMG
      cmgCall = cmgCall.createArea
      workValue = "chipscashier_"
      workValue2 = textValue4
      workValue = workValue .. workValue2
      workValue2 = textValue5.entryPosition
      workValue3 = 1.5
      numberValue11 = 6
      numberValue13 = flag2
      textValue6 = flag3
      numberValue17 = flag5
      dataTable = {}
      -- Beginner: Create an interaction area around a world position.
      cmgCall(workValue, workValue2, workValue3, numberValue11, numberValue13, textValue6, numberValue17, dataTable)
    end
    iterator = pairs
    workValue8 = textValue8
    iterator, workValue8, numberValue26, flag = iterator(workValue8)
    for textValue4, textValue5 in iterator, workValue8, numberValue26, flag do
      cmgCall = CMG
      cmgCall = cmgCall.createArea
      workValue = "casinos_"
      workValue2 = textValue4
      workValue = workValue .. workValue2
      workValue2 = textValue5.position
      workValue3 = textValue5.radius
      numberValue11 = 6

      -- === HELPER FUNCTION (decompiler name: numberValue13; parameters: none) ===
      function numberValue13()
        local arg12, workValue4
      end
      textValue6 = textValue9
      numberValue17 = cmgCall4
      dataTable = {}
      numberValue18 = textValue5.ignoreInteriorCheck
      dataTable.ignoreInteriorCheck = numberValue18
      cmgCall(workValue, workValue2, workValue3, numberValue11, numberValue13, textValue6, numberValue17, dataTable)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
textValue11(textValue12, rageUiCall2)
