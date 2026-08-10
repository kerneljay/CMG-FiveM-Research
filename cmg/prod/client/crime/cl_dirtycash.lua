--[[
    Beginner Guide: cl_dirtycash.lua
    ================================

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
    BEGINNER GUIDE — Dirtycash
    ==========================

    File: cmg/prod/client/crime/cl_dirtycash.lua
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

    Network/hash identifiers found: 7
      They are intentionally left unchanged because matching server code may use them.
      * 8ac077847b
      * 28586dd690
      * 8dfaa23b61
      * fa2dcfab18
      * e16d390302
      * 429c274229
      * 9ebeeadd8b

    Example player-facing text in this file:
      * Press ~INPUT_CONTEXT~ to hand over the dirty cash.

]]
local textValue, flag9, workValue3, workValue5, workValue7, workValue9, eventRegistration, eventRegistration2, textValue3, workValue10
textValue = "IDLE"
flag9 = false
function workValue3(arg1)
  local arg2, arg3, flag10, flag11, flag12, position, numberValue2, flag13, flag14, flag, flag2, flag3
  arg2 = CMG
  arg2 = arg2.loadModel
  arg3 = arg1.model
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg2(arg3)
  arg2 = CreatePed
  arg3 = 0
  flag10 = arg1.model
  flag11 = arg1.position
  flag11 = flag11.x
  flag12 = arg1.position
  flag12 = flag12.y
  position = arg1.position
  position = position.z
  position = position - 1.0
  numberValue2 = arg1.position
  numberValue2 = numberValue2.w
  flag13 = false
  flag14 = false
  -- Beginner: result below is pedEntity.
  arg2 = arg2(arg3, flag10, flag11, flag12, position, numberValue2, flag13, flag14)
  arg1.ped = arg2
  arg2 = SetModelAsNoLongerNeeded
  arg3 = arg1.model
  arg2(arg3)
  arg2 = FreezeEntityPosition
  arg3 = arg1.ped
  flag10 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  arg2(arg3, flag10)
  arg2 = SetEntityInvincible
  arg3 = arg1.ped
  flag10 = true
  arg2(arg3, flag10)
  arg2 = SetEntityCanBeDamaged
  arg3 = arg1.ped
  flag10 = false
  arg2(arg3, flag10)
  arg2 = SetPedAlertness
  arg3 = arg1.ped
  flag10 = 0
  arg2(arg3, flag10)
  arg2 = SetBlockingOfNonTemporaryEvents
  arg3 = arg1.ped
  flag10 = true
  arg2(arg3, flag10)
  arg2 = SetEntityCollision
  arg3 = arg1.ped
  flag10 = false
  flag11 = false
  arg2(arg3, flag10, flag11)
  arg2 = GiveWeaponToPed
  arg3 = arg1.ped
  flag10 = 28811031
  flag11 = 1
  flag12 = false
  position = true
  arg2(arg3, flag10, flag11, flag12, position)
  arg2 = SetCurrentPedWeapon
  arg3 = arg1.ped
  flag10 = 28811031
  flag11 = true
  arg2(arg3, flag10, flag11)
  arg2 = CMG
  arg2 = arg2.loadAnimDict
  arg3 = "anim@heists@heist_corona@team_idles@female_a"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg2(arg3)
  arg2 = TaskPlayAnim
  arg3 = arg1.ped
  flag10 = "anim@heists@heist_corona@team_idles@female_a"
  flag11 = "idle"
  flag12 = 8.0
  position = 8.0
  numberValue2 = -1
  flag13 = 1
  flag14 = 0
  flag = false
  flag2 = false
  flag3 = false
  -- Beginner: Play an animation on a ped.
  arg2(arg3, flag10, flag11, flag12, position, numberValue2, flag13, flag14, flag, flag2, flag3)
  arg2 = RemoveAnimDict
  arg3 = "anim@heists@heist_corona@team_idles@female_a"
  arg2(arg3)
  arg2 = CMG
  arg2 = arg2.getLocalPlayerSrc
  arg2 = arg2()
  arg3 = arg1.playerSrc
  if arg2 == arg3 then
    arg2 = AddBlipForRadius
    arg3 = arg1.position
    arg3 = arg3.x
    flag10 = arg1.position
    flag10 = flag10.y
    flag11 = arg1.position
    flag11 = flag11.z
    flag12 = 10.0
    -- Beginner: result below is blipHandle.
    arg2 = arg2(arg3, flag10, flag11, flag12)
    arg1.blip = arg2
    arg2 = SetBlipColour
    arg3 = arg1.blip
    flag10 = 5
    arg2(arg3, flag10)
    arg2 = SetBlipAlpha
    arg3 = arg1.blip
    flag10 = 150
    arg2(arg3, flag10)
    arg2 = SetWaypointOff
    arg2()
  end
