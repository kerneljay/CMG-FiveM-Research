--[[
    Beginner Guide: cl_rpzones.lua
    ==============================

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
    BEGINNER GUIDE — Rpzones
    ========================

    File: cmg/prod/client/staff/cl_rpzones.lua
    Purpose: This file contains staff/admin tools.

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

    Network/hash identifiers found: 4
      They are intentionally left unchanged because matching server code may use them.
      * ef32c544d1
      * 01669fc121
      * 919aefda0c
      * 371eab1d3a

    Example player-facing text in this file:
      * ~b~Main Menu
      * ~b~Vehicles
      * Vehicles
      * Mutes all DJ Menu audio whilst inside of an RP zone. Does not prevent the placement of a DJ Menu set.
      * You have entered a Temporary RP Zone

]]
local dataTable, dataTable2, dataTable4, dataTable5, numberValue7, dataTable8, flag4, numberValue9, numberValue10, numberValue11, numberValue, textValue, textValue2, rageUiCall2, textValue4, textValue6, rageUiCall3, rageUiCall4, rageUiCall5, textValue7, textValue9, cmgCall2, dataTable3, vector3Builder, numberValue4, numberValue5, iterator, workValue2, workValue3, cmgCall3, workValue4, workValue5, cmgCall4, textValue11, stringHelper, cmgCall5, numberValue6, workValue6, workValue7, workValue8, workValue10
dataTable = {}
dataTable2 = 5
dataTable4 = 10
dataTable5 = 20
numberValue7 = 30
dataTable8 = 40
flag4 = 50
numberValue9 = 75
numberValue10 = 100
numberValue11 = 150
numberValue = 200
textValue = 250
dataTable[1] = dataTable2
dataTable[2] = dataTable4
dataTable[3] = dataTable5
dataTable[4] = numberValue7
dataTable[5] = dataTable8
dataTable[6] = flag4
dataTable[7] = numberValue9
dataTable[8] = numberValue10
dataTable[9] = numberValue11
dataTable[10] = numberValue
dataTable[11] = textValue
dataTable2 = {}
dataTable4 = 10
dataTable5 = 20
numberValue7 = 30
dataTable8 = 40
flag4 = 50
numberValue9 = 75
numberValue10 = 100
numberValue11 = 150
numberValue = 200
dataTable2[1] = dataTable4
dataTable2[2] = dataTable5
dataTable2[3] = numberValue7
dataTable2[4] = dataTable8
dataTable2[5] = flag4
dataTable2[6] = numberValue9
dataTable2[7] = numberValue10
dataTable2[8] = numberValue11
dataTable2[9] = numberValue
dataTable4 = {}
dataTable5 = {}
dataTable5.melee = false
dataTable5.throwable = false
dataTable5.pistol = false
dataTable5.shotgun = false
dataTable5.mg = false
dataTable5.smg = false
dataTable5.rifle = false
dataTable5.sniper = false
dataTable5.heavy = false
dataTable4.weapons = dataTable5
dataTable5 = {}
numberValue7 = #dataTable
numberValue7 = dataTable[numberValue7]
dataTable5.speed = numberValue7
dataTable5.disableTrolling = true
dataTable5.disableDamage = false
dataTable5.delete = false
dataTable5.emptyDelete = false
dataTable5.car = false
dataTable5.helicopter = false
dataTable5.plane = false
dataTable5.boat = false
dataTable5.bicycle = false
dataTable4.vehicles = dataTable5
dataTable4.disableDamage = false
dataTable4.disableCollision = false
dataTable4.blipGloballyVisible = true
dataTable4.disableMusicAudio = false
dataTable5 = dataTable2[1]
dataTable4.radius = dataTable5
dataTable5 = {}
numberValue7 = false
dataTable8 = {}
flag4 = false
function numberValue9(arg1)
  local arg2, arg3, workValue9, numberValue8
  arg2 = table
  arg2 = arg2.copy
  arg3 = dataTable4
  arg2 = arg2(arg3)
  arg3 = CMG
  arg3 = arg3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg3 = arg3()
  arg2.position = arg3
  if arg1 then
    arg3 = GetBlipCoords
    workValue9 = GetFirstBlipInfoId
    numberValue8 = 8
    workValue9, numberValue8 = workValue9(numberValue8)
    arg3 = arg3(workValue9, numberValue8)
    arg2.position = arg3
  end
  arg3 = arg2.radius
  arg3 = arg3 + 0.0
  arg2.radius = arg3
  arg3 = arg2.vehicles
  workValue9 = arg2.vehicles
  workValue9 = workValue9.speed
  workValue9 = workValue9 + 0.0
  arg3.speed = workValue9
  arg3 = TriggerServerEvent
  workValue9 = "ef32c544d1"
  numberValue8 = arg2
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ef32c544d1".
  arg3(workValue9, numberValue8)
end
function numberValue10(arg1)
  local arg2, arg3
  arg2 = arg1.bucketId
  arg3 = CMG
  arg3 = arg3.getPlayerBucket
  arg3 = arg3()
  arg2 = arg2 == arg3
  return arg2
end
function numberValue11()
  local arg1, arg2, arg3, workValue9, numberValue8, workValue11, workValue13, tableHelper, workValue16, position, workValue, numberValue2
  arg1 = nil
  arg2 = 100.0
  arg3 = CMG
  arg3 = arg3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg3 = arg3()
  workValue9 = pairs
  numberValue8 = dataTable5
  workValue9, numberValue8, workValue11, workValue13 = workValue9(numberValue8)
  for tableHelper, workValue16 in workValue9, numberValue8, workValue11, workValue13 do
    position = workValue16.position
    position = position.xy
    workValue = arg3.xy
    position = position - workValue
    position = #position
    if arg2 > position then
      workValue = numberValue10
      numberValue2 = workValue16
      workValue = workValue(numberValue2)
      if workValue then
        arg1 = workValue16.uuid
        arg2 = position
      end
    end
  end
  if arg1 then
    workValue9 = TriggerServerEvent
    numberValue8 = "01669fc121"
    workValue11 = arg1
    workValue9(numberValue8, workValue11)
  end
