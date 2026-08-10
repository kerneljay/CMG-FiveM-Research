--[[
    Player Carry System
    ===================

    Beginner overview:
      /carry
        Starts carrying the closest player, or stops an active carry.

      Normal players
        The target receives a request and can accept with Y or refuse with L.

      Staff
        Staff can start the carry immediately.

      The server then sends animation/attachment events to both clients.

    Important state:
      isCarrying            = this client is currently part of a carry
      carriedPlayerServerId = player this client started carrying
      attachedPlayerServerId= player this client is attached to
      activeAnim*           = animation information needed by the tick

    CarryPeople:* event names are intentionally unchanged.
]]

local isCarrying = false

local activeAnimName = ""
local activeAnimDict = ""
local activeAnimFlag = 0

-- Carrying is restricted around these casino coordinates for normal users.
local casinoCoords = vector3(
    1117.671,
    218.7382,
    -49.4
)

local carryRequestPending = false

-- If WE started the carry, this is the other player's server ID.
local carriedPlayerServerId = 0

-- If WE are the carried target, this is the carrier's server ID.
local attachedPlayerServerId = 0


-- ============================================================
-- PUBLIC HELPERS
-- ============================================================

function CMG.isCarrying()
    return isCarrying
end

function CMG.getCarryingPlayerSrc()
    if isCarrying then
        return carriedPlayerServerId or 0
    end

    return 0
end


TriggerEvent(
    "chat:addSuggestion",
    "/carry",
    "Carry the nearest player"
)


-- ============================================================
-- WHERE CARRYING IS ALLOWED
-- ============================================================

local function canUseCarry()
    -- Staff are allowed anywhere this client checks.
    if CMG.isStaffedOnClient() then
        return true
    end

    -- Disabled during these special activities.
    if CMG.inOrganHesit() or CMG.inArena() then
        return false
    end

    -- Around prison only emergency-service players may carry.
    if CMG.isPlayerNearPrison() then
        return CMG.isEmergencyService()
    end

    return true
end


-- ============================================================
-- STOP / RESET HELPER
-- ============================================================

local function stopLocalCarry(
    playerPed,
    message,
    otherPlayerServerId
)
    TriggerServerEvent(
        "CarryPeople:stop",
        otherPlayerServerId
    )

    isCarrying = false

    ClearPedTasks(playerPed)

    StopAnimTask(
        playerPed,
        "missfinale_c2mcs_1",
        "fin_c2_mcs_1_camman",
        0
    )

    if GetEntityAttachedTo(playerPed) ~= 0 then
        DetachEntity(
            playerPed,
            true,
            false
        )

        SetEntityVisible(
            playerPed,
            true,
            true
        )
    end

    drawNativeNotification(message)
end


-- ============================================================
-- /CARRY COMMAND
-- ============================================================

RegisterCommand(
    "carry",
    function()
        local playerPed = PlayerPedId()

        if IsPedInAnyVehicle(
            playerPed,
            true
        ) then
            drawNativeNotification(
                "You cannot carry someone whilst you are in a vehicle!"
            )
            return
        end

        if not canUseCarry() then
            tCMG.notify(
                "~r~You cannot carry in the prison."
            )
            return
        end

        -- Dead/coma players cannot start the command.
        if GetEntityHealth(
            CMG.getPlayerPed()
        ) <= 102 then
            return
        end

        local playerCoords =
            GetEntityCoords(
                CMG.getPlayerPed()
            )

        local distanceFromCasino =
            #(playerCoords - casinoCoords)

        -- ----------------------------------------------------
        -- START A CARRY
        -- ----------------------------------------------------

        if not isCarrying
            and (
                distanceFromCasino > 200
                or CMG.isStaffedOnClient()
            ) then

            local closestPlayer =
                GetClosestPlayer(3)

            if closestPlayer == -1 then
                drawNativeNotification(
                    "No one nearby to carry!"
                )
                return
            end

            carriedPlayerServerId =
                GetPlayerServerId(
                    closestPlayer
                )

            local targetPed =
                GetPlayerPed(
                    closestPlayer
                )

            if GetEntityHealth(targetPed) == 0 then
                drawNativeNotification(
                    "Cannot carry dead people!"
                )
                return
            end

            if CMG.isStaffedOnClient() then
                -- Staff can start immediately.
                TriggerServerEvent(
                    "CarryPeople:sync",
                    carriedPlayerServerId
                )
                return
            end

            -- The original avoids the request path for players with
            -- this on-duty permission.
            if not CMG.hasClientPermission(
                "lfb.onduty.permission"
            ) then
                TriggerServerEvent(
                    "CarryPeople:requestCarry",
                    carriedPlayerServerId
                )
            end

            return
        end

        -- ----------------------------------------------------
        -- STOP A CARRY
        -- ----------------------------------------------------

        isCarrying = false

        ClearPedSecondaryTask(playerPed)

        DetachEntity(
            playerPed,
            true,
            false
        )

        local closestPlayer =
            GetClosestPlayer(3)

        -- GetClosestPlayer normally returns -1 when nobody is found.
        if closestPlayer
            and closestPlayer ~= -1 then

            carriedPlayerServerId =
                GetPlayerServerId(
                    closestPlayer
                )

            if carriedPlayerServerId ~= 0 then
                TriggerServerEvent(
                    "CarryPeople:stop",
                    carriedPlayerServerId
                )
            end
        end
    end,
    false
)


-- ============================================================
-- ACCEPTING A CARRY WHILE IN COMA
-- ============================================================

