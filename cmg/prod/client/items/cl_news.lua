--[[
    LEVEL 1 BEGINNER GUIDE — News
    ==================================

    File: cmg/prod/client/items/cl_news.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: usable inventory item behaviour, specifically the News feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 10
      * Background threads: 0
      * Always-running loops: 3
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
local cmgOperation, text4, number6, number7, number8, number9, workingValue6, number11, number12, workingValue8, workingValue, workingValue2, eventHandler, text, cmgOperation2, workingValue3, text3, backgroundThread, workingValue4
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text4 = "cfg/cfg_news"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text4)
text4 = 70.0
number6 = 5.0
number7 = 10.0
number8 = 8.0
number9 = 8.0
workingValue6 = text4 + number6
workingValue6 = workingValue6 * 0.5
number11 = 1
number12 = 0.0

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local localValue2, playerPed, workingValue5, cmgOperation3, text5, number10, workingValue7, cmgOperation4, stateFlag9, stateFlag, stateFlag2, number, number2, number3, text2, number4, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, number5, stateFlag8
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  playerPed = GetOffsetFromEntityInWorldCoords
  workingValue5 = localValue2
  cmgOperation3 = 0.0
  text5 = 0.0
  number10 = -5.0
  playerPed = playerPed(workingValue5, cmgOperation3, text5, number10)
  workingValue5 = cmgOperation.items
  workingValue5 = workingValue5[localValue1]
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.loadModel
  text5 = workingValue5.model
  -- Beginner: Request/load a GTA model before spawning or applying it.
  cmgOperation3(text5)
  cmgOperation3 = CMG
  cmgOperation3 = cmgOperation3.requestEntitySpawn
  text5 = "news_item_object"
  number10 = localValue1
  cmgOperation3(text5, number10)
  cmgOperation3 = CreateObject
  text5 = workingValue5.model
  number10 = playerPed.x
  workingValue7 = playerPed.y
  cmgOperation4 = playerPed.z
  stateFlag9 = true
  stateFlag = true
  stateFlag2 = true
  -- Beginner: result below is objectEntity.
  cmgOperation3 = cmgOperation3(text5, number10, workingValue7, cmgOperation4, stateFlag9, stateFlag, stateFlag2)
  text5 = workingValue5.boneId
  number10 = workingValue5.position
  workingValue7 = workingValue5.rotation
  cmgOperation4 = SetEntityCollision
  stateFlag9 = cmgOperation3
  stateFlag = false
  stateFlag2 = true
  cmgOperation4(stateFlag9, stateFlag, stateFlag2)
  cmgOperation4 = AttachEntityToEntity
  stateFlag9 = cmgOperation3
  stateFlag = localValue2
  stateFlag2 = GetPedBoneIndex
  number = localValue2
  number2 = text5
  stateFlag2 = stateFlag2(number, number2)
  number = number10.x
  number2 = number10.y
  number3 = number10.z
  text2 = workingValue7.x
  number4 = workingValue7.y
  stateFlag3 = workingValue7.z
  stateFlag4 = true
  stateFlag5 = true
  stateFlag6 = false
  stateFlag7 = true
  number5 = 0
  stateFlag8 = true
  -- Beginner: Attach one entity to another entity.
  cmgOperation4(stateFlag9, stateFlag, stateFlag2, number, number2, number3, text2, number4, stateFlag3, stateFlag4, stateFlag5, stateFlag6, stateFlag7, number5, stateFlag8)
  cmgOperation4 = CMG
  cmgOperation4 = cmgOperation4.loadAnimDict
  stateFlag9 = workingValue5.animations
  stateFlag9 = stateFlag9.dict
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgOperation4(stateFlag9)
  cmgOperation4 = TaskPlayAnim
  stateFlag9 = localValue2
  stateFlag = workingValue5.animations
  stateFlag = stateFlag.dict
  stateFlag2 = workingValue5.animations
  stateFlag2 = stateFlag2.name
  number = 1.0
  number2 = -1
  number3 = -1
  text2 = 50
  number4 = 0
  stateFlag3 = true
  stateFlag4 = true
  stateFlag5 = true
  -- Beginner: Play an animation on a ped.
  cmgOperation4(stateFlag9, stateFlag, stateFlag2, number, number2, number3, text2, number4, stateFlag3, stateFlag4, stateFlag5)
  cmgOperation4 = RemoveAnimDict
  stateFlag9 = workingValue5.animations
  stateFlag9 = stateFlag9.dict
  cmgOperation4(stateFlag9)
  cmgOperation4 = ""
  if "camera" == localValue1 then
    cmgOperation4 = [[
~s~.

Press ~r~[E]~s~ to enter recording mode~s~]]
  end
  stateFlag9 = CMG
  stateFlag9 = stateFlag9.notifyPicture
  stateFlag = "bbcnotification"
  stateFlag2 = "notification"
  number = "You are now holding a ~r~"
  number2 = cmgOperation.items
  number2 = number2[localValue1]
  number2 = number2.formalName
  number3 = cmgOperation4
  text2 = "~s~."
  number = number .. number2 .. number3 .. text2
  number2 = "BBC News"
  number3 = "Equipment"
  text2 = nil
  number4 = nil
  stateFlag9(stateFlag, stateFlag2, number, number2, number3, text2, number4)
  stateFlag9 = cmgOperation.items
  stateFlag9 = stateFlag9[localValue1]
  stateFlag9.holding = true
  stateFlag9 = Wait
  stateFlag = 1000
  stateFlag9(stateFlag)
  stateFlag9 = cmgOperation.items
  stateFlag9 = stateFlag9[localValue1]
  stateFlag = ObjToNet
  stateFlag2 = cmgOperation3
  stateFlag = stateFlag(stateFlag2)
  stateFlag9.netId = stateFlag
  stateFlag9 = SetNetworkIdExistsOnAllMachines
  stateFlag = cmgOperation.items
  stateFlag = stateFlag[localValue1]
  stateFlag = stateFlag.netId
  stateFlag2 = true
  stateFlag9(stateFlag, stateFlag2)
  stateFlag9 = NetworkUseHighPrecisionBlending
  stateFlag = cmgOperation.items
  stateFlag = stateFlag[localValue1]
  stateFlag = stateFlag.netId
  stateFlag2 = true
  stateFlag9(stateFlag, stateFlag2)
  stateFlag9 = SetNetworkIdCanMigrate
  stateFlag = cmgOperation.items
  stateFlag = stateFlag[localValue1]
  stateFlag = stateFlag.netId
  stateFlag2 = false
  stateFlag9(stateFlag, stateFlag2)
  stateFlag9 = SetModelAsNoLongerNeeded
  stateFlag = workingValue5.model
  stateFlag9(stateFlag)
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, playerPed, workingValue5, cmgOperation3, text5, number10, workingValue7, cmgOperation4
  localValue2 = cmgOperation.items
  localValue2 = localValue2[localValue1]
  localValue2 = localValue2.holding
  if localValue2 then
    localValue2 = ClearPedSecondaryTask
    playerPed = PlayerPedId
    playerPed, workingValue5, cmgOperation3, text5, number10, workingValue7, cmgOperation4 = playerPed()
    localValue2(playerPed, workingValue5, cmgOperation3, text5, number10, workingValue7, cmgOperation4)
    localValue2 = DetachEntity
    playerPed = CMG
    playerPed = playerPed.getObjectId
    workingValue5 = cmgOperation.items
    workingValue5 = workingValue5[localValue1]
    workingValue5 = workingValue5.netId
    cmgOperation3 = "removeNewsItem (1)"
    playerPed = playerPed(workingValue5, cmgOperation3)
    if not playerPed then
      playerPed = 0
    end
    workingValue5 = true
    cmgOperation3 = true
    localValue2(playerPed, workingValue5, cmgOperation3)
    localValue2 = DeleteEntity
    playerPed = CMG
    playerPed = playerPed.getObjectId
    workingValue5 = cmgOperation.items
    workingValue5 = workingValue5[localValue1]
    workingValue5 = workingValue5.netId
    cmgOperation3 = "removeNewsItem (2)"
    playerPed, workingValue5, cmgOperation3, text5, number10, workingValue7, cmgOperation4 = playerPed(workingValue5, cmgOperation3)
    -- Beginner: Delete a GTA entity.
    localValue2(playerPed, workingValue5, cmgOperation3, text5, number10, workingValue7, cmgOperation4)
    localValue2 = cmgOperation.items
    localValue2 = localValue2[localValue1]
    localValue2.netId = nil
    localValue2 = cmgOperation.items
    localValue2 = localValue2[localValue1]
    localValue2.holding = false
    localValue2 = cmgOperation.items
    localValue2 = localValue2[localValue1]
    localValue2.using = false
    localValue2 = CMG
    localValue2 = localValue2.showAllDisplays
    playerPed = "news"
    localValue2(playerPed)
    localValue2 = CMG
    localValue2 = localValue2.notifyPicture
    playerPed = "bbcnotification"
    workingValue5 = "notification"
    cmgOperation3 = "You have put away the ~r~"
    text5 = cmgOperation.items
    text5 = text5[localValue1]
    text5 = text5.formalName
    number10 = "~s~."
    cmgOperation3 = cmgOperation3 .. text5 .. number10
    text5 = "BBC News"
    number10 = "Equipment"
    workingValue7 = nil
    cmgOperation4 = nil
    localValue2(playerPed, workingValue5, cmgOperation3, text5, number10, workingValue7, cmgOperation4)
  end
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2, playerPed, workingValue5, cmgOperation3, text5, number10, workingValue7
  localValue1 = pairs
  localValue2 = cmgOperation.items
  localValue1, localValue2, playerPed, workingValue5 = localValue1(localValue2)
  for cmgOperation3, text5 in localValue1, localValue2, playerPed, workingValue5 do
    number10 = workingValue
    workingValue7 = cmgOperation3
    number10(workingValue7)
  end
end
eventHandler = RegisterNetEvent
text = "f55afa9558"
-- Beginner: this function handles network event "f55afa9558".

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, playerPed
  localValue2 = cmgOperation.items
  localValue2 = localValue2[localValue1]
  localValue2 = localValue2.holding
  if not localValue2 then
    localValue2 = workingValue2
    localValue2()
    localValue2 = workingValue8
    playerPed = localValue1
    localValue2(playerPed)
  else
    localValue2 = workingValue
    playerPed = localValue1
    localValue2(playerPed)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f55afa9558".
eventHandler(text, cmgOperation2)

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: none) ===
function eventHandler()
  local localValue1, localValue2, playerPed, workingValue5, cmgOperation3
  localValue1 = tostring
  localValue2 = GetClockHours
  localValue2, playerPed, workingValue5, cmgOperation3 = localValue2()
  localValue1 = localValue1(localValue2, playerPed, workingValue5, cmgOperation3)
  localValue2 = tostring
  playerPed = GetClockMinutes
  playerPed, workingValue5, cmgOperation3 = playerPed()
  localValue2 = localValue2(playerPed, workingValue5, cmgOperation3)
  if localValue1 < 10 then
    playerPed = "0"
    workingValue5 = localValue1
    playerPed = playerPed .. workingValue5
    localValue1 = playerPed
  end
  if localValue2 < 10 then
    playerPed = "0"
    workingValue5 = localValue2
    playerPed = playerPed .. workingValue5
    localValue2 = playerPed
  end
  playerPed = localValue1
  workingValue5 = " "
  cmgOperation3 = localValue2
  playerPed = playerPed .. workingValue5 .. cmgOperation3
  return playerPed
