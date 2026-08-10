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


local function forcedWheelchairExpired()
    removeWheelchairVehicle()
end


-- ============================================================
-- DISABLE EXIT WHILE FORCED
-- ============================================================

local function startForcedWheelchairControlThread()
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
