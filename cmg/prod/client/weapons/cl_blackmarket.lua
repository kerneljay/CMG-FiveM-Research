--[[
    Beginner Guide: cl_blackmarket.lua
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
    BEGINNER GUIDE — Blackmarket
    ============================

    File: cmg/prod/client/weapons/cl_blackmarket.lua
    Purpose: This file contains weapons/combat gameplay.

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

    Network/hash identifiers found: 8
      They are intentionally left unchanged because matching server code may use them.
      * d40f11439b
      * 63e6207926
      * ddcce5225d
      * b4a66c73e5
      * 6a7451d0b3
      * d9bb4048a2
      * 9db45c7371
      * a645ab52a9

    Example player-facing text in this file:
      * You can sell this weapon to the black market dealer for \194\163%s.
      * ~r~You can not sell a weapon whilst dead.

]]
local vector4Builder, vector3Builder, numberValue5, vector3Builder2, numberValue6, dataTable3, dataTable4, dataTable5, dataTable6, dataTable7, dataTable, rageUiCall2, textValue, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5, flag4, numberValue, numberValue2, numberValue3, numberValue4, flag5, flag6
vector4Builder = vector4
vector3Builder = 1419.6131591797
numberValue5 = 6344.7294921875
vector3Builder2 = 24.090087890625
numberValue6 = 272.96063232422
vector4Builder = vector4Builder(vector3Builder, numberValue5, vector3Builder2, numberValue6)
vector3Builder = vector3
numberValue5 = 1422.1669921875
vector3Builder2 = 6344.642578125
numberValue6 = 23.985691070557
vector3Builder = vector3Builder(numberValue5, vector3Builder2, numberValue6)
numberValue5 = 30000
vector3Builder2 = vector3
numberValue6 = 1420.9119873047
dataTable3 = 6344.7646484375
dataTable4 = 23.4
vector3Builder2 = vector3Builder2(numberValue6, dataTable3, dataTable4)
numberValue6 = -1462060028
dataTable3 = {}
dataTable4 = {}
dataTable5 = "Barge_Door"
dataTable6 = "dlc_h4_Prep_FC_Sounds"
dataTable4[1] = dataTable5
dataTable4[2] = dataTable6
dataTable5 = {}
dataTable6 = "Barge_Door_Glass"
dataTable7 = "dlc_h4_Prep_FC_Sounds"
dataTable5[1] = dataTable6
dataTable5[2] = dataTable7
dataTable6 = {}
dataTable7 = "Barge_Door_Metal"
dataTable = "dlc_h4_Prep_FC_Sounds"
dataTable6[1] = dataTable7
dataTable6[2] = dataTable
dataTable7 = {}
dataTable = "Barge_Door_Metal_Bars"
rageUiCall2 = "dlc_h4_Prep_FC_Sounds"
dataTable7[1] = dataTable
dataTable7[2] = rageUiCall2
dataTable = {}
rageUiCall2 = "car_crushed"
textValue = "dlc_vw_body_disposal_sounds"
dataTable[1] = rageUiCall2
dataTable[2] = textValue
rageUiCall2 = {}
textValue = "Drill_Pin_Break"
textValue3 = "DLC_HEIST_FLEECA_SOUNDSET"
rageUiCall2[1] = textValue
rageUiCall2[2] = textValue3
dataTable3[1] = dataTable4
dataTable3[2] = dataTable5
dataTable3[3] = dataTable6
dataTable3[4] = dataTable7
dataTable3[5] = dataTable
dataTable3[6] = rageUiCall2
dataTable4 = {}
dataTable5 = false
dataTable6 = RMenu
dataTable6 = dataTable6.Add
dataTable7 = "blackmarket"
dataTable = "mainmenu"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue = ""
textValue3 = "Black Market"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
textValue4 = "cmg_gunstoreui"
textValue5 = "cmg_gunstoreui"
rageUiCall2, textValue, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5, flag4, numberValue, numberValue2, numberValue3, numberValue4, flag5, flag6 = rageUiCall2(textValue, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5)
dataTable6(dataTable7, dataTable, rageUiCall2, textValue, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5, flag4, numberValue, numberValue2, numberValue3, numberValue4, flag5, flag6)
dataTable6 = RageUI
dataTable6 = dataTable6.CreateWhile
dataTable7 = 1.0
dataTable = RMenu
rageUiCall2 = dataTable
dataTable = dataTable.Get
textValue = "blackmarket"
textValue3 = "mainmenu"
-- Beginner: result below is menu.
dataTable = dataTable(rageUiCall2, textValue, textValue3)
rageUiCall2 = nil
function textValue()
  local arg1, workValue2, flag7, flag8, flag9, textValue7, numberValue7
  arg1 = RageUI
  arg1 = arg1.IsVisible
  workValue2 = RMenu
  flag7 = workValue2
  workValue2 = workValue2.Get
  flag8 = "blackmarket"
  flag9 = "mainmenu"
  -- Beginner: result below is menu.
  workValue2 = workValue2(flag7, flag8, flag9)
  flag7 = true
  flag8 = false
  flag9 = true
  function textValue7()
    local rageUiCall, tableHelper, workValue3, workValue4, workValue5, workValue6, workValue8, rageUiCall5, stringHelper2, stringHelper3, dataTable2, stringHelper, textValue2, workValue
    rageUiCall = dataTable4
    rageUiCall = #rageUiCall
    if 0 == rageUiCall then
      rageUiCall = RageUI
      rageUiCall = rageUiCall.Separator
      tableHelper = "~r~No suitable weapons to sell."
      rageUiCall(tableHelper)
      return
    end
    rageUiCall = pairs
    tableHelper = dataTable4
    rageUiCall, tableHelper, workValue3, workValue4 = rageUiCall(tableHelper)
    for workValue5, workValue6 in rageUiCall, tableHelper, workValue3, workValue4 do
      workValue8 = getMoneyStringFormatted
      rageUiCall5 = workValue6.price
      workValue8 = workValue8(rageUiCall5)
      rageUiCall5 = RageUI
      rageUiCall5 = rageUiCall5.ButtonWithStyle
      stringHelper2 = string
      stringHelper2 = stringHelper2.format
      stringHelper3 = "1x %s"
      dataTable2 = workValue6.name
      stringHelper2 = stringHelper2(stringHelper3, dataTable2)
      stringHelper3 = string
      stringHelper3 = stringHelper3.format
      dataTable2 = "You can sell this weapon to the black market dealer for \194\163%s."
      stringHelper = workValue8
      stringHelper3 = stringHelper3(dataTable2, stringHelper)
      dataTable2 = {}
      stringHelper = string
      stringHelper = stringHelper.format
      textValue2 = "\194\163%s"
      workValue = workValue8
      stringHelper = stringHelper(textValue2, workValue)
      dataTable2.RightLabel = stringHelper
      stringHelper = true
      function textValue2(arg12, arg2, arg3)
        local serverEventCall, textValue6, workValue7
        if arg3 then
          serverEventCall = TriggerServerEvent
          textValue6 = "d40f11439b"
          workValue7 = workValue6.itemId
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d40f11439b".
          serverEventCall(textValue6, workValue7)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall5(stringHelper2, stringHelper3, dataTable2, stringHelper, textValue2)
    end
  end
  function numberValue7()
    local rageUiCall, tableHelper
  end
  arg1(workValue2, flag7, flag8, flag9, textValue7, numberValue7)
