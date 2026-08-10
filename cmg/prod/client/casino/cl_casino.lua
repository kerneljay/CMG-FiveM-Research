--[[
    Beginner Guide: cl_casino.lua
    =============================

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
    BEGINNER GUIDE — Casino
    =======================

    File: cmg/prod/client/casino/cl_casino.lua
    Purpose: This file contains FiveM client/resource logic.

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

    Network/hash identifiers found: 5
      They are intentionally left unchanged because matching server code may use them.
      * 4d7b29b4ae
      * 073b36674c
      * bf8af3c254
      * 66d19507ca
      * e0f84c33a1

    Named framework/network events found:
      * CMG:onClientSpawn

]]
local flag, vector3Builder, dataTable, dataTable2, vector3Builder2, vector3Builder3, vector3Builder4, vector3Builder5, vector3Builder6, numberValue4, textValue, textValue2, rageUiCall2, textValue3, rageUiCall3, textValue4, textValue5
flag = false
vector3Builder = vector3
dataTable = 967.20806884766
dataTable2 = 36.561210632324
vector3Builder2 = 80.994140625
vector3Builder = vector3Builder(dataTable, dataTable2, vector3Builder2)
dataTable = {}
dataTable2 = {}
vector3Builder2 = vector3
vector3Builder3 = 948.56213378906
vector3Builder4 = 64.546142578125
vector3Builder5 = 81.000633239746
vector3Builder2 = vector3Builder2(vector3Builder3, vector3Builder4, vector3Builder5)
dataTable2.position = vector3Builder2
dataTable2.model = 112404821
dataTable2.radius = 5.0
vector3Builder2 = {}
vector3Builder3 = vector3
vector3Builder4 = 994.34631347656
vector3Builder5 = 60.418537139893
vector3Builder6 = 81.00057220459
vector3Builder3 = vector3Builder3(vector3Builder4, vector3Builder5, vector3Builder6)
vector3Builder2.position = vector3Builder3
vector3Builder2.model = -1728077103
vector3Builder2.radius = 10.0
vector3Builder3 = {}
vector3Builder4 = vector3
vector3Builder5 = 994.34631347656
vector3Builder6 = 60.418537139893
numberValue4 = 81.00057220459
vector3Builder4 = vector3Builder4(vector3Builder5, vector3Builder6, numberValue4)
vector3Builder3.position = vector3Builder4
vector3Builder3.model = 618005505
vector3Builder3.radius = 10.0
vector3Builder4 = {}
vector3Builder5 = vector3
vector3Builder6 = 987.63366699219
numberValue4 = 75.79020690918
textValue = 81.000640869141
vector3Builder5 = vector3Builder5(vector3Builder6, numberValue4, textValue)
vector3Builder4.position = vector3Builder5
vector3Builder4.model = 618005505
vector3Builder4.radius = 10.0
vector3Builder5 = {}
vector3Builder6 = vector3
numberValue4 = 937.54364
textValue = 35.660938
textValue2 = 79.985603
vector3Builder6 = vector3Builder6(numberValue4, textValue, textValue2)
vector3Builder5.position = vector3Builder6
vector3Builder5.model = 618005505
vector3Builder5.radius = 2.5
dataTable[1] = dataTable2
dataTable[2] = vector3Builder2
dataTable[3] = vector3Builder3
dataTable[4] = vector3Builder4
dataTable[5] = vector3Builder5
function dataTable2()
  local arg1, arg2, flag4, flag5, flag6, textValue8, numberValue3, position2, position3, position4, position, numberValue, flag2
  arg1 = flag
  if arg1 then
    arg1 = tCMG
    arg1 = arg1.setCanAnim
    arg2 = true
    arg1(arg2)
    arg1 = false
    flag = arg1
    arg1 = ipairs
    arg2 = dataTable
    arg1, arg2, flag4, flag5 = arg1(arg2)
    for flag6, textValue8 in arg1, arg2, flag4, flag5 do
      numberValue3 = RemoveModelHide
      position2 = textValue8.position
      position2 = position2.x
      position3 = textValue8.position
      position3 = position3.y
      position4 = textValue8.position
      position4 = position4.z
      position = textValue8.radius
      numberValue = textValue8.model
      flag2 = false
      numberValue3(position2, position3, position4, position, numberValue, flag2)
    end
  end
