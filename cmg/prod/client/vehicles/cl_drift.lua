--[[
    Vehicle Drift Settings + Smoke
    ==============================

    Vehicles can carry a Decor integer named "0a6cf607ed". That value is a
    server-owned vehicle setting ID.

    Two per-setting tables are maintained:

      driftSuspensionSettings[settingId] = true
        Enables the player's manual drift-mode toggle for that vehicle.

      driftSmokeSettings[settingId] = colourId
        Enables tyre-smoke effects. Colour IDs 2..8 map to the RGB colours
        defined below.

    Public helpers:
      CMG.setVehicleIdDriftSuspension(settingId, options)
        If options["1"] is true, that setting ID gets drift suspension support.

      CMG.setVehicleIdDriftSmoke(settingId, colourId)
        Colour IDs 2 and above enable custom drift smoke.

    Manual drift mode:
      Press control 29 (INPUT_SPECIAL_ABILITY_SECONDARY) while driving an
      eligible owned vehicle. The vehicle handling's advanced flags must have
      bits 15 AND 26 set.

      When toggled, this client calls:
        SetDriftTyresEnabled(vehicle, enabled)
        SetReduceDriftVehicleSuspension(vehicle, enabled)

    Smoke effects:
      * drifting above ~3 m/s -> wheel burnout smoke
      * stationary burnout below ~1 m/s -> thicker smoke
      * effects run for three seconds before being cleaned up

    Beginner note:
      The original decompiler used goto labels around very simple conditions.
      Those are restored here as normal if/return logic.
]]

-- ============================================================
-- SMOKE COLOURS
-- ============================================================

local smokeColours = {
    [2] = {255, 25, 25},
    [3] = {255, 179, 25},
    [4] = {255, 255, 25},
    [5] = {102, 255, 25},
    [6] = {25, 25, 255},
    [7] = {179, 25, 255},
    [8] = {255, 25, 255}
}

local driftSuspensionSettings = {}
local driftSmokeSettings = {}

local driftPromptShown = false
local manualDriftEnabled = false
local particleEffectBusy = false


-- ============================================================
-- SERVER/VEHICLE SETTING REGISTRATION
-- ============================================================

function CMG.setVehicleIdDriftSuspension(
    settingId,
    options
)
    if options
        and options["1"] then

        driftSuspensionSettings[
            settingId
        ] = true
    end
end


function CMG.setVehicleIdDriftSmoke(
    settingId,
    colourId
)
    if colourId >= 2 then
        driftSmokeSettings[
            settingId
        ] = colourId
    end
end


-- ============================================================
-- ADVANCED-HANDLING FLAG HELPER
-- ============================================================

local function isBitSet(
    value,
    bitIndex
)
    return
        math.floor(
            value / (2 ^ bitIndex)
        )
        % 2
        == 1
end


-- ============================================================
-- MANUAL DRIFT MODE
-- ============================================================

local function updateManualDriftMode(
    vehicle
)
    if not driftPromptShown then
        drawNativeNotification(
            "Press ~INPUT_SPECIAL_ABILITY_SECONDARY~ to toggle drift mode."
        )

        driftPromptShown = true
        manualDriftEnabled = false
    end

    if not IsControlJustPressed(
        0,
        29
    ) then
        return
    end

    local advancedFlags =
        GetVehicleHandlingInt(
            vehicle,
            "CCarHandlingData",
            "strAdvancedFlags"
        )

    if advancedFlags == 0 then
        return
    end

    -- Both flags are required by the original client.
    if not isBitSet(
        advancedFlags,
        15
    )
        or not isBitSet(
            advancedFlags,
            26
        ) then
        return
    end

    manualDriftEnabled =
        not manualDriftEnabled

    drawNativeText(
        string.format(
            "Drift mode ~y~%s~w~.",
            manualDriftEnabled
                and "enabled"
                or "disabled"
        )
    )

    SetDriftTyresEnabled(
        vehicle,
        manualDriftEnabled
    )

    SetReduceDriftVehicleSuspension(
        vehicle,
        manualDriftEnabled
    )
end


-- ============================================================
-- CALCULATE CURRENT DRIFT ANGLE
-- ============================================================

