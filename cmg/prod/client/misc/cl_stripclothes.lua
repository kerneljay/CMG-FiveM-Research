--[[
    Beginner Guide: cl_stripclothes.lua
    ===================================

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
    BEGINNER GUIDE — Stripclothes
    =============================

    File: cmg/prod/client/misc/cl_stripclothes.lua
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

    Commands/command-like entries found:
      * /takeoffmask
      * /takeoffhat
      * /takeoffjacket
      * /takeofftie
      * /takeoffbracelet
      * /takeoffglasses
      * /takeofftrousers
      * /takeoffshoes
      * takeoffmask
      * takeoffhat
      * takeoffjacket
      * takeofftie

    Named framework/network events found:
      * chat:addSuggestion

]]
local localEventCall, textValue, textValue2, textValue4
localEventCall = TriggerEvent
textValue = "chat:addSuggestion"
textValue2 = "/takeoffmask"
textValue4 = "Take off your mask"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
localEventCall(textValue, textValue2, textValue4)
localEventCall = TriggerEvent
textValue = "chat:addSuggestion"
textValue2 = "/takeoffhat"
textValue4 = "Take off your hat"
localEventCall(textValue, textValue2, textValue4)
localEventCall = TriggerEvent
textValue = "chat:addSuggestion"
textValue2 = "/takeoffjacket"
textValue4 = "Take off your jacket"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
localEventCall(textValue, textValue2, textValue4)
localEventCall = TriggerEvent
textValue = "chat:addSuggestion"
textValue2 = "/takeofftie"
textValue4 = "Take off your tie"
localEventCall(textValue, textValue2, textValue4)
localEventCall = TriggerEvent
textValue = "chat:addSuggestion"
textValue2 = "/takeoffbracelet"
textValue4 = "Take off your bracelet"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
localEventCall(textValue, textValue2, textValue4)
localEventCall = TriggerEvent
textValue = "chat:addSuggestion"
textValue2 = "/takeoffglasses"
textValue4 = "Take off your glasses"
localEventCall(textValue, textValue2, textValue4)
localEventCall = TriggerEvent
textValue = "chat:addSuggestion"
textValue2 = "/takeofftrousers"
textValue4 = "Take off your trousers"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
localEventCall(textValue, textValue2, textValue4)
localEventCall = TriggerEvent
textValue = "chat:addSuggestion"
textValue2 = "/takeoffshoes"
textValue4 = "Take off your shoes"
localEventCall(textValue, textValue2, textValue4)
localEventCall = RegisterCommand
textValue = "takeoffmask"
-- Beginner: this function is the command handler for "takeoffmask".
function textValue2()
  local cmgCall, cmgCall2, textValue3, flag4, textValue5, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, flag, flag2, flag3
  cmgCall = CMG
  cmgCall = cmgCall.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall = cmgCall()
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.loadAnimDict
  textValue3 = "veh@bike@common@front@base"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgCall2(textValue3)
  cmgCall2 = TaskPlayAnim
  textValue3 = cmgCall
  flag4 = "veh@bike@common@front@base"
  textValue5 = "take_off_helmet_walk"
  numberValue = 5.0
  numberValue2 = 5.0
  numberValue3 = -1
  numberValue4 = 48
  numberValue5 = 0
  flag = false
  flag2 = false
  flag3 = false
  -- Beginner: Play an animation on a ped.
  cmgCall2(textValue3, flag4, textValue5, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, flag, flag2, flag3)
  cmgCall2 = RemoveAnimDict
  textValue3 = "veh@bike@common@front@base"
  cmgCall2(textValue3)
  cmgCall2 = Citizen
  cmgCall2 = cmgCall2.Wait
  textValue3 = 700
  cmgCall2(textValue3)
  cmgCall2 = SetPedComponentVariation
  textValue3 = cmgCall
  flag4 = 1
  textValue5 = 0
  numberValue = 0
  numberValue2 = 1
  cmgCall2(textValue3, flag4, textValue5, numberValue, numberValue2)
  cmgCall2 = IsPedWearingHelmet
  textValue3 = cmgCall
  cmgCall2 = cmgCall2(textValue3)
  if cmgCall2 then
    cmgCall2 = RemovePedHelmet
    textValue3 = cmgCall
    flag4 = true
    cmgCall2(textValue3, flag4)
  end
