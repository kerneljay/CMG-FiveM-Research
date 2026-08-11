--[[
    LEVEL 1 BEGINNER GUIDE — Driveby
    =====================================

    File: cmg/prod/client/misc/cl_driveby.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Driveby feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 5
      * Background threads: 0
      * Always-running loops: 0
      * Commands: undriveby
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_purge

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
    Drive-By Shooting Rules
    =======================

    This file decides whether the local player may shoot while inside a vehicle.

    Main rules:
      * A public CMG.enableDriveBy(true/false) override can ignore normal checks.
      * During Purge, vehicles listed in cfg_purge.vehicles are allowed to use
        their built-in vehicle weapon. A normal hand-held weapon is put away
        if the vehicle weapon is active.
      * Motorcycles (vehicle class 8) allow a passenger to use a hand-held
        weapon, but the driver/unarmed state is restricted.
      * Helicopters (class 15) allow police-on-duty drive-by.
      * A small hard-coded vehicle-model list requires BOTH:
            police.onduty.permission
            arvtrained.permission
      * Otherwise drive-by firing controls are disabled.
      * If the player is not in a vehicle but is attached to another entity,
        normal attack controls are also disabled.

    Developer tools:
      /undriveby is only usable by permanent IDs 1 or 2 and toggles the
      global override.

      Dev menu "Drive By" can enable debug text.

    No network event names are involved in this file.
]]

local purgeConfig = CMG.loadModule("cfg/cfg_purge")

local debugState =
    CMG.registerDevMenuState(
        "Drive By",
        {
            drawDebug = false
        }
    )

-- These vehicle model hashes receive the ARV/police special rule.
local restrictedPoliceVehicleModels = {
    [880995585] = true,
    [1047855333] = true,
    [1344775242] = true,
    [-1645002784] = true,
    [1868620476] = true,
    [-1189677529] = true
}

-- Purge config stores spawn codes; convert those to a lookup table.
local purgeVehicleModels = {}

for _, vehicleData in pairs(
    purgeConfig.vehicles or {}
) do
    purgeVehicleModels[
        vehicleData.spawncode
    ] = true
end

-- True = ignore all normal checks and simply allow drive-by.
local driveByOverride = false


-- ============================================================
-- DEBUG
-- ============================================================

-- === HELPER FUNCTION: drawDriveByDebug(playerPed) ===
local function drawDriveByDebug(playerPed)
    if not debugState.drawDebug then
        return
    end

    CMG.drawDebugText(
        "---------- Drive By ----------"
    )

    CMG.drawDebugText(
        "Ignore Checks: %s",
        driveByOverride
    )

    local hasVehicleWeapon,
          vehicleWeaponHash =
        GetCurrentPedVehicleWeapon(
            playerPed
        )

    CMG.drawDebugText(
        "Vehicle Weapon: %s (%s)",
        hasVehicleWeapon
            and "Yes"
            or "No",
        vehicleWeaponHash
    )
end


-- ============================================================
-- CONTROL HELPERS
-- ============================================================

-- === HELPER FUNCTION: disableVehicleAttackControls() ===
local function disableVehicleAttackControls()
    for _, control in ipairs({
        69,
        70,
        114,
        331,
        68,
        66,
        67,
        92,
        24,
        257
    }) do
        DisableControlAction(
            0,
            control,
            true
        )
    end
end


-- === HELPER FUNCTION: setDriveByAllowed(allowed) ===
local function setDriveByAllowed(allowed)
    SetPlayerCanDoDriveBy(
        CMG.getPlayerId(),
        allowed
    )
end


-- ============================================================
-- EVERY-FRAME RULE CHECK
-- ============================================================

