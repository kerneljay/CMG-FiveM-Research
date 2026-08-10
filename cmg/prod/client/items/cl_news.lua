--[[
    Beginner Guide: cl_news.lua
    ===========================

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
    BEGINNER GUIDE — News
    =====================

    File: cmg/prod/client/items/cl_news.lua
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

    Config/data used:
      * cfg/cfg_news

    Network/hash identifiers found: 1
      They are intentionally left unchanged because matching server code may use them.
      * f55afa9558

    Example player-facing text in this file:
      * You are now holding a ~r~
      * You have put away the ~r~
      * Press ~r~LEFT ALT ~s~to change overlay or ~r~BACKSPACE ~s~to exit recording mode.

]]
local cmgCall, textValue4, numberValue6, numberValue7, numberValue8, numberValue9, workValue6, numberValue11, numberValue12, workValue8, workValue, workValue2, eventRegistration, textValue, cmgCall2, workValue3, textValue3, threadCall, workValue4
cmgCall = CMG
cmgCall = cmgCall.loadModule
textValue4 = "cfg/cfg_news"
-- Beginner: result below is config.
cmgCall = cmgCall(textValue4)
textValue4 = 70.0
numberValue6 = 5.0
numberValue7 = 10.0
numberValue8 = 8.0
numberValue9 = 8.0
workValue6 = textValue4 + numberValue6
workValue6 = workValue6 * 0.5
numberValue11 = 1
numberValue12 = 0.0
function workValue8(arg1)
  local arg2, playerPed, workValue5, cmgCall3, textValue5, numberValue10, workValue7, cmgCall4, flag9, flag, flag2, numberValue, numberValue2, numberValue3, textValue2, numberValue4, flag3, flag4, flag5, flag6, flag7, numberValue5, flag8
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  playerPed = GetOffsetFromEntityInWorldCoords
  workValue5 = arg2
  cmgCall3 = 0.0
  textValue5 = 0.0
  numberValue10 = -5.0
  playerPed = playerPed(workValue5, cmgCall3, textValue5, numberValue10)
  workValue5 = cmgCall.items
  workValue5 = workValue5[arg1]
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.loadModel
  textValue5 = workValue5.model
  -- Beginner: Request/load a GTA model before spawning or applying it.
  cmgCall3(textValue5)
  cmgCall3 = CMG
  cmgCall3 = cmgCall3.requestEntitySpawn
  textValue5 = "news_item_object"
  numberValue10 = arg1
  cmgCall3(textValue5, numberValue10)
  cmgCall3 = CreateObject
  textValue5 = workValue5.model
  numberValue10 = playerPed.x
  workValue7 = playerPed.y
  cmgCall4 = playerPed.z
  flag9 = true
  flag = true
  flag2 = true
  -- Beginner: result below is objectEntity.
  cmgCall3 = cmgCall3(textValue5, numberValue10, workValue7, cmgCall4, flag9, flag, flag2)
  textValue5 = workValue5.boneId
  numberValue10 = workValue5.position
  workValue7 = workValue5.rotation
  cmgCall4 = SetEntityCollision
  flag9 = cmgCall3
  flag = false
  flag2 = true
  cmgCall4(flag9, flag, flag2)
  cmgCall4 = AttachEntityToEntity
  flag9 = cmgCall3
  flag = arg2
  flag2 = GetPedBoneIndex
  numberValue = arg2
  numberValue2 = textValue5
  flag2 = flag2(numberValue, numberValue2)
  numberValue = numberValue10.x
  numberValue2 = numberValue10.y
  numberValue3 = numberValue10.z
  textValue2 = workValue7.x
  numberValue4 = workValue7.y
  flag3 = workValue7.z
  flag4 = true
  flag5 = true
  flag6 = false
  flag7 = true
  numberValue5 = 0
  flag8 = true
  -- Beginner: Attach one entity to another entity.
  cmgCall4(flag9, flag, flag2, numberValue, numberValue2, numberValue3, textValue2, numberValue4, flag3, flag4, flag5, flag6, flag7, numberValue5, flag8)
  cmgCall4 = CMG
  cmgCall4 = cmgCall4.loadAnimDict
  flag9 = workValue5.animations
  flag9 = flag9.dict
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgCall4(flag9)
  cmgCall4 = TaskPlayAnim
  flag9 = arg2
  flag = workValue5.animations
  flag = flag.dict
  flag2 = workValue5.animations
  flag2 = flag2.name
  numberValue = 1.0
  numberValue2 = -1
  numberValue3 = -1
  textValue2 = 50
  numberValue4 = 0
  flag3 = true
  flag4 = true
  flag5 = true
  -- Beginner: Play an animation on a ped.
  cmgCall4(flag9, flag, flag2, numberValue, numberValue2, numberValue3, textValue2, numberValue4, flag3, flag4, flag5)
  cmgCall4 = RemoveAnimDict
  flag9 = workValue5.animations
  flag9 = flag9.dict
  cmgCall4(flag9)
  cmgCall4 = ""
  if "camera" == arg1 then
    cmgCall4 = [[
~s~. 
 
Press ~r~[E]~s~ to enter recording mode~s~]]
  end
  flag9 = CMG
  flag9 = flag9.notifyPicture
  flag = "bbcnotification"
  flag2 = "notification"
  numberValue = "You are now holding a ~r~"
  numberValue2 = cmgCall.items
  numberValue2 = numberValue2[arg1]
  numberValue2 = numberValue2.formalName
  numberValue3 = cmgCall4
  textValue2 = "~s~."
  numberValue = numberValue .. numberValue2 .. numberValue3 .. textValue2
  numberValue2 = "BBC News"
  numberValue3 = "Equipment"
  textValue2 = nil
  numberValue4 = nil
  flag9(flag, flag2, numberValue, numberValue2, numberValue3, textValue2, numberValue4)
  flag9 = cmgCall.items
  flag9 = flag9[arg1]
  flag9.holding = true
  flag9 = Wait
  flag = 1000
  flag9(flag)
  flag9 = cmgCall.items
  flag9 = flag9[arg1]
  flag = ObjToNet
  flag2 = cmgCall3
  flag = flag(flag2)
  flag9.netId = flag
  flag9 = SetNetworkIdExistsOnAllMachines
  flag = cmgCall.items
  flag = flag[arg1]
  flag = flag.netId
  flag2 = true
  flag9(flag, flag2)
  flag9 = NetworkUseHighPrecisionBlending
  flag = cmgCall.items
  flag = flag[arg1]
  flag = flag.netId
  flag2 = true
  flag9(flag, flag2)
  flag9 = SetNetworkIdCanMigrate
  flag = cmgCall.items
  flag = flag[arg1]
  flag = flag.netId
  flag2 = false
  flag9(flag, flag2)
  flag9 = SetModelAsNoLongerNeeded
  flag = workValue5.model
  flag9(flag)