end
textValue4 = false
-- Beginner: Register a chat/console command. Event/command: "takeoffmask".
localEventCall(textValue, textValue2, textValue4)
localEventCall = RegisterCommand
textValue = "takeoffhat"
-- Beginner: this function is the command handler for "takeoffhat".
function textValue2()
  local cmgCall, cmgCall2, textValue3, flag4, textValue5, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, flag, flag2, flag3
  cmgCall = CMG
  cmgCall = cmgCall.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall = cmgCall()
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.loadAnimDict
  textValue3 = "veh@bike@common@front@base"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgCall2(textValue3)
  cmgCall2 = TaskPlayAnim
  textValue3 = cmgCall
  flag4 = "veh@bike@common@front@base"
  textValue5 = "take_off_helmet_walk"
  numberValue = 5.0
  numberValue2 = 5.0
  numberValue3 = -1
  numberValue4 = 48
  numberValue5 = 0
  flag = false
  flag2 = false
  flag3 = false
  -- Beginner: Play an animation on a ped.
  cmgCall2(textValue3, flag4, textValue5, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, flag, flag2, flag3)
  cmgCall2 = RemoveAnimDict
  textValue3 = "veh@bike@common@front@base"
  cmgCall2(textValue3)
  cmgCall2 = Citizen
  cmgCall2 = cmgCall2.Wait
  textValue3 = 700
  cmgCall2(textValue3)
  cmgCall2 = ClearPedProp
  textValue3 = cmgCall
  flag4 = 0
  cmgCall2(textValue3, flag4)
  cmgCall2 = IsPedWearingHelmet
  textValue3 = cmgCall
  cmgCall2 = cmgCall2(textValue3)
  if cmgCall2 then
    cmgCall2 = RemovePedHelmet
    textValue3 = cmgCall
    flag4 = true
    cmgCall2(textValue3, flag4)
  end
end
textValue4 = false
-- Beginner: Register a chat/console command. Event/command: "takeoffhat".
localEventCall(textValue, textValue2, textValue4)
localEventCall = RegisterCommand
textValue = "takeoffjacket"
-- Beginner: this function is the command handler for "takeoffjacket".
function textValue2()
  local cmgCall, cmgCall2, textValue3, flag4, textValue5, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, flag, flag2, flag3
  cmgCall = CMG
  cmgCall = cmgCall.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall = cmgCall()
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.loadAnimDict
  textValue3 = "clothingtie"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgCall2(textValue3)
  cmgCall2 = TaskPlayAnim
  textValue3 = cmgCall
  flag4 = "clothingtie"
  textValue5 = "try_tie_positive_a"
  numberValue = 5.0
  numberValue2 = 5.0
  numberValue3 = -1
  numberValue4 = 48
  numberValue5 = 0
  flag = false
  flag2 = false
  flag3 = false
  -- Beginner: Play an animation on a ped.
  cmgCall2(textValue3, flag4, textValue5, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, flag, flag2, flag3)
  cmgCall2 = RemoveAnimDict
  textValue3 = "clothingtie"
  cmgCall2(textValue3)
  cmgCall2 = Citizen
  cmgCall2 = cmgCall2.Wait
  textValue3 = 3000
  cmgCall2(textValue3)
  cmgCall2 = SetPedComponentVariation
  textValue3 = cmgCall
  flag4 = 3
  textValue5 = 15
  numberValue = 0
  numberValue2 = 0
  cmgCall2(textValue3, flag4, textValue5, numberValue, numberValue2)
  cmgCall2 = SetPedComponentVariation
  textValue3 = cmgCall
  flag4 = 8
  textValue5 = 0
  numberValue = 240
  numberValue2 = 0
  cmgCall2(textValue3, flag4, textValue5, numberValue, numberValue2)
  cmgCall2 = GetEntityModel
  textValue3 = cmgCall
  -- Beginner: result below is modelHash.
  cmgCall2 = cmgCall2(textValue3)
  if -1667301416 == cmgCall2 then
    cmgCall2 = SetPedComponentVariation
    textValue3 = cmgCall
    flag4 = 11
    textValue5 = 18
    numberValue = 0
    numberValue2 = 0
    cmgCall2(textValue3, flag4, textValue5, numberValue, numberValue2)
  else
    cmgCall2 = SetPedComponentVariation
    textValue3 = cmgCall
    flag4 = 11
    textValue5 = 0
    numberValue = 240
    numberValue2 = 0
    cmgCall2(textValue3, flag4, textValue5, numberValue, numberValue2)
  end
