--[[
    Beginner Guide: cl_casinocoinflip.lua
    =====================================

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
    BEGINNER GUIDE — Casinocoinflip
    ===============================

    File: cmg/prod/client/casino/cl_casinocoinflip.lua
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

    Network/hash identifiers found: 12
      They are intentionally left unchanged because matching server code may use them.

    Named framework/network events found:
      * CMG:onClientSpawn

    Example player-facing text in this file:
      * Press ~INPUT_PICKUP~ to play Coinflip
      * ~g~ You won \194\163
      * ~r~ You lost \194\163
      * ~g~You WON!
      * ~r~You LOST!

]]
local numberValue, numberValue7, dataTable3, flag13, flag14, dataTable5, flag15, dataTable6, workValue10, workValue11, workValue, flag2, flag3, dataTable, dataTable2, vector3Builder, numberValue3, numberValue5, numberValue6, eventRegistration, textValue3, flag11, workValue5, cmgCall, workValue6, eventRegistration2, textValue4, textValue5, rageUiCall2, textValue6, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, textValue9, textValue10
numberValue = -1
numberValue7 = 1000
dataTable3 = {}
flag13 = false
flag14 = false
dataTable5 = {}
flag15 = false
dataTable6 = {}
workValue10 = nil
workValue11 = nil
workValue = nil
flag2 = false
flag3 = false
dataTable = {}
dataTable2 = {}
vector3Builder = vector3
numberValue3 = 988.996399
numberValue5 = 57.600464
numberValue6 = 79.980637
vector3Builder = vector3Builder(numberValue3, numberValue5, numberValue6)
dataTable2.tablePos = vector3Builder
dataTable2.tableHeading = 58.000015258789
dataTable2.distance = 1000.0
dataTable2.tableModel = 146696221
dataTable2.textureVariant = 2
dataTable2.objectId = 0
dataTable[0] = dataTable2
dataTable2 = {}
vector3Builder = vector3
numberValue3 = 994.685547
numberValue5 = 66.705116
numberValue6 = 79.98053
vector3Builder = vector3Builder(numberValue3, numberValue5, numberValue6)
dataTable2.tablePos = vector3Builder
dataTable2.tableHeading = 57.999980926514
dataTable2.distance = 1000.0
dataTable2.tableModel = 146696221
dataTable2.textureVariant = 2
dataTable2.objectId = 0
dataTable[1] = dataTable2
dataTable2 = {}
vector3Builder = vector3
numberValue3 = 988.979065
numberValue5 = 75.723068
numberValue6 = 79.990997
vector3Builder = vector3Builder(numberValue3, numberValue5, numberValue6)
dataTable2.tablePos = vector3Builder
dataTable2.tableHeading = 328.0
dataTable2.distance = 1000.0
dataTable2.tableModel = 146696221
dataTable2.textureVariant = 2
dataTable2.objectId = 0
dataTable[2] = dataTable2
dataTable2 = {}
vector3Builder = vec3
numberValue3 = -1898.087524
numberValue5 = 2075.5
numberValue6 = 143.86203
vector3Builder = vector3Builder(numberValue3, numberValue5, numberValue6)
dataTable2.tablePos = vector3Builder
dataTable2.tableHeading = 229.0
dataTable2.distance = 1000.0
dataTable2.tableModel = 146696221
dataTable2.textureVariant = 2
dataTable2.objectId = 0
dataTable[3] = dataTable2
dataTable3.coinflipTables = dataTable
function dataTable(arg1)
  local arg2, numberValue10, workValue7, numberValue11, numberValue12
  arg2 = -1
  numberValue10 = 0
  workValue7 = arg1
  numberValue11 = 4
  for numberValue12 = numberValue10, workValue7, numberValue11 do
    arg2 = arg2 + 1
  end
  return arg2
end
function dataTable2(arg1)
  local arg2
  if 0 == arg1 then
    arg2 = 3
    return arg2
  end
  if 1 == arg1 then
    arg2 = 2
    return arg2
  end
  if 2 == arg1 then
    arg2 = 1
    return arg2
  end
  if 3 == arg1 then
    arg2 = 0
    return arg2
  end
end
function vector3Builder(arg1)
  local arg2
  if 1 == arg1 then
    arg2 = 1
    return arg2
  end
  if 2 == arg1 then
    arg2 = 3
    return arg2
  end
  if 3 == arg1 then
    arg2 = 5
    return arg2
  end
  if 4 == arg1 then
    arg2 = 7
    return arg2
  end
end
function numberValue3(arg1)
  local arg2
  if -1 ~= arg1 then
    arg2 = arg1 % 4
    return arg2
  else
    arg2 = 100
    return arg2
  end
end
function numberValue5(arg1)
  local arg2, numberValue10, workValue7, numberValue11, numberValue12, numberValue13, numberValue14
  arg2 = dataTable
  numberValue10 = arg1
  arg2 = arg2(numberValue10)
  numberValue10 = dataTable3.coinflipTables
  numberValue10 = numberValue10[arg2]
  numberValue10 = numberValue10.objectId
  workValue7 = DoesEntityExist
  numberValue11 = numberValue10
  workValue7 = workValue7(numberValue11)
  if workValue7 then
    workValue7 = numberValue3
    numberValue11 = arg1
    workValue7 = workValue7(numberValue11)
    numberValue11 = vector3Builder
    numberValue12 = workValue7
    numberValue11 = numberValue11(numberValue12)
    numberValue12 = GetEntityBonePosition_2
    numberValue13 = numberValue10
    numberValue14 = numberValue11
    return numberValue12(numberValue13, numberValue14)
  else
    workValue7 = vector3
    numberValue11 = 0.0
    numberValue12 = 0.0
    numberValue13 = 0.0
    return workValue7(numberValue11, numberValue12, numberValue13)
  end
