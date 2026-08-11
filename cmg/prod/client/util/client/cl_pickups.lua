--[[
    LEVEL 1 BEGINNER GUIDE — Pickups
    =====================================

    File: cmg/prod/client/util/client/cl_pickups.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: shared utility/framework helper code.

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
      * Background threads: 1
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: da2ac49b6a, ec08c37d63
      * NUI callbacks: none found by static scan
      * Modules/config loaded: none found by static scan

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
    Pickup Manager
    ==============

    CMG.createPickup(pickupHash, coords)
      Creates a GTA pickup and optional minimap blip.
      Returns a generated pickup key such as "pickup_abc1234".

    CMG.deletePickup(key)
      Removes the GTA pickup and its blip.

    CMG.clearAllPickups()
      Removes every managed pickup.

    The background thread checks whether pickups have been collected.

    Known pickup effects:
      armour -> server event da2ac49b6a
      health -> server event ec08c37d63
      vehicle_boost -> turbo/forward-speed effect for the current vehicle
]]

local activePickups = {}


local pickupBlipSettings = {
    [-599692201] = {
        blipId = 153,
        blipColour = 2
    },

    [-512277925] = {
        blipId = 175,
        blipColour = 3
    },

    [1709896882] = {
        blipId = 354,
        blipColour = 5
    }
}


local pickupTypes = {
    [-512277925] = "armour",
    [-599692201] = "health"
}


function CMG.createPickup(
    pickupHash,
    coords
)
    local pickupKey =
        "pickup_"
        .. CMG.generateUUID(
            "pickups",
            7,
            "alphanumeric"
        )

    local data = {
        pickupId =
            CreatePickupRotate(
                pickupHash,
                coords.x,
                coords.y,
                coords.z,
                0.0,
                0.0,
                0.0,
                512
            ),

        type =
            pickupTypes[pickupHash]
            or ""
    }

    activePickups[
        pickupKey
    ] = data

    local blipSettings =
        pickupBlipSettings[
            pickupHash
        ]

    if blipSettings then
        data.blip =
            tCMG.addBlip(
                coords.x,
                coords.y,
                coords.z,
                blipSettings.blipId,
                blipSettings.blipColour
            )
    end

    return pickupKey
end


function CMG.deletePickup(
    pickupKey
)
    local data =
        activePickups[
            pickupKey
        ]

    if not data then
        return
    end

    if data.pickupId
        and DoesPickupExist(
            data.pickupId
        ) then

        RemovePickup(
            data.pickupId
        )
    end

    if data.blip
        and DoesBlipExist(
            data.blip
        ) then

        tCMG.removeBlip(
            data.blip
        )
    end

    activePickups[
        pickupKey
    ] = nil
end


-- === HELPER FUNCTION: CMG.clearAllPickups() ===
function CMG.clearAllPickups()
    local keys = {}

    for pickupKey in pairs(
        activePickups
    ) do
        table.insert(
            keys,
            pickupKey
        )
    end

    for _, pickupKey in ipairs(keys) do
        CMG.deletePickup(
            pickupKey
        )
    end
end


-- === HELPER FUNCTION: applyVehicleBoost() ===
local function applyVehicleBoost()
    local vehicle =
        CMG.getPlayerVehicle()

    if vehicle == 0 then
        return
    end

    SetVehicleBoostActive(
        vehicle,
        true
    )

    local speed =
        GetEntitySpeed(
            vehicle
        )

    SetVehicleForwardSpeed(
        vehicle,
        speed + 30.0
    )

    AnimpostfxPlay(
        "RaceTurbo",
        0,
        false
    )

    SetTimeout(
        5000,
        function()
            AnimpostfxStop(
                "RaceTurbo"
            )

            SetVehicleBoostActive(
                vehicle,
                false
            )
        end
    )
end


-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    while true do
        for pickupKey, data
            in pairs(activePickups) do

            if HasPickupBeenCollected(
                data.pickupId
            ) then

                -- Save the type before deletePickup removes this entry.
                local pickupType =
                    data.type

                CMG.deletePickup(
                    pickupKey
                )

                if pickupType
                    == "vehicle_boost" then

                    applyVehicleBoost()

                elseif pickupType
                    == "armour" then

                    TriggerServerEvent(
                        "da2ac49b6a"
                    )

                elseif pickupType
                    == "health" then

                    TriggerServerEvent(
                        "ec08c37d63"
                    )
                end
            end
        end

        Wait(0)
    end
end)