end
textValue4 = false
-- Beginner: Register a chat/console command. Event/command: "takeoffjacket".
localEventCall(textValue, textValue2, textValue4)
localEventCall = RegisterCommand
textValue = "takeofftie"
-- Beginner: this function is the command handler for "takeofftie".
function textValue2()
  local cmgCall, cmgCall2, textValue3, flag4, textValue5, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, flag, flag2, flag3
  cmgCall = CMG
  cmgCall = cmgCall.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall = cmgCall()
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.loadAnimDict
  textValue3 = "clothingtie"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgCall2(textValue3)
  cmgCall2 = TaskPlayAnim
  textValue3 = cmgCall
  flag4 = "clothingtie"
  textValue5 = "try_tie_neutral_b"
  numberValue = 5.0
  numberValue2 = 5.0
  numberValue3 = -1
  numberValue4 = 48
  numberValue5 = 0
  flag = false
  flag2 = false
  flag3 = false
  -- Beginner: Play an animation on a ped.
  cmgCall2(textValue3, flag4, textValue5, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, flag, flag2, flag3)
  cmgCall2 = RemoveAnimDict
  textValue3 = "clothingtie"
  cmgCall2(textValue3)
  cmgCall2 = Citizen
  cmgCall2 = cmgCall2.Wait
  textValue3 = 1200
  cmgCall2(textValue3)
  cmgCall2 = SetPedComponentVariation
  textValue3 = cmgCall
  flag4 = 7
  textValue5 = 0
  numberValue = 240
  numberValue2 = 0
  cmgCall2(textValue3, flag4, textValue5, numberValue, numberValue2)
end
textValue4 = false
-- Beginner: Register a chat/console command. Event/command: "takeofftie".
localEventCall(textValue, textValue2, textValue4)
localEventCall = RegisterCommand
textValue = "takeoffbracelet"
-- Beginner: this function is the command handler for "takeoffbracelet".
function textValue2()
  local cmgCall, cmgCall2, textValue3, flag4
  cmgCall = CMG
  cmgCall = cmgCall.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall = cmgCall()
  cmgCall2 = ClearPedProp
  textValue3 = cmgCall
  flag4 = 6
  cmgCall2(textValue3, flag4)
  cmgCall2 = ClearPedProp
  textValue3 = cmgCall
  flag4 = 7
  cmgCall2(textValue3, flag4)
end
textValue4 = false
-- Beginner: Register a chat/console command. Event/command: "takeoffbracelet".
localEventCall(textValue, textValue2, textValue4)
localEventCall = RegisterCommand
textValue = "takeoffglasses"
-- Beginner: this function is the command handler for "takeoffglasses".
function textValue2()
  local cmgCall, cmgCall2, textValue3, flag4, textValue5, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, flag, flag2, flag3
  cmgCall = CMG
  cmgCall = cmgCall.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall = cmgCall()
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.loadAnimDict
  textValue3 = "clothingspecs"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgCall2(textValue3)
  cmgCall2 = TaskPlayAnim
  textValue3 = cmgCall
  flag4 = "clothingspecs"
  textValue5 = "try_glasses_positive_a"
  numberValue = 5.0
  numberValue2 = 5.0
  numberValue3 = -1
  numberValue4 = 48
  numberValue5 = 0
  flag = false
  flag2 = false
  flag3 = false
  -- Beginner: Play an animation on a ped.
  cmgCall2(textValue3, flag4, textValue5, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, flag, flag2, flag3)
  cmgCall2 = RemoveAnimDict
  textValue3 = "clothingspecs"
  cmgCall2(textValue3)
  cmgCall2 = Citizen
  cmgCall2 = cmgCall2.Wait
  textValue3 = 1800
  cmgCall2(textValue3)
  cmgCall2 = ClearPedProp
  textValue3 = cmgCall
  flag4 = 1
  cmgCall2(textValue3, flag4)
  cmgCall2 = Citizen
  cmgCall2 = cmgCall2.Wait
  textValue3 = 800
  cmgCall2(textValue3)
  cmgCall2 = ClearPedSecondaryTask
  textValue3 = cmgCall
  cmgCall2(textValue3)