end
function workValue(arg1)
  local arg2, playerPed, workValue5, cmgCall3, textValue5, numberValue10, workValue7, cmgCall4
  arg2 = cmgCall.items
  arg2 = arg2[arg1]
  arg2 = arg2.holding
  if arg2 then
    arg2 = ClearPedSecondaryTask
    playerPed = PlayerPedId
    playerPed, workValue5, cmgCall3, textValue5, numberValue10, workValue7, cmgCall4 = playerPed()
    arg2(playerPed, workValue5, cmgCall3, textValue5, numberValue10, workValue7, cmgCall4)
    arg2 = DetachEntity
    playerPed = CMG
    playerPed = playerPed.getObjectId
    workValue5 = cmgCall.items
    workValue5 = workValue5[arg1]
    workValue5 = workValue5.netId
    cmgCall3 = "removeNewsItem (1)"
    playerPed = playerPed(workValue5, cmgCall3)
    if not playerPed then
      playerPed = 0
    end
    workValue5 = true
    cmgCall3 = true
    arg2(playerPed, workValue5, cmgCall3)
    arg2 = DeleteEntity
    playerPed = CMG
    playerPed = playerPed.getObjectId
    workValue5 = cmgCall.items
    workValue5 = workValue5[arg1]
    workValue5 = workValue5.netId
    cmgCall3 = "removeNewsItem (2)"
    playerPed, workValue5, cmgCall3, textValue5, numberValue10, workValue7, cmgCall4 = playerPed(workValue5, cmgCall3)
    -- Beginner: Delete a GTA entity.
    arg2(playerPed, workValue5, cmgCall3, textValue5, numberValue10, workValue7, cmgCall4)
    arg2 = cmgCall.items
    arg2 = arg2[arg1]
    arg2.netId = nil
    arg2 = cmgCall.items
    arg2 = arg2[arg1]
    arg2.holding = false
    arg2 = cmgCall.items
    arg2 = arg2[arg1]
    arg2.using = false
    arg2 = CMG
    arg2 = arg2.showAllDisplays
    playerPed = "news"
    arg2(playerPed)
    arg2 = CMG
    arg2 = arg2.notifyPicture
    playerPed = "bbcnotification"
    workValue5 = "notification"
    cmgCall3 = "You have put away the ~r~"
    textValue5 = cmgCall.items
    textValue5 = textValue5[arg1]
    textValue5 = textValue5.formalName
    numberValue10 = "~s~."
    cmgCall3 = cmgCall3 .. textValue5 .. numberValue10
    textValue5 = "BBC News"
    numberValue10 = "Equipment"
    workValue7 = nil
    cmgCall4 = nil
    arg2(playerPed, workValue5, cmgCall3, textValue5, numberValue10, workValue7, cmgCall4)
  end
