--[[
    Beginner Guide: cl_purge.lua
    ============================

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
    BEGINNER GUIDE — Purge
    ======================

    File: cmg/prod/client/crime/cl_purge.lua
    Purpose: This file contains crime/gang/heist gameplay.

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

    Config/data used:
      * cfg/cfg_purge

    Network/hash identifiers found: 17
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * Main Menu
      * Purchase Vehicles
      * Press [E] to exit
      * Press [E] to enter
      * Press ~INPUT_CONTEXT~ to leave purge

]]
local cmgCall, textValue8, flag10, dataTable4, vector3Builder3, numberValue14, numberValue16, cmgCall4, workValue8, textValue17, textValue, rageUiCall, textValue2, textValue3, rageUiCall2, rageUiCall3, textValue5, workValue3, numberValue2, textValue7, textValue9, workValue4, eventRegistration, textValue10, numberValue7, cmgCall2, dataTable2, dataTable3, vector3Builder, vector3Builder2, numberValue9, numberValue10, numberValue11, workValue7, eventRegistration2, eventRegistration3, cmgCall3, textValue11, textValue12, textValue13, textValue14, textValue15
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue8 = "cfg/cfg_purge"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue8)
function textValue8()
  local arg1, mathHelper, flag11, numberValue12
  arg1 = cmgCall.randomSpawnpoints
  mathHelper = math
  mathHelper = mathHelper.random
  flag11 = 1
  numberValue12 = cmgCall.randomSpawnpoints
  numberValue12 = #numberValue12
  mathHelper = mathHelper(flag11, numberValue12)
  arg1 = arg1[mathHelper]
  return arg1
end
flag10 = false
dataTable4 = {}
vector3Builder3 = vector3
numberValue14 = 0.0
numberValue16 = 0.0
cmgCall4 = 0.0
vector3Builder3 = vector3Builder3(numberValue14, numberValue16, cmgCall4)
numberValue14 = 0
numberValue16 = 0
cmgCall4 = CMG
function workValue8()
  local arg1, mathHelper
  arg1 = flag10
  return arg1
end
cmgCall4.hasSpawnProtection = workValue8
function cmgCall4()
  local arg1, mathHelper, flag11
  arg1 = true
  flag10 = arg1
  arg1 = SetTimeout
  mathHelper = 20000
  function flag11()
    local arg12, arg2
    arg12 = false
    flag10 = arg12
  end
  arg1(mathHelper, flag11)
  arg1 = Citizen
  arg1 = arg1.CreateThread
  function mathHelper()
    local arg12, arg2, arg3, flag12, flag14, flag15, flag17, stringHelper2, rageUiCall5, flag20
    arg12 = SetLocalPlayerAsGhost
    arg2 = true
    arg12(arg2)
    while true do
      arg12 = flag10
      if not arg12 then
        break
      end
      arg12 = SetEntityProofs
      arg2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = true
      flag12 = true
      flag14 = true
      flag15 = true
      flag17 = true
      stringHelper2 = true
      rageUiCall5 = true
      flag20 = true
      arg12(arg2, arg3, flag12, flag14, flag15, flag17, stringHelper2, rageUiCall5, flag20)
      arg12 = SetEntityAlpha
      arg2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = 100
      flag12 = false
      arg12(arg2, arg3, flag12)
      arg12 = SetEntityHealth
      arg2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      arg3 = 200
      arg12(arg2, arg3)
      arg12 = Wait
      arg2 = 0
      arg12(arg2)
    end
    arg12 = SetEntityAlpha
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = 255
    flag12 = false
    arg12(arg2, arg3, flag12)
    arg12 = SetLocalPlayerAsGhost
    arg2 = false
    arg12(arg2)
    arg12 = ResetGhostedEntityAlpha
    arg12()
    arg12 = tCMG
    arg12 = arg12.notify
    arg2 = "~g~Spawn protection ended!"
    -- Beginner: Show a notification to the player.
    arg12(arg2)
    arg12 = SetEntityProofs
    arg2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg2 = arg2()
    arg3 = false
    flag12 = false
    flag14 = false
    flag15 = false
    flag17 = false
    stringHelper2 = false
    rageUiCall5 = false
    flag20 = false
    arg12(arg2, arg3, flag12, flag14, flag15, flag17, stringHelper2, rageUiCall5, flag20)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg1(mathHelper)
end
workValue8 = RMenu
workValue8 = workValue8.Add
textValue17 = "purge"
textValue = "main"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue2 = "Spawnpoint"
textValue3 = "Main Menu"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3, textValue5, workValue3, numberValue2, textValue7, textValue9, workValue4, eventRegistration, textValue10, numberValue7, cmgCall2, dataTable2, dataTable3, vector3Builder, vector3Builder2, numberValue9, numberValue10, numberValue11, workValue7, eventRegistration2, eventRegistration3, cmgCall3, textValue11, textValue12, textValue13, textValue14, textValue15 = rageUiCall3()
rageUiCall, textValue2, textValue3, rageUiCall2, rageUiCall3, textValue5, workValue3, numberValue2, textValue7, textValue9, workValue4, eventRegistration, textValue10, numberValue7, cmgCall2, dataTable2, dataTable3, vector3Builder, vector3Builder2, numberValue9, numberValue10, numberValue11, workValue7, eventRegistration2, eventRegistration3, cmgCall3, textValue11, textValue12, textValue13, textValue14, textValue15 = rageUiCall(textValue2, textValue3, rageUiCall2, rageUiCall3, textValue5, workValue3, numberValue2, textValue7, textValue9, workValue4, eventRegistration, textValue10, numberValue7, cmgCall2, dataTable2, dataTable3, vector3Builder, vector3Builder2, numberValue9, numberValue10, numberValue11, workValue7, eventRegistration2, eventRegistration3, cmgCall3, textValue11, textValue12, textValue13, textValue14, textValue15)
workValue8(textValue17, textValue, rageUiCall, textValue2, textValue3, rageUiCall2, rageUiCall3, textValue5, workValue3, numberValue2, textValue7, textValue9, workValue4, eventRegistration, textValue10, numberValue7, cmgCall2, dataTable2, dataTable3, vector3Builder, vector3Builder2, numberValue9, numberValue10, numberValue11, workValue7, eventRegistration2, eventRegistration3, cmgCall3, textValue11, textValue12, textValue13, textValue14, textValue15)
workValue8 = RMenu
workValue8 = workValue8.Add
textValue17 = "purge"
textValue = "vehicles"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue2 = ""
textValue3 = "Purchase Vehicles"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3, textValue5, workValue3, numberValue2, textValue7, textValue9, workValue4, eventRegistration, textValue10, numberValue7, cmgCall2, dataTable2, dataTable3, vector3Builder, vector3Builder2, numberValue9, numberValue10, numberValue11, workValue7, eventRegistration2, eventRegistration3, cmgCall3, textValue11, textValue12, textValue13, textValue14, textValue15 = rageUiCall3()
rageUiCall, textValue2, textValue3, rageUiCall2, rageUiCall3, textValue5, workValue3, numberValue2, textValue7, textValue9, workValue4, eventRegistration, textValue10, numberValue7, cmgCall2, dataTable2, dataTable3, vector3Builder, vector3Builder2, numberValue9, numberValue10, numberValue11, workValue7, eventRegistration2, eventRegistration3, cmgCall3, textValue11, textValue12, textValue13, textValue14, textValue15 = rageUiCall(textValue2, textValue3, rageUiCall2, rageUiCall3, textValue5, workValue3, numberValue2, textValue7, textValue9, workValue4, eventRegistration, textValue10, numberValue7, cmgCall2, dataTable2, dataTable3, vector3Builder, vector3Builder2, numberValue9, numberValue10, numberValue11, workValue7, eventRegistration2, eventRegistration3, cmgCall3, textValue11, textValue12, textValue13, textValue14, textValue15)
workValue8(textValue17, textValue, rageUiCall, textValue2, textValue3, rageUiCall2, rageUiCall3, textValue5, workValue3, numberValue2, textValue7, textValue9, workValue4, eventRegistration, textValue10, numberValue7, cmgCall2, dataTable2, dataTable3, vector3Builder, vector3Builder2, numberValue9, numberValue10, numberValue11, workValue7, eventRegistration2, eventRegistration3, cmgCall3, textValue11, textValue12, textValue13, textValue14, textValue15)
workValue8 = vector3
textValue17 = -1011.0608520508
textValue = -2973.7270507812
rageUiCall = 13.951969146729
workValue8 = workValue8(textValue17, textValue, rageUiCall)
textValue17 = false
textValue = nil
rageUiCall = nil
textValue2 = 0
function textValue3()
  local arg1, mathHelper, flag11, numberValue12, flag13, playerPed
  arg1 = textValue
  if arg1 then
    arg1 = DestroyCam
    mathHelper = textValue
    flag11 = false
    arg1(mathHelper, flag11)
    arg1 = nil
    textValue = arg1
  end
  arg1 = rageUiCall
  if arg1 then
    arg1 = DestroyCam
    mathHelper = rageUiCall
    flag11 = false
    arg1(mathHelper, flag11)
    arg1 = nil
    rageUiCall = arg1
  end
  arg1 = RenderScriptCams
  mathHelper = false
  flag11 = false
  numberValue12 = 0
  flag13 = true
  playerPed = false
  arg1(mathHelper, flag11, numberValue12, flag13, playerPed)
  arg1 = ClearFocus
  arg1()
  arg1 = TriggerScreenblurFadeOut
  mathHelper = 0.0
  arg1(mathHelper)
  arg1 = RageUI
  arg1 = arg1.Visible
  mathHelper = RMenu
  flag11 = mathHelper
  mathHelper = mathHelper.Get
  numberValue12 = "purge"
  flag13 = "main"
  -- Beginner: result below is menu.
  mathHelper = mathHelper(flag11, numberValue12, flag13)
  flag11 = false
  arg1(mathHelper, flag11)
  arg1 = ClearTimecycleModifier
  arg1()
  arg1 = TriggerEvent
  mathHelper = "0cee493655"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "0cee493655".
  arg1(mathHelper)
  arg1 = CMG
  arg1 = arg1.uiSetFocus
  mathHelper = false
  flag11 = false
  numberValue12 = false
  arg1(mathHelper, flag11, numberValue12)
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  mathHelper = SetEntityVisible
  flag11 = arg1
  numberValue12 = true
  flag13 = true
  mathHelper(flag11, numberValue12, flag13)
  mathHelper = FreezeEntityPosition
  flag11 = arg1
  numberValue12 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  mathHelper(flag11, numberValue12)
  mathHelper = SetPlayerControl
  flag11 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  flag11 = flag11()
  numberValue12 = true
  flag13 = 0
  mathHelper(flag11, numberValue12, flag13)
  mathHelper = CMG
  mathHelper = mathHelper.showAllDisplays
  flag11 = "purgespawn"
  mathHelper(flag11)
  mathHelper = CMG
  mathHelper = mathHelper.showHud
  mathHelper()
