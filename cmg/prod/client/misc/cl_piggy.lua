--[[
    Whitelisted Pig / Rat Companion Commands
    ========================================

    /piggy
      Requires permission "piggy.whitelisted" and spawns pig model
      -1323586730.

    /rat
      Requires permission "rat.whitelisted" and spawns rat model
      -1011537562.

    The animal:
      * spawns about 1 metre in front of the player
      * is not spawned while the player is in a police vehicle
      * ignores normal ambient AI events
      * gets WEAPON_ANIMAL
      * has several flee attributes enabled
      * receives a friendly "Piggy" blip
      * follows the local player's ped

    The original two commands were almost identical, so this readable version
    uses one shared helper instead of duplicating ~150 lines twice.
]]

local ANIMAL_FLEE_ATTRIBUTES = {
    0,
    3,
    5,
    46
}


local function setFriendlyAnimalBlip(
    ped
)
    local blip =
        AddBlipForEntity(ped)

    SetBlipSprite(
        blip,
        526
    )

    SetBlipColour(
        blip,
        61
    )

    SetBlipScale(
        blip,
        1.0
    )

    BeginTextCommandSetBlipName(
        "STRING"
    )

    AddTextComponentSubstringPlayerName(
        "Piggy"
    )

    EndTextCommandSetBlipName(
        blip
    )

    SetBlipAsFriendly(
        blip,
        true
    )

    SetBlipBright(
        blip,
        true
    )
end


local function spawnCompanion(
    permission,
    modelHash,
    spawnTag
)
    if not CMG.hasClientPermission(
        permission
    ) then
        return
    end

    local playerPed =
        CMG.getPlayerPed()

    if IsPedInAnyPoliceVehicle(
        playerPed
    ) then
        return
    end

    modelHash =
        CMG.loadModel(
            modelHash
        )

    local spawnCoords =
        GetOffsetFromEntityInWorldCoords(
            playerPed,
            0.0,
            1.0,
            0.0
        )

    local heading =
        GetEntityHeading(
            playerPed
        )

    CMG.requestEntitySpawn(
        spawnTag,
        spawnCoords
    )

    local animalPed =
        CreatePed(
            28,
            modelHash,
            spawnCoords.x,
            spawnCoords.y,
            spawnCoords.z,
            heading,
            true,
            true
        )

    SetModelAsNoLongerNeeded(
        modelHash
    )

    Wait(2000)

    if not DoesEntityExist(
        animalPed
    ) then
        return
    end

    SetBlockingOfNonTemporaryEvents(
        animalPed,
        true
    )

    SetPedMoveRateOverride(
        animalPed,
        38.0
    )

    GiveWeaponToPed(
        animalPed,
        GetHashKey(
            "WEAPON_ANIMAL"
        ),
        200,
        true,
        true
    )

    for _, attribute
        in pairs(
            ANIMAL_FLEE_ATTRIBUTES
        ) do

        SetPedFleeAttributes(
            animalPed,
            attribute,
            true
        )
    end

    setFriendlyAnimalBlip(
        animalPed
    )

    TaskFollowToOffsetOfEntity(
        animalPed,
        CMG.getPlayerPed(),
        0.0,
        0.0,
        0.0,
        7.0,
        -1,
        10.0,
        true
    )
end


RegisterCommand(
    "piggy",
    function()
        spawnCompanion(
            "piggy.whitelisted",
            -1323586730,
            "pig_ped"
        )
    end,
    false
)


RegisterCommand(
    "rat",
    function()
        spawnCompanion(
            "rat.whitelisted",
            -1011537562,
            "rat_ped"
        )
    end,
    false
)
