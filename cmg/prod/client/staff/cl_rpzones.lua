--[[
    LEVEL 1 BEGINNER GUIDE — Rpzones
    =====================================

    File: cmg/prod/client/staff/cl_rpzones.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: staff/admin gameplay and moderation tools, specifically the Rpzones feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 76
      * Background threads: 0
      * Always-running loops: 1
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
local dataCollection, dataCollection2, dataCollection4, dataCollection5, number7, dataCollection8, stateFlag4, number9, number10, number11, number, text, text2, rageUiOperation2, text4, text6, rageUiOperation3, rageUiOperation4, rageUiOperation5, text7, text9, cmgOperation2, dataCollection3, createVector3, number4, number5, iterator, workingValue2, workingValue3, cmgOperation3, workingValue4, workingValue5, cmgOperation4, text11, stringHelper, cmgOperation5, number6, workingValue6, workingValue7, workingValue8, workingValue10
dataCollection = {}
dataCollection2 = 5
dataCollection4 = 10
dataCollection5 = 20
number7 = 30
dataCollection8 = 40
stateFlag4 = 50
number9 = 75
number10 = 100
number11 = 150
number = 200
text = 250
dataCollection[1] = dataCollection2
dataCollection[2] = dataCollection4
dataCollection[3] = dataCollection5
dataCollection[4] = number7
dataCollection[5] = dataCollection8
dataCollection[6] = stateFlag4
dataCollection[7] = number9
dataCollection[8] = number10
dataCollection[9] = number11
dataCollection[10] = number
dataCollection[11] = text
dataCollection2 = {}
dataCollection4 = 10
dataCollection5 = 20
number7 = 30
dataCollection8 = 40
stateFlag4 = 50
number9 = 75
number10 = 100
number11 = 150
number = 200
dataCollection2[1] = dataCollection4
dataCollection2[2] = dataCollection5
dataCollection2[3] = number7
dataCollection2[4] = dataCollection8
dataCollection2[5] = stateFlag4
dataCollection2[6] = number9
dataCollection2[7] = number10
dataCollection2[8] = number11
dataCollection2[9] = number
dataCollection4 = {}
dataCollection5 = {}
dataCollection5.melee = false
dataCollection5.throwable = false
dataCollection5.pistol = false
dataCollection5.shotgun = false
dataCollection5.mg = false
dataCollection5.smg = false
dataCollection5.rifle = false
dataCollection5.sniper = false
dataCollection5.heavy = false
dataCollection4.weapons = dataCollection5
dataCollection5 = {}
number7 = #dataCollection
number7 = dataCollection[number7]
dataCollection5.speed = number7
dataCollection5.disableTrolling = true
dataCollection5.disableDamage = false
dataCollection5.delete = false
dataCollection5.emptyDelete = false
dataCollection5.car = false
dataCollection5.helicopter = false
dataCollection5.plane = false
dataCollection5.boat = false
dataCollection5.bicycle = false
dataCollection4.vehicles = dataCollection5
dataCollection4.disableDamage = false
dataCollection4.disableCollision = false
dataCollection4.blipGloballyVisible = true
dataCollection4.disableMusicAudio = false
dataCollection5 = dataCollection2[1]
dataCollection4.radius = dataCollection5
dataCollection5 = {}
number7 = false
dataCollection8 = {}
stateFlag4 = false

-- === HELPER FUNCTION (decompiler name: number9; parameters: localValue1) ===
function number9(localValue1)
  local localValue2, localValue3, workingValue9, number8
  localValue2 = table
  localValue2 = localValue2.copy
  localValue3 = dataCollection4
  localValue2 = localValue2(localValue3)
  localValue3 = CMG
  localValue3 = localValue3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue3 = localValue3()
  localValue2.position = localValue3
  if localValue1 then
    localValue3 = GetBlipCoords
    workingValue9 = GetFirstBlipInfoId
    number8 = 8
    workingValue9, number8 = workingValue9(number8)
    localValue3 = localValue3(workingValue9, number8)
    localValue2.position = localValue3
  end
  localValue3 = localValue2.radius
  localValue3 = localValue3 + 0.0
  localValue2.radius = localValue3
  localValue3 = localValue2.vehicles
  workingValue9 = localValue2.vehicles
  workingValue9 = workingValue9.speed
  workingValue9 = workingValue9 + 0.0
  localValue3.speed = workingValue9
  localValue3 = TriggerServerEvent
  workingValue9 = "ef32c544d1"
  number8 = localValue2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ef32c544d1".
  localValue3(workingValue9, number8)
end

-- === HELPER FUNCTION (decompiler name: number10; parameters: localValue1) ===
function number10(localValue1)
  local localValue2, localValue3
  localValue2 = localValue1.bucketId
  localValue3 = CMG
  localValue3 = localValue3.getPlayerBucket
  localValue3 = localValue3()
  localValue2 = localValue2 == localValue3
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: number11; parameters: none) ===
function number11()
  local localValue1, localValue2, localValue3, workingValue9, number8, workingValue11, workingValue13, tableHelper, workingValue16, position, workingValue, number2
  localValue1 = nil
  localValue2 = 100.0
  localValue3 = CMG
  localValue3 = localValue3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue3 = localValue3()
  workingValue9 = pairs
  number8 = dataCollection5
  workingValue9, number8, workingValue11, workingValue13 = workingValue9(number8)
  for tableHelper, workingValue16 in workingValue9, number8, workingValue11, workingValue13 do
    position = workingValue16.position
    position = position.xy
    workingValue = localValue3.xy
    position = position - workingValue
    position = #position
    if localValue2 > position then
      workingValue = number10
      number2 = workingValue16
      workingValue = workingValue(number2)
      if workingValue then
        localValue1 = workingValue16.uuid
        localValue2 = position
      end
    end
  end
  if localValue1 then
    workingValue9 = TriggerServerEvent
    number8 = "01669fc121"
    workingValue11 = localValue1
    workingValue9(number8, workingValue11)
  end
end
number = RMenu
number = number.Add
text = "rpzones"
text2 = "mainmenu"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text4 = ""
text6 = "~b~Main Menu"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = "cmg_adminui"
text7 = "cmg_adminui"
rageUiOperation2, text4, text6, rageUiOperation3, rageUiOperation4, rageUiOperation5, text7, text9, cmgOperation2, dataCollection3, createVector3, number4, number5, iterator, workingValue2, workingValue3, cmgOperation3, workingValue4, workingValue5, cmgOperation4, text11, stringHelper, cmgOperation5, number6, workingValue6, workingValue7, workingValue8, workingValue10 = rageUiOperation2(text4, text6, rageUiOperation3, rageUiOperation4, rageUiOperation5, text7)
number(text, text2, rageUiOperation2, text4, text6, rageUiOperation3, rageUiOperation4, rageUiOperation5, text7, text9, cmgOperation2, dataCollection3, createVector3, number4, number5, iterator, workingValue2, workingValue3, cmgOperation3, workingValue4, workingValue5, cmgOperation4, text11, stringHelper, cmgOperation5, number6, workingValue6, workingValue7, workingValue8, workingValue10)
number = RMenu
number = number.Add
text = "rpzones"
text2 = "weapons"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text4 = RMenu
text6 = text4
text4 = text4.Get
rageUiOperation3 = "rpzones"
rageUiOperation4 = "mainmenu"
-- Beginner: result below is menu.
text4 = text4(text6, rageUiOperation3, rageUiOperation4)
text6 = ""
rageUiOperation3 = "~b~Weapons"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5 = rageUiOperation5()
text7 = "cmg_adminui"
text9 = "cmg_adminui"
rageUiOperation2, text4, text6, rageUiOperation3, rageUiOperation4, rageUiOperation5, text7, text9, cmgOperation2, dataCollection3, createVector3, number4, number5, iterator, workingValue2, workingValue3, cmgOperation3, workingValue4, workingValue5, cmgOperation4, text11, stringHelper, cmgOperation5, number6, workingValue6, workingValue7, workingValue8, workingValue10 = rageUiOperation2(text4, text6, rageUiOperation3, rageUiOperation4, rageUiOperation5, text7, text9)
number(text, text2, rageUiOperation2, text4, text6, rageUiOperation3, rageUiOperation4, rageUiOperation5, text7, text9, cmgOperation2, dataCollection3, createVector3, number4, number5, iterator, workingValue2, workingValue3, cmgOperation3, workingValue4, workingValue5, cmgOperation4, text11, stringHelper, cmgOperation5, number6, workingValue6, workingValue7, workingValue8, workingValue10)
number = RMenu
number = number.Add
text = "rpzones"
text2 = "vehicles"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateSubMenu
text4 = RMenu
text6 = text4
text4 = text4.Get
rageUiOperation3 = "rpzones"
rageUiOperation4 = "mainmenu"
-- Beginner: result below is menu.
text4 = text4(text6, rageUiOperation3, rageUiOperation4)
text6 = ""
rageUiOperation3 = "~b~Vehicles"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5 = rageUiOperation5()
text7 = "cmg_adminui"
text9 = "cmg_adminui"
rageUiOperation2, text4, text6, rageUiOperation3, rageUiOperation4, rageUiOperation5, text7, text9, cmgOperation2, dataCollection3, createVector3, number4, number5, iterator, workingValue2, workingValue3, cmgOperation3, workingValue4, workingValue5, cmgOperation4, text11, stringHelper, cmgOperation5, number6, workingValue6, workingValue7, workingValue8, workingValue10 = rageUiOperation2(text4, text6, rageUiOperation3, rageUiOperation4, rageUiOperation5, text7, text9)
number(text, text2, rageUiOperation2, text4, text6, rageUiOperation3, rageUiOperation4, rageUiOperation5, text7, text9, cmgOperation2, dataCollection3, createVector3, number4, number5, iterator, workingValue2, workingValue3, cmgOperation3, workingValue4, workingValue5, cmgOperation4, text11, stringHelper, cmgOperation5, number6, workingValue6, workingValue7, workingValue8, workingValue10)
number = RageUI
number = number.CreateWhile
text = 1.0
text2 = RMenu
rageUiOperation2 = text2
text2 = text2.Get
text4 = "rpzones"
text6 = "mainmenu"
-- Beginner: result below is menu.
text2 = text2(rageUiOperation2, text4, text6)
rageUiOperation2 = nil

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, localValue3, workingValue9, number8, workingValue11, workingValue13
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  workingValue9 = "rpzones"
  number8 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, workingValue9, number8)
  localValue3 = true
  workingValue9 = false
  number8 = true

  -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
  function workingValue11()
    local rageUiOperation, text8, text10, dataCollection6, dataCollection7, dataCollection9, workingValue14, workingValue15, text12, text13
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Separator
    text8 = "Creation"
    rageUiOperation(text8)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text8 = "Weapons"
    text10 = "Configuration options related to weapons."
    dataCollection6 = {}
    dataCollection6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataCollection7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: none) ===
    function dataCollection9()
      local localValue12, localValue22
    end
    workingValue14 = RMenu
    workingValue15 = workingValue14
    workingValue14 = workingValue14.Get
    text12 = "rpzones"
    text13 = "weapons"
    workingValue14, workingValue15, text12, text13 = workingValue14(workingValue15, text12, text13)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9, workingValue14, workingValue15, text12, text13)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text8 = "Vehicles"
    text10 = "Configure options relating to vehicles."
    dataCollection6 = {}
    dataCollection6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataCollection7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: none) ===
    function dataCollection9()
      local localValue12, localValue22
    end
    workingValue14 = RMenu
    workingValue15 = workingValue14
    workingValue14 = workingValue14.Get
    text12 = "rpzones"
    text13 = "vehicles"
    workingValue14, workingValue15, text12, text13 = workingValue14(workingValue15, text12, text13)
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9, workingValue14, workingValue15, text12, text13)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text8 = "Disable Damage"
    text10 = "Disables damage to players, this has the same affect as a greenzone."
    dataCollection6 = dataCollection4.disableDamage
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function dataCollection9(localValue12, localValue22, localValue32, localValue4)
      dataCollection4.disableDamage = localValue4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text8 = "Disable Collision"
    text10 = "Disables collision between vehicles, this has the same affect as a greenzone."
    dataCollection6 = dataCollection4.disableCollision
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function dataCollection9(localValue12, localValue22, localValue32, localValue4)
      dataCollection4.disableCollision = localValue4
    end
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text8 = "Display Zone Globally"
    text10 = "Whether this zone should display on the main map. If disabled, it only shows on the minimap when nearby."
    dataCollection6 = dataCollection4.blipGloballyVisible
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function dataCollection9(localValue12, localValue22, localValue32, localValue4)
      dataCollection4.blipGloballyVisible = localValue4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.List
    text8 = "Radius (m)"
    text10 = dataCollection2
    dataCollection6 = table
    dataCollection6 = dataCollection6.find
    dataCollection7 = dataCollection2
    dataCollection9 = dataCollection4.radius
    dataCollection6 = dataCollection6(dataCollection7, dataCollection9)
    if not dataCollection6 then
      dataCollection6 = 1
    end
    dataCollection7 = "The distance in meters of the RP zone to create. Please be mindful and start small."
    dataCollection9 = {}
    workingValue14 = true

    -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function workingValue15(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection2
      stateFlag3 = stateFlag3[localValue4]
      dataCollection4.radius = stateFlag3
    end

    -- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
    function text12()
      local localValue12, localValue22
    end
    -- Beginner: Draw a RageUI list selector.
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9, workingValue14, workingValue15, text12)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text8 = "Disable Music Audio"
    text10 = "Mutes all DJ Menu audio whilst inside of an RP zone. Does not prevent the placement of a DJ Menu set."
    dataCollection6 = dataCollection4.disableMusicAudio
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function dataCollection9(localValue12, localValue22, localValue32, localValue4)
      dataCollection4.disableMusicAudio = localValue4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text8 = "~b~Create Zone"
    text10 = "Creates the zone with the settings you have provided."
    dataCollection6 = {}
    dataCollection6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataCollection7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection9(localValue12, localValue22, localValue32)
      local localValue4, stateFlag3
      if localValue32 then
        localValue4 = number9
        stateFlag3 = false
        localValue4(stateFlag3)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    rageUiOperation = IsWaypointActive
    rageUiOperation = rageUiOperation()
    if rageUiOperation then
      rageUiOperation = RageUI
      rageUiOperation = rageUiOperation.ButtonWithStyle
      text8 = "~b~Create Zone At Waypoint"
      text10 = "Creates the zone with the settings you have provided at the location of the waypoint."
      dataCollection6 = {}
      dataCollection6.RightLabel = "\226\134\146\226\134\146\226\134\146"
      dataCollection7 = true

      -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32) ===
      function dataCollection9(localValue12, localValue22, localValue32)
        local localValue4, stateFlag3
        if localValue32 then
          localValue4 = number9
          stateFlag3 = true
          localValue4(stateFlag3)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    end
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.ButtonWithStyle
    text8 = "~r~Delete Closest Zone"
    text10 = "Deletes the closest zone within 100 meters."
    dataCollection6 = {}
    dataCollection6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataCollection7 = true

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32) ===
    function dataCollection9(localValue12, localValue22, localValue32)
      local localValue4
      if localValue32 then
        localValue4 = number11
        localValue4()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
  end

  -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
  function workingValue13()
    local rageUiOperation, text8
  end
  localValue1(localValue2, localValue3, workingValue9, number8, workingValue11, workingValue13)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  workingValue9 = "rpzones"
  number8 = "weapons"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, workingValue9, number8)
  localValue3 = true
  workingValue9 = false
  number8 = true

  -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
  function workingValue11()
    local rageUiOperation, text8, text10, dataCollection6, dataCollection7, dataCollection9
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text8 = "Enable Melee"
    text10 = "Sets whether guns under the melee category are allowed."
    dataCollection6 = dataCollection4.weapons
    dataCollection6 = dataCollection6.melee
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function dataCollection9(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.weapons
      stateFlag3.melee = localValue4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text8 = "Enable Throwable"
    text10 = "Sets whether guns under the throwable category are allowed."
    dataCollection6 = dataCollection4.weapons
    dataCollection6 = dataCollection6.throwable
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function dataCollection9(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.weapons
      stateFlag3.throwable = localValue4
    end
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text8 = "Enable Pistol"
    text10 = "Sets whether guns under the pistol category are allowed."
    dataCollection6 = dataCollection4.weapons
    dataCollection6 = dataCollection6.pistol
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function dataCollection9(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.weapons
      stateFlag3.pistol = localValue4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text8 = "Enable Shotgun"
    text10 = "Sets whether guns under the shotgun category are allowed."
    dataCollection6 = dataCollection4.weapons
    dataCollection6 = dataCollection6.shotgun
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function dataCollection9(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.weapons
      stateFlag3.shotgun = localValue4
    end
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text8 = "Enable LMG"
    text10 = "Sets whether guns under the LMG category are allowed."
    dataCollection6 = dataCollection4.weapons
    dataCollection6 = dataCollection6.mg
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function dataCollection9(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.weapons
      stateFlag3.mg = localValue4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text8 = "Enable SMG"
    text10 = "Sets whether guns under the SMG category are allowed."
    dataCollection6 = dataCollection4.weapons
    dataCollection6 = dataCollection6.smg
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function dataCollection9(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.weapons
      stateFlag3.smg = localValue4
    end
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text8 = "Enable Rifle"
    text10 = "Sets whether guns under the rifle category are allowed."
    dataCollection6 = dataCollection4.weapons
    dataCollection6 = dataCollection6.rifle
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function dataCollection9(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.weapons
      stateFlag3.rifle = localValue4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text8 = "Enable Sniper"
    text10 = "Sets whether guns under the sniper category are allowed."
    dataCollection6 = dataCollection4.weapons
    dataCollection6 = dataCollection6.sniper
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function dataCollection9(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.weapons
      stateFlag3.sniper = localValue4
    end
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text8 = "Enable Heavy"
    text10 = "Sets whether guns under the heavy category are allowed."
    dataCollection6 = dataCollection4.weapons
    dataCollection6 = dataCollection6.heavy
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function dataCollection9(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.weapons
      stateFlag3.heavy = localValue4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
  end

  -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
  function workingValue13()
    local rageUiOperation, text8
  end
  localValue1(localValue2, localValue3, workingValue9, number8, workingValue11, workingValue13)
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  workingValue9 = "rpzones"
  number8 = "vehicles"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, workingValue9, number8)
  localValue3 = true
  workingValue9 = false
  number8 = true

  -- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
  function workingValue11()
    local rageUiOperation, text8, text10, dataCollection6, dataCollection7, dataCollection9, workingValue14, workingValue15, text12
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.List
    text8 = "Speed (mph)"
    text10 = dataCollection
    dataCollection6 = table
    dataCollection6 = dataCollection6.find
    dataCollection7 = dataCollection
    dataCollection9 = dataCollection4.vehicles
    dataCollection9 = dataCollection9.speed
    dataCollection6 = dataCollection6(dataCollection7, dataCollection9)
    if not dataCollection6 then
      dataCollection6 = 1
    end
    dataCollection7 = "Sets the maximum speed allowed in the zone in MPH."
    dataCollection9 = {}
    workingValue14 = true

    -- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function workingValue15(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3, workingValue12
      stateFlag3 = dataCollection4.vehicles
      workingValue12 = dataCollection
      workingValue12 = workingValue12[localValue4]
      stateFlag3.speed = workingValue12
    end

    -- === HELPER FUNCTION (decompiler name: text12; parameters: none) ===
    function text12()
      local localValue12, localValue22
    end
    -- Beginner: Draw a RageUI list selector.
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9, workingValue14, workingValue15, text12)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text8 = "Disable Trolling"
    text10 = "Disables vehicles horns, parachutes, boosts, cargo hooks, jumping and animations."
    dataCollection6 = dataCollection4.vehicles
    dataCollection6 = dataCollection6.disableTrolling
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function dataCollection9(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.vehicles
      stateFlag3.disableTrolling = localValue4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text8 = "Disable Damage"
    text10 = "Prevents vehicles being damaged, instantly repairs engine health."
    dataCollection6 = dataCollection4.vehicles
    dataCollection6 = dataCollection6.disableDamage
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function dataCollection9(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.vehicles
      stateFlag3.disableDamage = localValue4
    end
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text8 = "Empty Deletion"
    text10 = "Sets whether empty vehicles are deleted after a minute of no driver being present."
    dataCollection6 = dataCollection4.vehicles
    dataCollection6 = dataCollection6.emptyDelete
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function dataCollection9(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.vehicles
      stateFlag3.emptyDelete = localValue4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    rageUiOperation = RageUI
    rageUiOperation = rageUiOperation.Checkbox
    text8 = "Use Driver Deletion"
    text10 = "Sets whether vehicles with a driver should be instantly deleted."
    dataCollection6 = dataCollection4.vehicles
    dataCollection6 = dataCollection6.delete
    dataCollection7 = {}

    -- === HELPER FUNCTION (decompiler name: dataCollection9; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function dataCollection9(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.vehicles
      stateFlag3.delete = localValue4
    end
    rageUiOperation(text8, text10, dataCollection6, dataCollection7, dataCollection9)
    rageUiOperation = dataCollection4.vehicles
    rageUiOperation = rageUiOperation.delete
    if rageUiOperation then
      rageUiOperation = "Delete"
      if rageUiOperation then
        goto continueAtStep69
      end
    end
    rageUiOperation = "Disable"
    ::continueAtStep69::
    text8 = RageUI
    text8 = text8.Checkbox
    text10 = string
    text10 = text10.format
    dataCollection6 = "%s Car"
    dataCollection7 = rageUiOperation
    text10 = text10(dataCollection6, dataCollection7)
    dataCollection6 = "Sets whether this applies to vehicles under the car category."
    dataCollection7 = dataCollection4.vehicles
    dataCollection7 = dataCollection7.car
    dataCollection9 = {}

    -- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function workingValue14(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.vehicles
      stateFlag3.car = localValue4
    end
    -- Beginner: Draw a RageUI checkbox.
    text8(text10, dataCollection6, dataCollection7, dataCollection9, workingValue14)
    text8 = RageUI
    text8 = text8.Checkbox
    text10 = string
    text10 = text10.format
    dataCollection6 = "%s Helicopter"
    dataCollection7 = rageUiOperation
    text10 = text10(dataCollection6, dataCollection7)
    dataCollection6 = "Sets whether this applies to vehicles under the helicopter category."
    dataCollection7 = dataCollection4.vehicles
    dataCollection7 = dataCollection7.helicopter
    dataCollection9 = {}

    -- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function workingValue14(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.vehicles
      stateFlag3.helicopter = localValue4
    end
    text8(text10, dataCollection6, dataCollection7, dataCollection9, workingValue14)
    text8 = RageUI
    text8 = text8.Checkbox
    text10 = string
    text10 = text10.format
    dataCollection6 = "%s Plane"
    dataCollection7 = rageUiOperation
    text10 = text10(dataCollection6, dataCollection7)
    dataCollection6 = "Sets whether this applies to vehicles under the plane category."
    dataCollection7 = dataCollection4.vehicles
    dataCollection7 = dataCollection7.plane
    dataCollection9 = {}

    -- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function workingValue14(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.vehicles
      stateFlag3.plane = localValue4
    end
    -- Beginner: Draw a RageUI checkbox.
    text8(text10, dataCollection6, dataCollection7, dataCollection9, workingValue14)
    text8 = RageUI
    text8 = text8.Checkbox
    text10 = string
    text10 = text10.format
    dataCollection6 = "%s Boat"
    dataCollection7 = rageUiOperation
    text10 = text10(dataCollection6, dataCollection7)
    dataCollection6 = "Sets whether this applies to vehicles under the boat category."
    dataCollection7 = dataCollection4.vehicles
    dataCollection7 = dataCollection7.boat
    dataCollection9 = {}

    -- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function workingValue14(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.vehicles
      stateFlag3.boat = localValue4
    end
    text8(text10, dataCollection6, dataCollection7, dataCollection9, workingValue14)
    text8 = RageUI
    text8 = text8.Checkbox
    text10 = string
    text10 = text10.format
    dataCollection6 = "%s Bicycle"
    dataCollection7 = rageUiOperation
    text10 = text10(dataCollection6, dataCollection7)
    dataCollection6 = "Sets whether this applies to vehicles under the bicycle category."
    dataCollection7 = dataCollection4.vehicles
    dataCollection7 = dataCollection7.bicycle
    dataCollection9 = {}

    -- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue12, localValue22, localValue32, localValue4) ===
    function workingValue14(localValue12, localValue22, localValue32, localValue4)
      local stateFlag3
      stateFlag3 = dataCollection4.vehicles
      stateFlag3.bicycle = localValue4
    end
    -- Beginner: Draw a RageUI checkbox.
    text8(text10, dataCollection6, dataCollection7, dataCollection9, workingValue14)
  end

  -- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
  function workingValue13()
    local rageUiOperation, text8
  end
  localValue1(localValue2, localValue3, workingValue9, number8, workingValue11, workingValue13)
end
number(text, text2, rageUiOperation2, text4)

-- === HELPER FUNCTION (decompiler name: number; parameters: localValue1) ===
function number(localValue1)
  local localValue2, localValue3, workingValue9, number8, workingValue11, workingValue13, tableHelper
  localValue2 = localValue1.blip
  if not localValue2 then
    localValue2 = AddBlipForRadius
    localValue3 = localValue1.position
    localValue3 = localValue3.x
    workingValue9 = localValue1.position
    workingValue9 = workingValue9.y
    number8 = localValue1.position
    number8 = number8.z
    workingValue11 = localValue1.radius
    -- Beginner: result below is blipHandle.
    localValue2 = localValue2(localValue3, workingValue9, number8, workingValue11)
    localValue1.blip = localValue2
    localValue2 = SetBlipColour
    localValue3 = localValue1.blip
    workingValue9 = 27
    localValue2(localValue3, workingValue9)
    localValue2 = SetBlipAlpha
    localValue3 = localValue1.blip
    workingValue9 = 180
    localValue2(localValue3, workingValue9)
    localValue2 = SetBlipDisplay
    localValue3 = localValue1.blip
    workingValue9 = localValue1.blipGloballyVisible
    if workingValue9 then
      workingValue9 = 8
      if workingValue9 then
        goto continueAtStep31
      end
    end
    workingValue9 = 5
    ::continueAtStep31::
    localValue2(localValue3, workingValue9)
  end
  localValue2 = localValue1.vehicles
  localValue2 = localValue2.speed
  if localValue2 then
    localValue2 = localValue1.speedHandle
    if not localValue2 then
      localValue2 = AddRoadNodeSpeedZone
      localValue3 = localValue1.position
      localValue3 = localValue3.x
      workingValue9 = localValue1.position
      workingValue9 = workingValue9.y
      number8 = localValue1.position
      number8 = number8.z
      workingValue11 = localValue1.radius
      workingValue13 = localValue1.vehicles
      workingValue13 = workingValue13.speed
      workingValue13 = workingValue13 * 0.44704
      tableHelper = false
      localValue2 = localValue2(localValue3, workingValue9, number8, workingValue11, workingValue13, tableHelper)
      localValue1.speedHandle = localValue2
    end
  end
end

-- === HELPER FUNCTION (decompiler name: text; parameters: localValue1) ===
function text(localValue1)
  local localValue2, localValue3
  localValue2 = localValue1.blip
  if localValue2 then
    localValue2 = RemoveBlip
    localValue3 = localValue1.blip
    localValue2(localValue3)
    localValue1.blip = nil
  end
  localValue2 = localValue1.vehicles
  localValue2 = localValue2.speed
  if localValue2 then
    localValue2 = localValue1.speedHandle
    if localValue2 then
      localValue2 = RemoveRoadNodeSpeedZone
      localValue3 = localValue1.speedHandle
      localValue2(localValue3)
      localValue1.speedHandle = nil
    end
  end
end
text2 = RegisterNetEvent
rageUiOperation2 = "ef32c544d1"
-- Beginner: this function handles network event "ef32c544d1".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, workingValue9
  localValue2 = localValue1.bucketId
  localValue3 = CMG
  localValue3 = localValue3.getPlayerBucket
  localValue3 = localValue3()
  if localValue2 == localValue3 then
    localValue2 = number
    localValue3 = localValue1
    localValue2(localValue3)
  end
  localValue2 = table
  localValue2 = localValue2.add
  localValue3 = dataCollection5
  workingValue9 = localValue1
  localValue2(localValue3, workingValue9)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ef32c544d1".
text2(rageUiOperation2, text4)
text2 = RegisterNetEvent
rageUiOperation2 = "01669fc121"
-- Beginner: this function handles network event "01669fc121".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, workingValue9, number8, workingValue11, workingValue13, tableHelper, workingValue16, position
  localValue2 = pairs
  localValue3 = dataCollection5
  localValue2, localValue3, workingValue9, number8 = localValue2(localValue3)
  for workingValue11, workingValue13 in localValue2, localValue3, workingValue9, number8 do
    tableHelper = workingValue13.uuid
    if tableHelper == localValue1 then
      tableHelper = text
      workingValue16 = workingValue13
      tableHelper(workingValue16)
      tableHelper = table
      tableHelper = tableHelper.remove
      workingValue16 = dataCollection5
      position = workingValue11
      tableHelper(workingValue16, position)
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "01669fc121".
text2(rageUiOperation2, text4)
text2 = AddEventHandler
rageUiOperation2 = "919aefda0c"
-- Beginner: this function runs when client event "919aefda0c" fires.

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, workingValue9, number8, workingValue11, workingValue13, tableHelper, workingValue16
  localValue2 = pairs
  localValue3 = dataCollection5
  localValue2, localValue3, workingValue9, number8 = localValue2(localValue3)
  for workingValue11, workingValue13 in localValue2, localValue3, workingValue9, number8 do
    tableHelper = workingValue13.bucketId
    if tableHelper == localValue1 then
      tableHelper = number
      workingValue16 = workingValue13
      tableHelper(workingValue16)
    else
      tableHelper = text
      workingValue16 = workingValue13
      tableHelper(workingValue16)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "919aefda0c".
text2(rageUiOperation2, text4)

-- === HELPER FUNCTION (decompiler name: text2; parameters: localValue1, localValue2) ===
function text2(localValue1, localValue2)
  local localValue3, workingValue9, number8, workingValue11, workingValue13
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  workingValue9 = GetWeapontypeGroup
  number8 = localValue2
  workingValue9 = workingValue9(number8)
  number8 = localValue1.weapons
  number8 = number8.melee
  if not number8 and -728555052 == workingValue9 then
    number8 = CMG
    number8 = number8.setWeapon
    workingValue11 = localValue3
    workingValue13 = -1569615261
    number8(workingValue11, workingValue13)
  else
    number8 = localValue1.weapons
    number8 = number8.throwable
    if not number8 and 1548507267 == workingValue9 then
      number8 = CMG
      number8 = number8.setWeapon
      workingValue11 = localValue3
      workingValue13 = -1569615261
      number8(workingValue11, workingValue13)
    else
      number8 = localValue1.weapons
      number8 = number8.pistol
      if not number8 and 416676503 == workingValue9 then
        number8 = CMG
        number8 = number8.setWeapon
        workingValue11 = localValue3
        workingValue13 = -1569615261
        number8(workingValue11, workingValue13)
      else
        number8 = localValue1.weapons
        number8 = number8.shotgun
        if not number8 and 860033945 == workingValue9 then
          number8 = CMG
          number8 = number8.setWeapon
          workingValue11 = localValue3
          workingValue13 = -1569615261
          number8(workingValue11, workingValue13)
        else
          number8 = localValue1.weapons
          number8 = number8.mg
          if not number8 and 1159398588 == workingValue9 then
            number8 = CMG
            number8 = number8.setWeapon
            workingValue11 = localValue3
            workingValue13 = -1569615261
            number8(workingValue11, workingValue13)
          else
            number8 = localValue1.weapons
            number8 = number8.smg
            if not number8 and -957766203 == workingValue9 then
              number8 = CMG
              number8 = number8.setWeapon
              workingValue11 = localValue3
              workingValue13 = -1569615261
              number8(workingValue11, workingValue13)
            else
              number8 = localValue1.weapons
              number8 = number8.rifle
              if not number8 and 970310034 == workingValue9 then
                number8 = CMG
                number8 = number8.setWeapon
                workingValue11 = localValue3
                workingValue13 = -1569615261
                number8(workingValue11, workingValue13)
              else
                number8 = localValue1.weapons
                number8 = number8.sniper
                if not number8 and -1212426201 == workingValue9 then
                  number8 = CMG
                  number8 = number8.setWeapon
                  workingValue11 = localValue3
                  workingValue13 = -1569615261
                  number8(workingValue11, workingValue13)
                else
                  number8 = localValue1.weapons
                  number8 = number8.heavy
                  if not number8 and -1569042529 == workingValue9 then
                    number8 = CMG
                    number8 = number8.setWeapon
                    workingValue11 = localValue3
                    workingValue13 = -1569615261
                    number8(workingValue11, workingValue13)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1) ===
function rageUiOperation2(localValue1)
  local localValue2, localValue3
  localValue2 = DeleteEntity
  localValue3 = localValue1
  -- Beginner: Delete a GTA entity.
  localValue2(localValue3)
end

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, workingValue9, number8, workingValue11
  localValue2 = DisableControlAction
  localValue3 = 0
  workingValue9 = 32
  number8 = true
  localValue2(localValue3, workingValue9, number8)
  localValue2 = DisableControlAction
  localValue3 = 0
  workingValue9 = 33
  number8 = true
  localValue2(localValue3, workingValue9, number8)
  localValue2 = DisableControlAction
  localValue3 = 0
  workingValue9 = 34
  number8 = true
  localValue2(localValue3, workingValue9, number8)
  localValue2 = DisableControlAction
  localValue3 = 0
  workingValue9 = 35
  number8 = true
  localValue2(localValue3, workingValue9, number8)
  localValue2 = DisableControlAction
  localValue3 = 0
  workingValue9 = 71
  number8 = true
  localValue2(localValue3, workingValue9, number8)
  localValue2 = DisableControlAction
  localValue3 = 0
  workingValue9 = 72
  number8 = true
  localValue2(localValue3, workingValue9, number8)
  localValue2 = SetVehicleEngineOn
  localValue3 = localValue1
  workingValue9 = false
  number8 = true
  workingValue11 = false
  localValue2(localValue3, workingValue9, number8, workingValue11)
end

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1) ===
function text6(localValue1)
  local localValue2, localValue3
  localValue2 = IsVehicleDamaged
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    localValue2 = GetVehicleBodyHealth
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    localValue3 = 1000.0
    localValue2 = GetVehicleEngineHealth
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    localValue3 = 1000.0
    localValue2 = GetVehiclePetrolTankHealth
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    localValue3 = 1000.0
    localValue2 = GetEntityHealth
    localValue3 = localValue1
    -- Beginner: result below is health.
    localValue2 = localValue2(localValue3)
    localValue3 = 1000.0
    localValue2 = AreAllVehicleWindowsIntact
    localValue3 = localValue1
    localValue2 = localValue2(localValue3)
    localValue2 = localValue2 < localValue3 or localValue2
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation3; parameters: localValue1, localValue2) ===
function rageUiOperation3(localValue1, localValue2)
  local localValue3, workingValue9, number8, workingValue11
  localValue3 = localValue1.vehicles
  localValue3 = localValue3.disableTrolling
  if localValue3 then
    localValue3 = DisableControlAction
    workingValue9 = 0
    number8 = 86
    workingValue11 = true
    localValue3(workingValue9, number8, workingValue11)
    localValue3 = DisableControlAction
    workingValue9 = 0
    number8 = 101
    workingValue11 = true
    localValue3(workingValue9, number8, workingValue11)
    localValue3 = DisableControlAction
    workingValue9 = 0
    number8 = 102
    workingValue11 = true
    localValue3(workingValue9, number8, workingValue11)
    localValue3 = DisableControlAction
    workingValue9 = 0
    number8 = 103
    workingValue11 = true
    localValue3(workingValue9, number8, workingValue11)
    localValue3 = DisableControlAction
    workingValue9 = 0
    number8 = 350
    workingValue11 = true
    localValue3(workingValue9, number8, workingValue11)
    localValue3 = DisableControlAction
    workingValue9 = 0
    number8 = 351
    workingValue11 = true
    localValue3(workingValue9, number8, workingValue11)
    localValue3 = DisableControlAction
    workingValue9 = 0
    number8 = 352
    workingValue11 = true
    localValue3(workingValue9, number8, workingValue11)
    localValue3 = DisableControlAction
    workingValue9 = 0
    number8 = 353
    workingValue11 = true
    localValue3(workingValue9, number8, workingValue11)
    localValue3 = IsVehicleParachuteActive
    workingValue9 = localValue2
    localValue3 = localValue3(workingValue9)
    if localValue3 then
      localValue3 = SetVehicleForwardSpeed
      workingValue9 = localValue2
      number8 = 0.0
      localValue3(workingValue9, number8)
    end
    localValue3 = SetCargobobHookCanAttach
    workingValue9 = localValue2
    number8 = false
    localValue3(workingValue9, number8)
    localValue3 = SetVehicleRocketBoostPercentage
    workingValue9 = localValue2
    number8 = 0.0
    localValue3(workingValue9, number8)
  end
  localValue3 = localValue1.vehicles
  localValue3 = localValue3.disableDamage
  if localValue3 then
    localValue3 = text6
    workingValue9 = localValue2
    localValue3 = localValue3(workingValue9)
    if localValue3 then
      localValue3 = SetVehicleEngineHealth
      workingValue9 = localValue2
      number8 = 9999
      localValue3(workingValue9, number8)
      localValue3 = SetVehiclePetrolTankHealth
      workingValue9 = localValue2
      number8 = 9999
      localValue3(workingValue9, number8)
      localValue3 = SetVehicleFixed
      workingValue9 = localValue2
      localValue3(workingValue9)
    end
  end
  localValue3 = localValue1.vehicles
  localValue3 = localValue3.delete
  if localValue3 then
    localValue3 = rageUiOperation2
    if localValue3 then
      goto continueAtStep90
    end
  end
  localValue3 = text4
  ::continueAtStep90::
  workingValue9 = GetEntityModel
  number8 = localValue2
  -- Beginner: result below is modelHash.
  workingValue9 = workingValue9(number8)
  number8 = localValue1.vehicles
  number8 = number8.helicopter
  if number8 then
    number8 = IsThisModelAHeli
    workingValue11 = workingValue9
    number8 = number8(workingValue11)
    if number8 then
      number8 = localValue3
      workingValue11 = localValue2
      number8(workingValue11)
  end
  else
    number8 = localValue1.vehicles
    number8 = number8.plane
    if number8 then
      number8 = IsThisModelAPlane
      workingValue11 = workingValue9
      number8 = number8(workingValue11)
      if number8 then
        number8 = localValue3
        workingValue11 = localValue2
        number8(workingValue11)
    end
    else
      number8 = localValue1.vehicles
      number8 = number8.boat
      if number8 then
        number8 = IsThisModelABoat
        workingValue11 = workingValue9
        number8 = number8(workingValue11)
        if number8 then
          number8 = localValue3
          workingValue11 = localValue2
          number8(workingValue11)
      end
      else
        number8 = localValue1.vehicles
        number8 = number8.bicycle
        if number8 then
          number8 = IsThisModelABicycle
          workingValue11 = workingValue9
          number8 = number8(workingValue11)
          if number8 then
            number8 = localValue3
            workingValue11 = localValue2
            number8(workingValue11)
        end
        else
          number8 = localValue1.vehicles
          number8 = number8.car
          if number8 then
            number8 = IsThisModelACar
            workingValue11 = workingValue9
            number8 = number8(workingValue11)
            if not number8 then
              number8 = IsThisModelABike
              workingValue11 = workingValue9
              number8 = number8(workingValue11)
              if not number8 then
                goto continueAtStep162
              end
            end
            number8 = localValue3
            workingValue11 = localValue2
            number8(workingValue11)
          end
        end
      end
    end
  end
  ::continueAtStep162::
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1) ===
function rageUiOperation4(localValue1)
  local localValue2, localValue3, workingValue9, number8, workingValue11, workingValue13, tableHelper, workingValue16, position, workingValue
  localValue2 = pairs
  localValue3 = CMG
  localValue3 = localValue3.getAllVehicles
  localValue3, workingValue9, number8, workingValue11, workingValue13, tableHelper, workingValue16, position, workingValue = localValue3()
  localValue2, localValue3, workingValue9, number8 = localValue2(localValue3, workingValue9, number8, workingValue11, workingValue13, tableHelper, workingValue16, position, workingValue)
  for workingValue11, workingValue13 in localValue2, localValue3, workingValue9, number8 do
    tableHelper = NetworkGetEntityIsNetworked
    workingValue16 = workingValue13
    tableHelper = tableHelper(workingValue16)
    if tableHelper then
      tableHelper = GetEntityCoords
      workingValue16 = workingValue13
      position = true
      -- Beginner: result below is entityCoords.
      tableHelper = tableHelper(workingValue16, position)
      tableHelper = tableHelper.xy
      workingValue16 = localValue1.position
      workingValue16 = workingValue16.xy
      tableHelper = tableHelper - workingValue16
      tableHelper = #tableHelper
      workingValue16 = localValue1.radius
      tableHelper = tableHelper < workingValue16
      workingValue16 = GetPedInVehicleSeat
      position = workingValue13
      workingValue = -1
      workingValue16 = workingValue16(position, workingValue)
      if 0 == workingValue16 and tableHelper then
        position = dataCollection8
        position = position[workingValue13]
        if not position then
          position = dataCollection8
          workingValue = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          workingValue = workingValue()
          position[workingValue13] = workingValue
        end
      else
        position = dataCollection8
        position = position[workingValue13]
        if position then
          position = dataCollection8
          position[workingValue13] = nil
        end
      end
    end
  end
  localValue2 = pairs
  localValue3 = dataCollection8
  localValue2, localValue3, workingValue9, number8 = localValue2(localValue3)
  for workingValue11, workingValue13 in localValue2, localValue3, workingValue9, number8 do
    tableHelper = DoesEntityExist
    workingValue16 = workingValue11
    tableHelper = tableHelper(workingValue16)
    if not tableHelper then
      tableHelper = dataCollection8
      tableHelper[workingValue11] = nil
    else
      tableHelper = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      tableHelper = tableHelper()
      tableHelper = tableHelper - workingValue13
      workingValue16 = 60000
      if tableHelper > workingValue16 then
        tableHelper = NetworkHasControlOfEntity
        workingValue16 = workingValue11
        tableHelper = tableHelper(workingValue16)
        if tableHelper then
          tableHelper = DeleteEntity
          workingValue16 = workingValue11
          -- Beginner: Delete a GTA entity.
          tableHelper(workingValue16)
        end
      end
    end
  end
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation5; parameters: localValue1) ===
function rageUiOperation5(localValue1)
  local localValue2, localValue3, workingValue9, number8, workingValue11, workingValue13, tableHelper, workingValue16, position, workingValue, number2, cmgOperation
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  localValue3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  localValue3 = localValue3()
  workingValue9 = SetEntityInvincible
  number8 = localValue2
  workingValue11 = localValue1
  workingValue9(number8, workingValue11)
  workingValue9 = SetPlayerInvincible
  number8 = localValue3
  workingValue11 = localValue1
  workingValue9(number8, workingValue11)
  workingValue9 = SetEntityProofs
  number8 = localValue2
  workingValue11 = localValue1
  workingValue13 = localValue1
  tableHelper = localValue1
  workingValue16 = localValue1
  position = localValue1
  workingValue = localValue1
  number2 = localValue1
  cmgOperation = localValue1
  workingValue9(number8, workingValue11, workingValue13, tableHelper, workingValue16, position, workingValue, number2, cmgOperation)
  workingValue9 = SetEntityCanBeDamaged
  number8 = localValue2
  workingValue11 = not localValue1
  workingValue9(number8, workingValue11)
  workingValue9 = SetPedCanRagdoll
  number8 = localValue2
  workingValue11 = not localValue1
  workingValue9(number8, workingValue11)
  workingValue9 = SetPedCanRagdollFromPlayerImpact
  number8 = localValue2
  workingValue11 = not localValue1
  workingValue9(number8, workingValue11)
  workingValue9 = ClearPedBloodDamage
  number8 = localValue2
  workingValue9(number8)
  workingValue9 = ResetPedVisibleDamage
  number8 = localValue2
  workingValue9(number8)
  workingValue9 = ClearPedLastWeaponDamage
  number8 = localValue2
  workingValue9(number8)
end

-- === HELPER FUNCTION (decompiler name: text7; parameters: localValue1) ===
function text7(localValue1)
  local localValue2, localValue3, workingValue9, number8, workingValue11, workingValue13, tableHelper
  localValue2 = GetCurrentPedWeapon
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  workingValue9 = 0
  number8 = false
  localValue2, localValue3 = localValue2(localValue3, workingValue9, number8)
  if 0 ~= localValue3 and 1953687840 ~= localValue3 then
    workingValue9 = text2
    number8 = localValue1
    workingValue11 = localValue3
    -- Beginner: Register a client-side event handler.
    workingValue9(number8, workingValue11)
  end
  workingValue9 = CMG
  workingValue9 = workingValue9.getPlayerVehicle
  workingValue9, number8 = workingValue9()
  if 0 ~= workingValue9 and number8 then
    workingValue11 = rageUiOperation3
    workingValue13 = localValue1
    tableHelper = workingValue9
    workingValue11(workingValue13, tableHelper)
  end
  workingValue11 = localValue1.vehicles
  workingValue11 = workingValue11.emptyDelete
  if workingValue11 then
    workingValue11 = rageUiOperation4
    workingValue13 = localValue1
    workingValue11(workingValue13)
  end
  workingValue11 = localValue1.disableDamage
  if workingValue11 then
    workingValue11 = rageUiOperation5
    workingValue13 = true
    workingValue11(workingValue13)
  end
  workingValue11 = localValue1.disableCollision
  if workingValue11 then
    workingValue11 = SetLocalPlayerAsGhost
    workingValue13 = true
    workingValue11(workingValue13)
  end
end

-- === HELPER FUNCTION (decompiler name: text9; parameters: none) ===
function text9()
  local localValue1, localValue2, localValue3, workingValue9, number8, workingValue11, workingValue13, tableHelper, workingValue16, position, workingValue, number2
  localValue1 = false
  localValue2 = CMG
  localValue2 = localValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue2 = localValue2()
  localValue3 = CMG
  localValue3 = localValue3.inEvent
  localValue3 = localValue3()
  if localValue3 then
    return
  end
  localValue3 = ipairs
  workingValue9 = dataCollection5
  localValue3, workingValue9, number8, workingValue11 = localValue3(workingValue9)
  for workingValue13, tableHelper in localValue3, workingValue9, number8, workingValue11 do
    workingValue16 = localValue2.xy
    position = tableHelper.position
    position = position.xy
    workingValue16 = workingValue16 - position
    workingValue16 = #workingValue16
    position = tableHelper.radius
    if workingValue16 < position then
      workingValue16 = number10
      position = tableHelper
      workingValue16 = workingValue16(position)
      if workingValue16 then
        localValue1 = true
        workingValue16 = text7
        position = tableHelper
        workingValue16(position)
        workingValue16 = number7
        if not workingValue16 then
          workingValue16 = TriggerEvent
          position = "371eab1d3a"
          workingValue = {}
          workingValue.text = "You have entered a Temporary RP Zone"
          workingValue.height = "200px"
          workingValue.width = "auto"
          workingValue.colour = "#FFF"
          workingValue.background = "#32CD32"
          workingValue.pos = "bottom-right"
          workingValue.icon = "success"
          number2 = 5000
          -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
          workingValue16(position, workingValue, number2)
          workingValue16 = Citizen
          workingValue16 = workingValue16.CreateThread

          -- === HELPER FUNCTION: position() ===
          function position()
            local rageUiOperation, text8, text10
            rageUiOperation = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            rageUiOperation = rageUiOperation()
            while true do
              text8 = GetGameTimer
              -- Beginner: result below is gameTimeMs.
              text8 = text8()
              text8 = text8 - rageUiOperation
              text10 = 5000
              if not (text8 < text10) then
                break
              end
              text8 = number7
              if not text8 then
                break
              end
              text8 = drawNativeText
              text10 = "~q~ENTERED TEMPORARY RP ZONE"
              -- Beginner: Draw GTA-style text on screen.
              text8(text10)
              text8 = Citizen
              text8 = text8.Wait
              text10 = 0
              text8(text10)
            end
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          workingValue16(position)
        end
        workingValue16 = tableHelper.disableMusicAudio
        if workingValue16 then
          workingValue16 = true
          stateFlag4 = workingValue16
        end
        workingValue16 = true
        number7 = workingValue16
      end
    end
  end
  localValue3 = number7
  if localValue3 and not localValue1 then
    localValue3 = TriggerEvent
    workingValue9 = "371eab1d3a"
    number8 = {}
    number8.text = "You have left the Temporary RP Zone"
    number8.height = "60px"
    number8.width = "auto"
    number8.colour = "#FFF"
    number8.background = "#ff0000"
    number8.pos = "bottom-right"
    number8.icon = "bad"
    workingValue11 = 5000
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
    localValue3(workingValue9, number8, workingValue11)
    localValue3 = rageUiOperation5
    workingValue9 = false
    localValue3(workingValue9)
    localValue3 = SetLocalPlayerAsGhost
    workingValue9 = false
    localValue3(workingValue9)
    localValue3 = false
    number7 = localValue3
    localValue3 = false
    stateFlag4 = localValue3
  end
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
dataCollection3 = text9
createVector3 = "RP Zones Tick"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(dataCollection3, createVector3)
cmgOperation2 = {}
dataCollection3 = {}
createVector3 = vector3
number4 = 923.70379638672
number5 = 47.972114562988
iterator = 81.106307983398
createVector3 = createVector3(number4, number5, iterator)
dataCollection3.position = createVector3
dataCollection3.radius = 18.0
cmgOperation2[1] = dataCollection3
dataCollection3 = 0
createVector3 = {}

-- === HELPER FUNCTION (decompiler name: number4; parameters: none) ===
function number4()
  local localValue1, localValue2
  localValue1 = table
  localValue1 = localValue1.clear
  localValue2 = createVector3
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: number5; parameters: localValue1) ===
function number5(localValue1)
  local localValue2, localValue3, workingValue9, number8, workingValue11, workingValue13, tableHelper, workingValue16, position, workingValue, number2, cmgOperation, text3, text5, number3, stateFlag, stateFlag2
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  localValue3 = dataCollection3
  localValue3 = localValue2 - localValue3
  workingValue9 = 1000
  if localValue3 < workingValue9 then
    return
  end
  dataCollection3 = localValue2
  localValue3 = CMG
  localValue3 = localValue3.getPlayerVehicle
  localValue3, workingValue9 = localValue3()
  number8 = pairs
  workingValue11 = CMG
  workingValue11 = workingValue11.getAllVehicles
  workingValue11, workingValue13, tableHelper, workingValue16, position, workingValue, number2, cmgOperation, text3, text5, number3, stateFlag, stateFlag2 = workingValue11()
  number8, workingValue11, workingValue13, tableHelper = number8(workingValue11, workingValue13, tableHelper, workingValue16, position, workingValue, number2, cmgOperation, text3, text5, number3, stateFlag, stateFlag2)
  for workingValue16, position in number8, workingValue11, workingValue13, tableHelper do
    workingValue = GetEntityCoords
    number2 = position
    cmgOperation = true
    -- Beginner: result below is entityCoords.
    workingValue = workingValue(number2, cmgOperation)
    number2 = localValue1.position
    workingValue = workingValue - number2
    workingValue = #workingValue
    number2 = localValue1.radius
    workingValue = workingValue < number2
    number2 = createVector3
    number2 = number2[position]
    if workingValue then
      if not number2 then
        cmgOperation = createVector3
        cmgOperation[position] = localValue2
      end
      if workingValue9 and localValue3 == position then
        cmgOperation = CMG
        cmgOperation = cmgOperation.announceMpBigMsg
        text3 = "~r~WARNING"
        text5 = "You are in a no car zone! Please exit within 5 seconds."
        number3 = 1250
        stateFlag = false
        stateFlag2 = true
        cmgOperation(text3, text5, number3, stateFlag, stateFlag2)
      end
    elseif number2 then
      cmgOperation = createVector3
      cmgOperation[position] = nil
    end
  end
  number8 = pairs
  workingValue11 = createVector3
  number8, workingValue11, workingValue13, tableHelper = number8(workingValue11)
  for workingValue16, position in number8, workingValue11, workingValue13, tableHelper do
    workingValue = localValue2 - position
    number2 = 5000
    if workingValue > number2 then
      workingValue = NetworkHasControlOfEntity
      number2 = workingValue16
      workingValue = workingValue(number2)
      if workingValue then
        workingValue = DeleteEntity
        number2 = workingValue16
        -- Beginner: Delete a GTA entity.
        workingValue(number2)
      end
    end
  end
end
iterator = pairs
workingValue2 = cmgOperation2
iterator, workingValue2, workingValue3, cmgOperation3 = iterator(workingValue2)
for workingValue4, workingValue5 in iterator, workingValue2, workingValue3, cmgOperation3 do
  cmgOperation4 = CMG
  cmgOperation4 = cmgOperation4.createArea
  text11 = "nocarzones_"
  stringHelper = tostring
  cmgOperation5 = workingValue4
  stringHelper = stringHelper(cmgOperation5)
  text11 = text11 .. stringHelper
  stringHelper = workingValue5.position
  cmgOperation5 = workingValue5.radius
  cmgOperation5 = cmgOperation5 + 2.0
  number6 = 10.0

  -- === HELPER FUNCTION (decompiler name: workingValue6; parameters: none) ===
  function workingValue6()
    local localValue1, localValue2
  end
  workingValue7 = number4
  workingValue8 = number5
  workingValue10 = workingValue5
  -- Beginner: Create an interaction area around a world position.
  cmgOperation4(text11, stringHelper, cmgOperation5, number6, workingValue6, workingValue7, workingValue8, workingValue10)
end
iterator = false

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2
  localValue1 = false
  iterator = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2
  localValue1 = true
  iterator = localValue1
end
cmgOperation3 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2) ===
function workingValue4(localValue1, localValue2)
  local localValue3, workingValue9, number8, workingValue11, workingValue13, tableHelper, workingValue16, position, workingValue, number2
  localValue3 = CMG
  localValue3 = localValue3.generateUUID
  workingValue9 = "novehicleoverridezone"
  number8 = 5
  workingValue11 = "alphanumeric"
  localValue3 = localValue3(workingValue9, number8, workingValue11)
  workingValue9 = CMG
  workingValue9 = workingValue9.createArea
  number8 = "novehicleoverridezone_"
  workingValue11 = localValue3
  number8 = number8 .. workingValue11
  workingValue11 = localValue1
  workingValue13 = localValue2
  tableHelper = 1000.0
  workingValue16 = workingValue3
  position = workingValue2

  -- === HELPER FUNCTION (decompiler name: workingValue; parameters: none) ===
  function workingValue()
    local rageUiOperation, text8
  end
  number2 = {}
  return workingValue9(number8, workingValue11, workingValue13, tableHelper, workingValue16, position, workingValue, number2)
end
cmgOperation3.createNoVehicleOverrideZone = workingValue4
cmgOperation3 = false

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2
  localValue1 = false
  cmgOperation3 = localValue1
end

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1) ===
function workingValue5(localValue1)
  local localValue2, localValue3, workingValue9, number8
  localValue2 = CMG
  localValue2 = localValue2.getPlayerBucket
  localValue2 = localValue2()
  if 0 ~= localValue2 then
    return
  end
  localValue2 = iterator
  if localValue2 then
    return
  end
  localValue2 = GetInteriorFromEntity
  localValue3 = PlayerPedId
  localValue3, workingValue9, number8 = localValue3()
  -- Beginner: result below is interiorId.
  localValue2 = localValue2(localValue3, workingValue9, number8)
  localValue3 = localValue1.interior
  if localValue3 then
    localValue3 = localValue1.interior
    if not localValue3 or 0 == localValue2 or 217602 == localValue2 then
      goto continueAtStep35
    end
  end
  localValue3 = true
  cmgOperation3 = localValue3
  localValue3 = CMG
  localValue3 = localValue3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  localValue3 = localValue3()
  if 0 ~= localValue3 then
    workingValue9 = DeleteEntity
    number8 = localValue3
    -- Beginner: Delete a GTA entity.
    workingValue9(number8)
  end
  ::continueAtStep35::
end
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text11; parameters: localValue1, localValue2, localValue3) ===
function text11(localValue1, localValue2, localValue3)
  local workingValue9, number8, workingValue11, workingValue13, tableHelper, workingValue16, position, workingValue, number2, cmgOperation
  workingValue9 = CMG
  workingValue9 = workingValue9.generateUUID
  number8 = "novehiclezones"
  workingValue11 = 5
  workingValue13 = "alphanumeric"
  workingValue9 = workingValue9(number8, workingValue11, workingValue13)
  number8 = CMG
  number8 = number8.createArea
  workingValue11 = "novehiclezone_"
  workingValue13 = workingValue9
  workingValue11 = workingValue11 .. workingValue13
  workingValue13 = localValue1
  tableHelper = localValue2
  workingValue16 = 1000.0

  -- === HELPER FUNCTION: position() ===
  function position()
    local rageUiOperation, text8
  end
  workingValue = workingValue4
  number2 = workingValue5
  cmgOperation = {}
  cmgOperation.interior = localValue3
  return number8(workingValue11, workingValue13, tableHelper, workingValue16, position, workingValue, number2, cmgOperation)
end
cmgOperation4.createNoVehicleZone = text11
cmgOperation4 = CMG

-- === HELPER FUNCTION (decompiler name: text11; parameters: localValue1) ===
function text11(localValue1)
  local localValue2, localValue3
  localValue2 = workingValue4
  localValue2()
  localValue2 = tCMG
  localValue2 = localValue2.removeArea
  localValue3 = localValue1
  localValue2(localValue3)
end
cmgOperation4.deleteNoVehicleZone = text11
cmgOperation4 = false

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2
  localValue1 = false
  cmgOperation4 = localValue1
end

-- === HELPER FUNCTION: stringHelper(localValue1) ===
function stringHelper(localValue1)
  local localValue2, localValue3, workingValue9, number8, workingValue11, workingValue13
  localValue2 = GetInteriorFromEntity
  localValue3 = PlayerPedId
  localValue3, workingValue9, number8, workingValue11, workingValue13 = localValue3()
  -- Beginner: result below is interiorId.
  localValue2 = localValue2(localValue3, workingValue9, number8, workingValue11, workingValue13)
  localValue3 = localValue1.interior
  if localValue3 then
    localValue3 = localValue1.interior
    if not localValue3 or 0 == localValue2 or 217602 == localValue2 then
      goto continueAtStep24
    end
  end
  localValue3 = true
  cmgOperation4 = localValue3
  localValue3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue3 = localValue3()
  workingValue9 = SetCurrentPedWeapon
  number8 = localValue3
  workingValue11 = -1569615261
  workingValue13 = true
  workingValue9(number8, workingValue11, workingValue13)
  ::continueAtStep24::
end
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: number6; parameters: localValue1, localValue2, localValue3) ===
function number6(localValue1, localValue2, localValue3)
  local workingValue9, number8, workingValue11, workingValue13, tableHelper, workingValue16, position, workingValue, number2, cmgOperation
  workingValue9 = CMG
  workingValue9 = workingValue9.generateUUID
  number8 = "noweaponzones"
  workingValue11 = 5
  workingValue13 = "alphanumeric"
  workingValue9 = workingValue9(number8, workingValue11, workingValue13)
  number8 = CMG
  number8 = number8.createArea
  workingValue11 = "noweaponzone_"
  workingValue13 = workingValue9
  workingValue11 = workingValue11 .. workingValue13
  workingValue13 = localValue1
  tableHelper = localValue2
  workingValue16 = 1000.0

  -- === HELPER FUNCTION: position() ===
  function position()
    local rageUiOperation, text8
  end
  workingValue = text11
  number2 = stringHelper
  cmgOperation = {}
  cmgOperation.interior = localValue3
  return number8(workingValue11, workingValue13, tableHelper, workingValue16, position, workingValue, number2, cmgOperation)
end
cmgOperation5.createNoWeaponZone = number6
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: number6; parameters: localValue1) ===
function number6(localValue1)
  local localValue2, localValue3
  localValue2 = workingValue4
  localValue2()
  localValue2 = tCMG
  localValue2 = localValue2.removeArea
  localValue3 = localValue1
  localValue2(localValue3)
end
cmgOperation5.deleteNoVehicleZone = number6
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
function number6()
  local localValue1, localValue2
  localValue1 = cmgOperation3
  return localValue1
end
cmgOperation5.isInsideNoVehicleZone = number6
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
function number6()
  local localValue1, localValue2
  localValue1 = cmgOperation4
  return localValue1
end
cmgOperation5.isInsideNoWeaponZone = number6
cmgOperation5 = CMG

-- === HELPER FUNCTION (decompiler name: number6; parameters: none) ===
function number6()
  local localValue1, localValue2
  localValue1 = stateFlag4
  return localValue1
end
cmgOperation5.isInNoMusicRPZone = number6