end
function rageUiCall2()
  local arg1, mathHelper, flag11, numberValue12
  arg1 = vector3
  mathHelper = -1011.0608520508
  flag11 = -2973.7270507812
  numberValue12 = 13.951969146729
  arg1 = arg1(mathHelper, flag11, numberValue12)
  workValue8 = arg1
  arg1 = true
  textValue17 = arg1
  arg1 = RageUI
  arg1 = arg1.CloseAll
  arg1()
end
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateWhile
textValue5 = 1.0
workValue3 = RMenu
numberValue2 = workValue3
workValue3 = workValue3.Get
textValue7 = "purge"
textValue9 = "main"
-- Beginner: result below is menu.
workValue3 = workValue3(numberValue2, textValue7, textValue9)
numberValue2 = nil
function textValue7()
  local arg1, mathHelper, flag11, numberValue12, flag13, playerPed, flag16
  arg1 = RageUI
  arg1 = arg1.IsVisible
  mathHelper = RMenu
  flag11 = mathHelper
  mathHelper = mathHelper.Get
  numberValue12 = "purge"
  flag13 = "main"
  -- Beginner: result below is menu.
  mathHelper = mathHelper(flag11, numberValue12, flag13)
  flag11 = true
  numberValue12 = true
  flag13 = true
  function playerPed()
    local arg12, arg2, arg3, flag12, flag14, flag15
    arg12 = RageUI
    arg12 = arg12.Button
    arg2 = "Random Spawnpoint"
    arg3 = ""
    flag12 = true
    function flag14(arg13, arg22, arg32)
      local rageUiCall4
      if arg32 then
        rageUiCall4 = true
        textValue17 = rageUiCall4
        rageUiCall4 = RageUI
        rageUiCall4 = rageUiCall4.CloseAll
        rageUiCall4()
      end
    end
    flag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg2, arg3, flag12, flag14, flag15)
    arg12 = RageUI
    arg12 = arg12.Button
    arg2 = "Heathrow Airport"
    arg3 = ""
    flag12 = true
    function flag14(arg13, arg22, arg32)
      local rageUiCall4
      if arg32 then
        rageUiCall4 = rageUiCall2
        rageUiCall4()
      end
    end
    flag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg2, arg3, flag12, flag14, flag15)
    arg12 = RageUI
    arg12 = arg12.Button
    arg2 = "Rebel Diner"
    arg3 = ""
    flag12 = true
    function flag14(arg13, arg22, arg32)
      local rageUiCall4, numberValue13, numberValue15, numberValue17
      if arg32 then
        rageUiCall4 = vector3
        numberValue13 = 1592.0364990234
        numberValue15 = 6441.91015625
        numberValue17 = 25.195180892944
        rageUiCall4 = rageUiCall4(numberValue13, numberValue15, numberValue17)
        workValue8 = rageUiCall4
        rageUiCall4 = true
        textValue17 = rageUiCall4
        rageUiCall4 = RageUI
        rageUiCall4 = rageUiCall4.CloseAll
        rageUiCall4()
      end
    end
    flag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg2, arg3, flag12, flag14, flag15)
    arg12 = RageUI
    arg12 = arg12.Button
    arg2 = "Lodges"
    arg3 = ""
    flag12 = true
    function flag14(arg13, arg22, arg32)
      local rageUiCall4, numberValue13, numberValue15, numberValue17
      if arg32 then
        rageUiCall4 = vector3
        numberValue13 = -730.63116455078
        numberValue15 = 5811.7763671875
        numberValue17 = 17.41862487793
        rageUiCall4 = rageUiCall4(numberValue13, numberValue15, numberValue17)
        workValue8 = rageUiCall4
        rageUiCall4 = true
        textValue17 = rageUiCall4
        rageUiCall4 = RageUI
        rageUiCall4 = rageUiCall4.CloseAll
        rageUiCall4()
      end
    end
    flag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg2, arg3, flag12, flag14, flag15)
    arg12 = RageUI
    arg12 = arg12.Button
    arg2 = "Sandy Airport"
    arg3 = ""
    flag12 = true
    function flag14(arg13, arg22, arg32)
      local rageUiCall4, numberValue13, numberValue15, numberValue17
      if arg32 then
        rageUiCall4 = vector3
        numberValue13 = 1754.6137695313
        numberValue15 = 3286.3181152344
        numberValue17 = 41.122856140137
        rageUiCall4 = rageUiCall4(numberValue13, numberValue15, numberValue17)
        workValue8 = rageUiCall4
        rageUiCall4 = true
        textValue17 = rageUiCall4
        rageUiCall4 = RageUI
        rageUiCall4 = rageUiCall4.CloseAll
        rageUiCall4()
      end
    end
    flag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg2, arg3, flag12, flag14, flag15)
    arg12 = RageUI
    arg12 = arg12.Button
    arg2 = "Jamestown"
    arg3 = ""
    flag12 = true
    function flag14(arg13, arg22, arg32)
      local rageUiCall4, numberValue13, numberValue15, numberValue17
      if arg32 then
        rageUiCall4 = vector3
        numberValue13 = 319.39431762695
        numberValue15 = -2028.3155517578
        numberValue17 = 20.698621749878
        rageUiCall4 = rageUiCall4(numberValue13, numberValue15, numberValue17)
        workValue8 = rageUiCall4
        rageUiCall4 = true
        textValue17 = rageUiCall4
        rageUiCall4 = RageUI
        rageUiCall4 = rageUiCall4.CloseAll
        rageUiCall4()
      end
    end
    flag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg2, arg3, flag12, flag14, flag15)
    arg12 = RageUI
    arg12 = arg12.Button
    arg2 = "Legion Square"
    arg3 = ""
    flag12 = true
    function flag14(arg13, arg22, arg32)
      local rageUiCall4, numberValue13, numberValue15, numberValue17
      if arg32 then
        rageUiCall4 = vector3
        numberValue13 = 187.81332397461
        numberValue15 = -952.79168701172
        numberValue17 = 30.09193611145
        rageUiCall4 = rageUiCall4(numberValue13, numberValue15, numberValue17)
        workValue8 = rageUiCall4
        rageUiCall4 = true
        textValue17 = rageUiCall4
        rageUiCall4 = RageUI
        rageUiCall4 = rageUiCall4.CloseAll
        rageUiCall4()
      end
    end
    flag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg2, arg3, flag12, flag14, flag15)
    arg12 = RageUI
    arg12 = arg12.Button
    arg2 = "Senora Highway"
    arg3 = ""
    flag12 = true
    function flag14(arg13, arg22, arg32)
      local rageUiCall4, numberValue13, numberValue15, numberValue17
      if arg32 then
        rageUiCall4 = vector3
        numberValue13 = 2784.3762207031
        numberValue15 = 3477.5239257813
        numberValue17 = 55.239120483398
        rageUiCall4 = rageUiCall4(numberValue13, numberValue15, numberValue17)
        workValue8 = rageUiCall4
        rageUiCall4 = true
        textValue17 = rageUiCall4
        rageUiCall4 = RageUI
        rageUiCall4 = rageUiCall4.CloseAll
        rageUiCall4()
      end
    end
    flag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg2, arg3, flag12, flag14, flag15)
    arg12 = RageUI
    arg12 = arg12.Button
    arg2 = "Shank Shop"
    arg3 = ""
    flag12 = true
    function flag14(arg13, arg22, arg32)
      local rageUiCall4, numberValue13, numberValue15, numberValue17
      if arg32 then
        rageUiCall4 = vector3
        numberValue13 = -3152.5024414063
        numberValue15 = 1069.2584228516
        numberValue17 = 20.674007415771
        rageUiCall4 = rageUiCall4(numberValue13, numberValue15, numberValue17)
        workValue8 = rageUiCall4
        rageUiCall4 = true
        textValue17 = rageUiCall4
        rageUiCall4 = RageUI
        rageUiCall4 = rageUiCall4.CloseAll
        rageUiCall4()
      end
    end
    flag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg2, arg3, flag12, flag14, flag15)
    arg12 = RageUI
    arg12 = arg12.Button
    arg2 = "~r~Leave Purge"
    arg3 = ""
    flag12 = true
    function flag14(arg13, arg22, arg32)
      local rageUiCall4, numberValue13, numberValue15, numberValue17
      if arg32 then
        rageUiCall4 = vector3
        numberValue13 = -1011.0608520508
        numberValue15 = -2973.7270507812
        numberValue17 = 13.951969146729
        rageUiCall4 = rageUiCall4(numberValue13, numberValue15, numberValue17)
        workValue8 = rageUiCall4
        rageUiCall4 = true
        textValue17 = rageUiCall4
        rageUiCall4 = RageUI
        rageUiCall4 = rageUiCall4.CloseAll
        rageUiCall4()
        rageUiCall4 = Citizen
        rageUiCall4 = rageUiCall4.Wait
        numberValue13 = 5000
        rageUiCall4(numberValue13)
        rageUiCall4 = CMG
        rageUiCall4 = rageUiCall4.isPurge
        rageUiCall4 = rageUiCall4()
        if rageUiCall4 then
          rageUiCall4 = TriggerServerEvent
          numberValue13 = "f577a0908b"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f577a0908b".
          rageUiCall4(numberValue13)
        end
      end
    end
    flag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    arg12(arg2, arg3, flag12, flag14, flag15)
  end
  function flag16()
    local arg12, arg2
  end
  arg1(mathHelper, flag11, numberValue12, flag13, playerPed, flag16)