end
function vector3Builder2()
  local arg1, arg2, flag4, flag5, flag6, textValue8, numberValue3, position2, position3, position4, position, numberValue, flag2, flag3
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetRoomKeyFromEntity
  flag4 = arg1
  arg2 = arg2(flag4)
  if 0 == arg2 then
    arg2 = dataTable2
    arg2()
  else
    arg2 = flag
    if not arg2 then
      arg2 = TriggerEvent
      flag4 = "4d7b29b4ae"
      -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "4d7b29b4ae".
      arg2(flag4)
      arg2 = tCMG
      arg2 = arg2.setCanAnim
      flag4 = false
      arg2(flag4)
      arg2 = ipairs
      flag4 = dataTable
      arg2, flag4, flag5, flag6 = arg2(flag4)
      for textValue8, numberValue3 in arg2, flag4, flag5, flag6 do
        position2 = CreateModelHide
        position3 = numberValue3.position
        position3 = position3.x
        position4 = numberValue3.position
        position4 = position4.y
        position = numberValue3.position
        position = position.z
        numberValue = numberValue3.radius
        flag2 = numberValue3.model
        flag3 = false
        position2(position3, position4, position, numberValue, flag2, flag3)
      end
      arg2 = true
      flag = arg2
    end
  end
end
vector3Builder3 = AddEventHandler
vector3Builder4 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function vector3Builder5(arg1, arg2)
  local flag4, flag5, flag6, textValue8, numberValue3, position2, position3, position4, position
  if arg2 then
    flag4 = CMG
    flag4 = flag4.createArea
    flag5 = "diamondcasino"
    flag6 = vector3Builder
    textValue8 = 100.0
    numberValue3 = 20
    -- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
    function position2()
      local rageUiCall, textValue6
    end
    position3 = dataTable2
    position4 = vector3Builder2
    position = {}
    -- Beginner: Create an interaction area around a world position.
    flag4(flag5, flag6, textValue8, numberValue3, position2, position3, position4, position)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
vector3Builder3(vector3Builder4, vector3Builder5)
vector3Builder3 = CMG
function vector3Builder4()
  local arg1, arg2
  arg1 = flag
  return arg1
end
vector3Builder3.isInsideDiamondCasino = vector3Builder4
vector3Builder3 = RegisterNetEvent
vector3Builder4 = "073b36674c"
-- Beginner: this function handles network event "073b36674c".
function vector3Builder5()
  local arg1, arg2
  arg1 = SendNUIMessage
  arg2 = {}
  arg2.transactionType = "playCasinoWin"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "073b36674c".
