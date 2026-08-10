--[[
    Beginner Guide: cl_policeshields.lua
    ====================================

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
    BEGINNER GUIDE — Policeshields
    ==============================

    File: cmg/prod/client/police/cl_policeshields.lua
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

    Commands/command-like entries found:
      * /shield

    Network/hash identifiers found: 1
      They are intentionally left unchanged because matching server code may use them.
      * a71cafbef1

    Named framework/network events found:
      * chat:addSuggestion

]]
local dataTable, dataTable2, dataTable3, dataTable4, dataTable5, numberValue5, numberValue7, numberValue8, numberValue10, numberValue12, textValue, rageUiCall, textValue2, textValue3, rageUiCall2, rageUiCall3
dataTable = {}
dataTable.active = false
dataTable.id = 0
dataTable.prop = 0
dataTable.inVehicle = false
dataTable2 = {}
dataTable3 = {}
dataTable3.name = "CTSFO"
dataTable3.model = -498279143
dataTable4 = {}
dataTable5 = -0.59
numberValue5 = 0.29
numberValue7 = 0.15
dataTable4[1] = dataTable5
dataTable4[2] = numberValue5
dataTable4[3] = numberValue7
dataTable3.offSet = dataTable4
dataTable4 = {}
dataTable5 = 0.16
numberValue5 = 79.04
numberValue7 = 41.39
dataTable4[1] = dataTable5
dataTable4[2] = numberValue5
dataTable4[3] = numberValue7
dataTable3.rotation = dataTable4
dataTable3.boneIndex = 24818
dataTable3.collision = true
dataTable3.allowPistol = "hmp"
dataTable3.animDict = "combat@combat_reactions@pistol_1h_hillbilly"
dataTable3.animName = "180"
dataTable4 = {}
dataTable4.name = "Firearms"
dataTable4.model = -374466906
dataTable5 = {}
numberValue5 = -0.59
numberValue7 = 0.29
numberValue8 = 0.15
dataTable5[1] = numberValue5
dataTable5[2] = numberValue7
dataTable5[3] = numberValue8
dataTable4.offSet = dataTable5
dataTable5 = {}
numberValue5 = 0.16
numberValue7 = 79.04
numberValue8 = 41.39
dataTable5[1] = numberValue5
dataTable5[2] = numberValue7
dataTable5[3] = numberValue8
dataTable4.rotation = dataTable5
dataTable4.boneIndex = 24818
dataTable4.collision = true
dataTable4.allowPistol = "hmp"
dataTable4.animDict = "combat@combat_reactions@pistol_1h_hillbilly"
dataTable4.animName = "180"
dataTable5 = {}
dataTable5.name = "Long"
dataTable5.model = 751198732
numberValue5 = {}
numberValue7 = -1.27
numberValue8 = 0.31
numberValue10 = -0.05
numberValue5[1] = numberValue7
numberValue5[2] = numberValue8
numberValue5[3] = numberValue10
dataTable5.offSet = numberValue5
numberValue5 = {}
numberValue7 = 1.0
numberValue8 = 74.39
numberValue10 = 41.39
numberValue5[1] = numberValue7
numberValue5[2] = numberValue8
numberValue5[3] = numberValue10
dataTable5.rotation = numberValue5
dataTable5.boneIndex = 24818
dataTable5.collision = false
dataTable5.allowPistol = "none"
dataTable5.animDict = "combat@combat_reactions@pistol_1h_hillbilly"
dataTable5.animName = "180"
numberValue5 = {}
numberValue5.name = "Short"
numberValue5.model = -1967882881
numberValue7 = {}
numberValue8 = -0.68
numberValue10 = 0.22
numberValue12 = 0.15
numberValue7[1] = numberValue8
numberValue7[2] = numberValue10
numberValue7[3] = numberValue12
numberValue5.offSet = numberValue7
numberValue7 = {}
numberValue8 = 0.52
numberValue10 = 79.28
numberValue12 = 41.39
numberValue7[1] = numberValue8
numberValue7[2] = numberValue10
numberValue7[3] = numberValue12
numberValue5.rotation = numberValue7
numberValue5.boneIndex = 24818
numberValue5.collision = true
numberValue5.allowPistol = "none"
numberValue5.animDict = "combat@combat_reactions@pistol_1h_hillbilly"
numberValue5.animName = "180"
dataTable2[1] = dataTable3
dataTable2[2] = dataTable4
dataTable2[3] = dataTable5
dataTable2[4] = numberValue5
dataTable3 = {}
dataTable4 = 911657153
dataTable5 = -273849285
numberValue5 = -1206412243
numberValue7 = 1093864856
numberValue8 = 782720368
numberValue10 = -976419591
numberValue12 = 1838304326
textValue = 1313457450
dataTable3[1] = dataTable4
dataTable3[2] = dataTable5
dataTable3[3] = numberValue5
dataTable3[4] = numberValue7
dataTable3[5] = numberValue8
dataTable3[6] = numberValue10
dataTable3[7] = numberValue12
dataTable3[8] = textValue
dataTable4 = ""
function dataTable5(arg1)
  local cmgCall, workValue2, workValue4, flag11, flag13
  cmgCall = DoesEntityExist
  workValue2 = dataTable.prop
  cmgCall = cmgCall(workValue2)
  if cmgCall then
    cmgCall = CMG
    cmgCall = cmgCall.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    cmgCall = cmgCall()
    workValue2 = DetachEntity
    workValue4 = dataTable.prop
    flag11 = false
    flag13 = false
    workValue2(workValue4, flag11, flag13)
    workValue2 = DeleteEntity
    workValue4 = dataTable.prop
    -- Beginner: Delete a GTA entity.
    workValue2(workValue4)
    dataTable.id = 0
    dataTable.active = false
    workValue2 = ClearPedTasks
    workValue4 = cmgCall
    workValue2(workValue4)
    workValue2 = ClearPedTasksImmediately
    workValue4 = cmgCall
    workValue2(workValue4)
    workValue2 = SetWeaponAnimationOverride
    workValue4 = cmgCall
    flag11 = -455129387
    workValue2(workValue4, flag11)
    if arg1 then
      workValue2 = tCMG
      workValue2 = workValue2.notify
      workValue4 = "~g~Success~w~: Shield removed"
      -- Beginner: Show a notification to the player.
      workValue2(workValue4)
    end
  end
