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
local cmgCall, dataTable2, vector3Builder, cmgCall2, textValue6, textValue9, rageUiCall3, cmgCall4, rageUiCall5, rageUiCall6, rageUiCall, rageUiCall2, textValue, textValue2
cmgCall = CMG
cmgCall = cmgCall.loadModule
dataTable2 = "cfg/homes"
-- Beginner: result below is config.
cmgCall = cmgCall(dataTable2)
dataTable2 = {}
dataTable2.onJob = false
vector3Builder = vector3
cmgCall2 = -17.703647613525
textValue6 = -696.84149169922
textValue9 = 32.344856262207
vector3Builder = vector3Builder(cmgCall2, textValue6, textValue9)
dataTable2.spawnVehicleVector = vector3Builder
vector3Builder = vector3
cmgCall2 = -19.447393417358
textValue6 = -705.32580566406
textValue9 = 32.338104248046
vector3Builder = vector3Builder(cmgCall2, textValue6, textValue9)
dataTable2.startVector = vector3Builder
dataTable2.tempMarker = 0
dataTable2.tempBlip = 0
dataTable2.tempVehicle = 0
dataTable2.tempObject = 0
dataTable2.cashEarned = 0
dataTable2.stopNumber = 0
vector3Builder = 15
cmgCall2 = CMG
cmgCall2 = cmgCall2.registerHudTimerBarProvider
textValue6 = "royalMailJob"

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: arg1) ===
function textValue9(arg1)
  local arg2, textValue3, textValue5, textValue7, numberValue6
  arg2 = dataTable2.onJob
  if not arg2 then
    return
  end
  arg2 = arg1.push
  textValue3 = "~g~EARNED:"
  textValue5 = "\194\163"
  textValue7 = getMoneyStringFormatted
  numberValue6 = dataTable2.cashEarned
  textValue7 = textValue7(numberValue6)
  textValue5 = textValue5 .. textValue7
  arg2(textValue3, textValue5)
  arg2 = arg1.push
  textValue3 = "PACKAGES:"
  textValue5 = dataTable2.stopNumber
  textValue7 = "/"
  numberValue6 = vector3Builder
  textValue5 = textValue5 .. textValue7 .. numberValue6
  arg2(textValue3, textValue5)
