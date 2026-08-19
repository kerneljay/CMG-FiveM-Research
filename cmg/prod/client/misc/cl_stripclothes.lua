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
local localEventCall, text, text2, text4
localEventCall = TriggerEvent
text = "chat:addSuggestion"
text2 = "/takeoffmask"
text4 = "Take off your mask"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
localEventCall(text, text2, text4)
localEventCall = TriggerEvent
text = "chat:addSuggestion"
text2 = "/takeoffhat"
text4 = "Take off your hat"
localEventCall(text, text2, text4)
localEventCall = TriggerEvent
text = "chat:addSuggestion"
text2 = "/takeoffjacket"
text4 = "Take off your jacket"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
localEventCall(text, text2, text4)
localEventCall = TriggerEvent
text = "chat:addSuggestion"
text2 = "/takeofftie"
text4 = "Take off your tie"
localEventCall(text, text2, text4)
localEventCall = TriggerEvent
text = "chat:addSuggestion"
text2 = "/takeoffbracelet"
text4 = "Take off your bracelet"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
localEventCall(text, text2, text4)
localEventCall = TriggerEvent
text = "chat:addSuggestion"
text2 = "/takeoffglasses"
text4 = "Take off your glasses"
localEventCall(text, text2, text4)
localEventCall = TriggerEvent
text = "chat:addSuggestion"
text2 = "/takeofftrousers"
text4 = "Take off your trousers"
-- Beginner: Trigger another client-side event in this resource/framework. Event/command: "chat:addSuggestion".
localEventCall(text, text2, text4)
localEventCall = TriggerEvent
text = "chat:addSuggestion"
text2 = "/takeoffshoes"
text4 = "Take off your shoes"
localEventCall(text, text2, text4)
localEventCall = RegisterCommand
text = "takeoffmask"
-- Beginner: this function is the command handler for "takeoffmask".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local cmgOperation, cmgOperation2, text3, stateFlag4, text5, number, number2, number3, number4, number5, stateFlag, stateFlag2, stateFlag3
  cmgOperation = CMG
  cmgOperation = cmgOperation.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation = cmgOperation()
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.loadAnimDict
  text3 = "veh@bike@common@front@base"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgOperation2(text3)
  cmgOperation2 = TaskPlayAnim
  text3 = cmgOperation
  stateFlag4 = "veh@bike@common@front@base"
  text5 = "take_off_helmet_walk"
  number = 5.0
  number2 = 5.0
  number3 = -1
  number4 = 48
  number5 = 0
  stateFlag = false
  stateFlag2 = false
  stateFlag3 = false
  -- Beginner: Play an animation on a ped.
  cmgOperation2(text3, stateFlag4, text5, number, number2, number3, number4, number5, stateFlag, stateFlag2, stateFlag3)
  cmgOperation2 = RemoveAnimDict
  text3 = "veh@bike@common@front@base"
  cmgOperation2(text3)
  cmgOperation2 = Citizen
  cmgOperation2 = cmgOperation2.Wait
  text3 = 700
  cmgOperation2(text3)
  cmgOperation2 = SetPedComponentVariation
  text3 = cmgOperation
  stateFlag4 = 1
  text5 = 0
  number = 0
  number2 = 1
  cmgOperation2(text3, stateFlag4, text5, number, number2)
  cmgOperation2 = IsPedWearingHelmet
  text3 = cmgOperation
  cmgOperation2 = cmgOperation2(text3)
  if cmgOperation2 then
    cmgOperation2 = RemovePedHelmet
    text3 = cmgOperation
    stateFlag4 = true
    cmgOperation2(text3, stateFlag4)
  end
