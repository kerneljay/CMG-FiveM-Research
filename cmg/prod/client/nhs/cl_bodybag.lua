--[[
    LEVEL 1 BEGINNER GUIDE — Bodybag
    =====================================

    File: cmg/prod/client/nhs/cl_bodybag.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: health-service/medical gameplay, specifically the Bodybag feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 0
      * Background threads: 0
      * Always-running loops: 0
      * Commands: bodybag
      * Incoming network events: b955e95f23, 443fd5f66a
      * Local event handlers: none found by static scan
      * Server events sent: a9ed481eb5, d4c90d6f7c
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
    NHS Body Bag
    ============

    /bodybag
      Finds the nearest player within 3 metres and asks the server to body-bag
      them. The server decides whether the action is valid.

    Event b955e95f23(networkId)
      Removes a body-bag object if this client owns/controls it.

    Event 443fd5f66a
      Hides the dead local player's ped, spawns a body-bag prop at their
      position, tells the server its network ID, waits until the player is
      alive again, then deletes the bag and makes the ped visible.
]]

RegisterCommand(
    "bodybag",
    function()
        local nearestPlayer =
            tCMG.getNearestPlayer(3)

        if nearestPlayer then
            TriggerServerEvent(
                "a9ed481eb5",
                nearestPlayer
            )
        else
            tCMG.notify(
                "No one dead nearby"
            )
        end
    end,
    false
)

RegisterNetEvent(
    "b955e95f23",
    function(networkId)
        local object =
            CMG.getObjectId(
                networkId,
                "bodybag_removeIfOwned"
            )

        if object
            and DoesEntityExist(object)
            and NetworkHasControlOfEntity(object) then

            DeleteEntity(object)
        end
    end
)

RegisterNetEvent(
    "443fd5f66a",
    function()
        local playerPed =
            CMG.getPlayerPed()

        local playerCoords =
            GetEntityCoords(playerPed)

        SetEntityVisible(
            playerPed,
            false,
            false
        )

        local modelHash =
            CMG.loadModel(
                -825556356
            )

        if not modelHash then
            return
        end

        CMG.requestEntitySpawn(
            "nhs_bodybag_object",
            playerCoords
        )

        local bodyBag =
            CreateObject(
                modelHash,
                playerCoords.x,
                playerCoords.y,
                playerCoords.z,
                true,
                true,
                true
            )

        PlaceObjectOnGroundProperly(
            bodyBag
        )

        SetModelAsNoLongerNeeded(
            modelHash
        )

        TriggerServerEvent(
            "d4c90d6f7c",
            ObjToNet(bodyBag)
        )

        -- 102 and below is the framework's dead/coma health range.
        while GetEntityHealth(
            CMG.getPlayerPed()
        ) <= 102 do
            Wait(0)
        end

        DeleteEntity(bodyBag)

        SetEntityVisible(
            playerPed,
            true,
            false
        )
    end
)
