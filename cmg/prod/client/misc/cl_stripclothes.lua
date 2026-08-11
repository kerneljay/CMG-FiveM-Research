--[[
    LEVEL 1 BEGINNER GUIDE — Stripclothes
    ==========================================

    File: cmg/prod/client/misc/cl_stripclothes.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Stripclothes feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 8
      * Background threads: 0
      * Always-running loops: 0
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

    IMPORTANT — this file still contains decompiler temporary names.
      Names like workValue12, textValue4, dataTable7, flag3, cmgCall2,
      arg1/arg2, or flow_label_* are NOT meaningful original developer names.
      A decompiler invented them while rebuilding source code.

      For a beginner, read the API call on the right-hand side first.
      Example:
        workValue = GetEntityCoords
        dataTable2 = workValue(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      I have deliberately NOT mass-renamed these reused temporary variables:
      doing that without full control-flow reconstruction can silently change
      behaviour. Comments/section labels below explain the code safely.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
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

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
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

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
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

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
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

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
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

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
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

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
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

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
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

-- === HELPER FUNCTION (decompiler name: textValue2; parameters: none) ===
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
