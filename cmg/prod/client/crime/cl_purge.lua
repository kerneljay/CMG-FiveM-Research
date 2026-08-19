--[[
    LEVEL 1 BEGINNER GUIDE — Purge
    ===================================

    File: cmg/prod/client/crime/cl_purge.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: crime, robbery, gang, and criminal gameplay, specifically the Purge feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 56
      * Background threads: 0
      * Always-running loops: 4
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
local cmgOperation, text8, stateFlag10, dataCollection4, createVector33, number14, number16, cmgOperation4, workingValue8, text17, text, rageUiOperation, text2, text3, rageUiOperation2, rageUiOperation3, text5, workingValue3, number2, text7, text9, workingValue4, eventHandler, text10, number7, cmgOperation2, dataCollection2, dataCollection3, createVector3, createVector32, number9, number10, number11, workingValue7, eventHandler2, eventHandler3, cmgOperation3, text11, text12, text13, text14, text15
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text8 = "cfg/cfg_purge"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text8)

-- === HELPER FUNCTION (decompiler name: text8; parameters: none) ===
function text8()
  local localValue1, mathHelper, stateFlag11, number12
  localValue1 = cmgOperation.randomSpawnpoints
  mathHelper = math
  mathHelper = mathHelper.random
  stateFlag11 = 1
  number12 = cmgOperation.randomSpawnpoints
  number12 = #number12
  mathHelper = mathHelper(stateFlag11, number12)
  localValue1 = localValue1[mathHelper]
  return localValue1
end
stateFlag10 = false
dataCollection4 = {}
createVector33 = vector3
number14 = 0.0
number16 = 0.0
cmgOperation4 = 0.0
createVector33 = createVector33(number14, number16, cmgOperation4)
number14 = 0
number16 = 0
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: none) ===
function workingValue8()
  local localValue1, mathHelper
  localValue1 = stateFlag10
  return localValue1
end
cmgOperation4.hasSpawnProtection = workingValue8

-- === HELPER FUNCTION (decompiler name: cmgOperation4; parameters: none) ===
function cmgOperation4()
  local localValue1, mathHelper, stateFlag11
  localValue1 = true
  stateFlag10 = localValue1
  localValue1 = SetTimeout
  mathHelper = 20000

  -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: none) ===
  function stateFlag11()
    local localValue12, localValue2
    localValue12 = false
    stateFlag10 = localValue12
  end
  localValue1(mathHelper, stateFlag11)
  localValue1 = Citizen
  localValue1 = localValue1.CreateThread

  -- === HELPER FUNCTION: mathHelper() ===
  function mathHelper()
    local localValue12, localValue2, localValue3, stateFlag12, stateFlag14, stateFlag15, stateFlag17, stringHelper2, rageUiOperation5, stateFlag20
    localValue12 = SetLocalPlayerAsGhost
    localValue2 = true
    localValue12(localValue2)
    while true do
      localValue12 = stateFlag10
      if not localValue12 then
        break
      end
      localValue12 = SetEntityProofs
      localValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = true
      stateFlag12 = true
      stateFlag14 = true
      stateFlag15 = true
      stateFlag17 = true
      stringHelper2 = true
      rageUiOperation5 = true
      stateFlag20 = true
      localValue12(localValue2, localValue3, stateFlag12, stateFlag14, stateFlag15, stateFlag17, stringHelper2, rageUiOperation5, stateFlag20)
      localValue12 = SetEntityAlpha
      localValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = 100
      stateFlag12 = false
      localValue12(localValue2, localValue3, stateFlag12)
      localValue12 = SetEntityHealth
      localValue2 = PlayerPedId
      -- Beginner: result below is localPlayerPed.
      localValue2 = localValue2()
      localValue3 = 200
      localValue12(localValue2, localValue3)
      localValue12 = Wait
      localValue2 = 0
      localValue12(localValue2)
    end
    localValue12 = SetEntityAlpha
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = 255
    stateFlag12 = false
    localValue12(localValue2, localValue3, stateFlag12)
    localValue12 = SetLocalPlayerAsGhost
    localValue2 = false
    localValue12(localValue2)
    localValue12 = ResetGhostedEntityAlpha
    localValue12()
    localValue12 = tCMG
    localValue12 = localValue12.notify
    localValue2 = "~g~Spawn protection ended!"
    -- Beginner: Show a notification to the player.
    localValue12(localValue2)
    localValue12 = SetEntityProofs
    localValue2 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue2 = localValue2()
    localValue3 = false
    stateFlag12 = false
    stateFlag14 = false
    stateFlag15 = false
    stateFlag17 = false
    stringHelper2 = false
    rageUiOperation5 = false
    stateFlag20 = false
    localValue12(localValue2, localValue3, stateFlag12, stateFlag14, stateFlag15, stateFlag17, stringHelper2, rageUiOperation5, stateFlag20)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  localValue1(mathHelper)
end
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text17 = "purge"
text = "main"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text2 = "Spawnpoint"
text3 = "Main Menu"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3, text5, workingValue3, number2, text7, text9, workingValue4, eventHandler, text10, number7, cmgOperation2, dataCollection2, dataCollection3, createVector3, createVector32, number9, number10, number11, workingValue7, eventHandler2, eventHandler3, cmgOperation3, text11, text12, text13, text14, text15 = rageUiOperation3()
rageUiOperation, text2, text3, rageUiOperation2, rageUiOperation3, text5, workingValue3, number2, text7, text9, workingValue4, eventHandler, text10, number7, cmgOperation2, dataCollection2, dataCollection3, createVector3, createVector32, number9, number10, number11, workingValue7, eventHandler2, eventHandler3, cmgOperation3, text11, text12, text13, text14, text15 = rageUiOperation(text2, text3, rageUiOperation2, rageUiOperation3, text5, workingValue3, number2, text7, text9, workingValue4, eventHandler, text10, number7, cmgOperation2, dataCollection2, dataCollection3, createVector3, createVector32, number9, number10, number11, workingValue7, eventHandler2, eventHandler3, cmgOperation3, text11, text12, text13, text14, text15)
workingValue8(text17, text, rageUiOperation, text2, text3, rageUiOperation2, rageUiOperation3, text5, workingValue3, number2, text7, text9, workingValue4, eventHandler, text10, number7, cmgOperation2, dataCollection2, dataCollection3, createVector3, createVector32, number9, number10, number11, workingValue7, eventHandler2, eventHandler3, cmgOperation3, text11, text12, text13, text14, text15)
workingValue8 = RMenu
workingValue8 = workingValue8.Add
text17 = "purge"
text = "vehicles"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text2 = ""
text3 = "Purchase Vehicles"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3, text5, workingValue3, number2, text7, text9, workingValue4, eventHandler, text10, number7, cmgOperation2, dataCollection2, dataCollection3, createVector3, createVector32, number9, number10, number11, workingValue7, eventHandler2, eventHandler3, cmgOperation3, text11, text12, text13, text14, text15 = rageUiOperation3()
rageUiOperation, text2, text3, rageUiOperation2, rageUiOperation3, text5, workingValue3, number2, text7, text9, workingValue4, eventHandler, text10, number7, cmgOperation2, dataCollection2, dataCollection3, createVector3, createVector32, number9, number10, number11, workingValue7, eventHandler2, eventHandler3, cmgOperation3, text11, text12, text13, text14, text15 = rageUiOperation(text2, text3, rageUiOperation2, rageUiOperation3, text5, workingValue3, number2, text7, text9, workingValue4, eventHandler, text10, number7, cmgOperation2, dataCollection2, dataCollection3, createVector3, createVector32, number9, number10, number11, workingValue7, eventHandler2, eventHandler3, cmgOperation3, text11, text12, text13, text14, text15)
workingValue8(text17, text, rageUiOperation, text2, text3, rageUiOperation2, rageUiOperation3, text5, workingValue3, number2, text7, text9, workingValue4, eventHandler, text10, number7, cmgOperation2, dataCollection2, dataCollection3, createVector3, createVector32, number9, number10, number11, workingValue7, eventHandler2, eventHandler3, cmgOperation3, text11, text12, text13, text14, text15)
workingValue8 = vector3
text17 = -1011.0608520508
text = -2973.7270507812
rageUiOperation = 13.951969146729
workingValue8 = workingValue8(text17, text, rageUiOperation)
text17 = false
text = nil
rageUiOperation = nil
text2 = 0