end
function workValue2()
  local arg1, arg2, playerPed, workValue5, cmgCall3, textValue5, numberValue10, workValue7
  arg1 = pairs
  arg2 = cmgCall.items
  arg1, arg2, playerPed, workValue5 = arg1(arg2)
  for cmgCall3, textValue5 in arg1, arg2, playerPed, workValue5 do
    numberValue10 = workValue
    workValue7 = cmgCall3
    numberValue10(workValue7)
  end
end
eventRegistration = RegisterNetEvent
textValue = "f55afa9558"
-- Beginner: this function handles network event "f55afa9558".
function cmgCall2(arg1)
  local arg2, playerPed
  arg2 = cmgCall.items
  arg2 = arg2[arg1]
  arg2 = arg2.holding
  if not arg2 then
    arg2 = workValue2
    arg2()
    arg2 = workValue8
    playerPed = arg1
    arg2(playerPed)
  else
    arg2 = workValue
    playerPed = arg1
    arg2(playerPed)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f55afa9558".
eventRegistration(textValue, cmgCall2)
function eventRegistration()
  local arg1, arg2, playerPed, workValue5, cmgCall3
  arg1 = tostring
  arg2 = GetClockHours
  arg2, playerPed, workValue5, cmgCall3 = arg2()
  arg1 = arg1(arg2, playerPed, workValue5, cmgCall3)
  arg2 = tostring
  playerPed = GetClockMinutes
  playerPed, workValue5, cmgCall3 = playerPed()
  arg2 = arg2(playerPed, workValue5, cmgCall3)
  if arg1 < 10 then
    playerPed = "0"
    workValue5 = arg1
    playerPed = playerPed .. workValue5
    arg1 = playerPed
  end
  if arg2 < 10 then
    playerPed = "0"
    workValue5 = arg2
    playerPed = playerPed .. workValue5
    arg2 = playerPed
  end
  playerPed = arg1
  workValue5 = " "
  cmgCall3 = arg2
  playerPed = playerPed .. workValue5 .. cmgCall3
  return playerPed
