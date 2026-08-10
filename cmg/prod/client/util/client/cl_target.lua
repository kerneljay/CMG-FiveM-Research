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

function Crosshair(enabled)
    SendNUIMessage({
        crosshair = enabled
    })
end