end
text4 = false
-- Beginner: Register a chat/console command. Event/command: "takeoffmask".
localEventCall(text, text2, text4)
localEventCall = RegisterCommand
text = "takeoffhat"
-- Beginner: this function is the command handler for "takeoffhat".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local cmgOperation, cmgOperation2, text3, stateFlag4, text5, number, number2, number3, number4, number5, stateFlag, stateFlag2, stateFlag3
  cmgOperation = CMG
  cmgOperation = cmgOperation.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation = cmgOperation()
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.loadAnimDict
  text3 = "veh@bike@common@front@base"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgOperation2(text3)
  cmgOperation2 = TaskPlayAnim
  text3 = cmgOperation
  stateFlag4 = "veh@bike@common@front@base"
  text5 = "take_off_helmet_walk"
  number = 5.0
  number2 = 5.0
  number3 = -1
  number4 = 48
  number5 = 0
  stateFlag = false
  stateFlag2 = false
  stateFlag3 = false
  -- Beginner: Play an animation on a ped.
  cmgOperation2(text3, stateFlag4, text5, number, number2, number3, number4, number5, stateFlag, stateFlag2, stateFlag3)
  cmgOperation2 = RemoveAnimDict
  text3 = "veh@bike@common@front@base"
  cmgOperation2(text3)
  cmgOperation2 = Citizen
  cmgOperation2 = cmgOperation2.Wait
  text3 = 700
  cmgOperation2(text3)
  cmgOperation2 = ClearPedProp
  text3 = cmgOperation
  stateFlag4 = 0
  cmgOperation2(text3, stateFlag4)
  cmgOperation2 = IsPedWearingHelmet
  text3 = cmgOperation
  cmgOperation2 = cmgOperation2(text3)
  if cmgOperation2 then
    cmgOperation2 = RemovePedHelmet
    text3 = cmgOperation
    stateFlag4 = true
    cmgOperation2(text3, stateFlag4)
  end
end
text4 = false
-- Beginner: Register a chat/console command. Event/command: "takeoffhat".
localEventCall(text, text2, text4)
localEventCall = RegisterCommand
text = "takeoffjacket"
-- Beginner: this function is the command handler for "takeoffjacket".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local cmgOperation, cmgOperation2, text3, stateFlag4, text5, number, number2, number3, number4, number5, stateFlag, stateFlag2, stateFlag3
  cmgOperation = CMG
  cmgOperation = cmgOperation.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation = cmgOperation()
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.loadAnimDict
  text3 = "clothingtie"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgOperation2(text3)
  cmgOperation2 = TaskPlayAnim
  text3 = cmgOperation
  stateFlag4 = "clothingtie"
  text5 = "try_tie_positive_a"
  number = 5.0
  number2 = 5.0
  number3 = -1
  number4 = 48
  number5 = 0
  stateFlag = false
  stateFlag2 = false
  stateFlag3 = false
  -- Beginner: Play an animation on a ped.
  cmgOperation2(text3, stateFlag4, text5, number, number2, number3, number4, number5, stateFlag, stateFlag2, stateFlag3)
  cmgOperation2 = RemoveAnimDict
  text3 = "clothingtie"
  cmgOperation2(text3)
  cmgOperation2 = Citizen
  cmgOperation2 = cmgOperation2.Wait
  text3 = 3000
  cmgOperation2(text3)
  cmgOperation2 = SetPedComponentVariation
  text3 = cmgOperation
  stateFlag4 = 3
  text5 = 15
  number = 0
  number2 = 0
  cmgOperation2(text3, stateFlag4, text5, number, number2)
  cmgOperation2 = SetPedComponentVariation
  text3 = cmgOperation
  stateFlag4 = 8
  text5 = 0
  number = 240
  number2 = 0
  cmgOperation2(text3, stateFlag4, text5, number, number2)
  cmgOperation2 = GetEntityModel
  text3 = cmgOperation
  -- Beginner: result below is modelHash.
  cmgOperation2 = cmgOperation2(text3)
  if -1667301416 == cmgOperation2 then
    cmgOperation2 = SetPedComponentVariation
    text3 = cmgOperation
    stateFlag4 = 11
    text5 = 18
    number = 0
    number2 = 0
    cmgOperation2(text3, stateFlag4, text5, number, number2)
  else
    cmgOperation2 = SetPedComponentVariation
    text3 = cmgOperation
    stateFlag4 = 11
    text5 = 0
    number = 240
    number2 = 0
    cmgOperation2(text3, stateFlag4, text5, number, number2)
  end