end
dataTable6(dataTable7, dataTable, rageUiCall2, textValue)
dataTable6 = RegisterNetEvent
dataTable7 = "63e6207926"
-- Beginner: this function handles network event "63e6207926".
function dataTable(arg1)
  local workValue2
  dataTable4 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "63e6207926".
dataTable6(dataTable7, dataTable)
dataTable6 = RegisterNetEvent
dataTable7 = "ddcce5225d"
-- Beginner: this function handles network event "ddcce5225d".
function dataTable()
  local arg1, workValue2, flag7, flag8, flag9, textValue7, numberValue7, flag10, numberValue8, flag11, flag, flag2, flag3
  arg1 = CMG
  arg1 = arg1.setPlayerCombatTimer
  workValue2 = 60
  flag7 = false
  arg1(workValue2, flag7)
  arg1 = Citizen
  arg1 = arg1.CreateThread
  -- Beginner: this function handles network event "ddcce5225d".
  function workValue2()
    local rageUiCall, tableHelper, workValue3, workValue4, workValue5
    rageUiCall = CMG
    rageUiCall = rageUiCall.startCircularProgressBar
    tableHelper = ""
    workValue3 = numberValue5
    workValue4 = nil
    function workValue5()
      local arg12, arg2
    end
    rageUiCall(tableHelper, workValue3, workValue4, workValue5)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(workValue2)
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  workValue2 = CMG
  workValue2 = workValue2.loadAnimDict
  flag7 = "mp_common"
  -- Beginner: Load a GTA animation dictionary before using it.
  workValue2(flag7)
  workValue2 = TaskPlayAnim
  flag7 = arg1
  flag8 = "mp_common"
  flag9 = "givetake1_a"
  textValue7 = 8.0
  numberValue7 = 8.0
  flag10 = -1
  numberValue8 = 1
  flag11 = 0
  flag = false
  flag2 = false
  flag3 = false
  -- Beginner: Play an animation on a ped.
  workValue2(flag7, flag8, flag9, textValue7, numberValue7, flag10, numberValue8, flag11, flag, flag2, flag3)
  workValue2 = RemoveAnimDict
  flag7 = "mp_common"
  workValue2(flag7)
  workValue2 = Wait
  flag7 = 100
  workValue2(flag7)
  workValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  workValue2 = workValue2()
  while true do
    flag7 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    flag7 = flag7()
    flag7 = flag7 - workValue2
    flag8 = numberValue5
    if flag7 > flag8 then
      flag7 = TriggerServerEvent
      flag8 = "b4a66c73e5"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b4a66c73e5".
      flag7(flag8)
      break
    end
    flag7 = tCMG
    flag7 = flag7.isInComa
    flag7 = flag7()
    if not flag7 then
      flag7 = IsEntityDead
      flag8 = arg1
      flag7 = flag7(flag8)
      if not flag7 then
        goto flow_label_65
      end
    end
    flag7 = TriggerServerEvent
    flag8 = "6a7451d0b3"
    flag7(flag8)
    flag7 = notify
    flag8 = "~r~You can not sell a weapon whilst dead."
    -- Beginner: Show a notification to the player.
    flag7(flag8)
    do break end
    ::flow_label_65::
    flag7 = CMG
    flag7 = flag7.getPlayerCoords
    -- Beginner: result below is playerCoords.
    flag7 = flag7()
    flag8 = vector3Builder
    flag7 = flag7 - flag8
    flag7 = #flag7
    if flag7 > 2.0 then
      flag7 = TriggerServerEvent
      flag8 = "6a7451d0b3"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6a7451d0b3".
      flag7(flag8)
      flag7 = notify
      flag8 = "~r~Failed to sell, you went too far away from the trader."
      -- Beginner: Show a notification to the player.
      flag7(flag8)
      break
    end
    flag7 = IsEntityPlayingAnim
    flag8 = arg1
    flag9 = "mp_common"
    textValue7 = "givetake1_a"
    numberValue7 = 3
    flag7 = flag7(flag8, flag9, textValue7, numberValue7)
    if not flag7 then
      flag7 = TriggerServerEvent
      flag8 = "6a7451d0b3"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6a7451d0b3".
      flag7(flag8)
      flag7 = notify
      flag8 = "~r~Failed to sell, cancelled the transaction."
      -- Beginner: Show a notification to the player.
      flag7(flag8)
      break
    end
    flag7 = Wait
    flag8 = 0
    flag7(flag8)
  end
  flag7 = StopAnimTask
  flag8 = arg1
  flag9 = "mp_common"
  textValue7 = "givetake1_a"
  numberValue7 = 1.0
  flag7(flag8, flag9, textValue7, numberValue7)
  flag7 = CMG
  flag7 = flag7.stopCircularProgressBar
  flag7()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ddcce5225d".
