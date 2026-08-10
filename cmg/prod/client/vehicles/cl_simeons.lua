--[[
    Beginner Guide: cl_simeons.lua
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
    BEGINNER GUIDE — Simeons
    ========================

    File: cmg/prod/client/vehicles/cl_simeons.lua
    Purpose: This file contains vehicle-related gameplay.

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

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

    Config/data used:
      * cfg/cfg_simeons

    Network/hash identifiers found: 7
      They are intentionally left unchanged because matching server code may use them.
      * c4761cc0c0
      * c873778784
      * 15907965ab
      * ba41f4a575
      * 2d4f7f8a9f
      * ce1e6df4e8
      * 0f93bb7bac

    Example player-facing text in this file:
      * ~b~Vehicles
      * Purchase 
      * ~g~You have 1 minute to test drive this vehicle!

]]
local dataTable, dataTable4, dataTable6, workValue23, workValue26, numberValue4, numberValue5, flag13, workValue29, workValue30, flag, cmgCall, eventRegistration, textValue2, workValue5, cmgCall3, flag7, workValue7, cmgCall4, workValue8, textValue5, workValue11, workValue12, workValue13, workValue14, workValue16, workValue18, textValue8, textValue9, rageUiCall3, textValue10, textValue11, rageUiCall4, rageUiCall5, rageUiCall6, textValue14
dataTable = {}
dataTable4 = {}
dataTable6 = {}
workValue23 = nil
workValue26 = nil
numberValue4 = 0
numberValue5 = 0
flag13 = false
workValue29 = nil
workValue30 = nil
flag = false
cmgCall = CMG
cmgCall = cmgCall.loadModule
eventRegistration = "cfg/cfg_simeons"
-- Beginner: result below is config.
cmgCall = cmgCall(eventRegistration)
eventRegistration = RegisterNetEvent
textValue2 = "c4761cc0c0"
-- Beginner: this function handles network event "c4761cc0c0".
function workValue5(arg1)
  local arg2
  dataTable = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "c4761cc0c0".
eventRegistration(textValue2, workValue5)
eventRegistration = RegisterNetEvent
textValue2 = "c873778784"
-- Beginner: this function handles network event "c873778784".
function workValue5(arg1)
  local arg2
  dataTable4 = arg1
end
eventRegistration(textValue2, workValue5)
eventRegistration = RegisterNetEvent
textValue2 = "15907965ab"
-- Beginner: this function handles network event "15907965ab".
function workValue5()
  local arg1, arg2, arg3, arg4, textValue15, vehicle3, cmgCall7, flag14, flag16, flag18
  arg1 = DeleteVehicle
  arg2 = numberValue4
  arg1(arg2)
  arg1 = 0
  numberValue4 = arg1
  arg1 = 0
  numberValue5 = arg1
  arg1 = false
  flag13 = arg1
  arg2 = workValue23
  arg1 = dataTable
  arg1 = arg1[arg2]
  arg1 = arg1.posVector
  arg2 = SetEntityCoords
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = arg1.x
  textValue15 = arg1.y
  vehicle3 = arg1.z
  cmgCall7 = false
  flag14 = false
  flag16 = false
  flag18 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  arg2(arg3, arg4, textValue15, vehicle3, cmgCall7, flag14, flag16, flag18)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "15907965ab".
eventRegistration(textValue2, workValue5)
function eventRegistration(arg1)
  local arg2, arg3, arg4, textValue15, vehicle3
  if nil ~= arg1 then
    workValue23 = arg1
  end
  if "Simeons" == arg1 then
    arg2 = CMG
    arg2 = arg2.getPlayerBucket
    arg2 = arg2()
    if 0 == arg2 then
      arg2 = TriggerServerEvent
      arg3 = "ba41f4a575"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ba41f4a575".
      arg2(arg3)
    end
  end
  arg2 = RageUI
  arg2 = arg2.Visible
  arg3 = RMenu
  arg4 = arg3
  arg3 = arg3.Get
  textValue15 = "cardealer"
  vehicle3 = "mainmenu"
  -- Beginner: result below is menu.
  arg3 = arg3(arg4, textValue15, vehicle3)
  arg4 = true
  arg2(arg3, arg4)
end
function textValue2()
  local arg1, arg2, arg3, arg4, textValue15
  arg1 = TriggerServerEvent
  arg2 = "2d4f7f8a9f"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2d4f7f8a9f".
  arg1(arg2)
  arg1 = RageUI
  arg1 = arg1.Visible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cardealer"
  textValue15 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue15)
  arg3 = false
  arg1(arg2, arg3)
  arg1 = nil
  workValue23 = arg1