end
text4 = false
-- Beginner: Register a chat/console command. Event/command: "takeoffjacket".
localEventCall(text, text2, text4)
localEventCall = RegisterCommand
text = "takeofftie"
-- Beginner: this function is the command handler for "takeofftie".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local cmgOperation, cmgOperation2, text3, stateFlag4, text5, number, number2, number3, number4, number5, stateFlag, stateFlag2, stateFlag3
  cmgOperation = CMG
  cmgOperation = cmgOperation.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation = cmgOperation()
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.loadAnimDict
  text3 = "clothingtie"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgOperation2(text3)
  cmgOperation2 = TaskPlayAnim
  text3 = cmgOperation
  stateFlag4 = "clothingtie"
  text5 = "try_tie_neutral_b"
  number = 5.0
  number2 = 5.0
  number3 = -1
  number4 = 48
  number5 = 0
  stateFlag = false
  stateFlag2 = false
  stateFlag3 = false
  -- Beginner: Play an animation on a ped.
  cmgOperation2(text3, stateFlag4, text5, number, number2, number3, number4, number5, stateFlag, stateFlag2, stateFlag3)
  cmgOperation2 = RemoveAnimDict
  text3 = "clothingtie"
  cmgOperation2(text3)
  cmgOperation2 = Citizen
  cmgOperation2 = cmgOperation2.Wait
  text3 = 1200
  cmgOperation2(text3)
  cmgOperation2 = SetPedComponentVariation
  text3 = cmgOperation
  stateFlag4 = 7
  text5 = 0
  number = 240
  number2 = 0
  cmgOperation2(text3, stateFlag4, text5, number, number2)
end
text4 = false
-- Beginner: Register a chat/console command. Event/command: "takeofftie".
localEventCall(text, text2, text4)
localEventCall = RegisterCommand
text = "takeoffbracelet"
-- Beginner: this function is the command handler for "takeoffbracelet".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local cmgOperation, cmgOperation2, text3, stateFlag4
  cmgOperation = CMG
  cmgOperation = cmgOperation.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation = cmgOperation()
  cmgOperation2 = ClearPedProp
  text3 = cmgOperation
  stateFlag4 = 6
  cmgOperation2(text3, stateFlag4)
  cmgOperation2 = ClearPedProp
  text3 = cmgOperation
  stateFlag4 = 7
  cmgOperation2(text3, stateFlag4)
end
text4 = false
-- Beginner: Register a chat/console command. Event/command: "takeoffbracelet".
localEventCall(text, text2, text4)
localEventCall = RegisterCommand
text = "takeoffglasses"
-- Beginner: this function is the command handler for "takeoffglasses".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local cmgOperation, cmgOperation2, text3, stateFlag4, text5, number, number2, number3, number4, number5, stateFlag, stateFlag2, stateFlag3
  cmgOperation = CMG
  cmgOperation = cmgOperation.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation = cmgOperation()
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.loadAnimDict
  text3 = "clothingspecs"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgOperation2(text3)
  cmgOperation2 = TaskPlayAnim
  text3 = cmgOperation
  stateFlag4 = "clothingspecs"
  text5 = "try_glasses_positive_a"
  number = 5.0
  number2 = 5.0
  number3 = -1
  number4 = 48
  number5 = 0
  stateFlag = false
  stateFlag2 = false
  stateFlag3 = false
  -- Beginner: Play an animation on a ped.
  cmgOperation2(text3, stateFlag4, text5, number, number2, number3, number4, number5, stateFlag, stateFlag2, stateFlag3)
  cmgOperation2 = RemoveAnimDict
  text3 = "clothingspecs"
  cmgOperation2(text3)
  cmgOperation2 = Citizen
  cmgOperation2 = cmgOperation2.Wait
  text3 = 1800
  cmgOperation2(text3)
  cmgOperation2 = ClearPedProp
  text3 = cmgOperation
  stateFlag4 = 1
  cmgOperation2(text3, stateFlag4)
  cmgOperation2 = Citizen
  cmgOperation2 = cmgOperation2.Wait
  text3 = 800
  cmgOperation2(text3)
  cmgOperation2 = ClearPedSecondaryTask
  text3 = cmgOperation
  cmgOperation2(text3)