end
cmgCall2(textValue6, textValue9)
cmgCall2 = RegisterNetEvent
textValue6 = "206b328a55"
-- Beginner: this function handles network event "206b328a55".

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: none) ===
function textValue9()
  local arg1, arg2, textValue3, textValue5, textValue7, numberValue6, flag10, flag11, flag12
  arg1 = CMG
  arg1 = arg1.requestEntitySpawn
  arg2 = "royalmail"
  arg1(arg2)
  arg1 = CMG
  arg1 = arg1.spawnVehicle
  arg2 = "boxville2"
  textValue3 = dataTable2.spawnVehicleVector
  textValue3 = textValue3.x
  textValue5 = dataTable2.spawnVehicleVector
  textValue5 = textValue5.y
  textValue7 = dataTable2.spawnVehicleVector
  textValue7 = textValue7.z
  numberValue6 = 343
  flag10 = true
  flag11 = true
  flag12 = true
  arg1 = arg1(arg2, textValue3, textValue5, textValue7, numberValue6, flag10, flag11, flag12)
  dataTable2.tempVehicle = arg1
  dataTable2.onJob = true
  arg1 = CMG
  arg1 = arg1.setHudTimerBarProviderActive
  arg2 = "royalMailJob"
  textValue3 = true
  arg1(arg2, textValue3)
  arg1 = tCMG
  arg1 = arg1.notify
  arg2 = "~g~Postal Service Job started, exit the car park on your left and head to your first drop off point."
  -- Beginner: Show a notification to the player.
  arg1(arg2)
  while true do
    arg1 = dataTable2.onJob
    if not arg1 then
      break
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
  arg1 = CMG
  arg1 = arg1.setHudTimerBarProviderActive
  arg2 = "royalMailJob"
  textValue3 = false
  arg1(arg2, textValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "206b328a55".
cmgCall2(textValue6, textValue9)
cmgCall2 = RegisterNetEvent
textValue6 = "4c5794cec0"
-- Beginner: this function handles network event "4c5794cec0".

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: none) ===
function textValue9()
  local arg1, arg2, textValue3, textValue5
  arg1 = tCMG
  arg1 = arg1.notify
  arg2 = "~g~Shift complete."
  -- Beginner: Show a notification to the player.
  arg1(arg2)
  arg1 = DeleteVehicle
  arg2 = GetVehiclePedIsIn
  textValue3 = CMG
  textValue3 = textValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  textValue3 = textValue3()
  textValue5 = false
  arg2, textValue3, textValue5 = arg2(textValue3, textValue5)
  arg1(arg2, textValue3, textValue5)
  arg1 = DeleteVehicle
  arg2 = dataTable2.tempVehicle
  arg1(arg2)
  dataTable2.onJob = false
  dataTable2.tempMarker = 0
  dataTable2.tempBlip = 0
  dataTable2.tempVehicle = 0
  dataTable2.tempObject = 0
  dataTable2.cashEarned = 0
  dataTable2.stopNumber = 0
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4c5794cec0".
cmgCall2(textValue6, textValue9)
cmgCall2 = RegisterNetEvent
textValue6 = "6d6033a0ac"
-- Beginner: this function handles network event "6d6033a0ac".

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: arg1, arg2) ===
function textValue9(arg1, arg2)
  local textValue3, textValue5, textValue7, numberValue6, flag10, flag11, flag12, flag13, flag, flag3
  textValue3 = dataTable2.tempVehicle
  textValue5 = dataTable2.stopNumber
  textValue5 = textValue5 + 1
  dataTable2.stopNumber = textValue5
  if arg2 then
    textValue5 = dataTable2.cashEarned
    textValue5 = textValue5 + arg2
    dataTable2.cashEarned = textValue5
  end
  textValue5 = Citizen
  textValue5 = textValue5.CreateThread

  -- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
  function textValue7()
    local arg12, arg22, flag7, flag8, flag9
    while true do
      arg12 = textValue3
      if 0 == arg12 then
        break
      end
      arg12 = SetVehicleEngineOn
      arg22 = textValue3
      flag7 = false
      flag8 = true
      flag9 = false
      arg12(arg22, flag7, flag8, flag9)
      arg12 = Wait
      arg22 = 0
      arg12(arg22)
    end
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  textValue5(textValue7)
  textValue5 = dataTable2.tempMarker
  if textValue5 then
    textValue5 = tCMG
    textValue5 = textValue5.removeMarker
    textValue7 = dataTable2.tempMarker
    textValue5(textValue7)
  end
  textValue5 = SetVehicleDoorOpen
  textValue7 = textValue3
  numberValue6 = 2
  flag10 = false
  flag11 = false
  textValue5(textValue7, numberValue6, flag10, flag11)
  textValue5 = SetVehicleDoorOpen
  textValue7 = textValue3
  numberValue6 = 3
  flag10 = false
  flag11 = false
  textValue5(textValue7, numberValue6, flag10, flag11)
  textValue5 = DoesEntityExist
  textValue7 = dataTable2.tempObject
  textValue5 = textValue5(textValue7)
  if textValue5 then
    textValue5 = DeleteObject
    textValue7 = dataTable2.tempObject
    textValue5(textValue7)
  end
  textValue5 = CMG
  textValue5 = textValue5.loadModel
  textValue7 = "prop_drug_package"
  textValue5 = textValue5(textValue7)
  textValue7 = CreateObject
  numberValue6 = textValue5
  flag10 = arg1.x
  flag11 = arg1.y
  flag12 = arg1.z
  flag13 = false
  flag = false
  flag3 = true
  -- Beginner: result below is objectEntity.
  textValue7 = textValue7(numberValue6, flag10, flag11, flag12, flag13, flag, flag3)
  dataTable2.tempObject = textValue7
  textValue7 = PlaceObjectOnGroundProperly
  numberValue6 = dataTable2.tempObject
  textValue7(numberValue6)
  textValue7 = SetModelAsNoLongerNeeded
  numberValue6 = textValue5
  textValue7(numberValue6)
  textValue7 = RemoveBlip
  numberValue6 = dataTable2.tempBlip
  textValue7(numberValue6)
  textValue7 = SetTimeout
  numberValue6 = 2500

  -- === HELPER FUNCTION (decompiler name: flag10; parameters: none) ===
  function flag10()
    local arg12, arg22, flag7, flag8
    arg12 = SetVehicleDoorShut
    arg22 = textValue3
    flag7 = 2
    flag8 = false
    arg12(arg22, flag7, flag8)
    arg12 = SetVehicleDoorShut
    arg22 = textValue3
    flag7 = 3
    flag8 = false
    arg12(arg22, flag7, flag8)
    arg12 = 0
    textValue3 = arg12
  end
  textValue7(numberValue6, flag10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6d6033a0ac".
cmgCall2(textValue6, textValue9)
cmgCall2 = RegisterNetEvent
textValue6 = "c179928962"
-- Beginner: this function handles network event "c179928962".

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: arg1) ===
function textValue9(arg1)
  local arg2, textValue3, textValue5, textValue7, numberValue6, flag10, flag11, flag12, flag13, flag, flag3, numberValue
  arg2 = AddBlipForCoord
  textValue3 = arg1.x
  textValue5 = arg1.y
  textValue7 = arg1.z
  -- Beginner: result below is blipHandle.
  arg2 = arg2(textValue3, textValue5, textValue7)
  dataTable2.tempBlip = arg2
  arg2 = SetBlipSprite
  textValue3 = dataTable2.tempBlip
  textValue5 = 1
  arg2(textValue3, textValue5)
  arg2 = SetBlipRoute
  textValue3 = dataTable2.tempBlip
  textValue5 = true
  arg2(textValue3, textValue5)
  arg2 = tCMG
  arg2 = arg2.addMarker
  textValue3 = arg1.x
  textValue5 = arg1.y
  textValue7 = arg1.z
  textValue7 = textValue7 - 1
  numberValue6 = 2.0
  flag10 = 2.0
  flag11 = 1.0
  flag12 = 200
  flag13 = 20
  flag = 0
  flag3 = 50
  numberValue = 50
  arg2 = arg2(textValue3, textValue5, textValue7, numberValue6, flag10, flag11, flag12, flag13, flag, flag3, numberValue)
  dataTable2.tempMarker = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c179928962".