dataTable6(dataTable7, dataTable)
dataTable6 = RegisterNetEvent
dataTable7 = "d9bb4048a2"
-- Beginner: this function handles network event "d9bb4048a2".
function dataTable()
  local arg1, workValue2, flag7, flag8, flag9, textValue7, numberValue7, flag10, numberValue8, flag11, flag, flag2
  arg1 = dataTable5
  if arg1 then
    return
  end
  arg1 = true
  dataTable5 = arg1
  while true do
    arg1 = dataTable5
    if not arg1 then
      break
    end
    arg1 = GetSoundId
    -- Beginner: result below is soundHandle.
    arg1 = arg1()
    workValue2 = math
    workValue2 = workValue2.random
    flag7 = 1
    flag8 = dataTable3
    flag8 = #flag8
    workValue2 = workValue2(flag7, flag8)
    flag7 = dataTable3
    workValue2 = flag7[workValue2]
    flag7 = PlaySoundFromCoord
    flag8 = arg1
    flag9 = workValue2[1]
    textValue7 = vector3Builder.x
    numberValue7 = vector3Builder.y
    flag10 = vector3Builder.z
    numberValue8 = workValue2[2]
    flag11 = false
    flag = 50
    flag2 = false
    flag7(flag8, flag9, textValue7, numberValue7, flag10, numberValue8, flag11, flag, flag2)
    while true do
      flag7 = HasSoundFinished
      flag8 = arg1
      flag7 = flag7(flag8)
      if flag7 then
        break
      end
      flag7 = dataTable5
      if not flag7 then
        break
      end
      flag7 = Wait
      flag8 = 0
      flag7(flag8)
    end
    flag7 = StopSound
    flag8 = arg1
    flag7(flag8)
    flag7 = ReleaseSoundId
    flag8 = arg1
    flag7(flag8)
    flag7 = Wait
    flag8 = 1000
    flag7(flag8)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "d9bb4048a2".
