--[[
    Beginner Guide: cl_nitro.lua
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
    BEGINNER GUIDE — Nitro
    ======================

    File: cmg/prod/client/misc/cl_nitro.lua
    Purpose: This file contains general gameplay utility.

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

    Network/hash identifiers found: 2
      They are intentionally left unchanged because matching server code may use them.
      * 0a6cf607ed
      * 7ba632fd51

    Example player-facing text in this file:
      * Vehicle Nitro
      * Vehicle Nitro Text

]]
local dataTable, dataTable3, flag8, workValue13, flag10, numberValue7, numberValue8, numberValue9, numberValue10, numberValue11, numberValue, numberValue2, numberValue4, workValue2, cmgCall, textValue, textValue2, textValue3, dataTable2, textValue4, textValue5, numberValue6, workValue3, workValue4, workValue5, workValue6, workValue7, workValue8, cmgCall3, workValue9, workValue10, workValue11, cmgCall4, workValue12, textValue6
dataTable = {}
dataTable3 = {}
flag8 = false
workValue13 = nil
flag10 = false
numberValue7 = 219
numberValue8 = 105
numberValue9 = 97
numberValue10 = 255
numberValue11 = 4
numberValue = 0.5
numberValue2 = 0.9
numberValue4 = 0.92
function workValue2()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = GetVehiclePedIsIn
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg3 = arg3()
  arg4 = false
  -- Beginner: result below is currentVehicle.
  arg2 = arg2(arg3, arg4)
  if 0 ~= arg2 then
    arg3 = GetPedInVehicleSeat
    arg4 = arg2
    arg5 = -1
    arg3 = arg3(arg4, arg5)
    if arg3 == arg1 then
      arg3 = tCMG
      arg3 = arg3.getVehicleInfos
      arg4 = arg2
      arg3 = arg3(arg4)
      arg4 = DecorGetInt
      arg5 = arg2
      arg6 = "0a6cf607ed"
      arg4 = arg4(arg5, arg6)
      arg5 = CMG
      arg5 = arg5.getClientUserId
      -- Beginner: result below is userId.
      arg5 = arg5()
      if arg3 == arg5 and arg4 > 0 then
        arg5 = dataTable
        arg5 = arg5[arg4]
        if arg5 then
          arg5 = flag8
          if not arg5 then
            arg5 = dataTable
            arg5 = arg5[arg4]
            workValue13 = arg4
            arg6 = true
            flag8 = arg6
            arg6 = Citizen
            arg6 = arg6.CreateThread
            function arg7()
              local vehicle, cmgCall2, flag9, workValue14, workValue15
              while true do
                vehicle = GetVehiclePedIsIn
                cmgCall2 = CMG
                cmgCall2 = cmgCall2.getPlayerPed
                -- Beginner: result below is localPlayerPed.
                cmgCall2 = cmgCall2()
                flag9 = false
                -- Beginner: result below is currentVehicle.
                vehicle = vehicle(cmgCall2, flag9)
                if 0 == vehicle then
                  break
                end
                vehicle = Wait
                cmgCall2 = 1000
                vehicle(cmgCall2)
              end
              vehicle = false
              flag8 = vehicle
              vehicle = arg5
              flag9 = arg4
              cmgCall2 = dataTable
              cmgCall2 = cmgCall2[flag9]
              vehicle = vehicle - cmgCall2
              cmgCall2 = TriggerServerEvent
              flag9 = "7ba632fd51"
              workValue14 = arg4
              workValue15 = -vehicle
              -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "7ba632fd51".
              cmgCall2(flag9, workValue14, workValue15)
            end
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            arg6(arg7)
          end
        end
      end
    end
  end