cmgCall2(textValue6, textValue9)
cmgCall2 = AddEventHandler
textValue6 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

-- === HELPER FUNCTION (decompiler name: textValue9; parameters: arg1, arg2) ===
function textValue9(arg1, arg2)
  local textValue3, textValue5, textValue7, numberValue6, flag10, flag11, flag12, flag13, flag, flag3, numberValue, dataTable, numberValue2, numberValue3, numberValue4, numberValue5, flag4, flag5, flag6
  if arg2 then
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: textValue3; parameters: none) ===
    function textValue3()
      local arg12, arg22
      arg12 = drawNativeNotification
      arg22 = "Press ~INPUT_PICKUP~ to start your Postal Service job"
      -- Beginner: Show a GTA-style notification/help prompt.
      arg12(arg22)
    end
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.

    -- === HELPER FUNCTION (decompiler name: textValue5; parameters: none) ===
    function textValue5()
      local arg12, arg22
    end

    -- === HELPER FUNCTION (decompiler name: textValue7; parameters: none) ===
    function textValue7()
      local arg12, arg22, flag7
      arg12 = IsControlJustReleased
      arg22 = 1
      flag7 = 38
      arg12 = arg12(arg22, flag7)
      if arg12 then
        arg12 = dataTable2.onJob
        if not arg12 then
          arg12 = TriggerServerEvent
          arg22 = "3afd3b06f0"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "3afd3b06f0".
          arg12(arg22)
        end
      end
    end
    numberValue6 = tCMG
    numberValue6 = numberValue6.addBlip
    flag10 = dataTable2.startVector
    flag10 = flag10.x
    flag11 = dataTable2.startVector
    flag11 = flag11.y
    flag12 = dataTable2.startVector
    flag12 = flag12.z
    flag13 = 67
    flag = 1
    flag3 = "Postal Service Job"
    -- Beginner: Create a minimap blip.
    numberValue6(flag10, flag11, flag12, flag13, flag, flag3)
    numberValue6 = tCMG
    numberValue6 = numberValue6.addMarker
    flag10 = dataTable2.startVector
    flag10 = flag10.x
    flag11 = dataTable2.startVector
    flag11 = flag11.y
    flag12 = dataTable2.startVector
    flag12 = flag12.z
    flag13 = 1.0
    flag = 1.0
    flag3 = 1.0
    numberValue = 255
    dataTable = 0
    numberValue2 = 0
    numberValue3 = 70
    numberValue4 = 50
    numberValue5 = 39
    flag4 = false
    flag5 = false
    flag6 = true
    -- Beginner: Create a world marker.
    numberValue6(flag10, flag11, flag12, flag13, flag, flag3, numberValue, dataTable, numberValue2, numberValue3, numberValue4, numberValue5, flag4, flag5, flag6)
    numberValue6 = CMG
    numberValue6 = numberValue6.createArea
    flag10 = "royalmail"
    flag11 = dataTable2.startVector
    flag12 = 1.5
    flag13 = 6
    flag = textValue3
    flag3 = textValue5
    numberValue = textValue7
    dataTable = {}
    -- Beginner: Create an interaction area around a world position.
    numberValue6(flag10, flag11, flag12, flag13, flag, flag3, numberValue, dataTable)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