vector3Builder3(vector3Builder4, vector3Builder5)
vector3Builder3 = RegisterNetEvent
vector3Builder4 = "bf8af3c254"
-- Beginner: this function handles network event "bf8af3c254".
function vector3Builder5()
  local arg1, arg2
  arg1 = SendNUIMessage
  arg2 = {}
  arg2.transactionType = "playCasinoLose"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg1(arg2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "bf8af3c254".
vector3Builder3(vector3Builder4, vector3Builder5)
vector3Builder3 = RMenu
vector3Builder3 = vector3Builder3.Add
vector3Builder4 = "cmg_threecardpoker"
vector3Builder5 = "instructions"
vector3Builder6 = RageUI
vector3Builder6 = vector3Builder6.CreateMenu
numberValue4 = ""
textValue = ""
textValue2 = 0
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuHeight
rageUiCall2 = rageUiCall2()
textValue3 = "casinoui_cards_three"
rageUiCall3 = "casinoui_cards_three"
vector3Builder6, numberValue4, textValue, textValue2, rageUiCall2, textValue3, rageUiCall3, textValue4, textValue5 = vector3Builder6(numberValue4, textValue, textValue2, rageUiCall2, textValue3, rageUiCall3)
vector3Builder3(vector3Builder4, vector3Builder5, vector3Builder6, numberValue4, textValue, textValue2, rageUiCall2, textValue3, rageUiCall3, textValue4, textValue5)
vector3Builder3 = RMenu
vector3Builder4 = vector3Builder3
vector3Builder3 = vector3Builder3.Get
vector3Builder5 = "cmg_threecardpoker"
vector3Builder6 = "instructions"
-- Beginner: result below is menu.
vector3Builder3 = vector3Builder3(vector3Builder4, vector3Builder5, vector3Builder6)
vector3Builder4 = vector3Builder3
vector3Builder3 = vector3Builder3.SetSubtitle
vector3Builder5 = "~b~Three Card Poker Results"
vector3Builder3(vector3Builder4, vector3Builder5)
vector3Builder3 = "..."
vector3Builder4 = RageUI
vector3Builder4 = vector3Builder4.CreateWhile
vector3Builder5 = 1.0
vector3Builder6 = RMenu
numberValue4 = vector3Builder6
vector3Builder6 = vector3Builder6.Get
textValue = "cmg_threecardpoker"
textValue2 = "instructions"
-- Beginner: result below is menu.
vector3Builder6 = vector3Builder6(numberValue4, textValue, textValue2)
numberValue4 = nil
function textValue()
  local arg1, arg2, flag4, flag5, flag6, textValue8, numberValue3
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag5 = "cmg_threecardpoker"
  flag6 = "instructions"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag5, flag6)
  flag4 = true
  flag5 = true
  flag6 = true
  function textValue8()
    local rageUiCall, textValue6, cmgCall, dataTable3, flag7, workValue, workValue2, workValue3, textValue9, textValue10
    rageUiCall = RageUI
    rageUiCall = rageUiCall.FakeButtonWithStyle
    textValue6 = ""
    cmgCall = vector3Builder3
    dataTable3 = {}
    dataTable3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag7 = true
    function workValue(arg12, arg22, arg3)
    end
    workValue2 = RMenu
    workValue3 = workValue2
    workValue2 = workValue2.Get
    textValue9 = "cmg_threecardpoker"
    textValue10 = "instructions"
    workValue2, workValue3, textValue9, textValue10 = workValue2(workValue3, textValue9, textValue10)
    rageUiCall(textValue6, cmgCall, dataTable3, flag7, workValue, workValue2, workValue3, textValue9, textValue10)
  end
  function numberValue3()
    local rageUiCall, textValue6
  end
  arg1(arg2, flag4, flag5, flag6, textValue8, numberValue3)
end
vector3Builder4(vector3Builder5, vector3Builder6, numberValue4, textValue)
vector3Builder4 = RegisterNetEvent
vector3Builder5 = "66d19507ca"
-- Beginner: this function handles network event "66d19507ca".
function vector3Builder6(arg1)
  local arg2, flag4, flag5, flag6, textValue8
  vector3Builder3 = arg1
  arg2 = RageUI
  arg2 = arg2.Visible
  flag4 = RMenu
  flag5 = flag4
  flag4 = flag4.Get
  flag6 = "cmg_threecardpoker"
  textValue8 = "instructions"
  -- Beginner: result below is menu.
  flag4 = flag4(flag5, flag6, textValue8)
  flag5 = true
  arg2(flag4, flag5)
  arg2 = SetTimeout
  flag4 = 6000
  function flag5()
    local rageUiCall, textValue6, cmgCall, dataTable3, flag7
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Visible
    textValue6 = RMenu
    cmgCall = textValue6
    textValue6 = textValue6.Get
    dataTable3 = "cmg_threecardpoker"
    flag7 = "instructions"
    -- Beginner: result below is menu.
    textValue6 = textValue6(cmgCall, dataTable3, flag7)
    cmgCall = false
    rageUiCall(textValue6, cmgCall)
    rageUiCall = "Pending"
    vector3Builder3 = rageUiCall
  end
  arg2(flag4, flag5)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "66d19507ca".