end
cmgCall = CMG
cmgCall = cmgCall.createThreadOnTick
textValue = workValue2
textValue2 = "Vehicle Nitro"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall(textValue, textValue2)
cmgCall = {}
textValue = "exhaust"
textValue2 = "exhaust_2"
textValue3 = "exhaust_3"
dataTable2 = "exhaust_4"
cmgCall[1] = textValue
cmgCall[2] = textValue2
cmgCall[3] = textValue3
cmgCall[4] = dataTable2
textValue = "veh_backfire"
textValue2 = "core"
textValue3 = 2.4
dataTable2 = {}
textValue4 = "overheat"
dataTable2[1] = textValue4
textValue4 = "ent_sht_steam"
textValue5 = "core"
numberValue6 = 0.4
function workValue3(arg1, arg2)
  local arg3, arg4, arg5, arg6, arg7, cmgCall5, flag11, textValue7, tableHelper, numberValue3, workValue, numberValue5, flag, flag2, flag3
  arg3 = GetEntityBoneIndexByName
  arg4 = arg1
  arg5 = arg2
  arg3 = arg3(arg4, arg5)
  arg4 = CMG
  arg4 = arg4.loadPtfx
  arg5 = "core"
  arg4(arg5)
  arg4 = UseParticleFxAsset
  arg5 = "core"
  arg4(arg5)
  arg4 = StartParticleFxLoopedOnEntityBone
  arg5 = "veh_light_red_trail"
  arg6 = arg1
  arg7 = 0.0
  cmgCall5 = 0.0
  flag11 = 0.0
  textValue7 = 0.0
  tableHelper = 0.0
  numberValue3 = 0.0
  workValue = arg3
  numberValue5 = 1.0
  flag = false
  flag2 = false
  flag3 = false
  arg4 = arg4(arg5, arg6, arg7, cmgCall5, flag11, textValue7, tableHelper, numberValue3, workValue, numberValue5, flag, flag2, flag3)
  arg5 = SetParticleFxLoopedEvolution
  arg6 = arg4
  arg7 = "speed"
  cmgCall5 = 1.0
  flag11 = false
  arg5(arg6, arg7, cmgCall5, flag11)
  arg5 = RemoveNamedPtfxAsset
  arg6 = "core"
  arg5(arg6)
  return arg4