-- === HELPER FUNCTION (decompiler name: text3; parameters: none) ===
function text3()
  local localValue1, mathHelper, stateFlag11, number12, stateFlag13, playerPed
  localValue1 = text
  if localValue1 then
    localValue1 = DestroyCam
    mathHelper = text
    stateFlag11 = false
    localValue1(mathHelper, stateFlag11)
    localValue1 = nil
    text = localValue1
  end
  localValue1 = rageUiOperation
  if localValue1 then
    localValue1 = DestroyCam
    mathHelper = rageUiOperation
    stateFlag11 = false
    localValue1(mathHelper, stateFlag11)
    localValue1 = nil
    rageUiOperation = localValue1
  end
  localValue1 = RenderScriptCams
  mathHelper = false
  stateFlag11 = false
  number12 = 0
  stateFlag13 = true
  playerPed = false
  localValue1(mathHelper, stateFlag11, number12, stateFlag13, playerPed)
  localValue1 = ClearFocus
  localValue1()
  localValue1 = TriggerScreenblurFadeOut
  mathHelper = 0.0
  localValue1(mathHelper)
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  mathHelper = RMenu
  stateFlag11 = mathHelper
  mathHelper = mathHelper.Get
  number12 = "purge"
  stateFlag13 = "main"
  -- Beginner: result below is menu.
  mathHelper = mathHelper(stateFlag11, number12, stateFlag13)
  stateFlag11 = false
  localValue1(mathHelper, stateFlag11)
  localValue1 = ClearTimecycleModifier
  localValue1()
  localValue1 = TriggerEvent
  mathHelper = "0cee493655"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "0cee493655".
  localValue1(mathHelper)
  localValue1 = CMG
  localValue1 = localValue1.uiSetFocus
  mathHelper = false
  stateFlag11 = false
  number12 = false
  localValue1(mathHelper, stateFlag11, number12)
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  mathHelper = SetEntityVisible
  stateFlag11 = localValue1
  number12 = true
  stateFlag13 = true
  mathHelper(stateFlag11, number12, stateFlag13)
  mathHelper = FreezeEntityPosition
  stateFlag11 = localValue1
  number12 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  mathHelper(stateFlag11, number12)
  mathHelper = SetPlayerControl
  stateFlag11 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  stateFlag11 = stateFlag11()
  number12 = true
  stateFlag13 = 0
  mathHelper(stateFlag11, number12, stateFlag13)
  mathHelper = CMG
  mathHelper = mathHelper.showAllDisplays
  stateFlag11 = "purgespawn"
  mathHelper(stateFlag11)
  mathHelper = CMG
  mathHelper = mathHelper.showHud
  mathHelper()
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: none) ===
function rageUiOperation2()
  local localValue1, mathHelper, stateFlag11, number12
  localValue1 = vector3
  mathHelper = -1011.0608520508
  stateFlag11 = -2973.7270507812
  number12 = 13.951969146729
  localValue1 = localValue1(mathHelper, stateFlag11, number12)
  workingValue8 = localValue1
  localValue1 = true
  text17 = localValue1
  localValue1 = RageUI
  localValue1 = localValue1.CloseAll
  localValue1()
end
rageUiOperation3 = RageUI
rageUiOperation3 = rageUiOperation3.CreateWhile
text5 = 1.0
workingValue3 = RMenu
number2 = workingValue3
workingValue3 = workingValue3.Get
text7 = "purge"
text9 = "main"
-- Beginner: result below is menu.
workingValue3 = workingValue3(number2, text7, text9)
number2 = nil

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  mathHelper = RMenu
  stateFlag11 = mathHelper
  mathHelper = mathHelper.Get
  number12 = "purge"
  stateFlag13 = "main"
  -- Beginner: result below is menu.
  mathHelper = mathHelper(stateFlag11, number12, stateFlag13)
  stateFlag11 = true
  number12 = true
  stateFlag13 = true

  -- === HELPER FUNCTION: playerPed() ===
  function playerPed()
    local localValue12, localValue2, localValue3, stateFlag12, stateFlag14, stateFlag15
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue2 = "Random Spawnpoint"
    localValue3 = ""
    stateFlag12 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue22, localValue32) ===
    function stateFlag14(localValue13, localValue22, localValue32)
      local rageUiOperation4
      if localValue32 then
        rageUiOperation4 = true
        text17 = rageUiOperation4
        rageUiOperation4 = RageUI
        rageUiOperation4 = rageUiOperation4.CloseAll
        rageUiOperation4()
      end
    end
    stateFlag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue2, localValue3, stateFlag12, stateFlag14, stateFlag15)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue2 = "Heathrow Airport"
    localValue3 = ""
    stateFlag12 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue22, localValue32) ===
    function stateFlag14(localValue13, localValue22, localValue32)
      local rageUiOperation4
      if localValue32 then
        rageUiOperation4 = rageUiOperation2
        rageUiOperation4()
      end
    end
    stateFlag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue2, localValue3, stateFlag12, stateFlag14, stateFlag15)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue2 = "Rebel Diner"
    localValue3 = ""
    stateFlag12 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue22, localValue32) ===
    function stateFlag14(localValue13, localValue22, localValue32)
      local rageUiOperation4, number13, number15, number17
      if localValue32 then
        rageUiOperation4 = vector3
        number13 = 1592.0364990234
        number15 = 6441.91015625
        number17 = 25.195180892944
        rageUiOperation4 = rageUiOperation4(number13, number15, number17)
        workingValue8 = rageUiOperation4
        rageUiOperation4 = true
        text17 = rageUiOperation4
        rageUiOperation4 = RageUI
        rageUiOperation4 = rageUiOperation4.CloseAll
        rageUiOperation4()
      end
    end
    stateFlag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue2, localValue3, stateFlag12, stateFlag14, stateFlag15)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue2 = "Lodges"
    localValue3 = ""
    stateFlag12 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue22, localValue32) ===
    function stateFlag14(localValue13, localValue22, localValue32)
      local rageUiOperation4, number13, number15, number17
      if localValue32 then
        rageUiOperation4 = vector3
        number13 = -730.63116455078
        number15 = 5811.7763671875
        number17 = 17.41862487793
        rageUiOperation4 = rageUiOperation4(number13, number15, number17)
        workingValue8 = rageUiOperation4
        rageUiOperation4 = true
        text17 = rageUiOperation4
        rageUiOperation4 = RageUI
        rageUiOperation4 = rageUiOperation4.CloseAll
        rageUiOperation4()
      end
    end
    stateFlag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue2, localValue3, stateFlag12, stateFlag14, stateFlag15)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue2 = "Sandy Airport"
    localValue3 = ""
    stateFlag12 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue22, localValue32) ===
    function stateFlag14(localValue13, localValue22, localValue32)
      local rageUiOperation4, number13, number15, number17
      if localValue32 then
        rageUiOperation4 = vector3
        number13 = 1754.6137695313
        number15 = 3286.3181152344
        number17 = 41.122856140137
        rageUiOperation4 = rageUiOperation4(number13, number15, number17)
        workingValue8 = rageUiOperation4
        rageUiOperation4 = true
        text17 = rageUiOperation4
        rageUiOperation4 = RageUI
        rageUiOperation4 = rageUiOperation4.CloseAll
        rageUiOperation4()
      end
    end
    stateFlag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue2, localValue3, stateFlag12, stateFlag14, stateFlag15)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue2 = "Jamestown"
    localValue3 = ""
    stateFlag12 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue22, localValue32) ===
    function stateFlag14(localValue13, localValue22, localValue32)
      local rageUiOperation4, number13, number15, number17
      if localValue32 then
        rageUiOperation4 = vector3
        number13 = 319.39431762695
        number15 = -2028.3155517578
        number17 = 20.698621749878
        rageUiOperation4 = rageUiOperation4(number13, number15, number17)
        workingValue8 = rageUiOperation4
        rageUiOperation4 = true
        text17 = rageUiOperation4
        rageUiOperation4 = RageUI
        rageUiOperation4 = rageUiOperation4.CloseAll
        rageUiOperation4()
      end
    end
    stateFlag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue2, localValue3, stateFlag12, stateFlag14, stateFlag15)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue2 = "Legion Square"
    localValue3 = ""
    stateFlag12 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue22, localValue32) ===
    function stateFlag14(localValue13, localValue22, localValue32)
      local rageUiOperation4, number13, number15, number17
      if localValue32 then
        rageUiOperation4 = vector3
        number13 = 187.81332397461
        number15 = -952.79168701172
        number17 = 30.09193611145
        rageUiOperation4 = rageUiOperation4(number13, number15, number17)
        workingValue8 = rageUiOperation4
        rageUiOperation4 = true
        text17 = rageUiOperation4
        rageUiOperation4 = RageUI
        rageUiOperation4 = rageUiOperation4.CloseAll
        rageUiOperation4()
      end
    end
    stateFlag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue2, localValue3, stateFlag12, stateFlag14, stateFlag15)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue2 = "Senora Highway"
    localValue3 = ""
    stateFlag12 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue22, localValue32) ===
    function stateFlag14(localValue13, localValue22, localValue32)
      local rageUiOperation4, number13, number15, number17
      if localValue32 then
        rageUiOperation4 = vector3
        number13 = 2784.3762207031
        number15 = 3477.5239257813
        number17 = 55.239120483398
        rageUiOperation4 = rageUiOperation4(number13, number15, number17)
        workingValue8 = rageUiOperation4
        rageUiOperation4 = true
        text17 = rageUiOperation4
        rageUiOperation4 = RageUI
        rageUiOperation4 = rageUiOperation4.CloseAll
        rageUiOperation4()
      end
    end
    stateFlag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue2, localValue3, stateFlag12, stateFlag14, stateFlag15)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue2 = "Shank Shop"
    localValue3 = ""
    stateFlag12 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue22, localValue32) ===
    function stateFlag14(localValue13, localValue22, localValue32)
      local rageUiOperation4, number13, number15, number17
      if localValue32 then
        rageUiOperation4 = vector3
        number13 = -3152.5024414063
        number15 = 1069.2584228516
        number17 = 20.674007415771
        rageUiOperation4 = rageUiOperation4(number13, number15, number17)
        workingValue8 = rageUiOperation4
        rageUiOperation4 = true
        text17 = rageUiOperation4
        rageUiOperation4 = RageUI
        rageUiOperation4 = rageUiOperation4.CloseAll
        rageUiOperation4()
      end
    end
    stateFlag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue2, localValue3, stateFlag12, stateFlag14, stateFlag15)
    localValue12 = RageUI
    localValue12 = localValue12.Button
    localValue2 = "~r~Leave Purge"
    localValue3 = ""
    stateFlag12 = true

    -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: localValue13, localValue22, localValue32) ===
    function stateFlag14(localValue13, localValue22, localValue32)
      local rageUiOperation4, number13, number15, number17
      if localValue32 then
        rageUiOperation4 = vector3
        number13 = -1011.0608520508
        number15 = -2973.7270507812
        number17 = 13.951969146729
        rageUiOperation4 = rageUiOperation4(number13, number15, number17)
        workingValue8 = rageUiOperation4
        rageUiOperation4 = true
        text17 = rageUiOperation4
        rageUiOperation4 = RageUI
        rageUiOperation4 = rageUiOperation4.CloseAll
        rageUiOperation4()
        rageUiOperation4 = Citizen
        rageUiOperation4 = rageUiOperation4.Wait
        number13 = 5000
        rageUiOperation4(number13)
        rageUiOperation4 = CMG
        rageUiOperation4 = rageUiOperation4.isPurge
        rageUiOperation4 = rageUiOperation4()
        if rageUiOperation4 then
          rageUiOperation4 = TriggerServerEvent
          number13 = "f577a0908b"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f577a0908b".
          rageUiOperation4(number13)
        end
      end
    end
    stateFlag15 = nil
    -- Beginner: Draw a selectable RageUI menu button.
    localValue12(localValue2, localValue3, stateFlag12, stateFlag14, stateFlag15)
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag16; parameters: none) ===
  function stateFlag16()
    local localValue12, localValue2
  end
  localValue1(mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16)