end

-- === HELPER FUNCTION (decompiler name: text; parameters: none) ===
function text()
  local localValue1, localValue2, playerPed, workingValue5, cmgOperation3, text5, number10, workingValue7, cmgOperation4, stateFlag9, stateFlag, stateFlag2, number, number2, number3, text2, number4, stateFlag3, stateFlag4
  localValue1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = pairs
  playerPed = cmgOperation.items
  localValue2, playerPed, workingValue5, cmgOperation3 = localValue2(playerPed)
  for text5, number10 in localValue2, playerPed, workingValue5, cmgOperation3 do
    workingValue7 = cmgOperation.items
    workingValue7 = workingValue7[text5]
    workingValue7 = workingValue7.holding
    if workingValue7 then
      workingValue7 = IsEntityPlayingAnim
      cmgOperation4 = localValue1
      stateFlag9 = cmgOperation.items
      stateFlag9 = stateFlag9[text5]
      stateFlag9 = stateFlag9.animations
      stateFlag9 = stateFlag9.dict
      stateFlag = cmgOperation.items
      stateFlag = stateFlag[text5]
      stateFlag = stateFlag.animations
      stateFlag = stateFlag.name
      stateFlag2 = 3
      workingValue7 = workingValue7(cmgOperation4, stateFlag9, stateFlag, stateFlag2)
      if not workingValue7 then
        workingValue7 = CMG
        workingValue7 = workingValue7.loadAnimDict
        cmgOperation4 = cmgOperation.items
        cmgOperation4 = cmgOperation4[text5]
        cmgOperation4 = cmgOperation4.animations
        cmgOperation4 = cmgOperation4.dict
        -- Beginner: Load a GTA animation dictionary before using it.
        workingValue7(cmgOperation4)
        workingValue7 = TaskPlayAnim
        cmgOperation4 = localValue1
        stateFlag9 = cmgOperation.items
        stateFlag9 = stateFlag9[text5]
        stateFlag9 = stateFlag9.animations
        stateFlag9 = stateFlag9.dict
        stateFlag = cmgOperation.items
        stateFlag = stateFlag[text5]
        stateFlag = stateFlag.animations
        stateFlag = stateFlag.name
        stateFlag2 = 1.0
        number = -1
        number2 = -1
        number3 = 50
        text2 = 0
        number4 = false
        stateFlag3 = false
        stateFlag4 = false
        -- Beginner: Play an animation on a ped.
        workingValue7(cmgOperation4, stateFlag9, stateFlag, stateFlag2, number, number2, number3, text2, number4, stateFlag3, stateFlag4)
        workingValue7 = RemoveAnimDict
        cmgOperation4 = cmgOperation.items
        cmgOperation4 = cmgOperation4[text5]
        cmgOperation4 = cmgOperation4.animations
        cmgOperation4 = cmgOperation4.dict
        workingValue7(cmgOperation4)
      end
      workingValue7 = DisablePlayerFiring
      cmgOperation4 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      cmgOperation4 = cmgOperation4()
      stateFlag9 = true
      workingValue7(cmgOperation4, stateFlag9)
      workingValue7 = DisableControlAction
      cmgOperation4 = 0
      stateFlag9 = 25
      stateFlag = true
      workingValue7(cmgOperation4, stateFlag9, stateFlag)
      workingValue7 = DisableControlAction
      cmgOperation4 = 0
      stateFlag9 = 44
      stateFlag = true
      workingValue7(cmgOperation4, stateFlag9, stateFlag)
      workingValue7 = DisableControlAction
      cmgOperation4 = 0
      stateFlag9 = 37
      stateFlag = true
      workingValue7(cmgOperation4, stateFlag9, stateFlag)
      workingValue7 = SetCurrentPedWeapon
      cmgOperation4 = localValue1
      stateFlag9 = GetHashKey
      stateFlag = "WEAPON_UNARMED"
      -- Beginner: result below is hash.
      stateFlag9 = stateFlag9(stateFlag)
      stateFlag = true
      workingValue7(cmgOperation4, stateFlag9, stateFlag)
    end
  end
  localValue2 = cmgOperation.items
  localValue2 = localValue2.camera
  localValue2 = localValue2.using
  if localValue2 then
    localValue2 = HasStreamedTextureDictLoaded
    playerPed = "bbcnews"
    localValue2 = localValue2(playerPed)
    if not localValue2 then
      localValue2 = RequestStreamedTextureDict
      playerPed = "bbcnews"
      workingValue5 = true
      localValue2(playerPed, workingValue5)
      while true do
        localValue2 = HasStreamedTextureDictLoaded
        playerPed = "bbcnews"
        localValue2 = localValue2(playerPed)
        if localValue2 then
          break
        end
        localValue2 = print
        playerPed = "stuck loading"
        workingValue5 = "bbcnews"
        localValue2(playerPed, workingValue5)
        localValue2 = Wait
        playerPed = 0
        localValue2(playerPed)
      end
    end
    localValue2 = DrawSprite
    playerPed = "bbcnews"
    workingValue5 = cmgOperation.textures
    cmgOperation3 = number11
    workingValue5 = workingValue5[cmgOperation3]
    workingValue5 = workingValue5.textureName
    cmgOperation3 = 0.5
    text5 = 0.5
    number10 = 1.0
    workingValue7 = 1.0
    cmgOperation4 = 0.0
    stateFlag9 = 255
    stateFlag = 255
    stateFlag2 = 255
    number = 255
    localValue2(playerPed, workingValue5, cmgOperation3, text5, number10, workingValue7, cmgOperation4, stateFlag9, stateFlag, stateFlag2, number)
    localValue2 = cmgOperation.textures
    playerPed = number11
    localValue2 = localValue2[playerPed]
    localValue2 = localValue2.textureName
    if "bbcnews" == localValue2 then
      localValue2 = DrawAdvancedText
      playerPed = 0.3575
      workingValue5 = 0.936
      cmgOperation3 = 0.0
      text5 = 0.0
      number10 = 0.75
      workingValue7 = eventHandler
      workingValue7 = workingValue7()
      cmgOperation4 = 255
      stateFlag9 = 255
      stateFlag = 255
      stateFlag2 = 255
      number = 2
      number2 = 0
      localValue2(playerPed, workingValue5, cmgOperation3, text5, number10, workingValue7, cmgOperation4, stateFlag9, stateFlag, stateFlag2, number, number2)
    end
    localValue2 = cmgOperation.textures
    playerPed = number11
    localValue2 = localValue2[playerPed]
    localValue2 = localValue2.textureName
    if "skynews" == localValue2 then
      localValue2 = DrawAdvancedText
      playerPed = 0.187
      workingValue5 = 0.935
      cmgOperation3 = 0.0
      text5 = 0.0
      number10 = 0.6
      workingValue7 = eventHandler
      workingValue7 = workingValue7()
      cmgOperation4 = 255
      stateFlag9 = 255
      stateFlag = 255
      stateFlag2 = 255
      number = 2
      number2 = 0
      localValue2(playerPed, workingValue5, cmgOperation3, text5, number10, workingValue7, cmgOperation4, stateFlag9, stateFlag, stateFlag2, number, number2)
    end
  end
