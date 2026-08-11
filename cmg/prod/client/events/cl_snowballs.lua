--[[
    LEVEL 1 BEGINNER GUIDE — Snowballs
    =======================================

    File: cmg/prod/client/events/cl_snowballs.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: server event/minigame gameplay, specifically the Snowballs feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 4
      * Background threads: 1
      * Always-running loops: 0
      * Commands: snowballs
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
    Christmas Snowballs
    ===================

    This feature only runs while CMG's current weather is "XMAS".

    Christmas world effects:
      * stronger snow/water override
      * vehicle tyre trails
      * player footstep tracks
      * core_snow particle dictionary loaded once

    Picking up snowballs:
      Control 119 is the original pickup key.
      The player must be:
        * on foot
        * not free-aiming
        * not swimming/underwater
        * not ragdolling/falling/running/sprinting
        * outside interiors
        * not shooting / in a scenario / in cover / on another vehicle
        * not inside a RageUI menu
        * not already performing the pickup animation

      The pickup animation lasts about 1.95 seconds, then the player receives
      2 snowballs (weapon hash 126349499) if the weather is still XMAS.

    /snowballs simply shows the pickup help text manually.
]]

local wasInVehicle = true
local snowParticleAssetLoaded = false
local pickupInProgress = false


-- ============================================================
-- HELP MESSAGE
-- ============================================================

-- === HELPER FUNCTION: showSnowballHelp() ===
local function showSnowballHelp()
    BeginTextCommandDisplayHelp(
        "STRING"
    )

    AddTextComponentSubstringPlayerName(
        "Press ~INPUT_VEH_FLY_VERTICAL_FLIGHT_MODE~ while on foot, to pickup 2 snowballs!"
    )

    EndTextCommandDisplayHelp(
        0,
        false,
        true,
        -1
    )
end


-- ============================================================
-- CAN THE PLAYER PICK UP A SNOWBALL RIGHT NOW?
-- ============================================================

-- === HELPER FUNCTION: canPickUpSnowball() ===
local function canPickUpSnowball()
    local ped = PlayerPedId()

    return
        not IsPedInAnyVehicle(
            GetPlayerPed(-1),
            true
        )
        and not IsPlayerFreeAiming(
            PlayerId()
        )
        and not IsPedSwimming(ped)
        and not IsPedSwimmingUnderWater(ped)
        and not IsPedRagdoll(ped)
        and not IsPedFalling(ped)
        and not IsPedRunning(ped)
        and not IsPedSprinting(ped)
        and GetInteriorFromEntity(ped) == 0
        and not IsPedShooting(ped)
        and not IsPedUsingAnyScenario(ped)
        and not IsPedInCover(
            ped,
            false
        )
        and not IsPedOnVehicle(ped)
        and not RageUI.IsAnyMenuVisible()
        and not pickupInProgress
end


-- ============================================================
-- PICKUP ANIMATION
-- ============================================================

-- === HELPER FUNCTION: pickUpSnowballs() ===
local function pickUpSnowballs()
    pickupInProgress = true

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(function()
        Wait(0)

        -- Re-check the important conditions after creating the thread.
        if not RageUI.IsAnyMenuVisible()
            and CMG.getCurrentWeather()
                == "XMAS" then

            local animDict =
                "anim@mp_snowball"

            CMG.loadAnimDict(
                animDict
            )

            TaskPlayAnim(
                PlayerPedId(),
                animDict,
                "pickup_snowball",
                8.0,
                -1.0,
                -1,
                0,
                1.0,
                false,
                false,
                false
            )

            RemoveAnimDict(
                animDict
            )

            Citizen.Wait(1950)

            if CMG.getCurrentWeather()
                == "XMAS" then

                GiveWeaponToPed(
                    PlayerPedId(),
                    126349499,
                    2,
                    false,
                    false
                )
            end
        end

        pickupInProgress = false
    end)
end


-- ============================================================
-- MAIN CHRISTMAS TICK
-- ============================================================

-- === HELPER FUNCTION: snowballTick() ===
local function snowballTick()
    if CMG.getCurrentWeather()
        == "XMAS" then

        WaterOverrideSetStrength(
            3.0
        )

        SetForceVehicleTrails(
            true
        )

        SetForcePedFootstepsTracks(
            true
        )

        if not snowParticleAssetLoaded then
            CMG.loadPtfx(
                "core_snow"
            )

            UseParticleFxAsset(
                "core_snow"
            )

            snowParticleAssetLoaded =
                true
        end

        if IsControlJustReleased(
            0,
            119
        )
            and canPickUpSnowball() then

            pickUpSnowballs()
        end

        local inVehicle =
            IsPedInAnyVehicle(
                GetPlayerPed(-1),
                true
            )

        if not inVehicle then
            -- Show the help once after leaving a vehicle.
            if wasInVehicle then
                showSnowballHelp()
            end

            wasInVehicle = false
        else
            wasInVehicle = true
        end

        return
    end

    -- Weather changed away from XMAS: clean up snow-only world overrides.
    if snowParticleAssetLoaded then
        WaterOverrideSetStrength(
            0.0
        )

        snowParticleAssetLoaded =
            false

        RemoveNamedPtfxAsset(
            "core_snow"
        )

        SetForceVehicleTrails(
            false
        )

        SetForcePedFootstepsTracks(
            false
        )
    end
end


CMG.createThreadOnTick(
    snowballTick,
    "Snowballs"
)


RegisterCommand(
    "snowballs",
    showSnowballHelp,
    false
)
