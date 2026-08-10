--[[
    Beginner Guide: cl_copblips.lua
    ===============================

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
    BEGINNER GUIDE — Copblips
    =========================

    File: cmg/prod/client/police/cl_copblips.lua
    Purpose: This file contains police gameplay.

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

    Commands/command-like entries found:
      * blipson
      * blipsoff

    Network/hash identifiers found: 6
      They are intentionally left unchanged because matching server code may use them.
      * 14f010530c
      * e713d91b70
      * 62f7fcbe38
      * 00e0b9aa86
      * 193ee4e15e
      * dd39aa0311

]]
local flag, dataTable, dataTable2, numberValue2, dataTable3, dataTable4, flag4, flag5, flag6, workValue26, workValue, workValue3, workValue5, workValue6, eventRegistration, textValue, cmgCall, serverId, eventRegistration2, textValue2, workValue14
flag = false
dataTable = {}
dataTable2 = {}
numberValue2 = 0
dataTable3 = {}
dataTable4 = {}
flag4 = false
flag5 = false
flag6 = false
function workValue26()
  local arg1, arg2, arg3, arg4, arg5, arg6, workValue23, workValue24
  arg1 = pairs
  arg2 = dataTable
  arg1, arg2, arg3, arg4 = arg1(arg2)
  for arg5, arg6 in arg1, arg2, arg3, arg4 do
    workValue23 = DoesBlipExist
    workValue24 = arg6
    workValue23 = workValue23(workValue24)
    if workValue23 then
      workValue23 = RemoveBlip
      workValue24 = arg6
      workValue23(workValue24)
    end
  end
  arg1 = {}
  dataTable = arg1
end
function workValue(arg1)
  local arg2, arg3, arg4, arg5, arg6, workValue23, workValue24, workValue25, numberValue3, workValue2, workValue4, flag3, workValue7, workValue8
  if arg1 then
    arg2 = dataTable2
    arg2 = arg2[arg1]
    if arg2 then
      arg2 = pairs
      arg3 = dataTable2
      arg3 = arg3[arg1]
      arg2, arg3, arg4, arg5 = arg2(arg3)
      for arg6, workValue23 in arg2, arg3, arg4, arg5 do
        workValue24 = DoesBlipExist
        workValue25 = workValue23
        workValue24 = workValue24(workValue25)
        if workValue24 then
          workValue24 = RemoveBlip
          workValue25 = workValue23
          workValue24(workValue25)
        end
      end
    end
    arg2 = dataTable2
    arg2[arg1] = nil
  else
    arg2 = pairs
    arg3 = dataTable2
    arg2, arg3, arg4, arg5 = arg2(arg3)
    for arg6, workValue23 in arg2, arg3, arg4, arg5 do
      workValue24 = pairs
      workValue25 = workValue23
      workValue24, workValue25, numberValue3, workValue2 = workValue24(workValue25)
      for workValue4, flag3 in workValue24, workValue25, numberValue3, workValue2 do
        workValue7 = DoesBlipExist
        workValue8 = flag3
        workValue7 = workValue7(workValue8)
        if workValue7 then
          workValue7 = RemoveBlip
          workValue8 = flag3
          workValue7(workValue8)
        end
      end
    end
    arg2 = {}
    dataTable2 = arg2
  end
  arg2 = {}
  dataTable3 = arg2