vector3Builder4(vector3Builder5, vector3Builder6)
vector3Builder4 = vector3
vector3Builder5 = 965.10760498047
vector3Builder6 = 22.450706481934
numberValue4 = 80.00611114502
vector3Builder4 = vector3Builder4(vector3Builder5, vector3Builder6, numberValue4)
vector3Builder5 = RMenu
vector3Builder5 = vector3Builder5.Add
vector3Builder6 = "cmg_managecasino"
numberValue4 = "cmg_managecasino"
textValue = RageUI
textValue = textValue.CreateMenu
textValue2 = ""
rageUiCall2 = ""
textValue3 = 0
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
textValue4 = "shopui_title_casino"
textValue5 = "shopui_title_casino"
textValue, textValue2, rageUiCall2, textValue3, rageUiCall3, textValue4, textValue5 = textValue(textValue2, rageUiCall2, textValue3, rageUiCall3, textValue4, textValue5)
vector3Builder5(vector3Builder6, numberValue4, textValue, textValue2, rageUiCall2, textValue3, rageUiCall3, textValue4, textValue5)
vector3Builder5 = RMenu
vector3Builder6 = vector3Builder5
vector3Builder5 = vector3Builder5.Get
numberValue4 = "cmg_managecasino"
textValue = "cmg_managecasino"
-- Beginner: result below is menu.
vector3Builder5 = vector3Builder5(vector3Builder6, numberValue4, textValue)
vector3Builder6 = vector3Builder5
vector3Builder5 = vector3Builder5.SetSubtitle
numberValue4 = "~b~Casino Management"
vector3Builder5(vector3Builder6, numberValue4)
vector3Builder5 = RageUI
vector3Builder5 = vector3Builder5.CreateWhile
vector3Builder6 = 1.0
numberValue4 = RMenu
textValue = numberValue4
numberValue4 = numberValue4.Get
textValue2 = "cmg_managecasino"
rageUiCall2 = "cmg_managecasino"
-- Beginner: result below is menu.
numberValue4 = numberValue4(textValue, textValue2, rageUiCall2)
textValue = nil
function textValue2()
  local arg1, arg2, flag4, flag5, flag6, textValue8, numberValue3
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  flag4 = arg2
  arg2 = arg2.Get
  flag5 = "cmg_managecasino"
  flag6 = "cmg_managecasino"
  -- Beginner: result below is menu.
  arg2 = arg2(flag4, flag5, flag6)
  flag4 = true
  flag5 = true
  flag6 = true
  function textValue8()
    local rageUiCall, textValue6, cmgCall, dataTable3, flag7, workValue, workValue2, workValue3, textValue9, textValue10
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Separator
    textValue6 = "Current Podium Car: "
    cmgCall = CMG
    cmgCall = cmgCall.getPodiumVehicle
    cmgCall = cmgCall()
    textValue6 = textValue6 .. cmgCall
    rageUiCall(textValue6)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue6 = "Set new podium car"
    cmgCall = ""
    dataTable3 = {}
    flag7 = true
    function workValue(arg12, arg22, arg3)
      local serverEventCall, textValue7
      if arg3 then
        serverEventCall = TriggerServerEvent
        textValue7 = "e0f84c33a1"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "e0f84c33a1".
        serverEventCall(textValue7)
      end
    end
    workValue2 = RMenu
    workValue3 = workValue2
    workValue2 = workValue2.Get
    textValue9 = "cmg_managecasino"
    textValue10 = "cmg_managecasino"
    workValue2, workValue3, textValue9, textValue10 = workValue2(workValue3, textValue9, textValue10)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue6, cmgCall, dataTable3, flag7, workValue, workValue2, workValue3, textValue9, textValue10)
    rageUiCall = CMG
    rageUiCall = rageUiCall.drawPaycheckButtonForCasinoOwner
    rageUiCall()
  end
  function numberValue3()
    local rageUiCall, textValue6
  end
  arg1(arg2, flag4, flag5, flag6, textValue8, numberValue3)
