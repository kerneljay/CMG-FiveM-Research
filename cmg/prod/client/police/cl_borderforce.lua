--[[
    Beginner Guide: cl_borderforce.lua
    ==================================

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
    BEGINNER GUIDE — Borderforce
    ============================

    File: cmg/prod/client/police/cl_borderforce.lua
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

    Network/hash identifiers found: 7
      They are intentionally left unchanged because matching server code may use them.
      * bfb85eb237
      * 03e141ef40
      * 46592aad2d
      * 923b558511
      * 9da3977b15
      * d95fd9b2cd
      * 5e416b2e9c

    Named framework/network events found:
      * CMG:onClientSpawn

    Example player-facing text in this file:
      * Press [E] to close gates
      * Press [E] to open gates
      * Press [E] to close gate
      * Press [E] to open gate

]]
local dataTable, dataTable2, vector3Builder, numberValue2, numberValue3, numberValue4, numberValue5, numberValue6, flag9, cmgCall6, cmgCall, workValue, textValue2
dataTable = {}
dataTable2 = {}
dataTable2.prop = "cmg_prop_gate_military_01"
dataTable2.prop_frame = "cmg_prop_gate_frame_02"
dataTable2.prop_controller = "prop_rail_controller"
vector3Builder = vector3
numberValue2 = 1307.67163
numberValue3 = 575.666138
numberValue4 = 80.11085
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.position = vector3Builder
vector3Builder = vector3
numberValue2 = 0.0
numberValue3 = 0.0
numberValue4 = 131.0
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.gateRotation = vector3Builder
vector3Builder = vector3
numberValue2 = 1305.7927246094
numberValue3 = 581.07287597656
numberValue4 = 80.081733703613
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.controllerPos = vector3Builder
dataTable2.controllerRotation = 226.0
dataTable2.rotation = 133.46
vector3Builder = {}
dataTable2.propObjHandlers = vector3Builder
dataTable2.propFrameObjHandler = 0
dataTable2.propControllerHandler = 0
dataTable2.open = false
dataTable2.instruction = "none"
dataTable[1] = dataTable2
dataTable2 = {}
dataTable2.prop = "cmg_prop_gate_military_01"
dataTable2.prop_frame = "cmg_prop_gate_frame_02"
dataTable2.prop_controller = "prop_rail_controller"
vector3Builder = vector3
numberValue2 = 1336.73181
numberValue3 = 602.823364
numberValue4 = 80.15877
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.position = vector3Builder
dataTable2.gateRotation = nil
vector3Builder = vector3
numberValue2 = 1330.9665527344
numberValue3 = 604.69061279297
numberValue4 = 80.189002990723
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.controllerPos = vector3Builder
dataTable2.controllerRotation = 226.0
dataTable2.rotation = 131.69
vector3Builder = {}
dataTable2.propObjHandlers = vector3Builder
dataTable2.propFrameObjHandler = 0
dataTable2.propControllerHandler = 0
dataTable2.open = false
dataTable2.instruction = "none"
dataTable[2] = dataTable2
dataTable2 = {}
dataTable2.prop = "cmg_prop_gate_military_01"
dataTable2.prop_frame = "cmg_prop_gate_frame_02"
dataTable2.prop_controller = "prop_rail_controller"
vector3Builder = vector3
numberValue2 = 1313.71228
numberValue3 = 628.0808
numberValue4 = 80.1978455
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.position = vector3Builder
vector3Builder = vector3
numberValue2 = 0.0
numberValue3 = 0.0
numberValue4 = 311.0
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.gateRotation = vector3Builder
vector3Builder = vector3
numberValue2 = 1312.9809570313
numberValue3 = 623.81829833984
numberValue4 = 80.197242736816
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.controllerPos = vector3Builder
dataTable2.controllerRotation = 41.0
dataTable2.rotation = 131.69
vector3Builder = {}
dataTable2.propObjHandlers = vector3Builder
dataTable2.propFrameObjHandler = 0
dataTable2.propControllerHandler = 0
dataTable2.open = false
dataTable2.instruction = "none"
dataTable[3] = dataTable2
dataTable2 = {}
dataTable2.prop = "cmg_prop_gate_military_01"
dataTable2.prop_frame = "cmg_prop_gate_frame_02"
dataTable2.prop_controller = "prop_rail_controller"
vector3Builder = vector3
numberValue2 = 1283.63123
numberValue3 = 600.256348
numberValue4 = 80.0751
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.position = vector3Builder
vector3Builder = vector3
numberValue2 = 0.0
numberValue3 = 0.0
numberValue4 = 311.0
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.gateRotation = vector3Builder
vector3Builder = vector3
numberValue2 = 1288.6761474609
numberValue3 = 598.40759277344
numberValue4 = 80.098342895508
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.controllerPos = vector3Builder
dataTable2.controllerRotation = 41.0
dataTable2.rotation = 131.69
vector3Builder = {}
dataTable2.propObjHandlers = vector3Builder
dataTable2.propFrameObjHandler = 0
dataTable2.propControllerHandler = 0
dataTable2.open = false
dataTable2.instruction = "none"
dataTable[4] = dataTable2
dataTable2 = {}
dataTable2.prop = "cmg_prop_gate_military_01"
dataTable2.prop_frame = "cmg_prop_gate_frame_02"
dataTable2.prop_controller = "prop_rail_controller"
vector3Builder = vector3
numberValue2 = 2436.67236
numberValue3 = -221.798569
numberValue4 = 86.0626144
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.position = vector3Builder
vector3Builder = vector3
numberValue2 = 0.0
numberValue3 = 0.0
numberValue4 = 155.0
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.gateRotation = vector3Builder
vector3Builder = vector3
numberValue2 = 2432.5932617188
numberValue3 = -217.69305419922
numberValue4 = 86.343444824219
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.controllerPos = vector3Builder
dataTable2.controllerRotation = 240.0
dataTable2.rotation = 131.69
vector3Builder = {}
dataTable2.propObjHandlers = vector3Builder
dataTable2.propFrameObjHandler = 0
dataTable2.propControllerHandler = 0
dataTable2.open = false
dataTable2.instruction = "none"
dataTable[5] = dataTable2
dataTable2 = {}
dataTable2.prop = "cmg_prop_gate_military_01"
dataTable2.prop_frame = "cmg_prop_gate_frame_02"
dataTable2.prop_controller = "prop_rail_controller"
vector3Builder = vector3
numberValue2 = 2454.306
numberValue3 = -186.302841
numberValue4 = 87.8461151
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.position = vector3Builder
vector3Builder = vector3
numberValue2 = 0.0
numberValue3 = 0.0
numberValue4 = 155.0
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.gateRotation = vector3Builder
vector3Builder = vector3
numberValue2 = 2447.4279785156
numberValue3 = -187.01138305664
numberValue4 = 87.809188842773
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.controllerPos = vector3Builder
dataTable2.controllerRotation = 240.0
dataTable2.rotation = 131.69
vector3Builder = {}
dataTable2.propObjHandlers = vector3Builder
dataTable2.propFrameObjHandler = 0
dataTable2.propControllerHandler = 0
dataTable2.open = false
dataTable2.instruction = "none"
dataTable[6] = dataTable2
dataTable2 = {}
dataTable2.prop = "cmg_prop_gate_military_01"
dataTable2.prop_frame = "cmg_prop_gate_frame_02"
dataTable2.prop_controller = "prop_rail_controller"
vector3Builder = vector3
numberValue2 = 2423.53882
numberValue3 = -171.105515
numberValue4 = 87.77565
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.position = vector3Builder
vector3Builder = vector3
numberValue2 = 0.0
numberValue3 = 0.0
numberValue4 = 333.0
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.gateRotation = vector3Builder
vector3Builder = vector3
numberValue2 = 2426.1889648438
numberValue3 = -175.99674987793
numberValue4 = 87.734436035156
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.controllerPos = vector3Builder
dataTable2.controllerRotation = 68.0
dataTable2.rotation = 131.69
vector3Builder = {}
dataTable2.propObjHandlers = vector3Builder
dataTable2.propFrameObjHandler = 0
dataTable2.propControllerHandler = 0
dataTable2.open = false
dataTable2.instruction = "none"
dataTable[7] = dataTable2
dataTable2 = {}
dataTable2.prop = "cmg_prop_gate_military_01"
dataTable2.prop_frame = "cmg_prop_gate_frame_02"
dataTable2.prop_controller = "prop_rail_controller"
vector3Builder = vector3
numberValue2 = 2405.56372
numberValue3 = -208.031891
numberValue4 = 86.09489
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.position = vector3Builder
vector3Builder = vector3
numberValue2 = 0.0
numberValue3 = 0.0
numberValue4 = 333.0
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.gateRotation = vector3Builder
vector3Builder = vector3
numberValue2 = 2411.3996582031
numberValue3 = -207.52787780762
numberValue4 = 86.227264404297
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.controllerPos = vector3Builder
dataTable2.controllerRotation = 68.0
dataTable2.rotation = 131.69
vector3Builder = {}
dataTable2.propObjHandlers = vector3Builder
dataTable2.propFrameObjHandler = 0
dataTable2.propControllerHandler = 0
dataTable2.open = false
dataTable2.instruction = "none"
dataTable[8] = dataTable2
dataTable2 = {}
dataTable2.prop = "cmg_prop_gate_military_01"
dataTable2.prop_frame = "cmg_prop_gate_frame_02"
dataTable2.prop_controller = "prop_rail_controller"
vector3Builder = vector3
numberValue2 = -2401.57422
numberValue3 = -235.169571
numberValue4 = 15.5775642
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.position = vector3Builder
vector3Builder = vector3
numberValue2 = 0.0
numberValue3 = 0.0
numberValue4 = 242.5
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.gateRotation = vector3Builder
vector3Builder = vector3
numberValue2 = -2406.2575683594
numberValue3 = -239.23776245117
numberValue4 = 15.476901054382
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.controllerPos = vector3Builder
dataTable2.controllerRotation = 330.0
dataTable2.rotation = 131.69
vector3Builder = {}
dataTable2.propObjHandlers = vector3Builder
dataTable2.propFrameObjHandler = 0
dataTable2.propControllerHandler = 0
dataTable2.open = false
dataTable2.instruction = "none"
dataTable[9] = dataTable2
dataTable2 = {}
dataTable2.prop = "cmg_prop_gate_military_01"
dataTable2.prop_frame = "cmg_prop_gate_frame_02"
dataTable2.prop_controller = "prop_rail_controller"
vector3Builder = vector3
numberValue2 = -2436.278
numberValue3 = -216.735123
numberValue4 = 16.4167013
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.position = vector3Builder
vector3Builder = vector3
numberValue2 = 0.0
numberValue3 = 0.0
numberValue4 = 242.5
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.gateRotation = vector3Builder
vector3Builder = vector3
numberValue2 = -2434.2758789063
numberValue3 = -224.33985900879
numberValue4 = 16.358936309814
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.controllerPos = vector3Builder
dataTable2.controllerRotation = 330.0
dataTable2.rotation = 131.69
vector3Builder = {}
dataTable2.propObjHandlers = vector3Builder
dataTable2.propFrameObjHandler = 0
dataTable2.propControllerHandler = 0
dataTable2.open = false
dataTable2.instruction = "none"
dataTable[10] = dataTable2
dataTable2 = {}
dataTable2.prop = "cmg_prop_gate_military_01"
dataTable2.prop_frame = "cmg_prop_gate_frame_02"
dataTable2.prop_controller = "prop_rail_controller"
vector3Builder = vector3
numberValue2 = -2452.826
numberValue3 = -245.910721
numberValue4 = 16.44616
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.position = vector3Builder
vector3Builder = vector3
numberValue2 = 0.0
numberValue3 = 0.0
numberValue4 = 60
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.gateRotation = vector3Builder
vector3Builder = vector3
numberValue2 = -2444.1645507813
numberValue3 = -244.25773620605
numberValue4 = 16.33381652832
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.controllerPos = vector3Builder
dataTable2.controllerRotation = 150.0
dataTable2.rotation = 131.69
vector3Builder = {}
dataTable2.propObjHandlers = vector3Builder
dataTable2.propFrameObjHandler = 0
dataTable2.propControllerHandler = 0
dataTable2.open = false
dataTable2.instruction = "none"
dataTable[11] = dataTable2
dataTable2 = {}
dataTable2.prop = "cmg_prop_gate_military_01"
dataTable2.prop_frame = "cmg_prop_gate_frame_02"
dataTable2.prop_controller = "prop_rail_controller"
vector3Builder = vector3
numberValue2 = -2416.83057
numberValue3 = -264.836578
numberValue4 = 15.4028273
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.position = vector3Builder
vector3Builder = vector3
numberValue2 = 0.0
numberValue3 = 0.0
numberValue4 = 60
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.gateRotation = vector3Builder
vector3Builder = vector3
numberValue2 = -2416.6555175781
numberValue3 = -259.09844970703
numberValue4 = 15.234084701538
vector3Builder = vector3Builder(numberValue2, numberValue3, numberValue4)
dataTable2.controllerPos = vector3Builder
dataTable2.controllerRotation = 150.0
dataTable2.rotation = 131.69
vector3Builder = {}
dataTable2.propObjHandlers = vector3Builder
dataTable2.propFrameObjHandler = 0
dataTable2.propControllerHandler = 0
dataTable2.open = false
dataTable2.instruction = "none"
dataTable[12] = dataTable2
dataTable2 = {}
vector3Builder = {}
vector3Builder.name = "Los Santos"
numberValue2 = vector4
numberValue3 = 1312.8000488281
numberValue4 = 603.81097412109
numberValue5 = 80.317993164062
numberValue6 = 131.81103515625
numberValue2 = numberValue2(numberValue3, numberValue4, numberValue5, numberValue6)
vector3Builder.position = numberValue2
numberValue2 = {}
numberValue3 = 1
numberValue4 = 2
numberValue5 = 3
numberValue6 = 4
numberValue2[1] = numberValue3
numberValue2[2] = numberValue4
numberValue2[3] = numberValue5
numberValue2[4] = numberValue6
vector3Builder.opens = numberValue2
dataTable2[1] = vector3Builder
vector3Builder = {}
vector3Builder.name = "Olympic"
numberValue2 = vector4
numberValue3 = 2432.6638183594
numberValue4 = -192.52746582031
numberValue5 = 87.428588867188
numberValue6 = 153.07086181641
numberValue2 = numberValue2(numberValue3, numberValue4, numberValue5, numberValue6)
vector3Builder.position = numberValue2
numberValue2 = {}
numberValue3 = 5
numberValue4 = 6
numberValue5 = 7
numberValue6 = 8
numberValue2[1] = numberValue3
numberValue2[2] = numberValue4
numberValue2[3] = numberValue5
numberValue2[4] = numberValue6
vector3Builder.opens = numberValue2
dataTable2[2] = vector3Builder
vector3Builder = {}
vector3Builder.name = "Great Ocean"
numberValue2 = vector4
numberValue3 = -2431.2526855469
numberValue4 = -237.65274047852
numberValue5 = 16.305541992188
numberValue6 = 249.44882202148
numberValue2 = numberValue2(numberValue3, numberValue4, numberValue5, numberValue6)
vector3Builder.position = numberValue2
numberValue2 = {}
numberValue3 = 9
numberValue4 = 10
numberValue5 = 11
numberValue6 = 12
numberValue2[1] = numberValue3
numberValue2[2] = numberValue4
numberValue2[3] = numberValue5
numberValue2[4] = numberValue6
vector3Builder.opens = numberValue2
dataTable2[3] = vector3Builder
vector3Builder = {}
function numberValue2(arg1)
  local arg2, cmgCall3, position3, textValue5, iterator, cmgCall4, cmgCall5, serverEventCall, textValue8, tableHelper, textValue
  arg2 = CMG
  arg2 = arg2.hasClientPermission
  cmgCall3 = "borderforce.onduty.permission"
  arg2 = arg2(cmgCall3)
  if not arg2 then
    arg2 = CMG
    arg2 = arg2.isStaffedOnClient
    arg2 = arg2()
    if not arg2 then
      goto flow_label_88
    end
  end
  arg2 = false
  cmgCall3 = pairs
  position3 = arg1.opens
  cmgCall3, position3, textValue5, iterator = cmgCall3(position3)
  for cmgCall4, cmgCall5 in cmgCall3, position3, textValue5, iterator do
    serverEventCall = dataTable
    serverEventCall = serverEventCall[cmgCall5]
    serverEventCall = serverEventCall.open
    if serverEventCall then
      arg2 = true
      break
    end
  end
  if arg2 then
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.DrawText3D
    position3 = arg1.position
    position3 = position3.xyz
    textValue5 = "Press [E] to close gates"
    iterator = 0.35
    cmgCall3(position3, textValue5, iterator)
    cmgCall3 = IsControlJustPressed
    position3 = 0
    textValue5 = 38
    cmgCall3 = cmgCall3(position3, textValue5)
    if cmgCall3 then
      cmgCall3 = tCMG
      cmgCall3 = cmgCall3.notify
      position3 = "~g~Gate closing..."
      -- Beginner: Show a notification to the player.
      cmgCall3(position3)
      cmgCall3 = pairs
      position3 = arg1.opens
      cmgCall3, position3, textValue5, iterator = cmgCall3(position3)
      for cmgCall4, cmgCall5 in cmgCall3, position3, textValue5, iterator do
        serverEventCall = TriggerServerEvent
        textValue8 = "bfb85eb237"
        tableHelper = cmgCall5
        textValue = "close"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bfb85eb237".
        serverEventCall(textValue8, tableHelper, textValue)
      end
    end
  else
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.DrawText3D
    position3 = arg1.position
    position3 = position3.xyz
    textValue5 = "Press [E] to open gates"
    iterator = 0.35
    cmgCall3(position3, textValue5, iterator)
    cmgCall3 = IsControlJustPressed
    position3 = 0
    textValue5 = 38
    cmgCall3 = cmgCall3(position3, textValue5)
    if cmgCall3 then
      cmgCall3 = tCMG
      cmgCall3 = cmgCall3.notify
      position3 = "~g~Gate opening..."
      -- Beginner: Show a notification to the player.
      cmgCall3(position3)
      cmgCall3 = pairs
      position3 = arg1.opens
      cmgCall3, position3, textValue5, iterator = cmgCall3(position3)
      for cmgCall4, cmgCall5 in cmgCall3, position3, textValue5, iterator do
        serverEventCall = TriggerServerEvent
        textValue8 = "bfb85eb237"
        tableHelper = cmgCall5
        textValue = "open"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bfb85eb237".
        serverEventCall(textValue8, tableHelper, textValue)
      end
    end
  end
  ::flow_label_88::