end
function workValue3(arg1, arg2, arg3, arg4, arg5, arg6)
  local workValue23, workValue24, workValue25, numberValue3
  workValue23 = DoesBlipExist
  workValue24 = arg1
  workValue23 = workValue23(workValue24)
  if not workValue23 then
    workValue23 = AddBlipForEntity
    workValue24 = arg2
    -- Beginner: result below is blipHandle.
    workValue23 = workValue23(workValue24)
    workValue24 = table
    workValue24 = workValue24.insert
    workValue25 = dataTable
    numberValue3 = workValue23
    workValue24(workValue25, numberValue3)
    workValue24 = SetBlipSprite
    workValue25 = workValue23
    numberValue3 = arg5 or numberValue3
    if not arg5 then
      numberValue3 = 1
    end
    workValue24(workValue25, numberValue3)
    workValue24 = SetBlipScale
    workValue25 = workValue23
    numberValue3 = 0.85
    workValue24(workValue25, numberValue3)
    workValue24 = SetBlipAlpha
    workValue25 = workValue23
    numberValue3 = 255
    workValue24(workValue25, numberValue3)
    workValue24 = SetBlipColour
    workValue25 = workValue23
    numberValue3 = arg3
    workValue24(workValue25, numberValue3)
    workValue24 = ShowHeadingIndicatorOnBlip
    workValue25 = workValue23
    numberValue3 = true
    workValue24(workValue25, numberValue3)
  else
    workValue23 = GetEntityHealth
    workValue24 = arg2
    -- Beginner: result below is health.
    workValue23 = workValue23(workValue24)
    if workValue23 > 102 then
      workValue23 = SetBlipSprite
      workValue24 = arg1
      workValue25 = arg5 or workValue25
      if not arg5 then
        workValue25 = 1
      end
      workValue23(workValue24, workValue25)
    else
      workValue23 = SetBlipSprite
      workValue24 = arg1
      workValue25 = arg5 or workValue25
      if not arg5 then
        workValue25 = 274
      end
      workValue23(workValue24, workValue25)
    end
    workValue23 = SetBlipScale
    workValue24 = arg1
    workValue25 = 0.85
    workValue23(workValue24, workValue25)
    workValue23 = SetBlipAlpha
    workValue24 = arg1
    workValue25 = 255
    workValue23(workValue24, workValue25)
    workValue23 = SetBlipColour
    workValue24 = arg1
    workValue25 = arg3
    workValue23(workValue24, workValue25)
    workValue23 = ShowHeadingIndicatorOnBlip
    workValue24 = arg1
    workValue25 = true
    workValue23(workValue24, workValue25)
    workValue23 = flag4
    if workValue23 then
      workValue23 = SetBlipCategory
      workValue24 = arg1
      workValue25 = 7
      workValue23(workValue24, workValue25)
      workValue23 = BeginTextCommandSetBlipName
      workValue24 = "STRING"
      workValue23(workValue24)
      workValue23 = AddTextComponentSubstringPlayerName
      workValue24 = arg6 or workValue24
      if not arg6 then
        workValue24 = CMG
        workValue24 = workValue24.getPlayerName
        workValue25 = arg4
        workValue24 = workValue24(workValue25)
      end
      workValue23(workValue24)
      workValue23 = EndTextCommandSetBlipName
      workValue24 = arg1
      workValue23(workValue24)
    end
  end
end
function workValue5(arg1, arg2)
  local arg3, arg4
  arg3 = CMG
  arg3 = arg3.isStaffRankShowingForPlayer
  arg4 = arg2
  arg3 = arg3(arg4)
  if arg3 then
    arg3 = false
    return arg3
  end
  arg3 = IsEntityVisible
  arg4 = arg1
  arg3 = arg3(arg4)
  if not arg3 then
    arg3 = CMG
    arg3 = arg3.clientGetPlayerIsStaff
    arg4 = arg2
    arg3 = arg3(arg4)
    arg3 = not arg3
  end
  return arg3
end
function workValue6(arg1, arg2, arg3, arg4, arg5, arg6)
  local workValue23, workValue24, workValue25, numberValue3, workValue2, workValue4
  workValue23 = arg5 or nil
  if arg5 then
    workValue23 = dataTable4
    workValue23 = workValue23[arg5]
  end
  if arg5 then
    workValue24 = dataTable4
    workValue24[arg5] = arg1
  end
  workValue24 = AddBlipForCoord
  workValue25 = arg1.x
  numberValue3 = arg1.y
  workValue2 = arg1.z
  -- Beginner: result below is blipHandle.
  workValue24 = workValue24(workValue25, numberValue3, workValue2)
  if workValue23 then
    workValue25 = dataTable3
    numberValue3 = arg1 - workValue23
    workValue25[workValue24] = numberValue3
  end
  workValue25 = dataTable2
  workValue25 = workValue25[arg6]
  if not workValue25 then
    workValue25 = dataTable2
    numberValue3 = {}
    workValue25[arg6] = numberValue3
  end
  workValue25 = table
  workValue25 = workValue25.insert
  numberValue3 = dataTable2
  numberValue3 = numberValue3[arg6]
  workValue2 = workValue24
  workValue25(numberValue3, workValue2)
  if 0 == arg3 then
    workValue25 = 1
    if "taggedprisoners" == arg6 then
      workValue25 = 280
    elseif "vigilante" == arg6 then
      workValue25 = 774
    elseif 5 == arg4 then
      workValue25 = 15
    end
    numberValue3 = SetBlipSprite
    workValue2 = workValue24
    workValue4 = workValue25
    numberValue3(workValue2, workValue4)
  else
    workValue25 = SetBlipSprite
    numberValue3 = workValue24
    workValue2 = 274
    workValue25(numberValue3, workValue2)
  end
  workValue25 = SetBlipScale
  numberValue3 = workValue24
  workValue2 = 0.85
  workValue25(numberValue3, workValue2)
  workValue25 = SetBlipAlpha
  numberValue3 = workValue24
  workValue2 = 255
  workValue25(numberValue3, workValue2)
  workValue25 = SetBlipColour
  numberValue3 = workValue24
  workValue2 = arg4
  workValue25(numberValue3, workValue2)
  workValue25 = SetBlipRotation
  numberValue3 = workValue24
  workValue2 = math
  workValue2 = workValue2.floor
  workValue4 = arg2
  workValue2, workValue4 = workValue2(workValue4)
  workValue25(numberValue3, workValue2, workValue4)
  workValue25 = ShowHeadingIndicatorOnBlip
  numberValue3 = workValue24
  workValue2 = true
  workValue25(numberValue3, workValue2)