end
function numberValue5(arg1)
  local cmgCall, workValue2, workValue4, flag11, flag13, flag14, flag15, numberValue11, flag16, flag, flag3, numberValue, flag5, flag6, flag7, flag8, workValue, flag9, numberValue2, flag10
  cmgCall = CMG
  cmgCall = cmgCall.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall = cmgCall()
  workValue2 = CMG
  workValue2 = workValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  workValue2 = workValue2()
  workValue4 = dataTable.active
  if workValue4 then
    workValue4 = dataTable5
    flag11 = false
    workValue4(flag11)
  end
  dataTable.id = arg1
  workValue4 = CMG
  workValue4 = workValue4.loadModel
  flag11 = dataTable2
  flag11 = flag11[arg1]
  flag11 = flag11.model
  workValue4 = workValue4(flag11)
  if not workValue4 then
    return
  end
  flag11 = CMG
  flag11 = flag11.requestEntitySpawn
  flag13 = "police_shield"
  flag14 = workValue4
  flag11(flag13, flag14)
  flag11 = CreateObject
  flag13 = workValue4
  flag14 = workValue2.x
  flag15 = workValue2.y
  numberValue11 = workValue2.z
  flag16 = true
  flag = true
  flag3 = true
  -- Beginner: result below is objectEntity.
  flag11 = flag11(flag13, flag14, flag15, numberValue11, flag16, flag, flag3)
  dataTable.prop = flag11
  while true do
    flag11 = DoesEntityExist
    flag13 = dataTable.prop
    flag11 = flag11(flag13)
    if flag11 then
      break
    end
    flag11 = Wait
    flag13 = 0
    flag11(flag13)
  end
  flag11 = SetModelAsNoLongerNeeded
  flag13 = workValue4
  flag11(flag13)
  flag11 = dataTable2
  flag11 = flag11[arg1]
  flag11 = flag11.collision
  if not flag11 then
    flag11 = SetEntityCompletelyDisableCollision
    flag13 = dataTable.prop
    flag14 = true
    flag15 = true
    flag11(flag13, flag14, flag15)
  end
  flag11 = SetWeaponAnimationOverride
  flag13 = cmgCall
  flag14 = 1917483703
  flag11(flag13, flag14)
  flag11 = CMG
  flag11 = flag11.loadAnimDict
  flag13 = dataTable2
  flag13 = flag13[arg1]
  flag13 = flag13.animDict
  -- Beginner: Load a GTA animation dictionary before using it.
  flag11(flag13)
  flag11 = TaskPlayAnim
  flag13 = cmgCall
  flag14 = dataTable2
  flag14 = flag14[arg1]
  flag14 = flag14.animDict
  flag15 = dataTable2
  flag15 = flag15[arg1]
  flag15 = flag15.animName
  numberValue11 = 8.0
  flag16 = -8.0
  flag = -1
  flag3 = 50
  numberValue = 0.0
  flag5 = false
  flag6 = false
  flag7 = false
  -- Beginner: Play an animation on a ped.
  flag11(flag13, flag14, flag15, numberValue11, flag16, flag, flag3, numberValue, flag5, flag6, flag7)
  flag11 = RemoveAnimDict
  flag13 = dataTable2
  flag13 = flag13[arg1]
  flag13 = flag13.animDict
  flag11(flag13)
  flag11 = GetPedBoneIndex
  flag13 = cmgCall
  flag14 = dataTable2
  flag14 = flag14[arg1]
  flag14 = flag14.boneIndex
  flag11 = flag11(flag13, flag14)
  flag13 = AttachEntityToEntity
  flag14 = dataTable.prop
  flag15 = cmgCall
  numberValue11 = flag11
  flag16 = dataTable2
  flag16 = flag16[arg1]
  flag16 = flag16.offSet
  flag16 = flag16[1]
  flag = dataTable2
  flag = flag[arg1]
  flag = flag.offSet
  flag = flag[2]
  flag3 = dataTable2
  flag3 = flag3[arg1]
  flag3 = flag3.offSet
  flag3 = flag3[3]
  numberValue = dataTable2
  numberValue = numberValue[arg1]
  numberValue = numberValue.rotation
  numberValue = numberValue[1]
  flag5 = dataTable2
  flag5 = flag5[arg1]
  flag5 = flag5.rotation
  flag5 = flag5[2]
  flag6 = dataTable2
  flag6 = flag6[arg1]
  flag6 = flag6.rotation
  flag6 = flag6[3]
  flag7 = true
  flag8 = true
  workValue = dataTable2
  workValue = workValue[arg1]
  workValue = workValue.collision
  flag9 = false
  numberValue2 = 1
  flag10 = true
  -- Beginner: Attach one entity to another entity.
  flag13(flag14, flag15, numberValue11, flag16, flag, flag3, numberValue, flag5, flag6, flag7, flag8, workValue, flag9, numberValue2, flag10)
  dataTable.active = true