end
rageUiOperation3(text5, workingValue3, number2, text7)
rageUiOperation3 = RegisterNetEvent
text5 = "9df078d914"
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9df078d914".
rageUiOperation3(text5)
rageUiOperation3 = AddEventHandler
text5 = "9df078d914"
-- Beginner: this function runs when client event "9df078d914" fires.

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5, text4
  mathHelper = text3
  mathHelper()
  mathHelper = text2
  mathHelper = mathHelper + 1
  text2 = mathHelper
  mathHelper = text2
  stateFlag11 = tCMG
  stateFlag11 = stateFlag11.disableComa
  stateFlag11()
  stateFlag11 = ShutdownLoadingScreen
  stateFlag11()
  stateFlag11 = ShutdownLoadingScreenNui
  stateFlag11()
  stateFlag11 = cmgOperation4
  stateFlag11()
  stateFlag11 = DoScreenFadeOut
  number12 = 250
  stateFlag11(number12)
  stateFlag11 = CMG
  stateFlag11 = stateFlag11.hideAllDisplays
  number12 = "purgespawn"
  stateFlag11(number12)
  stateFlag11 = Wait
  number12 = 500
  stateFlag11(number12)
  stateFlag11 = TriggerScreenblurFadeIn
  number12 = 100.0
  stateFlag11(number12)
  stateFlag11 = text8
  stateFlag11 = stateFlag11()
  workingValue8 = stateFlag11
  stateFlag11 = CMG
  stateFlag11 = stateFlag11.applySavedCustomisation
  stateFlag11()
  stateFlag11 = RequestCollisionAtCoord
  number12 = workingValue8.x
  stateFlag13 = workingValue8.y
  playerPed = workingValue8.z
  stateFlag11(number12, stateFlag13, playerPed)
  stateFlag11 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  stateFlag11 = stateFlag11()
  while true do
    number12 = HaveAllStreamingRequestsCompleted
    stateFlag13 = PlayerPedId
    stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5, text4 = stateFlag13()
    number12 = number12(stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5, text4)
    if 1 == number12 then
      break
    end
    number12 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    number12 = number12()
    number12 = number12 - stateFlag11
    stateFlag13 = 5000
    if not (number12 < stateFlag13) then
      break
    end
    number12 = Wait
    stateFlag13 = 0
    number12(stateFlag13)
    number12 = print
    stateFlag13 = "[CMG] Waiting for streaming requests to complete!"
    number12(stateFlag13)
  end
  number12 = DoScreenFadeIn
  stateFlag13 = 1000
  number12(stateFlag13)
  number12 = CMG
  number12 = number12.getPlayerCoords
  -- Beginner: result below is playerCoords.
  number12 = number12()
  stateFlag13 = SetEntityCoordsNoOffset
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  stateFlag16 = number12.x
  stateFlag18 = number12.y
  text16 = 1200.0
  stateFlag19 = false
  stateFlag = false
  stateFlag2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  stateFlag13(playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2)
  stateFlag13 = SetEntityVisible
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  stateFlag16 = false
  stateFlag18 = false
  stateFlag13(playerPed, stateFlag16, stateFlag18)
  stateFlag13 = FreezeEntityPosition
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  stateFlag16 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  stateFlag13(playerPed, stateFlag16)
  stateFlag13 = CMG
  stateFlag13 = stateFlag13.setPlayerCombatTimer
  playerPed = 0
  stateFlag16 = false
  stateFlag13(playerPed, stateFlag16)
  while true do
    stateFlag13 = text17
    if stateFlag13 then
      break
    end
    stateFlag13 = text2
    if mathHelper ~= stateFlag13 then
      return
    end
    stateFlag13 = RageUI
    stateFlag13 = stateFlag13.Visible
    playerPed = RMenu
    stateFlag16 = playerPed
    playerPed = playerPed.Get
    stateFlag18 = "purge"
    text16 = "main"
    -- Beginner: result below is menu.
    playerPed = playerPed(stateFlag16, stateFlag18, text16)
    stateFlag16 = true
    stateFlag13(playerPed, stateFlag16)
    stateFlag13 = Citizen
    stateFlag13 = stateFlag13.Wait
    playerPed = 0
    stateFlag13(playerPed)
  end
  stateFlag13 = false
  text17 = stateFlag13
  stateFlag13 = SetEntityVisible
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  stateFlag16 = true
  stateFlag18 = true
  stateFlag13(playerPed, stateFlag16, stateFlag18)
  stateFlag13 = SetFocusPosAndVel
  playerPed = workingValue8.x
  stateFlag16 = workingValue8.y
  stateFlag18 = workingValue8.z
  stateFlag18 = stateFlag18 + 1000
  text16 = 0.0
  stateFlag19 = 0.0
  stateFlag = 0.0
  stateFlag13(playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag)
  stateFlag13 = CreateCameraWithParams
  playerPed = "DEFAULT_SCRIPTED_CAMERA"
  stateFlag16 = workingValue8.x
  stateFlag18 = workingValue8.y
  text16 = workingValue8.z
  text16 = text16 + 1000
  stateFlag19 = 0.0
  stateFlag = 0.0
  stateFlag2 = 0.0
  stateFlag3 = 65.0
  stateFlag5 = false
  text4 = 2
  stateFlag13 = stateFlag13(playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5, text4)
  text = stateFlag13
  stateFlag13 = SetCamActive
  playerPed = text
  stateFlag16 = true
  stateFlag13(playerPed, stateFlag16)
  stateFlag13 = RenderScriptCams
  playerPed = true
  stateFlag16 = true
  stateFlag18 = 0
  text16 = true
  stateFlag19 = false
  stateFlag13(playerPed, stateFlag16, stateFlag18, text16, stateFlag19)
  stateFlag13 = CreateCameraWithParams
  playerPed = "DEFAULT_SCRIPTED_CAMERA"
  stateFlag16 = workingValue8.x
  stateFlag18 = workingValue8.y
  text16 = workingValue8.z
  stateFlag19 = 0.0
  stateFlag = 0.0
  stateFlag2 = 0.0
  stateFlag3 = 65.0
  stateFlag5 = false
  text4 = 2
  stateFlag13 = stateFlag13(playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5, text4)
  rageUiOperation = stateFlag13
  stateFlag13 = SetCamActiveWithInterp
  playerPed = rageUiOperation
  stateFlag16 = text
  stateFlag18 = 5000
  text16 = 0
  stateFlag19 = 0
  stateFlag13(playerPed, stateFlag16, stateFlag18, text16, stateFlag19)
  stateFlag13 = Wait
  playerPed = 2500
  stateFlag13(playerPed)
  stateFlag13 = text2
  if mathHelper ~= stateFlag13 then
    return
  end
  stateFlag13 = ClearFocus
  stateFlag13()
  if not localValue1 then
    stateFlag13 = SetEntityCoords
    playerPed = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    playerPed = playerPed()
    stateFlag16 = workingValue8.x
    stateFlag18 = workingValue8.y
    text16 = workingValue8.z
    stateFlag19 = true
    stateFlag = false
    stateFlag2 = false
    stateFlag3 = false
    -- Beginner: Move/teleport an entity to new coordinates.
    stateFlag13(playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3)
    stateFlag13 = CMG
    stateFlag13 = stateFlag13.setPlayerCombatTimer
    playerPed = 0
    stateFlag16 = false
    stateFlag13(playerPed, stateFlag16)
  end
  stateFlag13 = FreezeEntityPosition
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  stateFlag16 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  stateFlag13(playerPed, stateFlag16)
  stateFlag13 = TriggerScreenblurFadeOut
  playerPed = 2000.0
  stateFlag13(playerPed)
  stateFlag13 = Wait
  playerPed = 2000
  stateFlag13(playerPed)
  stateFlag13 = text2
  if mathHelper ~= stateFlag13 then
    return
  end
  stateFlag13 = CMG
  stateFlag13 = stateFlag13.applySavedCustomisation
  stateFlag13()
  stateFlag13 = SetEntityHealth
  playerPed = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  playerPed = playerPed()
  stateFlag16 = 200
  stateFlag13(playerPed, stateFlag16)
  stateFlag13 = text3
  stateFlag13()