end
rageUiCall3(textValue5, workValue3, numberValue2, textValue7)
rageUiCall3 = RegisterNetEvent
textValue5 = "9df078d914"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9df078d914".
rageUiCall3(textValue5)
rageUiCall3 = AddEventHandler
textValue5 = "9df078d914"
-- Beginner: this function runs when client event "9df078d914" fires.
function workValue3(arg1)
  local mathHelper, flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3, flag5, textValue4
  mathHelper = textValue3
  mathHelper()
  mathHelper = textValue2
  mathHelper = mathHelper + 1
  textValue2 = mathHelper
  mathHelper = textValue2
  flag11 = tCMG
  flag11 = flag11.disableComa
  flag11()
  flag11 = ShutdownLoadingScreen
  flag11()
  flag11 = ShutdownLoadingScreenNui
  flag11()
  flag11 = cmgCall4
  flag11()
  flag11 = DoScreenFadeOut
  numberValue12 = 250
  flag11(numberValue12)
  flag11 = CMG
  flag11 = flag11.hideAllDisplays
  numberValue12 = "purgespawn"
  flag11(numberValue12)
  flag11 = Wait
  numberValue12 = 500
  flag11(numberValue12)
  flag11 = TriggerScreenblurFadeIn
  numberValue12 = 100.0
  flag11(numberValue12)
  flag11 = textValue8
  flag11 = flag11()
  workValue8 = flag11
  flag11 = CMG
  flag11 = flag11.applySavedCustomisation
  flag11()
  flag11 = RequestCollisionAtCoord
  numberValue12 = workValue8.x
  flag13 = workValue8.y
  playerPed = workValue8.z
  flag11(numberValue12, flag13, playerPed)
  flag11 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  flag11 = flag11()
  while true do
    numberValue12 = HaveAllStreamingRequestsCompleted
    flag13 = PlayerPedId
    flag13, playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3, flag5, textValue4 = flag13()
    numberValue12 = numberValue12(flag13, playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3, flag5, textValue4)
    if 1 == numberValue12 then
      break
    end
    numberValue12 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    numberValue12 = numberValue12()
    numberValue12 = numberValue12 - flag11
    flag13 = 5000
    if not (numberValue12 < flag13) then
      break
    end
    numberValue12 = Wait
    flag13 = 0
    numberValue12(flag13)
    numberValue12 = print
    flag13 = "[CMG] Waiting for streaming requests to complete!"
    numberValue12(flag13)
  end
  numberValue12 = DoScreenFadeIn
  flag13 = 1000
  numberValue12(flag13)
  numberValue12 = CMG
  numberValue12 = numberValue12.getPlayerCoords
  -- Beginner: result below is playerCoords.
  numberValue12 = numberValue12()
  flag13 = SetEntityCoordsNoOffset
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  flag16 = numberValue12.x
  flag18 = numberValue12.y
  textValue16 = 1200.0
  flag19 = false
  flag = false
  flag2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  flag13(playerPed, flag16, flag18, textValue16, flag19, flag, flag2)
  flag13 = SetEntityVisible
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  flag16 = false
  flag18 = false
  flag13(playerPed, flag16, flag18)
  flag13 = FreezeEntityPosition
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  flag16 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  flag13(playerPed, flag16)
  flag13 = CMG
  flag13 = flag13.setPlayerCombatTimer
  playerPed = 0
  flag16 = false
  flag13(playerPed, flag16)
  while true do
    flag13 = textValue17
    if flag13 then
      break
    end
    flag13 = textValue2
    if mathHelper ~= flag13 then
      return
    end
    flag13 = RageUI
    flag13 = flag13.Visible
    playerPed = RMenu
    flag16 = playerPed
    playerPed = playerPed.Get
    flag18 = "purge"
    textValue16 = "main"
    -- Beginner: result below is menu.
    playerPed = playerPed(flag16, flag18, textValue16)
    flag16 = true
    flag13(playerPed, flag16)
    flag13 = Citizen
    flag13 = flag13.Wait
    playerPed = 0
    flag13(playerPed)
  end
  flag13 = false
  textValue17 = flag13
  flag13 = SetEntityVisible
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  flag16 = true
  flag18 = true
  flag13(playerPed, flag16, flag18)
  flag13 = SetFocusPosAndVel
  playerPed = workValue8.x
  flag16 = workValue8.y
  flag18 = workValue8.z
  flag18 = flag18 + 1000
  textValue16 = 0.0
  flag19 = 0.0
  flag = 0.0
  flag13(playerPed, flag16, flag18, textValue16, flag19, flag)
  flag13 = CreateCameraWithParams
  playerPed = "DEFAULT_SCRIPTED_CAMERA"
  flag16 = workValue8.x
  flag18 = workValue8.y
  textValue16 = workValue8.z
  textValue16 = textValue16 + 1000
  flag19 = 0.0
  flag = 0.0
  flag2 = 0.0
  flag3 = 65.0
  flag5 = false
  textValue4 = 2
  flag13 = flag13(playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3, flag5, textValue4)
  textValue = flag13
  flag13 = SetCamActive
  playerPed = textValue
  flag16 = true
  flag13(playerPed, flag16)
  flag13 = RenderScriptCams
  playerPed = true
  flag16 = true
  flag18 = 0
  textValue16 = true
  flag19 = false
  flag13(playerPed, flag16, flag18, textValue16, flag19)
  flag13 = CreateCameraWithParams
  playerPed = "DEFAULT_SCRIPTED_CAMERA"
  flag16 = workValue8.x
  flag18 = workValue8.y
  textValue16 = workValue8.z
  flag19 = 0.0
  flag = 0.0
  flag2 = 0.0
  flag3 = 65.0
  flag5 = false
  textValue4 = 2
  flag13 = flag13(playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3, flag5, textValue4)
  rageUiCall = flag13
  flag13 = SetCamActiveWithInterp
  playerPed = rageUiCall
  flag16 = textValue
  flag18 = 5000
  textValue16 = 0
  flag19 = 0
  flag13(playerPed, flag16, flag18, textValue16, flag19)
  flag13 = Wait
  playerPed = 2500
  flag13(playerPed)
  flag13 = textValue2
  if mathHelper ~= flag13 then
    return
  end
  flag13 = ClearFocus
  flag13()
  if not arg1 then
    flag13 = SetEntityCoords
    playerPed = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    flag16 = workValue8.x
    flag18 = workValue8.y
    textValue16 = workValue8.z
    flag19 = true
    flag = false
    flag2 = false
    flag3 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    flag13(playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3)
    flag13 = CMG
    flag13 = flag13.setPlayerCombatTimer
    playerPed = 0
    flag16 = false
    flag13(playerPed, flag16)
  end
  flag13 = FreezeEntityPosition
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  flag16 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  flag13(playerPed, flag16)
  flag13 = TriggerScreenblurFadeOut
  playerPed = 2000.0
  flag13(playerPed)
  flag13 = Wait
  playerPed = 2000
  flag13(playerPed)
  flag13 = textValue2
  if mathHelper ~= flag13 then
    return
  end
  flag13 = CMG
  flag13 = flag13.applySavedCustomisation
  flag13()
  flag13 = SetEntityHealth
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  flag16 = 200
  flag13(playerPed, flag16)
  flag13 = textValue3
  flag13()