end
function numberValue6(arg1)
  local arg2, numberValue10, workValue7, numberValue11, numberValue12, numberValue13, numberValue14, tableHelper3
  arg2 = dataTable
  numberValue10 = arg1
  arg2 = arg2(numberValue10)
  numberValue10 = dataTable3.coinflipTables
  numberValue10 = numberValue10[arg2]
  numberValue10 = numberValue10.objectId
  workValue7 = DoesEntityExist
  numberValue11 = numberValue10
  workValue7 = workValue7(numberValue11)
  if workValue7 then
    workValue7 = numberValue3
    numberValue11 = arg1
    workValue7 = workValue7(numberValue11)
    numberValue11 = dataTable2
    numberValue12 = workValue7
    numberValue11 = numberValue11(numberValue12)
    workValue7 = numberValue11 + 1
    if 3 == workValue7 then
      numberValue11 = GetEntityBoneRotation
      numberValue12 = numberValue10
      numberValue13 = vector3Builder
      numberValue14 = workValue7
      numberValue13, numberValue14, tableHelper3 = numberValue13(numberValue14)
      numberValue11 = numberValue11(numberValue12, numberValue13, numberValue14, tableHelper3)
      numberValue12 = vector3
      numberValue13 = 0.0
      numberValue14 = 0.0
      tableHelper3 = 40.0
      numberValue12 = numberValue12(numberValue13, numberValue14, tableHelper3)
      numberValue11 = numberValue11 + numberValue12
      return numberValue11
    else
      numberValue11 = GetEntityBoneRotation
      numberValue12 = numberValue10
      numberValue13 = vector3Builder
      numberValue14 = workValue7
      numberValue13, numberValue14, tableHelper3 = numberValue13(numberValue14)
      return numberValue11(numberValue12, numberValue13, numberValue14, tableHelper3)
    end
  else
    workValue7 = vector3
    numberValue11 = 0.0
    numberValue12 = 0.0
    numberValue13 = 0.0
    return workValue7(numberValue11, numberValue12, numberValue13)
  end
end
eventRegistration = RegisterNetEvent
textValue3 = "44cf61eede"
-- Beginner: this function handles network event "44cf61eede".
function flag11(arg1)
  local arg2
  dataTable5 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "44cf61eede".
eventRegistration(textValue3, flag11)
eventRegistration = Citizen
eventRegistration = eventRegistration.CreateThread
-- Beginner: this function handles network event "44cf61eede".
function textValue3()
  local arg1, arg2, numberValue10, workValue7, numberValue11, numberValue12, numberValue13, numberValue14, tableHelper3, tableHelper4, tableHelper, tableHelper2, flag4, flag5, flag6
  arg1 = Wait
  arg2 = 1000
  arg1(arg2)
  arg1 = TriggerServerEvent
  arg2 = "0e78755a8d"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0e78755a8d".
  arg1(arg2)
  arg1 = 0
  arg2 = dataTable3.coinflipTables
  arg2 = #arg2
  numberValue10 = 1
  for workValue7 = arg1, arg2, numberValue10 do
    numberValue11 = dataTable3.coinflipTables
    numberValue11 = numberValue11[workValue7]
    numberValue12 = CMG
    numberValue12 = numberValue12.loadModel
    numberValue13 = numberValue11.tableModel
    numberValue12 = numberValue12(numberValue13)
    if numberValue12 then
      numberValue13 = dataTable3.coinflipTables
      numberValue13 = numberValue13[workValue7]
      numberValue14 = CreateObjectNoOffset
      tableHelper3 = numberValue11.tableModel
      tableHelper4 = numberValue11.tablePos
      tableHelper4 = tableHelper4.x
      tableHelper = numberValue11.tablePos
      tableHelper = tableHelper.y
      tableHelper2 = numberValue11.tablePos
      tableHelper2 = tableHelper2.z
      flag4 = false
      flag5 = false
      flag6 = false
      -- Beginner: result below is objectEntity.
      numberValue14 = numberValue14(tableHelper3, tableHelper4, tableHelper, tableHelper2, flag4, flag5, flag6)
      numberValue13.objectId = numberValue14
      numberValue13 = SetModelAsNoLongerNeeded
      numberValue14 = numberValue12
      numberValue13(numberValue14)
      numberValue13 = SetEntityHeading
      numberValue14 = dataTable3.coinflipTables
      numberValue14 = numberValue14[workValue7]
      numberValue14 = numberValue14.objectId
      tableHelper3 = numberValue11.tableHeading
      -- Beginner: Change the direction an entity is facing.
      numberValue13(numberValue14, tableHelper3)
      numberValue13 = FreezeEntityPosition
      numberValue14 = dataTable3.coinflipTables
      numberValue14 = numberValue14[workValue7]
      numberValue14 = numberValue14.objectId
      tableHelper3 = true
      -- Beginner: Freeze or unfreeze an entity in place.
      numberValue13(numberValue14, tableHelper3)
      numberValue13 = SetObjectTextureVariation
      numberValue14 = dataTable3.coinflipTables
      numberValue14 = numberValue14[workValue7]
      numberValue14 = numberValue14.objectId
      tableHelper3 = dataTable3.coinflipTables
      tableHelper3 = tableHelper3[workValue7]
      tableHelper3 = tableHelper3.textureVariant
      numberValue13(numberValue14, tableHelper3)
    end
  end
  while true do
    arg1 = 1000
    numberValue7 = arg1
    arg1 = -1
    numberValue = arg1
    arg1 = GetEntityCoords
    arg2 = PlayerPedId
    arg2, numberValue10, workValue7, numberValue11, numberValue12, numberValue13, numberValue14, tableHelper3, tableHelper4, tableHelper, tableHelper2, flag4, flag5, flag6 = arg2()
    -- Beginner: result below is entityCoords.
    arg1 = arg1(arg2, numberValue10, workValue7, numberValue11, numberValue12, numberValue13, numberValue14, tableHelper3, tableHelper4, tableHelper, tableHelper2, flag4, flag5, flag6)
    arg2 = 0
    numberValue10 = dataTable3.coinflipTables
    numberValue10 = #numberValue10
    numberValue10 = numberValue10 + 1
    numberValue10 = numberValue10 * 4
    numberValue10 = numberValue10 - 1
    workValue7 = 1
    for numberValue11 = arg2, numberValue10, workValue7 do
      numberValue12 = numberValue5
      numberValue13 = numberValue11
      numberValue12 = numberValue12(numberValue13)
      numberValue13 = vector3
      numberValue14 = 0.0
      tableHelper3 = 0.0
      tableHelper4 = 0.0
      numberValue13 = numberValue13(numberValue14, tableHelper3, tableHelper4)
      if numberValue12 ~= numberValue13 then
        numberValue13 = arg1 - numberValue12
        numberValue13 = #numberValue13
        numberValue14 = numberValue7
        if numberValue13 < numberValue14 then
          numberValue7 = numberValue13
          numberValue = numberValue11
        end
      end
    end
    arg2 = Wait
    numberValue10 = 100
    arg2(numberValue10)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration(textValue3)
eventRegistration = AddEventHandler
textValue3 = "onResourceStop"
-- Beginner: this function runs when client event "onResourceStop" fires.
function flag11(arg1)
  local arg2, numberValue10, workValue7, numberValue11, numberValue12, numberValue13, numberValue14, tableHelper3
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = pairs
    numberValue10 = dataTable3.coinflipTables
    arg2, numberValue10, workValue7, numberValue11 = arg2(numberValue10)
    for numberValue12, numberValue13 in arg2, numberValue10, workValue7, numberValue11 do
      numberValue14 = DeleteObject
      tableHelper3 = dataTable3.coinflipTables
      tableHelper3 = tableHelper3[numberValue12]
      tableHelper3 = tableHelper3.objectId
      numberValue14(tableHelper3)
    end
  end