end
-- Beginner: Register a client-side event handler. Event/command: "9df078d914".
rageUiOperation3(text5, workingValue3)
rageUiOperation3 = vector3
text5 = 196.10565185547
workingValue3 = -934.40093994141
number2 = 29.686786651611
rageUiOperation3 = rageUiOperation3(text5, workingValue3, number2)
text5 = nil
workingValue3 = 0
number2 = nil
text7 = 0

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5, text4, stringHelper, text6, number, number3, number4, number5, number6, stateFlag6, stateFlag7, number8, stateFlag8, workingValue5, workingValue6, stateFlag9
  localValue1 = text5
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.getPlayerCoords
    -- Beginner: result below is playerCoords.
    localValue1 = localValue1()
    mathHelper = rageUiOperation3
    localValue1 = localValue1 - mathHelper
    mathHelper = 0.0
    stateFlag11 = localValue1.x
    if stateFlag11 > 0.0 then
      stateFlag11 = math
      stateFlag11 = stateFlag11.atan
      number12 = localValue1.y
      stateFlag13 = localValue1.x
      number12 = number12 / stateFlag13
      stateFlag11 = stateFlag11(number12)
      number12 = math
      number12 = number12.pi
      stateFlag13 = 180.0
      number12 = stateFlag13 / number12
      number12 = stateFlag11 * number12
      stateFlag13 = 270.0
      mathHelper = stateFlag13 - number12
    else
      stateFlag11 = localValue1.x
      if stateFlag11 < 0.0 then
        stateFlag11 = math
        stateFlag11 = stateFlag11.atan
        number12 = localValue1.y
        stateFlag13 = localValue1.x
        stateFlag13 = -stateFlag13
        number12 = number12 / stateFlag13
        stateFlag11 = stateFlag11(number12)
        number12 = math
        number12 = number12.pi
        stateFlag13 = 180.0
        number12 = stateFlag13 / number12
        number12 = stateFlag11 * number12
        mathHelper = number12 + 90.0
      end
    end
    stateFlag11 = Scaleform
    number12 = "mp_mission_name_freemode"
    stateFlag11 = stateFlag11(number12)
    number12 = CMG
    number12 = number12.isPurge
    number12 = number12()
    if number12 then
      number12 = "Press [E] to exit"
      if number12 then
        goto continueAtStep64
      end
    end
    number12 = "Press [E] to enter"
    ::continueAtStep64::
    stateFlag13 = stateFlag11.RunFunction
    playerPed = "SET_MISSION_INFO"
    stateFlag16 = {}
    stateFlag18 = number12
    text16 = "CMG Purge"
    stateFlag19 = ""
    stateFlag = ""
    stateFlag2 = ""
    stateFlag3 = ""
    stateFlag5 = text7
    text4 = "0"
    stringHelper = ""
    text6 = ""
    stateFlag16[1] = stateFlag18
    stateFlag16[2] = text16
    stateFlag16[3] = stateFlag19
    stateFlag16[4] = stateFlag
    stateFlag16[5] = stateFlag2
    stateFlag16[6] = stateFlag3
    stateFlag16[7] = stateFlag5
    stateFlag16[8] = text4
    stateFlag16[9] = stringHelper
    stateFlag16[10] = text6
    stateFlag13(playerPed, stateFlag16)
    stateFlag13 = stateFlag11.Render3D
    playerPed = rageUiOperation3
    stateFlag16 = vector3
    stateFlag18 = 0
    text16 = 0
    stateFlag19 = mathHelper
    stateFlag16 = stateFlag16(stateFlag18, text16, stateFlag19)
    stateFlag18 = vector2
    text16 = 16.0
    stateFlag19 = 16.0
    stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5, text4, stringHelper, text6, number, number3, number4, number5, number6, stateFlag6, stateFlag7, number8, stateFlag8, workingValue5, workingValue6, stateFlag9 = stateFlag18(text16, stateFlag19)
    stateFlag13(playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5, text4, stringHelper, text6, number, number3, number4, number5, number6, stateFlag6, stateFlag7, number8, stateFlag8, workingValue5, workingValue6, stateFlag9)
    stateFlag13 = DrawMarker
    playerPed = 1
    stateFlag16 = rageUiOperation3.x
    stateFlag18 = rageUiOperation3.y
    text16 = rageUiOperation3.z
    text16 = text16 - 1.0
    stateFlag19 = 0
    stateFlag = 0
    stateFlag2 = 0
    stateFlag3 = 0
    stateFlag5 = 0
    text4 = 0
    stringHelper = 12.50125
    text6 = 12.50125
    number = 5.208854166666667
    number3 = 255
    number4 = 0
    number5 = 0
    number6 = 200
    stateFlag6 = false
    stateFlag7 = false
    number8 = 0
    stateFlag8 = false
    workingValue5 = nil
    workingValue6 = nil
    stateFlag9 = false
    stateFlag13(playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5, text4, stringHelper, text6, number, number3, number4, number5, number6, stateFlag6, stateFlag7, number8, stateFlag8, workingValue5, workingValue6, stateFlag9)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, mathHelper, stateFlag11
  localValue1 = IsControlJustPressed
  mathHelper = 0
  stateFlag11 = 51
  localValue1 = localValue1(mathHelper, stateFlag11)
  if localValue1 then
    localValue1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    localValue1 = localValue1()
    mathHelper = workingValue3
    localValue1 = localValue1 - mathHelper
    mathHelper = 30000
    if localValue1 > mathHelper then
      localValue1 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      localValue1 = localValue1()
      workingValue3 = localValue1
      localValue1 = CMG
      localValue1 = localValue1.isPurge
      localValue1 = localValue1()
      if localValue1 then
        localValue1 = TriggerServerEvent
        mathHelper = "f577a0908b"
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f577a0908b".
        localValue1(mathHelper)
      else
        localValue1 = TriggerServerEvent
        mathHelper = "6de350d017"
        localValue1(mathHelper)
      end
    else
      localValue1 = notify
      mathHelper = "~r~Please wait 30 seconds before making this decision."
      -- Beginner: Show a notification to the player.
      localValue1(mathHelper)
    end
  end
end
eventHandler = RegisterNetEvent
text10 = "9f08a8fc4a"
-- Beginner: this function handles network event "9f08a8fc4a".

-- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
function number7()
  local localValue1, mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18
  localValue1 = Scaleform
  mathHelper = "mp_mission_name_freemode"
  localValue1 = localValue1(mathHelper)
  text5 = localValue1
  localValue1 = CMG
  localValue1 = localValue1.createArea
  mathHelper = "purge_enter_marker"
  stateFlag11 = rageUiOperation3
  number12 = 100.0
  stateFlag13 = 500.0

  -- === HELPER FUNCTION: playerPed() ===
  function playerPed()
    local localValue12, localValue2
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag16; parameters: none) ===
  function stateFlag16()
    local localValue12, localValue2
  end
  stateFlag18 = text9
  -- Beginner: Create an interaction area around a world position.
  localValue1(mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18)
  localValue1 = CMG
  localValue1 = localValue1.createArea
  mathHelper = "purge_enter"
  stateFlag11 = rageUiOperation3
  number12 = 10.0
  stateFlag13 = 15.0

  -- === HELPER FUNCTION: playerPed() ===
  function playerPed()
    local localValue12, localValue2
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag16; parameters: none) ===
  function stateFlag16()
    local localValue12, localValue2
  end
  stateFlag18 = workingValue4
  localValue1(mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18)
  localValue1 = tCMG
  localValue1 = localValue1.addBlip
  mathHelper = rageUiOperation3.x
  stateFlag11 = rageUiOperation3.y
  number12 = rageUiOperation3.z
  stateFlag13 = 429
  playerPed = 1
  stateFlag16 = nil
  stateFlag18 = 1.5
  localValue1 = localValue1(mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18)
  number2 = localValue1
  localValue1 = CMG
  localValue1 = localValue1.announceMpBigMsg
  mathHelper = "~r~Purge event has started!"
  stateFlag11 = "To join go to Legion and enter the marker"
  number12 = 15000
  localValue1(mathHelper, stateFlag11, number12)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9f08a8fc4a".
eventHandler(text10, number7)
eventHandler = RegisterNetEvent
text10 = "4c63b71a2c"
-- Beginner: this function handles network event "4c63b71a2c".

-- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
function number7()
  local localValue1, mathHelper, stateFlag11, number12
  localValue1 = tCMG
  localValue1 = localValue1.removeArea
  mathHelper = "purge_enter"
  localValue1(mathHelper)
  localValue1 = tCMG
  localValue1 = localValue1.removeArea
  mathHelper = "purge_enter_marker"
  localValue1(mathHelper)
  localValue1 = text5
  if localValue1 then
    localValue1 = SetScaleformMovieAsNoLongerNeeded
    mathHelper = text5.Handle
    localValue1(mathHelper)
  end
  localValue1 = number2
  if localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.removeBlip
    mathHelper = number2
    localValue1(mathHelper)
  end
  localValue1 = CMG
  localValue1 = localValue1.announceMpBigMsg
  mathHelper = "~r~Purge event has ended"
  stateFlag11 = ""
  number12 = 15000
  localValue1(mathHelper, stateFlag11, number12)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "4c63b71a2c".
eventHandler(text10, number7)
eventHandler = false
text10 = nil
number7 = 0
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: none) ===
function dataCollection2()
  local localValue1, mathHelper
  localValue1 = eventHandler
  return localValue1
end
cmgOperation2.isPurge = dataCollection2

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, mathHelper, stateFlag11
  localValue1 = drawNativeNotification
  mathHelper = "Press ~INPUT_CONTEXT~ to leave purge"
  -- Beginner: Show a GTA-style notification/help prompt.
  localValue1(mathHelper)
  localValue1 = IsControlJustPressed
  mathHelper = 0
  stateFlag11 = 51
  localValue1 = localValue1(mathHelper, stateFlag11)
  if localValue1 then
    localValue1 = TriggerServerEvent
    mathHelper = "f577a0908b"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f577a0908b".
    localValue1(mathHelper)
  end
end
dataCollection2 = {}
dataCollection3 = {}
createVector3 = vector3
createVector32 = -962.74456787109
number9 = -2997.19921875
number10 = 12.949075035095
createVector3 = createVector3(createVector32, number9, number10)
createVector32 = vector3
number9 = -980.61328125
number10 = -2986.8991699219
number11 = 12.955061683655
createVector32, number9, number10, number11, workingValue7, eventHandler2, eventHandler3, cmgOperation3, text11, text12, text13, text14, text15 = createVector32(number9, number10, number11)
dataCollection3[1] = createVector3
dataCollection3[2] = createVector32
dataCollection3[3] = number9
dataCollection3[4] = number10
dataCollection3[5] = number11
dataCollection3[6] = workingValue7
dataCollection3[7] = eventHandler2
dataCollection3[8] = eventHandler3
dataCollection3[9] = cmgOperation3
dataCollection3[10] = text11
dataCollection3[11] = text12
dataCollection3[12] = text13
dataCollection3[13] = text14
dataCollection3[14] = text15
dataCollection2.Legion = dataCollection3
dataCollection3 = {}
createVector3 = vector3
createVector32 = -959.15783691406
number9 = -2999.2453613281
number10 = 12.949075035095
createVector3 = createVector3(createVector32, number9, number10)
createVector32 = vector3
number9 = -977.72100830078
number10 = -2988.5090332031
number11 = 12.955062637329
createVector32, number9, number10, number11, workingValue7, eventHandler2, eventHandler3, cmgOperation3, text11, text12, text13, text14, text15 = createVector32(number9, number10, number11)
dataCollection3[1] = createVector3
dataCollection3[2] = createVector32
dataCollection3[3] = number9
dataCollection3[4] = number10
dataCollection3[5] = number11
dataCollection3[6] = workingValue7
dataCollection3[7] = eventHandler2
dataCollection3[8] = eventHandler3
dataCollection3[9] = cmgOperation3
dataCollection3[10] = text11
dataCollection3[11] = text12
dataCollection3[12] = text13
dataCollection3[13] = text14
dataCollection3[14] = text15
dataCollection2.SmallArmsDealer = dataCollection3
dataCollection3 = {}
createVector3 = vector3
createVector32 = -956.20050048828
number9 = -3000.9567871094
number10 = 12.949075035095
createVector3 = createVector3(createVector32, number9, number10)
createVector32 = vector3
number9 = -974.57080078125
number10 = -2990.3208007812
number11 = 12.955067405701
createVector32, number9, number10, number11, workingValue7, eventHandler2, eventHandler3, cmgOperation3, text11, text12, text13, text14, text15 = createVector32(number9, number10, number11)
dataCollection3[1] = createVector3
dataCollection3[2] = createVector32
dataCollection3[3] = number9
dataCollection3[4] = number10
dataCollection3[5] = number11
dataCollection3[6] = workingValue7
dataCollection3[7] = eventHandler2
dataCollection3[8] = eventHandler3
dataCollection3[9] = cmgOperation3
dataCollection3[10] = text11
dataCollection3[11] = text12
dataCollection3[12] = text13
dataCollection3[13] = text14
dataCollection3[14] = text15
dataCollection2.LargeArmsDealer = dataCollection3
dataCollection3 = {}
createVector3 = vector3
createVector32 = -953.56408691406
number9 = -3002.4162597656
number10 = 12.949075035095
createVector3 = createVector3(createVector32, number9, number10)
createVector32 = vector3
number9 = -971.30810546875
number10 = -2992.1850585938
number11 = 12.955067405701
createVector32, number9, number10, number11, workingValue7, eventHandler2, eventHandler3, cmgOperation3, text11, text12, text13, text14, text15 = createVector32(number9, number10, number11)
dataCollection3[1] = createVector3
dataCollection3[2] = createVector32
dataCollection3[3] = number9
dataCollection3[4] = number10
dataCollection3[5] = number11
dataCollection3[6] = workingValue7
dataCollection3[7] = eventHandler2
dataCollection3[8] = eventHandler3
dataCollection3[9] = cmgOperation3
dataCollection3[10] = text11
dataCollection3[11] = text12
dataCollection3[12] = text13
dataCollection3[13] = text14
dataCollection3[14] = text15
dataCollection2.Rebel = dataCollection3
dataCollection3 = {}
createVector3 = vector3
createVector32 = -969.28405761719
number9 = -2997.3959960938
number10 = 12.955069313049
createVector3, createVector32, number9, number10, number11, workingValue7, eventHandler2, eventHandler3, cmgOperation3, text11, text12, text13, text14, text15 = createVector3(createVector32, number9, number10)
dataCollection3[1] = createVector3
dataCollection3[2] = createVector32
dataCollection3[3] = number9
dataCollection3[4] = number10
dataCollection3[5] = number11
dataCollection3[6] = workingValue7
dataCollection3[7] = eventHandler2
dataCollection3[8] = eventHandler3
dataCollection3[9] = cmgOperation3
dataCollection3[10] = text11
dataCollection3[11] = text12
dataCollection3[12] = text13
dataCollection3[13] = text14
dataCollection3[14] = text15
dataCollection2.Purge = dataCollection3
dataCollection3 = {}
createVector3 = nil
createVector32 = nil
number9 = nil
number10 = nil

-- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
function number11()
  local localValue1, mathHelper, stateFlag11, number12, stateFlag13
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  mathHelper = RMenu
  stateFlag11 = mathHelper
  mathHelper = mathHelper.Get
  number12 = "purge"
  stateFlag13 = "vehicles"
  -- Beginner: result below is menu.
  mathHelper = mathHelper(stateFlag11, number12, stateFlag13)
  stateFlag11 = true
  localValue1(mathHelper, stateFlag11)
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: none) ===
function workingValue7()
  local localValue1, mathHelper, stateFlag11, number12, stateFlag13
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  mathHelper = RMenu
  stateFlag11 = mathHelper
  mathHelper = mathHelper.Get
  number12 = "purge"
  stateFlag13 = "vehicles"
  -- Beginner: result below is menu.
  mathHelper = mathHelper(stateFlag11, number12, stateFlag13)
  stateFlag11 = false
  localValue1(mathHelper, stateFlag11)