end
cmgOperation2 = CMG
cmgOperation2 = cmgOperation2.createThreadOnTick
workingValue3 = text
text3 = "News"
-- Beginner: Run a helper every game frame while this script is active.
cmgOperation2(workingValue3, text3)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2
  localValue1 = HideHelpTextThisFrame
  localValue1()
  localValue1 = HideHudAndRadarThisFrame
  localValue1()
  localValue1 = HideHudComponentThisFrame
  localValue2 = 1
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 2
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 3
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 4
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 6
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 7
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 8
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 9
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 13
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 11
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 12
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 15
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 18
  localValue1(localValue2)
  localValue1 = HideHudComponentThisFrame
  localValue2 = 19
  localValue1(localValue2)
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1, localValue2) ===
function workingValue3(localValue1, localValue2)
  local playerPed, workingValue5, cmgOperation3, text5, number10, workingValue7, cmgOperation4, stateFlag9, stateFlag, stateFlag2
  playerPed = GetDisabledControlNormal
  workingValue5 = 0
  cmgOperation3 = 220
  playerPed = playerPed(workingValue5, cmgOperation3)
  workingValue5 = GetDisabledControlNormal
  cmgOperation3 = 0
  text5 = 221
  workingValue5 = workingValue5(cmgOperation3, text5)
  cmgOperation3 = GetCamRot
  text5 = localValue1
  number10 = 2
  cmgOperation3 = cmgOperation3(text5, number10)
  if 0.0 ~= playerPed or 0.0 ~= workingValue5 then
    text5 = cmgOperation3.z
    number10 = playerPed * -1.0
    workingValue7 = number9
    number10 = number10 * workingValue7
    workingValue7 = localValue2 + 0.1
    number10 = number10 * workingValue7
    text5 = text5 + number10
    number12 = text5
    text5 = math
    text5 = text5.max
    number10 = math
    number10 = number10.min
    workingValue7 = 20.0
    cmgOperation4 = cmgOperation3.x
    stateFlag9 = workingValue5 * -1.0
    stateFlag = number8
    stateFlag9 = stateFlag9 * stateFlag
    stateFlag = localValue2 + 0.1
    stateFlag9 = stateFlag9 * stateFlag
    cmgOperation4 = cmgOperation4 + stateFlag9
    number10 = number10(workingValue7, cmgOperation4)
    workingValue7 = -89.5
    text5 = text5(number10, workingValue7)
    number10 = SetCamRot
    workingValue7 = localValue1
    cmgOperation4 = text5
    stateFlag9 = 0.0
    stateFlag = number12
    stateFlag2 = 2
    number10(workingValue7, cmgOperation4, stateFlag9, stateFlag, stateFlag2)
  end
