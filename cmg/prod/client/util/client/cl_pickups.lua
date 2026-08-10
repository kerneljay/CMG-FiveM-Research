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