end
function workValue5(arg1)
  local arg2, arg3
  arg2 = arg1.blip
  if arg2 then
    arg2 = RemoveBlip
    arg3 = arg1.blip
    arg2(arg3)
  end
  arg2 = DeleteEntity
  arg3 = arg1.ped
  -- Beginner: Delete a GTA entity.
  arg2(arg3)
end
function workValue7()
  local arg1, arg2, arg3
  arg1 = textValue
  if "IDLE" == arg1 then
    arg1 = drawNativeNotification
    arg2 = "Press ~INPUT_CONTEXT~ to hand over the dirty cash."
    -- Beginner: Show a GTA-style notification/help prompt.
    arg1(arg2)
    arg1 = IsControlJustPressed
    arg2 = 0
    arg3 = 51
    arg1 = arg1(arg2, arg3)
    if arg1 then
      arg1 = CMG
      arg1 = arg1.disableSittingOnChairThisFrame
      arg1()
      arg1 = TriggerServerEvent
      arg2 = "8ac077847b"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8ac077847b".
      arg1(arg2)
    end
  else
    arg1 = textValue
    if "HANDING_OVER" == arg1 then
      arg1 = subtitleText
      arg2 = "~b~Handing over cash..."
      arg1(arg2)
    end
  end
end
function workValue9()
  local arg1, arg2
  arg1 = textValue
  if "HANDING_OVER" == arg1 then
    arg1 = TriggerServerEvent
    arg2 = "28586dd690"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "28586dd690".
    arg1(arg2)
  end
end
eventRegistration = RegisterNetEvent
eventRegistration2 = "8dfaa23b61"
-- Beginner: this function handles network event "8dfaa23b61".
function textValue3(arg1, arg2, arg3)
  local flag10, flag11, flag12, position, numberValue2, flag13, flag14, flag, flag2, flag3
  flag10 = {}
  flag10.playerSrc = arg1
  flag10.position = arg2
  flag10.model = arg3
  flag11 = CMG
  flag11 = flag11.createArea
  flag12 = "dirtycash_"
  position = tostring
  numberValue2 = arg1
  position = position(numberValue2)
  flag12 = flag12 .. position
  position = arg2.xyz
  numberValue2 = 50.0
  flag13 = 6.0
  flag14 = workValue3
  flag = workValue5
  function flag2()
    local cmgCall, textValue2
  end
  flag3 = flag10
  -- Beginner: Create an interaction area around a world position.
  flag11(flag12, position, numberValue2, flag13, flag14, flag, flag2, flag3)
  flag11 = CMG
  flag11 = flag11.getLocalPlayerSrc
  flag11 = flag11()
  if flag11 == arg1 then
    flag11 = CMG
    flag11 = flag11.createArea
    flag12 = "dirtycash_local"
    position = arg2.xyz
    numberValue2 = 1.5
    flag13 = 6.0
    function flag14()
      local cmgCall, textValue2
    end
    flag = workValue9
    flag2 = workValue7
    flag3 = nil
    flag11(flag12, position, numberValue2, flag13, flag14, flag, flag2, flag3)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8dfaa23b61".
