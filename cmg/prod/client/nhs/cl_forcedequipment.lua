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

function CMG.removeForcedEquipment(typeName)
    CMG.removeHudTimer(typeName)
end

function CMG.isForcedEquipment(typeName)
    return CMG.isHudTimerActive(typeName)
end

function CMG.getForcedEquipmentRemaining(typeName)
    return CMG.getHudTimerRemainingSeconds(typeName)
end