end
eventHandler2 = RegisterNetEvent
eventHandler3 = "6de350d017"
-- Beginner: this function handles network event "6de350d017".

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5, text4, stringHelper, text6
  localValue1 = true
  eventHandler = localValue1
  localValue1 = CMG
  localValue1 = localValue1.initGreenzones
  localValue1()
  localValue1 = AddBlipForRadius
  mathHelper = 0.0
  stateFlag11 = 0.0
  number12 = 0.0
  stateFlag13 = 50000.0
  -- Beginner: result below is blipHandle.
  localValue1 = localValue1(mathHelper, stateFlag11, number12, stateFlag13)
  text10 = localValue1
  localValue1 = SetBlipColour
  mathHelper = text10
  stateFlag11 = 1
  localValue1(mathHelper, stateFlag11)
  localValue1 = SetBlipAlpha
  mathHelper = text10
  stateFlag11 = 80
  localValue1(mathHelper, stateFlag11)
  localValue1 = TriggerServerEvent
  mathHelper = "499112c90f"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "499112c90f".
  localValue1(mathHelper)
  localValue1 = FreezeEntityPosition
  mathHelper = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  mathHelper = mathHelper()
  stateFlag11 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue1(mathHelper, stateFlag11)
  localValue1 = SetEntityCoordsNoOffset
  mathHelper = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  mathHelper = mathHelper()
  stateFlag11 = 0.0
  number12 = 0.0
  stateFlag13 = 0.0
  playerPed = true
  stateFlag16 = false
  stateFlag18 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  localValue1(mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18)
  localValue1 = TriggerEvent
  mathHelper = "9df078d914"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "9df078d914".
  localValue1(mathHelper)
  localValue1 = pairs
  mathHelper = dataCollection2
  localValue1, mathHelper, stateFlag11, number12 = localValue1(mathHelper)
  for stateFlag13, playerPed in localValue1, mathHelper, stateFlag11, number12 do
    stateFlag16 = pairs
    stateFlag18 = playerPed
    stateFlag16, stateFlag18, text16, stateFlag19 = stateFlag16(stateFlag18)
    for stateFlag, stateFlag2 in stateFlag16, stateFlag18, text16, stateFlag19 do
      stateFlag3 = "Purge "
      stateFlag5 = stateFlag13
      text4 = " "
      stringHelper = tostring
      text6 = stateFlag
      stringHelper = stringHelper(text6)
      stateFlag3 = stateFlag3 .. stateFlag5 .. text4 .. stringHelper
      stateFlag5 = CMG
      stateFlag5 = stateFlag5.createGunStore
      text4 = stateFlag3
      stringHelper = stateFlag13
      text6 = stateFlag2
      stateFlag5(text4, stringHelper, text6)
      stateFlag5 = table
      stateFlag5 = stateFlag5.insert
      text4 = dataCollection3
      stringHelper = stateFlag3
      stateFlag5(text4, stringHelper)
    end
  end
  localValue1 = CMG
  localValue1 = localValue1.createAtm
  mathHelper = "Purge"
  stateFlag11 = vector3
  number12 = -961.67938232422
  stateFlag13 = -3005.9426269531
  playerPed = 13.945075035095
  stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5, text4, stringHelper, text6 = stateFlag11(number12, stateFlag13, playerPed)
  localValue1(mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5, text4, stringHelper, text6)
  localValue1 = CMG
  localValue1 = localValue1.createClothingMenu
  mathHelper = "Purge A"
  stateFlag11 = vector3
  number12 = -966.35815429688
  stateFlag13 = -3003.2653808594
  playerPed = 13.945075035095
  stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5, text4, stringHelper, text6 = stateFlag11(number12, stateFlag13, playerPed)
  localValue1(mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5, text4, stringHelper, text6)
  localValue1 = CMG
  localValue1 = localValue1.createClothingMenu
  mathHelper = "Purge B"
  stateFlag11 = vector3
  number12 = -957.06579589844
  stateFlag13 = -3008.5339355469
  playerPed = 13.945066452026
  stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5, text4, stringHelper, text6 = stateFlag11(number12, stateFlag13, playerPed)
  localValue1(mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5, text4, stringHelper, text6)
  localValue1 = vector3
  mathHelper = -960.60162353516
  stateFlag11 = -3013.6945800781
  number12 = 13.94508266449
  localValue1 = localValue1(mathHelper, stateFlag11, number12)
  mathHelper = CMG
  mathHelper = mathHelper.createArea
  stateFlag11 = "cmg_purge_leave"
  number12 = localValue1
  stateFlag13 = 2.0
  playerPed = 3.0

  -- === HELPER FUNCTION (decompiler name: stateFlag16; parameters: none) ===
  function stateFlag16()
    local localValue12, localValue2
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag18; parameters: none) ===
  function stateFlag18()
    local localValue12, localValue2
  end
  text16 = cmgOperation2
  -- Beginner: Create an interaction area around a world position.
  mathHelper(stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16)
  mathHelper = tCMG
  mathHelper = mathHelper.addMarker
  stateFlag11 = localValue1.x
  number12 = localValue1.y
  stateFlag13 = localValue1.z
  playerPed = 1.0
  stateFlag16 = 1.0
  stateFlag18 = 1.0
  text16 = 255
  stateFlag19 = 0
  stateFlag = 0
  stateFlag2 = 255
  stateFlag3 = 50.0
  stateFlag5 = 31
  mathHelper = mathHelper(stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5)
  number7 = mathHelper
  mathHelper = CMG
  mathHelper = mathHelper.createNoVehicleZone
  stateFlag11 = vector3
  number12 = -960.293518
  stateFlag13 = -2991.571289
  playerPed = 13.945061
  stateFlag11 = stateFlag11(number12, stateFlag13, playerPed)
  number12 = 80.0
  mathHelper = mathHelper(stateFlag11, number12)
  createVector3 = mathHelper
  mathHelper = CMG
  mathHelper = mathHelper.createGarage
  stateFlag11 = "Standard Garage"
  number12 = vector3
  stateFlag13 = -1040.0977783203
  playerPed = -2948.8134765625
  stateFlag16 = 13.95180606842
  number12 = number12(stateFlag13, playerPed, stateFlag16)
  stateFlag13 = true
  mathHelper = mathHelper(stateFlag11, number12, stateFlag13)
  createVector32 = mathHelper
  mathHelper = CMG
  mathHelper = mathHelper.createArea
  stateFlag11 = "purge_vehicles"
  number12 = cmgOperation.vehicleSelectCoords
  stateFlag13 = 2.5
  playerPed = 2.5
  stateFlag16 = number11
  stateFlag18 = workingValue7

  -- === HELPER FUNCTION (decompiler name: text16; parameters: none) ===
  function text16()
    local localValue12, localValue2
  end
  stateFlag19 = nil
  mathHelper = mathHelper(stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19)
  number9 = mathHelper
  mathHelper = tCMG
  mathHelper = mathHelper.addMarker
  stateFlag11 = cmgOperation.vehicleSelectCoords
  stateFlag11 = stateFlag11.x
  number12 = cmgOperation.vehicleSelectCoords
  number12 = number12.y
  stateFlag13 = cmgOperation.vehicleSelectCoords
  stateFlag13 = stateFlag13.z
  playerPed = 1.0
  stateFlag16 = 1.0
  stateFlag18 = 1.0
  text16 = 0
  stateFlag19 = 255
  stateFlag = 0
  stateFlag2 = 200
  stateFlag3 = 50.0
  stateFlag5 = 36
  mathHelper = mathHelper(stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19, stateFlag, stateFlag2, stateFlag3, stateFlag5)
  number10 = mathHelper
  while true do
    mathHelper = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    mathHelper = mathHelper()
    stateFlag11 = workingValue3
    mathHelper = mathHelper - stateFlag11
    stateFlag11 = 30000
    if not (mathHelper < stateFlag11) then
      break
    end
    mathHelper = drawNativeNotification
    stateFlag11 = "You have entered CMG Purge! To leave return to Legion or Disconnect."
    -- Beginner: Show a GTA-style notification/help prompt.
    mathHelper(stateFlag11)
    mathHelper = Citizen
    mathHelper = mathHelper.Wait
    stateFlag11 = 0
    mathHelper(stateFlag11)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6de350d017".
eventHandler2(eventHandler3, cmgOperation3)

-- === HELPER FUNCTION (decompiler name: eventHandler2; parameters: none) ===
function eventHandler2()
  local localValue1, mathHelper
  localValue1 = number14
  if 0 ~= localValue1 then
    localValue1 = RemoveBlip
    mathHelper = number14
    localValue1(mathHelper)
    localValue1 = 0
    number14 = localValue1
  end
  localValue1 = number16
  if 0 ~= localValue1 then
    localValue1 = RemoveBlip
    mathHelper = number16
    localValue1(mathHelper)
    localValue1 = 0
    number16 = localValue1
  end