end
-- Beginner: Register a client-side event handler. Event/command: "9df078d914".
rageUiCall3(textValue5, workValue3)
rageUiCall3 = vector3
textValue5 = 196.10565185547
workValue3 = -934.40093994141
numberValue2 = 29.686786651611
rageUiCall3 = rageUiCall3(textValue5, workValue3, numberValue2)
textValue5 = nil
workValue3 = 0
numberValue2 = nil
textValue7 = 0
function textValue9()
  local arg1, mathHelper, flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3, flag5, textValue4, stringHelper, textValue6, numberValue, numberValue3, numberValue4, numberValue5, numberValue6, flag6, flag7, numberValue8, flag8, workValue5, workValue6, flag9
  arg1 = textValue5
  if arg1 then
    arg1 = CMG
    arg1 = arg1.getPlayerCoords
    -- Beginner: result below is playerCoords.
    arg1 = arg1()
    mathHelper = rageUiCall3
    arg1 = arg1 - mathHelper
    mathHelper = 0.0
    flag11 = arg1.x
    if flag11 > 0.0 then
      flag11 = math
      flag11 = flag11.atan
      numberValue12 = arg1.y
      flag13 = arg1.x
      numberValue12 = numberValue12 / flag13
      flag11 = flag11(numberValue12)
      numberValue12 = math
      numberValue12 = numberValue12.pi
      flag13 = 180.0
      numberValue12 = flag13 / numberValue12
      numberValue12 = flag11 * numberValue12
      flag13 = 270.0
      mathHelper = flag13 - numberValue12
    else
      flag11 = arg1.x
      if flag11 < 0.0 then
        flag11 = math
        flag11 = flag11.atan
        numberValue12 = arg1.y
        flag13 = arg1.x
        flag13 = -flag13
        numberValue12 = numberValue12 / flag13
        flag11 = flag11(numberValue12)
        numberValue12 = math
        numberValue12 = numberValue12.pi
        flag13 = 180.0
        numberValue12 = flag13 / numberValue12
        numberValue12 = flag11 * numberValue12
        mathHelper = numberValue12 + 90.0
      end
    end
    flag11 = Scaleform
    numberValue12 = "mp_mission_name_freemode"
    flag11 = flag11(numberValue12)
    numberValue12 = CMG
    numberValue12 = numberValue12.isPurge
    numberValue12 = numberValue12()
    if numberValue12 then
      numberValue12 = "Press [E] to exit"
      if numberValue12 then
        goto flow_label_64
      end
    end
    numberValue12 = "Press [E] to enter"
    ::flow_label_64::
    flag13 = flag11.RunFunction
    playerPed = "SET_MISSION_INFO"
    flag16 = {}
    flag18 = numberValue12
    textValue16 = "CMG Purge"
    flag19 = ""
    flag = ""
    flag2 = ""
    flag3 = ""
    flag5 = textValue7
    textValue4 = "0"
    stringHelper = ""
    textValue6 = ""
    flag16[1] = flag18
    flag16[2] = textValue16
    flag16[3] = flag19
    flag16[4] = flag
    flag16[5] = flag2
    flag16[6] = flag3
    flag16[7] = flag5
    flag16[8] = textValue4
    flag16[9] = stringHelper
    flag16[10] = textValue6
    flag13(playerPed, flag16)
    flag13 = flag11.Render3D
    playerPed = rageUiCall3
    flag16 = vector3
    flag18 = 0
    textValue16 = 0
    flag19 = mathHelper
    flag16 = flag16(flag18, textValue16, flag19)
    flag18 = vector2
    textValue16 = 16.0
    flag19 = 16.0
    flag18, textValue16, flag19, flag, flag2, flag3, flag5, textValue4, stringHelper, textValue6, numberValue, numberValue3, numberValue4, numberValue5, numberValue6, flag6, flag7, numberValue8, flag8, workValue5, workValue6, flag9 = flag18(textValue16, flag19)
    flag13(playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3, flag5, textValue4, stringHelper, textValue6, numberValue, numberValue3, numberValue4, numberValue5, numberValue6, flag6, flag7, numberValue8, flag8, workValue5, workValue6, flag9)
    flag13 = DrawMarker
    playerPed = 1
    flag16 = rageUiCall3.x
    flag18 = rageUiCall3.y
    textValue16 = rageUiCall3.z
    textValue16 = textValue16 - 1.0
    flag19 = 0
    flag = 0
    flag2 = 0
    flag3 = 0
    flag5 = 0
    textValue4 = 0
    stringHelper = 12.50125
    textValue6 = 12.50125
    numberValue = 5.208854166666667
    numberValue3 = 255
    numberValue4 = 0
    numberValue5 = 0
    numberValue6 = 200
    flag6 = false
    flag7 = false
    numberValue8 = 0
    flag8 = false
    workValue5 = nil
    workValue6 = nil
    flag9 = false
    flag13(playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3, flag5, textValue4, stringHelper, textValue6, numberValue, numberValue3, numberValue4, numberValue5, numberValue6, flag6, flag7, numberValue8, flag8, workValue5, workValue6, flag9)
  end
end
function workValue4()
  local arg1, mathHelper, flag11
  arg1 = IsControlJustPressed
  mathHelper = 0
  flag11 = 51
  arg1 = arg1(mathHelper, flag11)
  if arg1 then
    arg1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg1 = arg1()
    mathHelper = workValue3
    arg1 = arg1 - mathHelper
    mathHelper = 30000
    if arg1 > mathHelper then
      arg1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      arg1 = arg1()
      workValue3 = arg1
      arg1 = CMG
      arg1 = arg1.isPurge
      arg1 = arg1()
      if arg1 then
        arg1 = TriggerServerEvent
        mathHelper = "f577a0908b"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f577a0908b".
        arg1(mathHelper)
      else
        arg1 = TriggerServerEvent
        mathHelper = "6de350d017"
        arg1(mathHelper)
      end
    else
      arg1 = notify
      mathHelper = "~r~Please wait 30 seconds before making this decision."
      -- Beginner: Show a notification to the player.
      arg1(mathHelper)
    end
  end
end
eventRegistration = RegisterNetEvent
textValue10 = "9f08a8fc4a"
-- Beginner: this function handles network event "9f08a8fc4a".
function numberValue7()
  local arg1, mathHelper, flag11, numberValue12, flag13, playerPed, flag16, flag18
  arg1 = Scaleform
  mathHelper = "mp_mission_name_freemode"
  arg1 = arg1(mathHelper)
  textValue5 = arg1
  arg1 = CMG
  arg1 = arg1.createArea
  mathHelper = "purge_enter_marker"
  flag11 = rageUiCall3
  numberValue12 = 100.0
  flag13 = 500.0
  function playerPed()
    local arg12, arg2
  end
  function flag16()
    local arg12, arg2
  end
  flag18 = textValue9
  -- Beginner: Create an interaction area around a world position.
  arg1(mathHelper, flag11, numberValue12, flag13, playerPed, flag16, flag18)
  arg1 = CMG
  arg1 = arg1.createArea
  mathHelper = "purge_enter"
  flag11 = rageUiCall3
  numberValue12 = 10.0
  flag13 = 15.0
  function playerPed()
    local arg12, arg2
  end
  function flag16()
    local arg12, arg2
  end
  flag18 = workValue4
  arg1(mathHelper, flag11, numberValue12, flag13, playerPed, flag16, flag18)
  arg1 = tCMG
  arg1 = arg1.addBlip
  mathHelper = rageUiCall3.x
  flag11 = rageUiCall3.y
  numberValue12 = rageUiCall3.z
  flag13 = 429
  playerPed = 1
  flag16 = nil
  flag18 = 1.5
  arg1 = arg1(mathHelper, flag11, numberValue12, flag13, playerPed, flag16, flag18)
  numberValue2 = arg1
  arg1 = CMG
  arg1 = arg1.announceMpBigMsg
  mathHelper = "~r~Purge event has started!"
  flag11 = "To join go to Legion and enter the marker"
  numberValue12 = 15000
  arg1(mathHelper, flag11, numberValue12)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9f08a8fc4a".
