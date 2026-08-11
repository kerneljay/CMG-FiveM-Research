--[[
    LEVEL 1 BEGINNER GUIDE — Target
    ====================================

    File: cmg/prod/client/util/client/cl_target.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: shared utility/framework helper code.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 3
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
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
    Camera Target / Raycast Helpers
    ===============================

    GetCoordsFromCam(distance)
      Calculates a point in front of the gameplay camera.

    Target(distance, ignoredEntity)
      Casts a ray from the gameplay camera and returns:
        hitEntity, endX, endY, endZ

    Crosshair(enabled)
      Tells the NUI whether to show the target/crosshair UI.
]]

-- === HELPER FUNCTION: GetCoordsFromCam(distance) ===
function GetCoordsFromCam(distance)
    local cameraRotation = GetGameplayCamRot(2)
    local cameraCoords = GetGameplayCamCoord()

    local yaw = cameraRotation.z * 0.0174532924
    local pitch = cameraRotation.x * 0.0174532924
    local horizontal = math.abs(math.cos(pitch))

    local x =
        cameraCoords.x
        + (-math.sin(yaw) * (horizontal + distance))

    local y =
        cameraCoords.y
        + (math.cos(yaw) * (horizontal + distance))

    local z =
        cameraCoords.z
        + (math.sin(pitch) * 8.0)

    return x, y, z
end

-- === HELPER FUNCTION: Target(distance, ignoredEntity) ===
function Target(distance, ignoredEntity)
    local cameraCoords = GetGameplayCamCoord()
    local targetX, targetY, targetZ =
        GetCoordsFromCam(distance)

    local rayHandle =
        StartExpensiveSynchronousShapeTestLosProbe(
            cameraCoords.x,
            cameraCoords.y,
            cameraCoords.z,
            targetX,
            targetY,
            targetZ,
            -1,
            ignoredEntity,
            0
        )

    local _, _, _, _, hitEntity =
        GetShapeTestResult(rayHandle)

    -- The original decompile returned the ray target coordinates alongside
    -- the hit entity rather than the hit-position output from the native.
    return hitEntity, targetX, targetY, targetZ
end

-- === HELPER FUNCTION: Crosshair(enabled) ===
function Crosshair(enabled)
    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        crosshair = enabled
    })
end