end
eventRegistration = RegisterCommand
textValue = "blipson"
-- Beginner: this function is the command handler for "blipson".
function cmgCall()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.isEmergencyService
  arg1 = arg1()
  if arg1 then
    arg1 = true
    flag = arg1
    arg1 = CMG
    arg1 = arg1.areBlipPlayerNamesEnabled
    arg1 = arg1()
    if arg1 then
      arg1 = DisplayPlayerNameTagsOnBlips
      arg2 = true
      arg1(arg2)
    end
  end
end
serverId = false
-- Beginner: Register a chat/console command. Event/command: "blipson".
eventRegistration(textValue, cmgCall, serverId)
eventRegistration = RegisterCommand
textValue = "blipsoff"
-- Beginner: this function is the command handler for "blipsoff".
function cmgCall()
  local arg1, arg2
  arg1 = flag
  if arg1 then
    arg1 = false
    flag = arg1
    arg1 = CMG
    arg1 = arg1.areBlipPlayerNamesEnabled
    arg1 = arg1()
    if arg1 then
      arg1 = DisplayPlayerNameTagsOnBlips
      arg2 = false
      arg1(arg2)
    end
    arg1 = workValue26
    arg1()
  end
end
serverId = false
-- Beginner: Register a chat/console command. Event/command: "blipsoff".
eventRegistration(textValue, cmgCall, serverId)
eventRegistration = RegisterNetEvent
textValue = "14f010530c"
-- Beginner: this function handles network event "14f010530c".
function cmgCall()
  local arg1, arg2
  arg1 = flag
  if arg1 then
    arg1 = false
    flag = arg1
    arg1 = CMG
    arg1 = arg1.areBlipPlayerNamesEnabled
    arg1 = arg1()
    if arg1 then
      arg1 = DisplayPlayerNameTagsOnBlips
      arg2 = false
      arg1(arg2)
    end
    arg1 = workValue26
    arg1()
    arg1 = workValue
    arg2 = nil
    arg1(arg2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "14f010530c".
eventRegistration(textValue, cmgCall)
eventRegistration = AddEventHandler
textValue = "e713d91b70"
-- Beginner: this function runs when client event "e713d91b70" fires.
function cmgCall()
  local arg1, arg2
  arg1 = workValue26
  arg1()
  arg1 = workValue
  arg2 = nil
  arg1(arg2)
end
-- Beginner: Register a client-side event handler. Event/command: "e713d91b70".
eventRegistration(textValue, cmgCall)
-- Beginner: this function runs when client event "e713d91b70" fires.
function eventRegistration()
  local arg1, arg2, arg3, arg4, arg5, arg6, workValue23, workValue24, workValue25, numberValue3, workValue2, workValue4, flag3, workValue7, workValue8, workValue9, workValue10, workValue11, cmgCall2, workValue12, workValue15, workValue16, workValue17
  arg1 = table
  arg1 = arg1.count
  arg2 = dataTable2
  -- Beginner: result below is count.
  arg1 = arg1(arg2)
  if arg1 > 0 then
    arg1 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    arg1 = arg1()
    arg2 = numberValue2
    arg2 = arg1 - arg2
    arg2 = arg2 / 1000.0
    if arg2 < 1.0 then
      arg3 = pairs
      arg4 = dataTable2
      arg3, arg4, arg5, arg6 = arg3(arg4)
      for workValue23, workValue24 in arg3, arg4, arg5, arg6 do
        workValue25 = pairs
        numberValue3 = workValue24
        workValue25, numberValue3, workValue2, workValue4 = workValue25(numberValue3)
        for flag3, workValue7 in workValue25, numberValue3, workValue2, workValue4 do
          workValue8 = dataTable3
          workValue8 = workValue8[workValue7]
          if workValue8 then
            workValue9 = GetBlipCoords
            workValue10 = workValue7
            workValue9 = workValue9(workValue10)
            workValue10 = workValue8 * arg2
            workValue11 = SetBlipCoords
            cmgCall2 = workValue7
            workValue12 = workValue9.x
            workValue15 = workValue10.x
            workValue12 = workValue12 + workValue15
            workValue15 = workValue9.y
            workValue16 = workValue10.y
            workValue15 = workValue15 + workValue16
            workValue16 = workValue9.z
            workValue17 = workValue10.z
            workValue16 = workValue16 + workValue17
            workValue11(cmgCall2, workValue12, workValue15, workValue16)
          end
        end
      end
    end
    numberValue2 = arg1
  end
end
function textValue(arg1)
  local arg2, arg3, arg4, arg5
  arg2 = CMG
  arg2 = arg2.doesPlayerHaveRadioItem
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = flag5
    if not arg2 then
      goto flow_label_12
    end
  end
  arg2 = true
  return arg2
  ::flow_label_12::
  arg2 = CMG
  arg2 = arg2.clientGetUserIdFromSource
  arg3 = arg1
  -- Beginner: result below is userId.
  arg2 = arg2(arg3)
  arg3 = CMG
  arg3 = arg3.getJobType
  arg4 = arg2
  arg3, arg4 = arg3(arg4)
  arg5 = "Vigilante" == arg4
  return arg5
end
cmgCall = Citizen
cmgCall = cmgCall.CreateThread
function serverId()
  local arg1, arg2, arg3, arg4, arg5, arg6, workValue23, workValue24, workValue25, numberValue3, workValue2, workValue4, flag3, workValue7, workValue8, workValue9, workValue10, workValue11, cmgCall2, workValue12, workValue15, workValue16, workValue17, workValue18, numberValue, workValue19, workValue20, workValue21, workValue22
  while true do
    arg1 = flag
    if not arg1 then
      arg1 = tCMG
      arg1 = arg1.isInComa
      arg1 = arg1()
      if not arg1 then
        arg1 = CMG
        arg1 = arg1.hasGangBlipsEnabled
        arg1 = arg1()
        if not arg1 then
          arg1 = flag5
          if not arg1 then
            arg1 = CMG
            arg1 = arg1.hasClientGroup
            arg2 = "Vigilante"
            arg1 = arg1(arg2)
            if not arg1 then
              goto flow_label_422
            end
          end
        end
      end
    end
    arg1 = CMG
    arg1 = arg1.inArena
    arg1 = arg1()
    if not arg1 then
      arg1 = CMG
      arg1 = arg1.areBlipPlayerNamesEnabled
      arg1 = arg1()
      flag4 = arg1
      arg1 = CMG
      arg1 = arg1.hasGangBlipsEnabled
      arg1 = arg1()
      arg2 = CMG
      arg2 = arg2.isEmergencyService
      arg2 = arg2()
      arg3 = CMG
      arg3 = arg3.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg3 = arg3()
      arg4 = ipairs
      arg5 = GetActivePlayers
      arg5, arg6, workValue23, workValue24, workValue25, numberValue3, workValue2, workValue4, flag3, workValue7, workValue8, workValue9, workValue10, workValue11, cmgCall2, workValue12, workValue15, workValue16, workValue17, workValue18, numberValue, workValue19, workValue20, workValue21, workValue22 = arg5()
      arg4, arg5, arg6, workValue23 = arg4(arg5, arg6, workValue23, workValue24, workValue25, numberValue3, workValue2, workValue4, flag3, workValue7, workValue8, workValue9, workValue10, workValue11, cmgCall2, workValue12, workValue15, workValue16, workValue17, workValue18, numberValue, workValue19, workValue20, workValue21, workValue22)
      for workValue24, workValue25 in arg4, arg5, arg6, workValue23 do
        numberValue3 = GetPlayerPed
        workValue2 = workValue25
        -- Beginner: result below is playerPed.
        numberValue3 = numberValue3(workValue2)
        if numberValue3 ~= arg3 then
          workValue2 = GetVehiclePedIsIn
          workValue4 = numberValue3
          flag3 = false
          -- Beginner: result below is currentVehicle.
          workValue2 = workValue2(workValue4, flag3)
          workValue4 = GetBlipFromEntity
          flag3 = numberValue3
          workValue4 = workValue4(flag3)
          if 0 ~= workValue2 then
            flag3 = GetBlipFromEntity
            workValue7 = workValue2
            flag3 = flag3(workValue7)
            if flag3 then
              goto flow_label_66
            end
          end
          flag3 = 0
          ::flow_label_66::
          workValue7 = workValue4 or workValue7
          workValue7 = flag3 or workValue7
          if (0 == workValue4 or not workValue4) and (0 == flag3 or not flag3) then
            workValue7 = 0
          end
          workValue8 = CMG
          workValue8 = workValue8.getPlayerServerId
          workValue9 = workValue25
          workValue8 = workValue8(workValue9)
          if workValue8 and workValue8 > 0 then
            workValue9 = textValue
            workValue10 = workValue8
            workValue9 = workValue9(workValue10)
            if workValue9 then
              workValue9 = CMG
              workValue9 = workValue9.clientGetUserIdFromSource
              workValue10 = workValue8
              -- Beginner: result below is userId.
              workValue9 = workValue9(workValue10)
              workValue10 = CMG
              workValue10 = workValue10.getJobType
              workValue11 = workValue9
              workValue10, workValue11 = workValue10(workValue11)
              cmgCall2 = CMG
              cmgCall2 = cmgCall2.getClientUserId
              -- Beginner: result below is userId.
              cmgCall2 = cmgCall2()
              if workValue9 ~= cmgCall2 then
                cmgCall2 = false
                workValue12 = workValue5
                workValue15 = numberValue3
                workValue16 = workValue8
                workValue12 = workValue12(workValue15, workValue16)
                if workValue12 then
                  workValue12 = flag
                  if workValue12 then
                    workValue12 = CMG
                    workValue12 = workValue12.hasRadioItem
                    workValue12 = workValue12()
                    if workValue12 and arg2 then
                      if 0 ~= workValue2 then
                        workValue12 = 56
                        workValue15 = IsThisModelAHeli
                        workValue16 = GetEntityModel
                        workValue17 = workValue2
                        workValue16, workValue17, workValue18, numberValue, workValue19, workValue20, workValue21, workValue22 = workValue16(workValue17)
                        workValue15 = workValue15(workValue16, workValue17, workValue18, numberValue, workValue19, workValue20, workValue21, workValue22)
                        if workValue15 then
                          workValue12 = 15
                        end
                        workValue15 = flag3 or workValue15
                        workValue15 = workValue4 or workValue15
                        if (0 == flag3 or not flag3) and (0 == workValue4 or not workValue4) then
                          workValue15 = 0
                        end
                        if 0 ~= workValue4 and 0 ~= flag3 and workValue4 ~= flag3 then
                          workValue16 = RemoveBlip
                          workValue17 = workValue4
                          workValue16(workValue17)
                          workValue15 = flag3
                        end
                        if "metpd" == workValue10 and "NPAS" == workValue11 then
                          workValue16 = workValue3
                          workValue17 = workValue15
                          workValue18 = workValue2
                          numberValue = 5
                          workValue19 = workValue25
                          workValue20 = workValue12
                          workValue21 = Player
                          workValue22 = workValue8
                          workValue21 = workValue21(workValue22)
                          workValue21 = workValue21.state
                          workValue21 = workValue21.blipName
                          workValue16(workValue17, workValue18, numberValue, workValue19, workValue20, workValue21)
                          cmgCall2 = true
                        elseif "metpd" == workValue10 then
                          workValue16 = workValue3
                          workValue17 = workValue15
                          workValue18 = workValue2
                          numberValue = 3
                          workValue19 = workValue25
                          workValue20 = workValue12
                          workValue21 = Player
                          workValue22 = workValue8
                          workValue21 = workValue21(workValue22)
                          workValue21 = workValue21.state
                          workValue21 = workValue21.blipName
                          workValue16(workValue17, workValue18, numberValue, workValue19, workValue20, workValue21)
                          cmgCall2 = true
                        elseif "nhs" == workValue10 and "HEMS" == workValue11 then
                          workValue16 = workValue3
                          workValue17 = workValue7
                          workValue18 = workValue2
                          numberValue = 44
                          workValue19 = workValue25
                          workValue20 = workValue12
                          workValue16(workValue17, workValue18, numberValue, workValue19, workValue20)
                          cmgCall2 = true
                        elseif "nhs" == workValue10 then
                          workValue16 = workValue3
                          workValue17 = workValue7
                          workValue18 = workValue2
                          numberValue = 2
                          workValue19 = workValue25
                          workValue20 = workValue12
                          workValue16(workValue17, workValue18, numberValue, workValue19, workValue20)
                          cmgCall2 = true
                        end
                      elseif "metpd" == workValue10 and ("CID" == workValue11 or "Trident" == workValue11) then
                        workValue12 = workValue3
                        workValue15 = workValue7
                        workValue16 = numberValue3
                        workValue17 = 8
                        workValue18 = workValue25
                        numberValue = nil
                        workValue19 = Player
                        workValue20 = workValue8
                        workValue19 = workValue19(workValue20)
                        workValue19 = workValue19.state
                        workValue19 = workValue19.blipName
                        workValue12(workValue15, workValue16, workValue17, workValue18, numberValue, workValue19)
                        cmgCall2 = true
                      elseif "metpd" == workValue10 and "NPAS" == workValue11 then
                        workValue12 = workValue3
                        workValue15 = workValue7
                        workValue16 = numberValue3
                        workValue17 = 5
                        workValue18 = workValue25
                        workValue12(workValue15, workValue16, workValue17, workValue18)
                        cmgCall2 = true
                      elseif "metpd" == workValue10 and "CTSFO" == workValue11 then
                        workValue12 = workValue3
                        workValue15 = workValue7
                        workValue16 = numberValue3
                        workValue17 = 40
                        workValue18 = workValue25
                        workValue12(workValue15, workValue16, workValue17, workValue18)
                        cmgCall2 = true
                      elseif "metpd" == workValue10 then
                        workValue12 = workValue3
                        workValue15 = workValue7
                        workValue16 = numberValue3
                        workValue17 = 3
                        workValue18 = workValue25
                        workValue12(workValue15, workValue16, workValue17, workValue18)
                        cmgCall2 = true
                      elseif "hmp" == workValue10 then
                        workValue12 = workValue3
                        workValue15 = workValue7
                        workValue16 = numberValue3
                        workValue17 = 29
                        workValue18 = workValue25
                        workValue12(workValue15, workValue16, workValue17, workValue18)
                        cmgCall2 = true
                      elseif "lfb" == workValue10 then
                        workValue12 = workValue3
                        workValue15 = workValue7
                        workValue16 = numberValue3
                        workValue17 = 1
                        workValue18 = workValue25
                        workValue12(workValue15, workValue16, workValue17, workValue18)
                        cmgCall2 = true
                      elseif "nhs" == workValue10 and "HEMS" == workValue11 then
                        workValue12 = workValue3
                        workValue15 = workValue7
                        workValue16 = numberValue3
                        workValue17 = 44
                        workValue18 = workValue25
                        workValue12(workValue15, workValue16, workValue17, workValue18)
                        cmgCall2 = true
                      elseif "nhs" == workValue10 then
                        workValue12 = workValue3
                        workValue15 = workValue7
                        workValue16 = numberValue3
                        workValue17 = 2
                        workValue18 = workValue25
                        workValue12(workValue15, workValue16, workValue17, workValue18)
                        cmgCall2 = true
                      elseif "borderforce" == workValue10 then
                        workValue12 = workValue3
                        workValue15 = workValue7
                        workValue16 = numberValue3
                        workValue17 = 83
                        workValue18 = workValue25
                        workValue12(workValue15, workValue16, workValue17, workValue18)
                        cmgCall2 = true
                      elseif "Vigilante" == workValue11 then
                        workValue12 = workValue3
                        workValue15 = workValue7
                        workValue16 = numberValue3
                        workValue17 = 40
                        workValue18 = workValue25
                        numberValue = 774
                        workValue12(workValue15, workValue16, workValue17, workValue18, numberValue)
                        cmgCall2 = true
                      end
                  end
                  else
                    workValue12 = tCMG
                    workValue12 = workValue12.isInComa
                    workValue12 = workValue12()
                    if workValue12 then
                      if "nhs" == workValue10 then
                        workValue12 = workValue3
                        workValue15 = workValue7
                        workValue16 = numberValue3
                        workValue17 = 2
                        workValue18 = workValue25
                        workValue12(workValue15, workValue16, workValue17, workValue18)
                        cmgCall2 = true
                      end
                    elseif arg1 and not arg2 then
                      workValue12 = CMG
                      workValue12 = workValue12.isPlayerInSelectedGang
                      workValue15 = workValue8
                      workValue12, workValue15 = workValue12(workValue15)
                      if workValue12 and "" == workValue10 then
                        workValue16 = CMG
                        workValue16 = workValue16.isGangBlipsPinnedOnly
                        workValue16 = workValue16()
                        if workValue16 then
                          workValue16 = CMG
                          workValue16 = workValue16.isPlayerPinnedInGang
                          workValue17 = CMG
                          workValue17 = workValue17.clientGetUserIdFromSource
                          workValue18 = workValue8
                          workValue17, workValue18, numberValue, workValue19, workValue20, workValue21, workValue22 = workValue17(workValue18)
                          workValue16 = workValue16(workValue17, workValue18, numberValue, workValue19, workValue20, workValue21, workValue22)
                          if not workValue16 then
                            goto flow_label_371
                          end
                        end
                        workValue16 = workValue3
                        workValue17 = workValue7
                        workValue18 = numberValue3
                        numberValue = workValue15.blip
                        workValue19 = workValue25
                        workValue16(workValue17, workValue18, numberValue, workValue19)
                        cmgCall2 = true
                      end
                    end
                  end
                  ::flow_label_371::
                  workValue12 = CMG
                  workValue12 = workValue12.hasClientGroup
                  workValue15 = "Vigilante"
                  workValue12 = workValue12(workValue15)
                  if workValue12 and "Vigilante" == workValue11 then
                    workValue12 = workValue3
                    workValue15 = workValue7
                    workValue16 = numberValue3
                    workValue17 = 40
                    workValue18 = workValue25
                    numberValue = 774
                    workValue12(workValue15, workValue16, workValue17, workValue18, numberValue)
                    cmgCall2 = true
                  end
                  workValue12 = flag5
                  if workValue12 and "aa" == workValue10 then
                    workValue12 = workValue3
                    workValue15 = workValue7
                    workValue16 = numberValue3
                    workValue17 = 5
                    workValue18 = workValue25
                    workValue12(workValue15, workValue16, workValue17, workValue18)
                    cmgCall2 = true
                  end
                end
                if not cmgCall2 then
                  workValue12 = GetBlipFromEntity
                  workValue15 = numberValue3
                  workValue12 = workValue12(workValue15)
                  if 0 ~= workValue12 then
                    workValue15 = RemoveBlip
                    workValue16 = workValue12
                    workValue15(workValue16)
                  end
                  if 0 ~= workValue2 then
                    workValue15 = GetBlipFromEntity
                    workValue16 = workValue2
                    workValue15 = workValue15(workValue16)
                    if 0 ~= workValue15 then
                      workValue16 = RemoveBlip
                      workValue17 = workValue15
                      workValue16(workValue17)
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    ::flow_label_422::
    arg1 = CMG
    arg1 = arg1.getPlayerVehicle
    -- Beginner: result below is currentVehicle.
    arg1 = arg1()
    arg1 = IsBigmapActive
    arg1 = arg1()
    if not arg1 then
      arg1 = IsPauseMenuActive
      arg1 = arg1()
      if not arg1 then
        arg1 = CMG
        arg1 = arg1.isCallManagerOpen
        arg1 = 0 ~= arg1 or arg1
      end
    end
    if arg1 then
      arg2 = flag6
      if not arg2 then
        arg2 = TriggerServerEvent
        arg3 = "62f7fcbe38"
        arg4 = true
        -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "62f7fcbe38".
        arg2(arg3, arg4)
        arg2 = true
        flag6 = arg2
      end
    else
      arg2 = flag6
      if arg2 then
        arg2 = TriggerServerEvent
        arg3 = "62f7fcbe38"
        arg4 = false
        arg2(arg3, arg4)
        arg2 = false
        flag6 = arg2
      end
    end
    arg2 = Wait
    arg3 = 100
    arg2(arg3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
cmgCall(serverId)
cmgCall = CMG
cmgCall = cmgCall.createThreadOnTick
serverId = eventRegistration
eventRegistration2 = "Blips Extrapolation"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall(serverId, eventRegistration2)
cmgCall = true
serverId = GetPlayerServerId
eventRegistration2 = PlayerId
eventRegistration2, textValue2, workValue14 = eventRegistration2()
-- Beginner: result below is serverId.
serverId = serverId(eventRegistration2, textValue2, workValue14)
eventRegistration2 = CreateThread
-- Beginner: this function is the body of a background FiveM thread.
function textValue2()
  local arg1, arg2
  arg1 = Wait
  arg2 = 20000
  arg1(arg2)
  arg1 = false
  cmgCall = arg1
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
eventRegistration2(textValue2)
eventRegistration2 = RegisterNetEvent
textValue2 = "00e0b9aa86"
-- Beginner: this function handles network event "00e0b9aa86".
function workValue14(arg1, arg2, arg3)
  local arg4, arg5, arg6, workValue23, workValue24, workValue25, numberValue3, workValue2, workValue4, flag3, workValue7, workValue8, workValue9
  arg4 = cmgCall
  if not arg4 then
    arg4 = workValue
    arg5 = arg3
    arg4(arg5)
    if arg2 then
      arg4 = true
      flag = arg4
      arg4 = CMG
      arg4 = arg4.areBlipPlayerNamesEnabled
      arg4 = arg4()
      if arg4 then
        arg4 = DisplayPlayerNameTagsOnBlips
        arg5 = true
        arg4(arg5)
      end
    else
      arg4 = CMG
      arg4 = arg4.isEmergencyService
      arg4 = arg4()
      if not arg4 then
        arg4 = CMG
        arg4 = arg4.hasGangBlipsEnabled
        arg4 = arg4()
        if arg4 then
          goto flow_label_31
        end
      end
      return
    end
    ::flow_label_31::
    arg4 = CMG
    arg4 = arg4.hasRadioItem
    arg4 = arg4()
    if arg4 then
      arg4 = pairs
      arg5 = arg1
      arg4, arg5, arg6, workValue23 = arg4(arg5)
      for workValue24, workValue25 in arg4, arg5, arg6, workValue23 do
        numberValue3 = workValue25[1]
        if numberValue3 then
          numberValue3 = workValue25[1]
          workValue2 = serverId
          if numberValue3 == workValue2 then
            goto flow_label_82
          end
          numberValue3 = GetPlayerFromServerId
          workValue2 = workValue25[1]
          -- Beginner: result below is playerIndex.
          numberValue3 = numberValue3(workValue2)
          if -1 ~= numberValue3 then
            goto flow_label_82
          end
        end
        numberValue3 = workValue25[6]
        workValue2 = CMG
        workValue2 = workValue2.getPlayerBucket
        workValue2 = workValue2()
        if numberValue3 == workValue2 then
          if "gang" == arg3 then
            numberValue3 = CMG
            numberValue3 = numberValue3.isGangBlipsPinnedOnly
            numberValue3 = numberValue3()
            if numberValue3 then
              numberValue3 = CMG
              numberValue3 = numberValue3.isPlayerPinnedInGang
              workValue2 = CMG
              workValue2 = workValue2.clientGetUserIdFromSource
              workValue4 = workValue25[1]
              workValue2, workValue4, flag3, workValue7, workValue8, workValue9 = workValue2(workValue4)
              numberValue3 = numberValue3(workValue2, workValue4, flag3, workValue7, workValue8, workValue9)
              if not numberValue3 then
                goto flow_label_82
              end
            end
          end
          numberValue3 = workValue6
          workValue2 = workValue25[2]
          workValue4 = workValue25[3]
          flag3 = workValue25[4]
          workValue7 = workValue25[5]
          workValue8 = workValue25[1]
          workValue9 = arg3
          numberValue3(workValue2, workValue4, flag3, workValue7, workValue8, workValue9)
        end
        ::flow_label_82::
      end
    end
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "00e0b9aa86".
eventRegistration2(textValue2, workValue14)
eventRegistration2 = RegisterNetEvent
textValue2 = "193ee4e15e"
-- Beginner: this function handles network event "193ee4e15e".
function workValue14()
  local arg1, arg2
  arg1 = flag
  if not arg1 then
    arg1 = Citizen
    arg1 = arg1.Wait
    arg2 = 1000
    arg1(arg2)
    arg1 = workValue26
    arg1()
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "193ee4e15e".
eventRegistration2(textValue2, workValue14)
eventRegistration2 = CMG
function textValue2()
  local arg1, arg2
  arg1 = flag
  return arg1
end
eventRegistration2.isEmergencyBlipsEnabled = textValue2
eventRegistration2 = RegisterNetEvent
textValue2 = "dd39aa0311"
-- Beginner: this function handles network event "dd39aa0311".
function workValue14()
  local arg1, arg2, arg3
  arg1 = true
  flag5 = arg1
  arg1 = SetTimeout
  arg2 = 300000
  -- Beginner: this function handles network event "dd39aa0311".
  function arg3()
    local flag2, workValue13
    flag2 = false
    flag5 = flag2
  end
  arg1(arg2, arg3)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "dd39aa0311".
eventRegistration2(textValue2, workValue14)