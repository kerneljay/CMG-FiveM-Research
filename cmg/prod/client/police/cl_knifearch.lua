--[[
    Police Knife Arch / Metal Detector
    ==================================

    Commands are registered elsewhere/server-side, but this client exposes the
    supporting network events.

    Setup event 3167b12587:
      * spawns arch model 1548832211 at the player's position
      * freezes it and faces it the same way as the player
      * waits up to 5 seconds for a valid network ID
      * tells the server its position + network ID

    Remove event f1a982d264:
      * finds a configured arch within 5 metres
      * tells the server which network ID is being removed
      * hides/deletes the local object

    Trigger event e4b1cfaa9e(coords):
      * if the local player is within 20 metres, plays the knife-arch NUI sound

    Server synchronisation:
      84acbce207(table)          -> replace all known arches
      59118ecc97(coords, netId)  -> add/update one arch
      3eb79decde(netId)          -> remove one arch

    A 350ms background scan checks whether the player is within 1.6m of a known
    arch. If they carry more weapons than the script's allowed baseline, the
    server gets e8ecf4fc28. Otherwise 20711efe1d is rate-limited to once every
    five seconds.

    Hash-looking event names are deliberately unchanged.
]]

TriggerEvent(
    "chat:addSuggestion",
    "/setuparch",
    "Setup a knife arch"
)

TriggerEvent(
    "chat:addSuggestion",
    "/removearch",
    "Remove a knife arch"
)


-- knownArches[networkId] = {coords, networkId}
local knownArches = {}
local hasKnownArches = false

local ARCH_MODEL_HASH = 1548832211


-- ============================================================
-- SETUP
-- ============================================================

RegisterNetEvent(
    "3167b12587",
    function()
        local modelHash =
            CMG.loadModel(
                ARCH_MODEL_HASH
            )

        local ped =
            CMG.getPlayerPed()

        local coords =
            CMG.getPlayerCoords()

        CMG.requestEntitySpawn(
            "knife_arch"
        )

        local arch =
            CreateObject(
                modelHash,
                coords.x,
                coords.y,
                coords.z - 1.0,
                true,
                true,
                true
            )

        PlaceObjectOnGroundProperly(
            arch
        )

        FreezeEntityPosition(
            arch,
            true
        )

        SetEntityHeading(
            arch,
            GetEntityHeading(ped)
        )

        SetModelAsNoLongerNeeded(
            modelHash
        )

        local startedAt =
            GetGameTimer()

        while true do
            if GetGameTimer()
                - startedAt
                > 5000 then

                DeleteEntity(arch)
                return
            end

            if NetworkGetEntityIsNetworked(
                arch
            ) then

                local networkId =
                    NetworkGetNetworkIdFromEntity(
                        arch
                    )

                if networkId ~= 0 then
                    tCMG.notify(
                        "~g~Success! ~w~Knife Arch setup."
                    )

                    TriggerServerEvent(
                        "409cde8b69",
                        coords,
                        networkId
                    )

                    return
                end
            end

            Citizen.Wait(200)
        end
    end
)


-- ============================================================
-- REMOVE NEAREST
-- ============================================================

RegisterNetEvent(
    "f1a982d264",
    function()
        local playerCoords =
            CMG.getPlayerCoords()

        for _, archData
            in pairs(knownArches) do

            local coords =
                archData[1]

            local networkId =
                archData[2]

            if #(
                coords
                - playerCoords
            ) <= 5.0 then

                local arch =
                    CMG.getObjectId(
                        networkId,
                        "deleteArch"
                    )

                if arch then
                    TriggerServerEvent(
                        "0817bcb014",
                        networkId
                    )

                    SetEntityVisible(
                        arch,
                        false,
                        false
                    )

                    DeleteEntity(arch)

                    tCMG.notify(
                        "~g~Success! ~w~Knife Arch removed."
                    )
                end

                break
            end
        end
    end
)


-- ============================================================
-- LOCAL DETECTOR SOUND
-- ============================================================

RegisterNetEvent(
    "e4b1cfaa9e",
    function(coords)
        if #(
            CMG.getPlayerCoords()
            - coords
        ) <= 20.0 then

            SendNUIMessage({
                transactionType =
                    "knifeArch"
            })
        end
    end
)


-- ============================================================
-- SERVER ARCH LIST
-- ============================================================

RegisterNetEvent(
    "84acbce207",
    function(serverArches)
        knownArches =
            serverArches or {}

        hasKnownArches =
            true
    end
)


RegisterNetEvent(
    "59118ecc97",
    function(coords, networkId)
        knownArches[
            networkId
        ] = {
            coords,
            networkId
        }

        if table.count(
            knownArches
        ) > 0 then
            hasKnownArches = true
        end
    end
)


RegisterNetEvent(
    "3eb79decde",
    function(networkId)
        knownArches[
            networkId
        ] = nil

        if table.count(
            knownArches
        ) < 1 then
            hasKnownArches = false
        end
    end
)


-- ============================================================
-- WALK-THROUGH DETECTION
-- ============================================================

local lastEmptyScanAt = 0


CreateThread(function()
    while true do
        if hasKnownArches then
            local playerCoords =
                CMG.getPlayerCoords()

            for _, archData
                in pairs(knownArches) do

                local archCoords =
                    archData[1]

                if #(
                    archCoords
                    - playerCoords
                ) <= 1.6 then

                    -- Reserve parachute weapon is treated as one allowed
                    -- weapon in the original baseline.
                    local allowedWeaponCount = 0

                    if HasPedGotWeapon(
                        PlayerPedId(),
                        -72657034,
                        false
                    ) then
                        allowedWeaponCount = 1
                    end

                    local actualWeaponCount =
                        table.count(
                            CMG.getWeapons()
                        )

                    if actualWeaponCount
                        > allowedWeaponCount then

                        TriggerServerEvent(
                            "e8ecf4fc28",
                            playerCoords
                        )

                        Wait(3000)
                        break
                    end

                    local now =
                        GetGameTimer()

                    if now
                        - lastEmptyScanAt
                        > 5000 then

                        TriggerServerEvent(
                            "20711efe1d",
                            playerCoords
                        )

                        lastEmptyScanAt = now
                    end
                end
            end
        end

        Wait(350)
    end
end)


-- Ask the server for existing arch state after this client starts.
TriggerServerEvent(
    "b6d9f40b37",
    knownArches
)