eventRegistration(textValue10, numberValue7)
eventRegistration = RegisterNetEvent
textValue10 = "4c63b71a2c"
-- Beginner: this function handles network event "4c63b71a2c".
function numberValue7()
  local arg1, mathHelper, flag11, numberValue12
  arg1 = tCMG
  arg1 = arg1.removeArea
  mathHelper = "purge_enter"
  arg1(mathHelper)
  arg1 = tCMG
  arg1 = arg1.removeArea
  mathHelper = "purge_enter_marker"
  arg1(mathHelper)
  arg1 = textValue5
  if arg1 then
    arg1 = SetScaleformMovieAsNoLongerNeeded
    mathHelper = textValue5.Handle
    arg1(mathHelper)
  end
  arg1 = numberValue2
  if arg1 then
    arg1 = tCMG
    arg1 = arg1.removeBlip
    mathHelper = numberValue2
    arg1(mathHelper)
  end
  arg1 = CMG
  arg1 = arg1.announceMpBigMsg
  mathHelper = "~r~Purge event has ended"
  flag11 = ""
  numberValue12 = 15000
  arg1(mathHelper, flag11, numberValue12)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4c63b71a2c".
eventRegistration(textValue10, numberValue7)
eventRegistration = false
textValue10 = nil
numberValue7 = 0
cmgCall2 = CMG
function dataTable2()
  local arg1, mathHelper
  arg1 = eventRegistration
  return arg1
end
cmgCall2.isPurge = dataTable2
function cmgCall2()
  local arg1, mathHelper, flag11
  arg1 = drawNativeNotification
  mathHelper = "Press ~INPUT_CONTEXT~ to leave purge"
  -- Beginner: Show a GTA-style notification/help prompt.
  arg1(mathHelper)
  arg1 = IsControlJustPressed
  mathHelper = 0
  flag11 = 51
  arg1 = arg1(mathHelper, flag11)
  if arg1 then
    arg1 = TriggerServerEvent
    mathHelper = "f577a0908b"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f577a0908b".
    arg1(mathHelper)
  end
end
dataTable2 = {}
dataTable3 = {}
vector3Builder = vector3
vector3Builder2 = -962.74456787109
numberValue9 = -2997.19921875
numberValue10 = 12.949075035095
vector3Builder = vector3Builder(vector3Builder2, numberValue9, numberValue10)
vector3Builder2 = vector3
numberValue9 = -980.61328125
numberValue10 = -2986.8991699219
numberValue11 = 12.955061683655
vector3Builder2, numberValue9, numberValue10, numberValue11, workValue7, eventRegistration2, eventRegistration3, cmgCall3, textValue11, textValue12, textValue13, textValue14, textValue15 = vector3Builder2(numberValue9, numberValue10, numberValue11)
dataTable3[1] = vector3Builder
dataTable3[2] = vector3Builder2
dataTable3[3] = numberValue9
dataTable3[4] = numberValue10
dataTable3[5] = numberValue11
dataTable3[6] = workValue7
dataTable3[7] = eventRegistration2
dataTable3[8] = eventRegistration3
dataTable3[9] = cmgCall3
dataTable3[10] = textValue11
dataTable3[11] = textValue12
dataTable3[12] = textValue13
dataTable3[13] = textValue14
dataTable3[14] = textValue15
dataTable2.Legion = dataTable3
dataTable3 = {}
vector3Builder = vector3
vector3Builder2 = -959.15783691406
numberValue9 = -2999.2453613281
numberValue10 = 12.949075035095
vector3Builder = vector3Builder(vector3Builder2, numberValue9, numberValue10)
vector3Builder2 = vector3
numberValue9 = -977.72100830078
numberValue10 = -2988.5090332031
numberValue11 = 12.955062637329
vector3Builder2, numberValue9, numberValue10, numberValue11, workValue7, eventRegistration2, eventRegistration3, cmgCall3, textValue11, textValue12, textValue13, textValue14, textValue15 = vector3Builder2(numberValue9, numberValue10, numberValue11)
dataTable3[1] = vector3Builder
dataTable3[2] = vector3Builder2
dataTable3[3] = numberValue9
dataTable3[4] = numberValue10
dataTable3[5] = numberValue11
dataTable3[6] = workValue7
dataTable3[7] = eventRegistration2
dataTable3[8] = eventRegistration3
dataTable3[9] = cmgCall3
dataTable3[10] = textValue11
dataTable3[11] = textValue12
dataTable3[12] = textValue13
dataTable3[13] = textValue14
dataTable3[14] = textValue15
dataTable2.SmallArmsDealer = dataTable3
dataTable3 = {}
vector3Builder = vector3
vector3Builder2 = -956.20050048828
numberValue9 = -3000.9567871094
numberValue10 = 12.949075035095
vector3Builder = vector3Builder(vector3Builder2, numberValue9, numberValue10)
vector3Builder2 = vector3
numberValue9 = -974.57080078125
numberValue10 = -2990.3208007812
numberValue11 = 12.955067405701
vector3Builder2, numberValue9, numberValue10, numberValue11, workValue7, eventRegistration2, eventRegistration3, cmgCall3, textValue11, textValue12, textValue13, textValue14, textValue15 = vector3Builder2(numberValue9, numberValue10, numberValue11)
dataTable3[1] = vector3Builder
dataTable3[2] = vector3Builder2
dataTable3[3] = numberValue9
dataTable3[4] = numberValue10
dataTable3[5] = numberValue11
dataTable3[6] = workValue7
dataTable3[7] = eventRegistration2
dataTable3[8] = eventRegistration3
dataTable3[9] = cmgCall3
dataTable3[10] = textValue11
dataTable3[11] = textValue12
dataTable3[12] = textValue13
dataTable3[13] = textValue14
dataTable3[14] = textValue15
dataTable2.LargeArmsDealer = dataTable3
dataTable3 = {}
vector3Builder = vector3
vector3Builder2 = -953.56408691406
numberValue9 = -3002.4162597656
numberValue10 = 12.949075035095
vector3Builder = vector3Builder(vector3Builder2, numberValue9, numberValue10)
vector3Builder2 = vector3
numberValue9 = -971.30810546875
numberValue10 = -2992.1850585938
numberValue11 = 12.955067405701
vector3Builder2, numberValue9, numberValue10, numberValue11, workValue7, eventRegistration2, eventRegistration3, cmgCall3, textValue11, textValue12, textValue13, textValue14, textValue15 = vector3Builder2(numberValue9, numberValue10, numberValue11)
dataTable3[1] = vector3Builder
dataTable3[2] = vector3Builder2
dataTable3[3] = numberValue9
dataTable3[4] = numberValue10
dataTable3[5] = numberValue11
dataTable3[6] = workValue7
dataTable3[7] = eventRegistration2
dataTable3[8] = eventRegistration3
dataTable3[9] = cmgCall3
dataTable3[10] = textValue11
dataTable3[11] = textValue12
dataTable3[12] = textValue13
dataTable3[13] = textValue14
dataTable3[14] = textValue15
dataTable2.Rebel = dataTable3
dataTable3 = {}
vector3Builder = vector3
vector3Builder2 = -969.28405761719
numberValue9 = -2997.3959960938
numberValue10 = 12.955069313049
vector3Builder, vector3Builder2, numberValue9, numberValue10, numberValue11, workValue7, eventRegistration2, eventRegistration3, cmgCall3, textValue11, textValue12, textValue13, textValue14, textValue15 = vector3Builder(vector3Builder2, numberValue9, numberValue10)
dataTable3[1] = vector3Builder
dataTable3[2] = vector3Builder2
dataTable3[3] = numberValue9
dataTable3[4] = numberValue10
dataTable3[5] = numberValue11
dataTable3[6] = workValue7
dataTable3[7] = eventRegistration2
dataTable3[8] = eventRegistration3
dataTable3[9] = cmgCall3
dataTable3[10] = textValue11
dataTable3[11] = textValue12
dataTable3[12] = textValue13
dataTable3[13] = textValue14
dataTable3[14] = textValue15
dataTable2.Purge = dataTable3
dataTable3 = {}
vector3Builder = nil
vector3Builder2 = nil
numberValue9 = nil
numberValue10 = nil
function numberValue11()
  local arg1, mathHelper, flag11, numberValue12, flag13
  arg1 = RageUI
  arg1 = arg1.Visible
  mathHelper = RMenu
  flag11 = mathHelper
  mathHelper = mathHelper.Get
  numberValue12 = "purge"
  flag13 = "vehicles"
  -- Beginner: result below is menu.
  mathHelper = mathHelper(flag11, numberValue12, flag13)
  flag11 = true
  arg1(mathHelper, flag11)