end
-- Beginner: Register a client-side event handler. Event/command: "onResourceStop".
eventRegistration(textValue3, flag11)
function eventRegistration(arg1)
  local arg2, numberValue10, workValue7, numberValue11, numberValue12
  arg2 = RageUI
  arg2 = arg2.CloseAll
  arg2()
  arg2 = RageUI
  arg2 = arg2.Visible
  numberValue10 = RMenu
  workValue7 = numberValue10
  numberValue10 = numberValue10.Get
  numberValue11 = "cmgcoinflip"
  numberValue12 = "instructions"
  -- Beginner: result below is menu.
  numberValue10 = numberValue10(workValue7, numberValue11, numberValue12)
  workValue7 = arg1
  arg2(numberValue10, workValue7)
end
function textValue3(arg1)
  local arg2, numberValue10, workValue7, numberValue11, numberValue12
  arg2 = RageUI
  arg2 = arg2.CloseAll
  arg2()
  arg2 = RageUI
  arg2 = arg2.Visible
  numberValue10 = RMenu
  workValue7 = numberValue10
  numberValue10 = numberValue10.Get
  numberValue11 = "cmgcoinflip"
  numberValue12 = "mainmenu"
  -- Beginner: result below is menu.
  numberValue10 = numberValue10(workValue7, numberValue11, numberValue12)
  workValue7 = arg1
  arg2(numberValue10, workValue7)
end
flag11 = false
function workValue5()
  local arg1, arg2, numberValue10, workValue7, numberValue11, numberValue12, numberValue13, numberValue14, tableHelper3, tableHelper4, tableHelper, tableHelper2, flag4
  arg1 = flag13
  if arg1 then
    arg1 = flag3
    if arg1 then
      arg1 = TaskPlayAnim
      arg2 = CMG
      arg2 = arg2.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg2 = arg2()
      numberValue10 = "anim_casino_b@amb@casino@games@shared@player@"
      workValue7 = "idle_cardgames"
      numberValue11 = 1.0
      numberValue12 = 1.0
      numberValue13 = -1
      numberValue14 = 0
      tableHelper3 = 0.0
      tableHelper4 = false
      tableHelper = false
      tableHelper2 = false
      -- Beginner: Play an animation on a ped.
      arg1(arg2, numberValue10, workValue7, numberValue11, numberValue12, numberValue13, numberValue14, tableHelper3, tableHelper4, tableHelper, tableHelper2)
    end
    arg1 = flag2
    if not arg1 then
      arg1 = IsControlJustPressed
      arg2 = 0
      numberValue10 = 202
      arg1 = arg1(arg2, numberValue10)
      if arg1 then
        arg1 = flag15
        if not arg1 then
          arg1 = RageUI
          arg1 = arg1.Visible
          arg2 = RMenu
          numberValue10 = arg2
          arg2 = arg2.Get
          workValue7 = "cmgcoinflip"
          numberValue11 = "confirm"
          arg2, numberValue10, workValue7, numberValue11, numberValue12, numberValue13, numberValue14, tableHelper3, tableHelper4, tableHelper, tableHelper2, flag4 = arg2(numberValue10, workValue7, numberValue11)
          -- Beginner: result below is menuVisible.
          arg1 = arg1(arg2, numberValue10, workValue7, numberValue11, numberValue12, numberValue13, numberValue14, tableHelper3, tableHelper4, tableHelper, tableHelper2, flag4)
          if not arg1 then
            arg1 = CMG
            arg1 = arg1.loadAnimDict
            arg2 = "anim_casino_b@amb@casino@games@shared@player@"
            arg1 = arg1(arg2)
            arg2 = TaskPlayAnim
            numberValue10 = CMG
            numberValue10 = numberValue10.getPlayerPed
            -- Beginner: result below is localPlayerPed.
            numberValue10 = numberValue10()
            workValue7 = arg1
            numberValue11 = "sit_exit_left"
            numberValue12 = 1.0
            numberValue13 = 1.0
            numberValue14 = 2500
            tableHelper3 = 0
            tableHelper4 = 0.0
            tableHelper = false
            tableHelper2 = false
            flag4 = false
            arg2(numberValue10, workValue7, numberValue11, numberValue12, numberValue13, numberValue14, tableHelper3, tableHelper4, tableHelper, tableHelper2, flag4)
            arg2 = RemoveAnimDict
            numberValue10 = "anim_casino_b@amb@casino@games@shared@player@"
            arg2(numberValue10)
            arg2 = tCMG
            arg2 = arg2.setCanAnim
            numberValue10 = true
            arg2(numberValue10)
            arg2 = false
            flag13 = arg2
            arg2 = true
            flag14 = arg2
            arg2 = eventRegistration
            numberValue10 = false
            -- Beginner: Register a client-side event handler. Event/command: false.
            arg2(numberValue10)
            arg2 = TriggerServerEvent
            numberValue10 = "62da5de2d3"
            workValue7 = true
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "62da5de2d3".
            arg2(numberValue10, workValue7)
            arg2 = TriggerServerEvent
            numberValue10 = "811c680e2f"
            arg2(numberValue10)
            arg2 = {}
            dataTable6 = arg2
            arg2 = false
            flag3 = arg2
            arg2 = SetTimeout
            numberValue10 = 5000
            function workValue7()
              local flag, flag10
              flag = false
              flag14 = flag
            end
            arg2(numberValue10, workValue7)
          end
        end
      end
    end
    arg1 = numberValue7
    if arg1 > 5 then
      arg1 = ClearHelp
      arg2 = true
      arg1(arg2)
      arg1 = eventRegistration
      arg2 = false
      -- Beginner: Register a client-side event handler. Event/command: false.
      arg1(arg2)
      arg1 = false
      flag11 = arg1
      arg1 = flag13
      if arg1 then
        arg1 = tCMG
        arg1 = arg1.setCanAnim
        arg2 = true
        arg1(arg2)
        arg1 = false
        flag13 = arg1
        arg1 = true
        flag14 = arg1
        arg1 = eventRegistration
        arg2 = false
        -- Beginner: Register a client-side event handler. Event/command: false.
        arg1(arg2)
        arg1 = TriggerServerEvent
        arg2 = "62da5de2d3"
        numberValue10 = true
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "62da5de2d3".
        arg1(arg2, numberValue10)
        arg1 = TriggerServerEvent
        arg2 = "811c680e2f"
        arg1(arg2)
        arg1 = false
        flag3 = arg1
        arg1 = {}
        dataTable6 = arg1
      end
    end
  end
  arg1 = flag13
  if not arg1 then
    arg1 = numberValue
    if -1 ~= arg1 then
      arg1 = numberValue7
      if arg1 < 2 then
        arg1 = IsControlJustPressed
        arg2 = 0
        numberValue10 = 38
        arg1 = arg1(arg2, numberValue10)
        if arg1 then
          arg1 = TriggerServerEvent
          arg2 = "0e78755a8d"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0e78755a8d".
          arg1(arg2)
          arg2 = numberValue
          arg1 = dataTable5
          arg1 = arg1[arg2]
          if false == arg1 then
            arg1 = TriggerServerEvent
            arg2 = "e3209e9c43"
            numberValue10 = numberValue
            arg1(arg2, numberValue10)
          end
        end
      end
    end
  end
  arg1 = flag13
  if not arg1 then
    arg1 = numberValue
    if -1 ~= arg1 then
      arg1 = numberValue7
      if arg1 < 2 then
        arg1 = flag14
        if not arg1 then
          arg2 = numberValue
          arg1 = dataTable5
          arg1 = arg1[arg2]
          if false == arg1 then
            arg1 = drawNativeNotification
            arg2 = "Press ~INPUT_PICKUP~ to play Coinflip"
            -- Beginner: Show a GTA-style notification/help prompt.
            arg1(arg2)
          else
            arg1 = drawNativeNotification
            arg2 = "This seat is taken."
            arg1(arg2)
          end
          arg1 = eventRegistration
          arg2 = true
          -- Beginner: Register a client-side event handler. Event/command: true.
          arg1(arg2)
          arg1 = flag11
          if not arg1 then
            arg1 = true
            flag11 = arg1
            arg1 = PlaySoundFrontend
            arg2 = -1
            numberValue10 = "DLC_VW_RULES"
            workValue7 = "dlc_vw_table_games_frontend_sounds"
            numberValue11 = true
            arg1(arg2, numberValue10, workValue7, numberValue11)
            arg1 = PlaySoundFrontend
            arg2 = -1
            numberValue10 = "DLC_VW_WIN_CHIPS"
            workValue7 = "dlc_vw_table_games_frontend_sounds"
            numberValue11 = true
            arg1(arg2, numberValue10, workValue7, numberValue11)
          end
        end
      end
    end
  end