end
eventHandler3 = RegisterNetEvent
cmgOperation3 = "f577a0908b"
-- Beginner: this function handles network event "f577a0908b".

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18
  localValue1 = false
  eventHandler = localValue1
  localValue1 = CMG
  localValue1 = localValue1.initGreenzones
  localValue1()
  localValue1 = RemoveBlip
  mathHelper = text10
  localValue1(mathHelper)
  localValue1 = pairs
  mathHelper = dataCollection3
  localValue1, mathHelper, stateFlag11, number12 = localValue1(mathHelper)
  for stateFlag13, playerPed in localValue1, mathHelper, stateFlag11, number12 do
    stateFlag16 = CMG
    stateFlag16 = stateFlag16.deleteGunStore
    stateFlag18 = playerPed
    stateFlag16(stateFlag18)
  end
  localValue1 = CMG
  localValue1 = localValue1.deleteAtm
  mathHelper = "Purge"
  localValue1(mathHelper)
  localValue1 = CMG
  localValue1 = localValue1.deleteClothingMenu
  mathHelper = "Purge A"
  localValue1(mathHelper)
  localValue1 = CMG
  localValue1 = localValue1.deleteClothingMenu
  mathHelper = "Purge B"
  localValue1(mathHelper)
  localValue1 = tCMG
  localValue1 = localValue1.removeArea
  mathHelper = "cmg_purge_leave"
  localValue1(mathHelper)
  localValue1 = tCMG
  localValue1 = localValue1.removeMarker
  mathHelper = number7
  localValue1(mathHelper)
  localValue1 = createVector3
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.deleteNoVehicleZone
    mathHelper = createVector3
    localValue1(mathHelper)
    localValue1 = nil
    createVector3 = localValue1
  end
  localValue1 = createVector32
  if localValue1 then
    localValue1 = CMG
    localValue1 = localValue1.deleteGarage
    mathHelper = createVector32
    localValue1(mathHelper)
    localValue1 = nil
    createVector32 = localValue1
  end
  localValue1 = number9
  if localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.removeArea
    mathHelper = number9
    localValue1(mathHelper)
  end
  localValue1 = number10
  if localValue1 then
    localValue1 = tCMG
    localValue1 = localValue1.removeMarker
    mathHelper = number10
    localValue1(mathHelper)
  end
  localValue1 = eventHandler2
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  localValue1()
  localValue1 = tCMG
  localValue1 = localValue1.teleport
  mathHelper = rageUiOperation3.x
  stateFlag11 = rageUiOperation3.y
  number12 = rageUiOperation3.z
  stateFlag13 = true
  localValue1(mathHelper, stateFlag11, number12, stateFlag13)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f577a0908b".
eventHandler3(cmgOperation3, text11)

-- === HELPER FUNCTION (decompiler name: eventHandler3; parameters: none) ===
function eventHandler3()
  local localValue1, mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19
  localValue1 = CMG
  localValue1 = localValue1.isPurge
  localValue1 = localValue1()
  if not localValue1 then
    localValue1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    mathHelper = GetSelectedPedWeapon
    stateFlag11 = localValue1
    -- Beginner: result below is weaponHash.
    mathHelper = mathHelper(stateFlag11)
    if 424444959 == mathHelper then
      stateFlag11 = CMG
      stateFlag11 = stateFlag11.setWeapon
      number12 = localValue1
      stateFlag13 = -1569615261
      playerPed = true
      stateFlag11(number12, stateFlag13, playerPed)
      stateFlag11 = notify
      number12 = "~r~You cannot use the homing launcher in the purge event!"
      -- Beginner: Show a notification to the player.
      stateFlag11(number12)
    end
  end
  localValue1 = CMG
  localValue1 = localValue1.isDannyEvent
  localValue1 = localValue1()
  if localValue1 then
    localValue1 = drawNativeText
    mathHelper = "~r~DANNY EVENT ACTIVE"
    -- Beginner: Draw GTA-style text on screen.
    localValue1(mathHelper)
    localValue1 = PlayerPedId
    -- Beginner: result below is localPlayerPed.
    localValue1 = localValue1()
    mathHelper = CMG
    mathHelper = mathHelper.getModelGender
    mathHelper = mathHelper()
    mathHelper = "male" == mathHelper
    if mathHelper then
      stateFlag11 = 11
      if stateFlag11 then
        goto continueAtStep45
      end
    end
    stateFlag11 = 8
    ::continueAtStep45::
    if mathHelper then
      number12 = 42
      if number12 then
        goto continueAtStep51
      end
    end
    number12 = 42
    ::continueAtStep51::
    stateFlag13 = GetPedDrawableVariation
    playerPed = localValue1
    stateFlag16 = 2
    stateFlag13 = stateFlag13(playerPed, stateFlag16)
    if stateFlag13 == stateFlag11 then
      stateFlag13 = GetPedHairColor
      playerPed = localValue1
      stateFlag13 = stateFlag13(playerPed)
      if stateFlag13 == number12 then
        goto continueAtStep74
      end
    end
    stateFlag13 = SetPedComponentVariation
    playerPed = localValue1
    stateFlag16 = 2
    stateFlag18 = stateFlag11
    text16 = 0
    stateFlag19 = 0
    stateFlag13(playerPed, stateFlag16, stateFlag18, text16, stateFlag19)
    stateFlag13 = SetPedHairColor
    playerPed = localValue1
    stateFlag16 = number12
    stateFlag18 = 0
    stateFlag13(playerPed, stateFlag16, stateFlag18)
    ::continueAtStep74::
    stateFlag13 = GetSelectedPedWeapon
    playerPed = localValue1
    -- Beginner: result below is weaponHash.
    stateFlag13 = stateFlag13(playerPed)
    if -1569615261 ~= stateFlag13 then
      playerPed = GetWeapontypeGroup
      stateFlag16 = stateFlag13
      playerPed = playerPed(stateFlag16)
      if -728555052 ~= playerPed and 1548507267 ~= playerPed and 416676503 ~= playerPed then
        stateFlag16 = notify
        stateFlag18 = "~r~Only pistols and melees can be used in the danny event!"
        -- Beginner: Show a notification to the player.
        stateFlag16(stateFlag18)
        stateFlag16 = CMG
        stateFlag16 = stateFlag16.setWeapon
        stateFlag18 = localValue1
        text16 = -1569615261
        stateFlag19 = true
        stateFlag16(stateFlag18, text16, stateFlag19)
      end
    end
  end
end
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.createThreadOnTick
text11 = eventHandler3
text12 = "Danny Event"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation3(text11, text12)
cmgOperation3 = RegisterNetEvent
text11 = "a54cb7192d"
-- Beginner: this function handles network event "a54cb7192d".

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1) ===
function text12(localValue1)
  local mathHelper
  text7 = localValue1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a54cb7192d".
cmgOperation3(text11, text12)
cmgOperation3 = AddEventHandler
text11 = "919aefda0c"
-- Beginner: this function runs when client event "919aefda0c" fires.

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1) ===
function text12(localValue1)
  local mathHelper, stateFlag11
  mathHelper = CMG
  mathHelper = mathHelper.isPurge
  mathHelper = mathHelper()
  if mathHelper and 666 ~= localValue1 then
    mathHelper = TriggerServerEvent
    stateFlag11 = "f577a0908b"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "f577a0908b".
    mathHelper(stateFlag11)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "919aefda0c".
cmgOperation3(text11, text12)
cmgOperation3 = RageUI
cmgOperation3 = cmgOperation3.CreateWhile
text11 = 1.0
text12 = RMenu
text13 = text12
text12 = text12.Get
text14 = "purge"
text15 = "vehicles"
-- Beginner: result below is menu.
text12 = text12(text13, text14, text15)
text13 = nil