end
function textValue()
  local arg1, arg2, playerPed, workValue5, cmgCall3, textValue5, numberValue10, workValue7, cmgCall4, flag9, flag, flag2, numberValue, numberValue2, numberValue3, textValue2, numberValue4, flag3, flag4
  arg1 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = pairs
  playerPed = cmgCall.items
  arg2, playerPed, workValue5, cmgCall3 = arg2(playerPed)
  for textValue5, numberValue10 in arg2, playerPed, workValue5, cmgCall3 do
    workValue7 = cmgCall.items
    workValue7 = workValue7[textValue5]
    workValue7 = workValue7.holding
    if workValue7 then
      workValue7 = IsEntityPlayingAnim
      cmgCall4 = arg1
      flag9 = cmgCall.items
      flag9 = flag9[textValue5]
      flag9 = flag9.animations
      flag9 = flag9.dict
      flag = cmgCall.items
      flag = flag[textValue5]
      flag = flag.animations
      flag = flag.name
      flag2 = 3
      workValue7 = workValue7(cmgCall4, flag9, flag, flag2)
      if not workValue7 then
        workValue7 = CMG
        workValue7 = workValue7.loadAnimDict
        cmgCall4 = cmgCall.items
        cmgCall4 = cmgCall4[textValue5]
        cmgCall4 = cmgCall4.animations
        cmgCall4 = cmgCall4.dict
        -- Beginner: Load a GTA animation dictionary before using it.
        workValue7(cmgCall4)
        workValue7 = TaskPlayAnim
        cmgCall4 = arg1
        flag9 = cmgCall.items
        flag9 = flag9[textValue5]
        flag9 = flag9.animations
        flag9 = flag9.dict
        flag = cmgCall.items
        flag = flag[textValue5]
        flag = flag.animations
        flag = flag.name
        flag2 = 1.0
        numberValue = -1
        numberValue2 = -1
        numberValue3 = 50
        textValue2 = 0
        numberValue4 = false
        flag3 = false
        flag4 = false
        -- Beginner: Play an animation on a ped.
        workValue7(cmgCall4, flag9, flag, flag2, numberValue, numberValue2, numberValue3, textValue2, numberValue4, flag3, flag4)
        workValue7 = RemoveAnimDict
        cmgCall4 = cmgCall.items
        cmgCall4 = cmgCall4[textValue5]
        cmgCall4 = cmgCall4.animations
        cmgCall4 = cmgCall4.dict
        workValue7(cmgCall4)
      end
      workValue7 = DisablePlayerFiring
      cmgCall4 = PlayerId
      -- Beginner: result below is localPlayerIndex.
      cmgCall4 = cmgCall4()
      flag9 = true
      workValue7(cmgCall4, flag9)
      workValue7 = DisableControlAction
      cmgCall4 = 0
      flag9 = 25
      flag = true
      workValue7(cmgCall4, flag9, flag)
      workValue7 = DisableControlAction
      cmgCall4 = 0
      flag9 = 44
      flag = true
      workValue7(cmgCall4, flag9, flag)
      workValue7 = DisableControlAction
      cmgCall4 = 0
      flag9 = 37
      flag = true
      workValue7(cmgCall4, flag9, flag)
      workValue7 = SetCurrentPedWeapon
      cmgCall4 = arg1
      flag9 = GetHashKey
      flag = "WEAPON_UNARMED"
      -- Beginner: result below is hash.
      flag9 = flag9(flag)
      flag = true
      workValue7(cmgCall4, flag9, flag)
    end
  end
  arg2 = cmgCall.items
  arg2 = arg2.camera
  arg2 = arg2.using
  if arg2 then
    arg2 = HasStreamedTextureDictLoaded
    playerPed = "bbcnews"
    arg2 = arg2(playerPed)
    if not arg2 then
      arg2 = RequestStreamedTextureDict
      playerPed = "bbcnews"
      workValue5 = true
      arg2(playerPed, workValue5)
      while true do
        arg2 = HasStreamedTextureDictLoaded
        playerPed = "bbcnews"
        arg2 = arg2(playerPed)
        if arg2 then
          break
        end
        arg2 = print
        playerPed = "stuck loading"
        workValue5 = "bbcnews"
        arg2(playerPed, workValue5)
        arg2 = Wait
        playerPed = 0
        arg2(playerPed)
      end
    end
    arg2 = DrawSprite
    playerPed = "bbcnews"
    workValue5 = cmgCall.textures
    cmgCall3 = numberValue11
    workValue5 = workValue5[cmgCall3]
    workValue5 = workValue5.textureName
    cmgCall3 = 0.5
    textValue5 = 0.5
    numberValue10 = 1.0
    workValue7 = 1.0
    cmgCall4 = 0.0
    flag9 = 255
    flag = 255
    flag2 = 255
    numberValue = 255
    arg2(playerPed, workValue5, cmgCall3, textValue5, numberValue10, workValue7, cmgCall4, flag9, flag, flag2, numberValue)
    arg2 = cmgCall.textures
    playerPed = numberValue11
    arg2 = arg2[playerPed]
    arg2 = arg2.textureName
    if "bbcnews" == arg2 then
      arg2 = DrawAdvancedText
      playerPed = 0.3575
      workValue5 = 0.936
      cmgCall3 = 0.0
      textValue5 = 0.0
      numberValue10 = 0.75
      workValue7 = eventRegistration
      workValue7 = workValue7()
      cmgCall4 = 255
      flag9 = 255
      flag = 255
      flag2 = 255
      numberValue = 2
      numberValue2 = 0
      arg2(playerPed, workValue5, cmgCall3, textValue5, numberValue10, workValue7, cmgCall4, flag9, flag, flag2, numberValue, numberValue2)
    end
    arg2 = cmgCall.textures
    playerPed = numberValue11
    arg2 = arg2[playerPed]
    arg2 = arg2.textureName
    if "skynews" == arg2 then
      arg2 = DrawAdvancedText
      playerPed = 0.187
      workValue5 = 0.935
      cmgCall3 = 0.0
      textValue5 = 0.0
      numberValue10 = 0.6
      workValue7 = eventRegistration
      workValue7 = workValue7()
      cmgCall4 = 255
      flag9 = 255
      flag = 255
      flag2 = 255
      numberValue = 2
      numberValue2 = 0
      arg2(playerPed, workValue5, cmgCall3, textValue5, numberValue10, workValue7, cmgCall4, flag9, flag, flag2, numberValue, numberValue2)
    end
  end
