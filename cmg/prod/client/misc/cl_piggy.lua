--[[
    LEVEL 1 BEGINNER GUIDE — Piggy
    ===================================

    File: cmg/prod/client/misc/cl_piggy.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Piggy feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 2
      * Background threads: 0
      * Always-running loops: 0
      * Commands: piggy, rat
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
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