-- === HELPER FUNCTION (decompiler name: text14; parameters: none) ===
function text14()
  local localValue1, mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  mathHelper = RMenu
  stateFlag11 = mathHelper
  mathHelper = mathHelper.Get
  number12 = "purge"
  stateFlag13 = "vehicles"
  -- Beginner: result below is menu.
  mathHelper = mathHelper(stateFlag11, number12, stateFlag13)
  stateFlag11 = true
  number12 = true
  stateFlag13 = true

  -- === HELPER FUNCTION: playerPed() ===
  function playerPed()
    local localValue12, localValue2, localValue3, stateFlag12, stateFlag14, stateFlag15, stateFlag17, stringHelper2, rageUiOperation5, stateFlag20, workingValue, dataCollection, stateFlag4, workingValue2
    localValue12 = pairs
    localValue2 = cmgOperation.vehicles
    localValue12, localValue2, localValue3, stateFlag12 = localValue12(localValue2)
    for stateFlag14, stateFlag15 in localValue12, localValue2, localValue3, stateFlag12 do
      stateFlag17 = dataCollection4
      stateFlag17 = stateFlag17[stateFlag14]
      if not stateFlag17 then
        stateFlag17 = false
      end
      if stateFlag17 then
        stringHelper2 = "Spawn Vehicle"
        if stringHelper2 then
          goto continueAtStep22
        end
      end
      stringHelper2 = string
      stringHelper2 = stringHelper2.format
      rageUiOperation5 = "\194\163%s"
      stateFlag20 = getMoneyStringFormatted
      workingValue = stateFlag15.price
      stateFlag20, workingValue, dataCollection, stateFlag4, workingValue2 = stateFlag20(workingValue)
      stringHelper2 = stringHelper2(rageUiOperation5, stateFlag20, workingValue, dataCollection, stateFlag4, workingValue2)
      ::continueAtStep22::
      rageUiOperation5 = RageUI
      rageUiOperation5 = rageUiOperation5.ButtonWithStyle
      stateFlag20 = stateFlag15.name
      workingValue = nil
      dataCollection = {}
      dataCollection.RightLabel = stringHelper2
      stateFlag4 = true

      -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue13, localValue22, localValue32) ===
      function workingValue2(localValue13, localValue22, localValue32)
        local rageUiOperation4, number13, number15
        if localValue32 then
          rageUiOperation4 = stateFlag17
          if rageUiOperation4 then
            rageUiOperation4 = TriggerServerEvent
            number13 = "da53690b26"
            number15 = stateFlag14
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "da53690b26".
            rageUiOperation4(number13, number15)
          else
            rageUiOperation4 = TriggerServerEvent
            number13 = "6fd6b5c896"
            number15 = stateFlag14
            rageUiOperation4(number13, number15)
          end
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation5(stateFlag20, workingValue, dataCollection, stateFlag4, workingValue2)
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag16; parameters: none) ===
  function stateFlag16()
    local localValue12, localValue2
  end
  localValue1(mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16)
end
cmgOperation3(text11, text12, text13, text14)
cmgOperation3 = RegisterNetEvent
text11 = "c704e0f3f6"
-- Beginner: this function handles network event "c704e0f3f6".

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1) ===
function text12(localValue1)
  local mathHelper
  mathHelper = localValue1 or nil
  if not localValue1 then
    mathHelper = {}
  end
  dataCollection4 = mathHelper
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c704e0f3f6".
cmgOperation3(text11, text12)
cmgOperation3 = RegisterNetEvent
text11 = "da53690b26"
-- Beginner: this function handles network event "da53690b26".

-- === HELPER FUNCTION (decompiler name: text12; parameters: localValue1) ===
function text12(localValue1)
  local mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19
  mathHelper = CMG
  mathHelper = mathHelper.requestEntitySpawn
  stateFlag11 = "purge_vehicle"
  mathHelper(stateFlag11)
  mathHelper = CMG
  mathHelper = mathHelper.spawnVehicle
  stateFlag11 = localValue1
  number12 = cmgOperation.vehicleSelectCoords
  number12 = number12.x
  stateFlag13 = cmgOperation.vehicleSelectCoords
  stateFlag13 = stateFlag13.y
  playerPed = cmgOperation.vehicleSelectCoords
  playerPed = playerPed.z
  stateFlag16 = 0.0
  stateFlag18 = true
  text16 = true
  stateFlag19 = true
  mathHelper = mathHelper(stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19)
  stateFlag11 = CMG
  stateFlag11 = stateFlag11.getClientUserId
  -- Beginner: result below is userId.
  stateFlag11 = stateFlag11()
  if stateFlag11 then
    number12 = DecorSetInt
    stateFlag13 = mathHelper
    playerPed = "ac76c9d452"
    stateFlag16 = stateFlag11
    number12(stateFlag13, playerPed, stateFlag16)
  end
  number12 = CMG
  number12 = number12.applyMaxDefaultModsToVehicle
  stateFlag13 = mathHelper
  number12(stateFlag13)
  number12 = SetVehRadioStation
  stateFlag13 = mathHelper
  playerPed = "OFF"
  number12(stateFlag13, playerPed)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "da53690b26".
cmgOperation3(text11, text12)
cmgOperation3 = CMG
cmgOperation3 = cmgOperation3.registerDevMenuItems
text11 = "Purge"

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, mathHelper, stateFlag11, number12, stateFlag13
  localValue1 = RageUI
  localValue1 = localValue1.Button
  mathHelper = "Start Testing"
  stateFlag11 = ""
  number12 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: localValue12, localValue2, localValue3) ===
  function stateFlag13(localValue12, localValue2, localValue3)
    local stateFlag12, stateFlag14
    if localValue3 then
      stateFlag12 = TriggerServerEvent
      stateFlag14 = "24b1dd195b"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "24b1dd195b".
      stateFlag12(stateFlag14)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue1(mathHelper, stateFlag11, number12, stateFlag13)
end
cmgOperation3(text11, text12)
cmgOperation3 = RegisterNetEvent
text11 = "90744d69da"
-- Beginner: this function handles network event "90744d69da".

-- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
function text12()
  local localValue1, mathHelper, stateFlag11
  localValue1 = TriggerServerEvent
  mathHelper = "6de350d017"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "6de350d017".
  localValue1(mathHelper)
  localValue1 = SetTimeout
  mathHelper = 2000
  -- Beginner: this function handles network event "90744d69da".

  -- === HELPER FUNCTION (decompiler name: stateFlag11; parameters: none) ===
  function stateFlag11()
    local localValue12, localValue2
    localValue12 = rageUiOperation2
    localValue12()
  end
  localValue1(mathHelper, stateFlag11)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "90744d69da".
cmgOperation3(text11, text12)

-- === HELPER FUNCTION (decompiler name: cmgOperation3; parameters: none) ===
function cmgOperation3()
  local localValue1, mathHelper, stateFlag11, number12
  localValue1 = TriggerEvent
  mathHelper = "371eab1d3a"
  stateFlag11 = {}
  stateFlag11.text = "You have entered the Purge Money Zone"
  stateFlag11.height = "200px"
  stateFlag11.width = "auto"
  stateFlag11.colour = "#FFF"
  stateFlag11.background = "#32CD32"
  stateFlag11.pos = "bottom-right"
  stateFlag11.icon = "success"
  number12 = 5000
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
  localValue1(mathHelper, stateFlag11, number12)
end

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, mathHelper, stateFlag11, number12
  localValue1 = TriggerEvent
  mathHelper = "371eab1d3a"
  stateFlag11 = {}
  stateFlag11.text = "You have left the Purge Money Zone"
  stateFlag11.height = "200px"
  stateFlag11.width = "auto"
  stateFlag11.colour = "#FFF"
  stateFlag11.background = "#32CD32"
  stateFlag11.pos = "bottom-right"
  stateFlag11.icon = "success"
  number12 = 5000
  localValue1(mathHelper, stateFlag11, number12)
end
text12 = RegisterNetEvent
text13 = "81a74b130d"
-- Beginner: this function handles network event "81a74b130d".

-- === HELPER FUNCTION (decompiler name: text14; parameters: localValue1) ===
function text14(localValue1)
  local mathHelper, stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19
  mathHelper = eventHandler2
  -- Beginner: Register a network event handler that the server/other clients can trigger.
  mathHelper()
  createVector33 = localValue1
  mathHelper = AddBlipForRadius
  stateFlag11 = createVector33.x
  number12 = createVector33.y
  stateFlag13 = createVector33.z
  playerPed = cmgOperation.moneyZoneRadius
  -- Beginner: result below is blipHandle.
  mathHelper = mathHelper(stateFlag11, number12, stateFlag13, playerPed)
  number14 = mathHelper
  mathHelper = SetBlipColour
  stateFlag11 = number14
  number12 = 1
  mathHelper(stateFlag11, number12)
  mathHelper = SetBlipPriority
  stateFlag11 = number14
  number12 = 2
  mathHelper(stateFlag11, number12)
  mathHelper = SetBlipAlpha
  stateFlag11 = number14
  number12 = 200
  mathHelper(stateFlag11, number12)
  mathHelper = tCMG
  mathHelper = mathHelper.addBlip
  stateFlag11 = createVector33.x
  number12 = createVector33.y
  stateFlag13 = createVector33.z
  playerPed = 500
  stateFlag16 = 3
  stateFlag18 = "Purge Money Zone"
  text16 = 1.2
  mathHelper = mathHelper(stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16)
  number16 = mathHelper
  mathHelper = CMG
  mathHelper = mathHelper.createArea
  stateFlag11 = "purge_money_zone"
  number12 = createVector33
  stateFlag13 = cmgOperation.moneyZoneRadius
  playerPed = 100.0
  stateFlag16 = cmgOperation3
  stateFlag18 = text11

  -- === HELPER FUNCTION (decompiler name: text16; parameters: none) ===
  function text16()
    local localValue12, localValue2
  end
  stateFlag19 = {}
  -- Beginner: Create an interaction area around a world position.
  mathHelper(stateFlag11, number12, stateFlag13, playerPed, stateFlag16, stateFlag18, text16, stateFlag19)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "81a74b130d".
text12(text13, text14)