end
cmgCall = CMG
cmgCall = cmgCall.createThreadOnTick
workValue6 = workValue5
eventRegistration2 = "Casino Coinflip Tick"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall(workValue6, eventRegistration2)
function cmgCall(arg1)
  local arg2
  if 0 == arg1 then
    arg2 = "sit_enter_left"
    return arg2
  elseif 1 == arg1 then
    arg2 = "sit_enter_left_side"
    return arg2
  elseif 2 == arg1 then
    arg2 = "sit_enter_right_side"
    return arg2
  end
  arg2 = "sit_enter_left"
  return arg2
end
function workValue6(arg1)
  local arg2, numberValue10, workValue7, numberValue11, numberValue12, numberValue13, numberValue14, tableHelper3, tableHelper4, tableHelper, tableHelper2, flag4, flag5, flag6, numberValue2, numberValue4, flag7, flag8, flag9, numberValue8, numberValue9, flag12
  arg2 = true
  flag15 = arg2
  arg2 = tCMG
  arg2 = arg2.setCanAnim
  numberValue10 = false
  arg2(numberValue10)
  arg2 = true
  flag13 = arg2
  arg2 = true
  flag14 = arg2
  arg2 = SetTimeout
  numberValue10 = 2500
  function workValue7()
    local flag, flag10
    flag = false
    flag14 = flag
    flag = eventRegistration
    flag10 = false
    -- Beginner: Register a client-side event handler. Event/command: false.
    flag(flag10)
    flag = textValue3
    flag10 = true
    flag(flag10)
    flag = true
    flag3 = flag
  end
  arg2(numberValue10, workValue7)
  arg2 = drawNativeNotification
  numberValue10 = "Waiting for next game to start..."
  -- Beginner: Show a GTA-style notification/help prompt.
  arg2(numberValue10)
  arg2 = {}
  numberValue10 = "anim_casino_b@amb@casino@games@blackjack@dealer"
  workValue7 = "anim_casino_b@amb@casino@games@shared@dealer@"
  numberValue11 = "anim_casino_b@amb@casino@games@blackjack@player"
  numberValue12 = "anim_casino_b@amb@casino@games@shared@player@"
  arg2[1] = numberValue10
  arg2[2] = workValue7
  arg2[3] = numberValue11
  arg2[4] = numberValue12
  numberValue10 = pairs
  workValue7 = arg2
  numberValue10, workValue7, numberValue11, numberValue12 = numberValue10(workValue7)
  for numberValue13, numberValue14 in numberValue10, workValue7, numberValue11, numberValue12 do
    tableHelper3 = CMG
    tableHelper3 = tableHelper3.loadAnimDict
    tableHelper4 = numberValue14
    -- Beginner: Load a GTA animation dictionary before using it.
    tableHelper3(tableHelper4)
  end
  numberValue10 = dataTable
  workValue7 = arg1
  numberValue10 = numberValue10(workValue7)
  workValue7 = dataTable3.coinflipTables
  workValue7 = workValue7[numberValue10]
  workValue7 = workValue7.tablePos
  numberValue11 = numberValue3
  numberValue12 = arg1
  numberValue11 = numberValue11(numberValue12)
  numberValue12 = GetAnimInitialOffsetPosition
  numberValue13 = "anim_casino_b@amb@casino@games@shared@player@"
  numberValue14 = cmgCall
  tableHelper3 = numberValue11
  numberValue14 = numberValue14(tableHelper3)
  tableHelper3 = workValue7.x
  tableHelper4 = workValue7.y
  tableHelper = workValue7.z
  tableHelper2 = 0.0
  flag4 = 0.0
  flag5 = 0.0
  flag6 = 0.01
  numberValue2 = 2
  numberValue12 = numberValue12(numberValue13, numberValue14, tableHelper3, tableHelper4, tableHelper, tableHelper2, flag4, flag5, flag6, numberValue2)
  numberValue13 = GetAnimInitialOffsetRotation
  numberValue14 = "anim_casino_b@amb@casino@games@shared@player@"
  tableHelper3 = cmgCall
  tableHelper4 = numberValue11
  tableHelper3 = tableHelper3(tableHelper4)
  tableHelper4 = workValue7.x
  tableHelper = workValue7.y
  tableHelper2 = workValue7.z
  flag4 = 0.0
  flag5 = 0.0
  flag6 = 0.0
  numberValue2 = 0.01
  numberValue4 = 2
  numberValue13 = numberValue13(numberValue14, tableHelper3, tableHelper4, tableHelper, tableHelper2, flag4, flag5, flag6, numberValue2, numberValue4)
  numberValue14 = TaskGoStraightToCoord
  tableHelper3 = CMG
  tableHelper3 = tableHelper3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  tableHelper3 = tableHelper3()
  tableHelper4 = numberValue12.x
  tableHelper = numberValue12.y
  tableHelper2 = numberValue12.z
  flag4 = 1.0
  flag5 = 5000
  flag6 = numberValue13.z
  numberValue2 = 0.01
  numberValue14(tableHelper3, tableHelper4, tableHelper, tableHelper2, flag4, flag5, flag6, numberValue2)
  numberValue14 = Wait
  tableHelper3 = 500
  numberValue14(tableHelper3)
  numberValue14 = numberValue5
  tableHelper3 = arg1
  numberValue14 = numberValue14(tableHelper3)
  tableHelper3 = numberValue6
  tableHelper4 = arg1
  tableHelper3 = tableHelper3(tableHelper4)
  tableHelper4 = NetworkCreateSynchronisedScene
  tableHelper = numberValue14.x
  tableHelper2 = numberValue14.y
  flag4 = numberValue14.z
  flag5 = tableHelper3.x
  flag6 = tableHelper3.y
  numberValue2 = tableHelper3.z
  numberValue4 = 2
  flag7 = true
  flag8 = false
  flag9 = 1065353216
  numberValue8 = 0
  numberValue9 = 1065353216
  tableHelper4 = tableHelper4(tableHelper, tableHelper2, flag4, flag5, flag6, numberValue2, numberValue4, flag7, flag8, flag9, numberValue8, numberValue9)
  tableHelper = NetworkAddPedToSynchronisedScene
  tableHelper2 = CMG
  tableHelper2 = tableHelper2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  tableHelper2 = tableHelper2()
  flag4 = tableHelper4
  flag5 = "anim_casino_b@amb@casino@games@shared@player@"
  flag6 = cmgCall
  numberValue2 = numberValue11
  flag6 = flag6(numberValue2)
  numberValue2 = 2.0
  numberValue4 = -2.0
  flag7 = 13
  flag8 = 16
  flag9 = 2.0
  numberValue8 = 0
  tableHelper(tableHelper2, flag4, flag5, flag6, numberValue2, numberValue4, flag7, flag8, flag9, numberValue8)
  tableHelper = NetworkStartSynchronisedScene
  tableHelper2 = tableHelper4
  tableHelper(tableHelper2)
  tableHelper = Citizen
  tableHelper = tableHelper.InvokeNative
  tableHelper2 = 8773263032172758242
  flag4 = -2124244681
  tableHelper(tableHelper2, flag4)
  tableHelper = Wait
  tableHelper2 = 6000
  tableHelper(tableHelper2)
  tableHelper = NetworkCreateSynchronisedScene
  tableHelper2 = numberValue14.x
  flag4 = numberValue14.y
  flag5 = numberValue14.z
  flag6 = tableHelper3.x
  numberValue2 = tableHelper3.y
  numberValue4 = tableHelper3.z
  flag7 = 2
  flag8 = true
  flag9 = true
  numberValue8 = 1065353216
  numberValue9 = 0
  flag12 = 1065353216
  tableHelper = tableHelper(tableHelper2, flag4, flag5, flag6, numberValue2, numberValue4, flag7, flag8, flag9, numberValue8, numberValue9, flag12)
  Locali98f_55 = tableHelper
  tableHelper = NetworkAddPedToSynchronisedScene
  tableHelper2 = CMG
  tableHelper2 = tableHelper2.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  tableHelper2 = tableHelper2()
  flag4 = Locali98f_55
  flag5 = "anim_casino_b@amb@casino@games@shared@player@"
  flag6 = "idle_cardgames"
  numberValue2 = 2.0
  numberValue4 = -2.0
  flag7 = 13
  flag8 = 16
  flag9 = 1148846080
  numberValue8 = 0
  tableHelper(tableHelper2, flag4, flag5, flag6, numberValue2, numberValue4, flag7, flag8, flag9, numberValue8)
  tableHelper = NetworkStartSynchronisedScene
  tableHelper2 = Locali98f_55
  tableHelper(tableHelper2)
  tableHelper = StartAudioScene
  tableHelper2 = "DLC_VW_Casino_Table_Games"
  tableHelper(tableHelper2)
  tableHelper = Citizen
  tableHelper = tableHelper.InvokeNative
  tableHelper2 = 8773263032172758242
  flag4 = -2124244681
  tableHelper(tableHelper2, flag4)
  tableHelper = false
  flag15 = tableHelper