end
function workValue7()
  local arg1, mathHelper, flag11, numberValue12, flag13
  arg1 = RageUI
  arg1 = arg1.Visible
  mathHelper = RMenu
  flag11 = mathHelper
  mathHelper = mathHelper.Get
  numberValue12 = "purge"
  flag13 = "vehicles"
  -- Beginner: result below is menu.
  mathHelper = mathHelper(flag11, numberValue12, flag13)
  flag11 = false
  arg1(mathHelper, flag11)
end
eventRegistration2 = RegisterNetEvent
eventRegistration3 = "6de350d017"
-- Beginner: this function handles network event "6de350d017".
function cmgCall3()
  local arg1, mathHelper, flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3, flag5, textValue4, stringHelper, textValue6
  arg1 = true
  eventRegistration = arg1
  arg1 = CMG
  arg1 = arg1.initGreenzones
  arg1()
  arg1 = AddBlipForRadius
  mathHelper = 0.0
  flag11 = 0.0
  numberValue12 = 0.0
  flag13 = 50000.0
  -- Beginner: result below is blipHandle.
  arg1 = arg1(mathHelper, flag11, numberValue12, flag13)
  textValue10 = arg1
  arg1 = SetBlipColour
  mathHelper = textValue10
  flag11 = 1
  arg1(mathHelper, flag11)
  arg1 = SetBlipAlpha
  mathHelper = textValue10
  flag11 = 80
  arg1(mathHelper, flag11)
  arg1 = TriggerServerEvent
  mathHelper = "499112c90f"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "499112c90f".
  arg1(mathHelper)
  arg1 = FreezeEntityPosition
  mathHelper = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  mathHelper = mathHelper()
  flag11 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg1(mathHelper, flag11)
  arg1 = SetEntityCoordsNoOffset
  mathHelper = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  mathHelper = mathHelper()
  flag11 = 0.0
  numberValue12 = 0.0
  flag13 = 0.0
  playerPed = true
  flag16 = false
  flag18 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg1(mathHelper, flag11, numberValue12, flag13, playerPed, flag16, flag18)
  arg1 = TriggerEvent
  mathHelper = "9df078d914"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "9df078d914".
  arg1(mathHelper)
  arg1 = pairs
  mathHelper = dataTable2
  arg1, mathHelper, flag11, numberValue12 = arg1(mathHelper)
  for flag13, playerPed in arg1, mathHelper, flag11, numberValue12 do
    flag16 = pairs
    flag18 = playerPed
    flag16, flag18, textValue16, flag19 = flag16(flag18)
    for flag, flag2 in flag16, flag18, textValue16, flag19 do
      flag3 = "Purge "
      flag5 = flag13
      textValue4 = " "
      stringHelper = tostring
      textValue6 = flag
      stringHelper = stringHelper(textValue6)
      flag3 = flag3 .. flag5 .. textValue4 .. stringHelper
      flag5 = CMG
      flag5 = flag5.createGunStore
      textValue4 = flag3
      stringHelper = flag13
      textValue6 = flag2
      flag5(textValue4, stringHelper, textValue6)
      flag5 = table
      flag5 = flag5.insert
      textValue4 = dataTable3
      stringHelper = flag3
      flag5(textValue4, stringHelper)
    end
  end
  arg1 = CMG
  arg1 = arg1.createAtm
  mathHelper = "Purge"
  flag11 = vector3
  numberValue12 = -961.67938232422
  flag13 = -3005.9426269531
  playerPed = 13.945075035095
  flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3, flag5, textValue4, stringHelper, textValue6 = flag11(numberValue12, flag13, playerPed)
  arg1(mathHelper, flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3, flag5, textValue4, stringHelper, textValue6)
  arg1 = CMG
  arg1 = arg1.createClothingMenu
  mathHelper = "Purge A"
  flag11 = vector3
  numberValue12 = -966.35815429688
  flag13 = -3003.2653808594
  playerPed = 13.945075035095
  flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3, flag5, textValue4, stringHelper, textValue6 = flag11(numberValue12, flag13, playerPed)
  arg1(mathHelper, flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3, flag5, textValue4, stringHelper, textValue6)
  arg1 = CMG
  arg1 = arg1.createClothingMenu
  mathHelper = "Purge B"
  flag11 = vector3
  numberValue12 = -957.06579589844
  flag13 = -3008.5339355469
  playerPed = 13.945066452026
  flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3, flag5, textValue4, stringHelper, textValue6 = flag11(numberValue12, flag13, playerPed)
  arg1(mathHelper, flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3, flag5, textValue4, stringHelper, textValue6)
  arg1 = vector3
  mathHelper = -960.60162353516
  flag11 = -3013.6945800781
  numberValue12 = 13.94508266449
  arg1 = arg1(mathHelper, flag11, numberValue12)
  mathHelper = CMG
  mathHelper = mathHelper.createArea
  flag11 = "cmg_purge_leave"
  numberValue12 = arg1
  flag13 = 2.0
  playerPed = 3.0
  function flag16()
    local arg12, arg2
  end
  function flag18()
    local arg12, arg2
  end
  textValue16 = cmgCall2
  -- Beginner: Create an interaction area around a world position.
  mathHelper(flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16)
  mathHelper = tCMG
  mathHelper = mathHelper.addMarker
  flag11 = arg1.x
  numberValue12 = arg1.y
  flag13 = arg1.z
  playerPed = 1.0
  flag16 = 1.0
  flag18 = 1.0
  textValue16 = 255
  flag19 = 0
  flag = 0
  flag2 = 255
  flag3 = 50.0
  flag5 = 31
  mathHelper = mathHelper(flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3, flag5)
  numberValue7 = mathHelper
  mathHelper = CMG
  mathHelper = mathHelper.createNoVehicleZone
  flag11 = vector3
  numberValue12 = -960.293518
  flag13 = -2991.571289
  playerPed = 13.945061
  flag11 = flag11(numberValue12, flag13, playerPed)
  numberValue12 = 80.0
  mathHelper = mathHelper(flag11, numberValue12)
  vector3Builder = mathHelper
  mathHelper = CMG
  mathHelper = mathHelper.createGarage
  flag11 = "Standard Garage"
  numberValue12 = vector3
  flag13 = -1040.0977783203
  playerPed = -2948.8134765625
  flag16 = 13.95180606842
  numberValue12 = numberValue12(flag13, playerPed, flag16)
  flag13 = true
  mathHelper = mathHelper(flag11, numberValue12, flag13)
  vector3Builder2 = mathHelper
  mathHelper = CMG
  mathHelper = mathHelper.createArea
  flag11 = "purge_vehicles"
  numberValue12 = cmgCall.vehicleSelectCoords
  flag13 = 2.5
  playerPed = 2.5
  flag16 = numberValue11
  flag18 = workValue7
  function textValue16()
    local arg12, arg2
  end
  flag19 = nil
  mathHelper = mathHelper(flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16, flag19)
  numberValue9 = mathHelper
  mathHelper = tCMG
  mathHelper = mathHelper.addMarker
  flag11 = cmgCall.vehicleSelectCoords
  flag11 = flag11.x
  numberValue12 = cmgCall.vehicleSelectCoords
  numberValue12 = numberValue12.y
  flag13 = cmgCall.vehicleSelectCoords
  flag13 = flag13.z
  playerPed = 1.0
  flag16 = 1.0
  flag18 = 1.0
  textValue16 = 0
  flag19 = 255
  flag = 0
  flag2 = 200
  flag3 = 50.0
  flag5 = 36
  mathHelper = mathHelper(flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16, flag19, flag, flag2, flag3, flag5)
  numberValue10 = mathHelper
  while true do
    mathHelper = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    mathHelper = mathHelper()
    flag11 = workValue3
    mathHelper = mathHelper - flag11
    flag11 = 30000
    if not (mathHelper < flag11) then
      break
    end
    mathHelper = drawNativeNotification
    flag11 = "You have entered CMG Purge! To leave return to Legion or Disconnect."
    -- Beginner: Show a GTA-style notification/help prompt.
    mathHelper(flag11)
    mathHelper = Citizen
    mathHelper = mathHelper.Wait
    flag11 = 0
    mathHelper(flag11)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6de350d017".
