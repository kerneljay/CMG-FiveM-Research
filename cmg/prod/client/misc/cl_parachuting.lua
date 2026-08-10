--[[
    Paid Parachuting Activity
    =========================

    There are two parachuting purchase markers:
      * LSIA area
      * VIP Island area

    Cost: £5,000 (validated/charged by server callback 49e51ddb66).

    Flow:
      1. Stand at a marker and press E.
      2. Player must be allowed to animate and have no combat timer.
      3. Server callback approves the £5,000 activity.
      4. The player receives a parachute and fades out.
      5. They are moved about 1000 metres above their current position.
      6. A non-colliding helicopter prop is created ~1002.5m above and moves
         forward for 30 seconds as scenery.
      7. Player fades in and receives temporary damage proofs.
      8. While parachute-freefalling, the client applies a gentle force until
         the ped collides/lands.
      9. Three seconds later normal damage proofs are restored.

    Hash-looking callback name is deliberately unchanged.
]]

local parachutingActive = false

local HELICOPTER_MODEL = -1746576111
local PARACHUTE_WEAPON = -72657034


-- ============================================================
-- MOVING SCENERY HELICOPTER
-- ============================================================

local function createMovingHelicopter(
    position,
    heading
)
    CMG.loadModel(
        HELICOPTER_MODEL
    )

    local helicopter =
        CreateVehicle(
            HELICOPTER_MODEL,
            position.x,
            position.y,
            position.z,
            heading,
            false,
            false
        )

    CMG.initLocalVehicle(
        helicopter
    )

    SetVehicleEngineOn(
        helicopter,
        true,
        true,
        false
    )

    SetHeliBladesFullSpeed(
        helicopter
    )

    FreezeEntityPosition(
        helicopter,
        true
    )

    SetEntityCollision(
        helicopter,
        false,
        false
    )

    SetModelAsNoLongerNeeded(
        HELICOPTER_MODEL
    )

    local startedAt =
        GetGameTimer()

    while GetGameTimer()
        - startedAt
        < 30000 do

        local coords =
            GetEntityCoords(
                helicopter,
                true
            )

        coords =
            coords
            + GetEntityForwardVector(
                helicopter
            )
                * GetFrameTime()
                * 60.0

        SetEntityCoordsNoOffset(
            helicopter,
            coords.x,
            coords.y,
            coords.z,
            true,
            false,
            false
        )

        Citizen.Wait(0)
    end

    DeleteEntity(
        helicopter
    )
end


-- ============================================================
-- START PARACHUTING
-- ============================================================

local function startParachuting()
    if parachutingActive then
        return
    end

    parachutingActive = true

    Citizen.CreateThread(function()
        local playerPed =
            CMG.getPlayerPed()

        GiveWeaponToPed(
            playerPed,
            PARACHUTE_WEAPON,
            0,
            false,
            false
        )

        DoScreenFadeOut(3000)

        while not IsScreenFadedOut() do
            Wait(0)
        end

        local originalCoords =
            GetEntityCoords(
                CMG.getPlayerPed()
            )

        SetEntityCoords(
            CMG.getPlayerPed(),
            originalCoords.x,
            originalCoords.y,
            originalCoords.z
                + 1000.0,
            false,
            false,
            false,
            false
        )

        Citizen.CreateThread(function()
            createMovingHelicopter(
                originalCoords
                    + vector3(
                        0.0,
                        0.0,
                        1002.5
                    ),
                GetEntityHeading(
                    PlayerPedId()
                )
            )
        end)

        DoScreenFadeIn(2000)

        Wait(2000)

        SetEntityProofs(
            CMG.getPlayerPed(),
            true,
            true,
            true,
            true,
            true,
            false,
            false,
            false
        )

        while parachutingActive do
            local ped =
                CMG.getPlayerPed()

            if IsPedInParachuteFreeFall(
                ped
            ) then
                if not HasEntityCollidedWithAnything(
                    ped
                ) then

                    ApplyForceToEntity(
                        ped,
                        1,
                        0.0,
                        200.0,
                        2.5,
                        0.0,
                        0.0,
                        0.0,
                        0,
                        true,
                        false,
                        false,
                        false,
                        true
                    )
                end
            else
                parachutingActive =
                    false
            end

            Wait(0)
        end

        Wait(3000)

        SetEntityProofs(
            CMG.getPlayerPed(),
            false,
            false,
            false,
            false,
            false,
            false,
            false,
            false
        )
    end)
end


-- ============================================================
-- WORLD MARKERS
-- ============================================================

local parachuteLocations = {
    vector3(
        -753.74310302734,
        -1510.6815185547,
        5.0141487121582
    ),

    vector3(
        -2164.2592773438,
        5140.615234375,
        2.82568359375
    )
}


AddEventHandler(
    "CMG:onClientSpawn",
    function(_, firstSpawn)
        if not firstSpawn then
            return
        end

        local function onEnter()
            drawNativeNotification(
                "Press ~INPUT_PICKUP~ to go parachuting! (£5,000)"
            )
        end

        local function whileInside()
            if not IsControlJustPressed(
                1,
                51
            ) then
                return
            end

            if not tCMG.canAnim()
                or CMG.getPlayerCombatTimer()
                    ~= 0 then
                return
            end

            local approved =
                CMG.TriggerServerCallback(
                    "49e51ddb66",
                    5000,
                    "parachuting"
                )

            if approved then
                startParachuting()
            end
        end

        for index, coords
            in pairs(
                parachuteLocations
            ) do

            CMG.createArea(
                "parachute_"
                    .. tostring(index),
                coords,
                1.5,
                6,
                onEnter,
                function()
                end,
                whileInside
            )

            tCMG.addMarker(
                coords.x,
                coords.y,
                coords.z,
                1.0,
                1.0,
                1.0,
                255,
                0,
                0,
                170,
                50,
                40,
                false,
                false,
                true
            )
        end
    end
)
