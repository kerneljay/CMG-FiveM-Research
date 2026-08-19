--[[
    LEVEL 1 BEGINNER GUIDE — Royalmail
    =======================================

    File: cmg/prod/client/jobs/cl_royalmail.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: civilian/job gameplay, specifically the Royalmail feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 25
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
local cmgOperation, dataCollection2, createVector3, cmgOperation2, text6, text9, rageUiOperation3, cmgOperation4, rageUiOperation5, rageUiOperation6, rageUiOperation, rageUiOperation2, text, text2
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
dataCollection2 = "cfg/homes"
-- Beginner: result below is config.
cmgOperation = cmgOperation(dataCollection2)
dataCollection2 = {}
dataCollection2.onJob = false
createVector3 = vector3
cmgOperation2 = -17.703647613525
text6 = -696.84149169922
text9 = 32.344856262207
createVector3 = createVector3(cmgOperation2, text6, text9)
dataCollection2.spawnVehicleVector = createVector3
createVector3 = vector3
cmgOperation2 = -19.447393417358
text6 = -705.32580566406
text9 = 32.338104248046
createVector3 = createVector3(cmgOperation2, text6, text9)
dataCollection2.startVector = createVector3
dataCollection2.tempMarker = 0
dataCollection2.tempBlip = 0
dataCollection2.tempVehicle = 0
dataCollection2.tempObject = 0
dataCollection2.cashEarned = 0
dataCollection2.stopNumber = 0
createVector3 = 15
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.registerHudTimerBarProvider
text6 = "royalMailJob"

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1) ===
function text9(localValue1)
  local localValue2, text3, text5, text7, number6
  localValue2 = dataCollection2.onJob
  if not localValue2 then
    return
  end
  localValue2 = localValue1.push
  text3 = "~g~EARNED:"
  text5 = "\194\163"
  text7 = getMoneyStringFormatted
  number6 = dataCollection2.cashEarned
  text7 = text7(number6)
  text5 = text5 .. text7
  localValue2(text3, text5)
  localValue2 = localValue1.push
  text3 = "PACKAGES:"
  text5 = dataCollection2.stopNumber
  text7 = "/"
  number6 = createVector3
  text5 = text5 .. text7 .. number6
  localValue2(text3, text5)
end
cmgOperation2(text6, text9)
cmgOperation2 = RegisterNetEvent
text6 = "206b328a55"
-- Beginner: this function handles network event "206b328a55".

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2, text3, text5, text7, number6, stateFlag10, stateFlag11, stateFlag12
  localValue1 = CMG
  localValue1 = localValue1.requestEntitySpawn
  localValue2 = "royalmail"
  localValue1(localValue2)
  localValue1 = CMG
  localValue1 = localValue1.spawnVehicle
  localValue2 = "boxville2"
  text3 = dataCollection2.spawnVehicleVector
  text3 = text3.x
  text5 = dataCollection2.spawnVehicleVector
  text5 = text5.y
  text7 = dataCollection2.spawnVehicleVector
  text7 = text7.z
  number6 = 343
  stateFlag10 = true
  stateFlag11 = true
  stateFlag12 = true
  localValue1 = localValue1(localValue2, text3, text5, text7, number6, stateFlag10, stateFlag11, stateFlag12)
  dataCollection2.tempVehicle = localValue1
  dataCollection2.onJob = true
  localValue1 = CMG
  localValue1 = localValue1.setHudTimerBarProviderActive
  localValue2 = "royalMailJob"
  text3 = true
  localValue1(localValue2, text3)
  localValue1 = tCMG
  localValue1 = localValue1.notify
  localValue2 = "~g~Postal Service Job started, exit the car park on your left and head to your first drop off point."
  -- Beginner: Show a notification to the player.
  localValue1(localValue2)
  while true do
    localValue1 = dataCollection2.onJob
    if not localValue1 then
      break
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
  localValue1 = CMG
  localValue1 = localValue1.setHudTimerBarProviderActive
  localValue2 = "royalMailJob"
  text3 = false
  localValue1(localValue2, text3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "206b328a55".
cmgOperation2(text6, text9)
cmgOperation2 = RegisterNetEvent
text6 = "4c5794cec0"
-- Beginner: this function handles network event "4c5794cec0".

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2, text3, text5
  localValue1 = tCMG
  localValue1 = localValue1.notify
  localValue2 = "~g~Shift complete."
  -- Beginner: Show a notification to the player.
  localValue1(localValue2)
  localValue1 = DeleteVehicle
  localValue2 = GetVehiclePedIsIn
  text3 = CMG
  text3 = text3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  text3 = text3()
  text5 = false
  localValue2, text3, text5 = localValue2(text3, text5)
  localValue1(localValue2, text3, text5)
  localValue1 = DeleteVehicle
  localValue2 = dataCollection2.tempVehicle
  localValue1(localValue2)
  dataCollection2.onJob = false
  dataCollection2.tempMarker = 0
  dataCollection2.tempBlip = 0
  dataCollection2.tempVehicle = 0
  dataCollection2.tempObject = 0
  dataCollection2.cashEarned = 0
  dataCollection2.stopNumber = 0
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4c5794cec0".
cmgOperation2(text6, text9)
cmgOperation2 = RegisterNetEvent
text6 = "6d6033a0ac"
-- Beginner: this function handles network event "6d6033a0ac".

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1, localValue2) ===
function text9(localValue1, localValue2)
  local text3, text5, text7, number6, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag, stateFlag3
  text3 = dataCollection2.tempVehicle
  text5 = dataCollection2.stopNumber
  text5 = text5 + 1
  dataCollection2.stopNumber = text5
  if localValue2 then
    text5 = dataCollection2.cashEarned
    text5 = text5 + localValue2
    dataCollection2.cashEarned = text5
  end
  text5 = Citizen
  text5 = text5.CreateThread

  -- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
  function text7()
    local localValue12, localValue22, stateFlag7, stateFlag8, stateFlag9
    while true do
      localValue12 = text3
      if 0 == localValue12 then
        break
      end
      localValue12 = SetVehicleEngineOn
      localValue22 = text3
      stateFlag7 = false
      stateFlag8 = true
      stateFlag9 = false
      localValue12(localValue22, stateFlag7, stateFlag8, stateFlag9)
      localValue12 = Wait
      localValue22 = 0
      localValue12(localValue22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  text5(text7)
  text5 = dataCollection2.tempMarker
  if text5 then
    text5 = tCMG
    text5 = text5.removeMarker
    text7 = dataCollection2.tempMarker
    text5(text7)
  end
  text5 = SetVehicleDoorOpen
  text7 = text3
  number6 = 2
  stateFlag10 = false
  stateFlag11 = false
  text5(text7, number6, stateFlag10, stateFlag11)
  text5 = SetVehicleDoorOpen
  text7 = text3
  number6 = 3
  stateFlag10 = false
  stateFlag11 = false
  text5(text7, number6, stateFlag10, stateFlag11)
  text5 = DoesEntityExist
  text7 = dataCollection2.tempObject
  text5 = text5(text7)
  if text5 then
    text5 = DeleteObject
    text7 = dataCollection2.tempObject
    text5(text7)
  end
  text5 = CMG
  text5 = text5.loadModel
  text7 = "prop_drug_package"
  text5 = text5(text7)
  text7 = CreateObject
  number6 = text5
  stateFlag10 = localValue1.x
  stateFlag11 = localValue1.y
  stateFlag12 = localValue1.z
  stateFlag13 = false
  stateFlag = false
  stateFlag3 = true
  -- Beginner: result below is objectEntity.
  text7 = text7(number6, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag, stateFlag3)
  dataCollection2.tempObject = text7
  text7 = PlaceObjectOnGroundProperly
  number6 = dataCollection2.tempObject
  text7(number6)
  text7 = SetModelAsNoLongerNeeded
  number6 = text5
  text7(number6)
  text7 = RemoveBlip
  number6 = dataCollection2.tempBlip
  text7(number6)
  text7 = SetTimeout
  number6 = 2500

  -- === HELPER FUNCTION (decompiler name: stateFlag10; parameters: none) ===
  function stateFlag10()
    local localValue12, localValue22, stateFlag7, stateFlag8
    localValue12 = SetVehicleDoorShut
    localValue22 = text3
    stateFlag7 = 2
    stateFlag8 = false
    localValue12(localValue22, stateFlag7, stateFlag8)
    localValue12 = SetVehicleDoorShut
    localValue22 = text3
    stateFlag7 = 3
    stateFlag8 = false
    localValue12(localValue22, stateFlag7, stateFlag8)
    localValue12 = 0
    text3 = localValue12
  end
  text7(number6, stateFlag10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6d6033a0ac".
cmgOperation2(text6, text9)
cmgOperation2 = RegisterNetEvent
text6 = "c179928962"
-- Beginner: this function handles network event "c179928962".

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1) ===
function text9(localValue1)
  local localValue2, text3, text5, text7, number6, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag, stateFlag3, number
  localValue2 = AddBlipForCoord
  text3 = localValue1.x
  text5 = localValue1.y
  text7 = localValue1.z
  -- Beginner: result below is blipHandle.
  localValue2 = localValue2(text3, text5, text7)
  dataCollection2.tempBlip = localValue2
  localValue2 = SetBlipSprite
  text3 = dataCollection2.tempBlip
  text5 = 1
  localValue2(text3, text5)
  localValue2 = SetBlipRoute
  text3 = dataCollection2.tempBlip
  text5 = true
  localValue2(text3, text5)
  localValue2 = tCMG
  localValue2 = localValue2.addMarker
  text3 = localValue1.x
  text5 = localValue1.y
  text7 = localValue1.z
  text7 = text7 - 1
  number6 = 2.0
  stateFlag10 = 2.0
  stateFlag11 = 1.0
  stateFlag12 = 200
  stateFlag13 = 20
  stateFlag = 0
  stateFlag3 = 50
  number = 50
  localValue2 = localValue2(text3, text5, text7, number6, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag, stateFlag3, number)
  dataCollection2.tempMarker = localValue2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c179928962".
cmgOperation2(text6, text9)
cmgOperation2 = AddEventHandler
text6 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: text9; parameters: localValue1, localValue2) ===
function text9(localValue1, localValue2)
  local text3, text5, text7, number6, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag, stateFlag3, number, dataCollection, number2, number3, number4, number5, stateFlag4, stateFlag5, stateFlag6
  if localValue2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
    function text3()
      local localValue12, localValue22
      localValue12 = drawNativeNotification
      localValue22 = "Press ~INPUT_PICKUP~ to start your Postal Service job"
      -- Beginner: Show a GTA-style notification/help prompt.
      localValue12(localValue22)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
    function text5()
      local localValue12, localValue22
    end

    -- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
    function text7()
      local localValue12, localValue22, stateFlag7
      localValue12 = IsControlJustReleased
      localValue22 = 1
      stateFlag7 = 38
      localValue12 = localValue12(localValue22, stateFlag7)
      if localValue12 then
        localValue12 = dataCollection2.onJob
        if not localValue12 then
          localValue12 = TriggerServerEvent
          localValue22 = "3afd3b06f0"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3afd3b06f0".
          localValue12(localValue22)
        end
      end
    end
    number6 = tCMG
    number6 = number6.addBlip
    stateFlag10 = dataCollection2.startVector
    stateFlag10 = stateFlag10.x
    stateFlag11 = dataCollection2.startVector
    stateFlag11 = stateFlag11.y
    stateFlag12 = dataCollection2.startVector
    stateFlag12 = stateFlag12.z
    stateFlag13 = 67
    stateFlag = 1
    stateFlag3 = "Postal Service Job"
    -- Beginner: Create a minimap blip.
    number6(stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag, stateFlag3)
    number6 = tCMG
    number6 = number6.addMarker
    stateFlag10 = dataCollection2.startVector
    stateFlag10 = stateFlag10.x
    stateFlag11 = dataCollection2.startVector
    stateFlag11 = stateFlag11.y
    stateFlag12 = dataCollection2.startVector
    stateFlag12 = stateFlag12.z
    stateFlag13 = 1.0
    stateFlag = 1.0
    stateFlag3 = 1.0
    number = 255
    dataCollection = 0
    number2 = 0
    number3 = 70
    number4 = 50
    number5 = 39
    stateFlag4 = false
    stateFlag5 = false
    stateFlag6 = true
    -- Beginner: Create a world marker.
    number6(stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag, stateFlag3, number, dataCollection, number2, number3, number4, number5, stateFlag4, stateFlag5, stateFlag6)
    number6 = CMG
    number6 = number6.createArea
    stateFlag10 = "royalmail"
    stateFlag11 = dataCollection2.startVector
    stateFlag12 = 1.5
    stateFlag13 = 6
    stateFlag = text3
    stateFlag3 = text5
    number = text7
    dataCollection = {}
    -- Beginner: Create an interaction area around a world position.
    number6(stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag, stateFlag3, number, dataCollection)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgOperation2(text6, text9)
cmgOperation2 = RMenu
cmgOperation2 = cmgOperation2.Add
text6 = "cmgmail"
text9 = "write"
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateMenu
cmgOperation4 = "CMG Mail Service"
rageUiOperation5 = "~b~CMG Mail Service"
rageUiOperation6 = CMG
rageUiOperation6 = rageUiOperation6.getRageUIMenuWidth
rageUiOperation6 = rageUiOperation6()
rageUiOperation = CMG
rageUiOperation = rageUiOperation.getRageUIMenuHeight
rageUiOperation, rageUiOperation2, text, text2 = rageUiOperation()
rageUiOperation3, cmgOperation4, rageUiOperation5, rageUiOperation6, rageUiOperation, rageUiOperation2, text, text2 = rageUiOperation3(cmgOperation4, rageUiOperation5, rageUiOperation6, rageUiOperation, rageUiOperation2, text, text2)
cmgOperation2(text6, text9, rageUiOperation3, cmgOperation4, rageUiOperation5, rageUiOperation6, rageUiOperation, rageUiOperation2, text, text2)
cmgOperation2 = RMenu
cmgOperation2 = cmgOperation2.Add
text6 = "cmgmail"
text9 = "address"
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateSubMenu
cmgOperation4 = RMenu
rageUiOperation5 = cmgOperation4
cmgOperation4 = cmgOperation4.Get
rageUiOperation6 = "cmgmail"
rageUiOperation = "write"
-- Beginner: result below is menu.
cmgOperation4 = cmgOperation4(rageUiOperation5, rageUiOperation6, rageUiOperation)
rageUiOperation5 = "CMG Mail Service"
rageUiOperation6 = "~b~CMG Mail Service"
rageUiOperation = CMG
rageUiOperation = rageUiOperation.getRageUIMenuWidth
rageUiOperation = rageUiOperation()
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuHeight
rageUiOperation2, text, text2 = rageUiOperation2()
rageUiOperation3, cmgOperation4, rageUiOperation5, rageUiOperation6, rageUiOperation, rageUiOperation2, text, text2 = rageUiOperation3(cmgOperation4, rageUiOperation5, rageUiOperation6, rageUiOperation, rageUiOperation2, text, text2)
cmgOperation2(text6, text9, rageUiOperation3, cmgOperation4, rageUiOperation5, rageUiOperation6, rageUiOperation, rageUiOperation2, text, text2)
cmgOperation2 = ""
text6 = ""
text9 = ""
rageUiOperation3 = ""

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, localValue2, text3, text5, text7, number6, stateFlag10, stateFlag11, stateFlag12, stateFlag13
  localValue1 = {}
  localValue2 = pairs
  text3 = cmgOperation.homes
  localValue2, text3, text5, text7 = localValue2(text3)
  for number6 in localValue2, text3, text5, text7 do
    stateFlag10 = rageUiOperation3
    if "" ~= stateFlag10 then
      stateFlag10 = string
      stateFlag10 = stateFlag10.match
      stateFlag11 = string
      stateFlag11 = stateFlag11.lower
      stateFlag12 = number6
      stateFlag11 = stateFlag11(stateFlag12)
      stateFlag12 = string
      stateFlag12 = stateFlag12.lower
      stateFlag13 = rageUiOperation3
      stateFlag12, stateFlag13 = stateFlag12(stateFlag13)
      stateFlag10 = stateFlag10(stateFlag11, stateFlag12, stateFlag13)
      if not stateFlag10 then
        goto continueAtStep28
      end
    end
    stateFlag10 = table
    stateFlag10 = stateFlag10.insert
    stateFlag11 = localValue1
    stateFlag12 = number6
    stateFlag10(stateFlag11, stateFlag12)
    ::continueAtStep28::
  end
  localValue2 = table
  localValue2 = localValue2.sort
  text3 = localValue1

  -- === HELPER FUNCTION (decompiler name: text5; parameters: localValue12, localValue22) ===
  function text5(localValue12, localValue22)
    local stateFlag7
    stateFlag7 = localValue12 < localValue22
    return stateFlag7
  end
  localValue2(text3, text5)
  return localValue1
end
rageUiOperation5 = RageUI
rageUiOperation5 = rageUiOperation5.CreateWhile
rageUiOperation6 = 1.0
rageUiOperation = RMenu
rageUiOperation2 = rageUiOperation
rageUiOperation = rageUiOperation.Get
text = "cmgmail"
text2 = "write"
-- Beginner: result below is menu.
rageUiOperation = rageUiOperation(rageUiOperation2, text, text2)
rageUiOperation2 = nil

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, text3, text5, text7, number6
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  text3 = localValue2
  localValue2 = localValue2.Get
  text5 = "cmgmail"
  text7 = "write"
  -- Beginner: result below is menu.
  localValue2 = localValue2(text3, text5, text7)
  text3 = true
  text5 = false
  text7 = true

  -- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
  function number6()
    local localValue12, localValue22, stateFlag7, stateFlag8, stateFlag9, workingValue3, rageUiOperation4, workingValue5, text11, dataCollection3
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "Signed by "
    stateFlag7 = text6
    localValue22 = localValue22 .. stateFlag7
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.Separator
    localValue22 = "Delivery Address is "
    stateFlag7 = text9
    localValue22 = localValue22 .. stateFlag7
    localValue12(localValue22)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "~y~Edit Message"
    stateFlag7 = cmgOperation2
    stateFlag8 = {}
    stateFlag8.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag9 = true

    -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue13, localValue23, localValue3) ===
    function workingValue3(localValue13, localValue23, localValue3)
      local cmgOperation3, text8, text10, workingValue4
      if localValue3 then
        cmgOperation3 = CMG
        cmgOperation3 = cmgOperation3.clientPrompt
        text8 = "Edit Message"
        text10 = ""

        -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue14) ===
        function workingValue4(localValue14)
          local workingValue2, text4
          workingValue2 = #localValue14
          if not (workingValue2 < 3) then
            workingValue2 = #localValue14
            text4 = 500
            if not (workingValue2 > text4) then
              goto continueAtStep12
            end
          end
          workingValue2 = notify
          text4 = "~r~The message must be between 3 and 500 characters."
          -- Beginner: Show a notification to the player.
          workingValue2(text4)
          goto continueAtStep13
          ::continueAtStep12::
          cmgOperation2 = localValue14
          ::continueAtStep13::
        end
        cmgOperation3(text8, text10, workingValue4)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, stateFlag7, stateFlag8, stateFlag9, workingValue3)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "~y~Edit Signature"
    stateFlag7 = cmgOperation2
    stateFlag8 = {}
    stateFlag8.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag9 = true

    -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue13, localValue23, localValue3) ===
    function workingValue3(localValue13, localValue23, localValue3)
      local cmgOperation3, text8, text10, workingValue4
      if localValue3 then
        cmgOperation3 = CMG
        cmgOperation3 = cmgOperation3.clientPrompt
        text8 = "Edit Signature"
        text10 = ""

        -- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue14) ===
        function workingValue4(localValue14)
          local workingValue2, text4
          workingValue2 = #localValue14
          if 0 == workingValue2 then
            workingValue2 = CMG
            workingValue2 = workingValue2.getPlayerName
            text4 = PlayerId
            -- Beginner: result below is localPlayerIndex.
            text4 = text4()
            workingValue2 = workingValue2(text4)
            text6 = workingValue2
          else
            workingValue2 = #localValue14
            if workingValue2 > 20 then
              workingValue2 = notify
              text4 = "~r~The signature must be between 1 and 20 characters."
              -- Beginner: Show a notification to the player.
              workingValue2(text4)
            else
              text6 = localValue14
            end
          end
        end
        cmgOperation3(text8, text10, workingValue4)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, stateFlag7, stateFlag8, stateFlag9, workingValue3)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "~y~Select Address"
    stateFlag7 = cmgOperation2
    stateFlag8 = {}
    stateFlag8.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag9 = true

    -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
    function workingValue3()
      local localValue13, localValue23
    end
    rageUiOperation4 = RMenu
    workingValue5 = rageUiOperation4
    rageUiOperation4 = rageUiOperation4.Get
    text11 = "cmgmail"
    dataCollection3 = "address"
    rageUiOperation4, workingValue5, text11, dataCollection3 = rageUiOperation4(workingValue5, text11, dataCollection3)
    localValue12(localValue22, stateFlag7, stateFlag8, stateFlag9, workingValue3, rageUiOperation4, workingValue5, text11, dataCollection3)
    localValue12 = RageUI
    localValue12 = localValue12.ButtonWithStyle
    localValue22 = "~g~Submit Letter"
    stateFlag7 = cmgOperation2
    stateFlag8 = {}
    stateFlag8.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag9 = true

    -- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue13, localValue23, localValue3) ===
    function workingValue3(localValue13, localValue23, localValue3)
      local cmgOperation3, text8, text10, workingValue4, workingValue6
      if localValue3 then
        cmgOperation3 = cmgOperation.homes
        text8 = text9
        cmgOperation3 = cmgOperation3[text8]
        if not cmgOperation3 then
          cmgOperation3 = notify
          text8 = "~r~You must select a house address to send to."
          -- Beginner: Show a notification to the player.
          cmgOperation3(text8)
        else
          cmgOperation3 = TriggerServerEvent
          text8 = "a9f5519239"
          text10 = cmgOperation2
          workingValue4 = text6
          workingValue6 = text9
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a9f5519239".
          cmgOperation3(text8, text10, workingValue4, workingValue6)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue22, stateFlag7, stateFlag8, stateFlag9, workingValue3)
  end
  localValue1(localValue2, text3, text5, text7, number6)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  text3 = localValue2
  localValue2 = localValue2.Get
  text5 = "cmgmail"
  text7 = "address"
  -- Beginner: result below is menu.
  localValue2 = localValue2(text3, text5, text7)
  text3 = true
  text5 = false
  text7 = true

  -- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
  function number6()
    local localValue12, localValue22, stateFlag7, stateFlag8, stateFlag9, workingValue3, rageUiOperation4, workingValue5, text11, dataCollection3, stateFlag2, workingValue
    localValue12 = drawNativeNotification
    localValue22 = "Press ~INPUT_FRONTEND_X~ to search for an address."
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue12(localValue22)
    localValue12 = IsControlJustPressed
    localValue22 = 0
    stateFlag7 = 203
    localValue12 = localValue12(localValue22, stateFlag7)
    if localValue12 then
      localValue12 = CMG
      localValue12 = localValue12.clientPrompt
      localValue22 = "House Name"
      stateFlag7 = ""

      -- === HELPER FUNCTION (decompiler name: stateFlag8; parameters: localValue13) ===
      function stateFlag8(localValue13)
        local localValue23
        rageUiOperation3 = localValue13
      end
      localValue12(localValue22, stateFlag7, stateFlag8)
    end
    localValue12 = pairs
    localValue22 = cmgOperation4
    localValue22, stateFlag7, stateFlag8, stateFlag9, workingValue3, rageUiOperation4, workingValue5, text11, dataCollection3, stateFlag2, workingValue = localValue22()
    localValue12, localValue22, stateFlag7, stateFlag8 = localValue12(localValue22, stateFlag7, stateFlag8, stateFlag9, workingValue3, rageUiOperation4, workingValue5, text11, dataCollection3, stateFlag2, workingValue)
    for stateFlag9, workingValue3 in localValue12, localValue22, stateFlag7, stateFlag8 do
      rageUiOperation4 = RageUI
      rageUiOperation4 = rageUiOperation4.ButtonWithStyle
      workingValue5 = workingValue3
      text11 = ""
      dataCollection3 = {}
      dataCollection3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag2 = true

      -- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue13, localValue23, localValue3) ===
      function workingValue(localValue13, localValue23, localValue3)
        local cmgOperation3
        if localValue3 then
          cmgOperation3 = workingValue3
          text9 = cmgOperation3
          cmgOperation3 = RageUI
          cmgOperation3 = cmgOperation3.GoBack
          cmgOperation3()
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation4(workingValue5, text11, dataCollection3, stateFlag2, workingValue)
    end
  end
  localValue1(localValue2, text3, text5, text7, number6)
end
rageUiOperation5(rageUiOperation6, rageUiOperation, rageUiOperation2, text)
rageUiOperation5 = RegisterNetEvent
rageUiOperation6 = "5a1808605d"
-- Beginner: this function handles network event "5a1808605d".

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: none) ===
function rageUiOperation()
  local localValue1, localValue2, text3, text5, text7
  localValue1 = cmgOperation2
  if "" ~= localValue1 then
    localValue1 = notify
    localValue2 = "~y~This letter is using saved information from the last write."
    -- Beginner: Show a notification to the player.
    localValue1(localValue2)
  else
    localValue1 = CMG
    localValue1 = localValue1.getPlayerName
    localValue2 = PlayerId
    localValue2, text3, text5, text7 = localValue2()
    localValue1 = localValue1(localValue2, text3, text5, text7)
    text6 = localValue1
  end
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  localValue2 = RMenu
  text3 = localValue2
  localValue2 = localValue2.Get
  text5 = "cmgmail"
  text7 = "write"
  -- Beginner: result below is menu.
  localValue2 = localValue2(text3, text5, text7)
  text3 = true
  localValue1(localValue2, text3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5a1808605d".
rageUiOperation5(rageUiOperation6, rageUiOperation)