eventRegistration2(eventRegistration3, cmgCall3)
function eventRegistration2()
  local arg1, mathHelper
  arg1 = numberValue14
  if 0 ~= arg1 then
    arg1 = RemoveBlip
    mathHelper = numberValue14
    arg1(mathHelper)
    arg1 = 0
    numberValue14 = arg1
  end
  arg1 = numberValue16
  if 0 ~= arg1 then
    arg1 = RemoveBlip
    mathHelper = numberValue16
    arg1(mathHelper)
    arg1 = 0
    numberValue16 = arg1
  end
end
eventRegistration3 = RegisterNetEvent
cmgCall3 = "f577a0908b"
-- Beginner: this function handles network event "f577a0908b".
function textValue11()
  local arg1, mathHelper, flag11, numberValue12, flag13, playerPed, flag16, flag18
  arg1 = false
  eventRegistration = arg1
  arg1 = CMG
  arg1 = arg1.initGreenzones
  arg1()
  arg1 = RemoveBlip
  mathHelper = textValue10
  arg1(mathHelper)
  arg1 = pairs
  mathHelper = dataTable3
  arg1, mathHelper, flag11, numberValue12 = arg1(mathHelper)
  for flag13, playerPed in arg1, mathHelper, flag11, numberValue12 do
    flag16 = CMG
    flag16 = flag16.deleteGunStore
    flag18 = playerPed
    flag16(flag18)
  end
  arg1 = CMG
  arg1 = arg1.deleteAtm
  mathHelper = "Purge"
  arg1(mathHelper)
  arg1 = CMG
  arg1 = arg1.deleteClothingMenu
  mathHelper = "Purge A"
  arg1(mathHelper)
  arg1 = CMG
  arg1 = arg1.deleteClothingMenu
  mathHelper = "Purge B"
  arg1(mathHelper)
  arg1 = tCMG
  arg1 = arg1.removeArea
  mathHelper = "cmg_purge_leave"
  arg1(mathHelper)
  arg1 = tCMG
  arg1 = arg1.removeMarker
  mathHelper = numberValue7
  arg1(mathHelper)
  arg1 = vector3Builder
  if arg1 then
    arg1 = CMG
    arg1 = arg1.deleteNoVehicleZone
    mathHelper = vector3Builder
    arg1(mathHelper)
    arg1 = nil
    vector3Builder = arg1
  end
  arg1 = vector3Builder2
  if arg1 then
    arg1 = CMG
    arg1 = arg1.deleteGarage
    mathHelper = vector3Builder2
    arg1(mathHelper)
    arg1 = nil
    vector3Builder2 = arg1
  end
  arg1 = numberValue9
  if arg1 then
    arg1 = tCMG
    arg1 = arg1.removeArea
    mathHelper = numberValue9
    arg1(mathHelper)
  end
  arg1 = numberValue10
  if arg1 then
    arg1 = tCMG
    arg1 = arg1.removeMarker
    mathHelper = numberValue10
    arg1(mathHelper)
  end
  arg1 = eventRegistration2
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  arg1()
  arg1 = tCMG
  arg1 = arg1.teleport
  mathHelper = rageUiCall3.x
  flag11 = rageUiCall3.y
  numberValue12 = rageUiCall3.z
  flag13 = true
  arg1(mathHelper, flag11, numberValue12, flag13)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f577a0908b".
eventRegistration3(cmgCall3, textValue11)
function eventRegistration3()
  local arg1, mathHelper, flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16, flag19
  arg1 = CMG
  arg1 = arg1.isPurge
  arg1 = arg1()
  if not arg1 then
    arg1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    mathHelper = GetSelectedPedWeapon
    flag11 = arg1
    -- Beginner: result below is weaponHash.
    mathHelper = mathHelper(flag11)
    if 424444959 == mathHelper then
      flag11 = CMG
      flag11 = flag11.setWeapon
      numberValue12 = arg1
      flag13 = -1569615261
      playerPed = true
      flag11(numberValue12, flag13, playerPed)
      flag11 = notify
      numberValue12 = "~r~You cannot use the homing launcher in the purge event!"
      -- Beginner: Show a notification to the player.
      flag11(numberValue12)
    end
  end
  arg1 = CMG
  arg1 = arg1.isDannyEvent
  arg1 = arg1()
  if arg1 then
    arg1 = drawNativeText
    mathHelper = "~r~DANNY EVENT ACTIVE"
    -- Beginner: Draw GTA-style text on screen.
    arg1(mathHelper)
    arg1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    mathHelper = CMG
    mathHelper = mathHelper.getModelGender
    mathHelper = mathHelper()
    mathHelper = "male" == mathHelper
    if mathHelper then
      flag11 = 11
      if flag11 then
        goto flow_label_45
      end
    end
    flag11 = 8
    ::flow_label_45::
    if mathHelper then
      numberValue12 = 42
      if numberValue12 then
        goto flow_label_51
      end
    end
    numberValue12 = 42
    ::flow_label_51::
    flag13 = GetPedDrawableVariation
    playerPed = arg1
    flag16 = 2
    flag13 = flag13(playerPed, flag16)
    if flag13 == flag11 then
      flag13 = GetPedHairColor
      playerPed = arg1
      flag13 = flag13(playerPed)
      if flag13 == numberValue12 then
        goto flow_label_74
      end
    end
    flag13 = SetPedComponentVariation
    playerPed = arg1
    flag16 = 2
    flag18 = flag11
    textValue16 = 0
    flag19 = 0
    flag13(playerPed, flag16, flag18, textValue16, flag19)
    flag13 = SetPedHairColor
    playerPed = arg1
    flag16 = numberValue12
    flag18 = 0
    flag13(playerPed, flag16, flag18)
    ::flow_label_74::
    flag13 = GetSelectedPedWeapon
    playerPed = arg1
    -- Beginner: result below is weaponHash.
    flag13 = flag13(playerPed)
    if -1569615261 ~= flag13 then
      playerPed = GetWeapontypeGroup
      flag16 = flag13
      playerPed = playerPed(flag16)
      if -728555052 ~= playerPed and 1548507267 ~= playerPed and 416676503 ~= playerPed then
        flag16 = notify
        flag18 = "~r~Only pistols and melees can be used in the danny event!"
        -- Beginner: Show a notification to the player.
        flag16(flag18)
        flag16 = CMG
        flag16 = flag16.setWeapon
        flag18 = arg1
        textValue16 = -1569615261
        flag19 = true
        flag16(flag18, textValue16, flag19)
      end
    end
  end
end
cmgCall3 = CMG
cmgCall3 = cmgCall3.createThreadOnTick
textValue11 = eventRegistration3
textValue12 = "Danny Event"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall3(textValue11, textValue12)
cmgCall3 = RegisterNetEvent
textValue11 = "a54cb7192d"
-- Beginner: this function handles network event "a54cb7192d".
function textValue12(arg1)
  local mathHelper
  textValue7 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a54cb7192d".
cmgCall3(textValue11, textValue12)
cmgCall3 = AddEventHandler
textValue11 = "919aefda0c"
-- Beginner: this function runs when client event "919aefda0c" fires.
function textValue12(arg1)
  local mathHelper, flag11
  mathHelper = CMG
  mathHelper = mathHelper.isPurge
  mathHelper = mathHelper()
  if mathHelper and 666 ~= arg1 then
    mathHelper = TriggerServerEvent
    flag11 = "f577a0908b"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f577a0908b".
    mathHelper(flag11)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "919aefda0c".
