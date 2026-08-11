--[[
    LEVEL 1 BEGINNER GUIDE — Forcedequipment
    =============================================

    File: cmg/prod/client/nhs/cl_forcedequipment.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: health-service/medical gameplay, specifically the Forcedequipment feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 4
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_forcedequipment

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
--[[
    Forced Equipment HUD Timers
    ===========================

    "Forced equipment" in this client is represented by a HUD duration timer.

    addForcedEquipment(typeName, durationSeconds, callback)
      Starts a timer using the label/default duration from cfg_forcedequipment.

    removeForcedEquipment(typeName)
      Removes the timer.

    isForcedEquipment(typeName)
      Returns whether that timer is active.

    getForcedEquipmentRemaining(typeName)
      Returns its remaining duration in seconds.
]]

local forcedEquipmentConfig = CMG.loadModule("cfg/cfg_forcedequipment")

-- === HELPER FUNCTION: CMG.addForcedEquipment(typeName, durationSeconds, callback) ===
function CMG.addForcedEquipment(typeName, durationSeconds, callback)
    local equipmentType =
        forcedEquipmentConfig.types[typeName]
        or forcedEquipmentConfig.types[string.lower(typeName)]

    if not equipmentType then
        return
    end

    local label = equipmentType.label or typeName

    local duration
    if durationSeconds ~= nil then
        duration = math.max(0, durationSeconds)
    else
        duration = equipmentType.defaultDurationSeconds
    end

    CMG.addHudDurationTimer(
        typeName,
        label,
        duration,
        callback
    )
end

-- === HELPER FUNCTION: CMG.removeForcedEquipment(typeName) ===
function CMG.removeForcedEquipment(typeName)
    CMG.removeHudTimer(typeName)
end

-- === HELPER FUNCTION: CMG.isForcedEquipment(typeName) ===
function CMG.isForcedEquipment(typeName)
    return CMG.isHudTimerActive(typeName)
end

-- === HELPER FUNCTION: CMG.getForcedEquipmentRemaining(typeName) ===
function CMG.getForcedEquipmentRemaining(typeName)
    return CMG.getHudTimerRemainingSeconds(typeName)
end
