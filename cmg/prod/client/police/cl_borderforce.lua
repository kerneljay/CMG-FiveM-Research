--[[
    LEVEL 1 BEGINNER GUIDE — Borderforce
    =========================================

    File: cmg/prod/client/police/cl_borderforce.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Borderforce feature.

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
local dataCollection, dataCollection2, createVector3, number2, number3, number4, number5, number6, stateFlag9, cmgOperation6, cmgOperation, workingValue, text2
dataCollection = {}
dataCollection2 = {}
dataCollection2.prop = "cmg_prop_gate_military_01"
dataCollection2.prop_frame = "cmg_prop_gate_frame_02"
dataCollection2.prop_controller = "prop_rail_controller"
createVector3 = vector3
number2 = 1307.67163
number3 = 575.666138
number4 = 80.11085
createVector3 = createVector3(number2, number3, number4)
dataCollection2.position = createVector3
createVector3 = vector3
number2 = 0.0
number3 = 0.0
number4 = 131.0
createVector3 = createVector3(number2, number3, number4)
dataCollection2.gateRotation = createVector3
createVector3 = vector3
number2 = 1305.7927246094
number3 = 581.07287597656
number4 = 80.081733703613
createVector3 = createVector3(number2, number3, number4)
dataCollection2.controllerPos = createVector3
dataCollection2.controllerRotation = 226.0
dataCollection2.rotation = 133.46
createVector3 = {}
dataCollection2.propObjHandlers = createVector3
dataCollection2.propFrameObjHandler = 0
dataCollection2.propControllerHandler = 0
dataCollection2.open = false
dataCollection2.instruction = "none"
dataCollection[1] = dataCollection2
dataCollection2 = {}
dataCollection2.prop = "cmg_prop_gate_military_01"
dataCollection2.prop_frame = "cmg_prop_gate_frame_02"
dataCollection2.prop_controller = "prop_rail_controller"
createVector3 = vector3
number2 = 1336.73181
number3 = 602.823364
number4 = 80.15877
createVector3 = createVector3(number2, number3, number4)
dataCollection2.position = createVector3
dataCollection2.gateRotation = nil
createVector3 = vector3
number2 = 1330.9665527344
number3 = 604.69061279297
number4 = 80.189002990723
createVector3 = createVector3(number2, number3, number4)
dataCollection2.controllerPos = createVector3
dataCollection2.controllerRotation = 226.0
dataCollection2.rotation = 131.69
createVector3 = {}
dataCollection2.propObjHandlers = createVector3
dataCollection2.propFrameObjHandler = 0
dataCollection2.propControllerHandler = 0
dataCollection2.open = false
dataCollection2.instruction = "none"
dataCollection[2] = dataCollection2
dataCollection2 = {}
dataCollection2.prop = "cmg_prop_gate_military_01"
dataCollection2.prop_frame = "cmg_prop_gate_frame_02"
dataCollection2.prop_controller = "prop_rail_controller"
createVector3 = vector3
number2 = 1313.71228
number3 = 628.0808
number4 = 80.1978455
createVector3 = createVector3(number2, number3, number4)
dataCollection2.position = createVector3
createVector3 = vector3
number2 = 0.0
number3 = 0.0
number4 = 311.0
createVector3 = createVector3(number2, number3, number4)
dataCollection2.gateRotation = createVector3
createVector3 = vector3
number2 = 1312.9809570313
number3 = 623.81829833984
number4 = 80.197242736816
createVector3 = createVector3(number2, number3, number4)
dataCollection2.controllerPos = createVector3
dataCollection2.controllerRotation = 41.0
dataCollection2.rotation = 131.69
createVector3 = {}
dataCollection2.propObjHandlers = createVector3
dataCollection2.propFrameObjHandler = 0
dataCollection2.propControllerHandler = 0
dataCollection2.open = false
dataCollection2.instruction = "none"
dataCollection[3] = dataCollection2
dataCollection2 = {}
dataCollection2.prop = "cmg_prop_gate_military_01"
dataCollection2.prop_frame = "cmg_prop_gate_frame_02"
dataCollection2.prop_controller = "prop_rail_controller"
createVector3 = vector3
number2 = 1283.63123
number3 = 600.256348
number4 = 80.0751
createVector3 = createVector3(number2, number3, number4)
dataCollection2.position = createVector3
createVector3 = vector3
number2 = 0.0
number3 = 0.0
number4 = 311.0
createVector3 = createVector3(number2, number3, number4)
dataCollection2.gateRotation = createVector3
createVector3 = vector3
number2 = 1288.6761474609
number3 = 598.40759277344
number4 = 80.098342895508
createVector3 = createVector3(number2, number3, number4)
dataCollection2.controllerPos = createVector3
dataCollection2.controllerRotation = 41.0
dataCollection2.rotation = 131.69
createVector3 = {}
dataCollection2.propObjHandlers = createVector3
dataCollection2.propFrameObjHandler = 0
dataCollection2.propControllerHandler = 0
dataCollection2.open = false
dataCollection2.instruction = "none"
dataCollection[4] = dataCollection2
dataCollection2 = {}
dataCollection2.prop = "cmg_prop_gate_military_01"
dataCollection2.prop_frame = "cmg_prop_gate_frame_02"
dataCollection2.prop_controller = "prop_rail_controller"
createVector3 = vector3
number2 = 2436.67236
number3 = -221.798569
number4 = 86.0626144
createVector3 = createVector3(number2, number3, number4)
dataCollection2.position = createVector3
createVector3 = vector3
number2 = 0.0
number3 = 0.0
number4 = 155.0
createVector3 = createVector3(number2, number3, number4)
dataCollection2.gateRotation = createVector3
createVector3 = vector3
number2 = 2432.5932617188
number3 = -217.69305419922
number4 = 86.343444824219
createVector3 = createVector3(number2, number3, number4)
dataCollection2.controllerPos = createVector3
dataCollection2.controllerRotation = 240.0
dataCollection2.rotation = 131.69
createVector3 = {}
dataCollection2.propObjHandlers = createVector3
dataCollection2.propFrameObjHandler = 0
dataCollection2.propControllerHandler = 0
dataCollection2.open = false
dataCollection2.instruction = "none"
dataCollection[5] = dataCollection2
dataCollection2 = {}
dataCollection2.prop = "cmg_prop_gate_military_01"
dataCollection2.prop_frame = "cmg_prop_gate_frame_02"
dataCollection2.prop_controller = "prop_rail_controller"
createVector3 = vector3
number2 = 2454.306
number3 = -186.302841
number4 = 87.8461151
createVector3 = createVector3(number2, number3, number4)
dataCollection2.position = createVector3
createVector3 = vector3
number2 = 0.0
number3 = 0.0
number4 = 155.0
createVector3 = createVector3(number2, number3, number4)
dataCollection2.gateRotation = createVector3
createVector3 = vector3
number2 = 2447.4279785156
number3 = -187.01138305664
number4 = 87.809188842773
createVector3 = createVector3(number2, number3, number4)
dataCollection2.controllerPos = createVector3
dataCollection2.controllerRotation = 240.0
dataCollection2.rotation = 131.69
createVector3 = {}
dataCollection2.propObjHandlers = createVector3
dataCollection2.propFrameObjHandler = 0
dataCollection2.propControllerHandler = 0
dataCollection2.open = false
dataCollection2.instruction = "none"
dataCollection[6] = dataCollection2
dataCollection2 = {}
dataCollection2.prop = "cmg_prop_gate_military_01"
dataCollection2.prop_frame = "cmg_prop_gate_frame_02"
dataCollection2.prop_controller = "prop_rail_controller"
createVector3 = vector3
number2 = 2423.53882
number3 = -171.105515
number4 = 87.77565
createVector3 = createVector3(number2, number3, number4)
dataCollection2.position = createVector3
createVector3 = vector3
number2 = 0.0
number3 = 0.0
number4 = 333.0
createVector3 = createVector3(number2, number3, number4)
dataCollection2.gateRotation = createVector3
createVector3 = vector3
number2 = 2426.1889648438
number3 = -175.99674987793
number4 = 87.734436035156
createVector3 = createVector3(number2, number3, number4)
dataCollection2.controllerPos = createVector3
dataCollection2.controllerRotation = 68.0
dataCollection2.rotation = 131.69
createVector3 = {}
dataCollection2.propObjHandlers = createVector3
dataCollection2.propFrameObjHandler = 0
dataCollection2.propControllerHandler = 0
dataCollection2.open = false
dataCollection2.instruction = "none"
dataCollection[7] = dataCollection2
dataCollection2 = {}
dataCollection2.prop = "cmg_prop_gate_military_01"
dataCollection2.prop_frame = "cmg_prop_gate_frame_02"
dataCollection2.prop_controller = "prop_rail_controller"
createVector3 = vector3
number2 = 2405.56372
number3 = -208.031891
number4 = 86.09489
createVector3 = createVector3(number2, number3, number4)
dataCollection2.position = createVector3
createVector3 = vector3
number2 = 0.0
number3 = 0.0
number4 = 333.0
createVector3 = createVector3(number2, number3, number4)
dataCollection2.gateRotation = createVector3
createVector3 = vector3
number2 = 2411.3996582031
number3 = -207.52787780762
number4 = 86.227264404297
createVector3 = createVector3(number2, number3, number4)
dataCollection2.controllerPos = createVector3
dataCollection2.controllerRotation = 68.0
dataCollection2.rotation = 131.69
createVector3 = {}
dataCollection2.propObjHandlers = createVector3
dataCollection2.propFrameObjHandler = 0
dataCollection2.propControllerHandler = 0
dataCollection2.open = false
dataCollection2.instruction = "none"
dataCollection[8] = dataCollection2
dataCollection2 = {}
dataCollection2.prop = "cmg_prop_gate_military_01"
dataCollection2.prop_frame = "cmg_prop_gate_frame_02"
dataCollection2.prop_controller = "prop_rail_controller"
createVector3 = vector3
number2 = -2401.57422
number3 = -235.169571
number4 = 15.5775642
createVector3 = createVector3(number2, number3, number4)
dataCollection2.position = createVector3
createVector3 = vector3
number2 = 0.0
number3 = 0.0
number4 = 242.5
createVector3 = createVector3(number2, number3, number4)
dataCollection2.gateRotation = createVector3
createVector3 = vector3
number2 = -2406.2575683594
number3 = -239.23776245117
number4 = 15.476901054382
createVector3 = createVector3(number2, number3, number4)
dataCollection2.controllerPos = createVector3
dataCollection2.controllerRotation = 330.0
dataCollection2.rotation = 131.69
createVector3 = {}
dataCollection2.propObjHandlers = createVector3
dataCollection2.propFrameObjHandler = 0
dataCollection2.propControllerHandler = 0
dataCollection2.open = false
dataCollection2.instruction = "none"
dataCollection[9] = dataCollection2
dataCollection2 = {}
dataCollection2.prop = "cmg_prop_gate_military_01"
dataCollection2.prop_frame = "cmg_prop_gate_frame_02"
dataCollection2.prop_controller = "prop_rail_controller"
createVector3 = vector3
number2 = -2436.278
number3 = -216.735123
number4 = 16.4167013
createVector3 = createVector3(number2, number3, number4)
dataCollection2.position = createVector3
createVector3 = vector3
number2 = 0.0
number3 = 0.0
number4 = 242.5
createVector3 = createVector3(number2, number3, number4)
dataCollection2.gateRotation = createVector3
createVector3 = vector3
number2 = -2434.2758789063
number3 = -224.33985900879
number4 = 16.358936309814
createVector3 = createVector3(number2, number3, number4)
dataCollection2.controllerPos = createVector3
dataCollection2.controllerRotation = 330.0
dataCollection2.rotation = 131.69
createVector3 = {}
dataCollection2.propObjHandlers = createVector3
dataCollection2.propFrameObjHandler = 0
dataCollection2.propControllerHandler = 0
dataCollection2.open = false
dataCollection2.instruction = "none"
dataCollection[10] = dataCollection2
dataCollection2 = {}
dataCollection2.prop = "cmg_prop_gate_military_01"
dataCollection2.prop_frame = "cmg_prop_gate_frame_02"
dataCollection2.prop_controller = "prop_rail_controller"
createVector3 = vector3
number2 = -2452.826
number3 = -245.910721
number4 = 16.44616
createVector3 = createVector3(number2, number3, number4)
dataCollection2.position = createVector3
createVector3 = vector3
number2 = 0.0
number3 = 0.0
number4 = 60
createVector3 = createVector3(number2, number3, number4)
dataCollection2.gateRotation = createVector3
createVector3 = vector3
number2 = -2444.1645507813
number3 = -244.25773620605
number4 = 16.33381652832
createVector3 = createVector3(number2, number3, number4)
dataCollection2.controllerPos = createVector3
dataCollection2.controllerRotation = 150.0
dataCollection2.rotation = 131.69
createVector3 = {}
dataCollection2.propObjHandlers = createVector3
dataCollection2.propFrameObjHandler = 0
dataCollection2.propControllerHandler = 0
dataCollection2.open = false
dataCollection2.instruction = "none"
dataCollection[11] = dataCollection2
dataCollection2 = {}
dataCollection2.prop = "cmg_prop_gate_military_01"
dataCollection2.prop_frame = "cmg_prop_gate_frame_02"
dataCollection2.prop_controller = "prop_rail_controller"
createVector3 = vector3
number2 = -2416.83057
number3 = -264.836578
number4 = 15.4028273
createVector3 = createVector3(number2, number3, number4)
dataCollection2.position = createVector3
createVector3 = vector3
number2 = 0.0
number3 = 0.0
number4 = 60
createVector3 = createVector3(number2, number3, number4)
dataCollection2.gateRotation = createVector3
createVector3 = vector3
number2 = -2416.6555175781
number3 = -259.09844970703
number4 = 15.234084701538
createVector3 = createVector3(number2, number3, number4)
dataCollection2.controllerPos = createVector3
dataCollection2.controllerRotation = 150.0
dataCollection2.rotation = 131.69
createVector3 = {}
dataCollection2.propObjHandlers = createVector3
dataCollection2.propFrameObjHandler = 0
dataCollection2.propControllerHandler = 0
dataCollection2.open = false
dataCollection2.instruction = "none"
dataCollection[12] = dataCollection2
dataCollection2 = {}
createVector3 = {}
createVector3.name = "Los Santos"
number2 = vector4
number3 = 1312.8000488281
number4 = 603.81097412109
number5 = 80.317993164062
number6 = 131.81103515625
number2 = number2(number3, number4, number5, number6)
createVector3.position = number2
number2 = {}
number3 = 1
number4 = 2
number5 = 3
number6 = 4
number2[1] = number3
number2[2] = number4
number2[3] = number5
number2[4] = number6
createVector3.opens = number2
dataCollection2[1] = createVector3
createVector3 = {}
createVector3.name = "Olympic"
number2 = vector4
number3 = 2432.6638183594
number4 = -192.52746582031
number5 = 87.428588867188
number6 = 153.07086181641
number2 = number2(number3, number4, number5, number6)
createVector3.position = number2
number2 = {}
number3 = 5
number4 = 6
number5 = 7
number6 = 8
number2[1] = number3
number2[2] = number4
number2[3] = number5
number2[4] = number6
createVector3.opens = number2
dataCollection2[2] = createVector3
createVector3 = {}
createVector3.name = "Great Ocean"
number2 = vector4
number3 = -2431.2526855469
number4 = -237.65274047852
number5 = 16.305541992188
number6 = 249.44882202148
number2 = number2(number3, number4, number5, number6)
createVector3.position = number2
number2 = {}
number3 = 9
number4 = 10
number5 = 11
number6 = 12
number2[1] = number3
number2[2] = number4
number2[3] = number5
number2[4] = number6
createVector3.opens = number2
dataCollection2[3] = createVector3
createVector3 = {}

-- === HELPER FUNCTION (decompiler name: number2; parameters: localValue1) ===
function number2(localValue1)
  local localValue2, cmgOperation3, position3, text5, iterator, cmgOperation4, cmgOperation5, serverEventCall, text8, tableHelper, text
  localValue2 = CMG
  localValue2 = localValue2.hasClientPermission
  cmgOperation3 = "borderforce.onduty.permission"
  localValue2 = localValue2(cmgOperation3)
  if not localValue2 then
    localValue2 = CMG
    localValue2 = localValue2.isStaffedOnClient
    localValue2 = localValue2()
    if not localValue2 then
      goto continueAtStep88
    end
  end
  localValue2 = false
  cmgOperation3 = pairs
  position3 = localValue1.opens
  cmgOperation3, position3, text5, iterator = cmgOperation3(position3)
  for cmgOperation4, cmgOperation5 in cmgOperation3, position3, text5, iterator do
    serverEventCall = dataCollection
    serverEventCall = serverEventCall[cmgOperation5]
    serverEventCall = serverEventCall.open
    if serverEventCall then
      localValue2 = true
      break
    end
  end
  if localValue2 then
    cmgOperation3 = CMG
    cmgOperation3 = cmgOperation3.DrawText3D
    position3 = localValue1.position
    position3 = position3.xyz
    text5 = "Press [E] to close gates"
    iterator = 0.35
    cmgOperation3(position3, text5, iterator)
    cmgOperation3 = IsControlJustPressed
    position3 = 0
    text5 = 38
    cmgOperation3 = cmgOperation3(position3, text5)
    if cmgOperation3 then
      cmgOperation3 = tCMG
      cmgOperation3 = cmgOperation3.notify
      position3 = "~g~Gate closing..."
      -- Beginner: Show a notification to the player.
      cmgOperation3(position3)
      cmgOperation3 = pairs
      position3 = localValue1.opens
      cmgOperation3, position3, text5, iterator = cmgOperation3(position3)
      for cmgOperation4, cmgOperation5 in cmgOperation3, position3, text5, iterator do
        serverEventCall = TriggerServerEvent
        text8 = "bfb85eb237"
        tableHelper = cmgOperation5
        text = "close"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bfb85eb237".
        serverEventCall(text8, tableHelper, text)
      end
    end
  else
    cmgOperation3 = CMG
    cmgOperation3 = cmgOperation3.DrawText3D
    position3 = localValue1.position
    position3 = position3.xyz
    text5 = "Press [E] to open gates"
    iterator = 0.35
    cmgOperation3(position3, text5, iterator)
    cmgOperation3 = IsControlJustPressed
    position3 = 0
    text5 = 38
    cmgOperation3 = cmgOperation3(position3, text5)
    if cmgOperation3 then
      cmgOperation3 = tCMG
      cmgOperation3 = cmgOperation3.notify
      position3 = "~g~Gate opening..."
      -- Beginner: Show a notification to the player.
      cmgOperation3(position3)
      cmgOperation3 = pairs
      position3 = localValue1.opens
      cmgOperation3, position3, text5, iterator = cmgOperation3(position3)
      for cmgOperation4, cmgOperation5 in cmgOperation3, position3, text5, iterator do
        serverEventCall = TriggerServerEvent
        text8 = "bfb85eb237"
        tableHelper = cmgOperation5
        text = "open"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bfb85eb237".
        serverEventCall(text8, tableHelper, text)
      end
    end
  end
  ::continueAtStep88::
end
number3 = Citizen
number3 = number3.CreateThread

-- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
function number4()
  local localValue1, localValue2, cmgOperation3, position3, text5, iterator, cmgOperation4, cmgOperation5, serverEventCall, text8, tableHelper, text, position, position2, stateFlag, stateFlag2, stateFlag3, stateFlag4, workingValue2, workingValue3, stateFlag5, stateFlag6, stateFlag7, number, stateFlag8
  localValue1 = pairs
  localValue2 = dataCollection
  localValue1, localValue2, cmgOperation3, position3 = localValue1(localValue2)
  for text5, iterator in localValue1, localValue2, cmgOperation3, position3 do
    cmgOperation4 = CMG
    cmgOperation4 = cmgOperation4.loadModel
    cmgOperation5 = iterator.prop
    cmgOperation4 = cmgOperation4(cmgOperation5)
    if not cmgOperation4 then
      return
    end
    cmgOperation5 = CMG
    cmgOperation5 = cmgOperation5.loadModel
    serverEventCall = iterator.prop_frame
    cmgOperation5 = cmgOperation5(serverEventCall)
    serverEventCall = CMG
    serverEventCall = serverEventCall.loadModel
    text8 = iterator.prop_controller
    serverEventCall = serverEventCall(text8)
    text8 = CreateObjectNoOffset
    tableHelper = cmgOperation4
    text = iterator.position
    text = text.x
    position = iterator.position
    position = position.y
    position2 = iterator.position
    position2 = position2.z
    position2 = position2 - 1
    stateFlag = false
    stateFlag2 = false
    stateFlag3 = true
    -- Beginner: result below is objectEntity.
    text8 = text8(tableHelper, text, position, position2, stateFlag, stateFlag2, stateFlag3)
    tableHelper = table
    tableHelper = tableHelper.insert
    text = dataCollection
    text = text[text5]
    text = text.propObjHandlers
    position = text8
    tableHelper(text, position)
    tableHelper = CreateObjectNoOffset
    text = cmgOperation4
    position = iterator.position
    position = position.x
    position2 = iterator.position
    position2 = position2.y
    stateFlag = iterator.position
    stateFlag = stateFlag.z
    stateFlag = stateFlag - 1
    stateFlag2 = false
    stateFlag3 = false
    stateFlag4 = true
    -- Beginner: result below is objectEntity.
    tableHelper = tableHelper(text, position, position2, stateFlag, stateFlag2, stateFlag3, stateFlag4)
    text = table
    text = text.insert
    position = dataCollection
    position = position[text5]
    position = position.propObjHandlers
    position2 = tableHelper
    text(position, position2)
    text = pairs
    position = dataCollection
    position = position[text5]
    position = position.propObjHandlers
    text, position, position2, stateFlag = text(position)
    for stateFlag2, stateFlag3 in text, position, position2, stateFlag do
      stateFlag4 = SetEntityHeading
      workingValue2 = stateFlag3
      workingValue3 = dataCollection
      workingValue3 = workingValue3[text5]
      workingValue3 = workingValue3.rotation
      -- Beginner: Change the direction an entity is facing.
      stateFlag4(workingValue2, workingValue3)
      stateFlag4 = SetEntityInvincible
      workingValue2 = stateFlag3
      workingValue3 = true
      stateFlag4(workingValue2, workingValue3)
      stateFlag4 = FreezeEntityPosition
      workingValue2 = stateFlag3
      workingValue3 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      stateFlag4(workingValue2, workingValue3)
      stateFlag4 = dataCollection
      stateFlag4 = stateFlag4[text5]
      stateFlag4 = stateFlag4.gateRotation
      if nil ~= stateFlag4 then
        workingValue2 = SetEntityRotation
        workingValue3 = stateFlag3
        stateFlag5 = stateFlag4.x
        stateFlag6 = stateFlag4.y
        stateFlag7 = stateFlag4.z
        number = 2
        stateFlag8 = false
        workingValue2(workingValue3, stateFlag5, stateFlag6, stateFlag7, number, stateFlag8)
      end
    end
    text = CreateObjectNoOffset
    position = cmgOperation5
    position2 = iterator.position
    position2 = position2.x
    stateFlag = iterator.position
    stateFlag = stateFlag.y
    stateFlag2 = iterator.position
    stateFlag2 = stateFlag2.z
    stateFlag2 = stateFlag2 - 1.0
    stateFlag3 = false
    stateFlag4 = true
    workingValue2 = false
    -- Beginner: result below is objectEntity.
    text = text(position, position2, stateFlag, stateFlag2, stateFlag3, stateFlag4, workingValue2)
    position = dataCollection
    position = position[text5]
    position.propFrameObjHandler = text
    position = SetEntityHeading
    position2 = dataCollection
    position2 = position2[text5]
    position2 = position2.propFrameObjHandler
    stateFlag = dataCollection
    stateFlag = stateFlag[text5]
    stateFlag = stateFlag.rotation
    -- Beginner: Change the direction an entity is facing.
    position(position2, stateFlag)
    position = SetEntityInvincible
    position2 = dataCollection
    position2 = position2[text5]
    position2 = position2.propFrameObjHandler
    stateFlag = true
    position(position2, stateFlag)
    position = FreezeEntityPosition
    position2 = dataCollection
    position2 = position2[text5]
    position2 = position2.propFrameObjHandler
    stateFlag = true
    -- Beginner: Freeze or unfreeze an entity in place.
    position(position2, stateFlag)
    position = dataCollection
    position = position[text5]
    position = position.gateRotation
    if nil ~= position then
      position2 = SetEntityRotation
      stateFlag = dataCollection
      stateFlag = stateFlag[text5]
      stateFlag = stateFlag.propFrameObjHandler
      stateFlag2 = position.x
      stateFlag3 = position.y
      stateFlag4 = position.z
      workingValue2 = 2
      workingValue3 = false
      position2(stateFlag, stateFlag2, stateFlag3, stateFlag4, workingValue2, workingValue3)
    end
    position2 = CreateObjectNoOffset
    stateFlag = serverEventCall
    stateFlag2 = iterator.controllerPos
    stateFlag2 = stateFlag2.x
    stateFlag3 = iterator.controllerPos
    stateFlag3 = stateFlag3.y
    stateFlag4 = iterator.controllerPos
    stateFlag4 = stateFlag4.z
    stateFlag4 = stateFlag4 - 1
    workingValue2 = false
    workingValue3 = false
    stateFlag5 = true
    -- Beginner: result below is objectEntity.
    position2 = position2(stateFlag, stateFlag2, stateFlag3, stateFlag4, workingValue2, workingValue3, stateFlag5)
    stateFlag = dataCollection
    stateFlag = stateFlag[text5]
    stateFlag.propControllerHandler = position2
    stateFlag = SetEntityHeading
    stateFlag2 = position2
    stateFlag3 = dataCollection
    stateFlag3 = stateFlag3[text5]
    stateFlag3 = stateFlag3.controllerRotation
    -- Beginner: Change the direction an entity is facing.
    stateFlag(stateFlag2, stateFlag3)
    stateFlag = SetEntityInvincible
    stateFlag2 = position2
    stateFlag3 = true
    stateFlag(stateFlag2, stateFlag3)
    stateFlag = FreezeEntityPosition
    stateFlag2 = position2
    stateFlag3 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    stateFlag(stateFlag2, stateFlag3)
    stateFlag = SetModelAsNoLongerNeeded
    stateFlag2 = cmgOperation4
    stateFlag(stateFlag2)
    stateFlag = SetModelAsNoLongerNeeded
    stateFlag2 = cmgOperation5
    stateFlag(stateFlag2)
    stateFlag = SetModelAsNoLongerNeeded
    stateFlag2 = serverEventCall
    stateFlag(stateFlag2)
  end
  localValue1 = pairs
  localValue2 = dataCollection2
  localValue1, localValue2, cmgOperation3, position3 = localValue1(localValue2)
  for text5, iterator in localValue1, localValue2, cmgOperation3, position3 do
    cmgOperation4 = CreateObjectNoOffset
    cmgOperation5 = -257022130
    serverEventCall = iterator.position
    serverEventCall = serverEventCall.x
    text8 = iterator.position
    text8 = text8.y
    tableHelper = iterator.position
    tableHelper = tableHelper.z
    tableHelper = tableHelper - 1.0
    text = false
    position = false
    position2 = true
    -- Beginner: result below is objectEntity.
    cmgOperation4 = cmgOperation4(cmgOperation5, serverEventCall, text8, tableHelper, text, position, position2)
    cmgOperation5 = SetEntityHeading
    serverEventCall = cmgOperation4
    text8 = iterator.position
    text8 = text8.w
    -- Beginner: Change the direction an entity is facing.
    cmgOperation5(serverEventCall, text8)
    cmgOperation5 = table
    cmgOperation5 = cmgOperation5.insert
    serverEventCall = createVector3
    text8 = cmgOperation4
    cmgOperation5(serverEventCall, text8)
    cmgOperation5 = CMG
    cmgOperation5 = cmgOperation5.createArea
    serverEventCall = "bordercloseall_"
    text8 = tostring
    tableHelper = text5
    text8 = text8(tableHelper)
    serverEventCall = serverEventCall .. text8
    text8 = iterator.position
    text8 = text8.xyz
    tableHelper = 1.5
    text = 6.0

    -- === HELPER FUNCTION: position() ===
    function position()
      local localValue12, cmgOperation2
    end

    -- === HELPER FUNCTION: position2() ===
    function position2()
      local localValue12, cmgOperation2
    end
    stateFlag = number2
    stateFlag2 = iterator
    -- Beginner: Create an interaction area around a world position.
    cmgOperation5(serverEventCall, text8, tableHelper, text, position, position2, stateFlag, stateFlag2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
number3(number4)
number3 = 10000

-- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
function number4()
  local localValue1, localValue2, cmgOperation3, position3, text5, iterator, cmgOperation4, cmgOperation5, serverEventCall, text8, tableHelper, text, position, position2, stateFlag, stateFlag2, stateFlag3, stateFlag4, workingValue2, workingValue3, stateFlag5, stateFlag6, stateFlag7
  localValue1 = pairs
  localValue2 = dataCollection
  localValue1, localValue2, cmgOperation3, position3 = localValue1(localValue2)
  for text5, iterator in localValue1, localValue2, cmgOperation3, position3 do
    cmgOperation4 = iterator.instruction
    if "open" == cmgOperation4 then
      cmgOperation4 = pairs
      cmgOperation5 = dataCollection
      cmgOperation5 = cmgOperation5[text5]
      cmgOperation5 = cmgOperation5.propObjHandlers
      cmgOperation4, cmgOperation5, serverEventCall, text8 = cmgOperation4(cmgOperation5)
      for tableHelper, text in cmgOperation4, cmgOperation5, serverEventCall, text8 do
        position = GetEntityCoords
        position2 = text
        -- Beginner: result below is entityCoords.
        position = position(position2)
        position2 = GetOffsetFromEntityInWorldCoords
        stateFlag = dataCollection
        stateFlag = stateFlag[text5]
        stateFlag = stateFlag.propFrameObjHandler
        stateFlag2 = tableHelper * 5.0
        stateFlag3 = 0.0
        stateFlag4 = 0.0
        position2 = position2(stateFlag, stateFlag2, stateFlag3, stateFlag4)
        stateFlag = position.xy
        stateFlag2 = iterator.position
        stateFlag2 = stateFlag2.xy
        stateFlag = stateFlag - stateFlag2
        stateFlag = #stateFlag
        stateFlag2 = 0.1
        if stateFlag < stateFlag2 then
          stateFlag = dataCollection
          stateFlag = stateFlag[text5]
          stateFlag.instruction = "none"
        end
        stateFlag = number3
        stateFlag2 = GetFrameTime
        stateFlag2 = stateFlag2()
        stateFlag = stateFlag * stateFlag2
        stateFlag2 = SetEntityCoordsNoOffset
        stateFlag3 = text
        stateFlag4 = position.x
        workingValue2 = iterator.position
        workingValue2 = workingValue2.x
        workingValue3 = position2.x
        workingValue2 = workingValue2 - workingValue3
        workingValue2 = workingValue2 / stateFlag
        stateFlag4 = stateFlag4 + workingValue2
        workingValue2 = position.y
        workingValue3 = iterator.position
        workingValue3 = workingValue3.y
        stateFlag5 = position2.y
        workingValue3 = workingValue3 - stateFlag5
        workingValue3 = workingValue3 / stateFlag
        workingValue2 = workingValue2 + workingValue3
        workingValue3 = position.z
        stateFlag5 = false
        stateFlag6 = false
        stateFlag7 = false
        -- Beginner: Move/teleport an entity to new coordinates.
        stateFlag2(stateFlag3, stateFlag4, workingValue2, workingValue3, stateFlag5, stateFlag6, stateFlag7)
      end
    end
    cmgOperation4 = iterator.instruction
    if "close" == cmgOperation4 then
      cmgOperation4 = pairs
      cmgOperation5 = dataCollection
      cmgOperation5 = cmgOperation5[text5]
      cmgOperation5 = cmgOperation5.propObjHandlers
      cmgOperation4, cmgOperation5, serverEventCall, text8 = cmgOperation4(cmgOperation5)
      for tableHelper, text in cmgOperation4, cmgOperation5, serverEventCall, text8 do
        position = GetEntityCoords
        position2 = text
        -- Beginner: result below is entityCoords.
        position = position(position2)
        position2 = GetOffsetFromEntityInWorldCoords
        stateFlag = dataCollection
        stateFlag = stateFlag[text5]
        stateFlag = stateFlag.propFrameObjHandler
        stateFlag2 = tableHelper * 5.0
        stateFlag3 = 0.0
        stateFlag4 = 0.0
        position2 = position2(stateFlag, stateFlag2, stateFlag3, stateFlag4)
        stateFlag = position - position2
        stateFlag = #stateFlag
        stateFlag2 = 0.1
        if stateFlag < stateFlag2 then
          stateFlag = dataCollection
          stateFlag = stateFlag[text5]
          stateFlag.instruction = "none"
        end
        stateFlag = number3
        stateFlag2 = GetFrameTime
        stateFlag2 = stateFlag2()
        stateFlag = stateFlag * stateFlag2
        stateFlag2 = SetEntityCoordsNoOffset
        stateFlag3 = text
        stateFlag4 = position.x
        workingValue2 = position2.x
        workingValue3 = iterator.position
        workingValue3 = workingValue3.x
        workingValue2 = workingValue2 - workingValue3
        workingValue2 = workingValue2 / stateFlag
        stateFlag4 = stateFlag4 + workingValue2
        workingValue2 = position.y
        workingValue3 = position2.y
        stateFlag5 = iterator.position
        stateFlag5 = stateFlag5.y
        workingValue3 = workingValue3 - stateFlag5
        workingValue3 = workingValue3 / stateFlag
        workingValue2 = workingValue2 + workingValue3
        workingValue3 = position.z
        stateFlag5 = false
        stateFlag6 = false
        stateFlag7 = false
        stateFlag2(stateFlag3, stateFlag4, workingValue2, workingValue3, stateFlag5, stateFlag6, stateFlag7)
      end
    end
  end
end
number5 = CMG
number5 = number5.createThreadOnTick
number6 = number4
stateFlag9 = "Border Force"
-- Beginner: Run a helper every game frame while this script is active.
number5(number6, stateFlag9)
number5 = AddEventHandler
number6 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: localValue1, localValue2) ===
function stateFlag9(localValue1, localValue2)
  local cmgOperation3, position3, text5, iterator, cmgOperation4, cmgOperation5, serverEventCall, text8, tableHelper, text, position, position2, stateFlag, stateFlag2, stateFlag3, stateFlag4, workingValue2, workingValue3
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
    function cmgOperation3()
      local localValue12, cmgOperation2
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION: position3() ===
    function position3()
      local localValue12, cmgOperation2
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: text5; parameters: localValue12) ===
    function text5(localValue12)
      local cmgOperation2, text3, text4, text6, text7
      cmgOperation2 = CMG
      cmgOperation2 = cmgOperation2.hasClientPermission
      text3 = "borderforce.onduty.permission"
      cmgOperation2 = cmgOperation2(text3)
      if not cmgOperation2 then
        cmgOperation2 = CMG
        cmgOperation2 = cmgOperation2.isStaffedOnClient
        cmgOperation2 = cmgOperation2()
        if not cmgOperation2 then
          goto continueAtStep65
        end
      end
      cmgOperation2 = localValue12.objectId
      text3 = dataCollection
      text3 = text3[cmgOperation2]
      text3 = text3.open
      if text3 then
        text3 = IsControlJustPressed
        text4 = 0
        text6 = 38
        text3 = text3(text4, text6)
        if text3 then
          text3 = tCMG
          text3 = text3.notify
          text4 = "~g~Gate closing..."
          -- Beginner: Show a notification to the player.
          text3(text4)
          text3 = TriggerServerEvent
          text4 = "bfb85eb237"
          text6 = cmgOperation2
          text7 = "close"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bfb85eb237".
          text3(text4, text6, text7)
        end
        text3 = CMG
        text3 = text3.DrawText3D
        text4 = dataCollection
        text4 = text4[cmgOperation2]
        text4 = text4.controllerPos
        text6 = "Press [E] to close gate"
        text7 = 0.35
        text3(text4, text6, text7)
      else
        text3 = CMG
        text3 = text3.DrawText3D
        text4 = dataCollection
        text4 = text4[cmgOperation2]
        text4 = text4.controllerPos
        text6 = "Press [E] to open gate"
        text7 = 0.35
        text3(text4, text6, text7)
        text3 = IsControlJustPressed
        text4 = 0
        text6 = 38
        text3 = text3(text4, text6)
        if text3 then
          text3 = tCMG
          text3 = text3.notify
          text4 = "~g~Gate opening..."
          -- Beginner: Show a notification to the player.
          text3(text4)
          text3 = TriggerServerEvent
          text4 = "bfb85eb237"
          text6 = cmgOperation2
          text7 = "open"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bfb85eb237".
          text3(text4, text6, text7)
        end
      end
      ::continueAtStep65::
    end
    iterator = pairs
    cmgOperation4 = dataCollection
    iterator, cmgOperation4, cmgOperation5, serverEventCall = iterator(cmgOperation4)
    for text8, tableHelper in iterator, cmgOperation4, cmgOperation5, serverEventCall do
      text = CMG
      text = text.createArea
      position = "border_"
      position2 = text8
      position = position .. position2
      position2 = tableHelper.controllerPos
      stateFlag = 1.5
      stateFlag2 = 6
      stateFlag3 = cmgOperation3
      stateFlag4 = position3
      workingValue2 = text5
      workingValue3 = {}
      workingValue3.objectId = text8
      -- Beginner: Create an interaction area around a world position.
      text(position, position2, stateFlag, stateFlag2, stateFlag3, stateFlag4, workingValue2, workingValue3)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
number5(number6, stateFlag9)
number5 = AddEventHandler
number6 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: localValue1) ===
function stateFlag9(localValue1)
  local localValue2, cmgOperation3, position3, text5, iterator, cmgOperation4, cmgOperation5, serverEventCall, text8, tableHelper, text, position, position2
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = pairs
    cmgOperation3 = dataCollection
    localValue2, cmgOperation3, position3, text5 = localValue2(cmgOperation3)
    for iterator in localValue2, cmgOperation3, position3, text5 do
      cmgOperation4 = pairs
      cmgOperation5 = dataCollection
      cmgOperation5 = cmgOperation5[iterator]
      cmgOperation5 = cmgOperation5.propObjHandlers
      cmgOperation4, cmgOperation5, serverEventCall, text8 = cmgOperation4(cmgOperation5)
      for tableHelper, text in cmgOperation4, cmgOperation5, serverEventCall, text8 do
        position = DeleteObject
        position2 = text
        position(position2)
      end
      cmgOperation4 = DeleteObject
      cmgOperation5 = dataCollection
      cmgOperation5 = cmgOperation5[iterator]
      cmgOperation5 = cmgOperation5.propFrameObjHandler
      cmgOperation4(cmgOperation5)
      cmgOperation4 = DeleteObject
      cmgOperation5 = dataCollection
      cmgOperation5 = cmgOperation5[iterator]
      cmgOperation5 = cmgOperation5.propControllerHandler
      cmgOperation4(cmgOperation5)
    end
    localValue2 = pairs
    cmgOperation3 = createVector3
    localValue2, cmgOperation3, position3, text5 = localValue2(cmgOperation3)
    for iterator, cmgOperation4 in localValue2, cmgOperation3, position3, text5 do
      cmgOperation5 = DeleteEntity
      serverEventCall = cmgOperation4
      -- Beginner: Delete a GTA entity.
      cmgOperation5(serverEventCall)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