end

-- === HELPER FUNCTION (decompiler name: text3; parameters: localValue1) ===
function text3(localValue1)
  local localValue2, playerPed, workingValue5, cmgOperation3, text5
  localValue2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  localValue2 = localValue2()
  playerPed = IsPedSittingInAnyVehicle
  workingValue5 = localValue2
  playerPed = playerPed(workingValue5)
  if not playerPed then
    playerPed = IsControlJustPressed
    workingValue5 = 0
    cmgOperation3 = 241
    playerPed = playerPed(workingValue5, cmgOperation3)
    if playerPed then
      playerPed = math
      playerPed = playerPed.max
      workingValue5 = workingValue6
      cmgOperation3 = number7
      workingValue5 = workingValue5 - cmgOperation3
      cmgOperation3 = number6
      playerPed = playerPed(workingValue5, cmgOperation3)
      workingValue6 = playerPed
    end
    playerPed = IsControlJustPressed
    workingValue5 = 0
    cmgOperation3 = 242
    playerPed = playerPed(workingValue5, cmgOperation3)
    if playerPed then
      playerPed = math
      playerPed = playerPed.min
      workingValue5 = workingValue6
      cmgOperation3 = number7
      workingValue5 = workingValue5 + cmgOperation3
      cmgOperation3 = text4
      playerPed = playerPed(workingValue5, cmgOperation3)
      workingValue6 = playerPed
    end
    playerPed = GetCamFov
    workingValue5 = localValue1
    playerPed = playerPed(workingValue5)
    workingValue5 = math
    workingValue5 = workingValue5.abs
    cmgOperation3 = workingValue6
    cmgOperation3 = cmgOperation3 - playerPed
    workingValue5 = workingValue5(cmgOperation3)
    cmgOperation3 = 0.1
    if workingValue5 < cmgOperation3 then
      workingValue6 = playerPed
    end
    workingValue5 = SetCamFov
    cmgOperation3 = localValue1
    text5 = workingValue6
    text5 = text5 - playerPed
    text5 = text5 * 0.05
    text5 = playerPed + text5
    workingValue5(cmgOperation3, text5)
  else
    playerPed = IsControlJustPressed
    workingValue5 = 0
    cmgOperation3 = 17
    playerPed = playerPed(workingValue5, cmgOperation3)
    if playerPed then
      playerPed = math
      playerPed = playerPed.max
      workingValue5 = workingValue6
      cmgOperation3 = number7
      workingValue5 = workingValue5 - cmgOperation3
      cmgOperation3 = number6
      playerPed = playerPed(workingValue5, cmgOperation3)
      workingValue6 = playerPed
    end
    playerPed = IsControlJustPressed
    workingValue5 = 0
    cmgOperation3 = 16
    playerPed = playerPed(workingValue5, cmgOperation3)
    if playerPed then
      playerPed = math
      playerPed = playerPed.min
      workingValue5 = workingValue6
      cmgOperation3 = number7
      workingValue5 = workingValue5 + cmgOperation3
      cmgOperation3 = text4
      playerPed = playerPed(workingValue5, cmgOperation3)
      workingValue6 = playerPed
    end
    playerPed = GetCamFov
    workingValue5 = localValue1
    playerPed = playerPed(workingValue5)
    workingValue5 = math
    workingValue5 = workingValue5.abs
    cmgOperation3 = workingValue6
    cmgOperation3 = cmgOperation3 - playerPed
    workingValue5 = workingValue5(cmgOperation3)
    cmgOperation3 = 0.1
    if workingValue5 < cmgOperation3 then
      workingValue6 = playerPed
    end
    workingValue5 = SetCamFov
    cmgOperation3 = localValue1
    text5 = workingValue6
    text5 = text5 - playerPed
    text5 = text5 * 0.05
    text5 = playerPed + text5
    workingValue5(cmgOperation3, text5)
  end
