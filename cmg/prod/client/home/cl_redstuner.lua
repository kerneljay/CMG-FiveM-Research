--[[
    Simple Two-Way Teleport System
    ==============================

    Beginner glossary:
      vector4(x, y, z, heading)
        x, y, z = world position
        heading = direction the player/vehicle should face

      checkpoint
        The red marker you can see in the world.

      activeTeleportIndex
        Which teleport zone the player is currently close enough to use.

    What this script does:
      1. Defines two teleport zones.
      2. Shows a red checkpoint when you are within 5 metres.
      3. If you move within 3 metres, that teleport becomes usable.
      4. Press E to teleport.
      5. If you are inside a vehicle, the whole vehicle is teleported.
      6. Otherwise only your player is teleported.
      7. Plays a confirmation sound.
      8. Waits 5 seconds before allowing another teleport.
]]


-- ============================================================
-- TELEPORT LOCATIONS
-- ============================================================

local teleportZones = {
    {
        label = "Teleport Zone A",

        -- Where you stand to use this teleport.
        coords = vector4(
            -671.491,
            -2418.048,
            14.259,
            90.0
        ),

        -- Where this teleport sends you.
        target = vector4(
            -2220.138,
            1157.367,
            -23.26,
            223.75
        )
    },

    {
        label = "Teleport Zone B",

        coords = vector4(
            -2220.138,
            1157.367,
            -23.26,
            223.75
        ),

        target = vector4(
            -671.491,
            -2418.048,
            14.259,
            150.0
        )
    }
}


-- ============================================================
-- SETTINGS
-- ============================================================

-- Player must be closer than this to actually use the teleport.
local TELEPORT_USE_DISTANCE = 3.0

-- Checkpoint only appears when player is within this distance.
local CHECKPOINT_DRAW_DISTANCE = 5.0

-- Stores checkpoint handles.
-- Example:
-- checkpointHandles[1] = checkpoint for Teleport Zone A
local checkpointHandles = {}

-- nil means the player is not currently close enough to use a teleport.
local activeTeleportIndex = nil


-- ============================================================
-- HELPER: CREATE A RED CHECKPOINT
-- ============================================================

local function createTeleportCheckpoint(zone)
    local checkpoint = CreateCheckpoint(
        47,

        -- Checkpoint position.
        zone.coords.x,
        zone.coords.y,
        zone.coords.z - 1.0,

        -- Direction/next position.
        zone.coords.x,
        zone.coords.y,
        zone.coords.z,

        -- Size.
        4.0,

        -- Colour: red.
        255,
        0,
        0,
        100,

        0
    )

    -- Change the cylinder height so the checkpoint looks correct.
    SetCheckpointCylinderHeight(
        checkpoint,
        1.5,
        1.5,
        1.0
    )

    return checkpoint
end


-- ============================================================
-- THREAD 1:
-- CHECK PLAYER DISTANCE + SHOW/HIDE CHECKPOINTS
-- ============================================================

CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        local playerCoords = GetEntityCoords(playerPed)

        local closestDistance = math.huge
        local closestTeleportIndex = nil

        for index, zone in ipairs(teleportZones) do
            -- vector4 has x/y/z/w.
            -- For distance calculations we only need x/y/z.
            local zoneCoords = vector3(
                zone.coords.x,
                zone.coords.y,
                zone.coords.z
            )

            local distance = #(playerCoords - zoneCoords)

            -- ------------------------------------------------
            -- SHOW CHECKPOINT
            -- ------------------------------------------------

            if distance < CHECKPOINT_DRAW_DISTANCE then
                -- Only create it once.
                if not checkpointHandles[index] then
                    checkpointHandles[index] =
                        createTeleportCheckpoint(zone)
                end

            -- ------------------------------------------------
            -- HIDE CHECKPOINT
            -- ------------------------------------------------

            else
                if checkpointHandles[index] then
                    DeleteCheckpoint(
                        checkpointHandles[index]
                    )

                    checkpointHandles[index] = nil
                end
            end

            -- Remember which teleport zone is closest.
            if distance < closestDistance then
                closestDistance = distance
                closestTeleportIndex = index
            end
        end

        -- Only allow the nearest teleport if we are within 3 metres.
        if closestDistance < TELEPORT_USE_DISTANCE then
            activeTeleportIndex = closestTeleportIndex
        else
            activeTeleportIndex = nil
        end

        -- No need to check distances every single frame.
        Wait(100)
    end
end)


-- ============================================================
-- HELPER: TELEPORT AN ENTITY
-- ============================================================

local function teleportEntity(entity, target)
    SetEntityCoords(
        entity,
        target.x,
        target.y,
        target.z,
        false,
        false,
        false,
        true
    )

    SetEntityHeading(
        entity,
        target.w
    )
end


-- ============================================================
-- THREAD 2:
-- INPUT + ACTUAL TELEPORT
-- ============================================================

CreateThread(function()
    while true do
        -- Are we currently standing inside a usable teleport zone?
        if activeTeleportIndex then
            drawNativeNotification(
                "Press ~INPUT_CONTEXT~ to teleport."
            )

            -- Control 38 = INPUT_CONTEXT = usually E.
            if IsControlJustReleased(0, 38) then
                local playerPed = PlayerPedId()

                local zone =
                    teleportZones[activeTeleportIndex]

                if zone then
                    local target = zone.target

                    -- ----------------------------------------
                    -- PLAYER IS INSIDE A VEHICLE
                    -- ----------------------------------------

                    if IsPedInAnyVehicle(playerPed, false) then
                        local vehicle =
                            GetVehiclePedIsIn(
                                playerPed,
                                false
                            )

                        -- Teleport the entire vehicle instead of only
                        -- moving the player out of it.
                        teleportEntity(
                            vehicle,
                            target
                        )

                    -- ----------------------------------------
                    -- PLAYER IS ON FOOT
                    -- ----------------------------------------

                    else
                        teleportEntity(
                            playerPed,
                            target
                        )
                    end

                    -- Confirmation beep.
                    PlaySoundFrontend(
                        -1,
                        "CONFIRM_BEEP",
                        "HUD_MINI_GAME_SOUNDSET",
                        true
                    )

                    -- Cooldown from the original script.
                    -- During this time this thread cannot teleport again.
                    Wait(5000)
                end
            end
        end

        -- This input/display thread runs every frame.
        Wait(0)
    end
end)