number5(number6, stateFlag9)
number5 = RegisterNetEvent
number6 = "03e141ef40"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "03e141ef40".
number5(number6)
number5 = AddEventHandler
number6 = "03e141ef40"
-- Beginner: this function runs when client event "03e141ef40" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: localValue1, localValue2) ===
function stateFlag9(localValue1, localValue2)
  local cmgOperation3
  cmgOperation3 = dataCollection
  cmgOperation3 = cmgOperation3[localValue1]
  cmgOperation3.instruction = localValue2
  if "open" == localValue2 then
    cmgOperation3 = dataCollection
    cmgOperation3 = cmgOperation3[localValue1]
    cmgOperation3.open = true
  elseif "close" == localValue2 then
    cmgOperation3 = dataCollection
    cmgOperation3 = cmgOperation3[localValue1]
    cmgOperation3.open = false
  end
end
-- Beginner: Register a client-side event handler. Event/command: "03e141ef40".
number5(number6, stateFlag9)
number5 = RegisterNetEvent
number6 = "46592aad2d"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "46592aad2d".
number5(number6)
number5 = AddEventHandler
number6 = "46592aad2d"
-- Beginner: this function runs when client event "46592aad2d" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: localValue1) ===
function stateFlag9(localValue1)
  local localValue2, cmgOperation3, position3, text5, iterator, cmgOperation4, cmgOperation5
  localValue2 = pairs
  cmgOperation3 = localValue1
  localValue2, cmgOperation3, position3, text5 = localValue2(cmgOperation3)
  for iterator, cmgOperation4 in localValue2, cmgOperation3, position3, text5 do
    cmgOperation5 = cmgOperation4.open
    if cmgOperation5 then
      cmgOperation5 = dataCollection
      cmgOperation5 = cmgOperation5[iterator]
      cmgOperation5 = cmgOperation5.open
      if not cmgOperation5 then
        cmgOperation5 = dataCollection
        cmgOperation5 = cmgOperation5[iterator]
        cmgOperation5.instruction = "open"
        cmgOperation5 = dataCollection
        cmgOperation5 = cmgOperation5[iterator]
        cmgOperation5.open = true
      end
    end
    cmgOperation5 = cmgOperation4.open
    if not cmgOperation5 then
      cmgOperation5 = dataCollection
      cmgOperation5 = cmgOperation5[iterator]
      cmgOperation5 = cmgOperation5.open
      if not cmgOperation5 then
        cmgOperation5 = dataCollection
        cmgOperation5 = cmgOperation5[iterator]
        cmgOperation5.instruction = "close"
        cmgOperation5 = dataCollection
        cmgOperation5 = cmgOperation5[iterator]
        cmgOperation5.open = false
      end
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "46592aad2d".
number5(number6, stateFlag9)
number5 = AddEventHandler
number6 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: localValue1, localValue2) ===
function stateFlag9(localValue1, localValue2)
  local cmgOperation3, position3
  if localValue2 then
    cmgOperation3 = TriggerServerEvent
    position3 = "923b558511"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "923b558511".
    cmgOperation3(position3)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