end
function workValue4(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
  local cmgCall5, flag11, textValue7, tableHelper, numberValue3, workValue, numberValue5, flag, flag2, flag3, flag4, flag5, flag6
  cmgCall5 = CMG
  cmgCall5 = cmgCall5.loadPtfx
  flag11 = "core"
  cmgCall5(flag11)
  cmgCall5 = UseParticleFxAsset
  flag11 = "core"
  cmgCall5(flag11)
  cmgCall5 = StartParticleFxLoopedOnEntity
  flag11 = "ent_sht_steam"
  textValue7 = arg1
  tableHelper = arg2
  numberValue3 = arg3
  workValue = arg4
  numberValue5 = arg5
  flag = arg6
  flag2 = arg7
  flag3 = 0.5
  flag4 = false
  flag5 = false
  flag6 = false
  cmgCall5 = cmgCall5(flag11, textValue7, tableHelper, numberValue3, workValue, numberValue5, flag, flag2, flag3, flag4, flag5, flag6)
  flag11 = RemoveNamedPtfxAsset
  textValue7 = "core"
  flag11(textValue7)
  return cmgCall5
end
function workValue5(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, cmgCall5, flag11, textValue7, tableHelper, numberValue3, workValue, numberValue5, flag, flag2, flag3, flag4
  arg2 = dataTable3
  arg2 = arg2[arg1]
  if arg2 then
    return
  end
  arg2 = {}
  arg3 = workValue3
  arg4 = arg1
  arg5 = "taillight_l"
  arg3 = arg3(arg4, arg5)
  arg2.leftTrail = arg3
  arg3 = workValue3
  arg4 = arg1
  arg5 = "taillight_r"
  arg3 = arg3(arg4, arg5)
  arg2.rightTrail = arg3
  arg3 = GetEntityBoneIndexByName
  arg4 = arg1
  arg5 = "bonnet"
  arg3 = arg3(arg4, arg5)
  arg4 = GetWorldPositionOfEntityBone
  arg5 = arg1
  arg6 = arg3
  arg4 = arg4(arg5, arg6)
  arg5 = GetOffsetFromEntityGivenWorldCoords
  arg6 = arg1
  arg7 = arg4.x
  cmgCall5 = arg4.y
  flag11 = arg4.z
  arg5 = arg5(arg6, arg7, cmgCall5, flag11)
  arg6 = {}
  arg2.purge = arg6
  arg6 = 0
  arg7 = 3
  cmgCall5 = 1
  for flag11 = arg6, arg7, cmgCall5 do
    textValue7 = workValue4
    tableHelper = arg1
    numberValue3 = arg5.x
    numberValue3 = numberValue3 - 0.5
    workValue = arg5.y
    workValue = workValue + 0.05
    numberValue5 = arg5.z
    flag = 40.0
    flag2 = -20.0
    flag3 = 0.0
    textValue7 = textValue7(tableHelper, numberValue3, workValue, numberValue5, flag, flag2, flag3)
    tableHelper = table
    tableHelper = tableHelper.insert
    numberValue3 = arg2.purge
    workValue = textValue7
    tableHelper(numberValue3, workValue)
    tableHelper = workValue4
    numberValue3 = arg1
    workValue = arg5.x
    workValue = workValue + 0.5
    numberValue5 = arg5.y
    numberValue5 = numberValue5 + 0.05
    flag = arg5.z
    flag2 = 40.0
    flag3 = 20.0
    flag4 = 0.0
    tableHelper = tableHelper(numberValue3, workValue, numberValue5, flag, flag2, flag3, flag4)
    numberValue3 = table
    numberValue3 = numberValue3.insert
    workValue = arg2.purge
    numberValue5 = tableHelper
    numberValue3(workValue, numberValue5)
  end
  arg6 = dataTable3
  arg6[arg1] = arg2
end
function workValue6(arg1)
  local arg2, arg3
  arg2 = Citizen
  arg2 = arg2.CreateThread
  function arg3()
    local vehicle, cmgCall2, flag9, workValue14, workValue15, workValue16
    vehicle = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    vehicle = vehicle()
    vehicle = vehicle + 500
    while true do
      cmgCall2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      cmgCall2 = cmgCall2()
      if not (vehicle > cmgCall2) then
        break
      end
      cmgCall2 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      cmgCall2 = cmgCall2()
      flag9 = vehicle - cmgCall2
      flag9 = flag9 / 500
      workValue14 = SetParticleFxLoopedScale
      workValue15 = arg1
      workValue16 = flag9
      workValue14(workValue15, workValue16)
      workValue14 = SetParticleFxLoopedAlpha
      workValue15 = arg1
      workValue16 = flag9
      workValue14(workValue15, workValue16)
      workValue14 = Citizen
      workValue14 = workValue14.Wait
      workValue15 = 0
      workValue14(workValue15)
    end
    cmgCall2 = StopParticleFxLooped
    flag9 = arg1
    workValue14 = false
    cmgCall2(flag9, workValue14)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  arg2(arg3)
end
function workValue7(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, cmgCall5, flag11, textValue7, tableHelper
  arg2 = dataTable3
  arg2 = arg2[arg1]
  if not arg2 then
    return
  end
  arg3 = workValue6
  arg4 = arg2.leftTrail
  arg3(arg4)
  arg3 = workValue6
  arg4 = arg2.rightTrail
  arg3(arg4)
  arg3 = pairs
  arg4 = arg2.purge
  arg3, arg4, arg5, arg6 = arg3(arg4)
  for arg7, cmgCall5 in arg3, arg4, arg5, arg6 do
    flag11 = StopParticleFxLooped
    textValue7 = cmgCall5
    tableHelper = false
    flag11(textValue7, tableHelper)
  end
end
function workValue8(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, cmgCall5
  arg2 = IsVehicleStopped
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    arg2 = GetEntityModel
    arg3 = arg1
    -- Beginner: result below is modelHash.
    arg2 = arg2(arg3)
    arg3 = GetEntitySpeed
    arg4 = arg1
    -- Beginner: result below is speed.
    arg3 = arg3(arg4)
    arg4 = GetVehicleModelEstimatedMaxSpeed
    arg5 = arg2
    arg4 = arg4(arg5)
    arg5 = 4.0 * arg4
    arg5 = arg5 / arg3
    arg6 = SetVehicleCheatPowerIncrease
    arg7 = arg1
    cmgCall5 = arg5
    arg6(arg7, cmgCall5)
  end
end
cmgCall3 = CMG
function workValue9(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, cmgCall5, flag11, textValue7, tableHelper, numberValue3, workValue, numberValue5, flag, flag2, flag3, flag4, flag5, flag6, flag7
  arg2 = pairs
  arg3 = cmgCall
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    cmgCall5 = UseParticleFxAsset
    flag11 = textValue2
    cmgCall5(flag11)
    cmgCall5 = StartParticleFxLoopedOnEntityBone
    flag11 = textValue
    textValue7 = arg1
    tableHelper = 0.0
    numberValue3 = 0.0
    workValue = 0.0
    numberValue5 = 0.0
    flag = 0.0
    flag2 = 0.0
    flag3 = GetEntityBoneIndexByName
    flag4 = arg1
    flag5 = arg7
    flag3 = flag3(flag4, flag5)
    flag4 = textValue3
    flag5 = false
    flag6 = false
    flag7 = false
    cmgCall5 = cmgCall5(flag11, textValue7, tableHelper, numberValue3, workValue, numberValue5, flag, flag2, flag3, flag4, flag5, flag6, flag7)
    flag11 = StopParticleFxLooped
    textValue7 = cmgCall5
    tableHelper = true
    flag11(textValue7, tableHelper)
  end
end
cmgCall3.playVehicleFlameExhaustEffect = workValue9
function cmgCall3(arg1)
  local arg2, arg3, arg4, arg5, arg6, arg7, cmgCall5, flag11, textValue7, tableHelper, numberValue3, workValue, numberValue5, flag, flag2, flag3, flag4, flag5, flag6, flag7
  arg2 = pairs
  arg3 = dataTable2
  arg2, arg3, arg4, arg5 = arg2(arg3)
  for arg6, arg7 in arg2, arg3, arg4, arg5 do
    cmgCall5 = UseParticleFxAsset
    flag11 = textValue5
    cmgCall5(flag11)
    cmgCall5 = StartParticleFxLoopedOnEntityBone
    flag11 = textValue4
    textValue7 = arg1
    tableHelper = 0.0
    numberValue3 = 0.0
    workValue = 0.0
    numberValue5 = 0.0
    flag = 0.0
    flag2 = 0.0
    flag3 = GetEntityBoneIndexByName
    flag4 = arg1
    flag5 = arg7
    flag3 = flag3(flag4, flag5)
    flag4 = numberValue6
    flag5 = false
    flag6 = false
    flag7 = false
    cmgCall5 = cmgCall5(flag11, textValue7, tableHelper, numberValue3, workValue, numberValue5, flag, flag2, flag3, flag4, flag5, flag6, flag7)
    flag11 = StopParticleFxLooped
    textValue7 = cmgCall5
    tableHelper = true
    flag11(textValue7, tableHelper)
  end
end
function workValue9(arg1)
  local arg2, arg3, arg4
  arg2 = SetVehicleBoostActive
  arg3 = arg1
  arg4 = true
  arg2(arg3, arg4)
end
function workValue10(arg1)
  local arg2, arg3, arg4
  arg2 = SetVehicleBoostActive
  arg3 = arg1
  arg4 = false
  arg2(arg3, arg4)
end
function workValue11()
  local arg1, arg2, arg3, arg4, arg5, arg6, arg7, cmgCall5, flag11, textValue7, tableHelper, numberValue3, workValue
  arg1 = flag8
  if arg1 then
    arg2 = workValue13
    arg1 = dataTable
    arg1 = arg1[arg2]
    if arg1 > 0 then
      arg2 = workValue13
      arg1 = dataTable
      arg1 = arg1[arg2]
      if arg1 < 0 then
        arg1 = 0
      end
      arg2 = CMG
      arg2 = arg2.DrawText
      arg3 = numberValue2
      arg4 = numberValue4
      arg5 = "Nitro: "
      arg6 = math
      arg6 = arg6.floor
      arg7 = tonumber
      cmgCall5 = arg1
      arg7 = arg7(cmgCall5)
      if not arg7 then
        arg7 = 0
      end
      arg6 = arg6(arg7)
      arg7 = "%"
      arg5 = arg5 .. arg6 .. arg7
      arg6 = numberValue
      arg7 = numberValue11
      cmgCall5 = 1
      flag11 = {}
      textValue7 = numberValue7
      tableHelper = numberValue8
      numberValue3 = numberValue9
      workValue = numberValue10
      flag11[1] = textValue7
      flag11[2] = tableHelper
      flag11[3] = numberValue3
      flag11[4] = workValue
      textValue7 = true
      arg2(arg3, arg4, arg5, arg6, arg7, cmgCall5, flag11, textValue7)
      arg2 = GetVehiclePedIsIn
      arg3 = CMG
      arg3 = arg3.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg3 = arg3()
      arg4 = false
      -- Beginner: result below is currentVehicle.
      arg2 = arg2(arg3, arg4)
      arg3 = IsControlPressed
      arg4 = 0
      arg5 = 21
      arg3 = arg3(arg4, arg5)
      if arg3 then
        arg4 = workValue13
        arg3 = dataTable
        arg3 = arg3[arg4]
        arg3 = arg3 - 0.05
        if arg3 >= 0 then
          arg3 = workValue5
          arg4 = arg2
          arg3(arg4)
          arg3 = workValue8
          arg4 = arg2
          arg3(arg4)
          arg3 = AnimpostfxPlay
          arg4 = "RaceTurbo"
          arg5 = 0
          arg6 = false
          arg3(arg4, arg5, arg6)
          arg4 = workValue13
          arg3 = dataTable
          arg6 = workValue13
          arg5 = dataTable
          arg5 = arg5[arg6]
          arg5 = arg5 - 0.05
          arg3[arg4] = arg5
          arg3 = flag10
          if not arg3 then
            arg3 = true
            flag10 = arg3
            arg3 = CMG
            arg3 = arg3.playVehicleFlameExhaustEffect
            arg4 = arg2
            arg3(arg4)
            arg3 = cmgCall3
            arg4 = arg2
            arg3(arg4)
            arg3 = workValue9
            arg4 = arg2
            arg3(arg4)
            arg3 = SetTimeout
            arg4 = 100
            function arg5()
              local vehicle, cmgCall2
              vehicle = false
              flag10 = vehicle
            end
            arg3(arg4, arg5)
          end
        else
          arg4 = workValue13
          arg3 = dataTable
          arg3[arg4] = 0
          arg3 = StopGameplayCamShaking
          arg4 = true
          arg3(arg4)
          arg3 = SetVehicleCheatPowerIncrease
          arg4 = arg2
          arg5 = 1.0
          arg3(arg4, arg5)
          arg3 = SetVehicleBoostActive
          arg4 = arg2
          arg5 = false
          arg3(arg4, arg5)
          arg3 = AnimpostfxStop
          arg4 = "RaceTurbo"
          arg3(arg4)
        end
      else
        arg3 = SetVehicleCheatPowerIncrease
        arg4 = arg2
        arg5 = 1.0
        arg3(arg4, arg5)
        arg3 = workValue10
        arg4 = arg2
        arg3(arg4)
        arg3 = workValue7
        arg4 = arg2
        arg3(arg4)
      end
    end
  end
end
cmgCall4 = CMG
cmgCall4 = cmgCall4.createThreadOnTick
workValue12 = workValue11
textValue6 = "Vehicle Nitro Text"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall4(workValue12, textValue6)
cmgCall4 = CMG
function workValue12(arg1, arg2)
  local arg3
  arg3 = dataTable
  arg3[arg1] = arg2
  arg3 = dataTable
  arg3 = arg3[arg1]
  if arg3 > 100 then
    arg3 = dataTable
    arg3[arg1] = 100
  end
end
cmgCall4.setVehicleIdNitro = workValue12