end
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, playerPed, workingValue5, cmgOperation3, text5, number10, workingValue7, cmgOperation4, stateFlag9
  while true do
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
    localValue1 = cmgOperation.items
    localValue1 = localValue1.camera
    localValue1 = localValue1.holding
    if localValue1 then
      localValue1 = IsControlJustReleased
      localValue2 = 1
      playerPed = 38
      localValue1 = localValue1(localValue2, playerPed)
      if localValue1 then
        localValue1 = cmgOperation.items
        localValue1 = localValue1.camera
        localValue1.using = true
        localValue1 = CMG
        localValue1 = localValue1.hideAllDisplays
        localValue2 = "news"
        localValue1(localValue2)
        localValue1 = CMG
        localValue1 = localValue1.notifyPicture
        localValue2 = "bbcnotification"
        playerPed = "notification"
        workingValue5 = "Press ~r~LEFT ALT ~s~to change overlay or ~r~BACKSPACE ~s~to exit recording mode."
        cmgOperation3 = "BBC News"
        text5 = "Now Recording"
        number10 = nil
        workingValue7 = nil
        localValue1(localValue2, playerPed, workingValue5, cmgOperation3, text5, number10, workingValue7)
        localValue1 = SetTimecycleModifier
        localValue2 = "default"
        localValue1(localValue2)
        localValue1 = SetTimecycleModifierStrength
        localValue2 = 0.3
        localValue1(localValue2)
        localValue1 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        localValue1 = localValue1()
        localValue2 = GetVehiclePedIsIn
        playerPed = localValue1
        workingValue5 = false
        -- Beginner: result below is currentVehicle.
        localValue2 = localValue2(playerPed, workingValue5)
        playerPed = CreateCam
        workingValue5 = "DEFAULT_SCRIPTED_FLY_CAMERA"
        cmgOperation3 = true
        -- Beginner: result below is cameraHandle.
        playerPed = playerPed(workingValue5, cmgOperation3)
        workingValue5 = AttachCamToEntity
        cmgOperation3 = playerPed
        text5 = localValue1
        number10 = 0.0
        workingValue7 = 0.5
        cmgOperation4 = 0.65
        stateFlag9 = true
        workingValue5(cmgOperation3, text5, number10, workingValue7, cmgOperation4, stateFlag9)
        workingValue5 = SetCamRot
        cmgOperation3 = playerPed
        text5 = 2.0
        number10 = 1.0
        workingValue7 = GetEntityHeading
        cmgOperation4 = localValue1
        -- Beginner: result below is heading.
        workingValue7 = workingValue7(cmgOperation4)
        cmgOperation4 = 2
        workingValue5(cmgOperation3, text5, number10, workingValue7, cmgOperation4)
        workingValue5 = SetCamFov
        cmgOperation3 = playerPed
        text5 = workingValue6
        workingValue5(cmgOperation3, text5)
        workingValue5 = RenderScriptCams
        cmgOperation3 = true
        text5 = false
        number10 = 0
        workingValue7 = true
        cmgOperation4 = false
        workingValue5(cmgOperation3, text5, number10, workingValue7, cmgOperation4)
        workingValue5 = EndScaleformMovieMethod
        workingValue5()
        while true do
          workingValue5 = cmgOperation.items
          workingValue5 = workingValue5.camera
          workingValue5 = workingValue5.using
          if not workingValue5 then
            break
          end
          workingValue5 = IsEntityDead
          cmgOperation3 = localValue1
          workingValue5 = workingValue5(cmgOperation3)
          if workingValue5 then
            break
          end
          workingValue5 = GetVehiclePedIsIn
          cmgOperation3 = localValue1
          text5 = false
          -- Beginner: result below is currentVehicle.
          workingValue5 = workingValue5(cmgOperation3, text5)
          if workingValue5 ~= localValue2 then
            break
          end
          workingValue5 = IsControlJustReleased
          cmgOperation3 = 1
          text5 = 19
          workingValue5 = workingValue5(cmgOperation3, text5)
          if workingValue5 then
            workingValue5 = PlaySoundFrontend
            cmgOperation3 = -1
            text5 = "SELECT"
            number10 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            workingValue7 = false
            workingValue5(cmgOperation3, text5, number10, workingValue7)
            workingValue5 = number11
            if workingValue5 <= 7 then
              workingValue5 = number11
              workingValue5 = workingValue5 + 1
              number11 = workingValue5
            else
              workingValue5 = 1
              number11 = workingValue5
            end
          end
          workingValue5 = IsControlJustReleased
          cmgOperation3 = 1
          text5 = 177
          workingValue5 = workingValue5(cmgOperation3, text5)
          if workingValue5 then
            workingValue5 = PlaySoundFrontend
            cmgOperation3 = -1
            text5 = "SELECT"
            number10 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            workingValue7 = false
            workingValue5(cmgOperation3, text5, number10, workingValue7)
            workingValue5 = cmgOperation.items
            workingValue5 = workingValue5.camera
            workingValue5.using = false
            workingValue5 = CMG
            workingValue5 = workingValue5.showAllDisplays
            cmgOperation3 = "news"
            workingValue5(cmgOperation3)
          end
          workingValue5 = SetEntityRotation
          cmgOperation3 = localValue1
          text5 = 0
          number10 = 0
          workingValue7 = number12
          cmgOperation4 = 2
          stateFlag9 = true
          workingValue5(cmgOperation3, text5, number10, workingValue7, cmgOperation4, stateFlag9)
          workingValue5 = text4
          cmgOperation3 = number6
          workingValue5 = workingValue5 - cmgOperation3
          cmgOperation3 = 1.0
          workingValue5 = cmgOperation3 / workingValue5
          cmgOperation3 = workingValue6
          text5 = number6
          cmgOperation3 = cmgOperation3 - text5
          workingValue5 = workingValue5 * cmgOperation3
          cmgOperation3 = workingValue3
          text5 = playerPed
          number10 = workingValue5
          cmgOperation3(text5, number10)
          cmgOperation3 = text3
          text5 = playerPed
          cmgOperation3(text5)
          cmgOperation3 = cmgOperation2
          -- Beginner: Run a helper every game frame while this script is active.
          cmgOperation3()
          cmgOperation3 = GetGameplayCamRelativeHeading
          cmgOperation3 = cmgOperation3()
          text5 = GetGameplayCamRelativePitch
          text5 = text5()
          if text5 < -70.0 then
            text5 = -70.0
          elseif text5 > 42.0 then
            text5 = 42.0
          end
          number10 = text5 + 70.0
          text5 = number10 / 112.0
          number10 = -180.0
          if cmgOperation3 < number10 then
            cmgOperation3 = -180.0
          else
            number10 = 180.0
            if cmgOperation3 > number10 then
              cmgOperation3 = 180.0
            end
          end
          number10 = cmgOperation3 + 180.0
          cmgOperation3 = number10 / 360.0
          number10 = SetTaskMoveNetworkSignalFloat
          workingValue7 = localValue1
          cmgOperation4 = "Pitch"
          stateFlag9 = text5
          number10(workingValue7, cmgOperation4, stateFlag9)
          number10 = SetTaskMoveNetworkSignalFloat
          workingValue7 = localValue1
          cmgOperation4 = "Heading"
          stateFlag9 = cmgOperation3 * -1.0
          stateFlag9 = stateFlag9 + 1.0
          number10(workingValue7, cmgOperation4, stateFlag9)
          number10 = Wait
          workingValue7 = 0
          number10(workingValue7)
        end
        workingValue5 = cmgOperation.items
        workingValue5 = workingValue5.camera
        workingValue5.using = false
        workingValue5 = CMG
        workingValue5 = workingValue5.showAllDisplays
        cmgOperation3 = "news"
        workingValue5(cmgOperation3)
        workingValue5 = ClearTimecycleModifier
        workingValue5()
        workingValue5 = text4
        cmgOperation3 = number6
        workingValue5 = workingValue5 + cmgOperation3
        workingValue5 = workingValue5 * 0.5
        workingValue6 = workingValue5
        workingValue5 = RenderScriptCams
        cmgOperation3 = false
        text5 = false
        number10 = 0
        workingValue7 = true
        cmgOperation4 = false
        workingValue5(cmgOperation3, text5, number10, workingValue7, cmgOperation4)
        workingValue5 = DestroyCam
        cmgOperation3 = playerPed
        text5 = false
        workingValue5(cmgOperation3, text5)
        workingValue5 = SetNightvision
        cmgOperation3 = false
        workingValue5(cmgOperation3)
        workingValue5 = SetSeethrough
        cmgOperation3 = false
        workingValue5(cmgOperation3)
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(workingValue4)