number5(number6, stateFlag9)
number5 = RegisterNetEvent
number6 = "9da3977b15"
-- Beginner: this function handles network event "9da3977b15".

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: none) ===
function stateFlag9()
  local localValue1, localValue2, cmgOperation3, position3, text5, iterator, cmgOperation4, cmgOperation5, serverEventCall, text8, tableHelper, text, position
  localValue1 = nil
  localValue2 = 75.0
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  cmgOperation3 = cmgOperation3()
  position3 = pairs
  text5 = dataCollection2
  position3, text5, iterator, cmgOperation4 = position3(text5)
  for cmgOperation5, serverEventCall in position3, text5, iterator, cmgOperation4 do
    text8 = serverEventCall.position
    text8 = text8.xyz
    text8 = cmgOperation3 - text8
    text8 = #text8
    if localValue2 > text8 then
      localValue1 = serverEventCall
      localValue2 = text8
    end
  end
  if localValue1 then
    position3 = TriggerServerEvent
    text5 = "d95fd9b2cd"
    iterator = localValue1.name
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d95fd9b2cd".
    position3(text5, iterator)
    position3 = pairs
    text5 = localValue1.opens
    position3, text5, iterator, cmgOperation4 = position3(text5)
    for cmgOperation5, serverEventCall in position3, text5, iterator, cmgOperation4 do
      text8 = TriggerServerEvent
      tableHelper = "bfb85eb237"
      text = serverEventCall
      position = "close"
      text8(tableHelper, text, position)
    end
  else
    position3 = notify
    text5 = "~r~No nearby border to lockdown"
    -- Beginner: Show a notification to the player.
    position3(text5)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9da3977b15".