end
function workValue5(arg1, arg2, arg3, arg4)
  local textValue15, vehicle3, cmgCall7, flag14, flag16, flag18, flag2, heading, cmgCall2, flag5, flag6
  textValue15 = DeleteVehicle
  vehicle3 = GetVehiclePedIsIn
  cmgCall7 = CMG
  cmgCall7 = cmgCall7.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall7 = cmgCall7()
  flag14 = false
  vehicle3, cmgCall7, flag14, flag16, flag18, flag2, heading, cmgCall2, flag5, flag6 = vehicle3(cmgCall7, flag14)
  textValue15(vehicle3, cmgCall7, flag14, flag16, flag18, flag2, heading, cmgCall2, flag5, flag6)
  textValue15 = GetHashKey
  vehicle3 = arg1
  -- Beginner: result below is hash.
  textValue15 = textValue15(vehicle3)
  vehicle3 = RequestModel
  cmgCall7 = textValue15
  vehicle3(cmgCall7)
  vehicle3 = 0
  while true do
    cmgCall7 = HasModelLoaded
    flag14 = textValue15
    cmgCall7 = cmgCall7(flag14)
    if not (not cmgCall7 and vehicle3 < 100) then
      break
    end
    cmgCall7 = Citizen
    cmgCall7 = cmgCall7.Wait
    flag14 = 10
    cmgCall7(flag14)
    vehicle3 = vehicle3 + 1
  end
  cmgCall7 = HasModelLoaded
  flag14 = textValue15
  cmgCall7 = cmgCall7(flag14)
  if cmgCall7 then
    cmgCall7 = CreateVehicle
    flag14 = textValue15
    flag16 = arg2
    flag18 = arg3
    flag2 = arg4
    heading = GetEntityHeading
    cmgCall2 = CMG
    cmgCall2 = cmgCall2.getPlayerPed
    cmgCall2, flag5, flag6 = cmgCall2()
    -- Beginner: result below is heading.
    heading = heading(cmgCall2, flag5, flag6)
    cmgCall2 = false
    flag5 = false
    -- Beginner: result below is vehicleEntity.
    cmgCall7 = cmgCall7(flag14, flag16, flag18, flag2, heading, cmgCall2, flag5)
    flag14 = CMG
    flag14 = flag14.initLocalVehicle
    flag16 = cmgCall7
    flag14(flag16)
    flag14 = SetEntityAsMissionEntity
    flag16 = cmgCall7
    flag18 = false
    flag2 = false
    flag14(flag16, flag18, flag2)
    flag14 = FreezeEntityPosition
    flag16 = cmgCall7
    flag18 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    flag14(flag16, flag18)
    flag14 = SetEntityInvincible
    flag16 = cmgCall7
    flag18 = true
    flag14(flag16, flag18)
    flag14 = SetVehicleDoorsLocked
    flag16 = cmgCall7
    flag18 = 4
    flag14(flag16, flag18)
    flag14 = SetModelAsNoLongerNeeded
    flag16 = textValue15
    flag14(flag16)
    flag14 = TaskWarpPedIntoVehicle
    flag16 = CMG
    flag16 = flag16.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    flag16 = flag16()
    flag18 = cmgCall7
    flag2 = -1
    flag14(flag16, flag18, flag2)
    flag14 = IsThisModelAHeli
    flag16 = textValue15
    flag14 = flag14(flag16)
    if flag14 then
      flag14 = Citizen
      flag14 = flag14.Wait
      flag16 = 0
      flag14(flag16)
      flag14 = SetEntityCoordsNoOffset
      flag16 = cmgCall7
      flag18 = arg2
      flag2 = arg3
      heading = arg4
      cmgCall2 = false
      flag5 = false
      flag6 = false
      -- Beginner: Move/teleport an entity to new coordinates.
      flag14(flag16, flag18, flag2, heading, cmgCall2, flag5, flag6)
      flag14 = FreezeEntityPosition
      flag16 = cmgCall7
      flag18 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      flag14(flag16, flag18)
    end
    flag14 = Citizen
    flag14 = flag14.CreateThread
    function flag16()
      local arg12, arg22, heading2, workValue24
      while true do
        arg12 = DoesEntityExist
        arg22 = cmgCall7
        arg12 = arg12(arg22)
        if not arg12 then
          break
        end
        arg12 = Citizen
        arg12 = arg12.Wait
        arg22 = 25
        arg12(arg22)
        arg12 = SetEntityHeading
        arg22 = cmgCall7
        heading2 = GetEntityHeading
        workValue24 = cmgCall7
        -- Beginner: result below is heading.
        heading2 = heading2(workValue24)
        heading2 = heading2 + 1
        -- Beginner: Change the direction an entity is facing.
        arg12(arg22, heading2)
      end
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    flag14(flag16)
    flag14 = true
    flag13 = flag14
    return cmgCall7
  else
    cmgCall7 = tCMG
    cmgCall7 = cmgCall7.notify
    flag14 = "~r~Could not load vehicle"
    -- Beginner: Show a notification to the player.
    cmgCall7(flag14)
    cmgCall7 = -1
    return cmgCall7
  end
end
cmgCall3 = CMG
function flag7()
  local arg1, arg2
  arg1 = flag13
  if not arg1 then
    arg1 = flag
  end
  return arg1
end
cmgCall3.isSimeonsVehiclePreviewActive = flag7
cmgCall3 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.
function flag7()
  local arg1, arg2, arg3, arg4, textValue15, vehicle3, cmgCall7, flag14, flag16, flag18, flag2, heading, cmgCall2, flag5, flag6, textValue3
  arg1 = pairs
  arg2 = cmgCall.simeonsInstances
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for textValue15, vehicle3 in arg1, arg2, arg3, arg4 do
    cmgCall7 = vehicle3.posVector
    flag14 = vehicle3.blipId
    flag16 = vehicle3.blipColour
    flag18 = tCMG
    flag18 = flag18.addBlip
    flag2 = cmgCall7.x
    heading = cmgCall7.y
    cmgCall2 = cmgCall7.z
    flag5 = flag14
    flag6 = flag16
    textValue3 = "Simeons"
    -- Beginner: Create a minimap blip.
    flag18(flag2, heading, cmgCall2, flag5, flag6, textValue3)
    flag18 = tCMG
    flag18 = flag18.addPropMarker
    flag2 = "bzzz_marker_shop_blue_anim"
    heading = cmgCall7.x
    cmgCall2 = cmgCall7.y
    flag5 = cmgCall7.z
    flag6 = 50.0
    -- Beginner: Create a prop-style world marker.
    flag18(flag2, heading, cmgCall2, flag5, flag6)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall3(flag7)
function cmgCall3(arg1)
  local arg2, arg3
  arg2 = GetEntityCoords
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  -- Beginner: result below is entityCoords.
  arg2 = arg2(arg3)
  arg2 = arg2 - arg1
  arg2 = #arg2
  if arg2 < 5.0 then
    arg2 = true
    return arg2
  end
  arg2 = false
  return arg2
end
flag7 = false
function workValue7()
  local arg1, arg2, arg3, arg4, textValue15, vehicle3, cmgCall7, flag14, flag16
  arg1 = dataTable
  if nil ~= arg1 then
    arg1 = pairs
    arg2 = dataTable
    arg1, arg2, arg3, arg4 = arg1(arg2)
    for textValue15, vehicle3 in arg1, arg2, arg3, arg4 do
      cmgCall7 = vehicle3.previewVector
      flag14 = dataTable6
      flag14 = flag14[textValue15]
      if nil ~= flag14 then
        flag14 = dataTable6
        flag14 = flag14[textValue15]
        if flag14 < 2.0 then
          flag14 = flag7
          if not flag14 then
            flag14 = TriggerServerEvent
            flag16 = "ce1e6df4e8"
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ce1e6df4e8".
            flag14(flag16)
            flag14 = eventRegistration
            flag16 = textValue15
            -- Beginner: Register a network event handler that the server/other clients can trigger.
            flag14(flag16)
            flag14 = true
            flag7 = flag14
            flag14 = Citizen
            flag14 = flag14.CreateThread
            function flag16()
              local arg12, arg22
              while true do
                arg22 = textValue15
                arg12 = dataTable6
                arg12 = arg12[arg22]
                if not (arg12 < 2.0) then
                  arg12 = flag13
                  if not arg12 then
                    arg12 = cmgCall3
                    arg22 = cmgCall7
                    arg12 = arg12(arg22)
                    if not arg12 then
                      arg12 = flag
                      if not arg12 then
                        break
                      end
                    end
                  end
                end
                arg12 = Wait
                arg22 = 0
                arg12(arg22)
              end
              arg12 = textValue2
              arg12()
              arg12 = false
              flag7 = arg12
            end
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            flag14(flag16)
          end
        end
      end
    end
  end
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.createThreadOnTick
workValue8 = workValue7
textValue5 = "Simeons"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall4(workValue8, textValue5)
cmgCall4 = Citizen
cmgCall4 = cmgCall4.CreateThread
function workValue8()
  local arg1, arg2, arg3, arg4, textValue15, vehicle3, cmgCall7, flag14, flag16, flag18
  while true do
    arg1 = dataTable
    if nil ~= arg1 then
      arg1 = pairs
      arg2 = dataTable
      arg1, arg2, arg3, arg4 = arg1(arg2)
      for textValue15, vehicle3 in arg1, arg2, arg3, arg4 do
        cmgCall7 = vehicle3.posVector
        flag14 = dataTable6
        flag16 = GetEntityCoords
        flag18 = CMG
        flag18 = flag18.getPlayerPed
        -- Beginner: result below is localPlayerPed.
        flag18 = flag18()
        -- Beginner: result below is entityCoords.
        flag16 = flag16(flag18)
        flag16 = flag16 - cmgCall7
        flag16 = #flag16
        flag14[textValue15] = flag16
      end
    end
    arg1 = Wait
    arg2 = 250
    arg1(arg2)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall4(workValue8)