local function shouldAutoAcceptCarry()
    local playerPed = PlayerPedId()

    if tCMG.isInComa() then
        return not IsEntityDead(playerPed)
    end

    return false
end


-- ============================================================
-- INCOMING CARRY REQUEST
-- ============================================================

RegisterNetEvent(
    "CarryPeople:carryRequest",
    function()
        if CMG.inArena() then
            return
        end

        tCMG.notify(
            "Someone is trying to carry you, press (Y) to accept (L) to refuse"
        )

        carryRequestPending = true

        Citizen.CreateThread(function()
            while carryRequestPending do
                -- Y, or the original coma auto-accept condition.
                if IsControlJustPressed(0, 246)
                    or shouldAutoAcceptCarry() then

                    tCMG.notify(
                        "~g~Request Accepted"
                    )

                    ExecuteCommand(
                        "carryaccept"
                    )

                    carryRequestPending = false

                -- L = refuse.
                elseif IsControlJustPressed(
                    0,
                    182
                ) then
                    tCMG.notify(
                        "~g~Request Refused"
                    )

                    ExecuteCommand(
                        "carryrefuse"
                    )

                    carryRequestPending = false
                end

                Wait(0)
            end
        end)

        -- Request expires after 15 seconds.
        Citizen.Wait(15000)
        carryRequestPending = false
    end
)


-- ============================================================
-- SAFETY CHECK WHILE CARRYING
-- ============================================================

local function carrySafetyTick()
    if not isCarrying then
        return
    end

    local playerPed =
        CMG.getPlayerPed()

    local vehicle, isDriver =
        CMG.getPlayerVehicle()

    if vehicle ~= 0 and isDriver then
        stopLocalCarry(
            playerPed,
            "~r~You cannot carry someone whilst you are in a vehicle!",
            carriedPlayerServerId
        )
    end

    if not CMG.isStaffedOnClient()
        and IsPedFalling(playerPed) then

        stopLocalCarry(
            playerPed,
            "~r~You cannot carry someone whilst you are falling",
            carriedPlayerServerId
        )
    end

    local attachedEntity =
        GetEntityAttachedTo(playerPed)

    if attachedEntity ~= 0
        and not IsEntityVisible(
            attachedEntity
        ) then

        -- Staff targets are allowed to be invisible.
        if not CMG.clientGetPlayerIsStaff(
            attachedPlayerServerId
        ) then
            stopLocalCarry(
                playerPed,
                "~r~You cannot being carried whilst the player is not visible.",
                attachedPlayerServerId
            )
        end
    end
end

CMG.createThreadOnTick(
    carrySafetyTick,
    "Carry Tick"
)


-- ============================================================
-- SERVER: THIS CLIENT IS THE CARRIED TARGET
-- ============================================================

-- Parameter meanings are inferred directly from where they are used:
--   carrierServerId
--   animDict
--   animName
--   offsetY
--   offsetX
--   offsetZ
--   duration
--   rotationZ (defaults to 180)
--   animFlag  (defaults to 0)
RegisterNetEvent(
    "CarryPeople:syncTarget",
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
        local playerPed =
            CMG.getPlayerPed()

        local carrierPlayer =
            GetPlayerFromServerId(
                carrierServerId
            )

        local carrierPed =
            GetPlayerPed(
                carrierPlayer
            )

        isCarrying = true
        attachedPlayerServerId =
            carrierServerId

        RequestAnimDict(animDict)

        while not HasAnimDictLoaded(
            animDict
        ) do
            Citizen.Wait(10)
        end

        rotationZ = rotationZ or 180.0

        AttachEntityToEntity(
            playerPed,
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

        animFlag = animFlag or 0

        TaskPlayAnim(
            playerPed,
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

        activeAnimName = animName
        activeAnimDict = animDict
        activeAnimFlag = animFlag
    end
)


-- ============================================================
-- SERVER: THIS CLIENT IS THE CARRIER
-- ============================================================

RegisterNetEvent(
    "CarryPeople:syncMe",
    function(
        animDict,
        animName,
        duration,
        animFlag
    )
        local playerPed =
            CMG.getPlayerPed()

        isCarrying = true

        RequestAnimDict(animDict)

        while not HasAnimDictLoaded(
            animDict
        ) do
            Citizen.Wait(10)
        end

        Wait(500)

        animFlag = animFlag or 0

        TaskPlayAnim(
            playerPed,
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

        activeAnimName = animName
        activeAnimDict = animDict
        activeAnimFlag = animFlag
    end
)


-- ============================================================
-- SERVER: STOP CARRY LOCALLY
-- ============================================================

RegisterNetEvent(
    "CarryPeople:cl_stop",
    function()
        if not isCarrying then
            return
        end

        isCarrying = false

        local playerPed =
            CMG.getPlayerPed()

        ClearPedSecondaryTask(playerPed)

        DetachEntity(
            playerPed,
            true,
            false
        )
    end
)


-- ============================================================
-- KEEP THE CARRY ANIMATION ALIVE
-- ============================================================

local function carryAnimationTick(context)
    if not isCarrying then
        return
    end

    DisablePlayerFiring(
        CMG.getPlayerId(),
        true
    )

    local playerPed =
        context.playerPed

    if not IsEntityPlayingAnim(
        playerPed,
        activeAnimDict,
        activeAnimName,
        3
    ) then
        TaskPlayAnim(
            playerPed,
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
    carryAnimationTick,
    "Carry Animation Tick"
)