end
cmgCall2 = CMG
cmgCall2 = cmgCall2.createThreadOnTick
workValue3 = textValue
textValue3 = "News"
-- Beginner: Run a helper every game frame while this script is active.
cmgCall2(workValue3, textValue3)
function cmgCall2()
  local arg1, arg2
  arg1 = HideHelpTextThisFrame
  arg1()
  arg1 = HideHudAndRadarThisFrame
  arg1()
  arg1 = HideHudComponentThisFrame
  arg2 = 1
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 2
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 3
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 4
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 6
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 7
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 8
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 9
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 13
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 11
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 12
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 15
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 18
  arg1(arg2)
  arg1 = HideHudComponentThisFrame
  arg2 = 19
  arg1(arg2)
end
function workValue3(arg1, arg2)
  local playerPed, workValue5, cmgCall3, textValue5, numberValue10, workValue7, cmgCall4, flag9, flag, flag2
  playerPed = GetDisabledControlNormal
  workValue5 = 0
  cmgCall3 = 220
  playerPed = playerPed(workValue5, cmgCall3)
  workValue5 = GetDisabledControlNormal
  cmgCall3 = 0
  textValue5 = 221
  workValue5 = workValue5(cmgCall3, textValue5)
  cmgCall3 = GetCamRot
  textValue5 = arg1
  numberValue10 = 2
  cmgCall3 = cmgCall3(textValue5, numberValue10)
  if 0.0 ~= playerPed or 0.0 ~= workValue5 then
    textValue5 = cmgCall3.z
    numberValue10 = playerPed * -1.0
    workValue7 = numberValue9
    numberValue10 = numberValue10 * workValue7
    workValue7 = arg2 + 0.1
    numberValue10 = numberValue10 * workValue7
    textValue5 = textValue5 + numberValue10
    numberValue12 = textValue5
    textValue5 = math
    textValue5 = textValue5.max
    numberValue10 = math
    numberValue10 = numberValue10.min
    workValue7 = 20.0
    cmgCall4 = cmgCall3.x
    flag9 = workValue5 * -1.0
    flag = numberValue8
    flag9 = flag9 * flag
    flag = arg2 + 0.1
    flag9 = flag9 * flag
    cmgCall4 = cmgCall4 + flag9
    numberValue10 = numberValue10(workValue7, cmgCall4)
    workValue7 = -89.5
    textValue5 = textValue5(numberValue10, workValue7)
    numberValue10 = SetCamRot
    workValue7 = arg1
    cmgCall4 = textValue5
    flag9 = 0.0
    flag = numberValue12
    flag2 = 2
    numberValue10(workValue7, cmgCall4, flag9, flag, flag2)
  end
