--[[
    Beginner Guide: cl_switchgun.lua
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
    BEGINNER GUIDE — Switchgun
    ==========================

    File: cmg/prod/client/misc/cl_switchgun.lua
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

    Network/hash identifiers found: 1
      They are intentionally left unchanged because matching server code may use them.
      * d6e12cd653

]]
local flag, flag5, flag7, workValue, numberValue7, numberValue8, flag10, flag11, numberValue9, dataTable2, dataTable, numberValue2, numberValue3, cmgCall, numberValue4, textValue, numberValue5, threadCall, cmgCall2, textValue2, numberValue6, flag6
flag = false
flag5 = false
flag7 = false
workValue = nil
numberValue7 = 0
numberValue8 = -1569615261
flag10 = true
flag11 = false
numberValue9 = 0
dataTable2 = {}
dataTable = -273849285
numberValue2 = 911657153
numberValue3 = 1843015545
cmgCall = 1593441988
numberValue4 = 1737195953
textValue = -1206412243
numberValue5 = 1093864856
threadCall = 782720368
cmgCall2 = -976419591
textValue2 = 1838304326
numberValue6 = 1313457450
dataTable2[1] = dataTable
dataTable2[2] = numberValue2
dataTable2[3] = numberValue3
dataTable2[4] = cmgCall
dataTable2[5] = numberValue4
dataTable2[6] = textValue
dataTable2[7] = numberValue5
dataTable2[8] = threadCall
dataTable2[9] = cmgCall2
dataTable2[10] = textValue2
dataTable2[11] = numberValue6
dataTable = {}
numberValue2 = -499989876
dataTable[numberValue2] = true
function numberValue2(arg1, arg2)
  local arg3, cmgCall3
  arg3 = flag7
  if not arg3 then
    arg3 = Citizen
    arg3 = arg3.CreateThread
    function cmgCall3()
      local waitCall, textValue3
      waitCall = true
      flag7 = waitCall
      waitCall = arg1
      numberValue7 = waitCall
      while true do
        waitCall = numberValue7
        if not (waitCall > 0) then
          break
        end
        waitCall = Wait
        textValue3 = 1000
        waitCall(textValue3)
        waitCall = notify
        textValue3 = arg2
        -- Beginner: Show a notification to the player.
        waitCall(textValue3)
        waitCall = numberValue7
        waitCall = waitCall - 1000
        numberValue7 = waitCall
        waitCall = true
        flag = waitCall
        waitCall = nil
        workValue = waitCall
      end
      waitCall = notify
      textValue3 = "~g~Your timeout has finished, do not try to do that again"
      waitCall(textValue3)
      waitCall = false
      flag = waitCall
      waitCall = false
      flag7 = waitCall
    end
    -- Beginner: Start a separate FiveM thread so this code can run independently.
    arg3(cmgCall3)
  end
