--[[
    Loot Bag Objects
    ================

    This client keeps local GTA object entities for server-owned loot bags.

    Runtime table:
      lootBagEntities[bagId] = spawned GTA object

    Two decorators are registered here:
      ece3aa29cb -> integer bag/bucket/group identifier
      b1457c1a26 -> boolean special-bag flag

    Other decorator names used:
      5f7af1c5ce -> integer bag ID
      12da94aa7e -> optional extra integer value

    Important network events:
      28fa8ed339(bagId, coords, groupId)
        Spawns "prop_poly_bag_money".

      077a664824(bagId, coords, groupId, specialBag, extraValue)
        Spawns one of the larger loot-bag models.

      2121bcd4a4(bagId, coords)
        Freezes and moves an existing local bag.

      cf4c4c9104(bagId)
        Deletes a local bag.

      5f6842bee3(coords)
        Plays the local collection sound if within 15 metres.

      919aefda0c(groupId)
        Removes local bags whose ece3aa29cb decorator no longer matches the
        player's current group/routing state.

    Bags automatically request local cleanup after 10 minutes.

    CMG.isLootbagModel(modelHash)
      recognises two bag models.

    CMG.isLootbagOwnerVigilante(value)
      asks server callback e6e9c9337e.

    The unusual "fewer than 3 active players nearer to the bag than us" helper
    is preserved because the server uses it before updating bag coordinates.
]]

local lootBagEntities = {}

DecorRegister(
    "ece3aa29cb",
    3
)

DecorRegister(
    "b1457c1a26",
    2
)


-- ============================================================
-- AM I ONE OF THE CLOSEST PLAYERS TO THIS BAG?
-- ============================================================

local function shouldReportBagPosition(
    bagCoords
)
    local myDistance =
        #(
            CMG.getPlayerCoords().xy
            - bagCoords.xy
        )

    if myDistance > 100.0 then
        return false
    end

    local closerPlayers = 0

    for _, playerIndex
        in pairs(
            GetActivePlayers()
        ) do

        local ped =
            GetPlayerPed(
                playerIndex
            )

        if ped ~= 0 then
            local playerDistance =
                #(
                    GetEntityCoords(
                        ped,
                        true
                    ).xy
                    - bagCoords.xy
                )

            if myDistance
                > playerDistance then

                closerPlayers =
                    closerPlayers + 1
            end
        end
    end

    return
        closerPlayers < 3
end


-- ============================================================
-- COMMON BAG SETUP
-- ============================================================

local function registerBagEntity(
    bagId,
    entity,
    modelHash
)
    SetModelAsNoLongerNeeded(
        modelHash
    )

    lootBagEntities[bagId] =
        entity

    SetTimeout(
        600000,
        function()
            TriggerEvent(
                "cf4c4c9104",
                bagId
            )
        end
    )
end


-- ============================================================
-- SIMPLE MONEY BAG
-- ============================================================

RegisterNetEvent(
    "28fa8ed339",
    function(
        bagId,
        coords,
        groupId
    )
        local modelHash =
            CMG.loadModel(
                "prop_poly_bag_money"
            )

        local entity =
            CreateObject(
                modelHash,
                coords.x,
                coords.y,
                coords.z,
                false,
                true,
                true
            )

        DecorSetInt(
            entity,
            "5f7af1c5ce",
            bagId
        )

        DecorSetInt(
            entity,
            "ece3aa29cb",
            groupId
        )

        PlaceObjectOnGroundProperly(
            entity
        )

        registerBagEntity(
            bagId,
            entity,
            modelHash
        )
    end
)


-- ============================================================
-- LARGE / SPECIAL LOOT BAG
-- ============================================================