end
function numberValue7()
  local arg1, cmgCall, workValue2
  cmgCall = dataTable.id
  arg1 = dataTable2
  arg1 = arg1[cmgCall]
  arg1 = arg1.allowPistol
  if "hmp" == arg1 then
    cmgCall = CMG
    cmgCall = cmgCall.hasClientPermission
    workValue2 = "prisonguard.onduty.permission"
    cmgCall = cmgCall(workValue2)
    if cmgCall then
      cmgCall = true
      return cmgCall
  end
  elseif "police" == arg1 then
    cmgCall = CMG
    cmgCall = cmgCall.hasClientPermission
    workValue2 = "police.onduty.permission"
    cmgCall = cmgCall(workValue2)
    if cmgCall then
      cmgCall = true
      return cmgCall
    end
  end
  cmgCall = false
  return cmgCall
end
function numberValue8()
  local arg1, cmgCall, workValue2, workValue4, flag11, flag13, flag14, flag15, numberValue11, flag16, flag, flag3, numberValue
  arg1 = dataTable.active
  if arg1 then
    arg1 = dataTable.id
    if 0 ~= arg1 then
      arg1 = CMG
      arg1 = arg1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      arg1 = arg1()
      cmgCall = IsPedInAnyVehicle
      workValue2 = arg1
      workValue4 = true
      cmgCall = cmgCall(workValue2, workValue4)
      if cmgCall then
        cmgCall = dataTable.inVehicle
        if not cmgCall then
          cmgCall = SetEntityCollision
          workValue2 = dataTable.prop
          workValue4 = false
          flag11 = true
          cmgCall(workValue2, workValue4, flag11)
          dataTable.inVehicle = true
          workValue2 = dataTable.id
          cmgCall = dataTable2
          cmgCall = cmgCall[workValue2]
          cmgCall = cmgCall.collision
          if not cmgCall then
            cmgCall = SetEntityCollision
            workValue2 = dataTable.prop
            workValue4 = false
            flag11 = true
            cmgCall(workValue2, workValue4, flag11)
          end
        end
      else
        cmgCall = dataTable.inVehicle
        if cmgCall then
          cmgCall = SetEntityCollision
          workValue2 = dataTable.prop
          flag11 = dataTable.id
          workValue4 = dataTable2
          workValue4 = workValue4[flag11]
          workValue4 = workValue4.collision
          flag11 = true
          cmgCall(workValue2, workValue4, flag11)
          workValue2 = dataTable.id
          cmgCall = dataTable2
          cmgCall = cmgCall[workValue2]
          cmgCall = cmgCall.collision
          if not cmgCall then
            cmgCall = SetEntityCompletelyDisableCollision
            workValue2 = dataTable.prop
            workValue4 = true
            flag11 = true
            cmgCall(workValue2, workValue4, flag11)
          end
          dataTable.inVehicle = false
          cmgCall = Citizen
          cmgCall = cmgCall.CreateThread
          function workValue2()
            local waitCall, numberValue3, workValue3, workValue5, numberValue4, numberValue6, rageUiCall4, numberValue9, textValue4, flag17, flag2, flag4
            waitCall = Wait
            numberValue3 = 200
            waitCall(numberValue3)
            waitCall = TaskPlayAnim
            numberValue3 = arg1
            workValue5 = dataTable.id
            workValue3 = dataTable2
            workValue3 = workValue3[workValue5]
            workValue3 = workValue3.animDict
            numberValue4 = dataTable.id
            workValue5 = dataTable2
            workValue5 = workValue5[numberValue4]
            workValue5 = workValue5.animName
            numberValue4 = 8.0
            numberValue6 = -8.0
            rageUiCall4 = -1
            numberValue9 = 50
            textValue4 = 0.0
            flag17 = false
            flag2 = false
            flag4 = false
            -- Beginner: Play an animation on a ped.
            waitCall(numberValue3, workValue3, workValue5, numberValue4, numberValue6, rageUiCall4, numberValue9, textValue4, flag17, flag2, flag4)
            numberValue3 = dataTable.id
            waitCall = dataTable2
            waitCall = waitCall[numberValue3]
            waitCall = waitCall.collision
            if not waitCall then
              waitCall = SetEntityCollision
              numberValue3 = dataTable.prop
              workValue3 = false
              workValue5 = true
              waitCall(numberValue3, workValue3, workValue5)
            end
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          cmgCall(workValue2)
        end
      end
      cmgCall = dataTable.inVehicle
      if not cmgCall then
        workValue2 = dataTable.id
        cmgCall = dataTable2
        cmgCall = cmgCall[workValue2]
        if nil ~= cmgCall then
          workValue2 = dataTable.id
          cmgCall = dataTable2
          cmgCall = cmgCall[workValue2]
          cmgCall = cmgCall.animDict
          if nil ~= cmgCall then
            workValue2 = dataTable.id
            cmgCall = dataTable2
            cmgCall = cmgCall[workValue2]
            cmgCall = cmgCall.animName
            if nil ~= cmgCall then
              cmgCall = IsEntityPlayingAnim
              workValue2 = arg1
              flag11 = dataTable.id
              workValue4 = dataTable2
              workValue4 = workValue4[flag11]
              workValue4 = workValue4.animDict
              flag13 = dataTable.id
              flag11 = dataTable2
              flag11 = flag11[flag13]
              flag11 = flag11.animName
              flag13 = 3
              cmgCall = cmgCall(workValue2, workValue4, flag11, flag13)
              if not cmgCall then
                cmgCall = tCMG
                cmgCall = cmgCall.isInComa
                cmgCall = cmgCall()
                if not cmgCall then
                  cmgCall = CMG
                  cmgCall = cmgCall.isKnockedOut
                  cmgCall = cmgCall()
                  if not cmgCall then
                    cmgCall = TaskPlayAnim
                    workValue2 = arg1
                    flag11 = dataTable.id
                    workValue4 = dataTable2
                    workValue4 = workValue4[flag11]
                    workValue4 = workValue4.animDict
                    flag13 = dataTable.id
                    flag11 = dataTable2
                    flag11 = flag11[flag13]
                    flag11 = flag11.animName
                    flag13 = 8.0
                    flag14 = -8.0
                    flag15 = -1
                    numberValue11 = 50
                    flag16 = 0.0
                    flag = false
                    flag3 = false
                    numberValue = false
                    -- Beginner: Play an animation on a ped.
                    cmgCall(workValue2, workValue4, flag11, flag13, flag14, flag15, numberValue11, flag16, flag, flag3, numberValue)
                  end
                end
              end
            end
          end
        end
        workValue2 = dataTable.id
        cmgCall = dataTable2
        cmgCall = cmgCall[workValue2]
        cmgCall = cmgCall.collision
        if not cmgCall then
          cmgCall = SetEntityCollision
          workValue2 = dataTable.prop
          workValue4 = false
          flag11 = true
          cmgCall(workValue2, workValue4, flag11)
        end
      end
      cmgCall = GetSelectedPedWeapon
      workValue2 = arg1
      -- Beginner: result below is weaponHash.
      cmgCall = cmgCall(workValue2)
      if -1569615261 ~= cmgCall then
        workValue2 = numberValue7
        workValue2 = workValue2()
        if workValue2 then
          workValue2 = table
          workValue2 = workValue2.has
          workValue4 = dataTable3
          flag11 = cmgCall
          workValue2 = workValue2(workValue4, flag11)
          if workValue2 then
            goto flow_label_160
          end
        end
        workValue2 = CMG
        workValue2 = workValue2.setWeapon
        workValue4 = arg1
        flag11 = -1569615261
        flag13 = true
        workValue2(workValue4, flag11, flag13)
      end
      ::flow_label_160::
      workValue2 = DisableControlAction
      workValue4 = 0
      flag11 = 210
      flag13 = true
      workValue2(workValue4, flag11, flag13)
      workValue2 = DisableControlAction
      workValue4 = 1
      flag11 = 210
      flag13 = true
      workValue2(workValue4, flag11, flag13)
      workValue2 = DisableControlAction
      workValue4 = 0
      flag11 = 36
      flag13 = true
      workValue2(workValue4, flag11, flag13)
      workValue2 = DisableControlAction
      workValue4 = 1
      flag11 = 36
      flag13 = true
      workValue2(workValue4, flag11, flag13)
      workValue4 = dataTable.id
      workValue2 = dataTable2
      workValue2 = workValue2[workValue4]
      workValue2 = workValue2.collision
      if not workValue2 then
        workValue2 = SetEntityCollision
        workValue4 = dataTable.prop
        flag11 = false
        flag13 = true
        workValue2(workValue4, flag11, flag13)
      end
    end
  end