dataTable6(dataTable7, dataTable)
dataTable6 = RegisterNetEvent
dataTable7 = "9db45c7371"
-- Beginner: this function handles network event "9db45c7371".
function dataTable()
  local arg1, workValue2
  arg1 = false
  dataTable5 = arg1
end
dataTable6(dataTable7, dataTable)
-- Beginner: this function handles network event "9db45c7371".
function dataTable6()
  local arg1, workValue2, flag7, flag8, flag9
  arg1 = table
  arg1 = arg1.clear
  workValue2 = dataTable4
  arg1(workValue2)
  arg1 = TriggerServerEvent
  workValue2 = "a645ab52a9"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "a645ab52a9".
  arg1(workValue2)
  arg1 = RageUI
  arg1 = arg1.Visible
  workValue2 = RMenu
  flag7 = workValue2
  workValue2 = workValue2.Get
  flag8 = "blackmarket"
  flag9 = "mainmenu"
  -- Beginner: result below is menu.
  workValue2 = workValue2(flag7, flag8, flag9)
  flag7 = true
  arg1(workValue2, flag7)
end
function dataTable7()
  local arg1, workValue2, flag7, flag8, flag9
  arg1 = RageUI
  arg1 = arg1.Visible
  workValue2 = RMenu
  flag7 = workValue2
  workValue2 = workValue2.Get
  flag8 = "blackmarket"
  flag9 = "mainmenu"
  -- Beginner: result below is menu.
  workValue2 = workValue2(flag7, flag8, flag9)
  flag7 = false
  arg1(workValue2, flag7)