end
numberValue = RMenu
numberValue = numberValue.Add
textValue = "rpzones"
textValue2 = "mainmenu"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue4 = ""
textValue6 = "~b~Main Menu"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
rageUiCall5 = "cmg_adminui"
textValue7 = "cmg_adminui"
rageUiCall2, textValue4, textValue6, rageUiCall3, rageUiCall4, rageUiCall5, textValue7, textValue9, cmgCall2, dataTable3, vector3Builder, numberValue4, numberValue5, iterator, workValue2, workValue3, cmgCall3, workValue4, workValue5, cmgCall4, textValue11, stringHelper, cmgCall5, numberValue6, workValue6, workValue7, workValue8, workValue10 = rageUiCall2(textValue4, textValue6, rageUiCall3, rageUiCall4, rageUiCall5, textValue7)
numberValue(textValue, textValue2, rageUiCall2, textValue4, textValue6, rageUiCall3, rageUiCall4, rageUiCall5, textValue7, textValue9, cmgCall2, dataTable3, vector3Builder, numberValue4, numberValue5, iterator, workValue2, workValue3, cmgCall3, workValue4, workValue5, cmgCall4, textValue11, stringHelper, cmgCall5, numberValue6, workValue6, workValue7, workValue8, workValue10)
numberValue = RMenu
numberValue = numberValue.Add
textValue = "rpzones"
textValue2 = "weapons"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue4 = RMenu
textValue6 = textValue4
textValue4 = textValue4.Get
rageUiCall3 = "rpzones"
rageUiCall4 = "mainmenu"
-- Beginner: result below is menu.
textValue4 = textValue4(textValue6, rageUiCall3, rageUiCall4)
textValue6 = ""
rageUiCall3 = "~b~Weapons"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5 = rageUiCall5()
textValue7 = "cmg_adminui"
textValue9 = "cmg_adminui"
rageUiCall2, textValue4, textValue6, rageUiCall3, rageUiCall4, rageUiCall5, textValue7, textValue9, cmgCall2, dataTable3, vector3Builder, numberValue4, numberValue5, iterator, workValue2, workValue3, cmgCall3, workValue4, workValue5, cmgCall4, textValue11, stringHelper, cmgCall5, numberValue6, workValue6, workValue7, workValue8, workValue10 = rageUiCall2(textValue4, textValue6, rageUiCall3, rageUiCall4, rageUiCall5, textValue7, textValue9)
numberValue(textValue, textValue2, rageUiCall2, textValue4, textValue6, rageUiCall3, rageUiCall4, rageUiCall5, textValue7, textValue9, cmgCall2, dataTable3, vector3Builder, numberValue4, numberValue5, iterator, workValue2, workValue3, cmgCall3, workValue4, workValue5, cmgCall4, textValue11, stringHelper, cmgCall5, numberValue6, workValue6, workValue7, workValue8, workValue10)
numberValue = RMenu
numberValue = numberValue.Add
textValue = "rpzones"
textValue2 = "vehicles"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue4 = RMenu
textValue6 = textValue4
textValue4 = textValue4.Get
rageUiCall3 = "rpzones"
rageUiCall4 = "mainmenu"
-- Beginner: result below is menu.
textValue4 = textValue4(textValue6, rageUiCall3, rageUiCall4)
textValue6 = ""
rageUiCall3 = "~b~Vehicles"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5 = rageUiCall5()
textValue7 = "cmg_adminui"
textValue9 = "cmg_adminui"
rageUiCall2, textValue4, textValue6, rageUiCall3, rageUiCall4, rageUiCall5, textValue7, textValue9, cmgCall2, dataTable3, vector3Builder, numberValue4, numberValue5, iterator, workValue2, workValue3, cmgCall3, workValue4, workValue5, cmgCall4, textValue11, stringHelper, cmgCall5, numberValue6, workValue6, workValue7, workValue8, workValue10 = rageUiCall2(textValue4, textValue6, rageUiCall3, rageUiCall4, rageUiCall5, textValue7, textValue9)
numberValue(textValue, textValue2, rageUiCall2, textValue4, textValue6, rageUiCall3, rageUiCall4, rageUiCall5, textValue7, textValue9, cmgCall2, dataTable3, vector3Builder, numberValue4, numberValue5, iterator, workValue2, workValue3, cmgCall3, workValue4, workValue5, cmgCall4, textValue11, stringHelper, cmgCall5, numberValue6, workValue6, workValue7, workValue8, workValue10)
numberValue = RageUI
numberValue = numberValue.CreateWhile
textValue = 1.0
textValue2 = RMenu
rageUiCall2 = textValue2
textValue2 = textValue2.Get
textValue4 = "rpzones"
textValue6 = "mainmenu"
-- Beginner: result below is menu.
textValue2 = textValue2(rageUiCall2, textValue4, textValue6)
rageUiCall2 = nil
function textValue4()
  local arg1, arg2, arg3, workValue9, numberValue8, workValue11, workValue13
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  workValue9 = "rpzones"
  numberValue8 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, workValue9, numberValue8)
  arg3 = true
  workValue9 = false
  numberValue8 = true
  function workValue11()
    local rageUiCall, textValue8, textValue10, dataTable6, dataTable7, dataTable9, workValue14, workValue15, textValue12, textValue13
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Separator
    textValue8 = "Creation"
    rageUiCall(textValue8)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue8 = "Weapons"
    textValue10 = "Configuration options related to weapons."
    dataTable6 = {}
    dataTable6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataTable7 = true
    function dataTable9()
      local arg12, arg22
    end
    workValue14 = RMenu
    workValue15 = workValue14
    workValue14 = workValue14.Get
    textValue12 = "rpzones"
    textValue13 = "weapons"
    workValue14, workValue15, textValue12, textValue13 = workValue14(workValue15, textValue12, textValue13)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9, workValue14, workValue15, textValue12, textValue13)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue8 = "Vehicles"
    textValue10 = "Configure options relating to vehicles."
    dataTable6 = {}
    dataTable6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataTable7 = true
    function dataTable9()
      local arg12, arg22
    end
    workValue14 = RMenu
    workValue15 = workValue14
    workValue14 = workValue14.Get
    textValue12 = "rpzones"
    textValue13 = "vehicles"
    workValue14, workValue15, textValue12, textValue13 = workValue14(workValue15, textValue12, textValue13)
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9, workValue14, workValue15, textValue12, textValue13)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue8 = "Disable Damage"
    textValue10 = "Disables damage to players, this has the same affect as a greenzone."
    dataTable6 = dataTable4.disableDamage
    dataTable7 = {}
    function dataTable9(arg12, arg22, arg32, arg4)
      dataTable4.disableDamage = arg4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue8 = "Disable Collision"
    textValue10 = "Disables collision between vehicles, this has the same affect as a greenzone."
    dataTable6 = dataTable4.disableCollision
    dataTable7 = {}
    function dataTable9(arg12, arg22, arg32, arg4)
      dataTable4.disableCollision = arg4
    end
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue8 = "Display Zone Globally"
    textValue10 = "Whether this zone should display on the main map. If disabled, it only shows on the minimap when nearby."
    dataTable6 = dataTable4.blipGloballyVisible
    dataTable7 = {}
    function dataTable9(arg12, arg22, arg32, arg4)
      dataTable4.blipGloballyVisible = arg4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.List
    textValue8 = "Radius (m)"
    textValue10 = dataTable2
    dataTable6 = table
    dataTable6 = dataTable6.find
    dataTable7 = dataTable2
    dataTable9 = dataTable4.radius
    dataTable6 = dataTable6(dataTable7, dataTable9)
    if not dataTable6 then
      dataTable6 = 1
    end
    dataTable7 = "The distance in meters of the RP zone to create. Please be mindful and start small."
    dataTable9 = {}
    workValue14 = true
    function workValue15(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable2
      flag3 = flag3[arg4]
      dataTable4.radius = flag3
    end
    function textValue12()
      local arg12, arg22
    end
    -- Beginner: Draw a RageUI list selector.
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9, workValue14, workValue15, textValue12)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue8 = "Disable Music Audio"
    textValue10 = "Mutes all DJ Menu audio whilst inside of an RP zone. Does not prevent the placement of a DJ Menu set."
    dataTable6 = dataTable4.disableMusicAudio
    dataTable7 = {}
    function dataTable9(arg12, arg22, arg32, arg4)
      dataTable4.disableMusicAudio = arg4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue8 = "~b~Create Zone"
    textValue10 = "Creates the zone with the settings you have provided."
    dataTable6 = {}
    dataTable6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataTable7 = true
    function dataTable9(arg12, arg22, arg32)
      local arg4, flag3
      if arg32 then
        arg4 = numberValue9
        flag3 = false
        arg4(flag3)
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    rageUiCall = IsWaypointActive
    rageUiCall = rageUiCall()
    if rageUiCall then
      rageUiCall = RageUI
      rageUiCall = rageUiCall.ButtonWithStyle
      textValue8 = "~b~Create Zone At Waypoint"
      textValue10 = "Creates the zone with the settings you have provided at the location of the waypoint."
      dataTable6 = {}
      dataTable6.RightLabel = "\226\134\146\226\134\146\226\134\146"
      dataTable7 = true
      function dataTable9(arg12, arg22, arg32)
        local arg4, flag3
        if arg32 then
          arg4 = numberValue9
          flag3 = true
          arg4(flag3)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    end
    rageUiCall = RageUI
    rageUiCall = rageUiCall.ButtonWithStyle
    textValue8 = "~r~Delete Closest Zone"
    textValue10 = "Deletes the closest zone within 100 meters."
    dataTable6 = {}
    dataTable6.RightLabel = "\226\134\146\226\134\146\226\134\146"
    dataTable7 = true
    function dataTable9(arg12, arg22, arg32)
      local arg4
      if arg32 then
        arg4 = numberValue11
        arg4()
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
  end
  function workValue13()
    local rageUiCall, textValue8
  end
  arg1(arg2, arg3, workValue9, numberValue8, workValue11, workValue13)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  workValue9 = "rpzones"
  numberValue8 = "weapons"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, workValue9, numberValue8)
  arg3 = true
  workValue9 = false
  numberValue8 = true
  function workValue11()
    local rageUiCall, textValue8, textValue10, dataTable6, dataTable7, dataTable9
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue8 = "Enable Melee"
    textValue10 = "Sets whether guns under the melee category are allowed."
    dataTable6 = dataTable4.weapons
    dataTable6 = dataTable6.melee
    dataTable7 = {}
    function dataTable9(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.weapons
      flag3.melee = arg4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue8 = "Enable Throwable"
    textValue10 = "Sets whether guns under the throwable category are allowed."
    dataTable6 = dataTable4.weapons
    dataTable6 = dataTable6.throwable
    dataTable7 = {}
    function dataTable9(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.weapons
      flag3.throwable = arg4
    end
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue8 = "Enable Pistol"
    textValue10 = "Sets whether guns under the pistol category are allowed."
    dataTable6 = dataTable4.weapons
    dataTable6 = dataTable6.pistol
    dataTable7 = {}
    function dataTable9(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.weapons
      flag3.pistol = arg4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue8 = "Enable Shotgun"
    textValue10 = "Sets whether guns under the shotgun category are allowed."
    dataTable6 = dataTable4.weapons
    dataTable6 = dataTable6.shotgun
    dataTable7 = {}
    function dataTable9(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.weapons
      flag3.shotgun = arg4
    end
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue8 = "Enable LMG"
    textValue10 = "Sets whether guns under the LMG category are allowed."
    dataTable6 = dataTable4.weapons
    dataTable6 = dataTable6.mg
    dataTable7 = {}
    function dataTable9(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.weapons
      flag3.mg = arg4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue8 = "Enable SMG"
    textValue10 = "Sets whether guns under the SMG category are allowed."
    dataTable6 = dataTable4.weapons
    dataTable6 = dataTable6.smg
    dataTable7 = {}
    function dataTable9(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.weapons
      flag3.smg = arg4
    end
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue8 = "Enable Rifle"
    textValue10 = "Sets whether guns under the rifle category are allowed."
    dataTable6 = dataTable4.weapons
    dataTable6 = dataTable6.rifle
    dataTable7 = {}
    function dataTable9(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.weapons
      flag3.rifle = arg4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue8 = "Enable Sniper"
    textValue10 = "Sets whether guns under the sniper category are allowed."
    dataTable6 = dataTable4.weapons
    dataTable6 = dataTable6.sniper
    dataTable7 = {}
    function dataTable9(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.weapons
      flag3.sniper = arg4
    end
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue8 = "Enable Heavy"
    textValue10 = "Sets whether guns under the heavy category are allowed."
    dataTable6 = dataTable4.weapons
    dataTable6 = dataTable6.heavy
    dataTable7 = {}
    function dataTable9(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.weapons
      flag3.heavy = arg4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
  end
  function workValue13()
    local rageUiCall, textValue8
  end
  arg1(arg2, arg3, workValue9, numberValue8, workValue11, workValue13)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  workValue9 = "rpzones"
  numberValue8 = "vehicles"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, workValue9, numberValue8)
  arg3 = true
  workValue9 = false
  numberValue8 = true
  function workValue11()
    local rageUiCall, textValue8, textValue10, dataTable6, dataTable7, dataTable9, workValue14, workValue15, textValue12
    rageUiCall = RageUI
    rageUiCall = rageUiCall.List
    textValue8 = "Speed (mph)"
    textValue10 = dataTable
    dataTable6 = table
    dataTable6 = dataTable6.find
    dataTable7 = dataTable
    dataTable9 = dataTable4.vehicles
    dataTable9 = dataTable9.speed
    dataTable6 = dataTable6(dataTable7, dataTable9)
    if not dataTable6 then
      dataTable6 = 1
    end
    dataTable7 = "Sets the maximum speed allowed in the zone in MPH."
    dataTable9 = {}
    workValue14 = true
    function workValue15(arg12, arg22, arg32, arg4)
      local flag3, workValue12
      flag3 = dataTable4.vehicles
      workValue12 = dataTable
      workValue12 = workValue12[arg4]
      flag3.speed = workValue12
    end
    function textValue12()
      local arg12, arg22
    end
    -- Beginner: Draw a RageUI list selector.
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9, workValue14, workValue15, textValue12)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue8 = "Disable Trolling"
    textValue10 = "Disables vehicles horns, parachutes, boosts, cargo hooks, jumping and animations."
    dataTable6 = dataTable4.vehicles
    dataTable6 = dataTable6.disableTrolling
    dataTable7 = {}
    function dataTable9(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.vehicles
      flag3.disableTrolling = arg4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue8 = "Disable Damage"
    textValue10 = "Prevents vehicles being damaged, instantly repairs engine health."
    dataTable6 = dataTable4.vehicles
    dataTable6 = dataTable6.disableDamage
    dataTable7 = {}
    function dataTable9(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.vehicles
      flag3.disableDamage = arg4
    end
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue8 = "Empty Deletion"
    textValue10 = "Sets whether empty vehicles are deleted after a minute of no driver being present."
    dataTable6 = dataTable4.vehicles
    dataTable6 = dataTable6.emptyDelete
    dataTable7 = {}
    function dataTable9(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.vehicles
      flag3.emptyDelete = arg4
    end
    -- Beginner: Draw a RageUI checkbox.
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    rageUiCall = RageUI
    rageUiCall = rageUiCall.Checkbox
    textValue8 = "Use Driver Deletion"
    textValue10 = "Sets whether vehicles with a driver should be instantly deleted."
    dataTable6 = dataTable4.vehicles
    dataTable6 = dataTable6.delete
    dataTable7 = {}
    function dataTable9(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.vehicles
      flag3.delete = arg4
    end
    rageUiCall(textValue8, textValue10, dataTable6, dataTable7, dataTable9)
    rageUiCall = dataTable4.vehicles
    rageUiCall = rageUiCall.delete
    if rageUiCall then
      rageUiCall = "Delete"
      if rageUiCall then
        goto flow_label_69
      end
    end
    rageUiCall = "Disable"
    ::flow_label_69::
    textValue8 = RageUI
    textValue8 = textValue8.Checkbox
    textValue10 = string
    textValue10 = textValue10.format
    dataTable6 = "%s Car"
    dataTable7 = rageUiCall
    textValue10 = textValue10(dataTable6, dataTable7)
    dataTable6 = "Sets whether this applies to vehicles under the car category."
    dataTable7 = dataTable4.vehicles
    dataTable7 = dataTable7.car
    dataTable9 = {}
    function workValue14(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.vehicles
      flag3.car = arg4
    end
    -- Beginner: Draw a RageUI checkbox.
    textValue8(textValue10, dataTable6, dataTable7, dataTable9, workValue14)
    textValue8 = RageUI
    textValue8 = textValue8.Checkbox
    textValue10 = string
    textValue10 = textValue10.format
    dataTable6 = "%s Helicopter"
    dataTable7 = rageUiCall
    textValue10 = textValue10(dataTable6, dataTable7)
    dataTable6 = "Sets whether this applies to vehicles under the helicopter category."
    dataTable7 = dataTable4.vehicles
    dataTable7 = dataTable7.helicopter
    dataTable9 = {}
    function workValue14(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.vehicles
      flag3.helicopter = arg4
    end
    textValue8(textValue10, dataTable6, dataTable7, dataTable9, workValue14)
    textValue8 = RageUI
    textValue8 = textValue8.Checkbox
    textValue10 = string
    textValue10 = textValue10.format
    dataTable6 = "%s Plane"
    dataTable7 = rageUiCall
    textValue10 = textValue10(dataTable6, dataTable7)
    dataTable6 = "Sets whether this applies to vehicles under the plane category."
    dataTable7 = dataTable4.vehicles
    dataTable7 = dataTable7.plane
    dataTable9 = {}
    function workValue14(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.vehicles
      flag3.plane = arg4
    end
    -- Beginner: Draw a RageUI checkbox.
    textValue8(textValue10, dataTable6, dataTable7, dataTable9, workValue14)
    textValue8 = RageUI
    textValue8 = textValue8.Checkbox
    textValue10 = string
    textValue10 = textValue10.format
    dataTable6 = "%s Boat"
    dataTable7 = rageUiCall
    textValue10 = textValue10(dataTable6, dataTable7)
    dataTable6 = "Sets whether this applies to vehicles under the boat category."
    dataTable7 = dataTable4.vehicles
    dataTable7 = dataTable7.boat
    dataTable9 = {}
    function workValue14(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.vehicles
      flag3.boat = arg4
    end
    textValue8(textValue10, dataTable6, dataTable7, dataTable9, workValue14)
    textValue8 = RageUI
    textValue8 = textValue8.Checkbox
    textValue10 = string
    textValue10 = textValue10.format
    dataTable6 = "%s Bicycle"
    dataTable7 = rageUiCall
    textValue10 = textValue10(dataTable6, dataTable7)
    dataTable6 = "Sets whether this applies to vehicles under the bicycle category."
    dataTable7 = dataTable4.vehicles
    dataTable7 = dataTable7.bicycle
    dataTable9 = {}
    function workValue14(arg12, arg22, arg32, arg4)
      local flag3
      flag3 = dataTable4.vehicles
      flag3.bicycle = arg4
    end
    -- Beginner: Draw a RageUI checkbox.
    textValue8(textValue10, dataTable6, dataTable7, dataTable9, workValue14)
  end
  function workValue13()
    local rageUiCall, textValue8
  end
  arg1(arg2, arg3, workValue9, numberValue8, workValue11, workValue13)
end
numberValue(textValue, textValue2, rageUiCall2, textValue4)
function numberValue(arg1)
  local arg2, arg3, workValue9, numberValue8, workValue11, workValue13, tableHelper
  arg2 = arg1.blip
  if not arg2 then
    arg2 = AddBlipForRadius
    arg3 = arg1.position
    arg3 = arg3.x
    workValue9 = arg1.position
    workValue9 = workValue9.y
    numberValue8 = arg1.position
    numberValue8 = numberValue8.z
    workValue11 = arg1.radius
    -- Beginner: result below is blipHandle.
    arg2 = arg2(arg3, workValue9, numberValue8, workValue11)
    arg1.blip = arg2
    arg2 = SetBlipColour
    arg3 = arg1.blip
    workValue9 = 27
    arg2(arg3, workValue9)
    arg2 = SetBlipAlpha
    arg3 = arg1.blip
    workValue9 = 180
    arg2(arg3, workValue9)
    arg2 = SetBlipDisplay
    arg3 = arg1.blip
    workValue9 = arg1.blipGloballyVisible
    if workValue9 then
      workValue9 = 8
      if workValue9 then
        goto flow_label_31
      end
    end
    workValue9 = 5
    ::flow_label_31::
    arg2(arg3, workValue9)
  end
  arg2 = arg1.vehicles
  arg2 = arg2.speed
  if arg2 then
    arg2 = arg1.speedHandle
    if not arg2 then
      arg2 = AddRoadNodeSpeedZone
      arg3 = arg1.position
      arg3 = arg3.x
      workValue9 = arg1.position
      workValue9 = workValue9.y
      numberValue8 = arg1.position
      numberValue8 = numberValue8.z
      workValue11 = arg1.radius
      workValue13 = arg1.vehicles
      workValue13 = workValue13.speed
      workValue13 = workValue13 * 0.44704
      tableHelper = false
      arg2 = arg2(arg3, workValue9, numberValue8, workValue11, workValue13, tableHelper)
      arg1.speedHandle = arg2
    end
  end
end
function textValue(arg1)
  local arg2, arg3
  arg2 = arg1.blip
  if arg2 then
    arg2 = RemoveBlip
    arg3 = arg1.blip
    arg2(arg3)
    arg1.blip = nil
  end
  arg2 = arg1.vehicles
  arg2 = arg2.speed
  if arg2 then
    arg2 = arg1.speedHandle
    if arg2 then
      arg2 = RemoveRoadNodeSpeedZone
      arg3 = arg1.speedHandle
      arg2(arg3)
      arg1.speedHandle = nil
    end
  end
end
textValue2 = RegisterNetEvent
rageUiCall2 = "ef32c544d1"
-- Beginner: this function handles network event "ef32c544d1".
function textValue4(arg1)
  local arg2, arg3, workValue9
  arg2 = arg1.bucketId
  arg3 = CMG
  arg3 = arg3.getPlayerBucket
  arg3 = arg3()
  if arg2 == arg3 then
    arg2 = numberValue
    arg3 = arg1
    arg2(arg3)
  end
  arg2 = table
  arg2 = arg2.add
  arg3 = dataTable5
  workValue9 = arg1
  arg2(arg3, workValue9)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "ef32c544d1".
textValue2(rageUiCall2, textValue4)
textValue2 = RegisterNetEvent
rageUiCall2 = "01669fc121"
-- Beginner: this function handles network event "01669fc121".
function textValue4(arg1)
  local arg2, arg3, workValue9, numberValue8, workValue11, workValue13, tableHelper, workValue16, position
  arg2 = pairs
  arg3 = dataTable5
  arg2, arg3, workValue9, numberValue8 = arg2(arg3)
  for workValue11, workValue13 in arg2, arg3, workValue9, numberValue8 do
    tableHelper = workValue13.uuid
    if tableHelper == arg1 then
      tableHelper = textValue
      workValue16 = workValue13
      tableHelper(workValue16)
      tableHelper = table
      tableHelper = tableHelper.remove
      workValue16 = dataTable5
      position = workValue11
      tableHelper(workValue16, position)
      break
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "01669fc121".
textValue2(rageUiCall2, textValue4)
textValue2 = AddEventHandler
rageUiCall2 = "919aefda0c"
-- Beginner: this function runs when client event "919aefda0c" fires.
function textValue4(arg1)
  local arg2, arg3, workValue9, numberValue8, workValue11, workValue13, tableHelper, workValue16
  arg2 = pairs
  arg3 = dataTable5
  arg2, arg3, workValue9, numberValue8 = arg2(arg3)
  for workValue11, workValue13 in arg2, arg3, workValue9, numberValue8 do
    tableHelper = workValue13.bucketId
    if tableHelper == arg1 then
      tableHelper = numberValue
      workValue16 = workValue13
      tableHelper(workValue16)
    else
      tableHelper = textValue
      workValue16 = workValue13
      tableHelper(workValue16)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "919aefda0c".
textValue2(rageUiCall2, textValue4)
function textValue2(arg1, arg2)
  local arg3, workValue9, numberValue8, workValue11, workValue13
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  workValue9 = GetWeapontypeGroup
  numberValue8 = arg2
  workValue9 = workValue9(numberValue8)
  numberValue8 = arg1.weapons
  numberValue8 = numberValue8.melee
  if not numberValue8 and -728555052 == workValue9 then
    numberValue8 = CMG
    numberValue8 = numberValue8.setWeapon
    workValue11 = arg3
    workValue13 = -1569615261
    numberValue8(workValue11, workValue13)
  else
    numberValue8 = arg1.weapons
    numberValue8 = numberValue8.throwable
    if not numberValue8 and 1548507267 == workValue9 then
      numberValue8 = CMG
      numberValue8 = numberValue8.setWeapon
      workValue11 = arg3
      workValue13 = -1569615261
      numberValue8(workValue11, workValue13)
    else
      numberValue8 = arg1.weapons
      numberValue8 = numberValue8.pistol
      if not numberValue8 and 416676503 == workValue9 then
        numberValue8 = CMG
        numberValue8 = numberValue8.setWeapon
        workValue11 = arg3
        workValue13 = -1569615261
        numberValue8(workValue11, workValue13)
      else
        numberValue8 = arg1.weapons
        numberValue8 = numberValue8.shotgun
        if not numberValue8 and 860033945 == workValue9 then
          numberValue8 = CMG
          numberValue8 = numberValue8.setWeapon
          workValue11 = arg3
          workValue13 = -1569615261
          numberValue8(workValue11, workValue13)
        else
          numberValue8 = arg1.weapons
          numberValue8 = numberValue8.mg
          if not numberValue8 and 1159398588 == workValue9 then
            numberValue8 = CMG
            numberValue8 = numberValue8.setWeapon
            workValue11 = arg3
            workValue13 = -1569615261
            numberValue8(workValue11, workValue13)
          else
            numberValue8 = arg1.weapons
            numberValue8 = numberValue8.smg
            if not numberValue8 and -957766203 == workValue9 then
              numberValue8 = CMG
              numberValue8 = numberValue8.setWeapon
              workValue11 = arg3
              workValue13 = -1569615261
              numberValue8(workValue11, workValue13)
            else
              numberValue8 = arg1.weapons
              numberValue8 = numberValue8.rifle
              if not numberValue8 and 970310034 == workValue9 then
                numberValue8 = CMG
                numberValue8 = numberValue8.setWeapon
                workValue11 = arg3
                workValue13 = -1569615261
                numberValue8(workValue11, workValue13)
              else
                numberValue8 = arg1.weapons
                numberValue8 = numberValue8.sniper
                if not numberValue8 and -1212426201 == workValue9 then
                  numberValue8 = CMG
                  numberValue8 = numberValue8.setWeapon
                  workValue11 = arg3
                  workValue13 = -1569615261
                  numberValue8(workValue11, workValue13)
                else
                  numberValue8 = arg1.weapons
                  numberValue8 = numberValue8.heavy
                  if not numberValue8 and -1569042529 == workValue9 then
                    numberValue8 = CMG
                    numberValue8 = numberValue8.setWeapon
                    workValue11 = arg3
                    workValue13 = -1569615261
                    numberValue8(workValue11, workValue13)
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
function rageUiCall2(arg1)
  local arg2, arg3
  arg2 = DeleteEntity
  arg3 = arg1
  -- Beginner: Delete a GTA entity.
  arg2(arg3)
end
function textValue4(arg1)
  local arg2, arg3, workValue9, numberValue8, workValue11
  arg2 = DisableControlAction
  arg3 = 0
  workValue9 = 32
  numberValue8 = true
  arg2(arg3, workValue9, numberValue8)
  arg2 = DisableControlAction
  arg3 = 0
  workValue9 = 33
  numberValue8 = true
  arg2(arg3, workValue9, numberValue8)
  arg2 = DisableControlAction
  arg3 = 0
  workValue9 = 34
  numberValue8 = true
  arg2(arg3, workValue9, numberValue8)
  arg2 = DisableControlAction
  arg3 = 0
  workValue9 = 35
  numberValue8 = true
  arg2(arg3, workValue9, numberValue8)
  arg2 = DisableControlAction
  arg3 = 0
  workValue9 = 71
  numberValue8 = true
  arg2(arg3, workValue9, numberValue8)
  arg2 = DisableControlAction
  arg3 = 0
  workValue9 = 72
  numberValue8 = true
  arg2(arg3, workValue9, numberValue8)
  arg2 = SetVehicleEngineOn
  arg3 = arg1
  workValue9 = false
  numberValue8 = true
  workValue11 = false
  arg2(arg3, workValue9, numberValue8, workValue11)
end
function textValue6(arg1)
  local arg2, arg3
  arg2 = IsVehicleDamaged
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = GetVehicleBodyHealth
    arg3 = arg1
    arg2 = arg2(arg3)
    arg3 = 1000.0
    arg2 = GetVehicleEngineHealth
    arg3 = arg1
    arg2 = arg2(arg3)
    arg3 = 1000.0
    arg2 = GetVehiclePetrolTankHealth
    arg3 = arg1
    arg2 = arg2(arg3)
    arg3 = 1000.0
    arg2 = GetEntityHealth
    arg3 = arg1
    -- Beginner: result below is health.
    arg2 = arg2(arg3)
    arg3 = 1000.0
    arg2 = AreAllVehicleWindowsIntact
    arg3 = arg1
    arg2 = arg2(arg3)
    arg2 = arg2 < arg3 or arg2
  end
  return arg2
end
function rageUiCall3(arg1, arg2)
  local arg3, workValue9, numberValue8, workValue11
  arg3 = arg1.vehicles
  arg3 = arg3.disableTrolling
  if arg3 then
    arg3 = DisableControlAction
    workValue9 = 0
    numberValue8 = 86
    workValue11 = true
    arg3(workValue9, numberValue8, workValue11)
    arg3 = DisableControlAction
    workValue9 = 0
    numberValue8 = 101
    workValue11 = true
    arg3(workValue9, numberValue8, workValue11)
    arg3 = DisableControlAction
    workValue9 = 0
    numberValue8 = 102
    workValue11 = true
    arg3(workValue9, numberValue8, workValue11)
    arg3 = DisableControlAction
    workValue9 = 0
    numberValue8 = 103
    workValue11 = true
    arg3(workValue9, numberValue8, workValue11)
    arg3 = DisableControlAction
    workValue9 = 0
    numberValue8 = 350
    workValue11 = true
    arg3(workValue9, numberValue8, workValue11)
    arg3 = DisableControlAction
    workValue9 = 0
    numberValue8 = 351
    workValue11 = true
    arg3(workValue9, numberValue8, workValue11)
    arg3 = DisableControlAction
    workValue9 = 0
    numberValue8 = 352
    workValue11 = true
    arg3(workValue9, numberValue8, workValue11)
    arg3 = DisableControlAction
    workValue9 = 0
    numberValue8 = 353
    workValue11 = true
    arg3(workValue9, numberValue8, workValue11)
    arg3 = IsVehicleParachuteActive
    workValue9 = arg2
    arg3 = arg3(workValue9)
    if arg3 then
      arg3 = SetVehicleForwardSpeed
      workValue9 = arg2
      numberValue8 = 0.0
      arg3(workValue9, numberValue8)
    end
    arg3 = SetCargobobHookCanAttach
    workValue9 = arg2
    numberValue8 = false
    arg3(workValue9, numberValue8)
    arg3 = SetVehicleRocketBoostPercentage
    workValue9 = arg2
    numberValue8 = 0.0
    arg3(workValue9, numberValue8)
  end
  arg3 = arg1.vehicles
  arg3 = arg3.disableDamage
  if arg3 then
    arg3 = textValue6
    workValue9 = arg2
    arg3 = arg3(workValue9)
    if arg3 then
      arg3 = SetVehicleEngineHealth
      workValue9 = arg2
      numberValue8 = 9999
      arg3(workValue9, numberValue8)
      arg3 = SetVehiclePetrolTankHealth
      workValue9 = arg2
      numberValue8 = 9999
      arg3(workValue9, numberValue8)
      arg3 = SetVehicleFixed
      workValue9 = arg2
      arg3(workValue9)
    end
  end
  arg3 = arg1.vehicles
  arg3 = arg3.delete
  if arg3 then
    arg3 = rageUiCall2
    if arg3 then
      goto flow_label_90
    end
  end
  arg3 = textValue4
  ::flow_label_90::
  workValue9 = GetEntityModel
  numberValue8 = arg2
  -- Beginner: result below is modelHash.
  workValue9 = workValue9(numberValue8)
  numberValue8 = arg1.vehicles
  numberValue8 = numberValue8.helicopter
  if numberValue8 then
    numberValue8 = IsThisModelAHeli
    workValue11 = workValue9
    numberValue8 = numberValue8(workValue11)
    if numberValue8 then
      numberValue8 = arg3
      workValue11 = arg2
      numberValue8(workValue11)
  end
  else
    numberValue8 = arg1.vehicles
    numberValue8 = numberValue8.plane
    if numberValue8 then
      numberValue8 = IsThisModelAPlane
      workValue11 = workValue9
      numberValue8 = numberValue8(workValue11)
      if numberValue8 then
        numberValue8 = arg3
        workValue11 = arg2
        numberValue8(workValue11)
    end
    else
      numberValue8 = arg1.vehicles
      numberValue8 = numberValue8.boat
      if numberValue8 then
        numberValue8 = IsThisModelABoat
        workValue11 = workValue9
        numberValue8 = numberValue8(workValue11)
        if numberValue8 then
          numberValue8 = arg3
          workValue11 = arg2
          numberValue8(workValue11)
      end
      else
        numberValue8 = arg1.vehicles
        numberValue8 = numberValue8.bicycle
        if numberValue8 then
          numberValue8 = IsThisModelABicycle
          workValue11 = workValue9
          numberValue8 = numberValue8(workValue11)
          if numberValue8 then
            numberValue8 = arg3
            workValue11 = arg2
            numberValue8(workValue11)
        end
        else
          numberValue8 = arg1.vehicles
          numberValue8 = numberValue8.car
          if numberValue8 then
            numberValue8 = IsThisModelACar
            workValue11 = workValue9
            numberValue8 = numberValue8(workValue11)
            if not numberValue8 then
              numberValue8 = IsThisModelABike
              workValue11 = workValue9
              numberValue8 = numberValue8(workValue11)
              if not numberValue8 then
                goto flow_label_162
              end
            end
            numberValue8 = arg3
            workValue11 = arg2
            numberValue8(workValue11)
          end
        end
      end
    end
  end
  ::flow_label_162::
end
function rageUiCall4(arg1)
  local arg2, arg3, workValue9, numberValue8, workValue11, workValue13, tableHelper, workValue16, position, workValue
  arg2 = pairs
  arg3 = CMG
  arg3 = arg3.getAllVehicles
  arg3, workValue9, numberValue8, workValue11, workValue13, tableHelper, workValue16, position, workValue = arg3()
  arg2, arg3, workValue9, numberValue8 = arg2(arg3, workValue9, numberValue8, workValue11, workValue13, tableHelper, workValue16, position, workValue)
  for workValue11, workValue13 in arg2, arg3, workValue9, numberValue8 do
    tableHelper = NetworkGetEntityIsNetworked
    workValue16 = workValue13
    tableHelper = tableHelper(workValue16)
    if tableHelper then
      tableHelper = GetEntityCoords
      workValue16 = workValue13
      position = true
      -- Beginner: result below is entityCoords.
      tableHelper = tableHelper(workValue16, position)
      tableHelper = tableHelper.xy
      workValue16 = arg1.position
      workValue16 = workValue16.xy
      tableHelper = tableHelper - workValue16
      tableHelper = #tableHelper
      workValue16 = arg1.radius
      tableHelper = tableHelper < workValue16
      workValue16 = GetPedInVehicleSeat
      position = workValue13
      workValue = -1
      workValue16 = workValue16(position, workValue)
      if 0 == workValue16 and tableHelper then
        position = dataTable8
        position = position[workValue13]
        if not position then
          position = dataTable8
          workValue = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          workValue = workValue()
          position[workValue13] = workValue
        end
      else
        position = dataTable8
        position = position[workValue13]
        if position then
          position = dataTable8
          position[workValue13] = nil
        end
      end
    end
  end
  arg2 = pairs
  arg3 = dataTable8
  arg2, arg3, workValue9, numberValue8 = arg2(arg3)
  for workValue11, workValue13 in arg2, arg3, workValue9, numberValue8 do
    tableHelper = DoesEntityExist
    workValue16 = workValue11
    tableHelper = tableHelper(workValue16)
    if not tableHelper then
      tableHelper = dataTable8
      tableHelper[workValue11] = nil
    else
      tableHelper = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      tableHelper = tableHelper()
      tableHelper = tableHelper - workValue13
      workValue16 = 60000
      if tableHelper > workValue16 then
        tableHelper = NetworkHasControlOfEntity
        workValue16 = workValue11
        tableHelper = tableHelper(workValue16)
        if tableHelper then
          tableHelper = DeleteEntity
          workValue16 = workValue11
          -- Beginner: Delete a GTA entity.
          tableHelper(workValue16)
        end
      end
    end
  end
end
function rageUiCall5(arg1)
  local arg2, arg3, workValue9, numberValue8, workValue11, workValue13, tableHelper, workValue16, position, workValue, numberValue2, cmgCall
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = PlayerId
  -- Beginner: result below is localPlayerIndex.
  arg3 = arg3()
  workValue9 = SetEntityInvincible
  numberValue8 = arg2
  workValue11 = arg1
  workValue9(numberValue8, workValue11)
  workValue9 = SetPlayerInvincible
  numberValue8 = arg3
  workValue11 = arg1
  workValue9(numberValue8, workValue11)
  workValue9 = SetEntityProofs
  numberValue8 = arg2
  workValue11 = arg1
  workValue13 = arg1
  tableHelper = arg1
  workValue16 = arg1
  position = arg1
  workValue = arg1
  numberValue2 = arg1
  cmgCall = arg1
  workValue9(numberValue8, workValue11, workValue13, tableHelper, workValue16, position, workValue, numberValue2, cmgCall)
  workValue9 = SetEntityCanBeDamaged
  numberValue8 = arg2
  workValue11 = not arg1
  workValue9(numberValue8, workValue11)
  workValue9 = SetPedCanRagdoll
  numberValue8 = arg2
  workValue11 = not arg1
  workValue9(numberValue8, workValue11)
  workValue9 = SetPedCanRagdollFromPlayerImpact
  numberValue8 = arg2
  workValue11 = not arg1
  workValue9(numberValue8, workValue11)
  workValue9 = ClearPedBloodDamage
  numberValue8 = arg2
  workValue9(numberValue8)
  workValue9 = ResetPedVisibleDamage
  numberValue8 = arg2
  workValue9(numberValue8)
  workValue9 = ClearPedLastWeaponDamage
  numberValue8 = arg2
  workValue9(numberValue8)
end
function textValue7(arg1)
  local arg2, arg3, workValue9, numberValue8, workValue11, workValue13, tableHelper
  arg2 = GetCurrentPedWeapon
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  workValue9 = 0
  numberValue8 = false
  arg2, arg3 = arg2(arg3, workValue9, numberValue8)
  if 0 ~= arg3 and 1953687840 ~= arg3 then
    workValue9 = textValue2
    numberValue8 = arg1
    workValue11 = arg3
    -- Beginner: Register a client-side event handler.
    workValue9(numberValue8, workValue11)
  end
  workValue9 = CMG
  workValue9 = workValue9.getPlayerVehicle
  workValue9, numberValue8 = workValue9()
  if 0 ~= workValue9 and numberValue8 then
    workValue11 = rageUiCall3
    workValue13 = arg1
    tableHelper = workValue9
    workValue11(workValue13, tableHelper)
  end
  workValue11 = arg1.vehicles
  workValue11 = workValue11.emptyDelete
  if workValue11 then
    workValue11 = rageUiCall4
    workValue13 = arg1
    workValue11(workValue13)
  end
  workValue11 = arg1.disableDamage
  if workValue11 then
    workValue11 = rageUiCall5
    workValue13 = true
    workValue11(workValue13)
  end
  workValue11 = arg1.disableCollision
  if workValue11 then
    workValue11 = SetLocalPlayerAsGhost
    workValue13 = true
    workValue11(workValue13)
  end
end
function textValue9()
  local arg1, arg2, arg3, workValue9, numberValue8, workValue11, workValue13, tableHelper, workValue16, position, workValue, numberValue2
  arg1 = false
  arg2 = CMG
  arg2 = arg2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg2 = arg2()
  arg3 = CMG
  arg3 = arg3.inEvent
  arg3 = arg3()
  if arg3 then
    return
  end
  arg3 = ipairs
  workValue9 = dataTable5
  arg3, workValue9, numberValue8, workValue11 = arg3(workValue9)
  for workValue13, tableHelper in arg3, workValue9, numberValue8, workValue11 do
    workValue16 = arg2.xy
    position = tableHelper.position
    position = position.xy
    workValue16 = workValue16 - position
    workValue16 = #workValue16
    position = tableHelper.radius
    if workValue16 < position then
      workValue16 = numberValue10
      position = tableHelper
      workValue16 = workValue16(position)
      if workValue16 then
        arg1 = true
        workValue16 = textValue7
        position = tableHelper
        workValue16(position)
        workValue16 = numberValue7
        if not workValue16 then
          workValue16 = TriggerEvent
          position = "371eab1d3a"
          workValue = {}
          workValue.text = "You have entered a Temporary RP Zone"
          workValue.height = "200px"
          workValue.width = "auto"
          workValue.colour = "#FFF"
          workValue.background = "#32CD32"
          workValue.pos = "bottom-right"
          workValue.icon = "success"
          numberValue2 = 5000
          -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
          workValue16(position, workValue, numberValue2)
          workValue16 = Citizen
          workValue16 = workValue16.CreateThread
          function position()
            local rageUiCall, textValue8, textValue10
            rageUiCall = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            rageUiCall = rageUiCall()
            while true do
              textValue8 = GetGameTimer
              -- Beginner: result below is gameTimeMs.
              textValue8 = textValue8()
              textValue8 = textValue8 - rageUiCall
              textValue10 = 5000
              if not (textValue8 < textValue10) then
                break
              end
              textValue8 = numberValue7
              if not textValue8 then
                break
              end
              textValue8 = drawNativeText
              textValue10 = "~q~ENTERED TEMPORARY RP ZONE"
              -- Beginner: Draw GTA-style text on screen.
              textValue8(textValue10)
              textValue8 = Citizen
              textValue8 = textValue8.Wait
              textValue10 = 0
              textValue8(textValue10)
            end
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          workValue16(position)
        end
        workValue16 = tableHelper.disableMusicAudio
        if workValue16 then
          workValue16 = true
          flag4 = workValue16
        end
        workValue16 = true
        numberValue7 = workValue16
      end
    end
  end
  arg3 = numberValue7
  if arg3 and not arg1 then
    arg3 = TriggerEvent
    workValue9 = "371eab1d3a"
    numberValue8 = {}
    numberValue8.text = "You have left the Temporary RP Zone"
    numberValue8.height = "60px"
    numberValue8.width = "auto"
    numberValue8.colour = "#FFF"
    numberValue8.background = "#ff0000"
    numberValue8.pos = "bottom-right"
    numberValue8.icon = "bad"
    workValue11 = 5000
    -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "371eab1d3a".
    arg3(workValue9, numberValue8, workValue11)
    arg3 = rageUiCall5
    workValue9 = false
    arg3(workValue9)
    arg3 = SetLocalPlayerAsGhost
    workValue9 = false
    arg3(workValue9)
    arg3 = false
    numberValue7 = arg3
    arg3 = false
    flag4 = arg3
  end
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
dataTable3 = textValue9
vector3Builder = "RP Zones Tick"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(dataTable3, vector3Builder)
cmgCall2 = {}
dataTable3 = {}
vector3Builder = vector3
numberValue4 = 923.70379638672
numberValue5 = 47.972114562988
iterator = 81.106307983398
vector3Builder = vector3Builder(numberValue4, numberValue5, iterator)
dataTable3.position = vector3Builder
dataTable3.radius = 18.0
cmgCall2[1] = dataTable3
dataTable3 = 0
vector3Builder = {}
function numberValue4()
  local arg1, arg2
  arg1 = table
  arg1 = arg1.clear
  arg2 = vector3Builder
  arg1(arg2)
end
function numberValue5(arg1)
  local arg2, arg3, workValue9, numberValue8, workValue11, workValue13, tableHelper, workValue16, position, workValue, numberValue2, cmgCall, textValue3, textValue5, numberValue3, flag, flag2
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  arg3 = dataTable3
  arg3 = arg2 - arg3
  workValue9 = 1000
  if arg3 < workValue9 then
    return
  end
  dataTable3 = arg2
  arg3 = CMG
  arg3 = arg3.getPlayerVehicle
  arg3, workValue9 = arg3()
  numberValue8 = pairs
  workValue11 = CMG
  workValue11 = workValue11.getAllVehicles
  workValue11, workValue13, tableHelper, workValue16, position, workValue, numberValue2, cmgCall, textValue3, textValue5, numberValue3, flag, flag2 = workValue11()
  numberValue8, workValue11, workValue13, tableHelper = numberValue8(workValue11, workValue13, tableHelper, workValue16, position, workValue, numberValue2, cmgCall, textValue3, textValue5, numberValue3, flag, flag2)
  for workValue16, position in numberValue8, workValue11, workValue13, tableHelper do
    workValue = GetEntityCoords
    numberValue2 = position
    cmgCall = true
    -- Beginner: result below is entityCoords.
    workValue = workValue(numberValue2, cmgCall)
    numberValue2 = arg1.position
    workValue = workValue - numberValue2
    workValue = #workValue
    numberValue2 = arg1.radius
    workValue = workValue < numberValue2
    numberValue2 = vector3Builder
    numberValue2 = numberValue2[position]
    if workValue then
      if not numberValue2 then
        cmgCall = vector3Builder
        cmgCall[position] = arg2
      end
      if workValue9 and arg3 == position then
        cmgCall = CMG
        cmgCall = cmgCall.announceMpBigMsg
        textValue3 = "~r~WARNING"
        textValue5 = "You are in a no car zone! Please exit within 5 seconds."
        numberValue3 = 1250
        flag = false
        flag2 = true
        cmgCall(textValue3, textValue5, numberValue3, flag, flag2)
      end
    elseif numberValue2 then
      cmgCall = vector3Builder
      cmgCall[position] = nil
    end
  end
  numberValue8 = pairs
  workValue11 = vector3Builder
  numberValue8, workValue11, workValue13, tableHelper = numberValue8(workValue11)
  for workValue16, position in numberValue8, workValue11, workValue13, tableHelper do
    workValue = arg2 - position
    numberValue2 = 5000
    if workValue > numberValue2 then
      workValue = NetworkHasControlOfEntity
      numberValue2 = workValue16
      workValue = workValue(numberValue2)
      if workValue then
        workValue = DeleteEntity
        numberValue2 = workValue16
        -- Beginner: Delete a GTA entity.
        workValue(numberValue2)
      end
    end
  end
end
iterator = pairs
workValue2 = cmgCall2
iterator, workValue2, workValue3, cmgCall3 = iterator(workValue2)
for workValue4, workValue5 in iterator, workValue2, workValue3, cmgCall3 do
  cmgCall4 = CMG
  cmgCall4 = cmgCall4.createArea
  textValue11 = "nocarzones_"
  stringHelper = tostring
  cmgCall5 = workValue4
  stringHelper = stringHelper(cmgCall5)
  textValue11 = textValue11 .. stringHelper
  stringHelper = workValue5.position
  cmgCall5 = workValue5.radius
  cmgCall5 = cmgCall5 + 2.0
  numberValue6 = 10.0
  function workValue6()
    local arg1, arg2
  end
  workValue7 = numberValue4
  workValue8 = numberValue5
  workValue10 = workValue5
  -- Beginner: Create an interaction area around a world position.
  cmgCall4(textValue11, stringHelper, cmgCall5, numberValue6, workValue6, workValue7, workValue8, workValue10)
end
iterator = false
function workValue2()
  local arg1, arg2
  arg1 = false
  iterator = arg1
end
function workValue3()
  local arg1, arg2
  arg1 = true
  iterator = arg1
end
cmgCall3 = CMG
function workValue4(arg1, arg2)
  local arg3, workValue9, numberValue8, workValue11, workValue13, tableHelper, workValue16, position, workValue, numberValue2
  arg3 = CMG
  arg3 = arg3.generateUUID
  workValue9 = "novehicleoverridezone"
  numberValue8 = 5
  workValue11 = "alphanumeric"
  arg3 = arg3(workValue9, numberValue8, workValue11)
  workValue9 = CMG
  workValue9 = workValue9.createArea
  numberValue8 = "novehicleoverridezone_"
  workValue11 = arg3
  numberValue8 = numberValue8 .. workValue11
  workValue11 = arg1
  workValue13 = arg2
  tableHelper = 1000.0
  workValue16 = workValue3
  position = workValue2
  function workValue()
    local rageUiCall, textValue8
  end
  numberValue2 = {}
  return workValue9(numberValue8, workValue11, workValue13, tableHelper, workValue16, position, workValue, numberValue2)
end
cmgCall3.createNoVehicleOverrideZone = workValue4
cmgCall3 = false
function workValue4()
  local arg1, arg2
  arg1 = false
  cmgCall3 = arg1
end
function workValue5(arg1)
  local arg2, arg3, workValue9, numberValue8
  arg2 = CMG
  arg2 = arg2.getPlayerBucket
  arg2 = arg2()
  if 0 ~= arg2 then
    return
  end
  arg2 = iterator
  if arg2 then
    return
  end
  arg2 = GetInteriorFromEntity
  arg3 = PlayerPedId
  arg3, workValue9, numberValue8 = arg3()
  -- Beginner: result below is interiorId.
  arg2 = arg2(arg3, workValue9, numberValue8)
  arg3 = arg1.interior
  if arg3 then
    arg3 = arg1.interior
    if not arg3 or 0 == arg2 or 217602 == arg2 then
      goto flow_label_35
    end
  end
  arg3 = true
  cmgCall3 = arg3
  arg3 = CMG
  arg3 = arg3.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg3 = arg3()
  if 0 ~= arg3 then
    workValue9 = DeleteEntity
    numberValue8 = arg3
    -- Beginner: Delete a GTA entity.
    workValue9(numberValue8)
  end
  ::flow_label_35::
end
cmgCall4 = CMG
function textValue11(arg1, arg2, arg3)
  local workValue9, numberValue8, workValue11, workValue13, tableHelper, workValue16, position, workValue, numberValue2, cmgCall
  workValue9 = CMG
  workValue9 = workValue9.generateUUID
  numberValue8 = "novehiclezones"
  workValue11 = 5
  workValue13 = "alphanumeric"
  workValue9 = workValue9(numberValue8, workValue11, workValue13)
  numberValue8 = CMG
  numberValue8 = numberValue8.createArea
  workValue11 = "novehiclezone_"
  workValue13 = workValue9
  workValue11 = workValue11 .. workValue13
  workValue13 = arg1
  tableHelper = arg2
  workValue16 = 1000.0
  function position()
    local rageUiCall, textValue8
  end
  workValue = workValue4
  numberValue2 = workValue5
  cmgCall = {}
  cmgCall.interior = arg3
  return numberValue8(workValue11, workValue13, tableHelper, workValue16, position, workValue, numberValue2, cmgCall)
end
cmgCall4.createNoVehicleZone = textValue11
cmgCall4 = CMG
function textValue11(arg1)
  local arg2, arg3
  arg2 = workValue4
  arg2()
  arg2 = tCMG
  arg2 = arg2.removeArea
  arg3 = arg1
  arg2(arg3)
end
cmgCall4.deleteNoVehicleZone = textValue11
cmgCall4 = false
function textValue11()
  local arg1, arg2
  arg1 = false
  cmgCall4 = arg1
end
function stringHelper(arg1)
  local arg2, arg3, workValue9, numberValue8, workValue11, workValue13
  arg2 = GetInteriorFromEntity
  arg3 = PlayerPedId
  arg3, workValue9, numberValue8, workValue11, workValue13 = arg3()
  -- Beginner: result below is interiorId.
  arg2 = arg2(arg3, workValue9, numberValue8, workValue11, workValue13)
  arg3 = arg1.interior
  if arg3 then
    arg3 = arg1.interior
    if not arg3 or 0 == arg2 or 217602 == arg2 then
      goto flow_label_24
    end
  end
  arg3 = true
  cmgCall4 = arg3
  arg3 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  workValue9 = SetCurrentPedWeapon
  numberValue8 = arg3
  workValue11 = -1569615261
  workValue13 = true
  workValue9(numberValue8, workValue11, workValue13)
  ::flow_label_24::
end
cmgCall5 = CMG
function numberValue6(arg1, arg2, arg3)
  local workValue9, numberValue8, workValue11, workValue13, tableHelper, workValue16, position, workValue, numberValue2, cmgCall
  workValue9 = CMG
  workValue9 = workValue9.generateUUID
  numberValue8 = "noweaponzones"
  workValue11 = 5
  workValue13 = "alphanumeric"
  workValue9 = workValue9(numberValue8, workValue11, workValue13)
  numberValue8 = CMG
  numberValue8 = numberValue8.createArea
  workValue11 = "noweaponzone_"
  workValue13 = workValue9
  workValue11 = workValue11 .. workValue13
  workValue13 = arg1
  tableHelper = arg2
  workValue16 = 1000.0
  function position()
    local rageUiCall, textValue8
  end
  workValue = textValue11
  numberValue2 = stringHelper
  cmgCall = {}
  cmgCall.interior = arg3
  return numberValue8(workValue11, workValue13, tableHelper, workValue16, position, workValue, numberValue2, cmgCall)
end
cmgCall5.createNoWeaponZone = numberValue6
cmgCall5 = CMG
function numberValue6(arg1)
  local arg2, arg3
  arg2 = workValue4
  arg2()
  arg2 = tCMG
  arg2 = arg2.removeArea
  arg3 = arg1
  arg2(arg3)
end
cmgCall5.deleteNoVehicleZone = numberValue6
cmgCall5 = CMG
function numberValue6()
  local arg1, arg2
  arg1 = cmgCall3
  return arg1
end
cmgCall5.isInsideNoVehicleZone = numberValue6
cmgCall5 = CMG
function numberValue6()
  local arg1, arg2
  arg1 = cmgCall4
  return arg1
end
cmgCall5.isInsideNoWeaponZone = numberValue6
cmgCall5 = CMG
function numberValue6()
  local arg1, arg2
  arg1 = flag4
  return arg1
end
cmgCall5.isInNoMusicRPZone = numberValue6