eventRegistration(eventRegistration2, textValue3)
eventRegistration = RegisterNetEvent
eventRegistration2 = "fa2dcfab18"
-- Beginner: this function handles network event "fa2dcfab18".
function textValue3(arg1)
  local arg2, arg3, flag10, flag11, flag12
  arg2 = CMG
  arg2 = arg2.getLocalPlayerSrc
  arg2 = arg2()
  if arg2 == arg1 then
    arg2 = tCMG
    arg2 = arg2.removeArea
    arg3 = "dirtycash_local"
    arg2(arg3)
  end
  arg2 = CMG
  arg2 = arg2.getAreaMetaData
  arg3 = "dirtycash_"
  flag10 = tostring
  flag11 = arg1
  flag10 = flag10(flag11)
  arg3 = arg3 .. flag10
  arg2 = arg2(arg3)
  arg3 = arg2.ped
  if arg3 then
    arg3 = ClearPedTasksImmediately
    flag10 = arg2.ped
    arg3(flag10)
    arg3 = SetEntityAsNoLongerNeeded
    flag10 = arg2.ped
    arg3(flag10)
  end
  arg3 = arg2.blip
  if arg3 then
    arg3 = RemoveBlip
    flag10 = arg2.blip
    arg3(flag10)
  end
  arg3 = tCMG
  arg3 = arg3.removeArea
  flag10 = "dirtycash_"
  flag11 = tostring
  flag12 = arg1
  flag11 = flag11(flag12)
  flag10 = flag10 .. flag11
  arg3(flag10)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "fa2dcfab18".
eventRegistration(eventRegistration2, textValue3)
eventRegistration = RegisterNetEvent
eventRegistration2 = "e16d390302"
-- Beginner: this function handles network event "e16d390302".
function textValue3(arg1)
  local arg2, arg3, flag10, flag11, flag12, position, numberValue2, flag13, flag14, flag, flag2, flag3, flag4, flag5, flag6, flag7, numberValue, flag8
  arg2 = flag9
  if arg2 then
    return
  end
  arg2 = true
  flag9 = arg2
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = SendNUIMessage
  flag10 = {}
  flag10.transactionType = "ring"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  arg3(flag10)
  arg3 = CMG
  arg3 = arg3.loadAnimDict
  flag10 = "cellphone@"
  -- Beginner: Load a GTA animation dictionary before using it.
  arg3(flag10)
  arg3 = TaskPlayAnim
  flag10 = arg2
  flag11 = "cellphone@"
  flag12 = "cellphone_call_listen_base"
  position = 3.0
  numberValue2 = -1
  flag13 = -1
  flag14 = 50
  flag = 0
  flag2 = false
  flag3 = false
  flag4 = false
  -- Beginner: Play an animation on a ped.
  arg3(flag10, flag11, flag12, position, numberValue2, flag13, flag14, flag, flag2, flag3, flag4)
  arg3 = RemoveAnimDict
  flag10 = "cellphone@"
  arg3(flag10)
  arg3 = CMG
  arg3 = arg3.loadModel
  flag10 = "prop_amb_phone"
  -- Beginner: Request/load a GTA model before spawning or applying it.
  arg3(flag10)
  arg3 = CMG
  arg3 = arg3.requestEntitySpawn
  flag10 = "dirtycash_phone"
  arg3(flag10)
  arg3 = CreateObject
  flag10 = 974883178
  flag11 = arg1.x
  flag12 = arg1.y
  position = arg1.z
  numberValue2 = true
  flag13 = true
  flag14 = false
  -- Beginner: result below is objectEntity.
  arg3 = arg3(flag10, flag11, flag12, position, numberValue2, flag13, flag14)
  flag10 = AttachEntityToEntity
  flag11 = arg3
  flag12 = arg2
  position = GetPedBoneIndex
  numberValue2 = arg2
  flag13 = 28422
  position = position(numberValue2, flag13)
  numberValue2 = 0.0
  flag13 = 0.0
  flag14 = 0.0
  flag = 0.0
  flag2 = 0.0
  flag3 = 0.0
  flag4 = true
  flag5 = true
  flag6 = false
  flag7 = false
  numberValue = 0
  flag8 = true
  -- Beginner: Attach one entity to another entity.
  flag10(flag11, flag12, position, numberValue2, flag13, flag14, flag, flag2, flag3, flag4, flag5, flag6, flag7, numberValue, flag8)
  flag10 = SetModelAsNoLongerNeeded
  flag11 = "prop_amb_phone"
  flag10(flag11)
  flag10 = Citizen
  flag10 = flag10.Wait
  flag11 = 9000
  flag10(flag11)
  flag10 = StopAnimTask
  flag11 = arg2
  flag12 = "cellphone@"
  position = "cellphone_call_listen_base"
  numberValue2 = 1.0
  flag10(flag11, flag12, position, numberValue2)
  flag10 = DeleteEntity
  flag11 = arg3
  -- Beginner: Delete a GTA entity.
  flag10(flag11)
  flag10 = SetNewWaypoint
  flag11 = arg1.x
  flag12 = arg1.y
  flag10(flag11, flag12)
  flag10 = drawNativeNotification
  flag11 = "A marker has been set to the cleaners location."
  -- Beginner: Show a GTA-style notification/help prompt.
  flag10(flag11)
  flag10 = false
  flag9 = flag10
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "e16d390302".
eventRegistration(eventRegistration2, textValue3)
function eventRegistration(arg1)
  local arg2, arg3, flag10, flag11, flag12, position, numberValue2, flag13, flag14, flag, flag2
  arg2 = 5.0
  arg3 = 0
  flag10 = pairs
  flag11 = GetGamePool
  flag12 = "CPed"
  flag11, flag12, position, numberValue2, flag13, flag14, flag, flag2 = flag11(flag12)
  flag10, flag11, flag12, position = flag10(flag11, flag12, position, numberValue2, flag13, flag14, flag, flag2)
  for numberValue2, flag13 in flag10, flag11, flag12, position do
    flag14 = IsPedAPlayer
    flag = flag13
    flag14 = flag14(flag)
    if not flag14 then
      flag14 = NetworkGetEntityIsLocal
      flag = flag13
      flag14 = flag14(flag)
      if flag14 then
        flag14 = GetEntityCoords
        flag = flag13
        flag2 = true
        -- Beginner: result below is entityCoords.
        flag14 = flag14(flag, flag2)
        flag = arg1.xyz
        flag14 = flag14 - flag
        flag14 = #flag14
        if arg2 > flag14 then
          arg2 = flag14
          arg3 = flag13
        end
      end
    end
  end
  return arg3
