--[[
    LEVEL 1 BEGINNER GUIDE — Wheelchair
    ========================================

    File: cmg/prod/client/nhs/cl_wheelchair.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: health-service/medical gameplay, specifically the Wheelchair feature.

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
      * Background threads: 2
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: 0b5b9ba4db, 05e4b09a9e
      * Local event handlers: none found by static scan
      * Server events sent: ce24d993d8, 607b2e0073, 895f60bda9
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_wheelchair, cfg/cfg_forcedequipment

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
    Forced Wheelchair
    =================

    Config:
      cfg/cfg_wheelchair
      cfg/cfg_forcedequipment

    Public helpers:
      CMG.spawnWheelchairVehicle(coords, heading)
      CMG.isWheelchairVehicle(vehicle)
      CMG.isForcedWheelchair()

    Server event 05e4b09a9e(durationSeconds, silent)
      Spawns a wheelchair at the player, seats them inside and applies the
      "wheelchair" forced-equipment timer.

      If durationSeconds is nil, the configured default duration is used.

      silent=false/nil shows:
        "A wheelchair has been provided for you..."

    Server event 0b5b9ba4db
      Removes the forced wheelchair immediately.

    While the wheelchair forced-equipment timer is active:
      * control 75 (leave vehicle) is disabled whenever the player is sitting
        in the wheelchair.

    When the forced-equipment timer expires, the callback removes the vehicle
    and sends the framework cleanup events.

    Hash-looking server events are deliberately unchanged.
]]

local wheelchairConfig =
    CMG.loadModule(
        "cfg/cfg_wheelchair"
    )

local forcedEquipmentConfig =
    CMG.loadModule(
        "cfg/cfg_forcedequipment"
    )

local DEFAULT_DURATION_SECONDS =
    forcedEquipmentConfig
        .types
        .wheelchair
        .defaultDurationSeconds

local wheelchairModelHash = nil
local activeWheelchair = nil


-- ============================================================
-- MODEL / VEHICLE HELPERS
-- ============================================================

-- === HELPER FUNCTION: getWheelchairModelHash() ===
local function getWheelchairModelHash()
    if not wheelchairModelHash then
        wheelchairModelHash =
            GetHashKey(
                wheelchairConfig.spawnName
            )
    end

    return wheelchairModelHash
end


function CMG.spawnWheelchairVehicle(
    coords,
    heading
)
    local modelHash =
        getWheelchairModelHash()

    if not modelHash then
        return 0
    end

    local vehicle =
        CMG.spawnVehicle(
            wheelchairConfig.spawnName,
            coords.x,
            coords.y,
            coords.z,
            heading or 0.0,
            false,
            true,
            true
        )

    if vehicle
        and vehicle ~= 0 then

        SetVehicleOnGroundProperly(
            vehicle
        )
    end

    return vehicle or 0
end


function CMG.isWheelchairVehicle(
    vehicle
)
    if not vehicle
        or vehicle == 0
        or not DoesEntityExist(
            vehicle
        ) then
        return false
    end

    local modelHash =
        getWheelchairModelHash()

    return
        modelHash ~= nil
        and GetEntityModel(vehicle)
            == modelHash
end


-- === HELPER FUNCTION: CMG.isForcedWheelchair() ===
function CMG.isForcedWheelchair()
    return
        CMG.isForcedEquipment
        and CMG.isForcedEquipment(
            "wheelchair"
        )
end


-- ============================================================
-- CLEANUP
-- ============================================================

-- === HELPER FUNCTION: notifyWheelchairNetworkId() ===
local function notifyWheelchairNetworkId()
    if not activeWheelchair
        or not DoesEntityExist(
            activeWheelchair
        ) then
        return
    end

    local networkId =
        NetworkGetNetworkIdFromEntity(
            activeWheelchair
        )

    if networkId
        and networkId ~= 0 then

        TriggerServerEvent(
            "ce24d993d8",
            "wheelchair",
            networkId
        )

        return
    end

    -- Network ID can appear one frame later after spawning.

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    CreateThread(function()
        Wait(100)

        if activeWheelchair
            and DoesEntityExist(
                activeWheelchair
            ) then

            local delayedNetworkId =
                NetworkGetNetworkIdFromEntity(
                    activeWheelchair
                )

            if delayedNetworkId
                and delayedNetworkId ~= 0 then

                TriggerServerEvent(
                    "ce24d993d8",
                    "wheelchair",
                    delayedNetworkId
                )
            end
        end
    end)