local function getDriftAngle(
    vehicle
)
    local velocity =
        GetEntityVelocity(
            vehicle
        )

    -- Horizontal velocity only.
    local horizontalSpeed =
        math.sqrt(
            velocity.x * velocity.x
            + velocity.y * velocity.y
        )

    local rotation =
        GetEntityRotation(
            vehicle,
            0
        )

    local headingRadians =
        math.rad(
            rotation.z
        )

    local forwardX =
        -math.sin(
            headingRadians
        )

    local forwardY =
        math.cos(
            headingRadians
        )

    local speedKmh =
        GetEntitySpeed(
            vehicle
        )
        * 3.6

    if speedKmh < 5.0
        or GetVehicleCurrentGear(
            vehicle
        ) == 0
        or horizontalSpeed <= 0.0 then

        return 0, horizontalSpeed
    end

    local alignment =
        (
            forwardX * velocity.x
            + forwardY * velocity.y
        )
        / horizontalSpeed

    -- Driving almost perfectly straight, or backwards, is not treated as a
    -- drift by the source.
    if alignment > 0.966
        or alignment < 0.0 then

        return 0, horizontalSpeed
    end

    -- Clamp protects acos from tiny floating-point overshoots.
    alignment =
        math.max(
            -1.0,
            math.min(
                1.0,
                alignment
            )
        )

    local angle =
        math.deg(
            math.acos(alignment)
        )
        * 0.5

    return angle, horizontalSpeed
end


-- ============================================================
-- PARTICLE EFFECTS ON REAR WHEELS
-- ============================================================

local function startRearWheelParticles(
    particleDictionary,
    particleName,
    vehicle,
    repeatCount,
    scale,
    colourId
)
    particleEffectBusy = true

    local handles = {}

    local colour =
        smokeColours[
            colourId
        ]

    CMG.loadPtfx(
        particleDictionary
    )

    local leftBone =
        GetEntityBoneIndexByName(
            vehicle,
            "wheel_lr"
        )

    local rightBone =
        GetEntityBoneIndexByName(
            vehicle,
            "wheel_rr"
        )

    for _ = 1,
        repeatCount do

        UseParticleFxAsset(
            particleDictionary
        )

        local leftHandle =
            StartParticleFxLoopedOnEntityBone(
                particleName,
                vehicle,
                0.05,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                leftBone,
                scale,
                false,
                false,
                false
            )

        if colour then
            SetParticleFxLoopedColour(
                leftHandle,
                colour[1] / 255,
                colour[2] / 255,
                colour[3] / 255,
                false
            )
        end

        UseParticleFxAsset(
            particleDictionary
        )

        local rightHandle =
            StartParticleFxLoopedOnEntityBone(
                particleName,
                vehicle,
                0.05,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                rightBone,
                scale,
                false,
                false,
                false
            )

        if colour then
            SetParticleFxLoopedColour(
                rightHandle,
                colour[1] / 255,
                colour[2] / 255,
                colour[3] / 255,
                false
            )
        end

        table.insert(
            handles,
            leftHandle
        )

        table.insert(
            handles,
            rightHandle
        )
    end

    RemoveNamedPtfxAsset(
        particleDictionary
    )

    Citizen.CreateThread(function()
        Citizen.Wait(3000)

        for _, handle
            in pairs(handles) do

            StopParticleFxLooped(
                handle,
                true
            )
        end

        particleEffectBusy = false
    end)
end


-- ============================================================
-- DECIDE WHICH SMOKE EFFECT TO PLAY
-- ============================================================

local function updateDriftSmoke(
    vehicle,
    colourId
)
    local driftAngle,
          horizontalSpeed =
        getDriftAngle(vehicle)

    if horizontalSpeed > 3.0
        and driftAngle ~= 0 then

        startRearWheelParticles(
            "scr_recartheft",
            "scr_wheel_burnout",
            vehicle,
            10,
            0.2,
            colourId
        )

    elseif horizontalSpeed < 1.0
        and IsVehicleInBurnout(
            vehicle
        ) then

        startRearWheelParticles(
            "core",
            "exp_grd_bzgas_smoke",
            vehicle,
            3,
            1.5,
            0
        )
    end
end


-- ============================================================
-- APPLY SETTINGS TO CURRENT OWNED VEHICLE
-- ============================================================

local function updateVehicleDriftFeatures(
    vehicle
)
    local ownerUserId =
        tCMG.getVehicleInfos(
            vehicle
        )

    local settingId =
        DecorGetInt(
            vehicle,
            "0a6cf607ed"
        )

    if ownerUserId
        ~= CMG.getClientUserId()
        or settingId <= 0 then
        return
    end

    if driftSuspensionSettings[
        settingId
    ] then

        updateManualDriftMode(
            vehicle
        )
    end

    local smokeColourId =
        driftSmokeSettings[
            settingId
        ]

    if smokeColourId
        and not particleEffectBusy then

        updateDriftSmoke(
            vehicle,
            smokeColourId
        )
    end
end


-- ============================================================
-- MAIN TICK
-- ============================================================

local function vehicleDriftTick()
    local vehicle, isDriver =
        CMG.getPlayerVehicle()

    if vehicle ~= 0
        and isDriver then

        updateVehicleDriftFeatures(
            vehicle
        )
    else
        -- Reset the one-time prompt when leaving the driver seat so it can
        -- explain the control again next time an eligible vehicle is entered.
        driftPromptShown = false
        manualDriftEnabled = false
    end
end


CMG.createThreadOnTick(
    vehicleDriftTick,
    "Vehicle Drift"
)