end
eventRegistration2 = RegisterNetEvent
textValue3 = "8ac077847b"
-- Beginner: this function handles network event "8ac077847b".
function workValue10(arg1)
  local arg2, arg3, flag10, flag11, flag12, position, numberValue2, flag13, flag14, flag, flag2, flag3, flag4, flag5
  arg2 = "HANDING_OVER"
  textValue = arg2
  arg2 = Citizen
  arg2 = arg2.CreateThread
  -- Beginner: this function handles network event "8ac077847b".
  function arg3()
    local cmgCall, textValue2, workValue4, workValue6, workValue8
    cmgCall = CMG
    cmgCall = cmgCall.startCircularProgressBar
    textValue2 = ""
    workValue4 = arg1
    workValue6 = nil
    function workValue8()
      local workValue, workValue2
    end
    cmgCall(textValue2, workValue4, workValue6, workValue8)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = eventRegistration
  flag10 = CMG
  flag10 = flag10.getPlayerCoords
  flag10, flag11, flag12, position, numberValue2, flag13, flag14, flag, flag2, flag3, flag4, flag5 = flag10()
  arg3 = arg3(flag10, flag11, flag12, position, numberValue2, flag13, flag14, flag, flag2, flag3, flag4, flag5)
  flag10 = TaskTurnPedToFaceEntity
  flag11 = arg2
  flag12 = arg3
  position = 1000
  flag10(flag11, flag12, position)
  flag10 = Citizen
  flag10 = flag10.Wait
  flag11 = 1000
  flag10(flag11)
  flag10 = CMG
  flag10 = flag10.loadAnimDict
  flag11 = "mp_common"
  -- Beginner: Load a GTA animation dictionary before using it.
  flag10(flag11)
  flag10 = TaskPlayAnim
  flag11 = arg2
  flag12 = "mp_common"
  position = "givetake1_a"
  numberValue2 = 8.0
  flag13 = 8.0
  flag14 = -1
  flag = 1
  flag2 = 0
  flag3 = false
  flag4 = false
  flag5 = false
  -- Beginner: Play an animation on a ped.
  flag10(flag11, flag12, position, numberValue2, flag13, flag14, flag, flag2, flag3, flag4, flag5)
  flag10 = RemoveAnimDict
  flag11 = "mp_common"
  flag10(flag11)
  flag10 = Citizen
  flag10 = flag10.Wait
  flag11 = 2000
  flag10(flag11)
  while true do
    flag10 = textValue
    if "HANDING_OVER" ~= flag10 then
      break
    end
    flag10 = IsEntityPlayingAnim
    flag11 = arg2
    flag12 = "mp_common"
    position = "givetake1_a"
    numberValue2 = 3
    flag10 = flag10(flag11, flag12, position, numberValue2)
    if not flag10 then
      flag10 = TriggerServerEvent
      flag11 = "28586dd690"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "28586dd690".
      flag10(flag11)
      break
    end
    flag10 = Citizen
    flag10 = flag10.Wait
    flag11 = 0
    flag10(flag11)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8ac077847b".