number5(number6, stateFlag9)
number5 = RegisterNetEvent
number6 = "d95fd9b2cd"
-- Beginner: this function handles network event "d95fd9b2cd".

-- === HELPER FUNCTION (decompiler name: stateFlag9; parameters: localValue1) ===
function stateFlag9(localValue1)
  local localValue2, cmgOperation3, position3, text5, iterator, cmgOperation4, cmgOperation5, serverEventCall
  localValue2 = CMG
  localValue2 = localValue2.notifyPicture
  cmgOperation3 = "polnotification"
  position3 = "notification"
  text5 = "~r~Lockdown triggered at the "
  iterator = localValue1
  cmgOperation4 = " border!"
  text5 = text5 .. iterator .. cmgOperation4
  iterator = "Border Force"
  cmgOperation4 = localValue1
  cmgOperation5 = nil
  serverEventCall = nil
  localValue2(cmgOperation3, position3, text5, iterator, cmgOperation4, cmgOperation5, serverEventCall)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d95fd9b2cd".
number5(number6, stateFlag9)
number5 = ""
number6 = ""
stateFlag9 = false
cmgOperation6 = RegisterNetEvent
cmgOperation = "5e416b2e9c"
-- Beginner: this function handles network event "5e416b2e9c".

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1, localValue2) ===
function workingValue(localValue1, localValue2)
  local cmgOperation3
  number5 = localValue2
  number6 = localValue1
  cmgOperation3 = true
  stateFlag9 = cmgOperation3
