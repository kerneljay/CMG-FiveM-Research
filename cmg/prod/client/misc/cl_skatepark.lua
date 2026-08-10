--[[
    Free Skatepark Vehicles
    =======================

    Two interaction spots let players spawn a simple recreation vehicle:
      * BMX
      * Caddy

    Rules:
      * player must be on foot
      * there is a five-second spawn cooldown shared by both spots
      * the spawned vehicle is local-initialised and the player is placed into
        the driver seat

    Areas/markers are created after the player's first spawn.
]]

local lastSpawnAt = 0

local skateparks = {
    {
        position = vector3(
            -933.89794921875,
            -808.49810791016,
            15.908717155457
        ),
        carName = "BMX",
        carID = "bmx"
    },

    {
        position = vector3(
            1253.1735839844,
            4804.3740234375,
            -39.328578948975
        ),
        carName = "Caddy",
        carID = "caddy3"
    }
}


local function spawnSkateparkVehicle(
    skatepark
)
    local modelHash =
        CMG.loadModel(
            skatepark.carID
        )

    CMG.requestEntitySpawn(
        "skatepark",
        skatepark.carID
    )

    local vehicle =
        CreateVehicle(
            modelHash,
            skatepark.position.x,
            skatepark.position.y,
            skatepark.position.z
                + 0.5,
            0.0,
            true,
            false
        )

    CMG.initLocalVehicle(
        vehicle
    )

    SetVehicleOnGroundProperly(
        vehicle
    )

    SetEntityInvincible(
        vehicle,
        false
    )

    SetPedIntoVehicle(
        CMG.getPlayerPed(),
        vehicle,
        -1
    )

    SetModelAsNoLongerNeeded(
        modelHash
    )

    lastSpawnAt =
        GetGameTimer()
end


AddEventHandler(
    "CMG:onClientSpawn",
    function(_, firstSpawn)
        if not firstSpawn then
            return
        end

        for skateparkId, skatepark
            in pairs(skateparks) do

            CMG.createArea(
                "skatepark_"
                    .. skateparkId,
                skatepark.position,
                1.5,
                6,

                function(areaData)
                    local entry =
                        skateparks[
                            areaData.skateparkId
                        ]

                    PlaySound(
                        -1,
                        "Hit",
                        "RESPAWN_SOUNDSET",
                        false,
                        0,
                        true
                    )

                    drawNativeNotification(
                        "Press ~INPUT_PICKUP~ spawn a "
                        .. entry.carName
                    )
                end,

                function()
                end,

                function(areaData)
                    if not IsControlJustPressed(
                        1,
                        38
                    ) then
                        return
                    end

                    if CMG.getPlayerVehicle()
                        ~= 0 then
                        return
                    end

                    local entry =
                        skateparks[
                            areaData.skateparkId
                        ]

                    if GetGameTimer()
                        - lastSpawnAt
                        <= 5000 then

                        notify(
                            "~r~Please wait before taking out another "
                            .. entry.carName
                        )
                        return
                    end

                    spawnSkateparkVehicle(
                        entry
                    )
                end,

                {
                    skateparkId =
                        skateparkId
                }
            )

            tCMG.addMarker(
                skatepark.position.x,
                skatepark.position.y,
                skatepark.position.z,
                1.0,
                1.0,
                1.0,
                255,
                0,
                0,
                170,
                50,
                38,
                false,
                false,
                true
            )
        end
    end
)