cmgCall2(textValue6, textValue9)
cmgCall2 = RMenu
cmgCall2 = cmgCall2.Add
textValue6 = "cmgmail"
textValue9 = "write"
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateMenu
cmgCall4 = "CMG Mail Service"
rageUiCall5 = "~b~CMG Mail Service"
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuWidth
rageUiCall6 = rageUiCall6()
rageUiCall = CMG
rageUiCall = rageUiCall.getRageUIMenuHeight
rageUiCall, rageUiCall2, textValue, textValue2 = rageUiCall()
rageUiCall3, cmgCall4, rageUiCall5, rageUiCall6, rageUiCall, rageUiCall2, textValue, textValue2 = rageUiCall3(cmgCall4, rageUiCall5, rageUiCall6, rageUiCall, rageUiCall2, textValue, textValue2)
cmgCall2(textValue6, textValue9, rageUiCall3, cmgCall4, rageUiCall5, rageUiCall6, rageUiCall, rageUiCall2, textValue, textValue2)
cmgCall2 = RMenu
cmgCall2 = cmgCall2.Add
textValue6 = "cmgmail"
textValue9 = "address"
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateSubMenu
cmgCall4 = RMenu
rageUiCall5 = cmgCall4
cmgCall4 = cmgCall4.Get
rageUiCall6 = "cmgmail"
rageUiCall = "write"
-- Beginner: result below is menu.
cmgCall4 = cmgCall4(rageUiCall5, rageUiCall6, rageUiCall)
rageUiCall5 = "CMG Mail Service"
rageUiCall6 = "~b~CMG Mail Service"
rageUiCall = CMG
rageUiCall = rageUiCall.getRageUIMenuWidth
rageUiCall = rageUiCall()
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuHeight
rageUiCall2, textValue, textValue2 = rageUiCall2()
rageUiCall3, cmgCall4, rageUiCall5, rageUiCall6, rageUiCall, rageUiCall2, textValue, textValue2 = rageUiCall3(cmgCall4, rageUiCall5, rageUiCall6, rageUiCall, rageUiCall2, textValue, textValue2)
cmgCall2(textValue6, textValue9, rageUiCall3, cmgCall4, rageUiCall5, rageUiCall6, rageUiCall, rageUiCall2, textValue, textValue2)
cmgCall2 = ""
textValue6 = ""
textValue9 = ""
rageUiCall3 = ""