end
numberValue10 = Citizen
numberValue10 = numberValue10.CreateThread
function numberValue12()
  local arg1, cmgCall, workValue2, workValue4, flag11, flag13, flag14, flag15, numberValue11
  arg1 = pairs
  cmgCall = dataTable2
  arg1, cmgCall, workValue2, workValue4 = arg1(cmgCall)
  for flag11, flag13 in arg1, cmgCall, workValue2, workValue4 do
    flag14 = dataTable4
    if "" == flag14 then
      flag14 = flag13.name
      dataTable4 = flag14
    else
      flag14 = dataTable4
      flag15 = ", "
      numberValue11 = flag13.name
      flag14 = flag14 .. flag15 .. numberValue11
      dataTable4 = flag14
    end
  end
  arg1 = TriggerEvent
  cmgCall = "chat:addSuggestion"
  workValue2 = "/shield"
  workValue4 = "Use a police shield"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
  arg1(cmgCall, workValue2, workValue4)
  arg1 = CMG
  arg1 = arg1.createThreadOnTick
  cmgCall = numberValue8
  workValue2 = "Police Shields"
  -- Beginner: Run a helper every game frame while this script is active.
  arg1(cmgCall, workValue2)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
numberValue10(numberValue12)
numberValue10 = RMenu
numberValue10 = numberValue10.Add
numberValue12 = "policeshields"
textValue = "main"
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateMenu
textValue2 = "Police Shields"
textValue3 = "~b~Shield Management"
rageUiCall2 = CMG
rageUiCall2 = rageUiCall2.getRageUIMenuWidth
rageUiCall2 = rageUiCall2()
rageUiCall3 = CMG
rageUiCall3 = rageUiCall3.getRageUIMenuHeight
rageUiCall3 = rageUiCall3()
rageUiCall, textValue2, textValue3, rageUiCall2, rageUiCall3 = rageUiCall(textValue2, textValue3, rageUiCall2, rageUiCall3)
numberValue10(numberValue12, textValue, rageUiCall, textValue2, textValue3, rageUiCall2, rageUiCall3)
numberValue10 = RageUI
numberValue10 = numberValue10.CreateWhile
numberValue12 = 1.0
textValue = RMenu
rageUiCall = textValue
textValue = textValue.Get
textValue2 = "policeshields"
textValue3 = "main"
-- Beginner: result below is menu.
textValue = textValue(rageUiCall, textValue2, textValue3)
rageUiCall = nil
function textValue2()
  local arg1, cmgCall, workValue2, workValue4, flag11, flag13, flag14
  arg1 = RageUI
  arg1 = arg1.IsVisible
  cmgCall = RMenu
  workValue2 = cmgCall
  cmgCall = cmgCall.Get
  workValue4 = "policeshields"
  flag11 = "main"
  -- Beginner: result below is menu.
  cmgCall = cmgCall(workValue2, workValue4, flag11)
  workValue2 = true
  workValue4 = false
  flag11 = true
  function flag13()
    local waitCall, numberValue3, workValue3, workValue5, numberValue4, numberValue6, rageUiCall4, numberValue9, textValue4, flag17, flag2
    waitCall = pairs
    numberValue3 = dataTable2
    waitCall, numberValue3, workValue3, workValue5 = waitCall(numberValue3)
    for numberValue4, numberValue6 in waitCall, numberValue3, workValue3, workValue5 do
      rageUiCall4 = RageUI
      rageUiCall4 = rageUiCall4.Button
      numberValue9 = numberValue6.name
      textValue4 = " Shield"
      numberValue9 = numberValue9 .. textValue4
      textValue4 = "Use the "
      flag17 = numberValue6.name
      flag2 = " Shield"
      textValue4 = textValue4 .. flag17 .. flag2
      flag17 = true
      function flag2(arg12, arg2, arg3)
        local workValue6, flag12
        if arg3 then
          workValue6 = numberValue5
          flag12 = numberValue4
          workValue6(flag12)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall4(numberValue9, textValue4, flag17, flag2)
    end
    waitCall = dataTable.active
    if waitCall then
      waitCall = RageUI
      waitCall = waitCall.Button
      numberValue3 = "Remove Shield"
      workValue3 = "Removes your current shield"
      workValue5 = true
      function numberValue4(arg12, arg2, arg3)
        local workValue6, flag12
        if arg3 then
          workValue6 = dataTable5
          flag12 = true
          workValue6(flag12)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      waitCall(numberValue3, workValue3, workValue5, numberValue4)
    end
  end
  function flag14()
    local waitCall, numberValue3
  end
  arg1(cmgCall, workValue2, workValue4, flag11, flag13, flag14)
end
numberValue10(numberValue12, textValue, rageUiCall, textValue2)
numberValue10 = RegisterNetEvent
numberValue12 = "a71cafbef1"
-- Beginner: this function handles network event "a71cafbef1".
function textValue()
  local arg1, cmgCall, workValue2, workValue4, flag11
  arg1 = RageUI
  arg1 = arg1.Visible
  cmgCall = RMenu
  workValue2 = cmgCall
  cmgCall = cmgCall.Get
  workValue4 = "policeshields"
  flag11 = "main"
  -- Beginner: result below is menu.
  cmgCall = cmgCall(workValue2, workValue4, flag11)
  workValue2 = true
  arg1(cmgCall, workValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a71cafbef1".
numberValue10(numberValue12, textValue)