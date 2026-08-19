--[[
    LEVEL 1 BEGINNER GUIDE — Blackmarket
    =========================================

    File: cmg/prod/client/weapons/cl_blackmarket.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: weapon/combat gameplay, specifically the Blackmarket feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 18
      * Background threads: 0
      * Always-running loops: 3
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
local createVector4, createVector3, number5, createVector32, number6, dataCollection3, dataCollection4, dataCollection5, dataCollection6, dataCollection7, dataCollection, rageUiOperation2, text, text3, rageUiOperation3, rageUiOperation4, text4, text5, stateFlag4, number, number2, number3, number4, stateFlag5, stateFlag6
createVector4 = vector4
createVector3 = 1419.6131591797
number5 = 6344.7294921875
createVector32 = 24.090087890625
number6 = 272.96063232422
createVector4 = createVector4(createVector3, number5, createVector32, number6)
createVector3 = vector3
number5 = 1422.1669921875
createVector32 = 6344.642578125
number6 = 23.985691070557
createVector3 = createVector3(number5, createVector32, number6)
number5 = 30000
createVector32 = vector3
number6 = 1420.9119873047
dataCollection3 = 6344.7646484375
dataCollection4 = 23.4
createVector32 = createVector32(number6, dataCollection3, dataCollection4)
number6 = -1462060028
dataCollection3 = {}
dataCollection4 = {}
dataCollection5 = "Barge_Door"
dataCollection6 = "dlc_h4_Prep_FC_Sounds"
dataCollection4[1] = dataCollection5
dataCollection4[2] = dataCollection6
dataCollection5 = {}
dataCollection6 = "Barge_Door_Glass"
dataCollection7 = "dlc_h4_Prep_FC_Sounds"
dataCollection5[1] = dataCollection6
dataCollection5[2] = dataCollection7
dataCollection6 = {}
dataCollection7 = "Barge_Door_Metal"
dataCollection = "dlc_h4_Prep_FC_Sounds"
dataCollection6[1] = dataCollection7
dataCollection6[2] = dataCollection
dataCollection7 = {}
dataCollection = "Barge_Door_Metal_Bars"
rageUiOperation2 = "dlc_h4_Prep_FC_Sounds"
dataCollection7[1] = dataCollection
dataCollection7[2] = rageUiOperation2
dataCollection = {}
rageUiOperation2 = "car_crushed"
text = "dlc_vw_body_disposal_sounds"
dataCollection[1] = rageUiOperation2
dataCollection[2] = text
rageUiOperation2 = {}
text = "Drill_Pin_Break"
text3 = "DLC_HEIST_FLEECA_SOUNDSET"
rageUiOperation2[1] = text
rageUiOperation2[2] = text3
dataCollection3[1] = dataCollection4
dataCollection3[2] = dataCollection5
dataCollection3[3] = dataCollection6
dataCollection3[4] = dataCollection7
dataCollection3[5] = dataCollection
dataCollection3[6] = rageUiOperation2
dataCollection4 = {}
dataCollection5 = false
dataCollection6 = RMenu
dataCollection6 = dataCollection6.Add
dataCollection7 = "blackmarket"
dataCollection = "mainmenu"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text = ""
text3 = "Black Market"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text4 = "cmg_gunstoreui"
text5 = "cmg_gunstoreui"
rageUiOperation2, text, text3, rageUiOperation3, rageUiOperation4, text4, text5, stateFlag4, number, number2, number3, number4, stateFlag5, stateFlag6 = rageUiOperation2(text, text3, rageUiOperation3, rageUiOperation4, text4, text5)
dataCollection6(dataCollection7, dataCollection, rageUiOperation2, text, text3, rageUiOperation3, rageUiOperation4, text4, text5, stateFlag4, number, number2, number3, number4, stateFlag5, stateFlag6)
dataCollection6 = RageUI
dataCollection6 = dataCollection6.CreateWhile
dataCollection7 = 1.0
dataCollection = RMenu
rageUiOperation2 = dataCollection
dataCollection = dataCollection.Get
text = "blackmarket"
text3 = "mainmenu"
-- Beginner: result below is menu.
dataCollection = dataCollection(rageUiOperation2, text, text3)
rageUiOperation2 = nil

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, workingValue2, stateFlag7, stateFlag8, stateFlag9, text7, number7
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  workingValue2 = RMenu
  stateFlag7 = workingValue2
  workingValue2 = workingValue2.Get
  stateFlag8 = "blackmarket"
  stateFlag9 = "mainmenu"
  -- Beginner: result below is menu.
  workingValue2 = workingValue2(stateFlag7, stateFlag8, stateFlag9)
  stateFlag7 = true
  stateFlag8 = false
  stateFlag9 = true

  -- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
  function text7()
    local rageUiOperation, tableHelper, workingValue3, workingValue4, workingValue5, workingValue6, workingValue8, rageUiOperation5, stringHelper2, stringHelper3, dataCollection2, stringHelper, text2, workingValue
    rageUiOperation = dataCollection4
    rageUiOperation = #rageUiOperation
    if 0 == rageUiOperation then
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.Separator
      tableHelper = "~r~No suitable weapons to sell."
      rageUiOperation(tableHelper)
      return
    end
    rageUiOperation = pairs
    tableHelper = dataCollection4
    rageUiOperation, tableHelper, workingValue3, workingValue4 = rageUiOperation(tableHelper)
    for workingValue5, workingValue6 in rageUiOperation, tableHelper, workingValue3, workingValue4 do
      workingValue8 = getMoneyStringFormatted
      rageUiOperation5 = workingValue6.price
      workingValue8 = workingValue8(rageUiOperation5)
      rageUiOperation5 = RageUI
      rageUiOperation5 = rageUiOperation5.ButtonWithStyle
      stringHelper2 = string
      stringHelper2 = stringHelper2.format
      stringHelper3 = "1x %s"
      dataCollection2 = workingValue6.name
      stringHelper2 = stringHelper2(stringHelper3, dataCollection2)
      stringHelper3 = string
      stringHelper3 = stringHelper3.format
      dataCollection2 = "You can sell this weapon to the black market dealer for \194\163%s."
      stringHelper = workingValue8
      stringHelper3 = stringHelper3(dataCollection2, stringHelper)
      dataCollection2 = {}
      stringHelper = string
      stringHelper = stringHelper.format
      text2 = "\194\163%s"
      workingValue = workingValue8
      stringHelper = stringHelper(text2, workingValue)
      dataCollection2.RightLabel = stringHelper
      stringHelper = true

      -- === HELPER FUNCTION (decompiler name: text2; parameters: localValue12, localValue2, localValue3) ===
      function text2(localValue12, localValue2, localValue3)
        local serverEventCall, text6, workingValue7
        if localValue3 then
          serverEventCall = TriggerServerEvent
          text6 = "d40f11439b"
          workingValue7 = workingValue6.itemId
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d40f11439b".
          serverEventCall(text6, workingValue7)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation5(stringHelper2, stringHelper3, dataCollection2, stringHelper, text2)
    end
  end

  -- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
  function number7()
    local rageUiOperation, tableHelper
  end
  localValue1(workingValue2, stateFlag7, stateFlag8, stateFlag9, text7, number7)
end
dataCollection6(dataCollection7, dataCollection, rageUiOperation2, text)
dataCollection6 = RegisterNetEvent
dataCollection7 = "63e6207926"
-- Beginner: this function handles network event "63e6207926".

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: localValue1) ===
function dataCollection(localValue1)
  local workingValue2
  dataCollection4 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "63e6207926".
dataCollection6(dataCollection7, dataCollection)
dataCollection6 = RegisterNetEvent
dataCollection7 = "ddcce5225d"
-- Beginner: this function handles network event "ddcce5225d".

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
function dataCollection()
  local localValue1, workingValue2, stateFlag7, stateFlag8, stateFlag9, text7, number7, stateFlag10, number8, stateFlag11, stateFlag, stateFlag2, stateFlag3
  localValue1 = CMG
  localValue1 = localValue1.setPlayerCombatTimer
  workingValue2 = 60
  stateFlag7 = false
  localValue1(workingValue2, stateFlag7)
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread
  -- Beginner: this function handles network event "ddcce5225d".

  -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
  function workingValue2()
    local rageUiOperation, tableHelper, workingValue3, workingValue4, workingValue5
    rageUiOperation = CMG
    rageUiOperation = rageUiOperation.startCircularProgressBar
    tableHelper = ""
    workingValue3 = number5
    workingValue4 = nil

    -- === HELPER FUNCTION (decompiler name: workingValue5; parameters: none) ===
    function workingValue5()
      local localValue12, localValue2
    end
    rageUiOperation(tableHelper, workingValue3, workingValue4, workingValue5)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(workingValue2)
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  workingValue2 = CMG
  workingValue2 = workingValue2.loadAnimDict
  stateFlag7 = "mp_common"
  -- Beginner: Load a GTA animation dictionary before using it.
  workingValue2(stateFlag7)
  workingValue2 = TaskPlayAnim
  stateFlag7 = localValue1
  stateFlag8 = "mp_common"
  stateFlag9 = "givetake1_a"
  text7 = 8.0
  number7 = 8.0
  stateFlag10 = -1
  number8 = 1
  stateFlag11 = 0
  stateFlag = false
  stateFlag2 = false
  stateFlag3 = false
  -- Beginner: Play an animation on a ped.
  workingValue2(stateFlag7, stateFlag8, stateFlag9, text7, number7, stateFlag10, number8, stateFlag11, stateFlag, stateFlag2, stateFlag3)
  workingValue2 = RemoveAnimDict
  stateFlag7 = "mp_common"
  workingValue2(stateFlag7)
  workingValue2 = Wait
  stateFlag7 = 100
  workingValue2(stateFlag7)
  workingValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  workingValue2 = workingValue2()
  while true do
    stateFlag7 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    stateFlag7 = stateFlag7()
    stateFlag7 = stateFlag7 - workingValue2
    stateFlag8 = number5
    if stateFlag7 > stateFlag8 then
      stateFlag7 = TriggerServerEvent
      stateFlag8 = "b4a66c73e5"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b4a66c73e5".
      stateFlag7(stateFlag8)
      break
    end
    stateFlag7 = tCMG
    stateFlag7 = stateFlag7.isInComa
    stateFlag7 = stateFlag7()
    if not stateFlag7 then
      stateFlag7 = IsEntityDead
      stateFlag8 = localValue1
      stateFlag7 = stateFlag7(stateFlag8)
      if not stateFlag7 then
        goto continueAtStep65
      end
    end
    stateFlag7 = TriggerServerEvent
    stateFlag8 = "6a7451d0b3"
    stateFlag7(stateFlag8)
    stateFlag7 = notify
    stateFlag8 = "~r~You can not sell a weapon whilst dead."
    -- Beginner: Show a notification to the player.
    stateFlag7(stateFlag8)
    do break end
    ::continueAtStep65::
    stateFlag7 = CMG
    stateFlag7 = stateFlag7.getPlayerCoords
    -- Beginner: result below is playerCoords.
    stateFlag7 = stateFlag7()
    stateFlag8 = createVector3
    stateFlag7 = stateFlag7 - stateFlag8
    stateFlag7 = #stateFlag7
    if stateFlag7 > 2.0 then
      stateFlag7 = TriggerServerEvent
      stateFlag8 = "6a7451d0b3"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6a7451d0b3".
      stateFlag7(stateFlag8)
      stateFlag7 = notify
      stateFlag8 = "~r~Failed to sell, you went too far away from the trader."
      -- Beginner: Show a notification to the player.
      stateFlag7(stateFlag8)
      break
    end
    stateFlag7 = IsEntityPlayingAnim
    stateFlag8 = localValue1
    stateFlag9 = "mp_common"
    text7 = "givetake1_a"
    number7 = 3
    stateFlag7 = stateFlag7(stateFlag8, stateFlag9, text7, number7)
    if not stateFlag7 then
      stateFlag7 = TriggerServerEvent
      stateFlag8 = "6a7451d0b3"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6a7451d0b3".
      stateFlag7(stateFlag8)
      stateFlag7 = notify
      stateFlag8 = "~r~Failed to sell, cancelled the transaction."
      -- Beginner: Show a notification to the player.
      stateFlag7(stateFlag8)
      break
    end
    stateFlag7 = Wait
    stateFlag8 = 0
    stateFlag7(stateFlag8)
  end
  stateFlag7 = StopAnimTask
  stateFlag8 = localValue1
  stateFlag9 = "mp_common"
  text7 = "givetake1_a"
  number7 = 1.0
  stateFlag7(stateFlag8, stateFlag9, text7, number7)
  stateFlag7 = CMG
  stateFlag7 = stateFlag7.stopCircularProgressBar
  stateFlag7()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ddcce5225d".
dataCollection6(dataCollection7, dataCollection)
dataCollection6 = RegisterNetEvent
dataCollection7 = "d9bb4048a2"
-- Beginner: this function handles network event "d9bb4048a2".

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
function dataCollection()
  local localValue1, workingValue2, stateFlag7, stateFlag8, stateFlag9, text7, number7, stateFlag10, number8, stateFlag11, stateFlag, stateFlag2
  localValue1 = dataCollection5
  if localValue1 then
    return
  end
  localValue1 = true
  dataCollection5 = localValue1
  while true do
    localValue1 = dataCollection5
    if not localValue1 then
      break
    end
    localValue1 = GetSoundId
    -- Beginner: result below is soundHandle.
    localValue1 = localValue1()
    workingValue2 = math
    workingValue2 = workingValue2.random
    stateFlag7 = 1
    stateFlag8 = dataCollection3
    stateFlag8 = #stateFlag8
    workingValue2 = workingValue2(stateFlag7, stateFlag8)
    stateFlag7 = dataCollection3
    workingValue2 = stateFlag7[workingValue2]
    stateFlag7 = PlaySoundFromCoord
    stateFlag8 = localValue1
    stateFlag9 = workingValue2[1]
    text7 = createVector3.x
    number7 = createVector3.y
    stateFlag10 = createVector3.z
    number8 = workingValue2[2]
    stateFlag11 = false
    stateFlag = 50
    stateFlag2 = false
    stateFlag7(stateFlag8, stateFlag9, text7, number7, stateFlag10, number8, stateFlag11, stateFlag, stateFlag2)
    while true do
      stateFlag7 = HasSoundFinished
      stateFlag8 = localValue1
      stateFlag7 = stateFlag7(stateFlag8)
      if stateFlag7 then
        break
      end
      stateFlag7 = dataCollection5
      if not stateFlag7 then
        break
      end
      stateFlag7 = Wait
      stateFlag8 = 0
      stateFlag7(stateFlag8)
    end
    stateFlag7 = StopSound
    stateFlag8 = localValue1
    stateFlag7(stateFlag8)
    stateFlag7 = ReleaseSoundId
    stateFlag8 = localValue1
    stateFlag7(stateFlag8)
    stateFlag7 = Wait
    stateFlag8 = 1000
    stateFlag7(stateFlag8)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d9bb4048a2".
dataCollection6(dataCollection7, dataCollection)
dataCollection6 = RegisterNetEvent
dataCollection7 = "9db45c7371"
-- Beginner: this function handles network event "9db45c7371".

-- === HELPER FUNCTION (decompiler name: dataCollection; parameters: none) ===
function dataCollection()
  local localValue1, workingValue2
  localValue1 = false
  dataCollection5 = localValue1
end
dataCollection6(dataCollection7, dataCollection)
-- Beginner: this function handles network event "9db45c7371".

-- === HELPER FUNCTION (decompiler name: dataCollection6; parameters: none) ===
function dataCollection6()
  local localValue1, workingValue2, stateFlag7, stateFlag8, stateFlag9
  localValue1 = table
  localValue1 = localValue1.clear
  workingValue2 = dataCollection4
  localValue1(workingValue2)
  localValue1 = TriggerServerEvent
  workingValue2 = "a645ab52a9"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a645ab52a9".
  localValue1(workingValue2)
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  workingValue2 = RMenu
  stateFlag7 = workingValue2
  workingValue2 = workingValue2.Get
  stateFlag8 = "blackmarket"
  stateFlag9 = "mainmenu"
  -- Beginner: result below is menu.
  workingValue2 = workingValue2(stateFlag7, stateFlag8, stateFlag9)
  stateFlag7 = true
  localValue1(workingValue2, stateFlag7)
end

-- === HELPER FUNCTION (decompiler name: dataCollection7; parameters: none) ===
function dataCollection7()
  local localValue1, workingValue2, stateFlag7, stateFlag8, stateFlag9
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  workingValue2 = RMenu
  stateFlag7 = workingValue2
  workingValue2 = workingValue2.Get
  stateFlag8 = "blackmarket"
  stateFlag9 = "mainmenu"
  -- Beginner: result below is menu.
  workingValue2 = workingValue2(stateFlag7, stateFlag8, stateFlag9)
  stateFlag7 = false
  localValue1(workingValue2, stateFlag7)
end
dataCollection = CMG
dataCollection = dataCollection.createArea
rageUiOperation2 = "black_market_trader"
text = createVector3
text3 = 2.0
rageUiOperation3 = 2.0
rageUiOperation4 = dataCollection6
text4 = dataCollection7

-- === HELPER FUNCTION (decompiler name: text5; parameters: none) ===
function text5()
  local localValue1, workingValue2
end
-- Beginner: Create an interaction area around a world position.
dataCollection(rageUiOperation2, text, text3, rageUiOperation3, rageUiOperation4, text4, text5)
dataCollection = tCMG
dataCollection = dataCollection.addMarker
rageUiOperation2 = createVector3.x
text = createVector3.y
text3 = createVector3.z
rageUiOperation3 = 0.7
rageUiOperation4 = 0.7
text4 = 0.5
text5 = 255
stateFlag4 = 0
number = 0
number2 = 125
number3 = 50
number4 = 29
stateFlag5 = true
stateFlag6 = true
-- Beginner: Create a world marker.
dataCollection(rageUiOperation2, text, text3, rageUiOperation3, rageUiOperation4, text4, text5, stateFlag4, number, number2, number3, number4, stateFlag5, stateFlag6)
dataCollection = CMG
dataCollection = dataCollection.createDynamicPed
rageUiOperation2 = 275618457
text = createVector4.xyz
text3 = createVector4.w
rageUiOperation3 = true
rageUiOperation4 = "mini@strip_club@idles@bouncer@base"
text4 = "base"
text5 = 100
stateFlag4 = false

-- === HELPER FUNCTION (decompiler name: number; parameters: none) ===
function number()
  local localValue1, workingValue2
end
dataCollection(rageUiOperation2, text, text3, rageUiOperation3, rageUiOperation4, text4, text5, stateFlag4, number)
dataCollection = 0

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, workingValue2, stateFlag7, stateFlag8, stateFlag9, text7, number7, stateFlag10
  localValue1 = CMG
  localValue1 = localValue1.loadModel
  workingValue2 = number6
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue1(workingValue2)
  localValue1 = CreateObjectNoOffset
  workingValue2 = number6
  stateFlag7 = createVector32.x
  stateFlag8 = createVector32.y
  stateFlag9 = createVector32.z
  text7 = false
  number7 = false
  stateFlag10 = false
  -- Beginner: result below is objectEntity.
  localValue1 = localValue1(workingValue2, stateFlag7, stateFlag8, stateFlag9, text7, number7, stateFlag10)
  dataCollection = localValue1
  localValue1 = FreezeEntityPosition
  workingValue2 = dataCollection
  stateFlag7 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue1(workingValue2, stateFlag7)
end

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, workingValue2
  localValue1 = dataCollection
  if 0 ~= localValue1 then
    localValue1 = DeleteEntity
    workingValue2 = dataCollection
    -- Beginner: Delete a GTA entity.
    localValue1(workingValue2)
    localValue1 = 0
    dataCollection = localValue1
  end
end
text3 = CMG
text3 = text3.createArea
rageUiOperation3 = "black_market_table"
rageUiOperation4 = createVector32
text4 = 150.0
text5 = 150.0
stateFlag4 = rageUiOperation2
number = text

-- === HELPER FUNCTION (decompiler name: number2; parameters: none) ===
function number2()
  local localValue1, workingValue2
end
-- Beginner: Create an interaction area around a world position.
text3(rageUiOperation3, rageUiOperation4, text4, text5, stateFlag4, number, number2)
text3 = AddEventHandler
rageUiOperation3 = "onClientResourceStop"
-- Beginner: this function runs when client event "onClientResourceStop" fires.

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local workingValue2
  workingValue2 = GetCurrentResourceName
  workingValue2 = workingValue2()
  if workingValue2 == localValue1 then
    workingValue2 = text
    workingValue2()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onClientResourceStop".
text3(rageUiOperation3, rageUiOperation4)