end
function numberValue3()
  local arg1, arg2, arg3, cmgCall3, flag8, flag9, stringHelper, cmgCall4, cmgCall5
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = CMG
  arg2 = arg2.getPlayerVehicle
  -- Beginner: result below is currentVehicle.
  arg2 = arg2()
  arg3 = GetSelectedPedWeapon
  cmgCall3 = arg1
  -- Beginner: result below is weaponHash.
  arg3 = arg3(cmgCall3)
  cmgCall3 = flag11
  if cmgCall3 and -1569615261 == arg3 then
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.setCanOpenPhone
    flag8 = true
    cmgCall3(flag8)
    cmgCall3 = false
    flag11 = cmgCall3
  end
  cmgCall3 = numberValue9
  if cmgCall3 ~= arg2 then
    if 0 ~= arg2 then
      cmgCall3 = CMG
      cmgCall3 = cmgCall3.setWeapon
      flag8 = arg1
      flag9 = -1569615261
      stringHelper = true
      cmgCall3(flag8, flag9, stringHelper)
      cmgCall3 = -1569615261
      numberValue8 = cmgCall3
    end
    numberValue9 = arg2
  end
  cmgCall3 = flag7
  if cmgCall3 then
    cmgCall3 = CMG
    cmgCall3 = cmgCall3.setWeapon
    flag8 = arg1
    flag9 = -1569615261
    stringHelper = true
    cmgCall3(flag8, flag9, stringHelper)
  end
  cmgCall3 = flag
  if cmgCall3 then
    cmgCall3 = DisablePlayerFiring
    flag8 = PlayerId
    -- Beginner: result below is localPlayerIndex.
    flag8 = flag8()
    flag9 = true
    cmgCall3(flag8, flag9)
  end
  cmgCall3 = flag5
  if cmgCall3 then
    cmgCall3 = IsControlJustPressed
    flag8 = 0
    flag9 = 73
    cmgCall3 = cmgCall3(flag8, flag9)
    if cmgCall3 then
      cmgCall3 = 3500
      flag8 = false
      flag5 = flag8
      flag8 = numberValue7
      if not (cmgCall3 < flag8) then
        numberValue7 = cmgCall3
      end
      flag8 = numberValue2
      flag9 = cmgCall3
      stringHelper = string
      stringHelper = stringHelper.format
      cmgCall4 = "~r~Do not press X to cancel the animation! Your weapons have been holstered for %ss"
      cmgCall5 = cmgCall3 / 1000
      stringHelper, cmgCall4, cmgCall5 = stringHelper(cmgCall4, cmgCall5)
      flag8(flag9, stringHelper, cmgCall4, cmgCall5)
    end
  end
  cmgCall3 = GetIsTaskActive
  flag8 = arg1
  flag9 = 2
  cmgCall3 = cmgCall3(flag8, flag9)
  if cmgCall3 then
    if -1569615261 ~= arg3 then
      cmgCall3 = flag5
      if not cmgCall3 then
        cmgCall3 = CMG
        cmgCall3 = cmgCall3.setWeapon
        flag8 = arg1
        flag9 = -1569615261
        stringHelper = true
        cmgCall3(flag8, flag9, stringHelper)
        cmgCall3 = -1569615261
        numberValue8 = cmgCall3
      end
    end
    cmgCall3 = HudWeaponWheelIgnoreSelection
    cmgCall3()
    cmgCall3 = HudWeaponWheelIgnoreControlInput
    flag8 = true
    cmgCall3(flag8)
  else
    cmgCall3 = HudWeaponWheelIgnoreControlInput
    flag8 = false
    cmgCall3(flag8)
  end
end
cmgCall = CMG
cmgCall = cmgCall.createThreadOnTick
numberValue4 = numberValue3
textValue = "Gun Holster"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall(numberValue4, textValue)
function cmgCall(arg1)
  local arg2, arg3, cmgCall3, flag8, flag9, stringHelper, cmgCall4, cmgCall5, numberValue10
  arg2 = GetPedConfigFlag
  arg3 = arg1
  cmgCall3 = 354
  flag8 = false
  arg2 = arg2(arg3, cmgCall3, flag8)
  if arg2 then
    arg2 = false
    return arg2
  end
  arg2 = GetSelectedPedWeapon
  arg3 = arg1
  -- Beginner: result below is weaponHash.
  arg2 = arg2(arg3)
  if 0 ~= arg2 then
    arg3 = numberValue8
    if arg2 ~= arg3 then
      if 966099553 == arg2 then
        arg3 = -1569615261
        numberValue8 = arg3
        arg3 = false
        return arg3
      else
        arg3 = print
        cmgCall3 = string
        cmgCall3 = cmgCall3.format
        flag8 = "[CMG] Switching from weapon %s to %s."
        flag9 = select
        stringHelper = 2
        cmgCall4 = CMG
        cmgCall4 = cmgCall4.resolveHash
        cmgCall5 = numberValue8
        cmgCall4, cmgCall5, numberValue10 = cmgCall4(cmgCall5)
        flag9 = flag9(stringHelper, cmgCall4, cmgCall5, numberValue10)
        stringHelper = select
        cmgCall4 = 2
        cmgCall5 = CMG
        cmgCall5 = cmgCall5.resolveHash
        numberValue10 = arg2
        cmgCall5, numberValue10 = cmgCall5(numberValue10)
        stringHelper, cmgCall4, cmgCall5, numberValue10 = stringHelper(cmgCall4, cmgCall5, numberValue10)
        cmgCall3, flag8, flag9, stringHelper, cmgCall4, cmgCall5, numberValue10 = cmgCall3(flag8, flag9, stringHelper, cmgCall4, cmgCall5, numberValue10)
        arg3(cmgCall3, flag8, flag9, stringHelper, cmgCall4, cmgCall5, numberValue10)
        numberValue8 = arg2
        arg3 = true
        return arg3
      end
    end
  end
  arg3 = false
  return arg3
