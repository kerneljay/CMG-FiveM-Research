--[[
    Piggyback System
    ================

    /piggyback
      Requests to piggyback the closest player within 3 metres.

    Normal flow:
      1. You run /piggyback.
      2. Server asks the target using event 109bbe09c8.
      3. Target presses Y to accept or L to refuse.
      4. Server sends animation/attachment events to both players.
      5. Running /piggyback again stops it.

    Restrictions:
      * cannot start in prison
      * cannot start while in a vehicle
      * cannot start while dead/coma (health <= 102)
      * cannot start inside the Diamond Casino
      * while active, trying to enter a vehicle automatically stops piggyback

    Public helper:
      CMG.isPiggyBackActive()

    Animation events:
      c3a48ab060(...) -> this client becomes the attached/passenger player
      df18a9b49e(...) -> this client plays the carrier animation
      a238ed7b34      -> stop/clear piggyback locally

    Hash-looking event names are deliberately unchanged.
]]

local piggybackActive = false

local activeAnimName = ""
local activeAnimDict = ""
local activeAnimFlag = 0

local requestPending = false

local otherPlayerServerId = 0


function CMG.isPiggyBackActive()
    return piggybackActive
end


-- ============================================================
-- COMMAND
-- ============================================================

RegisterCommand(
    "piggyback",
    function()
        if CMG.isPlayerNearPrison() then
            tCMG.notify(
                "~r~You cannot do this in prison."
            )
            return
        end

        local ped =
            CMG.getPlayerPed()

        if IsPedInAnyVehicle(
            ped,
            false
        ) then
            drawNativeNotification(
                "Can't piggy back someone whilst your in a vehicle"
            )
            return
        end

        if GetEntityHealth(ped)
            <= 102 then
            return
        end

        if CMG.isInsideDiamondCasino() then
            return
        end

        -- ----------------------------------------------------
        -- START
        -- ----------------------------------------------------

        if not piggybackActive then
            local closestPlayer =
                GetClosestPlayer(3)

            if closestPlayer
                and closestPlayer ~= -1 then

                otherPlayerServerId =
                    GetPlayerServerId(
                        closestPlayer
                    )

                TriggerServerEvent(
                    "ec6a9d5fc5",
                    otherPlayerServerId
                )
            else
                drawNativeNotification(
                    "No one nearby to piggyback!"
                )
            end

            return
        end

        -- ----------------------------------------------------
        -- STOP
        -- ----------------------------------------------------

        piggybackActive = false

        ClearPedSecondaryTask(ped)

        DetachEntity(
            ped,
            true,
            false
        )

        local closestPlayer =
            GetClosestPlayer(3)

        if closestPlayer
            and closestPlayer ~= -1 then

            otherPlayerServerId =
                GetPlayerServerId(
                    closestPlayer
                )

            if otherPlayerServerId ~= 0 then
                TriggerServerEvent(
                    "5f28fea3a6",
                    otherPlayerServerId
                )
            end
        end
    end,
    false
)


-- ============================================================
-- INCOMING REQUEST
-- ============================================================

RegisterNetEvent(
    "109bbe09c8",
    function()
        tCMG.notify(
            "Someone is trying to piggyback you, press (Y) to accept (L) to refuse"
        )

        requestPending = true

        Citizen.CreateThread(function()
            while requestPending do
                -- Y.
                if IsControlJustPressed(
                    0,
                    246
                ) then

                    tCMG.notify(
                        "~g~Request Accepted"
                    )

                    ExecuteCommand(
                        "pbaccept"
                    )

                    requestPending =
                        false

                -- L.
                elseif IsControlJustPressed(
                    0,
                    182
                ) then

                    tCMG.notify(
                        "~g~Request Refused"
                    )

                    ExecuteCommand(
                        "pbrefuse"
                    )

                    requestPending =
                        false
                end

                Wait(0)
            end
        end)

        -- Request expires after 15 seconds.
        Citizen.Wait(15000)

        requestPending = false
    end
)