cmgCall3(textValue11, textValue12)
cmgCall3 = RageUI
cmgCall3 = cmgCall3.CreateWhile
textValue11 = 1.0
textValue12 = RMenu
textValue13 = textValue12
textValue12 = textValue12.Get
textValue14 = "purge"
textValue15 = "vehicles"
-- Beginner: result below is menu.
textValue12 = textValue12(textValue13, textValue14, textValue15)
textValue13 = nil
function textValue14()
  local arg1, mathHelper, flag11, numberValue12, flag13, playerPed, flag16
  arg1 = RageUI
  arg1 = arg1.IsVisible
  mathHelper = RMenu
  flag11 = mathHelper
  mathHelper = mathHelper.Get
  numberValue12 = "purge"
  flag13 = "vehicles"
  -- Beginner: result below is menu.
  mathHelper = mathHelper(flag11, numberValue12, flag13)
  flag11 = true
  numberValue12 = true
  flag13 = true
  function playerPed()
    local arg12, arg2, arg3, flag12, flag14, flag15, flag17, stringHelper2, rageUiCall5, flag20, workValue, dataTable, flag4, workValue2
    arg12 = pairs
    arg2 = cmgCall.vehicles
    arg12, arg2, arg3, flag12 = arg12(arg2)
    for flag14, flag15 in arg12, arg2, arg3, flag12 do
      flag17 = dataTable4
      flag17 = flag17[flag14]
      if not flag17 then
        flag17 = false
      end
      if flag17 then
        stringHelper2 = "Spawn Vehicle"
        if stringHelper2 then
          goto flow_label_22
        end
      end
      stringHelper2 = string
      stringHelper2 = stringHelper2.format
      rageUiCall5 = "\194\163%s"
      flag20 = getMoneyStringFormatted
      workValue = flag15.price
      flag20, workValue, dataTable, flag4, workValue2 = flag20(workValue)
      stringHelper2 = stringHelper2(rageUiCall5, flag20, workValue, dataTable, flag4, workValue2)
      ::flow_label_22::
      rageUiCall5 = RageUI
      rageUiCall5 = rageUiCall5.ButtonWithStyle
      flag20 = flag15.name
      workValue = nil
      dataTable = {}
      dataTable.RightLabel = stringHelper2
      flag4 = true
      function workValue2(arg13, arg22, arg32)
        local rageUiCall4, numberValue13, numberValue15
        if arg32 then
          rageUiCall4 = flag17
          if rageUiCall4 then
            rageUiCall4 = TriggerServerEvent
            numberValue13 = "da53690b26"
            numberValue15 = flag14
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "da53690b26".
            rageUiCall4(numberValue13, numberValue15)
          else
            rageUiCall4 = TriggerServerEvent
            numberValue13 = "6fd6b5c896"
            numberValue15 = flag14
            rageUiCall4(numberValue13, numberValue15)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall5(flag20, workValue, dataTable, flag4, workValue2)
    end
  end
  function flag16()
    local arg12, arg2
  end
  arg1(mathHelper, flag11, numberValue12, flag13, playerPed, flag16)
end
cmgCall3(textValue11, textValue12, textValue13, textValue14)
cmgCall3 = RegisterNetEvent
textValue11 = "c704e0f3f6"
-- Beginner: this function handles network event "c704e0f3f6".
function textValue12(arg1)
  local mathHelper
  mathHelper = arg1 or nil
  if not arg1 then
    mathHelper = {}
  end
  dataTable4 = mathHelper
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c704e0f3f6".
cmgCall3(textValue11, textValue12)
cmgCall3 = RegisterNetEvent
textValue11 = "da53690b26"
-- Beginner: this function handles network event "da53690b26".
function textValue12(arg1)
  local mathHelper, flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16, flag19
  mathHelper = CMG
  mathHelper = mathHelper.requestEntitySpawn
  flag11 = "purge_vehicle"
  mathHelper(flag11)
  mathHelper = CMG
  mathHelper = mathHelper.spawnVehicle
  flag11 = arg1
  numberValue12 = cmgCall.vehicleSelectCoords
  numberValue12 = numberValue12.x
  flag13 = cmgCall.vehicleSelectCoords
  flag13 = flag13.y
  playerPed = cmgCall.vehicleSelectCoords
  playerPed = playerPed.z
  flag16 = 0.0
  flag18 = true
  textValue16 = true
  flag19 = true
  mathHelper = mathHelper(flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16, flag19)
  flag11 = CMG
  flag11 = flag11.getClientUserId
  -- Beginner: result below is userId.
  flag11 = flag11()
  if flag11 then
    numberValue12 = DecorSetInt
    flag13 = mathHelper
    playerPed = "ac76c9d452"
    flag16 = flag11
    numberValue12(flag13, playerPed, flag16)
  end
  numberValue12 = CMG
  numberValue12 = numberValue12.applyMaxDefaultModsToVehicle
  flag13 = mathHelper
  numberValue12(flag13)
  numberValue12 = SetVehRadioStation
  flag13 = mathHelper
  playerPed = "OFF"
  numberValue12(flag13, playerPed)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "da53690b26".
cmgCall3(textValue11, textValue12)
cmgCall3 = CMG
cmgCall3 = cmgCall3.registerDevMenuItems
textValue11 = "Purge"
function textValue12()
  local arg1, mathHelper, flag11, numberValue12, flag13
  arg1 = RageUI
  arg1 = arg1.Button
  mathHelper = "Start Testing"
  flag11 = ""
  numberValue12 = true
  function flag13(arg12, arg2, arg3)
    local flag12, flag14
    if arg3 then
      flag12 = TriggerServerEvent
      flag14 = "24b1dd195b"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "24b1dd195b".
      flag12(flag14)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  arg1(mathHelper, flag11, numberValue12, flag13)
end
cmgCall3(textValue11, textValue12)
cmgCall3 = RegisterNetEvent
textValue11 = "90744d69da"
-- Beginner: this function handles network event "90744d69da".
function textValue12()
  local arg1, mathHelper, flag11
  arg1 = TriggerServerEvent
  mathHelper = "6de350d017"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6de350d017".
  arg1(mathHelper)
  arg1 = SetTimeout
  mathHelper = 2000
  -- Beginner: this function handles network event "90744d69da".
  function flag11()
    local arg12, arg2
    arg12 = rageUiCall2
    arg12()
  end
  arg1(mathHelper, flag11)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "90744d69da".
cmgCall3(textValue11, textValue12)
function cmgCall3()
  local arg1, mathHelper, flag11, numberValue12
  arg1 = TriggerEvent
  mathHelper = "371eab1d3a"
  flag11 = {}
  flag11.text = "You have entered the Purge Money Zone"
  flag11.height = "200px"
  flag11.width = "auto"
  flag11.colour = "#FFF"
  flag11.background = "#32CD32"
  flag11.pos = "bottom-right"
  flag11.icon = "success"
  numberValue12 = 5000
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
  arg1(mathHelper, flag11, numberValue12)
end
function textValue11()
  local arg1, mathHelper, flag11, numberValue12
  arg1 = TriggerEvent
  mathHelper = "371eab1d3a"
  flag11 = {}
  flag11.text = "You have left the Purge Money Zone"
  flag11.height = "200px"
  flag11.width = "auto"
  flag11.colour = "#FFF"
  flag11.background = "#32CD32"
  flag11.pos = "bottom-right"
  flag11.icon = "success"
  numberValue12 = 5000
  arg1(mathHelper, flag11, numberValue12)
end
textValue12 = RegisterNetEvent
textValue13 = "81a74b130d"
-- Beginner: this function handles network event "81a74b130d".
function textValue14(arg1)
  local mathHelper, flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16, flag19
  mathHelper = eventRegistration2
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  mathHelper()
  vector3Builder3 = arg1
  mathHelper = AddBlipForRadius
  flag11 = vector3Builder3.x
  numberValue12 = vector3Builder3.y
  flag13 = vector3Builder3.z
  playerPed = cmgCall.moneyZoneRadius
  -- Beginner: result below is blipHandle.
  mathHelper = mathHelper(flag11, numberValue12, flag13, playerPed)
  numberValue14 = mathHelper
  mathHelper = SetBlipColour
  flag11 = numberValue14
  numberValue12 = 1
  mathHelper(flag11, numberValue12)
  mathHelper = SetBlipPriority
  flag11 = numberValue14
  numberValue12 = 2
  mathHelper(flag11, numberValue12)
  mathHelper = SetBlipAlpha
  flag11 = numberValue14
  numberValue12 = 200
  mathHelper(flag11, numberValue12)
  mathHelper = tCMG
  mathHelper = mathHelper.addBlip
  flag11 = vector3Builder3.x
  numberValue12 = vector3Builder3.y
  flag13 = vector3Builder3.z
  playerPed = 500
  flag16 = 3
  flag18 = "Purge Money Zone"
  textValue16 = 1.2
  mathHelper = mathHelper(flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16)
  numberValue16 = mathHelper
  mathHelper = CMG
  mathHelper = mathHelper.createArea
  flag11 = "purge_money_zone"
  numberValue12 = vector3Builder3
  flag13 = cmgCall.moneyZoneRadius
  playerPed = 100.0
  flag16 = cmgCall3
  flag18 = textValue11
  function textValue16()
    local arg12, arg2
  end
  flag19 = {}
  -- Beginner: Create an interaction area around a world position.
  mathHelper(flag11, numberValue12, flag13, playerPed, flag16, flag18, textValue16, flag19)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "81a74b130d".
textValue12(textValue13, textValue14)