end
vector3Builder5(vector3Builder6, numberValue4, textValue, textValue2)
vector3Builder5 = Citizen
vector3Builder5 = vector3Builder5.CreateThread
function vector3Builder6()
  local arg1, arg2, flag4, flag5, flag6, textValue8, numberValue3, position2, position3, position4, position, numberValue, flag2, flag3, numberValue2
  function arg1()
    local rageUiCall, textValue6, cmgCall, dataTable3, flag7
    rageUiCall = CMG
    rageUiCall = rageUiCall.getClientUserId
    -- Beginner: result below is userId.
    rageUiCall = rageUiCall()
    if 1 ~= rageUiCall then
      rageUiCall = CMG
      rageUiCall = rageUiCall.getClientUserId
      -- Beginner: result below is userId.
      rageUiCall = rageUiCall()
      if 71 ~= rageUiCall then
        goto flow_label_20
      end
    end
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Visible
    textValue6 = RMenu
    cmgCall = textValue6
    textValue6 = textValue6.Get
    dataTable3 = "cmg_managecasino"
    flag7 = "cmg_managecasino"
    -- Beginner: result below is menu.
    textValue6 = textValue6(cmgCall, dataTable3, flag7)
    cmgCall = true
    rageUiCall(textValue6, cmgCall)
    ::flow_label_20::
  end
  function arg2()
    local rageUiCall, textValue6, cmgCall, dataTable3, flag7
    rageUiCall = CMG
    rageUiCall = rageUiCall.getClientUserId
    -- Beginner: result below is userId.
    rageUiCall = rageUiCall()
    if 1 ~= rageUiCall then
      rageUiCall = CMG
      rageUiCall = rageUiCall.getClientUserId
      -- Beginner: result below is userId.
      rageUiCall = rageUiCall()
      if 71 ~= rageUiCall then
        goto flow_label_20
      end
    end
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Visible
    textValue6 = RMenu
    cmgCall = textValue6
    textValue6 = textValue6.Get
    dataTable3 = "cmg_managecasino"
    flag7 = "cmg_managecasino"
    -- Beginner: result below is menu.
    textValue6 = textValue6(cmgCall, dataTable3, flag7)
    cmgCall = false
    rageUiCall(textValue6, cmgCall)
    ::flow_label_20::
  end
  flag4 = tCMG
  flag4 = flag4.addMarker
  flag5 = vector3Builder4.x
  flag6 = vector3Builder4.y
  textValue8 = vector3Builder4.z
  numberValue3 = 1.0
  position2 = 1.0
  position3 = 1.0
  position4 = 0
  position = 255
  numberValue = 50
  flag2 = 170
  flag3 = 50
  numberValue2 = 27
  -- Beginner: Create a world marker.
  flag4(flag5, flag6, textValue8, numberValue3, position2, position3, position4, position, numberValue, flag2, flag3, numberValue2)
  flag4 = CMG
  flag4 = flag4.createArea
  flag5 = "cmg_managecasino"
  flag6 = vector3Builder4
  textValue8 = 1.5
  numberValue3 = 5.0
  position2 = arg1
  position3 = arg2
  position4 = nil
  position = nil
  -- Beginner: Create an interaction area around a world position.
  flag4(flag5, flag6, textValue8, numberValue3, position2, position3, position4, position)
  flag4 = CMG
  flag4 = flag4.createNoVehicleZone
  flag5 = vector3
  flag6 = 967.20806884766
  textValue8 = 36.561210632324
  numberValue3 = 80.994140625
  flag5 = flag5(flag6, textValue8, numberValue3)
  flag6 = 80.0
  textValue8 = true
  flag4(flag5, flag6, textValue8)
  flag4 = CMG
  flag4 = flag4.createNoVehicleOverrideZone
  flag5 = vector3
  flag6 = 940.56695556641
  textValue8 = 8.0352802276611
  numberValue3 = 78.794975280762
  flag5 = flag5(flag6, textValue8, numberValue3)
  flag6 = 20.0
  flag4(flag5, flag6)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
vector3Builder5(vector3Builder6)