end
eventRegistration2 = RegisterNetEvent
textValue4 = "731deb5940"
-- Beginner: this function handles network event "731deb5940".
function textValue5(arg1, arg2)
  local numberValue10, workValue7
  if arg2 then
    workValue7 = arg2.betId
    numberValue10 = dataTable6
    numberValue10[workValue7] = arg2
  end
  numberValue10 = workValue6
  workValue7 = arg1
  numberValue10(workValue7)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "731deb5940".
eventRegistration2(textValue4, textValue5)
eventRegistration2 = RMenu
eventRegistration2 = eventRegistration2.Add
textValue4 = "cmgcoinflip"
textValue5 = "instructions"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue6 = ""
textValue8 = "~b~COINFLIP"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
rageUiCall5 = "cmg_coinflip"
textValue9 = "cmg_coinflip"
rageUiCall2, textValue6, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, textValue9, textValue10 = rageUiCall2(textValue6, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, textValue9)
eventRegistration2(textValue4, textValue5, rageUiCall2, textValue6, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, textValue9, textValue10)
eventRegistration2 = RMenu
eventRegistration2 = eventRegistration2.Add
textValue4 = "cmgcoinflip"
textValue5 = "mainmenu"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue6 = ""
textValue8 = "~b~COINFLIP"
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuWidth
rageUiCall3 = rageUiCall3()
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuHeight
rageUiCall4 = rageUiCall4()
rageUiCall5 = "cmg_coinflip"
textValue9 = "cmg_coinflip"
rageUiCall2, textValue6, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, textValue9, textValue10 = rageUiCall2(textValue6, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, textValue9)
eventRegistration2(textValue4, textValue5, rageUiCall2, textValue6, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, textValue9, textValue10)
eventRegistration2 = RMenu
eventRegistration2 = eventRegistration2.Add
textValue4 = "cmgcoinflip"
textValue5 = "confirm"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateSubMenu
textValue6 = RMenu
textValue8 = textValue6
textValue6 = textValue6.Get
rageUiCall3 = "cmgcoinflip"
rageUiCall4 = "mainmenu"
-- Beginner: result below is menu.
textValue6 = textValue6(textValue8, rageUiCall3, rageUiCall4)
textValue8 = ""
rageUiCall3 = "~b~COINFLIP"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5 = rageUiCall5()
textValue9 = "cmg_coinflip"
textValue10 = "cmg_coinflip"
rageUiCall2, textValue6, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, textValue9, textValue10 = rageUiCall2(textValue6, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, textValue9, textValue10)
eventRegistration2(textValue4, textValue5, rageUiCall2, textValue6, textValue8, rageUiCall3, rageUiCall4, rageUiCall5, textValue9, textValue10)
eventRegistration2 = RageUI
eventRegistration2 = eventRegistration2.CreateWhile
textValue4 = 1.0
textValue5 = RMenu
rageUiCall2 = textValue5
textValue5 = textValue5.Get
textValue6 = "cmgcoinflip"
textValue8 = "instructions"
-- Beginner: result below is menu.
textValue5 = textValue5(rageUiCall2, textValue6, textValue8)
rageUiCall2 = nil
function textValue6()
  local arg1, arg2, numberValue10, workValue7, numberValue11, numberValue12, numberValue13
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  numberValue10 = arg2
  arg2 = arg2.Get
  workValue7 = "cmgcoinflip"
  numberValue11 = "instructions"
  -- Beginner: result below is menu.
  arg2 = arg2(numberValue10, workValue7, numberValue11)
  numberValue10 = true
  workValue7 = true
  numberValue11 = true
  function numberValue12()
    local flag, flag10
    flag = RageUI
    flag = flag.Separator
    flag10 = "Propose a bet, or accept a proposed bet."
    flag(flag10)
    flag = RageUI
    flag = flag.Separator
    flag10 = "Flip a coin against your opponent, winner takes all!"
    flag(flag10)
    flag = RageUI
    flag = flag.Separator
    flag10 = "Minimum \194\163100,000 per coinflip."
    flag(flag10)
  end
  function numberValue13()
    local flag, flag10
  end
  arg1(arg2, numberValue10, workValue7, numberValue11, numberValue12, numberValue13)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  numberValue10 = arg2
  arg2 = arg2.Get
  workValue7 = "cmgcoinflip"
  numberValue11 = "mainmenu"
  -- Beginner: result below is menu.
  arg2 = arg2(numberValue10, workValue7, numberValue11)
  numberValue10 = true
  workValue7 = true
  numberValue11 = true
  function numberValue12()
    local flag, flag10, textValue7, dataTable4, rageUiCall6, workValue8, rageUiCall7, textValue12, textValue13, dataTable7, rageUiCall, workValue2, workValue3, workValue4, textValue, textValue2
    flag = RageUI
    flag = flag.ButtonWithStyle
    flag10 = "Propose Bet"
    textValue7 = ""
    dataTable4 = {}
    dataTable4.RightLabel = "\226\134\146\226\134\146\226\134\146"
    rageUiCall6 = true
    function workValue8(arg12, arg22, arg3)
      local cmgCall2, serverEventCall, textValue11, workValue9
      if arg3 then
        cmgCall2 = CMG
        cmgCall2 = cmgCall2.GetRageInputInt
        serverEventCall = "Bet Amount"
        cmgCall2 = cmgCall2(serverEventCall)
        if cmgCall2 and cmgCall2 > 0 then
          serverEventCall = TriggerServerEvent
          textValue11 = "b36ea66630"
          workValue9 = cmgCall2
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "b36ea66630".
          serverEventCall(textValue11, workValue9)
        end
      end
    end
    -- Beginner: Draw a selectable RageUI menu button.
    flag(flag10, textValue7, dataTable4, rageUiCall6, workValue8)
    flag = RageUI
    flag = flag.Separator
    flag10 = "---"
    flag(flag10)
    flag = table
    flag = flag.count
    flag10 = dataTable6
    -- Beginner: result below is count.
    flag = flag(flag10)
    if flag > 0 then
      flag = pairs
      flag10 = dataTable6
      flag, flag10, textValue7, dataTable4 = flag(flag10)
      for rageUiCall6, workValue8 in flag, flag10, textValue7, dataTable4 do
        rageUiCall7 = RageUI
        rageUiCall7 = rageUiCall7.ButtonWithStyle
        textValue12 = "~y~\194\163"
        textValue13 = getMoneyStringFormatted
        dataTable7 = workValue8.betAmount
        textValue13 = textValue13(dataTable7)
        textValue12 = textValue12 .. textValue13
        textValue13 = ""
        dataTable7 = {}
        rageUiCall = RageUI
        rageUiCall = rageUiCall.BadgeStyle
        rageUiCall = rageUiCall.GoldMedal
        dataTable7.RightBadge = rageUiCall
        rageUiCall = true
        function workValue2(arg12, arg22, arg3)
          local cmgCall2, serverEventCall, textValue11
          if arg3 then
            cmgCall2 = rageUiCall6
            workValue10 = cmgCall2
            cmgCall2 = "\194\163"
            serverEventCall = getMoneyStringFormatted
            textValue11 = workValue8.betAmount
            serverEventCall = serverEventCall(textValue11)
            cmgCall2 = cmgCall2 .. serverEventCall
            workValue11 = cmgCall2
            cmgCall2 = workValue8.user_id
            serverEventCall = CMG
            serverEventCall = serverEventCall.getClientUserId
            -- Beginner: result below is userId.
            serverEventCall = serverEventCall()
            if cmgCall2 == serverEventCall then
              cmgCall2 = true
              workValue = cmgCall2
            else
              cmgCall2 = false
              workValue = cmgCall2
            end
          end
        end
        workValue3 = RMenu
        workValue4 = workValue3
        workValue3 = workValue3.Get
        textValue = "cmgcoinflip"
        textValue2 = "confirm"
        workValue3, workValue4, textValue, textValue2 = workValue3(workValue4, textValue, textValue2)
        -- Beginner: Draw a selectable RageUI menu button.
        rageUiCall7(textValue12, textValue13, dataTable7, rageUiCall, workValue2, workValue3, workValue4, textValue, textValue2)
      end
    else
      flag = RageUI
      flag = flag.Separator
      flag10 = "~r~No pending bets."
      flag(flag10)
    end
  end
  function numberValue13()
    local flag, flag10
  end
  arg1(arg2, numberValue10, workValue7, numberValue11, numberValue12, numberValue13)
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  numberValue10 = arg2
  arg2 = arg2.Get
  workValue7 = "cmgcoinflip"
  numberValue11 = "confirm"
  -- Beginner: result below is menu.
  arg2 = arg2(numberValue10, workValue7, numberValue11)
  numberValue10 = true
  workValue7 = true
  numberValue11 = true
  function numberValue12()
    local flag, flag10, textValue7, dataTable4, rageUiCall6, workValue8, rageUiCall7, textValue12, textValue13, dataTable7
    flag10 = workValue10
    flag = dataTable6
    flag = flag[flag10]
    if not flag then
      flag = RageUI
      flag = flag.GoBack
      flag()
      return
    end
    flag = RageUI
    flag = flag.Separator
    flag10 = "Coinflip "
    textValue7 = workValue11
    dataTable4 = "?"
    flag10 = flag10 .. textValue7 .. dataTable4
    flag(flag10)
    flag = workValue
    if flag then
      flag = RageUI
      flag = flag.Separator
      flag10 = "~y~This is your pending proposal."
      flag(flag10)
      flag = RageUI
      flag = flag.ButtonWithStyle
      flag10 = "Cancel Bet"
      textValue7 = ""
      dataTable4 = {}
      rageUiCall6 = RageUI
      rageUiCall6 = rageUiCall6.BadgeStyle
      rageUiCall6 = rageUiCall6.Tick
      dataTable4.RightBadge = rageUiCall6
      rageUiCall6 = true
      function workValue8(arg12, arg22, arg3)
        local cmgCall2, serverEventCall
        if arg3 then
          cmgCall2 = TriggerServerEvent
          serverEventCall = "62da5de2d3"
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "62da5de2d3".
          cmgCall2(serverEventCall)
        end
      end
      rageUiCall7 = RMenu
      textValue12 = rageUiCall7
      rageUiCall7 = rageUiCall7.Get
      textValue13 = "cmgcoinflip"
      dataTable7 = "mainmenu"
      rageUiCall7, textValue12, textValue13, dataTable7 = rageUiCall7(textValue12, textValue13, dataTable7)
      -- Beginner: Draw a selectable RageUI menu button.
      flag(flag10, textValue7, dataTable4, rageUiCall6, workValue8, rageUiCall7, textValue12, textValue13, dataTable7)
      flag = RageUI
      flag = flag.ButtonWithStyle
      flag10 = "Return"
      textValue7 = ""
      dataTable4 = {}
      rageUiCall6 = RageUI
      rageUiCall6 = rageUiCall6.BadgeStyle
      rageUiCall6 = rageUiCall6.Alert
      dataTable4.RightBadge = rageUiCall6
      rageUiCall6 = true
      function workValue8(arg12, arg22, arg3)
      end
      rageUiCall7 = RMenu
      textValue12 = rageUiCall7
      rageUiCall7 = rageUiCall7.Get
      textValue13 = "cmgcoinflip"
      dataTable7 = "mainmenu"
      rageUiCall7, textValue12, textValue13, dataTable7 = rageUiCall7(textValue12, textValue13, dataTable7)
      flag(flag10, textValue7, dataTable4, rageUiCall6, workValue8, rageUiCall7, textValue12, textValue13, dataTable7)
    else
      flag = RageUI
      flag = flag.ButtonWithStyle
      flag10 = "Accept"
      textValue7 = ""
      dataTable4 = {}
      rageUiCall6 = RageUI
      rageUiCall6 = rageUiCall6.BadgeStyle
      rageUiCall6 = rageUiCall6.Tick
      dataTable4.RightBadge = rageUiCall6
      rageUiCall6 = true
      function workValue8(arg12, arg22, arg3)
        local cmgCall2, serverEventCall, textValue11
        if arg3 then
          cmgCall2 = TriggerServerEvent
          serverEventCall = "8f787c7423"
          textValue11 = workValue10
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8f787c7423".
          cmgCall2(serverEventCall, textValue11)
        end
      end
      rageUiCall7 = RMenu
      textValue12 = rageUiCall7
      rageUiCall7 = rageUiCall7.Get
      textValue13 = "cmgcoinflip"
      dataTable7 = "mainmenu"
      rageUiCall7, textValue12, textValue13, dataTable7 = rageUiCall7(textValue12, textValue13, dataTable7)
      -- Beginner: Draw a selectable RageUI menu button.
      flag(flag10, textValue7, dataTable4, rageUiCall6, workValue8, rageUiCall7, textValue12, textValue13, dataTable7)
      flag = RageUI
      flag = flag.ButtonWithStyle
      flag10 = "Decline"
      textValue7 = ""
      dataTable4 = {}
      rageUiCall6 = RageUI
      rageUiCall6 = rageUiCall6.BadgeStyle
      rageUiCall6 = rageUiCall6.Alert
      dataTable4.RightBadge = rageUiCall6
      rageUiCall6 = true
      function workValue8(arg12, arg22, arg3)
      end
      rageUiCall7 = RMenu
      textValue12 = rageUiCall7
      rageUiCall7 = rageUiCall7.Get
      textValue13 = "cmgcoinflip"
      dataTable7 = "mainmenu"
      rageUiCall7, textValue12, textValue13, dataTable7 = rageUiCall7(textValue12, textValue13, dataTable7)
      flag(flag10, textValue7, dataTable4, rageUiCall6, workValue8, rageUiCall7, textValue12, textValue13, dataTable7)
    end
  end
  function numberValue13()
    local flag, flag10
  end
  arg1(arg2, numberValue10, workValue7, numberValue11, numberValue12, numberValue13)