RegisterNetEvent(
    "077a664824",
    function(
        bagId,
        coords,
        groupId,
        specialBag,
        extraValue
    )
        local modelName =
            specialBag
            and "ch_prop_ch_bag_01a"
            or "xs_prop_arena_bag_01"

        local modelHash =
            CMG.loadModel(
                modelName
            )

        local entity =
            CreateObject(
                modelHash,
                coords.x,
                coords.y,
                coords.z,
                false,
                true,
                true
            )

        DecorSetInt(
            entity,
            "5f7af1c5ce",
            bagId
        )

        DecorSetInt(
            entity,
            "ece3aa29cb",
            groupId
        )

        if extraValue then
            DecorSetInt(
                entity,
                "12da94aa7e",
                extraValue
            )
        end

        if specialBag ~= nil then
            DecorSetBool(
                entity,
                "b1457c1a26",
                true
            )
        end

        PlaceObjectOnGroundProperly(
            entity
        )

        SetObjectPhysicsParams(
            entity,
            10,
            0,
            0,
            0,
            0,
            9.5,
            0,
            0,
            0,
            0,
            75.0
        )

        registerBagEntity(
            bagId,
            entity,
            modelHash
        )

        -- After the bag has settled for a few seconds, one of the closest
        -- clients reports its actual world position to the server.
        SetTimeout(
            8000,
            function()
                if DoesEntityExist(entity)
                    and shouldReportBagPosition(
                        coords
                    ) then

                    TriggerServerEvent(
                        "6b115956c4",
                        bagId,
                        GetEntityCoords(
                            entity,
                            true
                        )
                    )
                end
            end
        )
    end
)


-- ============================================================
-- MOVE / FREEZE EXISTING BAG
-- ============================================================

RegisterNetEvent(
    "2121bcd4a4",
    function(bagId, coords)
        local entity =
            lootBagEntities[
                bagId
            ]

        if not entity then
            return
        end

        FreezeEntityPosition(
            entity,
            true
        )

        SetEntityCoordsNoOffset(
            entity,
            coords.x,
            coords.y,
            coords.z,
            true,
            false,
            false
        )
    end
)


-- ============================================================
-- MODEL / OWNER HELPERS
-- ============================================================

local lootBagModels = {
    [-1712051648] = true,
    [577194190] = true
}


function CMG.isLootbagModel(
    modelHash
)
    return
        lootBagModels[
            modelHash
        ] == true
end


function CMG.isLootbagOwnerVigilante(
    value
)
    return
        CMG.TriggerServerCallback(
            "e6e9c9337e",
            value
        )
end


-- ============================================================
-- DELETE ONE BAG
-- ============================================================

RegisterNetEvent(
    "cf4c4c9104",
    function(bagId)
        local entity =
            lootBagEntities[
                bagId
            ]

        if entity
            and DoesEntityExist(
                entity
            ) then

            DeleteEntity(entity)

            lootBagEntities[
                bagId
            ] = nil
        end
    end
)


-- ============================================================
-- COLLECTION SOUND
-- ============================================================

RegisterNetEvent(
    "5f6842bee3",
    function(coords)
        if #(
            GetEntityCoords(
                GetPlayerPed(-1)
            )
            - coords
        ) > 15.0 then
            return
        end

        local soundId =
            GetSoundId()

        PlaySoundFrontend(
            soundId,
            "Object_Collect_Player",
            "GTAO_FM_Events_Soundset",
            true
        )

        ReleaseSoundId(
            soundId
        )
    end
)


-- ============================================================
-- GROUP / ROUTING STATE CHANGED
-- ============================================================

AddEventHandler(
    "919aefda0c",
    function(groupId)
        for bagId, entity
            in pairs(
                lootBagEntities
            ) do

            local bagGroupId =
                DecorGetInt(
                    entity,
                    "ece3aa29cb"
                )

            if bagGroupId
                ~= groupId then

                DeleteEntity(entity)

                lootBagEntities[
                    bagId
                ] = nil
            end
        end
    end
)


-- ============================================================
-- RESOURCE CLEANUP
-- ============================================================

AddEventHandler(
    "onResourceStop",
    function(resourceName)
        if resourceName
            ~= GetCurrentResourceName() then
            return
        end

        for _, entity
            in pairs(
                lootBagEntities
            ) do

            DeleteObject(entity)
        end
    end
)