eventRegistration2(textValue3, workValue10)
eventRegistration2 = RegisterNetEvent
textValue3 = "28586dd690"
-- Beginner: this function handles network event "28586dd690".
function workValue10()
  local arg1, arg2, arg3, flag10, flag11
  arg1 = "IDLE"
  textValue = arg1
  arg1 = StopAnimTask
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  arg3 = "mp_common"
  flag10 = "givetake1_a"
  flag11 = 1.0
  arg1(arg2, arg3, flag10, flag11)
  arg1 = CMG
  arg1 = arg1.stopCircularProgressBar
  arg1()
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "28586dd690".
eventRegistration2(textValue3, workValue10)
eventRegistration2 = RegisterNetEvent
textValue3 = "429c274229"
-- Beginner: this function handles network event "429c274229".
function workValue10(arg1)
  local arg2, arg3, flag10, flag11, flag12, position, numberValue2, flag13, flag14, flag, flag2, flag3, flag4
  arg2 = eventRegistration
  arg3 = arg1
  arg2 = arg2(arg3)
  if 0 ~= arg2 then
    arg3 = CMG
    arg3 = arg3.loadAnimDict
    flag10 = "mp_common"
    -- Beginner: Load a GTA animation dictionary before using it.
    arg3(flag10)
    arg3 = TaskPlayAnim
    flag10 = arg2
    flag11 = "mp_common"
    flag12 = "givetake2_a"
    position = 8.0
    numberValue2 = 8.0
    flag13 = -1
    flag14 = 1
    flag = 0
    flag2 = false
    flag3 = false
    flag4 = false
    -- Beginner: Play an animation on a ped.
    arg3(flag10, flag11, flag12, position, numberValue2, flag13, flag14, flag, flag2, flag3, flag4)
    arg3 = RemoveAnimDict
    flag10 = "mp_common"
    arg3(flag10)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "429c274229".
eventRegistration2(textValue3, workValue10)
eventRegistration2 = RegisterNetEvent
textValue3 = "9ebeeadd8b"
-- Beginner: this function handles network event "9ebeeadd8b".
function workValue10(arg1)
  local arg2, arg3, flag10, flag11, flag12, position, numberValue2, flag13, flag14, flag, flag2, flag3, flag4
  arg2 = eventRegistration
  arg3 = arg1
  arg2 = arg2(arg3)
  if 0 ~= arg2 then
    arg3 = CMG
    arg3 = arg3.loadAnimDict
    flag10 = "anim@heists@heist_corona@team_idles@female_a"
    -- Beginner: Load a GTA animation dictionary before using it.
    arg3(flag10)
    arg3 = TaskPlayAnim
    flag10 = arg2
    flag11 = "anim@heists@heist_corona@team_idles@female_a"
    flag12 = "idle"
    position = 8.0
    numberValue2 = 8.0
    flag13 = -1
    flag14 = 1
    flag = 0
    flag2 = false
    flag3 = false
    flag4 = false
    -- Beginner: Play an animation on a ped.
    arg3(flag10, flag11, flag12, position, numberValue2, flag13, flag14, flag, flag2, flag3, flag4)
    arg3 = RemoveAnimDict
    flag10 = "anim@heists@heist_corona@team_idles@female_a"
    arg3(flag10)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "9ebeeadd8b".
eventRegistration2(textValue3, workValue10)