end


-- === HELPER FUNCTION: removeWheelchairVehicle() ===
local function removeWheelchairVehicle()
    if activeWheelchair
        and DoesEntityExist(
            activeWheelchair
        ) then

        local ped =
            CMG.getPlayerPed()

        if GetVehiclePedIsIn(
            ped,
            false
        ) == activeWheelchair then

            TaskLeaveVehicle(
                ped,
                activeWheelchair,
                16
            )
        end

        DeleteEntity(
            activeWheelchair
        )
    end

    activeWheelchair = nil

    TriggerServerEvent(
        "607b2e0073",
        "wheelchair"
    )

    TriggerServerEvent(
        "895f60bda9",
        "wheelchair"
    )
end


-- === HELPER FUNCTION: forcedWheelchairExpired() ===
local function forcedWheelchairExpired()
    removeWheelchairVehicle()
end


-- ============================================================
-- DISABLE EXIT WHILE FORCED
-- ============================================================

-- === HELPER FUNCTION: startForcedWheelchairControlThread() ===
local function startForcedWheelchairControlThread()

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    CreateThread(function()
        while CMG.isForcedEquipment
            and CMG.isForcedEquipment(
                "wheelchair"
            ) do

            local ped =
                CMG.getPlayerPed()

            local vehicle =
                GetVehiclePedIsIn(
                    ped,
                    false
                )

            if vehicle ~= 0
                and CMG.isWheelchairVehicle(
                    vehicle
                ) then

                DisableControlAction(
                    0,
                    75,
                    true
                )
            end

            Wait(0)
        end
    end)
end


-- ============================================================
-- SERVER REMOVE
-- ============================================================

RegisterNetEvent(
    "0b5b9ba4db",
    function()
        CMG.removeForcedEquipment(
            "wheelchair"
        )

        if activeWheelchair
            and DoesEntityExist(
                activeWheelchair
            ) then

            local ped =
                CMG.getPlayerPed()

            if ped ~= 0
                and GetVehiclePedIsIn(
                    ped,
                    false
                ) == activeWheelchair then

                TaskLeaveVehicle(
                    ped,
                    activeWheelchair,
                    16
                )
            end

            DeleteEntity(
                activeWheelchair
            )
        end

        activeWheelchair = nil

        TriggerServerEvent(
            "607b2e0073",
            "wheelchair"
        )
    end
)


-- ============================================================
-- SERVER PROVIDE
-- ============================================================

RegisterNetEvent(
    "05e4b09a9e",
    function(
        durationSeconds,
        silent
    )
        local ped =
            CMG.getPlayerPed()

        local coords =
            GetEntityCoords(ped)

        local heading =
            GetEntityHeading(ped)

        CMG.requestEntitySpawn(
            "wheelchair"
        )

        local vehicle =
            CMG.spawnWheelchairVehicle(
                coords,
                heading
            )

        if vehicle == 0 then
            notify(
                "~r~Failed to spawn wheelchair."
            )
            return
        end

        SetPedIntoVehicle(
            ped,
            vehicle,
            -1
        )

        activeWheelchair =
            vehicle

        notifyWheelchairNetworkId()

        local duration =
            durationSeconds
            or DEFAULT_DURATION_SECONDS

        CMG.addForcedEquipment(
            "wheelchair",
            duration,
            forcedWheelchairExpired
        )

        startForcedWheelchairControlThread()

        if not silent then
            notify(
                "~g~A wheelchair has been provided for you. You must use it for "
                .. tostring(
                    math.ceil(
                        duration / 60
                    )
                )
                .. " minutes."
            )
        end
    end
)