-- === HELPER FUNCTION (decompiler name: cmgCall4; parameters: none) ===
function cmgCall4()
  local arg1, arg2, textValue3, textValue5, textValue7, numberValue6, flag10, flag11, flag12, flag13
  arg1 = {}
  arg2 = pairs
  textValue3 = cmgCall.homes
  arg2, textValue3, textValue5, textValue7 = arg2(textValue3)
  for numberValue6 in arg2, textValue3, textValue5, textValue7 do
    flag10 = rageUiCall3
    if "" ~= flag10 then
      flag10 = string
      flag10 = flag10.match
      flag11 = string
      flag11 = flag11.lower
      flag12 = numberValue6
      flag11 = flag11(flag12)
      flag12 = string
      flag12 = flag12.lower
      flag13 = rageUiCall3
      flag12, flag13 = flag12(flag13)
      flag10 = flag10(flag11, flag12, flag13)
      if not flag10 then
        goto flow_label_28
      end
    end
    flag10 = table
    flag10 = flag10.insert
    flag11 = arg1
    flag12 = numberValue6
    flag10(flag11, flag12)
    ::flow_label_28::
  end
  arg2 = table
  arg2 = arg2.sort
  textValue3 = arg1

  -- === HELPER FUNCTION (decompiler name: textValue5; parameters: arg12, arg22) ===
  function textValue5(arg12, arg22)
    local flag7
    flag7 = arg12 < arg22
    return flag7
  end
  arg2(textValue3, textValue5)
  return arg1
end
rageUiCall5 = RageUI
rageUiCall5 = rageUiCall5.CreateWhile
rageUiCall6 = 1.0
rageUiCall = RMenu
rageUiCall2 = rageUiCall
rageUiCall = rageUiCall.Get
textValue = "cmgmail"
textValue2 = "write"
-- Beginner: result below is menu.
rageUiCall = rageUiCall(rageUiCall2, textValue, textValue2)
rageUiCall2 = nil