end
dataTable = CMG
dataTable = dataTable.createArea
rageUiCall2 = "black_market_trader"
textValue = vector3Builder
textValue3 = 2.0
rageUiCall3 = 2.0
rageUiCall4 = dataTable6
textValue4 = dataTable7
function textValue5()
  local arg1, workValue2
end
-- Beginner: Create an interaction area around a world position.
dataTable(rageUiCall2, textValue, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5)
dataTable = tCMG
dataTable = dataTable.addMarker
rageUiCall2 = vector3Builder.x
textValue = vector3Builder.y
textValue3 = vector3Builder.z
rageUiCall3 = 0.7
rageUiCall4 = 0.7
textValue4 = 0.5
textValue5 = 255
flag4 = 0
numberValue = 0
numberValue2 = 125
numberValue3 = 50
numberValue4 = 29
flag5 = true
flag6 = true
-- Beginner: Create a world marker.
dataTable(rageUiCall2, textValue, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5, flag4, numberValue, numberValue2, numberValue3, numberValue4, flag5, flag6)
dataTable = CMG
dataTable = dataTable.createDynamicPed
rageUiCall2 = 275618457
textValue = vector4Builder.xyz
textValue3 = vector4Builder.w
rageUiCall3 = true
rageUiCall4 = "mini@strip_club@idles@bouncer@base"
textValue4 = "base"
textValue5 = 100
flag4 = false
function numberValue()
  local arg1, workValue2
end
dataTable(rageUiCall2, textValue, textValue3, rageUiCall3, rageUiCall4, textValue4, textValue5, flag4, numberValue)
dataTable = 0
function rageUiCall2()
  local arg1, workValue2, flag7, flag8, flag9, textValue7, numberValue7, flag10
  arg1 = CMG
  arg1 = arg1.loadModel
  workValue2 = numberValue6
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg1(workValue2)
  arg1 = CreateObjectNoOffset
  workValue2 = numberValue6
  flag7 = vector3Builder2.x
  flag8 = vector3Builder2.y
  flag9 = vector3Builder2.z
  textValue7 = false
  numberValue7 = false
  flag10 = false
  -- Beginner: result below is objectEntity.
  arg1 = arg1(workValue2, flag7, flag8, flag9, textValue7, numberValue7, flag10)
  dataTable = arg1
  arg1 = FreezeEntityPosition
  workValue2 = dataTable
  flag7 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg1(workValue2, flag7)
end
function textValue()
  local arg1, workValue2
  arg1 = dataTable
  if 0 ~= arg1 then
    arg1 = DeleteEntity
    workValue2 = dataTable
    -- Beginner: Delete a GTA entity.
    arg1(workValue2)
    arg1 = 0
    dataTable = arg1
  end
end
textValue3 = CMG
textValue3 = textValue3.createArea
rageUiCall3 = "black_market_table"
rageUiCall4 = vector3Builder2
textValue4 = 150.0
textValue5 = 150.0
flag4 = rageUiCall2
numberValue = textValue
function numberValue2()
  local arg1, workValue2
end
-- Beginner: Create an interaction area around a world position.
textValue3(rageUiCall3, rageUiCall4, textValue4, textValue5, flag4, numberValue, numberValue2)
textValue3 = AddEventHandler
rageUiCall3 = "onClientResourceStop"
-- Beginner: this function runs when client event "onClientResourceStop" fires.
function rageUiCall4(arg1)
  local workValue2
  workValue2 = GetCurrentResourceName
  workValue2 = workValue2()
  if workValue2 == arg1 then
    workValue2 = textValue
    workValue2()
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onClientResourceStop".
textValue3(rageUiCall3, rageUiCall4)