end
function textValue3(arg1)
  local arg2, playerPed, workValue5, cmgCall3, textValue5
  arg2 = PlayerPedId
  -- Beginner: result below is localPlayerPed.
  arg2 = arg2()
  playerPed = IsPedSittingInAnyVehicle
  workValue5 = arg2
  playerPed = playerPed(workValue5)
  if not playerPed then
    playerPed = IsControlJustPressed
    workValue5 = 0
    cmgCall3 = 241
    playerPed = playerPed(workValue5, cmgCall3)
    if playerPed then
      playerPed = math
      playerPed = playerPed.max
      workValue5 = workValue6
      cmgCall3 = numberValue7
      workValue5 = workValue5 - cmgCall3
      cmgCall3 = numberValue6
      playerPed = playerPed(workValue5, cmgCall3)
      workValue6 = playerPed
    end
    playerPed = IsControlJustPressed
    workValue5 = 0
    cmgCall3 = 242
    playerPed = playerPed(workValue5, cmgCall3)
    if playerPed then
      playerPed = math
      playerPed = playerPed.min
      workValue5 = workValue6
      cmgCall3 = numberValue7
      workValue5 = workValue5 + cmgCall3
      cmgCall3 = textValue4
      playerPed = playerPed(workValue5, cmgCall3)
      workValue6 = playerPed
    end
    playerPed = GetCamFov
    workValue5 = arg1
    playerPed = playerPed(workValue5)
    workValue5 = math
    workValue5 = workValue5.abs
    cmgCall3 = workValue6
    cmgCall3 = cmgCall3 - playerPed
    workValue5 = workValue5(cmgCall3)
    cmgCall3 = 0.1
    if workValue5 < cmgCall3 then
      workValue6 = playerPed
    end
    workValue5 = SetCamFov
    cmgCall3 = arg1
    textValue5 = workValue6
    textValue5 = textValue5 - playerPed
    textValue5 = textValue5 * 0.05
    textValue5 = playerPed + textValue5
    workValue5(cmgCall3, textValue5)
  else
    playerPed = IsControlJustPressed
    workValue5 = 0
    cmgCall3 = 17
    playerPed = playerPed(workValue5, cmgCall3)
    if playerPed then
      playerPed = math
      playerPed = playerPed.max
      workValue5 = workValue6
      cmgCall3 = numberValue7
      workValue5 = workValue5 - cmgCall3
      cmgCall3 = numberValue6
      playerPed = playerPed(workValue5, cmgCall3)
      workValue6 = playerPed
    end
    playerPed = IsControlJustPressed
    workValue5 = 0
    cmgCall3 = 16
    playerPed = playerPed(workValue5, cmgCall3)
    if playerPed then
      playerPed = math
      playerPed = playerPed.min
      workValue5 = workValue6
      cmgCall3 = numberValue7
      workValue5 = workValue5 + cmgCall3
      cmgCall3 = textValue4
      playerPed = playerPed(workValue5, cmgCall3)
      workValue6 = playerPed
    end
    playerPed = GetCamFov
    workValue5 = arg1
    playerPed = playerPed(workValue5)
    workValue5 = math
    workValue5 = workValue5.abs
    cmgCall3 = workValue6
    cmgCall3 = cmgCall3 - playerPed
    workValue5 = workValue5(cmgCall3)
    cmgCall3 = 0.1
    if workValue5 < cmgCall3 then
      workValue6 = playerPed
    end
    workValue5 = SetCamFov
    cmgCall3 = arg1
    textValue5 = workValue6
    textValue5 = textValue5 - playerPed
    textValue5 = textValue5 * 0.05
    textValue5 = playerPed + textValue5
    workValue5(cmgCall3, textValue5)
  end