function cmgCall4(arg1)
  local arg2, arg3, arg4, textValue15, vehicle3, cmgCall7, flag14, flag16, flag18, flag2, heading, cmgCall2
  arg2 = {}
  arg3 = pairs
  arg4 = arg1
  arg3, arg4, textValue15, vehicle3 = arg3(arg4)
  for cmgCall7, flag14 in arg3, arg4, textValue15, vehicle3 do
    if "_config" ~= cmgCall7 then
      flag16 = table
      flag16 = flag16.insert
      flag18 = arg2
      flag2 = {}
      heading = cmgCall7
      cmgCall2 = flag14
      flag2[1] = heading
      flag2[2] = cmgCall2
      flag16(flag18, flag2)
    end
  end
  arg3 = table
  arg3 = arg3.sort
  arg4 = arg2
  function textValue15(arg12, arg22)
    local heading2, workValue24, workValue27, workValue28, stringHelper, iterator, iterator2
    heading2 = arg12[2]
    heading2 = heading2[2]
    if not heading2 then
      heading2 = 0
    end
    workValue24 = arg22[2]
    workValue24 = workValue24[2]
    if not workValue24 then
      workValue24 = 0
    end
    if heading2 ~= workValue24 then
      workValue27 = heading2 < workValue24
      return workValue27
    end
    workValue27 = tonumber
    workValue28 = arg12[2]
    workValue28 = workValue28.levelRequired
    workValue27 = workValue27(workValue28)
    if not workValue27 then
      workValue27 = 0
    end
    workValue28 = tonumber
    stringHelper = arg22[2]
    stringHelper = stringHelper.levelRequired
    workValue28 = workValue28(stringHelper)
    if not workValue28 then
      workValue28 = 0
    end
    if workValue27 ~= workValue28 then
      stringHelper = workValue27 < workValue28
      return stringHelper
    end
    stringHelper = tostring
    iterator = arg12[1]
    stringHelper = stringHelper(iterator)
    iterator = tostring
    iterator2 = arg22[1]
    iterator = iterator(iterator2)
    stringHelper = stringHelper < iterator
    return stringHelper
  end
  arg3(arg4, textValue15)
  arg3 = 0
  function arg4()
    local arg12, arg22, heading2
    arg12 = arg3
    arg12 = arg12 + 1
    arg3 = arg12
    arg22 = arg3
    arg12 = arg2
    arg12 = arg12[arg22]
    if arg12 then
      arg22 = arg3
      arg12 = arg2
      arg12 = arg12[arg22]
      arg12 = arg12[1]
      heading2 = arg3
      arg22 = arg2
      arg22 = arg22[heading2]
      arg22 = arg22[2]
      return arg12, arg22
    else
      arg12 = nil
      arg22 = nil
      return arg12, arg22
    end
  end
  return arg4
end
function workValue8(arg1)
  local arg2, arg3
  arg2 = type
  arg3 = arg1
  arg2 = arg2(arg3)
  if "string" ~= arg2 or "" == arg1 then
    arg2 = nil
    return arg2
  end
  arg2 = cmgCall.simeonsLevelNameToType
  if not arg2 then
    arg2 = {}
  end
  arg3 = arg2[arg1]
  if not arg3 then
    arg3 = arg1
  end
  return arg3
end
function textValue5(arg1)
  local arg2
  if "cmg_mechanic" == arg1 then
    arg2 = "Mechanic job"
    return arg2
  end
  if "cmg_health_service" == arg1 then
    arg2 = "Health Service"
    return arg2
  end
  arg2 = nil
  return arg2
end
function workValue11(arg1)
  local arg2, arg3, arg4, textValue15
  arg2 = arg1 or nil
  if arg1 then
    arg2 = tonumber
    arg3 = arg1.levelRequired
    arg2 = arg2(arg3)
  end
  arg3 = arg1 or arg3
  if arg1 then
    arg3 = workValue8
    arg4 = arg1.levelName
    arg3 = arg3(arg4)
  end
  if not arg2 or arg2 <= 0 then
    arg4 = true
    return arg4
  end
  if not arg3 then
    arg4 = false
    return arg4
  end
  arg4 = CMG
  arg4 = arg4.getClientJobLevel
  textValue15 = arg3
  arg4 = arg4(textValue15)
  arg4 = arg2 <= arg4
  return arg4
end
function workValue12(arg1)
  local arg2, arg3, arg4
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1.skillRequired
  end
  arg3 = type
  arg4 = arg2
  arg3 = arg3(arg4)
  if "string" ~= arg3 or "" == arg2 then
    arg3 = true
    return arg3
  end
  arg3 = CMG
  arg3 = arg3.hasClientSkill
  arg4 = arg2
  return arg3(arg4)
end
function workValue13(arg1)
  local arg2, arg3
  arg2 = workValue11
  arg3 = arg1
  arg2 = arg2(arg3)
  if arg2 then
    arg2 = workValue12
    arg3 = arg1
    arg2 = arg2(arg3)
  end
  return arg2