end
function numberValue4()
  local arg1, arg2
  arg1 = CMG
  arg1 = arg1.cancelEmote
  arg2 = true
  arg1(arg2)
  arg1 = tCMG
  arg1 = arg1.setCanAnim
  arg2 = false
  arg1(arg2)
end
function textValue()
  local arg1, arg2
  arg1 = tCMG
  arg1 = arg1.setCanAnim
  arg2 = true
  arg1(arg2)
end
function numberValue5(arg1)
  local arg2, arg3
  arg2 = flag7
  if not arg2 then
    arg2 = false
    flag = arg2
    arg2 = false
    flag5 = arg2
    arg2 = GetSelectedPedWeapon
    arg3 = arg1
    -- Beginner: result below is weaponHash.
    arg2 = arg2(arg3)
    workValue = arg2
    arg2 = workValue
    if -1569615261 ~= arg2 then
      arg2 = workValue
      numberValue8 = arg2
    end
  end
end
threadCall = Citizen
threadCall = threadCall.CreateThread
function cmgCall2()
  local arg1, arg2, arg3, cmgCall3, flag8, flag9, stringHelper, cmgCall4, cmgCall5, numberValue10, numberValue, flag2, flag3, flag4
  while true do
    arg1 = CMG
    arg1 = arg1.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    arg1 = arg1()
    arg2 = CMG
    arg2 = arg2.isInModShop
    arg2 = arg2()
    if not arg2 then
      arg2 = flag10
      if arg2 then
        arg2 = IsPedInAnyVehicle
        arg3 = arg1
        cmgCall3 = true
        arg2 = arg2(arg3, cmgCall3)
        if not arg2 then
          arg2 = GetIsTaskActive
          arg3 = arg1
          cmgCall3 = 50
          arg2 = arg2(arg3, cmgCall3)
          if arg2 then
            while true do
              arg2 = GetIsTaskActive
              arg3 = arg1
              cmgCall3 = 50
              arg2 = arg2(arg3, cmgCall3)
              if not arg2 then
                break
              end
              arg2 = Wait
              arg3 = 0
              arg2(arg3)
            end
            arg2 = Wait
            arg3 = 500
            arg2(arg3)
          end
          arg2 = GetIsTaskActive
          arg3 = arg1
          cmgCall3 = 1
          arg2 = arg2(arg3, cmgCall3)
          if arg2 then
            while true do
              arg2 = GetIsTaskActive
              arg3 = arg1
              cmgCall3 = 1
              arg2 = arg2(arg3, cmgCall3)
              if not arg2 then
                break
              end
              arg2 = Wait
              arg3 = 0
              arg2(arg3)
            end
            arg2 = Wait
            arg3 = 500
            arg2(arg3)
          end
          arg2 = cmgCall
          arg3 = arg1
          arg2 = arg2(arg3)
          if arg2 then
            arg2 = numberValue4
            arg2()
            arg2 = GetSelectedPedWeapon
            arg3 = arg1
            -- Beginner: result below is weaponHash.
            arg2 = arg2(arg3)
            if -1569615261 ~= arg2 then
              arg3 = dataTable
              arg3 = arg3[arg2]
              if arg3 then
                arg3 = numberValue5
                cmgCall3 = arg1
                arg3(cmgCall3)
              else
                arg3 = table
                arg3 = arg3.has
                cmgCall3 = dataTable2
                flag8 = arg2
                arg3 = arg3(cmgCall3, flag8)
                if arg3 then
                  arg3 = CMG
                  arg3 = arg3.loadAnimDict
                  cmgCall3 = "rcmjosh4"
                  -- Beginner: Load a GTA animation dictionary before using it.
                  arg3(cmgCall3)
                  arg3 = CMG
                  arg3 = arg3.loadAnimDict
                  cmgCall3 = "reaction@intimidation@cop@unarmed"
                  arg3(cmgCall3)
                  arg3 = true
                  flag5 = arg3
                  arg3 = SetPedCurrentWeaponVisible
                  cmgCall3 = arg1
                  flag8 = false
                  flag9 = true
                  stringHelper = true
                  cmgCall4 = true
                  arg3(cmgCall3, flag8, flag9, stringHelper, cmgCall4)
                  arg3 = TaskPlayAnim
                  cmgCall3 = arg1
                  flag8 = "reaction@intimidation@cop@unarmed"
                  flag9 = "intro"
                  stringHelper = 8.0
                  cmgCall4 = 2.0
                  cmgCall5 = -1
                  numberValue10 = 50
                  numberValue = 2.0
                  flag2 = false
                  flag3 = false
                  flag4 = false
                  -- Beginner: Play an animation on a ped.
                  arg3(cmgCall3, flag8, flag9, stringHelper, cmgCall4, cmgCall5, numberValue10, numberValue, flag2, flag3, flag4)
                  arg3 = RemoveAnimDict
                  cmgCall3 = "reaction@intimidation@cop@unarmed"
                  arg3(cmgCall3)
                  arg3 = SetPedCurrentWeaponVisible
                  cmgCall3 = arg1
                  flag8 = true
                  flag9 = true
                  stringHelper = true
                  cmgCall4 = true
                  arg3(cmgCall3, flag8, flag9, stringHelper, cmgCall4)
                  arg3 = Citizen
                  arg3 = arg3.Wait
                  cmgCall3 = 250
                  arg3(cmgCall3)
                  arg3 = TaskPlayAnim
                  cmgCall3 = arg1
                  flag8 = "rcmjosh4"
                  flag9 = "josh_leadout_cop2"
                  stringHelper = 8.0
                  cmgCall4 = 2.0
                  cmgCall5 = -1
                  numberValue10 = 48
                  numberValue = 10
                  flag2 = false
                  flag3 = false
                  flag4 = false
                  -- Beginner: Play an animation on a ped.
                  arg3(cmgCall3, flag8, flag9, stringHelper, cmgCall4, cmgCall5, numberValue10, numberValue, flag2, flag3, flag4)
                  arg3 = RemoveAnimDict
                  cmgCall3 = "rcmjosh4"
                  arg3(cmgCall3)
                  arg3 = Citizen
                  arg3 = arg3.Wait
                  cmgCall3 = 400
                  arg3(cmgCall3)
                  arg3 = StopAnimTask
                  cmgCall3 = arg1
                  flag8 = "rcmjosh4"
                  flag9 = "josh_leadout_cop2"
                  stringHelper = 1.0
                  arg3(cmgCall3, flag8, flag9, stringHelper)
                  arg3 = GetSelectedPedWeapon
                  cmgCall3 = arg1
                  -- Beginner: result below is weaponHash.
                  arg3 = arg3(cmgCall3)
                  if -1569615261 ~= arg3 then
                    cmgCall3 = table
                    cmgCall3 = cmgCall3.has
                    flag8 = dataTable2
                    flag9 = arg3
                    cmgCall3 = cmgCall3(flag8, flag9)
                    if not cmgCall3 then
                      cmgCall3 = numberValue2
                      flag8 = 3500
                      flag9 = "~r~Do not change weapons to equip quicker! Your weapons have been holstered for 3.5s"
                      cmgCall3(flag8, flag9)
                  end
                  else
                    cmgCall3 = numberValue5
                    flag8 = arg1
                    cmgCall3(flag8)
                  end
                else
                  arg3 = true
                  flag5 = arg3
                  arg3 = CMG
                  arg3 = arg3.loadAnimDict
                  cmgCall3 = "reaction@intimidation@1h"
                  -- Beginner: Load a GTA animation dictionary before using it.
                  arg3(cmgCall3)
                  arg3 = TaskPlayAnim
                  cmgCall3 = arg1
                  flag8 = "reaction@intimidation@1h"
                  flag9 = "intro"
                  stringHelper = 8.0
                  cmgCall4 = 2.0
                  cmgCall5 = 1700
                  numberValue10 = 48
                  numberValue = 10
                  flag2 = false
                  flag3 = false
                  flag4 = false
                  -- Beginner: Play an animation on a ped.
                  arg3(cmgCall3, flag8, flag9, stringHelper, cmgCall4, cmgCall5, numberValue10, numberValue, flag2, flag3, flag4)
                  arg3 = RemoveAnimDict
                  cmgCall3 = "reaction@intimidation@1h"
                  arg3(cmgCall3)
                  arg3 = SetPedCurrentWeaponVisible
                  cmgCall3 = arg1
                  flag8 = false
                  flag9 = true
                  stringHelper = true
                  cmgCall4 = true
                  arg3(cmgCall3, flag8, flag9, stringHelper, cmgCall4)
                  arg3 = true
                  flag = arg3
                  arg3 = Citizen
                  arg3 = arg3.Wait
                  cmgCall3 = 1300
                  arg3(cmgCall3)
                  arg3 = SetPedCurrentWeaponVisible
                  cmgCall3 = arg1
                  flag8 = true
                  flag9 = true
                  stringHelper = true
                  cmgCall4 = true
                  arg3(cmgCall3, flag8, flag9, stringHelper, cmgCall4)
                  arg3 = Citizen
                  arg3 = arg3.Wait
                  cmgCall3 = 700
                  arg3(cmgCall3)
                  arg3 = StopAnimTask
                  cmgCall3 = arg1
                  flag8 = "reaction@intimidation@1h"
                  flag9 = "intro"
                  stringHelper = 1.0
                  arg3(cmgCall3, flag8, flag9, stringHelper)
                  arg3 = EnableControlAction
                  cmgCall3 = 0
                  flag8 = 25
                  flag9 = true
                  arg3(cmgCall3, flag8, flag9)
                  arg3 = numberValue5
                  cmgCall3 = arg1
                  arg3(cmgCall3)
                end
              end
              arg3 = flag11
              if not arg3 then
                arg3 = CMG
                arg3 = arg3.setCanOpenPhone
                cmgCall3 = false
                arg3(cmgCall3)
                arg3 = true
                flag11 = arg3
              end
            else
              arg3 = workValue
              if arg3 then
                cmgCall3 = workValue
                arg3 = dataTable
                arg3 = arg3[cmgCall3]
                if arg3 then
                  arg3 = false
                  flag = arg3
                  arg3 = false
                  flag5 = arg3
                  arg3 = nil
                  workValue = arg3
                  arg3 = -1569615261
                  numberValue8 = arg3
              end
              else
                arg3 = table
                arg3 = arg3.has
                cmgCall3 = dataTable2
                flag8 = workValue
                arg3 = arg3(cmgCall3, flag8)
                if arg3 then
                  arg3 = CMG
                  arg3 = arg3.loadAnimDict
                  cmgCall3 = "rcmjosh4"
                  -- Beginner: Load a GTA animation dictionary before using it.
                  arg3(cmgCall3)
                  arg3 = CMG
                  arg3 = arg3.loadAnimDict
                  cmgCall3 = "reaction@intimidation@cop@unarmed"
                  arg3(cmgCall3)
                  arg3 = TaskPlayAnim
                  cmgCall3 = arg1
                  flag8 = "rcmjosh4"
                  flag9 = "josh_leadout_cop2"
                  stringHelper = 8.0
                  cmgCall4 = 2.0
                  cmgCall5 = -1
                  numberValue10 = 48
                  numberValue = 10
                  flag2 = false
                  flag3 = false
                  flag4 = false
                  -- Beginner: Play an animation on a ped.
                  arg3(cmgCall3, flag8, flag9, stringHelper, cmgCall4, cmgCall5, numberValue10, numberValue, flag2, flag3, flag4)
                  arg3 = RemoveAnimDict
                  cmgCall3 = "rcmjosh4"
                  arg3(cmgCall3)
                  arg3 = Citizen
                  arg3 = arg3.Wait
                  cmgCall3 = 500
                  arg3(cmgCall3)
                  arg3 = TaskPlayAnim
                  cmgCall3 = arg1
                  flag8 = "reaction@intimidation@cop@unarmed"
                  flag9 = "outro"
                  stringHelper = 8.0
                  cmgCall4 = 2.0
                  cmgCall5 = -1
                  numberValue10 = 50
                  numberValue = 2.0
                  flag2 = false
                  flag3 = false
                  flag4 = false
                  -- Beginner: Play an animation on a ped.
                  arg3(cmgCall3, flag8, flag9, stringHelper, cmgCall4, cmgCall5, numberValue10, numberValue, flag2, flag3, flag4)
                  arg3 = RemoveAnimDict
                  cmgCall3 = "reaction@intimidation@cop@unarmed"
                  arg3(cmgCall3)
                  arg3 = Citizen
                  arg3 = arg3.Wait
                  cmgCall3 = 60
                  arg3(cmgCall3)
                  arg3 = StopAnimTask
                  cmgCall3 = arg1
                  flag8 = "reaction@intimidation@cop@unarmed"
                  flag9 = "outro"
                  stringHelper = 1.0
                  arg3(cmgCall3, flag8, flag9, stringHelper)
                  arg3 = GetSelectedPedWeapon
                  cmgCall3 = arg1
                  -- Beginner: result below is weaponHash.
                  arg3 = arg3(cmgCall3)
                  if -1569615261 ~= arg3 then
                    cmgCall3 = table
                    cmgCall3 = cmgCall3.has
                    flag8 = dataTable2
                    flag9 = arg3
                    cmgCall3 = cmgCall3(flag8, flag9)
                    if not cmgCall3 then
                      cmgCall3 = numberValue2
                      flag8 = 3500
                      flag9 = "~r~Do not change weapons to equip quicker! Your weapons have been holstered for 3.5s"
                      cmgCall3(flag8, flag9)
                    end
                  end
                else
                  arg3 = CMG
                  arg3 = arg3.loadAnimDict
                  cmgCall3 = "reaction@intimidation@1h"
                  -- Beginner: Load a GTA animation dictionary before using it.
                  arg3(cmgCall3)
                  arg3 = TaskPlayAnim
                  cmgCall3 = arg1
                  flag8 = "reaction@intimidation@1h"
                  flag9 = "outro"
                  stringHelper = 8.0
                  cmgCall4 = 2.0
                  cmgCall5 = 1700
                  numberValue10 = 48
                  numberValue = 10
                  flag2 = false
                  flag3 = false
                  flag4 = false
                  -- Beginner: Play an animation on a ped.
                  arg3(cmgCall3, flag8, flag9, stringHelper, cmgCall4, cmgCall5, numberValue10, numberValue, flag2, flag3, flag4)
                  arg3 = RemoveAnimDict
                  cmgCall3 = "reaction@intimidation@1h"
                  arg3(cmgCall3)
                  arg3 = true
                  flag = arg3
                  arg3 = CMG
                  arg3 = arg3.setWeapon
                  cmgCall3 = arg1
                  flag8 = GetHashKey
                  flag9 = workValue
                  -- Beginner: result below is hash.
                  flag8 = flag8(flag9)
                  flag9 = true
                  arg3(cmgCall3, flag8, flag9)
                  arg3 = Citizen
                  arg3 = arg3.Wait
                  cmgCall3 = 1300
                  arg3(cmgCall3)
                  arg3 = CMG
                  arg3 = arg3.setWeapon
                  cmgCall3 = arg1
                  flag8 = -1569615261
                  flag9 = true
                  arg3(cmgCall3, flag8, flag9)
                  arg3 = Citizen
                  arg3 = arg3.Wait
                  cmgCall3 = 700
                  arg3(cmgCall3)
                  arg3 = StopAnimTask
                  cmgCall3 = arg1
                  flag8 = "reaction@intimidation@1h"
                  flag9 = "outro"
                  stringHelper = 1.0
                  arg3(cmgCall3, flag8, flag9, stringHelper)
                  arg3 = false
                  flag = arg3
                  arg3 = nil
                  workValue = arg3
                end
              end
            end
            arg3 = textValue
            arg3()
          end
        end
      end
    end
    arg2 = Wait
    arg3 = 0
    arg2(arg3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(cmgCall2)
function threadCall()
  local arg1, arg2
  arg1 = TriggerServerEvent
  arg2 = "d6e12cd653"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d6e12cd653".
  arg1(arg2)
end
GetPurgeWeapons = threadCall
threadCall = false
cmgCall2 = CMG
cmgCall2 = cmgCall2.registerCommand
textValue2 = "debugweapons"
function numberValue6()
  local arg1, arg2, arg3, cmgCall3
  arg1 = threadCall
  arg1 = not arg1
  threadCall = arg1
  arg1 = tCMG
  arg1 = arg1.notify
  arg2 = "~g~Debug weapons now:"
  arg3 = tostring
  cmgCall3 = threadCall
  arg3 = arg3(cmgCall3)
  arg2 = arg2 .. arg3
  -- Beginner: Show a notification to the player.
  arg1(arg2)
end
flag6 = false
cmgCall2(textValue2, numberValue6, flag6)
cmgCall2 = CMG
function textValue2(arg1, arg2, arg3)
  local cmgCall3, flag8, flag9, stringHelper, cmgCall4, cmgCall5, numberValue10, numberValue, flag2
  cmgCall3 = SetCurrentPedWeapon
  flag8 = arg1
  flag9 = arg2
  stringHelper = arg3 or stringHelper
  if not arg3 then
    stringHelper = false
  end
  cmgCall3(flag8, flag9, stringHelper)
  cmgCall3 = threadCall
  if cmgCall3 then
    cmgCall3 = print
    flag8 = "SetCurrentPedWeapon"
    flag9 = arg1
    stringHelper = arg2
    cmgCall4 = arg3
    cmgCall5 = "debug"
    numberValue10 = dump
    numberValue = debug
    numberValue = numberValue.getinfo
    flag2 = 2
    numberValue, flag2 = numberValue(flag2)
    numberValue10, numberValue, flag2 = numberValue10(numberValue, flag2)
    cmgCall3(flag8, flag9, stringHelper, cmgCall4, cmgCall5, numberValue10, numberValue, flag2)
  end
end
cmgCall2.setWeapon = textValue2
cmgCall2 = CMG
function textValue2(arg1)
  local arg2
  flag10 = arg1
end
cmgCall2.setSwitchGunEnabled = textValue2