-- === HELPER FUNCTION (decompiler name: textValue; parameters: none) ===
function textValue()
  local arg1, arg2, textValue3, textValue5, textValue7, numberValue6
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  textValue3 = arg2
  arg2 = arg2.Get
  textValue5 = "cmgmail"
  textValue7 = "write"
  -- Beginner: result below is menu.
  arg2 = arg2(textValue3, textValue5, textValue7)
  textValue3 = true
  textValue5 = false
  textValue7 = true

  -- === HELPER FUNCTION (decompiler name: numberValue6; parameters: none) ===
  function numberValue6()
    local arg12, arg22, flag7, flag8, flag9, workValue3, rageUiCall4, workValue5, textValue11, dataTable3
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "Signed by "
    flag7 = textValue6
    arg22 = arg22 .. flag7
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.Separator
    arg22 = "Delivery Address is "
    flag7 = textValue9
    arg22 = arg22 .. flag7
    arg12(arg22)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "~y~Edit Message"
    flag7 = cmgCall2
    flag8 = {}
    flag8.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag9 = true

    -- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg13, arg23, arg3) ===
    function workValue3(arg13, arg23, arg3)
      local cmgCall3, textValue8, textValue10, workValue4
      if arg3 then
        cmgCall3 = CMG
        cmgCall3 = cmgCall3.clientPrompt
        textValue8 = "Edit Message"
        textValue10 = ""

        -- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg14) ===
        function workValue4(arg14)
          local workValue2, textValue4
          workValue2 = #arg14
          if not (workValue2 < 3) then
            workValue2 = #arg14
            textValue4 = 500
            if not (workValue2 > textValue4) then
              goto flow_label_12
            end
          end
          workValue2 = notify
          textValue4 = "~r~The message must be between 3 and 500 characters."
          -- Beginner: Show a notification to the player.
          workValue2(textValue4)
          goto flow_label_13
          ::flow_label_12::
          cmgCall2 = arg14
          ::flow_label_13::
        end
        cmgCall3(textValue8, textValue10, workValue4)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, flag7, flag8, flag9, workValue3)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "~y~Edit Signature"
    flag7 = cmgCall2
    flag8 = {}
    flag8.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag9 = true

    -- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg13, arg23, arg3) ===
    function workValue3(arg13, arg23, arg3)
      local cmgCall3, textValue8, textValue10, workValue4
      if arg3 then
        cmgCall3 = CMG
        cmgCall3 = cmgCall3.clientPrompt
        textValue8 = "Edit Signature"
        textValue10 = ""

        -- === HELPER FUNCTION (decompiler name: workValue4; parameters: arg14) ===
        function workValue4(arg14)
          local workValue2, textValue4
          workValue2 = #arg14
          if 0 == workValue2 then
            workValue2 = CMG
            workValue2 = workValue2.getPlayerName
            textValue4 = PlayerId
            -- Beginner: result below is localPlayerIndex.
            textValue4 = textValue4()
            workValue2 = workValue2(textValue4)
            textValue6 = workValue2
          else
            workValue2 = #arg14
            if workValue2 > 20 then
              workValue2 = notify
              textValue4 = "~r~The signature must be between 1 and 20 characters."
              -- Beginner: Show a notification to the player.
              workValue2(textValue4)
            else
              textValue6 = arg14
            end
          end
        end
        cmgCall3(textValue8, textValue10, workValue4)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, flag7, flag8, flag9, workValue3)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "~y~Select Address"
    flag7 = cmgCall2
    flag8 = {}
    flag8.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag9 = true

    -- === HELPER FUNCTION (decompiler name: workValue3; parameters: none) ===
    function workValue3()
      local arg13, arg23
    end
    rageUiCall4 = RMenu
    workValue5 = rageUiCall4
    rageUiCall4 = rageUiCall4.Get
    textValue11 = "cmgmail"
    dataTable3 = "address"
    rageUiCall4, workValue5, textValue11, dataTable3 = rageUiCall4(workValue5, textValue11, dataTable3)
    arg12(arg22, flag7, flag8, flag9, workValue3, rageUiCall4, workValue5, textValue11, dataTable3)
    arg12 = RageUI
    arg12 = arg12.ButtonWithStyle
    arg22 = "~g~Submit Letter"
    flag7 = cmgCall2
    flag8 = {}
    flag8.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag9 = true

    -- === HELPER FUNCTION (decompiler name: workValue3; parameters: arg13, arg23, arg3) ===
    function workValue3(arg13, arg23, arg3)
      local cmgCall3, textValue8, textValue10, workValue4, workValue6
      if arg3 then
        cmgCall3 = cmgCall.homes
        textValue8 = textValue9
        cmgCall3 = cmgCall3[textValue8]
        if not cmgCall3 then
          cmgCall3 = notify
          textValue8 = "~r~You must select a house address to send to."
          -- Beginner: Show a notification to the player.
          cmgCall3(textValue8)
        else
          cmgCall3 = TriggerServerEvent
          textValue8 = "a9f5519239"
          textValue10 = cmgCall2
          workValue4 = textValue6
          workValue6 = textValue9
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a9f5519239".
          cmgCall3(textValue8, textValue10, workValue4, workValue6)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg22, flag7, flag8, flag9, workValue3)
  end
  arg1(arg2, textValue3, textValue5, textValue7, numberValue6)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  textValue3 = arg2
  arg2 = arg2.Get
  textValue5 = "cmgmail"
  textValue7 = "address"
  -- Beginner: result below is menu.
  arg2 = arg2(textValue3, textValue5, textValue7)
  textValue3 = true
  textValue5 = false
  textValue7 = true

  -- === HELPER FUNCTION (decompiler name: numberValue6; parameters: none) ===
  function numberValue6()
    local arg12, arg22, flag7, flag8, flag9, workValue3, rageUiCall4, workValue5, textValue11, dataTable3, flag2, workValue
    arg12 = drawNativeNotification
    arg22 = "Press ~INPUT_FRONTEND_X~ to search for an address."
    -- Beginner: Show a GTA-style notification/help prompt.
    arg12(arg22)
    arg12 = IsControlJustPressed
    arg22 = 0
    flag7 = 203
    arg12 = arg12(arg22, flag7)
    if arg12 then
      arg12 = CMG
      arg12 = arg12.clientPrompt
      arg22 = "House Name"
      flag7 = ""

      -- === HELPER FUNCTION (decompiler name: flag8; parameters: arg13) ===
      function flag8(arg13)
        local arg23
        rageUiCall3 = arg13
      end
      arg12(arg22, flag7, flag8)
    end
    arg12 = pairs
    arg22 = cmgCall4
    arg22, flag7, flag8, flag9, workValue3, rageUiCall4, workValue5, textValue11, dataTable3, flag2, workValue = arg22()
    arg12, arg22, flag7, flag8 = arg12(arg22, flag7, flag8, flag9, workValue3, rageUiCall4, workValue5, textValue11, dataTable3, flag2, workValue)
    for flag9, workValue3 in arg12, arg22, flag7, flag8 do
      rageUiCall4 = RageUI
      rageUiCall4 = rageUiCall4.ButtonWithStyle
      workValue5 = workValue3
      textValue11 = ""
      dataTable3 = {}
      dataTable3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag2 = true

      -- === HELPER FUNCTION (decompiler name: workValue; parameters: arg13, arg23, arg3) ===
      function workValue(arg13, arg23, arg3)
        local cmgCall3
        if arg3 then
          cmgCall3 = workValue3
          textValue9 = cmgCall3
          cmgCall3 = RageUI
          cmgCall3 = cmgCall3.GoBack
          cmgCall3()
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall4(workValue5, textValue11, dataTable3, flag2, workValue)
    end
  end
  arg1(arg2, textValue3, textValue5, textValue7, numberValue6)