-- ============================================================
-- ACTIVE-SAFETY / KEEP ANIMATION ALIVE
-- ============================================================

local function piggybackTick(context)
    if not piggybackActive then
        return
    end

    if IsPedGettingIntoAVehicle(
        context.playerPed
    ) then

        TriggerServerEvent(
            "5f28fea3a6",
            otherPlayerServerId
        )

        piggybackActive = false

        ClearPedTasks(
            context.playerPed
        )

        drawNativeNotification(
            "Can't piggy back someone whilst your in a vehicle"
        )

        return
    end

    DisablePlayerFiring(
        CMG.getPlayerId(),
        true
    )

    if not IsEntityPlayingAnim(
        context.playerPed,
        activeAnimDict,
        activeAnimName,
        3
    ) then

        TaskPlayAnim(
            context.playerPed,
            activeAnimDict,
            activeAnimName,
            8.0,
            -8.0,
            100000,
            activeAnimFlag,
            0,
            false,
            false,
            false
        )
    end
end


CMG.createThreadOnTick(
    piggybackTick,
    "Piggyback Vehicle"
)


-- ============================================================
-- THIS CLIENT IS THE ATTACHED PLAYER
-- ============================================================

RegisterNetEvent(
    "c3a48ab060",
    function(
        carrierServerId,
        animDict,
        animName,
        offsetY,
        offsetX,
        offsetZ,
        duration,
        rotationZ,
        animFlag
    )
        local ped =
            CMG.getPlayerPed()

        local carrierPlayer =
            GetPlayerFromServerId(
                carrierServerId
            )

        local carrierPed =
            GetPlayerPed(
                carrierPlayer
            )

        RequestAnimDict(animDict)

        piggybackActive = true
        otherPlayerServerId =
            carrierServerId

        while not HasAnimDictLoaded(
            animDict
        ) do
            Citizen.Wait(10)
        end

        rotationZ =
            rotationZ or 180.0

        AttachEntityToEntity(
            ped,
            carrierPed,
            0,
            offsetX,
            offsetY,
            offsetZ,
            0.5,
            0.5,
            rotationZ,
            false,
            false,
            false,
            false,
            2,
            false
        )

        animFlag =
            animFlag or 0

        TaskPlayAnim(
            ped,
            animDict,
            animName,
            8.0,
            -8.0,
            duration,
            animFlag,
            0,
            false,
            false,
            false
        )

        RemoveAnimDict(animDict)

        activeAnimName =
            animName

        activeAnimDict =
            animDict

        activeAnimFlag =
            animFlag
    end
)


-- ============================================================
-- THIS CLIENT IS THE CARRIER
-- ============================================================

RegisterNetEvent(
    "df18a9b49e",
    function(
        animDict,
        animName,
        duration,
        animFlag
    )
        local ped =
            CMG.getPlayerPed()

        RequestAnimDict(animDict)

        piggybackActive = true

        while not HasAnimDictLoaded(
            animDict
        ) do
            Citizen.Wait(10)
        end

        Citizen.Wait(500)

        animFlag =
            animFlag or 0

        TaskPlayAnim(
            ped,
            animDict,
            animName,
            8.0,
            -8.0,
            duration,
            animFlag,
            0,
            false,
            false,
            false
        )

        RemoveAnimDict(animDict)

        activeAnimName =
            animName

        activeAnimDict =
            animDict

        activeAnimFlag =
            animFlag
    end
)


-- ============================================================
-- SERVER STOPS PIGGYBACK
-- ============================================================

RegisterNetEvent(
    "a238ed7b34",
    function()
        if not piggybackActive then
            return
        end

        piggybackActive = false

        local ped =
            CMG.getPlayerPed()

        ClearPedSecondaryTask(ped)

        DetachEntity(
            ped,
            true,
            false
        )
    end
)
