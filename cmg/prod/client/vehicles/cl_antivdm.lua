--[[
    Anti-VDM Collision Protection
    =============================

    VDM = Vehicle Deathmatch: using a moving vehicle to ram players.

    This client watches nearby road vehicles and temporarily disables collision
    when one is moving quickly.

    Three small caches are maintained:
      supportedVehicles[vehicle]
        true for normal road vehicles; false for boats/helicopters/planes.

      nearbyVehicles[vehicle]
        true while the vehicle is within 50 metres of the local player.

      collisionDisabled[vehicle]
        true after this script has applied anti-VDM collision changes.

    Main rule:
      If a supported nearby vehicle is travelling faster than 5.0 game speed
      units, collision is disabled. When it slows back down, collision is
      restored.

    There is also a very large Cayo bridge area where the player's current
    vehicle is made non-colliding with all other vehicles.
]]

local supportedVehicles = {}
local nearbyVehicles = {}
local collisionDisabled = {}


-- ============================================================
-- ENABLE / DISABLE COLLISION SAFELY
-- ============================================================

local function setPairCollision(
    firstEntity,
    secondEntity,
    shouldCollide
)
    if firstEntity == 0
        or secondEntity == 0 then
        return
    end

    -- For this native, false means "disable collision for this pair" and true
    -- lets normal collision resume, matching the original script's usage.
    SetEntityNoCollisionEntity(
        firstEntity,
        secondEntity,
        shouldCollide
    )

    SetEntityNoCollisionEntity(
        secondEntity,
        firstEntity,
        shouldCollide
    )
end


-- ============================================================
-- MAIN ANTI-VDM TICK
-- ============================================================

local function antiVdmTick()
    local playerPed =
        CMG.getPlayerPed()

    local playerVehicle =
        CMG.getPlayerVehicle()

    local activePlayers =
        GetActivePlayers()

    for _, vehicle
        in pairs(
            CMG.getAllVehicles()
        ) do

        if supportedVehicles[vehicle]
            and nearbyVehicles[vehicle] then

            DisableCamCollisionForEntity(
                vehicle
            )

            local movingFast =
                GetEntitySpeed(vehicle)
                > 5.0

            if movingFast
                and not collisionDisabled[
                    vehicle
                ] then

                collisionDisabled[vehicle] =
                    true

                if GetPedInVehicleSeat(
                    vehicle,
                    -1
                ) ~= 0 then

                    setPairCollision(
                        playerPed,
                        vehicle,
                        false
                    )
                end

                -- The original also prevents the LOCAL player's current
                -- vehicle from colliding with active player peds.
                for _, playerIndex
                    in pairs(activePlayers) do

                    local otherPed =
                        GetPlayerPed(
                            playerIndex
                        )

                    setPairCollision(
                        playerVehicle,
                        otherPed,
                        false
                    )
                end

            elseif not movingFast
                and collisionDisabled[
                    vehicle
                ] then

                collisionDisabled[vehicle] =
                    nil

                if GetPedInVehicleSeat(
                    vehicle,
                    -1
                ) ~= 0 then

                    setPairCollision(
                        playerPed,
                        vehicle,
                        true
                    )
                end

                for _, playerIndex
                    in pairs(activePlayers) do

                    local otherPed =
                        GetPlayerPed(
                            playerIndex
                        )

                    setPairCollision(
                        playerVehicle,
                        otherPed,
                        true
                    )
                end
            end
        end
    end
end

CMG.createThreadOnTick(
    antiVdmTick,
    "Anti VDM"
)


-- ============================================================
-- CACHE WHICH VEHICLE CLASSES ARE SUPPORTED
-- ============================================================

CreateThread(function()
    while true do
        for _, vehicle
            in pairs(
                CMG.getAllVehicles()
            ) do

            if supportedVehicles[
                vehicle
            ] == nil then

                local vehicleClass =
                    GetVehicleClass(
                        vehicle
                    )

                supportedVehicles[
                    vehicle
                ] =
                    vehicleClass ~= 14 -- boats
                    and vehicleClass ~= 15 -- helicopters
                    and vehicleClass ~= 16 -- planes
            end
        end

        Wait(250)
    end
end)


-- ============================================================
-- CACHE VEHICLES WITHIN 50 METRES
-- ============================================================

CreateThread(function()
    while true do
        local playerCoords =
            CMG.getPlayerCoords()

        for _, vehicle
            in pairs(
                CMG.getAllVehicles()
            ) do

            local distance =
                #(
                    playerCoords
                    - GetEntityCoords(vehicle)
                )

            if distance < 50.0 then
                nearbyVehicles[vehicle] =
                    true
            else
                nearbyVehicles[vehicle] =
                    nil
            end
        end

        Wait(250)
    end
end)


-- ============================================================
-- CAYO BRIDGE COLLISION AREA
-- ============================================================

local cayoBridgeCentre =
    vector3(
        2604.0,
        -4005.0,
        9.0
    )


local function cayoBridgeAntiVdmTick()
    local playerVehicle =
        CMG.getPlayerVehicle()

    if playerVehicle == 0 then
        return
    end

    if #(
        CMG.getPlayerCoords()
        - cayoBridgeCentre
    ) > 1475.0 then
        return
    end

    for _, vehicle
        in pairs(
            CMG.getAllVehicles()
        ) do

        setPairCollision(
            playerVehicle,
            vehicle,
            true
        )
    end
end


CMG.createArea(
    "cayoBridgeAntiVDM",
    cayoBridgeCentre,
    1750.0,
    25.0,
    function()
    end,
    function()
    end,
    cayoBridgeAntiVdmTick,
    {}
)
