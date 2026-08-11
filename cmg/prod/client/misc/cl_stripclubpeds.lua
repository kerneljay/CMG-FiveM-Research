--[[
    LEVEL 1 BEGINNER GUIDE — Stripclubpeds
    ===========================================

    File: cmg/prod/client/misc/cl_stripclubpeds.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Stripclubpeds feature.

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
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: CMG:onClientSpawn
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
    Strip Club Ambient NPCs
    =======================

    These NPCs are only spawned while the local player is near the strip club.
    Leaving the 100-metre area deletes all of them again.

    Types:
      bartender = stands without a configured animation
      stripper  = loops a private-dance animation
      bouncer   = would loop the bouncer idle animation

    IMPORTANT DECOMPILE QUIRK:
      The three bouncer config rows in the original source say "boucer"
      (missing the N), but the animation lookup key is "bouncer".
      Therefore those three NPCs DO NOT receive the bouncer animation in the
      decompiled behaviour. The typo is preserved here deliberately.
]]

local pedDefinitions = {
    {
        type = "bartender",
        model = 2014052797,
        position =
            vector4(
                128.9,
                -1283.211,
                29.273,
                123.98
            )
    },

    {
        type = "stripper",
        model = 695248020,
        position =
            vector4(
                112.159,
                -1287.326,
                28.459,
                265.902
            )
    },

    {
        type = "stripper",
        model = 695248020,
        position =
            vector4(
                108.44,
                -1289.298,
                28.859,
                338.7
            )
    },

    {
        type = "stripper",
        model = 695248020,
        position =
            vector4(
                108.181,
                -1304.807,
                28.769,
                186.893
            )
    },

    {
        type = "stripper",
        model = 695248020,
        position =
            vector4(
                118.125,
                -1283.357,
                28.277,
                124.466
            )
    },

    {
        type = "boucer",
        model = -1613485779,
        position =
            vector4(
                130.328,
                -1298.409,
                29.233,
                211.486
            )
    },

    {
        type = "boucer",
        model = -1613485779,
        position =
            vector4(
                127.404,
                -1300.126,
                29.23,
                211.587
            )
    },

    {
        type = "boucer",
        model = -1613485779,
        position =
            vector4(
                111.088,
                -1304.371,
                29.02,
                296.699
            )
    }
}


local animationsByType = {
    stripper = {
        dict =
            "mini@strip_club@private_dance@part2",
        name =
            "priv_dance_p2"
    },

    bouncer = {
        dict =
            "mini@strip_club@idles@bouncer@base",
        name =
            "base"
    }
}


local activePeds = nil

local stripClubCentre =
    vector3(
        123.43956756592,
        -1288.5036621094,
        29.674297332764
    )


-- === HELPER FUNCTION: spawnStripClubPeds() ===
local function spawnStripClubPeds()
    activePeds = {}

    for _, definition
        in pairs(pedDefinitions) do

        CMG.loadModel(
            definition.model
        )

        local pos =
            definition.position

        local ped =
            CreatePed(
                5,
                definition.model,
                pos.x,
                pos.y,
                pos.z,
                pos.w,
                false,
                true
            )

        SetModelAsNoLongerNeeded(
            definition.model
        )

        SetBlockingOfNonTemporaryEvents(
            ped,
            true
        )

        SetPedDiesWhenInjured(
            ped,
            false
        )

        SetPedRelationshipGroupHash(
            ped,
            45677184
        )

        local animation =
            animationsByType[
                definition.type
            ]

        if animation then
            CMG.loadAnimDict(
                animation.dict
            )

            TaskPlayAnim(
                ped,
                animation.dict,
                animation.name,
                8.0,
                0.0,
                -1,
                1,
                0,
                false,
                false,
                false
            )

            RemoveAnimDict(
                animation.dict
            )
        end

        table.insert(
            activePeds,
            ped
        )
    end
end


-- === HELPER FUNCTION: deleteStripClubPeds() ===
local function deleteStripClubPeds()
    if not activePeds then
        return
    end

    for _, ped
        in pairs(activePeds) do

        DeleteEntity(ped)
    end

    activePeds = nil
end


AddEventHandler(
    "CMG:onClientSpawn",
    function(_, firstSpawn)
        if not firstSpawn then
            return
        end

        CMG.createArea(
            "stripclub",
            stripClubCentre,
            100.0,
            6,

            function()
                if not activePeds then
                    spawnStripClubPeds()
                end
            end,

            deleteStripClubPeds,

            nil,

            {}
        )
    end
)