end
numberValue3 = Citizen
numberValue3 = numberValue3.CreateThread
function numberValue4()
  local arg1, arg2, cmgCall3, position3, textValue5, iterator, cmgCall4, cmgCall5, serverEventCall, textValue8, tableHelper, textValue, position, position2, flag, flag2, flag3, flag4, workValue2, workValue3, flag5, flag6, flag7, numberValue, flag8
  arg1 = pairs
  arg2 = dataTable
  arg1, arg2, cmgCall3, position3 = arg1(arg2)
  for textValue5, iterator in arg1, arg2, cmgCall3, position3 do
    cmgCall4 = CMG
    cmgCall4 = cmgCall4.loadModel
    cmgCall5 = iterator.prop
    cmgCall4 = cmgCall4(cmgCall5)
    if not cmgCall4 then
      return
    end
    cmgCall5 = CMG
    cmgCall5 = cmgCall5.loadModel
    serverEventCall = iterator.prop_frame
    cmgCall5 = cmgCall5(serverEventCall)
    serverEventCall = CMG
    serverEventCall = serverEventCall.loadModel
    textValue8 = iterator.prop_controller
    serverEventCall = serverEventCall(textValue8)
    textValue8 = CreateObjectNoOffset
    tableHelper = cmgCall4
    textValue = iterator.position
    textValue = textValue.x
    position = iterator.position
    position = position.y
    position2 = iterator.position
    position2 = position2.z
    position2 = position2 - 1
    flag = false
    flag2 = false
    flag3 = true
    -- Beginner: result below is objectEntity.
    textValue8 = textValue8(tableHelper, textValue, position, position2, flag, flag2, flag3)
    tableHelper = table
    tableHelper = tableHelper.insert
    textValue = dataTable
    textValue = textValue[textValue5]
    textValue = textValue.propObjHandlers
    position = textValue8
    tableHelper(textValue, position)
    tableHelper = CreateObjectNoOffset
    textValue = cmgCall4
    position = iterator.position
    position = position.x
    position2 = iterator.position
    position2 = position2.y
    flag = iterator.position
    flag = flag.z
    flag = flag - 1
    flag2 = false
    flag3 = false
    flag4 = true
    -- Beginner: result below is objectEntity.
    tableHelper = tableHelper(textValue, position, position2, flag, flag2, flag3, flag4)
    textValue = table
    textValue = textValue.insert
    position = dataTable
    position = position[textValue5]
    position = position.propObjHandlers
    position2 = tableHelper
    textValue(position, position2)
    textValue = pairs
    position = dataTable
    position = position[textValue5]
    position = position.propObjHandlers
    textValue, position, position2, flag = textValue(position)
    for flag2, flag3 in textValue, position, position2, flag do
      flag4 = SetEntityHeading
      workValue2 = flag3
      workValue3 = dataTable
      workValue3 = workValue3[textValue5]
      workValue3 = workValue3.rotation
      -- Beginner: Change the direction an entity is facing.
      flag4(workValue2, workValue3)
      flag4 = SetEntityInvincible
      workValue2 = flag3
      workValue3 = true
      flag4(workValue2, workValue3)
      flag4 = FreezeEntityPosition
      workValue2 = flag3
      workValue3 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      flag4(workValue2, workValue3)
      flag4 = dataTable
      flag4 = flag4[textValue5]
      flag4 = flag4.gateRotation
      if nil ~= flag4 then
        workValue2 = SetEntityRotation
        workValue3 = flag3
        flag5 = flag4.x
        flag6 = flag4.y
        flag7 = flag4.z
        numberValue = 2
        flag8 = false
        workValue2(workValue3, flag5, flag6, flag7, numberValue, flag8)
      end
    end
    textValue = CreateObjectNoOffset
    position = cmgCall5
    position2 = iterator.position
    position2 = position2.x
    flag = iterator.position
    flag = flag.y
    flag2 = iterator.position
    flag2 = flag2.z
    flag2 = flag2 - 1.0
    flag3 = false
    flag4 = true
    workValue2 = false
    -- Beginner: result below is objectEntity.
    textValue = textValue(position, position2, flag, flag2, flag3, flag4, workValue2)
    position = dataTable
    position = position[textValue5]
    position.propFrameObjHandler = textValue
    position = SetEntityHeading
    position2 = dataTable
    position2 = position2[textValue5]
    position2 = position2.propFrameObjHandler
    flag = dataTable
    flag = flag[textValue5]
    flag = flag.rotation
    -- Beginner: Change the direction an entity is facing.
    position(position2, flag)
    position = SetEntityInvincible
    position2 = dataTable
    position2 = position2[textValue5]
    position2 = position2.propFrameObjHandler
    flag = true
    position(position2, flag)
    position = FreezeEntityPosition
    position2 = dataTable
    position2 = position2[textValue5]
    position2 = position2.propFrameObjHandler
    flag = true
    -- Beginner: Freeze or unfreeze an entity in place.
    position(position2, flag)
    position = dataTable
    position = position[textValue5]
    position = position.gateRotation
    if nil ~= position then
      position2 = SetEntityRotation
      flag = dataTable
      flag = flag[textValue5]
      flag = flag.propFrameObjHandler
      flag2 = position.x
      flag3 = position.y
      flag4 = position.z
      workValue2 = 2
      workValue3 = false
      position2(flag, flag2, flag3, flag4, workValue2, workValue3)
    end
    position2 = CreateObjectNoOffset
    flag = serverEventCall
    flag2 = iterator.controllerPos
    flag2 = flag2.x
    flag3 = iterator.controllerPos
    flag3 = flag3.y
    flag4 = iterator.controllerPos
    flag4 = flag4.z
    flag4 = flag4 - 1
    workValue2 = false
    workValue3 = false
    flag5 = true
    -- Beginner: result below is objectEntity.
    position2 = position2(flag, flag2, flag3, flag4, workValue2, workValue3, flag5)
    flag = dataTable
    flag = flag[textValue5]
    flag.propControllerHandler = position2
    flag = SetEntityHeading
    flag2 = position2
    flag3 = dataTable
    flag3 = flag3[textValue5]
    flag3 = flag3.controllerRotation
    -- Beginner: Change the direction an entity is facing.
    flag(flag2, flag3)
    flag = SetEntityInvincible
    flag2 = position2
    flag3 = true
    flag(flag2, flag3)
    flag = FreezeEntityPosition
    flag2 = position2
    flag3 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    flag(flag2, flag3)
    flag = SetModelAsNoLongerNeeded
    flag2 = cmgCall4
    flag(flag2)
    flag = SetModelAsNoLongerNeeded
    flag2 = cmgCall5
    flag(flag2)
    flag = SetModelAsNoLongerNeeded
    flag2 = serverEventCall
    flag(flag2)
  end
  arg1 = pairs
  arg2 = dataTable2
  arg1, arg2, cmgCall3, position3 = arg1(arg2)
  for textValue5, iterator in arg1, arg2, cmgCall3, position3 do
    cmgCall4 = CreateObjectNoOffset
    cmgCall5 = -257022130
    serverEventCall = iterator.position
    serverEventCall = serverEventCall.x
    textValue8 = iterator.position
    textValue8 = textValue8.y
    tableHelper = iterator.position
    tableHelper = tableHelper.z
    tableHelper = tableHelper - 1.0
    textValue = false
    position = false
    position2 = true
    -- Beginner: result below is objectEntity.
    cmgCall4 = cmgCall4(cmgCall5, serverEventCall, textValue8, tableHelper, textValue, position, position2)
    cmgCall5 = SetEntityHeading
    serverEventCall = cmgCall4
    textValue8 = iterator.position
    textValue8 = textValue8.w
    -- Beginner: Change the direction an entity is facing.
    cmgCall5(serverEventCall, textValue8)
    cmgCall5 = table
    cmgCall5 = cmgCall5.insert
    serverEventCall = vector3Builder
    textValue8 = cmgCall4
    cmgCall5(serverEventCall, textValue8)
    cmgCall5 = CMG
    cmgCall5 = cmgCall5.createArea
    serverEventCall = "bordercloseall_"
    textValue8 = tostring
    tableHelper = textValue5
    textValue8 = textValue8(tableHelper)
    serverEventCall = serverEventCall .. textValue8
    textValue8 = iterator.position
    textValue8 = textValue8.xyz
    tableHelper = 1.5
    textValue = 6.0
    function position()
      local arg12, cmgCall2
    end
    function position2()
      local arg12, cmgCall2
    end
    flag = numberValue2
    flag2 = iterator
    -- Beginner: Create an interaction area around a world position.
    cmgCall5(serverEventCall, textValue8, tableHelper, textValue, position, position2, flag, flag2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
numberValue3(numberValue4)
numberValue3 = 10000
function numberValue4()
  local arg1, arg2, cmgCall3, position3, textValue5, iterator, cmgCall4, cmgCall5, serverEventCall, textValue8, tableHelper, textValue, position, position2, flag, flag2, flag3, flag4, workValue2, workValue3, flag5, flag6, flag7
  arg1 = pairs
  arg2 = dataTable
  arg1, arg2, cmgCall3, position3 = arg1(arg2)
  for textValue5, iterator in arg1, arg2, cmgCall3, position3 do
    cmgCall4 = iterator.instruction
    if "open" == cmgCall4 then
      cmgCall4 = pairs
      cmgCall5 = dataTable
      cmgCall5 = cmgCall5[textValue5]
      cmgCall5 = cmgCall5.propObjHandlers
      cmgCall4, cmgCall5, serverEventCall, textValue8 = cmgCall4(cmgCall5)
      for tableHelper, textValue in cmgCall4, cmgCall5, serverEventCall, textValue8 do
        position = GetEntityCoords
        position2 = textValue
        -- Beginner: result below is entityCoords.
        position = position(position2)
        position2 = GetOffsetFromEntityInWorldCoords
        flag = dataTable
        flag = flag[textValue5]
        flag = flag.propFrameObjHandler
        flag2 = tableHelper * 5.0
        flag3 = 0.0
        flag4 = 0.0
        position2 = position2(flag, flag2, flag3, flag4)
        flag = position.xy
        flag2 = iterator.position
        flag2 = flag2.xy
        flag = flag - flag2
        flag = #flag
        flag2 = 0.1
        if flag < flag2 then
          flag = dataTable
          flag = flag[textValue5]
          flag.instruction = "none"
        end
        flag = numberValue3
        flag2 = GetFrameTime
        flag2 = flag2()
        flag = flag * flag2
        flag2 = SetEntityCoordsNoOffset
        flag3 = textValue
        flag4 = position.x
        workValue2 = iterator.position
        workValue2 = workValue2.x
        workValue3 = position2.x
        workValue2 = workValue2 - workValue3
        workValue2 = workValue2 / flag
        flag4 = flag4 + workValue2
        workValue2 = position.y
        workValue3 = iterator.position
        workValue3 = workValue3.y
        flag5 = position2.y
        workValue3 = workValue3 - flag5
        workValue3 = workValue3 / flag
        workValue2 = workValue2 + workValue3
        workValue3 = position.z
        flag5 = false
        flag6 = false
        flag7 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        flag2(flag3, flag4, workValue2, workValue3, flag5, flag6, flag7)
      end
    end
    cmgCall4 = iterator.instruction
    if "close" == cmgCall4 then
      cmgCall4 = pairs
      cmgCall5 = dataTable
      cmgCall5 = cmgCall5[textValue5]
      cmgCall5 = cmgCall5.propObjHandlers
      cmgCall4, cmgCall5, serverEventCall, textValue8 = cmgCall4(cmgCall5)
      for tableHelper, textValue in cmgCall4, cmgCall5, serverEventCall, textValue8 do
        position = GetEntityCoords
        position2 = textValue
        -- Beginner: result below is entityCoords.
        position = position(position2)
        position2 = GetOffsetFromEntityInWorldCoords
        flag = dataTable
        flag = flag[textValue5]
        flag = flag.propFrameObjHandler
        flag2 = tableHelper * 5.0
        flag3 = 0.0
        flag4 = 0.0
        position2 = position2(flag, flag2, flag3, flag4)
        flag = position - position2
        flag = #flag
        flag2 = 0.1
        if flag < flag2 then
          flag = dataTable
          flag = flag[textValue5]
          flag.instruction = "none"
        end
        flag = numberValue3
        flag2 = GetFrameTime
        flag2 = flag2()
        flag = flag * flag2
        flag2 = SetEntityCoordsNoOffset
        flag3 = textValue
        flag4 = position.x
        workValue2 = position2.x
        workValue3 = iterator.position
        workValue3 = workValue3.x
        workValue2 = workValue2 - workValue3
        workValue2 = workValue2 / flag
        flag4 = flag4 + workValue2
        workValue2 = position.y
        workValue3 = position2.y
        flag5 = iterator.position
        flag5 = flag5.y
        workValue3 = workValue3 - flag5
        workValue3 = workValue3 / flag
        workValue2 = workValue2 + workValue3
        workValue3 = position.z
        flag5 = false
        flag6 = false
        flag7 = false
        flag2(flag3, flag4, workValue2, workValue3, flag5, flag6, flag7)
      end
    end
  end
end
numberValue5 = CMG
numberValue5 = numberValue5.createThreadOnTick
numberValue6 = numberValue4
flag9 = "Border Force"
-- Beginner: Run a helper every game frame while this script is active.
numberValue5(numberValue6, flag9)
numberValue5 = AddEventHandler
numberValue6 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function flag9(arg1, arg2)
  local cmgCall3, position3, textValue5, iterator, cmgCall4, cmgCall5, serverEventCall, textValue8, tableHelper, textValue, position, position2, flag, flag2, flag3, flag4, workValue2, workValue3
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function cmgCall3()
      local arg12, cmgCall2
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function position3()
      local arg12, cmgCall2
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function textValue5(arg12)
      local cmgCall2, textValue3, textValue4, textValue6, textValue7
      cmgCall2 = CMG
      cmgCall2 = cmgCall2.hasClientPermission
      textValue3 = "borderforce.onduty.permission"
      cmgCall2 = cmgCall2(textValue3)
      if not cmgCall2 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.isStaffedOnClient
        cmgCall2 = cmgCall2()
        if not cmgCall2 then
          goto flow_label_65
        end
      end
      cmgCall2 = arg12.objectId
      textValue3 = dataTable
      textValue3 = textValue3[cmgCall2]
      textValue3 = textValue3.open
      if textValue3 then
        textValue3 = IsControlJustPressed
        textValue4 = 0
        textValue6 = 38
        textValue3 = textValue3(textValue4, textValue6)
        if textValue3 then
          textValue3 = tCMG
          textValue3 = textValue3.notify
          textValue4 = "~g~Gate closing..."
          -- Beginner: Show a notification to the player.
          textValue3(textValue4)
          textValue3 = TriggerServerEvent
          textValue4 = "bfb85eb237"
          textValue6 = cmgCall2
          textValue7 = "close"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bfb85eb237".
          textValue3(textValue4, textValue6, textValue7)
        end
        textValue3 = CMG
        textValue3 = textValue3.DrawText3D
        textValue4 = dataTable
        textValue4 = textValue4[cmgCall2]
        textValue4 = textValue4.controllerPos
        textValue6 = "Press [E] to close gate"
        textValue7 = 0.35
        textValue3(textValue4, textValue6, textValue7)
      else
        textValue3 = CMG
        textValue3 = textValue3.DrawText3D
        textValue4 = dataTable
        textValue4 = textValue4[cmgCall2]
        textValue4 = textValue4.controllerPos
        textValue6 = "Press [E] to open gate"
        textValue7 = 0.35
        textValue3(textValue4, textValue6, textValue7)
        textValue3 = IsControlJustPressed
        textValue4 = 0
        textValue6 = 38
        textValue3 = textValue3(textValue4, textValue6)
        if textValue3 then
          textValue3 = tCMG
          textValue3 = textValue3.notify
          textValue4 = "~g~Gate opening..."
          -- Beginner: Show a notification to the player.
          textValue3(textValue4)
          textValue3 = TriggerServerEvent
          textValue4 = "bfb85eb237"
          textValue6 = cmgCall2
          textValue7 = "open"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bfb85eb237".
          textValue3(textValue4, textValue6, textValue7)
        end
      end
      ::flow_label_65::
    end
    iterator = pairs
    cmgCall4 = dataTable
    iterator, cmgCall4, cmgCall5, serverEventCall = iterator(cmgCall4)
    for textValue8, tableHelper in iterator, cmgCall4, cmgCall5, serverEventCall do
      textValue = CMG
      textValue = textValue.createArea
      position = "border_"
      position2 = textValue8
      position = position .. position2
      position2 = tableHelper.controllerPos
      flag = 1.5
      flag2 = 6
      flag3 = cmgCall3
      flag4 = position3
      workValue2 = textValue5
      workValue3 = {}
      workValue3.objectId = textValue8
      -- Beginner: Create an interaction area around a world position.
      textValue(position, position2, flag, flag2, flag3, flag4, workValue2, workValue3)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
numberValue5(numberValue6, flag9)
numberValue5 = AddEventHandler
numberValue6 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.
function flag9(arg1)
  local arg2, cmgCall3, position3, textValue5, iterator, cmgCall4, cmgCall5, serverEventCall, textValue8, tableHelper, textValue, position, position2
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = pairs
    cmgCall3 = dataTable
    arg2, cmgCall3, position3, textValue5 = arg2(cmgCall3)
    for iterator in arg2, cmgCall3, position3, textValue5 do
      cmgCall4 = pairs
      cmgCall5 = dataTable
      cmgCall5 = cmgCall5[iterator]
      cmgCall5 = cmgCall5.propObjHandlers
      cmgCall4, cmgCall5, serverEventCall, textValue8 = cmgCall4(cmgCall5)
      for tableHelper, textValue in cmgCall4, cmgCall5, serverEventCall, textValue8 do
        position = DeleteObject
        position2 = textValue
        position(position2)
      end
      cmgCall4 = DeleteObject
      cmgCall5 = dataTable
      cmgCall5 = cmgCall5[iterator]
      cmgCall5 = cmgCall5.propFrameObjHandler
      cmgCall4(cmgCall5)
      cmgCall4 = DeleteObject
      cmgCall5 = dataTable
      cmgCall5 = cmgCall5[iterator]
      cmgCall5 = cmgCall5.propControllerHandler
      cmgCall4(cmgCall5)
    end
    arg2 = pairs
    cmgCall3 = vector3Builder
    arg2, cmgCall3, position3, textValue5 = arg2(cmgCall3)
    for iterator, cmgCall4 in arg2, cmgCall3, position3, textValue5 do
      cmgCall5 = DeleteEntity
      serverEventCall = cmgCall4
      -- Beginner: Delete a GTA entity.
      cmgCall5(serverEventCall)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
numberValue5(numberValue6, flag9)
numberValue5 = RegisterNetEvent
numberValue6 = "03e141ef40"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "03e141ef40".
numberValue5(numberValue6)
numberValue5 = AddEventHandler
numberValue6 = "03e141ef40"
-- Beginner: this function runs when client event "03e141ef40" fires.
function flag9(arg1, arg2)
  local cmgCall3
  cmgCall3 = dataTable
  cmgCall3 = cmgCall3[arg1]
  cmgCall3.instruction = arg2
  if "open" == arg2 then
    cmgCall3 = dataTable
    cmgCall3 = cmgCall3[arg1]
    cmgCall3.open = true
  elseif "close" == arg2 then
    cmgCall3 = dataTable
    cmgCall3 = cmgCall3[arg1]
    cmgCall3.open = false
  end
end
-- Beginner: Register a client-side event handler. Event/command: "03e141ef40".
numberValue5(numberValue6, flag9)
numberValue5 = RegisterNetEvent
numberValue6 = "46592aad2d"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "46592aad2d".
numberValue5(numberValue6)
numberValue5 = AddEventHandler
numberValue6 = "46592aad2d"
-- Beginner: this function runs when client event "46592aad2d" fires.
function flag9(arg1)
  local arg2, cmgCall3, position3, textValue5, iterator, cmgCall4, cmgCall5
  arg2 = pairs
  cmgCall3 = arg1
  arg2, cmgCall3, position3, textValue5 = arg2(cmgCall3)
  for iterator, cmgCall4 in arg2, cmgCall3, position3, textValue5 do
    cmgCall5 = cmgCall4.open
    if cmgCall5 then
      cmgCall5 = dataTable
      cmgCall5 = cmgCall5[iterator]
      cmgCall5 = cmgCall5.open
      if not cmgCall5 then
        cmgCall5 = dataTable
        cmgCall5 = cmgCall5[iterator]
        cmgCall5.instruction = "open"
        cmgCall5 = dataTable
        cmgCall5 = cmgCall5[iterator]
        cmgCall5.open = true
      end
    end
    cmgCall5 = cmgCall4.open
    if not cmgCall5 then
      cmgCall5 = dataTable
      cmgCall5 = cmgCall5[iterator]
      cmgCall5 = cmgCall5.open
      if not cmgCall5 then
        cmgCall5 = dataTable
        cmgCall5 = cmgCall5[iterator]
        cmgCall5.instruction = "close"
        cmgCall5 = dataTable
        cmgCall5 = cmgCall5[iterator]
        cmgCall5.open = false
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "46592aad2d".
numberValue5(numberValue6, flag9)
numberValue5 = AddEventHandler
numberValue6 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function flag9(arg1, arg2)
  local cmgCall3, position3
  if arg2 then
    cmgCall3 = TriggerServerEvent
    position3 = "923b558511"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "923b558511".
    cmgCall3(position3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
numberValue5(numberValue6, flag9)
numberValue5 = RegisterNetEvent
numberValue6 = "9da3977b15"
-- Beginner: this function handles network event "9da3977b15".
function flag9()
  local arg1, arg2, cmgCall3, position3, textValue5, iterator, cmgCall4, cmgCall5, serverEventCall, textValue8, tableHelper, textValue, position
  arg1 = nil
  arg2 = 75.0
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  cmgCall3 = cmgCall3()
  position3 = pairs
  textValue5 = dataTable2
  position3, textValue5, iterator, cmgCall4 = position3(textValue5)
  for cmgCall5, serverEventCall in position3, textValue5, iterator, cmgCall4 do
    textValue8 = serverEventCall.position
    textValue8 = textValue8.xyz
    textValue8 = cmgCall3 - textValue8
    textValue8 = #textValue8
    if arg2 > textValue8 then
      arg1 = serverEventCall
      arg2 = textValue8
    end
  end
  if arg1 then
    position3 = TriggerServerEvent
    textValue5 = "d95fd9b2cd"
    iterator = arg1.name
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d95fd9b2cd".
    position3(textValue5, iterator)
    position3 = pairs
    textValue5 = arg1.opens
    position3, textValue5, iterator, cmgCall4 = position3(textValue5)
    for cmgCall5, serverEventCall in position3, textValue5, iterator, cmgCall4 do
      textValue8 = TriggerServerEvent
      tableHelper = "bfb85eb237"
      textValue = serverEventCall
      position = "close"
      textValue8(tableHelper, textValue, position)
    end
  else
    position3 = notify
    textValue5 = "~r~No nearby border to lockdown"
    -- Beginner: Show a notification to the player.
    position3(textValue5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9da3977b15".
numberValue5(numberValue6, flag9)
numberValue5 = RegisterNetEvent
numberValue6 = "d95fd9b2cd"
-- Beginner: this function handles network event "d95fd9b2cd".
function flag9(arg1)
  local arg2, cmgCall3, position3, textValue5, iterator, cmgCall4, cmgCall5, serverEventCall
  arg2 = CMG
  arg2 = arg2.notifyPicture
  cmgCall3 = "polnotification"
  position3 = "notification"
  textValue5 = "~r~Lockdown triggered at the "
  iterator = arg1
  cmgCall4 = " border!"
  textValue5 = textValue5 .. iterator .. cmgCall4
  iterator = "Border Force"
  cmgCall4 = arg1
  cmgCall5 = nil
  serverEventCall = nil
  arg2(cmgCall3, position3, textValue5, iterator, cmgCall4, cmgCall5, serverEventCall)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d95fd9b2cd".
numberValue5(numberValue6, flag9)
numberValue5 = ""
numberValue6 = ""
flag9 = false
cmgCall6 = RegisterNetEvent
cmgCall = "5e416b2e9c"
-- Beginner: this function handles network event "5e416b2e9c".
function workValue(arg1, arg2)
  local cmgCall3
  numberValue5 = arg2
  numberValue6 = arg1
  cmgCall3 = true
  flag9 = cmgCall3
end
cmgCall6(cmgCall, workValue)
cmgCall6 = CMG
-- Beginner: this function handles network event "5e416b2e9c".
function cmgCall()
  local arg1, arg2
  arg1 = numberValue6
  return arg1
end
cmgCall6.getBorderForceCallsign = cmgCall
cmgCall6 = CMG
function cmgCall()
  local arg1, arg2
  arg1 = numberValue5
  return arg1
end
cmgCall6.getBorderForceRank = cmgCall
cmgCall6 = CMG
function cmgCall()
  local arg1, arg2
  arg1 = flag9
  return arg1
end
cmgCall6.hasBorderForceCallsign = cmgCall
function cmgCall6()
  local arg1, arg2, cmgCall3, position3, textValue5, iterator, cmgCall4, cmgCall5, serverEventCall, textValue8, tableHelper, textValue, position
  arg1 = numberValue6
  if "" ~= arg1 then
    arg1 = CMG
    arg1 = arg1.hasClientPermission
    arg2 = "borderforce.onduty.permission"
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = DrawAdvancedText
      arg2 = 1.064
      cmgCall3 = 0.972
      position3 = 0.005
      textValue5 = 0.0028
      iterator = 0.4
      cmgCall4 = numberValue6
      cmgCall5 = 255
      serverEventCall = 255
      textValue8 = 255
      tableHelper = 255
      textValue = 0
      position = 0
      arg1(arg2, cmgCall3, position3, textValue5, iterator, cmgCall4, cmgCall5, serverEventCall, textValue8, tableHelper, textValue, position)
    end
  end
end
cmgCall = CMG
cmgCall = cmgCall.createThreadOnTick
workValue = cmgCall6
textValue2 = "Border Force Callsign"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall(workValue, textValue2)