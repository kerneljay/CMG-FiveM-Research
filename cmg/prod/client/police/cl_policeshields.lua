--[[
    LEVEL 1 BEGINNER GUIDE — Policeshields
    ===========================================

    File: cmg/prod/client/police/cl_policeshields.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Policeshields feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 12
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
local dataCollection, dataCollection2, dataCollection3, dataCollection4, dataCollection5, number5, number7, number8, number10, number12, text, rageUiOperation, text2, text3, rageUiOperation2, rageUiOperation3
dataCollection = {}
dataCollection.active = false
dataCollection.id = 0
dataCollection.prop = 0
dataCollection.inVehicle = false
dataCollection2 = {}
dataCollection3 = {}
dataCollection3.name = "CTSFO"
dataCollection3.model = -498279143
dataCollection4 = {}
dataCollection5 = -0.59
number5 = 0.29
number7 = 0.15
dataCollection4[1] = dataCollection5
dataCollection4[2] = number5
dataCollection4[3] = number7
dataCollection3.offSet = dataCollection4
dataCollection4 = {}
dataCollection5 = 0.16
number5 = 79.04
number7 = 41.39
dataCollection4[1] = dataCollection5
dataCollection4[2] = number5
dataCollection4[3] = number7
dataCollection3.rotation = dataCollection4
dataCollection3.boneIndex = 24818
dataCollection3.collision = true
dataCollection3.allowPistol = "hmp"
dataCollection3.animDict = "combat@combat_reactions@pistol_1h_hillbilly"
dataCollection3.animName = "180"
dataCollection4 = {}
dataCollection4.name = "Firearms"
dataCollection4.model = -374466906
dataCollection5 = {}
number5 = -0.59
number7 = 0.29
number8 = 0.15
dataCollection5[1] = number5
dataCollection5[2] = number7
dataCollection5[3] = number8
dataCollection4.offSet = dataCollection5
dataCollection5 = {}
number5 = 0.16
number7 = 79.04
number8 = 41.39
dataCollection5[1] = number5
dataCollection5[2] = number7
dataCollection5[3] = number8
dataCollection4.rotation = dataCollection5
dataCollection4.boneIndex = 24818
dataCollection4.collision = true
dataCollection4.allowPistol = "hmp"
dataCollection4.animDict = "combat@combat_reactions@pistol_1h_hillbilly"
dataCollection4.animName = "180"
dataCollection5 = {}
dataCollection5.name = "Long"
dataCollection5.model = 751198732
number5 = {}
number7 = -1.27
number8 = 0.31
number10 = -0.05
number5[1] = number7
number5[2] = number8
number5[3] = number10
dataCollection5.offSet = number5
number5 = {}
number7 = 1.0
number8 = 74.39
number10 = 41.39
number5[1] = number7
number5[2] = number8
number5[3] = number10
dataCollection5.rotation = number5
dataCollection5.boneIndex = 24818
dataCollection5.collision = false
dataCollection5.allowPistol = "none"
dataCollection5.animDict = "combat@combat_reactions@pistol_1h_hillbilly"
dataCollection5.animName = "180"
number5 = {}
number5.name = "Short"
number5.model = -1967882881
number7 = {}
number8 = -0.68
number10 = 0.22
number12 = 0.15
number7[1] = number8
number7[2] = number10
number7[3] = number12
number5.offSet = number7
number7 = {}
number8 = 0.52
number10 = 79.28
number12 = 41.39
number7[1] = number8
number7[2] = number10
number7[3] = number12
number5.rotation = number7
number5.boneIndex = 24818
number5.collision = true
number5.allowPistol = "none"
number5.animDict = "combat@combat_reactions@pistol_1h_hillbilly"
number5.animName = "180"
dataCollection2[1] = dataCollection3
dataCollection2[2] = dataCollection4
dataCollection2[3] = dataCollection5
dataCollection2[4] = number5
dataCollection3 = {}
dataCollection4 = 911657153
dataCollection5 = -273849285
number5 = -1206412243
number7 = 1093864856
number8 = 782720368
number10 = -976419591
number12 = 1838304326
text = 1313457450
dataCollection3[1] = dataCollection4
dataCollection3[2] = dataCollection5
dataCollection3[3] = number5
dataCollection3[4] = number7
dataCollection3[5] = number8
dataCollection3[6] = number10
dataCollection3[7] = number12
dataCollection3[8] = text
dataCollection4 = ""

-- === HELPER FUNCTION (decompiler name: dataCollection5; parameters: localValue1) ===
function dataCollection5(localValue1)
  local cmgOperation, workingValue2, workingValue4, stateFlag11, stateFlag13
  cmgOperation = DoesEntityExist
  workingValue2 = dataCollection.prop
  cmgOperation = cmgOperation(workingValue2)
  if cmgOperation then
    cmgOperation = CMG
    cmgOperation = cmgOperation.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    cmgOperation = cmgOperation()
    workingValue2 = DetachEntity
    workingValue4 = dataCollection.prop
    stateFlag11 = false
    stateFlag13 = false
    workingValue2(workingValue4, stateFlag11, stateFlag13)
    workingValue2 = DeleteEntity
    workingValue4 = dataCollection.prop
    -- Beginner: Delete a GTA entity.
    workingValue2(workingValue4)
    dataCollection.id = 0
    dataCollection.active = false
    workingValue2 = ClearPedTasks
    workingValue4 = cmgOperation
    workingValue2(workingValue4)
    workingValue2 = ClearPedTasksImmediately
    workingValue4 = cmgOperation
    workingValue2(workingValue4)
    workingValue2 = SetWeaponAnimationOverride
    workingValue4 = cmgOperation
    stateFlag11 = -455129387
    workingValue2(workingValue4, stateFlag11)
    if localValue1 then
      workingValue2 = tCMG
      workingValue2 = workingValue2.notify
      workingValue4 = "~g~Success~w~: Shield removed"
      -- Beginner: Show a notification to the player.
      workingValue2(workingValue4)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: number5; parameters: localValue1) ===
function number5(localValue1)
  local cmgOperation, workingValue2, workingValue4, stateFlag11, stateFlag13, stateFlag14, stateFlag15, number11, stateFlag16, stateFlag, stateFlag3, number, stateFlag5, stateFlag6, stateFlag7, stateFlag8, workingValue, stateFlag9, number2, stateFlag10
  cmgOperation = CMG
  cmgOperation = cmgOperation.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation = cmgOperation()
  workingValue2 = CMG
  workingValue2 = workingValue2.getPlayerCoords
  -- Beginner: result below is playerCoords.
  workingValue2 = workingValue2()
  workingValue4 = dataCollection.active
  if workingValue4 then
    workingValue4 = dataCollection5
    stateFlag11 = false
    workingValue4(stateFlag11)
  end
  dataCollection.id = localValue1
  workingValue4 = CMG
  workingValue4 = workingValue4.loadModel
  stateFlag11 = dataCollection2
  stateFlag11 = stateFlag11[localValue1]
  stateFlag11 = stateFlag11.model
  workingValue4 = workingValue4(stateFlag11)
  if not workingValue4 then
    return
  end
  stateFlag11 = CMG
  stateFlag11 = stateFlag11.requestEntitySpawn
  stateFlag13 = "police_shield"
  stateFlag14 = workingValue4
  stateFlag11(stateFlag13, stateFlag14)
  stateFlag11 = CreateObject
  stateFlag13 = workingValue4
  stateFlag14 = workingValue2.x
  stateFlag15 = workingValue2.y
  number11 = workingValue2.z
  stateFlag16 = true
  stateFlag = true
  stateFlag3 = true
  -- Beginner: result below is objectEntity.
  stateFlag11 = stateFlag11(stateFlag13, stateFlag14, stateFlag15, number11, stateFlag16, stateFlag, stateFlag3)
  dataCollection.prop = stateFlag11
  while true do
    stateFlag11 = DoesEntityExist
    stateFlag13 = dataCollection.prop
    stateFlag11 = stateFlag11(stateFlag13)
    if stateFlag11 then
      break
    end
    stateFlag11 = Wait
    stateFlag13 = 0
    stateFlag11(stateFlag13)
  end
  stateFlag11 = SetModelAsNoLongerNeeded
  stateFlag13 = workingValue4
  stateFlag11(stateFlag13)
  stateFlag11 = dataCollection2
  stateFlag11 = stateFlag11[localValue1]
  stateFlag11 = stateFlag11.collision
  if not stateFlag11 then
    stateFlag11 = SetEntityCompletelyDisableCollision
    stateFlag13 = dataCollection.prop
    stateFlag14 = true
    stateFlag15 = true
    stateFlag11(stateFlag13, stateFlag14, stateFlag15)
  end
  stateFlag11 = SetWeaponAnimationOverride
  stateFlag13 = cmgOperation
  stateFlag14 = 1917483703
  stateFlag11(stateFlag13, stateFlag14)
  stateFlag11 = CMG
  stateFlag11 = stateFlag11.loadAnimDict
  stateFlag13 = dataCollection2
  stateFlag13 = stateFlag13[localValue1]
  stateFlag13 = stateFlag13.animDict
  -- Beginner: Load a GTA animation dictionary before using it.
  stateFlag11(stateFlag13)
  stateFlag11 = TaskPlayAnim
  stateFlag13 = cmgOperation
  stateFlag14 = dataCollection2
  stateFlag14 = stateFlag14[localValue1]
  stateFlag14 = stateFlag14.animDict
  stateFlag15 = dataCollection2
  stateFlag15 = stateFlag15[localValue1]
  stateFlag15 = stateFlag15.animName
  number11 = 8.0
  stateFlag16 = -8.0
  stateFlag = -1
  stateFlag3 = 50
  number = 0.0
  stateFlag5 = false
  stateFlag6 = false
  stateFlag7 = false
  -- Beginner: Play an animation on a ped.
  stateFlag11(stateFlag13, stateFlag14, stateFlag15, number11, stateFlag16, stateFlag, stateFlag3, number, stateFlag5, stateFlag6, stateFlag7)
  stateFlag11 = RemoveAnimDict
  stateFlag13 = dataCollection2
  stateFlag13 = stateFlag13[localValue1]
  stateFlag13 = stateFlag13.animDict
  stateFlag11(stateFlag13)
  stateFlag11 = GetPedBoneIndex
  stateFlag13 = cmgOperation
  stateFlag14 = dataCollection2
  stateFlag14 = stateFlag14[localValue1]
  stateFlag14 = stateFlag14.boneIndex
  stateFlag11 = stateFlag11(stateFlag13, stateFlag14)
  stateFlag13 = AttachEntityToEntity
  stateFlag14 = dataCollection.prop
  stateFlag15 = cmgOperation
  number11 = stateFlag11
  stateFlag16 = dataCollection2
  stateFlag16 = stateFlag16[localValue1]
  stateFlag16 = stateFlag16.offSet
  stateFlag16 = stateFlag16[1]
  stateFlag = dataCollection2
  stateFlag = stateFlag[localValue1]
  stateFlag = stateFlag.offSet
  stateFlag = stateFlag[2]
  stateFlag3 = dataCollection2
  stateFlag3 = stateFlag3[localValue1]
  stateFlag3 = stateFlag3.offSet
  stateFlag3 = stateFlag3[3]
  number = dataCollection2
  number = number[localValue1]
  number = number.rotation
  number = number[1]
  stateFlag5 = dataCollection2
  stateFlag5 = stateFlag5[localValue1]
  stateFlag5 = stateFlag5.rotation
  stateFlag5 = stateFlag5[2]
  stateFlag6 = dataCollection2
  stateFlag6 = stateFlag6[localValue1]
  stateFlag6 = stateFlag6.rotation
  stateFlag6 = stateFlag6[3]
  stateFlag7 = true
  stateFlag8 = true
  workingValue = dataCollection2
  workingValue = workingValue[localValue1]
  workingValue = workingValue.collision
  stateFlag9 = false
  number2 = 1
  stateFlag10 = true
  -- Beginner: Attach one entity to another entity.
  stateFlag13(stateFlag14, stateFlag15, number11, stateFlag16, stateFlag, stateFlag3, number, stateFlag5, stateFlag6, stateFlag7, stateFlag8, workingValue, stateFlag9, number2, stateFlag10)
  dataCollection.active = true
end

-- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
function number7()
  local localValue1, cmgOperation, workingValue2
  cmgOperation = dataCollection.id
  localValue1 = dataCollection2
  localValue1 = localValue1[cmgOperation]
  localValue1 = localValue1.allowPistol
  if "hmp" == localValue1 then
    cmgOperation = CMG
    cmgOperation = cmgOperation.hasClientPermission
    workingValue2 = "prisonguard.onduty.permission"
    cmgOperation = cmgOperation(workingValue2)
    if cmgOperation then
      cmgOperation = true
      return cmgOperation
  end
  elseif "police" == localValue1 then
    cmgOperation = CMG
    cmgOperation = cmgOperation.hasClientPermission
    workingValue2 = "police.onduty.permission"
    cmgOperation = cmgOperation(workingValue2)
    if cmgOperation then
      cmgOperation = true
      return cmgOperation
    end
  end
  cmgOperation = false
  return cmgOperation
end

-- === HELPER FUNCTION (decompiler name: number8; parameters: none) ===
function number8()
  local localValue1, cmgOperation, workingValue2, workingValue4, stateFlag11, stateFlag13, stateFlag14, stateFlag15, number11, stateFlag16, stateFlag, stateFlag3, number
  localValue1 = dataCollection.active
  if localValue1 then
    localValue1 = dataCollection.id
    if 0 ~= localValue1 then
      localValue1 = CMG
      localValue1 = localValue1.getPlayerPed
      -- Beginner: result below is localPlayerPed.
      localValue1 = localValue1()
      cmgOperation = IsPedInAnyVehicle
      workingValue2 = localValue1
      workingValue4 = true
      cmgOperation = cmgOperation(workingValue2, workingValue4)
      if cmgOperation then
        cmgOperation = dataCollection.inVehicle
        if not cmgOperation then
          cmgOperation = SetEntityCollision
          workingValue2 = dataCollection.prop
          workingValue4 = false
          stateFlag11 = true
          cmgOperation(workingValue2, workingValue4, stateFlag11)
          dataCollection.inVehicle = true
          workingValue2 = dataCollection.id
          cmgOperation = dataCollection2
          cmgOperation = cmgOperation[workingValue2]
          cmgOperation = cmgOperation.collision
          if not cmgOperation then
            cmgOperation = SetEntityCollision
            workingValue2 = dataCollection.prop
            workingValue4 = false
            stateFlag11 = true
            cmgOperation(workingValue2, workingValue4, stateFlag11)
          end
        end
      else
        cmgOperation = dataCollection.inVehicle
        if cmgOperation then
          cmgOperation = SetEntityCollision
          workingValue2 = dataCollection.prop
          stateFlag11 = dataCollection.id
          workingValue4 = dataCollection2
          workingValue4 = workingValue4[stateFlag11]
          workingValue4 = workingValue4.collision
          stateFlag11 = true
          cmgOperation(workingValue2, workingValue4, stateFlag11)
          workingValue2 = dataCollection.id
          cmgOperation = dataCollection2
          cmgOperation = cmgOperation[workingValue2]
          cmgOperation = cmgOperation.collision
          if not cmgOperation then
            cmgOperation = SetEntityCompletelyDisableCollision
            workingValue2 = dataCollection.prop
            workingValue4 = true
            stateFlag11 = true
            cmgOperation(workingValue2, workingValue4, stateFlag11)
          end
          dataCollection.inVehicle = false
          cmgOperation = Citizen
          cmgOperation = cmgOperation.CreateThread

          -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
          function workingValue2()
            local waitCall, number3, workingValue3, workingValue5, number4, number6, rageUiOperation4, number9, text4, stateFlag17, stateFlag2, stateFlag4
            waitCall = Wait
            number3 = 200
            waitCall(number3)
            waitCall = TaskPlayAnim
            number3 = localValue1
            workingValue5 = dataCollection.id
            workingValue3 = dataCollection2
            workingValue3 = workingValue3[workingValue5]
            workingValue3 = workingValue3.animDict
            number4 = dataCollection.id
            workingValue5 = dataCollection2
            workingValue5 = workingValue5[number4]
            workingValue5 = workingValue5.animName
            number4 = 8.0
            number6 = -8.0
            rageUiOperation4 = -1
            number9 = 50
            text4 = 0.0
            stateFlag17 = false
            stateFlag2 = false
            stateFlag4 = false
            -- Beginner: Play an animation on a ped.
            waitCall(number3, workingValue3, workingValue5, number4, number6, rageUiOperation4, number9, text4, stateFlag17, stateFlag2, stateFlag4)
            number3 = dataCollection.id
            waitCall = dataCollection2
            waitCall = waitCall[number3]
            waitCall = waitCall.collision
            if not waitCall then
              waitCall = SetEntityCollision
              number3 = dataCollection.prop
              workingValue3 = false
              workingValue5 = true
              waitCall(number3, workingValue3, workingValue5)
            end
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          cmgOperation(workingValue2)
        end
      end
      cmgOperation = dataCollection.inVehicle
      if not cmgOperation then
        workingValue2 = dataCollection.id
        cmgOperation = dataCollection2
        cmgOperation = cmgOperation[workingValue2]
        if nil ~= cmgOperation then
          workingValue2 = dataCollection.id
          cmgOperation = dataCollection2
          cmgOperation = cmgOperation[workingValue2]
          cmgOperation = cmgOperation.animDict
          if nil ~= cmgOperation then
            workingValue2 = dataCollection.id
            cmgOperation = dataCollection2
            cmgOperation = cmgOperation[workingValue2]
            cmgOperation = cmgOperation.animName
            if nil ~= cmgOperation then
              cmgOperation = IsEntityPlayingAnim
              workingValue2 = localValue1
              stateFlag11 = dataCollection.id
              workingValue4 = dataCollection2
              workingValue4 = workingValue4[stateFlag11]
              workingValue4 = workingValue4.animDict
              stateFlag13 = dataCollection.id
              stateFlag11 = dataCollection2
              stateFlag11 = stateFlag11[stateFlag13]
              stateFlag11 = stateFlag11.animName
              stateFlag13 = 3
              cmgOperation = cmgOperation(workingValue2, workingValue4, stateFlag11, stateFlag13)
              if not cmgOperation then
                cmgOperation = tCMG
                cmgOperation = cmgOperation.isInComa
                cmgOperation = cmgOperation()
                if not cmgOperation then
                  cmgOperation = CMG
                  cmgOperation = cmgOperation.isKnockedOut
                  cmgOperation = cmgOperation()
                  if not cmgOperation then
                    cmgOperation = TaskPlayAnim
                    workingValue2 = localValue1
                    stateFlag11 = dataCollection.id
                    workingValue4 = dataCollection2
                    workingValue4 = workingValue4[stateFlag11]
                    workingValue4 = workingValue4.animDict
                    stateFlag13 = dataCollection.id
                    stateFlag11 = dataCollection2
                    stateFlag11 = stateFlag11[stateFlag13]
                    stateFlag11 = stateFlag11.animName
                    stateFlag13 = 8.0
                    stateFlag14 = -8.0
                    stateFlag15 = -1
                    number11 = 50
                    stateFlag16 = 0.0
                    stateFlag = false
                    stateFlag3 = false
                    number = false
                    -- Beginner: Play an animation on a ped.
                    cmgOperation(workingValue2, workingValue4, stateFlag11, stateFlag13, stateFlag14, stateFlag15, number11, stateFlag16, stateFlag, stateFlag3, number)
                  end
                end
              end
            end
          end
        end
        workingValue2 = dataCollection.id
        cmgOperation = dataCollection2
        cmgOperation = cmgOperation[workingValue2]
        cmgOperation = cmgOperation.collision
        if not cmgOperation then
          cmgOperation = SetEntityCollision
          workingValue2 = dataCollection.prop
          workingValue4 = false
          stateFlag11 = true
          cmgOperation(workingValue2, workingValue4, stateFlag11)
        end
      end
      cmgOperation = GetSelectedPedWeapon
      workingValue2 = localValue1
      -- Beginner: result below is weaponHash.
      cmgOperation = cmgOperation(workingValue2)
      if -1569615261 ~= cmgOperation then
        workingValue2 = number7
        workingValue2 = workingValue2()
        if workingValue2 then
          workingValue2 = table
          workingValue2 = workingValue2.has
          workingValue4 = dataCollection3
          stateFlag11 = cmgOperation
          workingValue2 = workingValue2(workingValue4, stateFlag11)
          if workingValue2 then
            goto continueAtStep160
          end
        end
        workingValue2 = CMG
        workingValue2 = workingValue2.setWeapon
        workingValue4 = localValue1
        stateFlag11 = -1569615261
        stateFlag13 = true
        workingValue2(workingValue4, stateFlag11, stateFlag13)
      end
      ::continueAtStep160::
      workingValue2 = DisableControlAction
      workingValue4 = 0
      stateFlag11 = 210
      stateFlag13 = true
      workingValue2(workingValue4, stateFlag11, stateFlag13)
      workingValue2 = DisableControlAction
      workingValue4 = 1
      stateFlag11 = 210
      stateFlag13 = true
      workingValue2(workingValue4, stateFlag11, stateFlag13)
      workingValue2 = DisableControlAction
      workingValue4 = 0
      stateFlag11 = 36
      stateFlag13 = true
      workingValue2(workingValue4, stateFlag11, stateFlag13)
      workingValue2 = DisableControlAction
      workingValue4 = 1
      stateFlag11 = 36
      stateFlag13 = true
      workingValue2(workingValue4, stateFlag11, stateFlag13)
      workingValue4 = dataCollection.id
      workingValue2 = dataCollection2
      workingValue2 = workingValue2[workingValue4]
      workingValue2 = workingValue2.collision
      if not workingValue2 then
        workingValue2 = SetEntityCollision
        workingValue4 = dataCollection.prop
        stateFlag11 = false
        stateFlag13 = true
        workingValue2(workingValue4, stateFlag11, stateFlag13)
      end
    end
  end
end
number10 = Citizen
number10 = number10.CreateThread

-- === HELPER FUNCTION (decompiler name: number12; parameters: none) ===
function number12()
  local localValue1, cmgOperation, workingValue2, workingValue4, stateFlag11, stateFlag13, stateFlag14, stateFlag15, number11
  localValue1 = pairs
  cmgOperation = dataCollection2
  localValue1, cmgOperation, workingValue2, workingValue4 = localValue1(cmgOperation)
  for stateFlag11, stateFlag13 in localValue1, cmgOperation, workingValue2, workingValue4 do
    stateFlag14 = dataCollection4
    if "" == stateFlag14 then
      stateFlag14 = stateFlag13.name
      dataCollection4 = stateFlag14
    else
      stateFlag14 = dataCollection4
      stateFlag15 = ", "
      number11 = stateFlag13.name
      stateFlag14 = stateFlag14 .. stateFlag15 .. number11
      dataCollection4 = stateFlag14
    end
  end
  localValue1 = TriggerEvent
  cmgOperation = "chat:addSuggestion"
  workingValue2 = "/shield"
  workingValue4 = "Use a police shield"
  -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
  localValue1(cmgOperation, workingValue2, workingValue4)
  localValue1 = CMG
  localValue1 = localValue1.createThreadOnTick
  cmgOperation = number8
  workingValue2 = "Police Shields"
  -- Beginner: Run a helper every game frame while this script is active.
  localValue1(cmgOperation, workingValue2)
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
number10(number12)
number10 = RMenu
number10 = number10.Add
number12 = "policeshields"
text = "main"
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateMenu
text2 = "Police Shields"
text3 = "~b~Shield Management"
rageUiOperation2 = CMG
rageUiOperation2 = rageUiOperation2.getRageUIMenuWidth
rageUiOperation2 = rageUiOperation2()
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuHeight
rageUiOperation3 = rageUiOperation3()
rageUiOperation, text2, text3, rageUiOperation2, rageUiOperation3 = rageUiOperation(text2, text3, rageUiOperation2, rageUiOperation3)
number10(number12, text, rageUiOperation, text2, text3, rageUiOperation2, rageUiOperation3)
number10 = RageUI
number10 = number10.CreateWhile
number12 = 1.0
text = RMenu
rageUiOperation = text
text = text.Get
text2 = "policeshields"
text3 = "main"
-- Beginner: result below is menu.
text = text(rageUiOperation, text2, text3)
rageUiOperation = nil

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local localValue1, cmgOperation, workingValue2, workingValue4, stateFlag11, stateFlag13, stateFlag14
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  cmgOperation = RMenu
  workingValue2 = cmgOperation
  cmgOperation = cmgOperation.Get
  workingValue4 = "policeshields"
  stateFlag11 = "main"
  -- Beginner: result below is menu.
  cmgOperation = cmgOperation(workingValue2, workingValue4, stateFlag11)
  workingValue2 = true
  workingValue4 = false
  stateFlag11 = true

  -- === HELPER FUNCTION (decompiler name: stateFlag13; parameters: none) ===
  function stateFlag13()
    local waitCall, number3, workingValue3, workingValue5, number4, number6, rageUiOperation4, number9, text4, stateFlag17, stateFlag2
    waitCall = pairs
    number3 = dataCollection2
    waitCall, number3, workingValue3, workingValue5 = waitCall(number3)
    for number4, number6 in waitCall, number3, workingValue3, workingValue5 do
      rageUiOperation4 = RageUI
      rageUiOperation4 = rageUiOperation4.Button
      number9 = number6.name
      text4 = " Shield"
      number9 = number9 .. text4
      text4 = "Use the "
      stateFlag17 = number6.name
      stateFlag2 = " Shield"
      text4 = text4 .. stateFlag17 .. stateFlag2
      stateFlag17 = true

      -- === HELPER FUNCTION (decompiler name: stateFlag2; parameters: localValue12, localValue2, localValue3) ===
      function stateFlag2(localValue12, localValue2, localValue3)
        local workingValue6, stateFlag12
        if localValue3 then
          workingValue6 = number5
          stateFlag12 = number4
          workingValue6(stateFlag12)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation4(number9, text4, stateFlag17, stateFlag2)
    end
    waitCall = dataCollection.active
    if waitCall then
      waitCall = RageUI
      waitCall = waitCall.Button
      number3 = "Remove Shield"
      workingValue3 = "Removes your current shield"
      workingValue5 = true

      -- === HELPER FUNCTION (decompiler name: number4; parameters: localValue12, localValue2, localValue3) ===
      function number4(localValue12, localValue2, localValue3)
        local workingValue6, stateFlag12
        if localValue3 then
          workingValue6 = dataCollection5
          stateFlag12 = true
          workingValue6(stateFlag12)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      waitCall(number3, workingValue3, workingValue5, number4)
    end
  end

  -- === HELPER FUNCTION (decompiler name: stateFlag14; parameters: none) ===
  function stateFlag14()
    local waitCall, number3
  end
  localValue1(cmgOperation, workingValue2, workingValue4, stateFlag11, stateFlag13, stateFlag14)
end
number10(number12, text, rageUiOperation, text2)
number10 = RegisterNetEvent
number12 = "a71cafbef1"
-- Beginner: this function handles network event "a71cafbef1".

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, cmgOperation, workingValue2, workingValue4, stateFlag11
  localValue1 = RageUI
  localValue1 = localValue1.Visible
  cmgOperation = RMenu
  workingValue2 = cmgOperation
  cmgOperation = cmgOperation.Get
  workingValue4 = "policeshields"
  stateFlag11 = "main"
  -- Beginner: result below is menu.
  cmgOperation = cmgOperation(workingValue2, workingValue4, stateFlag11)
  workingValue2 = true
  localValue1(cmgOperation, workingValue2)
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "a71cafbef1".
number10(number12, text)