end
function workValue14(arg1)
  local arg2, arg3, arg4, textValue15, vehicle3, cmgCall7, flag14, flag16, flag18, flag2, heading, cmgCall2
  arg2 = arg1 or nil
  if arg1 then
    arg2 = arg1[3]
  end
  arg3 = arg1 or arg3
  if arg1 then
    arg3 = tonumber
    arg4 = arg1.levelRequired
    arg3 = arg3(arg4)
  end
  arg4 = arg1 or arg4
  if arg1 then
    arg4 = workValue8
    textValue15 = arg1.levelName
    arg4 = arg4(textValue15)
  end
  textValue15 = {}
  vehicle3 = "Boot size (%skg)"
  cmgCall7 = vehicle3
  vehicle3 = vehicle3.format
  flag14 = tostring
  flag16 = arg2
  flag14, flag16, flag18, flag2, heading, cmgCall2 = flag14(flag16)
  vehicle3, cmgCall7, flag14, flag16, flag18, flag2, heading, cmgCall2 = vehicle3(cmgCall7, flag14, flag16, flag18, flag2, heading, cmgCall2)
  textValue15[1] = vehicle3
  textValue15[2] = cmgCall7
  textValue15[3] = flag14
  textValue15[4] = flag16
  textValue15[5] = flag18
  textValue15[6] = flag2
  textValue15[7] = heading
  textValue15[8] = cmgCall2
  if arg3 and arg3 > 0 then
    if not arg4 then
      vehicle3 = #textValue15
      vehicle3 = vehicle3 + 1
      textValue15[vehicle3] = "~r~Listing misconfigured (levelName / level type)"
    else
      vehicle3 = CMG
      vehicle3 = vehicle3.getClientJobLevel
      cmgCall7 = arg4
      vehicle3 = vehicle3(cmgCall7)
      cmgCall7 = textValue5
      flag14 = arg4
      cmgCall7 = cmgCall7(flag14)
      if not cmgCall7 then
        cmgCall7 = tostring
        flag14 = arg1.levelName
        cmgCall7 = cmgCall7(flag14)
      end
      if arg3 <= vehicle3 then
        flag14 = #textValue15
        flag14 = flag14 + 1
        flag16 = "~g~%s Level %d / %d"
        flag18 = flag16
        flag16 = flag16.format
        flag2 = cmgCall7
        heading = vehicle3
        cmgCall2 = arg3
        flag16 = flag16(flag18, flag2, heading, cmgCall2)
        textValue15[flag14] = flag16
      else
        flag14 = #textValue15
        flag14 = flag14 + 1
        flag16 = "~r~%s Level %d required (Your Level: %d)"
        flag18 = flag16
        flag16 = flag16.format
        flag2 = cmgCall7
        heading = arg3
        cmgCall2 = vehicle3
        flag16 = flag16(flag18, flag2, heading, cmgCall2)
        textValue15[flag14] = flag16
      end
    end
  end
  vehicle3 = arg1 or vehicle3
  if arg1 then
    vehicle3 = arg1.skillRequired
  end
  cmgCall7 = type
  flag14 = vehicle3
  cmgCall7 = cmgCall7(flag14)
  if "string" == cmgCall7 and "" ~= vehicle3 then
    cmgCall7 = arg1.skillHint
    if not cmgCall7 then
      cmgCall7 = "skill tree perk"
    end
    flag14 = CMG
    flag14 = flag14.hasClientSkill
    flag16 = vehicle3
    flag14 = flag14(flag16)
    if flag14 then
      flag14 = #textValue15
      flag14 = flag14 + 1
      flag16 = "~g~%s unlocked"
      flag18 = flag16
      flag16 = flag16.format
      flag2 = cmgCall7
      flag16 = flag16(flag18, flag2)
      textValue15[flag14] = flag16
    else
      flag14 = #textValue15
      flag14 = flag14 + 1
      flag16 = "~r~Requires %s skill unlocked"
      flag18 = flag16
      flag16 = flag16.format
      flag2 = cmgCall7
      flag16 = flag16(flag18, flag2)
      textValue15[flag14] = flag16
    end
  end
  cmgCall7 = table
  cmgCall7 = cmgCall7.concat
  flag14 = textValue15
  flag16 = "\n"
  return cmgCall7(flag14, flag16)
end
function workValue16(arg1, arg2)
  local arg3, arg4, textValue15, vehicle3, cmgCall7, flag14
  arg3 = type
  arg4 = arg2
  arg3 = arg3(arg4)
  if "number" ~= arg3 or arg2 <= 0 then
    return arg2
  end
  arg3 = dataTable4
  arg3 = arg3[arg1]
  arg4 = arg3 or arg4
  if arg3 then
    arg4 = arg3._config
  end
  if arg4 then
    textValue15 = arg4.gangVehicleStore
    if true == textValue15 then
      goto flow_label_20
    end
  end
  return arg2
  ::flow_label_20::
  textValue15 = CMG
  textValue15 = textValue15.getClientGangRpWlVehiclesDiscountPercent
  textValue15 = textValue15()
  if textValue15 <= 0 then
    return arg2
  end
  vehicle3 = math
  vehicle3 = vehicle3.floor
  cmgCall7 = textValue15 / 100
  flag14 = 1
  cmgCall7 = flag14 - cmgCall7
  cmgCall7 = arg2 * cmgCall7
  return vehicle3(cmgCall7)