-- === HELPER FUNCTION: driveByTick() ===
local function driveByTick()
    local playerPed = PlayerPedId()

    drawDriveByDebug(playerPed)

    if driveByOverride then
        return
    end

    local vehicle =
        CMG.getPlayerVehicle()

    -- Player is not in a vehicle. If another script has attached the ped to
    -- something, block normal attack controls while attached.
    if vehicle == 0 then
        if GetEntityAttachedTo(playerPed) ~= 0 then
            DisableControlAction(0, 24, true)
            DisableControlAction(0, 257, true)
        end
        return
    end

    local playerId =
        CMG.getPlayerId()

    local modelHash =
        GetEntityModel(vehicle)

    local shouldBlockAttackControls = true

    -- --------------------------------------------------------
    -- PURGE VEHICLE
    -- --------------------------------------------------------

    if CMG.isPurge()
        and purgeVehicleModels[modelHash] then

        SetPlayerCanDoDriveBy(
            playerId,
            true
        )

        shouldBlockAttackControls = false

        local selectedWeapon =
            GetSelectedPedWeapon(
                playerPed
            )

        if selectedWeapon ~= 0
            and selectedWeapon ~= -1569615261 then

            local hasVehicleWeapon =
                GetCurrentPedVehicleWeapon(
                    playerPed
                )

            if not hasVehicleWeapon then
                CMG.setWeapon(
                    playerPed,
                    -1569615261,
                    true
                )
            end
        end

    -- --------------------------------------------------------
    -- MOTORCYCLE
    -- --------------------------------------------------------

    elseif GetVehicleClass(vehicle) == 8 then
        local isDriver =
            GetPedInVehicleSeat(
                vehicle,
                -1
            ) == playerPed

        local selectedWeapon =
            GetSelectedPedWeapon(
                playerPed
            )

        local mayDriveBy =
            (not isDriver)
            and selectedWeapon
                ~= -1569615261

        SetPlayerCanDoDriveBy(
            playerId,
            mayDriveBy
        )

        if mayDriveBy then
            shouldBlockAttackControls =
                false
        end

    -- --------------------------------------------------------
    -- HELICOPTER POLICE
    -- --------------------------------------------------------

    elseif GetVehicleClass(vehicle) == 15
        and CMG.hasClientPermission(
            "police.onduty.permission"
        ) then

        SetPlayerCanDoDriveBy(
            playerId,
            true
        )

        shouldBlockAttackControls =
            false

    -- --------------------------------------------------------
    -- ARV / SPECIAL POLICE VEHICLES
    -- --------------------------------------------------------

    elseif restrictedPoliceVehicleModels[
        modelHash
    ] then

        local allowed =
            CMG.hasClientPermission(
                "police.onduty.permission"
            )
            and CMG.hasClientPermission(
                "arvtrained.permission"
            )

        SetPlayerCanDoDriveBy(
            playerId,
            allowed
        )

        if allowed then
            -- Preserve the original extra control block on these vehicles.
            DisableControlAction(
                0,
                92,
                true
            )
        end

    -- --------------------------------------------------------
    -- NORMAL VEHICLE
    -- --------------------------------------------------------

    else
        SetPlayerCanDoDriveBy(
            playerId,
            false
        )
    end

    if shouldBlockAttackControls then
        disableVehicleAttackControls()
    end
end


CMG.createThreadOnTick(
    driveByTick,
    "Drive By"
)


-- ============================================================
-- PUBLIC OVERRIDE
-- ============================================================

-- === HELPER FUNCTION: CMG.enableDriveBy(enabled) ===
function CMG.enableDriveBy(enabled)
    if enabled then
        SetPlayerCanDoDriveBy(
            PlayerId(),
            true
        )
    end

    driveByOverride =
        enabled == true
end


CMG.registerCommand(
    "undriveby",
    function()
        local userId =
            CMG.getClientUserId()

        if userId ~= 1
            and userId ~= 2 then
            return
        end

        CMG.enableDriveBy(
            not driveByOverride
        )
    end,
    false
)


-- ============================================================
-- DEV MENU
-- ============================================================

CMG.registerDevMenuItems(
    "Drive By",
    function()
        RageUI.Checkbox(
            "Debug Enabled",
            "",
            debugState.drawDebug,
            {},
            function(_, _, _, checked)
                debugState.drawDebug =
                    checked
            end
        )
    end
)
