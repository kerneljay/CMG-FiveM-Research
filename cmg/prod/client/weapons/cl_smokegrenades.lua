--[[
    Smoke Grenades
    ==============

    Two weapon hashes are treated as smoke-grenade throwables:
      -2144752413
      -795216620

    When one is fired:
      1. Attacking is temporarily blocked for 4 seconds.
      2. A random throw ID is sent to the server.
      3. The client finds the nearest thrown grenade object (model 399566324).
      4. It waits for that object to stop moving, up to 6 seconds.
      5. The final grenade coordinates are sent to the server.

    The server then broadcasts event d370ce0c4b(id, coords).

    That event creates a streamed smoke effect around those coordinates for
    up to 60 seconds. The effect starts when this client is inside the large
    streaming area and stops when the client leaves it.
]]

local lastThrowAt = 0
local THROW_COOLDOWN_MS = 4000

local SMOKE_WEAPONS = {
    [-2144752413] = true,
    [-795216620] = true
}


-- ============================================================
-- FIND WHERE THE THROWN GRENADE LANDED
-- ============================================================

local function reportThrownSmokeGrenade()
    local throwId =
        math.random(
            1,
            1000000
        )

    TriggerServerEvent(
        "142a59a379",
        throwId
    )

    -- Give GTA a moment to create the physical grenade object.
    Citizen.Wait(100)

    local playerCoords =
        CMG.getPlayerCoords()

    local grenadeObject =
        GetClosestObjectOfType(
            playerCoords.x,
            playerCoords.y,
            playerCoords.z,
            10.0,
            399566324,
            false,
            false,
            false
        )

    if grenadeObject == 0 then
        return
    end

    local waitStartedAt =
        GetGameTimer()

    -- Wait for the grenade to settle, but never wait longer than 6 seconds.
    while GetEntitySpeed(grenadeObject) > 0.2
        and GetGameTimer() - waitStartedAt < 6000 do
        Citizen.Wait(0)
    end

    local finalCoords =
        GetEntityCoords(
            grenadeObject,
            true
        )

    TriggerServerEvent(
        "176d0baec2",
        throwId,
        finalCoords
    )
end


-- ============================================================
-- LOCAL THROW CONTROL
-- ============================================================

local function smokeGrenadeTick(context)
    local selectedWeapon =
        GetSelectedPedWeapon(
            context.playerPed
        )

    local timeSinceThrow =
        GetGameTimer()
        - lastThrowAt

    if SMOKE_WEAPONS[selectedWeapon] then
        if timeSinceThrow < THROW_COOLDOWN_MS then
            -- Prevent throwing multiple grenades during the cooldown.
            for _, control in ipairs({
                24,
                69,
                257,
                58
            }) do
                DisableControlAction(
                    0,
                    control,
                    true
                )
            end

        elseif IsPedShooting(
            context.playerPed
        ) then
            Citizen.CreateThreadNow(
                reportThrownSmokeGrenade
            )

            lastThrowAt =
                GetGameTimer()
        end

    elseif lastThrowAt > 0
        and timeSinceThrow < THROW_COOLDOWN_MS then

        -- The original client also blocks control 58 for the remainder of
        -- the cooldown even if the player changes weapon immediately.
        DisableControlAction(
            0,
            58,
            true
        )
    end
end

CMG.createThreadOnTick(
    smokeGrenadeTick,
    "Smoke Grenades"
)


-- ============================================================
-- STREAMED SMOKE EFFECT
-- ============================================================

local function startSmokeEffect(effectData)
    if effectData.isDeleted then
        return
    end

    CMG.loadPtfx("core")

    UseParticleFxAsset("core")

    effectData.handle =
        StartParticleFxLoopedAtCoord(
            "exp_grd_grenade_smoke",
            effectData.coords.x,
            effectData.coords.y,
            effectData.coords.z,
            0.0,
            0.0,
            0.0,
            2.0,
            false,
            false,
            false,
            false
        )

    RemoveNamedPtfxAsset("core")
end


local function stopSmokeEffect(effectData)
    if effectData.handle then
        StopParticleFxLooped(
            effectData.handle,
            false
        )

        effectData.handle = nil
    end
end


RegisterNetEvent(
    "d370ce0c4b",
    function(smokeId, coords)
        local effectData = {
            coords = coords,
            isDeleted = false,
            handle = nil
        }

        local areaName =
            "smoke_"
            .. tostring(smokeId)

        CMG.createArea(
            areaName,
            coords,
            250.0,
            1000.0,
            startSmokeEffect,
            stopSmokeEffect,
            function()
            end,
            effectData
        )

        Citizen.Wait(60000)

        tCMG.removeArea(
            areaName
        )

        if effectData.handle then
            StopParticleFxLooped(
                effectData.handle,
                false
            )

            effectData.handle = nil
            effectData.isDeleted = true
        end
    end
)