end
textValue4 = false
-- Beginner: Register a chat/console command. Event/command: "takeoffglasses".
localEventCall(textValue, textValue2, textValue4)
localEventCall = RegisterCommand
textValue = "takeofftrousers"
-- Beginner: this function is the command handler for "takeofftrousers".
function textValue2()
  local cmgCall, cmgCall2, textValue3, flag4, textValue5, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, flag, flag2, flag3
  cmgCall = CMG
  cmgCall = cmgCall.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall = cmgCall()
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.loadAnimDict
  textValue3 = "clothingshoes"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgCall2(textValue3)
  cmgCall2 = TaskPlayAnim
  textValue3 = cmgCall
  flag4 = "clothingshoes"
  textValue5 = "try_shoes_positive_d"
  numberValue = 5.0
  numberValue2 = 5.0
  numberValue3 = -1
  numberValue4 = 48
  numberValue5 = 0
  flag = false
  flag2 = false
  flag3 = false
  -- Beginner: Play an animation on a ped.
  cmgCall2(textValue3, flag4, textValue5, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, flag, flag2, flag3)
  cmgCall2 = RemoveAnimDict
  textValue3 = "clothingshoes"
  cmgCall2(textValue3)
  cmgCall2 = Citizen
  cmgCall2 = cmgCall2.Wait
  textValue3 = 1800
  cmgCall2(textValue3)
  cmgCall2 = GetEntityModel
  textValue3 = cmgCall
  -- Beginner: result below is modelHash.
  cmgCall2 = cmgCall2(textValue3)
  if -1667301416 == cmgCall2 then
    cmgCall2 = SetPedComponentVariation
    textValue3 = cmgCall
    flag4 = 4
    textValue5 = 14
    numberValue = 0
    numberValue2 = 2
    cmgCall2(textValue3, flag4, textValue5, numberValue, numberValue2)
  else
    cmgCall2 = SetPedComponentVariation
    textValue3 = cmgCall
    flag4 = 4
    textValue5 = 14
    numberValue = 0
    numberValue2 = 2
    cmgCall2(textValue3, flag4, textValue5, numberValue, numberValue2)
  end
  cmgCall2 = Citizen
  cmgCall2 = cmgCall2.Wait
  textValue3 = 800
  cmgCall2(textValue3)
  cmgCall2 = ClearPedSecondaryTask
  textValue3 = cmgCall
  cmgCall2(textValue3)
end
textValue4 = false
-- Beginner: Register a chat/console command. Event/command: "takeofftrousers".
localEventCall(textValue, textValue2, textValue4)
localEventCall = RegisterCommand
textValue = "takeoffshoes"
-- Beginner: this function is the command handler for "takeoffshoes".
function textValue2()
  local cmgCall, cmgCall2, textValue3, flag4, textValue5, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, flag, flag2, flag3
  cmgCall = CMG
  cmgCall = cmgCall.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgCall = cmgCall()
  cmgCall2 = CMG
  cmgCall2 = cmgCall2.loadAnimDict
  textValue3 = "clothingshoes"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgCall2(textValue3)
  cmgCall2 = TaskPlayAnim
  textValue3 = cmgCall
  flag4 = "clothingshoes"
  textValue5 = "try_shoes_positive_d"
  numberValue = 5.0
  numberValue2 = 5.0
  numberValue3 = -1
  numberValue4 = 48
  numberValue5 = 0
  flag = false
  flag2 = false
  flag3 = false
  -- Beginner: Play an animation on a ped.
  cmgCall2(textValue3, flag4, textValue5, numberValue, numberValue2, numberValue3, numberValue4, numberValue5, flag, flag2, flag3)
  cmgCall2 = RemoveAnimDict
  textValue3 = "clothingshoes"
  cmgCall2(textValue3)
  cmgCall2 = Citizen
  cmgCall2 = cmgCall2.Wait
  textValue3 = 1800
  cmgCall2(textValue3)
  cmgCall2 = GetEntityModel
  textValue3 = cmgCall
  -- Beginner: result below is modelHash.
  cmgCall2 = cmgCall2(textValue3)
  if -1667301416 == cmgCall2 then
    cmgCall2 = SetPedComponentVariation
    textValue3 = cmgCall
    flag4 = 6
    textValue5 = 35
    numberValue = 0
    numberValue2 = 2
    cmgCall2(textValue3, flag4, textValue5, numberValue, numberValue2)
  else
    cmgCall2 = SetPedComponentVariation
    textValue3 = cmgCall
    flag4 = 6
    textValue5 = 34
    numberValue = 0
    numberValue2 = 2
    cmgCall2(textValue3, flag4, textValue5, numberValue, numberValue2)
  end
  cmgCall2 = Citizen
  cmgCall2 = cmgCall2.Wait
  textValue3 = 800
  cmgCall2(textValue3)
  cmgCall2 = ClearPedSecondaryTask
  textValue3 = cmgCall
  cmgCall2(textValue3)
end
textValue4 = false
-- Beginner: Register a chat/console command. Event/command: "takeoffshoes".
localEventCall(textValue, textValue2, textValue4)