end
cmgOperation6(cmgOperation, workingValue)
cmgOperation6 = CMG
-- Beginner: this function handles network event "5e416b2e9c".

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
function cmgOperation()
  local localValue1, localValue2
  localValue1 = number6
  return localValue1
end
cmgOperation6.getBorderForceCallsign = cmgOperation
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
function cmgOperation()
  local localValue1, localValue2
  localValue1 = number5
  return localValue1
end
cmgOperation6.getBorderForceRank = cmgOperation
cmgOperation6 = CMG

-- === HELPER FUNCTION (decompiler name: cmgOperation; parameters: none) ===
function cmgOperation()
  local localValue1, localValue2
  localValue1 = stateFlag9
  return localValue1
end
cmgOperation6.hasBorderForceCallsign = cmgOperation

-- === HELPER FUNCTION (decompiler name: cmgOperation6; parameters: none) ===
function cmgOperation6()
  local localValue1, localValue2, cmgOperation3, position3, text5, iterator, cmgOperation4, cmgOperation5, serverEventCall, text8, tableHelper, text, position
  localValue1 = number6
  if "" ~= localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.hasClientPermission
    localValue2 = "borderforce.onduty.permission"
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = DrawAdvancedText
      localValue2 = 1.064
      cmgOperation3 = 0.972
      position3 = 0.005
      text5 = 0.0028
      iterator = 0.4
      cmgOperation4 = number6
      cmgOperation5 = 255
      serverEventCall = 255
      text8 = 255
      tableHelper = 255
      text = 0
      position = 0
      localValue1(localValue2, cmgOperation3, position3, text5, iterator, cmgOperation4, cmgOperation5, serverEventCall, text8, tableHelper, text, position)
    end
  end
end
cmgOperation = CMG
cmgOperation = cmgOperation.createThreadOnTick
workingValue = cmgOperation6
text2 = "Border Force Callsign"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation(workingValue, text2)