end
text4 = false
-- Beginner: Register a chat/console command. Event/command: "takeoffglasses".
localEventCall(text, text2, text4)
localEventCall = RegisterCommand
text = "takeofftrousers"
-- Beginner: this function is the command handler for "takeofftrousers".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local cmgOperation, cmgOperation2, text3, stateFlag4, text5, number, number2, number3, number4, number5, stateFlag, stateFlag2, stateFlag3
  cmgOperation = CMG
  cmgOperation = cmgOperation.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation = cmgOperation()
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.loadAnimDict
  text3 = "clothingshoes"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgOperation2(text3)
  cmgOperation2 = TaskPlayAnim
  text3 = cmgOperation
  stateFlag4 = "clothingshoes"
  text5 = "try_shoes_positive_d"
  number = 5.0
  number2 = 5.0
  number3 = -1
  number4 = 48
  number5 = 0
  stateFlag = false
  stateFlag2 = false
  stateFlag3 = false
  -- Beginner: Play an animation on a ped.
  cmgOperation2(text3, stateFlag4, text5, number, number2, number3, number4, number5, stateFlag, stateFlag2, stateFlag3)
  cmgOperation2 = RemoveAnimDict
  text3 = "clothingshoes"
  cmgOperation2(text3)
  cmgOperation2 = Citizen
  cmgOperation2 = cmgOperation2.Wait
  text3 = 1800
  cmgOperation2(text3)
  cmgOperation2 = GetEntityModel
  text3 = cmgOperation
  -- Beginner: result below is modelHash.
  cmgOperation2 = cmgOperation2(text3)
  if -1667301416 == cmgOperation2 then
    cmgOperation2 = SetPedComponentVariation
    text3 = cmgOperation
    stateFlag4 = 4
    text5 = 14
    number = 0
    number2 = 2
    cmgOperation2(text3, stateFlag4, text5, number, number2)
  else
    cmgOperation2 = SetPedComponentVariation
    text3 = cmgOperation
    stateFlag4 = 4
    text5 = 14
    number = 0
    number2 = 2
    cmgOperation2(text3, stateFlag4, text5, number, number2)
  end
  cmgOperation2 = Citizen
  cmgOperation2 = cmgOperation2.Wait
  text3 = 800
  cmgOperation2(text3)
  cmgOperation2 = ClearPedSecondaryTask
  text3 = cmgOperation
  cmgOperation2(text3)
end
text4 = false
-- Beginner: Register a chat/console command. Event/command: "takeofftrousers".
localEventCall(text, text2, text4)
localEventCall = RegisterCommand
text = "takeoffshoes"
-- Beginner: this function is the command handler for "takeoffshoes".

-- === HELPER FUNCTION (decompiler name: text2; parameters: none) ===
function text2()
  local cmgOperation, cmgOperation2, text3, stateFlag4, text5, number, number2, number3, number4, number5, stateFlag, stateFlag2, stateFlag3
  cmgOperation = CMG
  cmgOperation = cmgOperation.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  cmgOperation = cmgOperation()
  cmgOperation2 = CMG
  cmgOperation2 = cmgOperation2.loadAnimDict
  text3 = "clothingshoes"
  -- Beginner: Load a GTA animation dictionary before using it.
  cmgOperation2(text3)
  cmgOperation2 = TaskPlayAnim
  text3 = cmgOperation
  stateFlag4 = "clothingshoes"
  text5 = "try_shoes_positive_d"
  number = 5.0
  number2 = 5.0
  number3 = -1
  number4 = 48
  number5 = 0
  stateFlag = false
  stateFlag2 = false
  stateFlag3 = false
  -- Beginner: Play an animation on a ped.
  cmgOperation2(text3, stateFlag4, text5, number, number2, number3, number4, number5, stateFlag, stateFlag2, stateFlag3)
  cmgOperation2 = RemoveAnimDict
  text3 = "clothingshoes"
  cmgOperation2(text3)
  cmgOperation2 = Citizen
  cmgOperation2 = cmgOperation2.Wait
  text3 = 1800
  cmgOperation2(text3)
  cmgOperation2 = GetEntityModel
  text3 = cmgOperation
  -- Beginner: result below is modelHash.
  cmgOperation2 = cmgOperation2(text3)
  if -1667301416 == cmgOperation2 then
    cmgOperation2 = SetPedComponentVariation
    text3 = cmgOperation
    stateFlag4 = 6
    text5 = 35
    number = 0
    number2 = 2
    cmgOperation2(text3, stateFlag4, text5, number, number2)
  else
    cmgOperation2 = SetPedComponentVariation
    text3 = cmgOperation
    stateFlag4 = 6
    text5 = 34
    number = 0
    number2 = 2
    cmgOperation2(text3, stateFlag4, text5, number, number2)
  end
  cmgOperation2 = Citizen
  cmgOperation2 = cmgOperation2.Wait
  text3 = 800
  cmgOperation2(text3)
  cmgOperation2 = ClearPedSecondaryTask
  text3 = cmgOperation
  cmgOperation2(text3)
end
text4 = false
-- Beginner: Register a chat/console command. Event/command: "takeoffshoes".
localEventCall(text, text2, text4)