end
eventRegistration2(textValue4, textValue5, rageUiCall2, textValue6)
eventRegistration2 = AddEventHandler
textValue4 = "CMG:onClientSpawn"
-- Beginner: this function runs when client event "CMG:onClientSpawn" fires.
function textValue5(arg1, arg2)
  local numberValue10, workValue7
  if arg2 then
    numberValue10 = TriggerServerEvent
    workValue7 = "0e78755a8d"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0e78755a8d".
    numberValue10(workValue7)
  end
end
-- Beginner: Register a client-side event handler. Event/command: "CMG:onClientSpawn".
eventRegistration2(textValue4, textValue5)
eventRegistration2 = RegisterNetEvent
textValue4 = "422fe636f4"
-- Beginner: this function handles network event "422fe636f4".
function textValue5(arg1, arg2)
  local numberValue10
  numberValue10 = dataTable6
  numberValue10[arg1] = arg2
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "422fe636f4".
eventRegistration2(textValue4, textValue5)
eventRegistration2 = RegisterNetEvent
textValue4 = "66c3c7f283"
-- Beginner: this function handles network event "66c3c7f283".
function textValue5(arg1)
  local arg2
  arg2 = dataTable6
  arg2[arg1] = nil
end
eventRegistration2(textValue4, textValue5)
eventRegistration2 = RegisterNetEvent
textValue4 = "a135fcb71f"
-- Beginner: this function handles network event "a135fcb71f".
function textValue5()
  local arg1, arg2
  arg1 = {}
  dataTable6 = arg1
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a135fcb71f".
eventRegistration2(textValue4, textValue5)
eventRegistration2 = RegisterNetEvent
textValue4 = "8f14d55f05"
-- Beginner: this function handles network event "8f14d55f05".
function textValue5(arg1, arg2)
  local numberValue10, workValue7, numberValue11, numberValue12, numberValue13, numberValue14, tableHelper3, tableHelper4, tableHelper, tableHelper2, flag4, flag5, flag6, numberValue2, numberValue4, flag7, flag8, flag9, numberValue8, numberValue9, flag12
  numberValue10 = true
  flag2 = numberValue10
  numberValue10 = textValue3
  workValue7 = false
  numberValue10(workValue7)
  numberValue10 = SendNUIMessage
  workValue7 = {}
  workValue7.transactionType = "jackpotroll"
  -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
  numberValue10(workValue7)
  numberValue10 = Scaleform
  workValue7 = "MP_BIG_MESSAGE_FREEMODE"
  numberValue10 = numberValue10(workValue7)
  workValue7 = false
  numberValue11 = false
  numberValue12 = SetTimeout
  numberValue13 = 10000
  function numberValue14()
    local flag, flag10, textValue7, dataTable4
    flag = true
    workValue7 = flag
    flag = arg1
    if flag then
      flag = tCMG
      flag = flag.notify
      flag10 = "~g~ You won \194\163"
      textValue7 = getMoneyStringFormatted
      dataTable4 = arg2.amount
      textValue7 = textValue7(dataTable4)
      dataTable4 = "!"
      flag10 = flag10 .. textValue7 .. dataTable4
      -- Beginner: Show a notification to the player.
      flag(flag10)
      flag = SendNUIMessage
      flag10 = {}
      flag10.transactionType = "playCasinoWin"
      -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
      flag(flag10)
    else
      flag = tCMG
      flag = flag.notify
      flag10 = "~r~ You lost \194\163"
      textValue7 = getMoneyStringFormatted
      dataTable4 = arg2.amount
      textValue7 = textValue7(dataTable4)
      dataTable4 = "!"
      flag10 = flag10 .. textValue7 .. dataTable4
      -- Beginner: Show a notification to the player.
      flag(flag10)
      flag = SendNUIMessage
      flag10 = {}
      flag10.transactionType = "playCasinoLose"
      -- Beginner: Send data from Lua to an HTML/JavaScript NUI interface.
      flag(flag10)
    end
  end
  numberValue12(numberValue13, numberValue14)
  numberValue12 = SetTimeout
  numberValue13 = 15000
  function numberValue14()
    local flag, flag10
    flag = true
    numberValue11 = flag
  end
  numberValue12(numberValue13, numberValue14)
  numberValue12 = false
  numberValue13 = 0.0
  numberValue14 = 2.71828182846
  tableHelper3 = 0.0
  tableHelper4 = CMG
  tableHelper4 = tableHelper4.getPlayerCoords
  -- Beginner: result below is playerCoords.
  tableHelper4 = tableHelper4()
  while not numberValue11 do
    tableHelper = GetFrameTime
    tableHelper = tableHelper()
    tableHelper2 = 0.01 * tableHelper
    numberValue13 = numberValue13 + tableHelper2
    tableHelper2 = -80 * numberValue13
    tableHelper2 = numberValue14 ^ tableHelper2
    flag4 = 1
    tableHelper2 = flag4 - tableHelper2
    flag4 = tableHelper3 + 0.005
    if tableHelper2 > flag4 then
      tableHelper3 = tableHelper2
      numberValue12 = not numberValue12
      flag4 = GetSoundId
      -- Beginner: result below is soundHandle.
      flag4 = flag4()
      flag5 = PlaySoundFromCoord
      flag6 = flag4
      numberValue2 = "Spin_Single_Ticks"
      numberValue4 = tableHelper4.x
      flag7 = tableHelper4.y
      flag8 = tableHelper4.z
      flag9 = "dlc_vw_casino_lucky_wheel_sounds"
      numberValue8 = false
      numberValue9 = 0
      flag12 = false
      flag5(flag6, numberValue2, numberValue4, flag7, flag8, flag9, numberValue8, numberValue9, flag12)
      flag5 = SetTimeout
      flag6 = 100
      function numberValue2()
        local flag, flag10
        flag = ReleaseSoundId
        flag10 = flag4
        flag(flag10)
      end
      flag5(flag6, numberValue2)
    end
    if numberValue12 then
      if not workValue7 then
        flag4 = numberValue10.RunFunction
        flag5 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        flag6 = {}
        numberValue2 = arg2.winner
        numberValue4 = "Rolling..."
        flag7 = 0
        flag8 = false
        flag9 = false
        flag6[1] = numberValue2
        flag6[2] = numberValue4
        flag6[3] = flag7
        flag6[4] = flag8
        flag6[5] = flag9
        flag4(flag5, flag6)
      end
    elseif not workValue7 then
      flag4 = numberValue10.RunFunction
      flag5 = "SHOW_SHARD_WASTED_MP_MESSAGE"
      flag6 = {}
      numberValue2 = arg2.loser
      numberValue4 = "Rolling..."
      flag7 = 0
      flag8 = false
      flag9 = false
      flag6[1] = numberValue2
      flag6[2] = numberValue4
      flag6[3] = flag7
      flag6[4] = flag8
      flag6[5] = flag9
      flag4(flag5, flag6)
    end
    if workValue7 then
      if arg1 then
        flag4 = numberValue10.RunFunction
        flag5 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        flag6 = {}
        numberValue2 = arg2.winner
        numberValue4 = "~g~You WON!"
        flag7 = 0
        flag8 = false
        flag9 = false
        flag6[1] = numberValue2
        flag6[2] = numberValue4
        flag6[3] = flag7
        flag6[4] = flag8
        flag6[5] = flag9
        flag4(flag5, flag6)
      else
        flag4 = numberValue10.RunFunction
        flag5 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        flag6 = {}
        numberValue2 = arg2.winner
        numberValue4 = "~r~You LOST!"
        flag7 = 0
        flag8 = false
        flag9 = false
        flag6[1] = numberValue2
        flag6[2] = numberValue4
        flag6[3] = flag7
        flag6[4] = flag8
        flag6[5] = flag9
        flag4(flag5, flag6)
      end
    end
    flag4 = numberValue10.Render2D
    flag4()
    flag4 = Wait
    flag5 = 0
    flag4(flag5)
  end
  tableHelper = SetScaleformMovieAsNoLongerNeeded
  tableHelper2 = numberValue10.Handle
  tableHelper(tableHelper2)
  tableHelper = {}
  dataTable6 = tableHelper
  tableHelper = textValue3
  tableHelper2 = true
  tableHelper(tableHelper2)
  tableHelper = false
  flag2 = tableHelper
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "8f14d55f05".
eventRegistration2(textValue4, textValue5)