end
threadCall = Citizen
threadCall = threadCall.CreateThread
function workValue4()
  local arg1, arg2, playerPed, workValue5, cmgCall3, textValue5, numberValue10, workValue7, cmgCall4, flag9
  while true do
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
    arg1 = cmgCall.items
    arg1 = arg1.camera
    arg1 = arg1.holding
    if arg1 then
      arg1 = IsControlJustReleased
      arg2 = 1
      playerPed = 38
      arg1 = arg1(arg2, playerPed)
      if arg1 then
        arg1 = cmgCall.items
        arg1 = arg1.camera
        arg1.using = true
        arg1 = CMG
        arg1 = arg1.hideAllDisplays
        arg2 = "news"
        arg1(arg2)
        arg1 = CMG
        arg1 = arg1.notifyPicture
        arg2 = "bbcnotification"
        playerPed = "notification"
        workValue5 = "Press ~r~LEFT ALT ~s~to change overlay or ~r~BACKSPACE ~s~to exit recording mode."
        cmgCall3 = "BBC News"
        textValue5 = "Now Recording"
        numberValue10 = nil
        workValue7 = nil
        arg1(arg2, playerPed, workValue5, cmgCall3, textValue5, numberValue10, workValue7)
        arg1 = SetTimecycleModifier
        arg2 = "default"
        arg1(arg2)
        arg1 = SetTimecycleModifierStrength
        arg2 = 0.3
        arg1(arg2)
        arg1 = PlayerPedId
        -- Beginner: result below is localPlayerPed.
        arg1 = arg1()
        arg2 = GetVehiclePedIsIn
        playerPed = arg1
        workValue5 = false
        -- Beginner: result below is currentVehicle.
        arg2 = arg2(playerPed, workValue5)
        playerPed = CreateCam
        workValue5 = "DEFAULT_SCRIPTED_FLY_CAMERA"
        cmgCall3 = true
        -- Beginner: result below is cameraHandle.
        playerPed = playerPed(workValue5, cmgCall3)
        workValue5 = AttachCamToEntity
        cmgCall3 = playerPed
        textValue5 = arg1
        numberValue10 = 0.0
        workValue7 = 0.5
        cmgCall4 = 0.65
        flag9 = true
        workValue5(cmgCall3, textValue5, numberValue10, workValue7, cmgCall4, flag9)
        workValue5 = SetCamRot
        cmgCall3 = playerPed
        textValue5 = 2.0
        numberValue10 = 1.0
        workValue7 = GetEntityHeading
        cmgCall4 = arg1
        -- Beginner: result below is heading.
        workValue7 = workValue7(cmgCall4)
        cmgCall4 = 2
        workValue5(cmgCall3, textValue5, numberValue10, workValue7, cmgCall4)
        workValue5 = SetCamFov
        cmgCall3 = playerPed
        textValue5 = workValue6
        workValue5(cmgCall3, textValue5)
        workValue5 = RenderScriptCams
        cmgCall3 = true
        textValue5 = false
        numberValue10 = 0
        workValue7 = true
        cmgCall4 = false
        workValue5(cmgCall3, textValue5, numberValue10, workValue7, cmgCall4)
        workValue5 = EndScaleformMovieMethod
        workValue5()
        while true do
          workValue5 = cmgCall.items
          workValue5 = workValue5.camera
          workValue5 = workValue5.using
          if not workValue5 then
            break
          end
          workValue5 = IsEntityDead
          cmgCall3 = arg1
          workValue5 = workValue5(cmgCall3)
          if workValue5 then
            break
          end
          workValue5 = GetVehiclePedIsIn
          cmgCall3 = arg1
          textValue5 = false
          -- Beginner: result below is currentVehicle.
          workValue5 = workValue5(cmgCall3, textValue5)
          if workValue5 ~= arg2 then
            break
          end
          workValue5 = IsControlJustReleased
          cmgCall3 = 1
          textValue5 = 19
          workValue5 = workValue5(cmgCall3, textValue5)
          if workValue5 then
            workValue5 = PlaySoundFrontend
            cmgCall3 = -1
            textValue5 = "SELECT"
            numberValue10 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            workValue7 = false
            workValue5(cmgCall3, textValue5, numberValue10, workValue7)
            workValue5 = numberValue11
            if workValue5 <= 7 then
              workValue5 = numberValue11
              workValue5 = workValue5 + 1
              numberValue11 = workValue5
            else
              workValue5 = 1
              numberValue11 = workValue5
            end
          end
          workValue5 = IsControlJustReleased
          cmgCall3 = 1
          textValue5 = 177
          workValue5 = workValue5(cmgCall3, textValue5)
          if workValue5 then
            workValue5 = PlaySoundFrontend
            cmgCall3 = -1
            textValue5 = "SELECT"
            numberValue10 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            workValue7 = false
            workValue5(cmgCall3, textValue5, numberValue10, workValue7)
            workValue5 = cmgCall.items
            workValue5 = workValue5.camera
            workValue5.using = false
            workValue5 = CMG
            workValue5 = workValue5.showAllDisplays
            cmgCall3 = "news"
            workValue5(cmgCall3)
          end
          workValue5 = SetEntityRotation
          cmgCall3 = arg1
          textValue5 = 0
          numberValue10 = 0
          workValue7 = numberValue12
          cmgCall4 = 2
          flag9 = true
          workValue5(cmgCall3, textValue5, numberValue10, workValue7, cmgCall4, flag9)
          workValue5 = textValue4
          cmgCall3 = numberValue6
          workValue5 = workValue5 - cmgCall3
          cmgCall3 = 1.0
          workValue5 = cmgCall3 / workValue5
          cmgCall3 = workValue6
          textValue5 = numberValue6
          cmgCall3 = cmgCall3 - textValue5
          workValue5 = workValue5 * cmgCall3
          cmgCall3 = workValue3
          textValue5 = playerPed
          numberValue10 = workValue5
          cmgCall3(textValue5, numberValue10)
          cmgCall3 = textValue3
          textValue5 = playerPed
          cmgCall3(textValue5)
          cmgCall3 = cmgCall2
          -- Beginner: Run a helper every game frame while this script is active.
          cmgCall3()
          cmgCall3 = GetGameplayCamRelativeHeading
          cmgCall3 = cmgCall3()
          textValue5 = GetGameplayCamRelativePitch
          textValue5 = textValue5()
          if textValue5 < -70.0 then
            textValue5 = -70.0
          elseif textValue5 > 42.0 then
            textValue5 = 42.0
          end
          numberValue10 = textValue5 + 70.0
          textValue5 = numberValue10 / 112.0
          numberValue10 = -180.0
          if cmgCall3 < numberValue10 then
            cmgCall3 = -180.0
          else
            numberValue10 = 180.0
            if cmgCall3 > numberValue10 then
              cmgCall3 = 180.0
            end
          end
          numberValue10 = cmgCall3 + 180.0
          cmgCall3 = numberValue10 / 360.0
          numberValue10 = SetTaskMoveNetworkSignalFloat
          workValue7 = arg1
          cmgCall4 = "Pitch"
          flag9 = textValue5
          numberValue10(workValue7, cmgCall4, flag9)
          numberValue10 = SetTaskMoveNetworkSignalFloat
          workValue7 = arg1
          cmgCall4 = "Heading"
          flag9 = cmgCall3 * -1.0
          flag9 = flag9 + 1.0
          numberValue10(workValue7, cmgCall4, flag9)
          numberValue10 = Wait
          workValue7 = 0
          numberValue10(workValue7)
        end
        workValue5 = cmgCall.items
        workValue5 = workValue5.camera
        workValue5.using = false
        workValue5 = CMG
        workValue5 = workValue5.showAllDisplays
        cmgCall3 = "news"
        workValue5(cmgCall3)
        workValue5 = ClearTimecycleModifier
        workValue5()
        workValue5 = textValue4
        cmgCall3 = numberValue6
        workValue5 = workValue5 + cmgCall3
        workValue5 = workValue5 * 0.5
        workValue6 = workValue5
        workValue5 = RenderScriptCams
        cmgCall3 = false
        textValue5 = false
        numberValue10 = 0
        workValue7 = true
        cmgCall4 = false
        workValue5(cmgCall3, textValue5, numberValue10, workValue7, cmgCall4)
        workValue5 = DestroyCam
        cmgCall3 = playerPed
        textValue5 = false
        workValue5(cmgCall3, textValue5)
        workValue5 = SetNightvision
        cmgCall3 = false
        workValue5(cmgCall3)
        workValue5 = SetSeethrough
        cmgCall3 = false
        workValue5(cmgCall3)
      end
    end
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
threadCall(workValue4)