end
rageUiCall5(rageUiCall6, rageUiCall, rageUiCall2, textValue)
rageUiCall5 = RegisterNetEvent
rageUiCall6 = "5a1808605d"
-- Beginner: this function handles network event "5a1808605d".

-- === HELPER FUNCTION (decompiler name: rageUiCall; parameters: none) ===
function rageUiCall()
  local arg1, arg2, textValue3, textValue5, textValue7
  arg1 = cmgCall2
  if "" ~= arg1 then
    arg1 = notify
    arg2 = "~y~This letter is using saved information from the last write."
    -- Beginner: Show a notification to the player.
    arg1(arg2)
  else
    arg1 = CMG
    arg1 = arg1.getPlayerName
    arg2 = PlayerId
    arg2, textValue3, textValue5, textValue7 = arg2()
    arg1 = arg1(arg2, textValue3, textValue5, textValue7)
    textValue6 = arg1
  end
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  textValue3 = arg2
  arg2 = arg2.Get
  textValue5 = "cmgmail"
  textValue7 = "write"
  -- Beginner: result below is menu.
  arg2 = arg2(textValue3, textValue5, textValue7)
  textValue3 = true
  arg1(arg2, textValue3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "5a1808605d".
rageUiCall5(rageUiCall6, rageUiCall)
