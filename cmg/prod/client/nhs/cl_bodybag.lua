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