end
workValue18 = RMenu
workValue18 = workValue18.Add
textValue8 = "cardealer"
textValue9 = "mainmenu"
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateMenu
textValue10 = ""
textValue11 = ""
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5 = rageUiCall5()
rageUiCall6 = "cmg_simeonsui"
textValue14 = "cmg_simeonsui"
rageUiCall3, textValue10, textValue11, rageUiCall4, rageUiCall5, rageUiCall6, textValue14 = rageUiCall3(textValue10, textValue11, rageUiCall4, rageUiCall5, rageUiCall6, textValue14)
workValue18(textValue8, textValue9, rageUiCall3, textValue10, textValue11, rageUiCall4, rageUiCall5, rageUiCall6, textValue14)
workValue18 = RMenu
textValue8 = workValue18
workValue18 = workValue18.Get
textValue9 = "cardealer"
rageUiCall3 = "mainmenu"
-- Beginner: result below is menu.
workValue18 = workValue18(textValue8, textValue9, rageUiCall3)
textValue8 = workValue18
workValue18 = workValue18.SetSubtitle
textValue9 = "~b~Categories"
workValue18(textValue8, textValue9)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue8 = "cardealer"
textValue9 = "categories"
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateSubMenu
textValue10 = RMenu
textValue11 = textValue10
textValue10 = textValue10.Get
rageUiCall4 = "cardealer"
rageUiCall5 = "mainmenu"
-- Beginner: result below is menu.
textValue10 = textValue10(textValue11, rageUiCall4, rageUiCall5)
textValue11 = ""
rageUiCall4 = "~b~Vehicles"
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuWidth
rageUiCall5 = rageUiCall5()
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuHeight
rageUiCall6, textValue14 = rageUiCall6()
rageUiCall3, textValue10, textValue11, rageUiCall4, rageUiCall5, rageUiCall6, textValue14 = rageUiCall3(textValue10, textValue11, rageUiCall4, rageUiCall5, rageUiCall6, textValue14)
workValue18(textValue8, textValue9, rageUiCall3, textValue10, textValue11, rageUiCall4, rageUiCall5, rageUiCall6, textValue14)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue8 = "cardealer"
textValue9 = "vehicle"
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateSubMenu
textValue10 = RMenu
textValue11 = textValue10
textValue10 = textValue10.Get
rageUiCall4 = "cardealer"
rageUiCall5 = "categories"
-- Beginner: result below is menu.
textValue10 = textValue10(textValue11, rageUiCall4, rageUiCall5)
textValue11 = ""
rageUiCall4 = "~b~Options"
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuWidth
rageUiCall5 = rageUiCall5()
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuHeight
rageUiCall6, textValue14 = rageUiCall6()
rageUiCall3, textValue10, textValue11, rageUiCall4, rageUiCall5, rageUiCall6, textValue14 = rageUiCall3(textValue10, textValue11, rageUiCall4, rageUiCall5, rageUiCall6, textValue14)
workValue18(textValue8, textValue9, rageUiCall3, textValue10, textValue11, rageUiCall4, rageUiCall5, rageUiCall6, textValue14)
workValue18 = RMenu
workValue18 = workValue18.Add
textValue8 = "cardealer"
textValue9 = "confirm"
rageUiCall3 = RageUI
rageUiCall3 = rageUiCall3.CreateSubMenu
textValue10 = RMenu
textValue11 = textValue10
textValue10 = textValue10.Get
rageUiCall4 = "cardealer"
rageUiCall5 = "vehicle"
-- Beginner: result below is menu.
textValue10 = textValue10(textValue11, rageUiCall4, rageUiCall5)
textValue11 = ""
rageUiCall4 = "~b~Are you sure?"
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuWidth
rageUiCall5 = rageUiCall5()
rageUiCall6 = CMG
rageUiCall6 = rageUiCall6.getRageUIMenuHeight
rageUiCall6, textValue14 = rageUiCall6()
rageUiCall3, textValue10, textValue11, rageUiCall4, rageUiCall5, rageUiCall6, textValue14 = rageUiCall3(textValue10, textValue11, rageUiCall4, rageUiCall5, rageUiCall6, textValue14)
workValue18(textValue8, textValue9, rageUiCall3, textValue10, textValue11, rageUiCall4, rageUiCall5, rageUiCall6, textValue14)
workValue18 = RageUI
workValue18 = workValue18.CreateWhile
textValue8 = 1.0
textValue9 = RMenu
rageUiCall3 = textValue9
textValue9 = textValue9.Get
textValue10 = "cardealer"
textValue11 = "mainmenu"
-- Beginner: result below is menu.
textValue9 = textValue9(rageUiCall3, textValue10, textValue11)
rageUiCall3 = nil
function textValue10()
  local arg1, arg2, arg3, arg4, textValue15, vehicle3, cmgCall7
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cardealer"
  textValue15 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue15)
  arg3 = true
  arg4 = true
  textValue15 = true
  function vehicle3()
    local arg12, arg22, heading2, workValue24, workValue27, workValue28, stringHelper, iterator, iterator2, textValue16, textValue, workValue2, workValue3, rageUiCall, workValue6, textValue4, dataTable2, dataTable3, flag8, workValue9, workValue10, textValue6, textValue7
    arg12 = workValue23
    if nil ~= arg12 then
      arg12 = pairs
      arg22 = dataTable
      arg12, arg22, heading2, workValue24 = arg12(arg22)
      for workValue27, workValue28 in arg12, arg22, heading2, workValue24 do
        stringHelper = workValue23
        if stringHelper == workValue27 then
          stringHelper = workValue28.categorys
          iterator = pairs
          iterator2 = stringHelper
          iterator, iterator2, textValue16, textValue = iterator(iterator2)
          for workValue2, workValue3 in iterator, iterator2, textValue16, textValue do
            rageUiCall = dataTable4
            rageUiCall = rageUiCall[workValue3]
            if rageUiCall then
              rageUiCall = RageUI
              rageUiCall = rageUiCall.ButtonWithStyle
              workValue6 = workValue3
              textValue4 = ""
              dataTable2 = {}
              dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
              dataTable3 = true
              function flag8(arg13, arg23, arg32)
                local workValue25
                if arg32 then
                  workValue25 = workValue3
                  workValue26 = workValue25
                end
              end
              workValue9 = RMenu
              workValue10 = workValue9
              workValue9 = workValue9.Get
              textValue6 = "cardealer"
              textValue7 = "categories"
              workValue9, workValue10, textValue6, textValue7 = workValue9(workValue10, textValue6, textValue7)
              -- Beginner: Draw a selectable RageUI menu button.
              rageUiCall(workValue6, textValue4, dataTable2, dataTable3, flag8, workValue9, workValue10, textValue6, textValue7)
            end
          end
        end
      end
    end
  end
  function cmgCall7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, textValue15, vehicle3, cmgCall7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cardealer"
  textValue15 = "categories"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue15)
  arg3 = true
  arg4 = true
  textValue15 = true
  function vehicle3()
    local arg12, arg22, heading2, workValue24, workValue27, workValue28, stringHelper, iterator, iterator2, textValue16, textValue, workValue2, workValue3, rageUiCall, workValue6, textValue4, dataTable2, dataTable3, flag8, workValue9, workValue10, textValue6, textValue7, rageUiCall2, workValue15, workValue17, dataTable5, workValue19, workValue20, workValue21, workValue22, textValue12, textValue13
    arg12 = workValue23
    if nil ~= arg12 then
      arg12 = pairs
      arg22 = dataTable
      arg12, arg22, heading2, workValue24 = arg12(arg22)
      for workValue27, workValue28 in arg12, arg22, heading2, workValue24 do
        stringHelper = workValue23
        if stringHelper == workValue27 then
          stringHelper = workValue28.previewVector
          iterator = workValue28.categorys
          iterator2 = pairs
          textValue16 = iterator
          iterator2, textValue16, textValue, workValue2 = iterator2(textValue16)
          for workValue3, rageUiCall in iterator2, textValue16, textValue, workValue2 do
            workValue6 = workValue26
            if workValue6 == rageUiCall then
              workValue6 = dataTable4
              workValue6 = workValue6[rageUiCall]
              if nil ~= workValue6 then
                workValue6 = cmgCall4
                textValue4 = dataTable4
                textValue4 = textValue4[rageUiCall]
                workValue6, textValue4, dataTable2, dataTable3 = workValue6(textValue4)
                for flag8, workValue9 in workValue6, textValue4, dataTable2, dataTable3 do
                  if "_config" ~= flag8 then
                    workValue10 = workValue16
                    textValue6 = rageUiCall
                    textValue7 = workValue9[2]
                    workValue10 = workValue10(textValue6, textValue7)
                    textValue6 = "\194\163"
                    textValue7 = getMoneyStringFormatted
                    rageUiCall2 = workValue10
                    textValue7 = textValue7(rageUiCall2)
                    textValue6 = textValue6 .. textValue7
                    textValue7 = workValue13
                    rageUiCall2 = workValue9
                    textValue7 = textValue7(rageUiCall2)
                    rageUiCall2 = RageUI
                    rageUiCall2 = rageUiCall2.ButtonWithStyle
                    workValue15 = workValue9[1]
                    workValue17 = workValue14
                    dataTable5 = workValue9
                    workValue17 = workValue17(dataTable5)
                    dataTable5 = {}
                    dataTable5.RightLabel = textValue6
                    workValue19 = textValue7
                    function workValue20(arg13, arg23, arg32)
                      local workValue25, vehicle2, cmgCall6, flag11, numberValue6
                      if arg23 then
                        workValue25 = numberValue4
                        if 0 ~= workValue25 then
                          workValue25 = numberValue5
                          vehicle2 = flag8
                          if workValue25 == vehicle2 then
                            goto flow_label_22
                          end
                        end
                        workValue25 = DeleteVehicle
                        vehicle2 = numberValue4
                        workValue25(vehicle2)
                        workValue25 = workValue5
                        vehicle2 = flag8
                        cmgCall6 = stringHelper.x
                        flag11 = stringHelper.y
                        numberValue6 = stringHelper.z
                        workValue25 = workValue25(vehicle2, cmgCall6, flag11, numberValue6)
                        numberValue4 = workValue25
                        workValue25 = flag8
                        numberValue5 = workValue25
                      end
                      ::flow_label_22::
                      if arg32 then
                        workValue25 = flag8
                        workValue30 = workValue25
                        workValue25 = workValue9
                        workValue29 = workValue25
                      end
                    end
                    workValue21 = RMenu
                    workValue22 = workValue21
                    workValue21 = workValue21.Get
                    textValue12 = "cardealer"
                    textValue13 = "vehicle"
                    workValue21, workValue22, textValue12, textValue13 = workValue21(workValue22, textValue12, textValue13)
                    -- Beginner: Draw a selectable RageUI menu button.
                    rageUiCall2(workValue15, workValue17, dataTable5, workValue19, workValue20, workValue21, workValue22, textValue12, textValue13)
                  end
                end
              else
                workValue6 = RageUI
                workValue6 = workValue6.ButtonWithStyle
                textValue4 = "~r~No permission"
                dataTable2 = ""
                dataTable3 = {}
                dataTable3.RightLabel = ""
                flag8 = true
                function workValue9(arg13, arg23, arg32)
                end
                workValue10 = RMenu
                textValue6 = workValue10
                workValue10 = workValue10.Get
                textValue7 = "cardealer"
                rageUiCall2 = "categories"
                workValue10, textValue6, textValue7, rageUiCall2, workValue15, workValue17, dataTable5, workValue19, workValue20, workValue21, workValue22, textValue12, textValue13 = workValue10(textValue6, textValue7, rageUiCall2)
                workValue6(textValue4, dataTable2, dataTable3, flag8, workValue9, workValue10, textValue6, textValue7, rageUiCall2, workValue15, workValue17, dataTable5, workValue19, workValue20, workValue21, workValue22, textValue12, textValue13)
              end
            end
          end
        end
      end
    end
  end
  function cmgCall7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, textValue15, vehicle3, cmgCall7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cardealer"
  textValue15 = "vehicle"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue15)
  arg3 = true
  arg4 = false
  textValue15 = false
  function vehicle3()
    local arg12, arg22, heading2, workValue24, workValue27, workValue28, stringHelper, iterator, iterator2, textValue16, textValue
    arg12 = workValue23
    if nil ~= arg12 then
      arg12 = workValue29
      if arg12 then
        arg12 = workValue13
        arg22 = workValue29
        arg12 = arg12(arg22)
        arg22 = RageUI
        arg22 = arg22.ButtonWithStyle
        heading2 = "Purchase "
        workValue24 = workValue29
        workValue24 = workValue24[1]
        heading2 = heading2 .. workValue24
        workValue24 = ""
        workValue27 = {}
        workValue27.RightLabel = "\226\134\146\226\134\146\226\134\146"
        workValue28 = arg12
        function stringHelper(arg13, arg23, arg32)
        end
        iterator = RMenu
        iterator2 = iterator
        iterator = iterator.Get
        textValue16 = "cardealer"
        textValue = "confirm"
        iterator, iterator2, textValue16, textValue = iterator(iterator2, textValue16, textValue)
        -- Beginner: Draw a selectable RageUI menu button.
        arg22(heading2, workValue24, workValue27, workValue28, stringHelper, iterator, iterator2, textValue16, textValue)
        arg22 = RageUI
        arg22 = arg22.ButtonWithStyle
        heading2 = "Test Drive "
        workValue24 = workValue29
        workValue24 = workValue24[1]
        heading2 = heading2 .. workValue24
        workValue24 = ""
        workValue27 = {}
        workValue27.RightLabel = "\226\134\146\226\134\146\226\134\146"
        workValue28 = arg12
        function stringHelper(arg13, arg23, arg32)
          local workValue25, vehicle2, cmgCall6, flag11, numberValue6, cmgCall8, cmgCall9, numberValue, flag3, flag4, workValue4, numberValue2
          if arg32 then
            workValue25 = DeleteVehicle
            vehicle2 = GetVehiclePedIsIn
            cmgCall6 = CMG
            cmgCall6 = cmgCall6.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            cmgCall6 = cmgCall6()
            flag11 = false
            vehicle2, cmgCall6, flag11, numberValue6, cmgCall8, cmgCall9, numberValue, flag3, flag4, workValue4, numberValue2 = vehicle2(cmgCall6, flag11)
            workValue25(vehicle2, cmgCall6, flag11, numberValue6, cmgCall8, cmgCall9, numberValue, flag3, flag4, workValue4, numberValue2)
            workValue25 = flag
            if not workValue25 then
              workValue25 = RageUI
              workValue25 = workValue25.CloseAll
              workValue25()
              workValue25 = GetHashKey
              vehicle2 = workValue30
              -- Beginner: result below is hash.
              workValue25 = workValue25(vehicle2)
              while true do
                vehicle2 = HasModelLoaded
                cmgCall6 = workValue25
                vehicle2 = vehicle2(cmgCall6)
                if vehicle2 then
                  break
                end
                vehicle2 = RequestModel
                cmgCall6 = workValue25
                vehicle2(cmgCall6)
                vehicle2 = Citizen
                vehicle2 = vehicle2.Wait
                cmgCall6 = 10
                vehicle2(cmgCall6)
              end
              vehicle2 = HasModelLoaded
              cmgCall6 = workValue25
              vehicle2 = vehicle2(cmgCall6)
              if vehicle2 then
                vehicle2 = true
                flag = vehicle2
                vehicle2 = DeleteEntity
                cmgCall6 = numberValue4
                -- Beginner: Delete a GTA entity.
                vehicle2(cmgCall6)
                vehicle2 = vector3
                cmgCall6 = -914.83026123046
                flag11 = -3287.1538085938
                numberValue6 = 13.521618843078
                vehicle2 = vehicle2(cmgCall6, flag11, numberValue6)
                cmgCall6 = IsThisModelABoat
                flag11 = workValue25
                cmgCall6 = cmgCall6(flag11)
                if cmgCall6 then
                  cmgCall6 = vector3
                  flag11 = -330.306
                  numberValue6 = -3366.949
                  cmgCall8 = 0.953
                  cmgCall6 = cmgCall6(flag11, numberValue6, cmgCall8)
                  vehicle2 = cmgCall6
                end
                cmgCall6 = CreateVehicle
                flag11 = workValue25
                numberValue6 = vehicle2.x
                cmgCall8 = vehicle2.y
                cmgCall9 = vehicle2.z
                numberValue = 60.962993621826
                flag3 = false
                flag4 = false
                -- Beginner: result below is vehicleEntity.
                cmgCall6 = cmgCall6(flag11, numberValue6, cmgCall8, cmgCall9, numberValue, flag3, flag4)
                flag11 = 60
                numberValue6 = GetEntityCoords
                cmgCall8 = CMG
                cmgCall8 = cmgCall8.getPlayerPed
                cmgCall8, cmgCall9, numberValue, flag3, flag4, workValue4, numberValue2 = cmgCall8()
                -- Beginner: result below is entityCoords.
                numberValue6 = numberValue6(cmgCall8, cmgCall9, numberValue, flag3, flag4, workValue4, numberValue2)
                cmgCall8 = CMG
                cmgCall8 = cmgCall8.initLocalVehicle
                cmgCall9 = cmgCall6
                cmgCall8(cmgCall9)
                cmgCall8 = SetModelAsNoLongerNeeded
                cmgCall9 = workValue25
                cmgCall8(cmgCall9)
                cmgCall8 = TaskWarpPedIntoVehicle
                cmgCall9 = CMG
                cmgCall9 = cmgCall9.getPlayerPed
                -- Beginner: result below is localPlayerPed.
                cmgCall9 = cmgCall9()
                numberValue = cmgCall6
                flag3 = -1
                cmgCall8(cmgCall9, numberValue, flag3)
                cmgCall8 = CMG
                cmgCall8 = cmgCall8.setVehicleFuel
                cmgCall9 = cmgCall6
                numberValue = 100
                cmgCall8(cmgCall9, numberValue)
                cmgCall8 = tCMG
                cmgCall8 = cmgCall8.notify
                cmgCall9 = "~g~You have 1 minute to test drive this vehicle!"
                -- Beginner: Show a notification to the player.
                cmgCall8(cmgCall9)
                cmgCall8 = 0
                cmgCall9 = 24
                numberValue = 1
                for flag3 = cmgCall8, cmgCall9, numberValue do
                  flag4 = SetVehicleModKit
                  workValue4 = cmgCall6
                  numberValue2 = 0
                  flag4(workValue4, numberValue2)
                  flag4 = RemoveVehicleMod
                  workValue4 = cmgCall6
                  numberValue2 = flag3
                  flag4(workValue4, numberValue2)
                end
                cmgCall8 = SetTimeout
                cmgCall9 = 60000
                function numberValue()
                  local workValue, vehicle, cmgCall5, flag9, numberValue3, flag10, flag12, flag15, flag17
                  workValue = flag
                  if workValue then
                    workValue = DeleteVehicle
                    vehicle = GetVehiclePedIsIn
                    cmgCall5 = CMG
                    cmgCall5 = cmgCall5.getPlayerPed
                    -- Beginner: result below is localPlayerPed.
                    cmgCall5 = cmgCall5()
                    flag9 = false
                    vehicle, cmgCall5, flag9, numberValue3, flag10, flag12, flag15, flag17 = vehicle(cmgCall5, flag9)
                    workValue(vehicle, cmgCall5, flag9, numberValue3, flag10, flag12, flag15, flag17)
                    workValue = DeleteVehicle
                    vehicle = cmgCall6
                    workValue(vehicle)
                    workValue = SetEntityCoords
                    vehicle = CMG
                    vehicle = vehicle.getPlayerPed
                    -- Beginner: result below is localPlayerPed.
                    vehicle = vehicle()
                    cmgCall5 = numberValue6.x
                    flag9 = numberValue6.y
                    numberValue3 = numberValue6.z
                    flag10 = false
                    flag12 = false
                    flag15 = false
                    flag17 = false
                    -- Beginner: Move/teleport an entity to new coordinates.
                    workValue(vehicle, cmgCall5, flag9, numberValue3, flag10, flag12, flag15, flag17)
                    workValue = TriggerServerEvent
                    vehicle = "2d4f7f8a9f"
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2d4f7f8a9f".
                    workValue(vehicle)
                    workValue = false
                    flag = workValue
                    workValue = tCMG
                    workValue = workValue.notify
                    vehicle = "~b~Test drive over!"
                    -- Beginner: Show a notification to the player.
                    workValue(vehicle)
                    workValue = eventRegistration
                    -- Beginner: Register a network event handler that the server/other clients can trigger.
                    workValue()
                  end
                end
                cmgCall8(cmgCall9, numberValue)
                cmgCall8 = Citizen
                cmgCall8 = cmgCall8.CreateThread
                function cmgCall9()
                  local workValue, vehicle
                  while true do
                    workValue = flag
                    if not workValue then
                      break
                    end
                    workValue = flag11
                    workValue = workValue - 1
                    flag11 = workValue
                    workValue = Wait
                    vehicle = 1000
                    workValue(vehicle)
                  end
                end
                -- Beginner: Start a separate FiveM thread so this code can run independently.
                cmgCall8(cmgCall9)
                cmgCall8 = Citizen
                cmgCall8 = cmgCall8.CreateThread
                function cmgCall9()
                  local workValue, vehicle, cmgCall5, flag9, numberValue3, flag10
                  while true do
                    workValue = flag
                    if not workValue then
                      break
                    end
                    workValue = flag11
                    if workValue < 60 then
                      workValue = CMG
                      workValue = workValue.DrawText
                      vehicle = 0.8
                      cmgCall5 = 0.9049999999999999
                      flag9 = "~y~"
                      numberValue3 = flag11
                      flag10 = " seconds left."
                      flag9 = flag9 .. numberValue3 .. flag10
                      numberValue3 = 0.35
                      workValue(vehicle, cmgCall5, flag9, numberValue3)
                    end
                    workValue = Wait
                    vehicle = 0
                    workValue(vehicle)
                  end
                end
                -- Beginner: Start a separate FiveM thread so this code can run independently.
                cmgCall8(cmgCall9)
                cmgCall8 = Citizen
                cmgCall8 = cmgCall8.CreateThread
                function cmgCall9()
                  local workValue, vehicle, cmgCall5, flag9, numberValue3, flag10, flag12, flag15, flag17, flag19
                  while true do
                    workValue = flag
                    if not workValue then
                      break
                    end
                    workValue = GetVehiclePedIsIn
                    vehicle = CMG
                    vehicle = vehicle.getPlayerPed
                    -- Beginner: result below is localPlayerPed.
                    vehicle = vehicle()
                    cmgCall5 = false
                    -- Beginner: result below is currentVehicle.
                    workValue = workValue(vehicle, cmgCall5)
                    if nil ~= workValue then
                      vehicle = cmgCall6
                      if vehicle ~= workValue then
                        vehicle = DeleteVehicle
                        cmgCall5 = GetVehiclePedIsIn
                        flag9 = CMG
                        flag9 = flag9.getPlayerPed
                        -- Beginner: result below is localPlayerPed.
                        flag9 = flag9()
                        numberValue3 = false
                        cmgCall5, flag9, numberValue3, flag10, flag12, flag15, flag17, flag19 = cmgCall5(flag9, numberValue3)
                        vehicle(cmgCall5, flag9, numberValue3, flag10, flag12, flag15, flag17, flag19)
                        vehicle = DeleteVehicle
                        cmgCall5 = cmgCall6
                        vehicle(cmgCall5)
                        vehicle = SetEntityCoords
                        cmgCall5 = CMG
                        cmgCall5 = cmgCall5.getPlayerPed
                        -- Beginner: result below is localPlayerPed.
                        cmgCall5 = cmgCall5()
                        flag9 = numberValue6.x
                        numberValue3 = numberValue6.y
                        flag10 = numberValue6.z
                        flag12 = false
                        flag15 = false
                        flag17 = false
                        flag19 = false
                        -- Beginner: Move/teleport an entity to new coordinates.
                        vehicle(cmgCall5, flag9, numberValue3, flag10, flag12, flag15, flag17, flag19)
                        vehicle = TriggerServerEvent
                        cmgCall5 = "2d4f7f8a9f"
                        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "2d4f7f8a9f".
                        vehicle(cmgCall5)
                        vehicle = tCMG
                        vehicle = vehicle.notify
                        cmgCall5 = "~b~Test drive over!"
                        -- Beginner: Show a notification to the player.
                        vehicle(cmgCall5)
                        vehicle = false
                        flag = vehicle
                        vehicle = eventRegistration
                        -- Beginner: Register a network event handler that the server/other clients can trigger.
                        vehicle()
                      end
                    end
                    vehicle = Wait
                    cmgCall5 = 0
                    vehicle(cmgCall5)
                  end
                end
                -- Beginner: Start a separate FiveM thread so this code can run independently.
                cmgCall8(cmgCall9)
              end
            end
          end
        end
        -- Beginner: Draw a selectable RageUI menu button.
        arg22(heading2, workValue24, workValue27, workValue28, stringHelper)
      end
    end
  end
  function cmgCall7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, textValue15, vehicle3, cmgCall7)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  arg3 = arg2
  arg2 = arg2.Get
  arg4 = "cardealer"
  textValue15 = "confirm"
  -- Beginner: result below is menu.
  arg2 = arg2(arg3, arg4, textValue15)
  arg3 = true
  arg4 = false
  textValue15 = false
  function vehicle3()
    local arg12, arg22, heading2, workValue24, workValue27, workValue28, stringHelper, iterator, iterator2, textValue16, textValue
    arg12 = workValue29
    if arg12 then
      arg12 = workValue13
      arg22 = workValue29
      arg12 = arg12(arg22)
      if arg12 then
        goto flow_label_10
      end
    end
    arg12 = false
    ::flow_label_10::
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    heading2 = "Yes"
    workValue24 = ""
    workValue27 = {}
    workValue27.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue28 = arg12
    function stringHelper(arg13, arg23, arg32)
      local workValue25, vehicle2, cmgCall6, flag11
      if arg32 then
        workValue25 = TriggerServerEvent
        vehicle2 = "0f93bb7bac"
        cmgCall6 = workValue26
        flag11 = workValue30
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0f93bb7bac".
        workValue25(vehicle2, cmgCall6, flag11)
      end
    end
    iterator = RMenu
    iterator2 = iterator
    iterator = iterator.Get
    textValue16 = "cardealer"
    textValue = "mainmenu"
    iterator, iterator2, textValue16, textValue = iterator(iterator2, textValue16, textValue)
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(heading2, workValue24, workValue27, workValue28, stringHelper, iterator, iterator2, textValue16, textValue)
    arg22 = RageUI
    arg22 = arg22.ButtonWithStyle
    heading2 = "No"
    workValue24 = ""
    workValue27 = {}
    workValue27.RightLabel = "\226\134\146\226\134\146\226\134\146"
    workValue28 = true
    function stringHelper(arg13, arg23, arg32)
      local workValue25, vehicle2
      if arg32 then
        workValue25 = tCMG
        workValue25 = workValue25.notify
        vehicle2 = "~y~Cancelled!"
        -- Beginner: Show a notification to the player.
        workValue25(vehicle2)
      end
    end
    iterator = RMenu
    iterator2 = iterator
    iterator = iterator.Get
    textValue16 = "cardealer"
    textValue = "mainmenu"
    iterator, iterator2, textValue16, textValue = iterator(iterator2, textValue16, textValue)
    -- Beginner: Draw a selectable RageUI menu button.
    arg22(heading2, workValue24, workValue27, workValue28, stringHelper, iterator, iterator2, textValue16, textValue)
  end
  function cmgCall7()
    local arg12, arg22
  end
  arg1(arg2, arg3, arg4, textValue15, vehicle3, cmgCall7)
end
workValue18(textValue8, textValue9, rageUiCall3, textValue10)
function workValue18()
  local arg1, arg2, arg3
  arg1 = flag13
  if arg1 then
    arg1 = IsControlJustPressed
    arg2 = 0
    arg3 = 177
    arg1 = arg1(arg2, arg3)
    if arg1 then
      while true do
        arg1 = DoesEntityExist
        arg2 = numberValue4
        arg1 = arg1(arg2)
        if not arg1 then
          break
        end
        arg1 = DeleteVehicle
        arg2 = numberValue4
        arg1(arg2)
        arg1 = Wait
        arg2 = 50
        arg1(arg2)
      end
      arg1 = 0
      numberValue4 = arg1
      arg1 = 0
      numberValue5 = arg1
      arg1 = false
      flag13 = arg1
    end
  end
end
textValue8 = CMG
textValue8 = textValue8.createThreadOnTick
textValue9 = workValue18
rageUiCall3 = "Simeons Preview"
-- Beginner: Run a helper every game frame while this script is active.
textValue8(textValue9, rageUiCall3)