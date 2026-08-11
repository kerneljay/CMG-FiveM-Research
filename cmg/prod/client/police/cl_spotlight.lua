--[[
    LEVEL 1 BEGINNER GUIDE — Spotlight
    =======================================

    File: cmg/prod/client/police/cl_spotlight.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Spotlight feature.

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
      * Background threads: 1
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: spotlight:syncSpotlights
      * Local event handlers: none found by static scan
      * Server events sent: spotlight:syncSpotlights, spotlight:toggleSpotlight, spotlight:updateSpotlight
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
    Networked Vehicle Spotlight
    ===========================

    /spotlight toggles a spotlight for the vehicle the player is currently in.

    The SERVER owns the shared spotlight list.

    spotlight:syncSpotlights(list)
      Replaces the local list.

    Each list entry is:
      {
          vehicleNetworkId,
          {directionX, directionY, directionZ}
      }

    spotlight:toggleSpotlight(netId, direction)
      Add/remove a vehicle spotlight.

    spotlight:updateSpotlight(index, direction)
      Updates the shared direction while the local player aims it.

    Controls while sitting in the spotlight vehicle:
      127 / 126 -> move beam vertically
      124 / 125 -> move beam horizontally

    The beam is drawn every frame with DrawSpotLight.

    The decompiled file contains a permission-check flag initialised to false;
    therefore its optional emergency-vehicle-class restriction is inactive by
    default. That behaviour is preserved.
]]

local COMMAND_NAME = "spotlight"

local restrictToEmergencyVehicleClass =
    false

local spotlights = {}

local lastNetworkUpdateAt = 0
local lastForwardX = 0.0


-- ============================================================
-- HELP TEXT
-- ============================================================

-- === HELPER FUNCTION: DisplayHelp(text) ===
function DisplayHelp(text)
    BeginTextCommandDisplayHelp(
        "STRING"
    )

    AddTextComponentSubstringPlayerName(
        text
    )

    EndTextCommandDisplayHelp(
        0,
        false,
        true,
        -1
    )
end


local function findSpotlightIndex(
    vehicleNetworkId
)
    for index, data
        in ipairs(spotlights) do

        if data[1]
            == vehicleNetworkId then
            return index
        end
    end

    return false
end


-- ============================================================
-- SERVER SYNC
-- ============================================================

RegisterNetEvent(
    "spotlight:syncSpotlights",
    function(serverSpotlights)
        spotlights =
            serverSpotlights
            or {}
    end
)


-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    TriggerServerEvent(
        "spotlight:syncSpotlights"
    )
end)


-- ============================================================
-- TOGGLE COMMAND
-- ============================================================

RegisterCommand(
    COMMAND_NAME,
    function()
        local playerPed =
            CMG.getPlayerPed()

        local vehicle =
            GetVehiclePedIsIn(
                playerPed,
                false
            )

        if not IsPedInAnyVehicle(
            playerPed,
            false
        ) then
            notify(
                "~y~You are not in a vehicle."
            )
            return
        end

        if restrictToEmergencyVehicleClass
            and GetVehicleClass(vehicle)
                ~= 18 then

            notify(
                "~r~Invalid permissions."
            )
            return
        end

        local networkId =
            VehToNet(vehicle)

        local forward =
            GetEntityForwardVector(
                vehicle
            )

        TriggerServerEvent(
            "spotlight:toggleSpotlight",
            networkId,
            {
                forward.x,
                forward.y,
                forward.z
            }
        )

        if findSpotlightIndex(
            networkId
        ) == false then

            notify(
                "Spotlight toggled ~g~on~w~."
            )
        else
            notify(
                "Spotlight toggled ~r~off~w~."
            )

            Wait(300)

            DisplayHelp(
                "Spotlight is ~r~off~w~."
            )
        end
    end,
    false
)


-- ============================================================
-- DRAW / AIM NETWORKED SPOTLIGHTS
-- ============================================================

-- === HELPER FUNCTION: spotlightTick() ===
local function spotlightTick()
    for listIndex, data
        in ipairs(spotlights) do

        local playerPed =
            CMG.getPlayerPed()

        local vehicle =
            CMG.getObjectId(
                data[1],
                "spotlightThread"
            )

        if vehicle then
            local driverDoorBone =
                GetEntityBoneIndexByName(
                    vehicle,
                    "door_dside_f"
                )

            local windscreenBone =
                GetEntityBoneIndexByName(
                    vehicle,
                    "windscreen"
                )

            local doorPosition =
                GetWorldPositionOfEntityBone(
                    vehicle,
                    driverDoorBone
                )

            local windscreenPosition =
                GetWorldPositionOfEntityBone(
                    vehicle,
                    windscreenBone
                )

            local direction =
                vector3(
                    data[2][1],
                    data[2][2],
                    data[2][3]
                )

            if not NetworkDoesEntityExistWithNetworkId(
                data[1]
            ) then

                TriggerServerEvent(
                    "spotlight:toggleSpotlight",
                    data[1],
                    {0, 0, 0}
                )

                return
            end

            -- Only the player inside this specific vehicle can aim its light.
            if GetVehiclePedIsIn(
                playerPed,
                false
            ) == vehicle then

                local horizontalAdjust =
                    0.0

                local verticalAdjust =
                    0.0

                local forward =
                    GetEntityForwardVector(
                        vehicle
                    )

                local heading =
                    GetEntityHeading(
                        vehicle
                    )

                if IsControlPressed(
                    0,
                    127
                ) then
                    verticalAdjust =
                        verticalAdjust
                        + 0.1
                end

                if IsControlPressed(
                    0,
                    126
                ) then
                    verticalAdjust =
                        verticalAdjust
                        - 0.1
                end

                if IsControlPressed(
                    0,
                    124
                ) then

                    if heading >= 180
                        and heading <= 365 then

                        horizontalAdjust =
                            horizontalAdjust
                            + 0.1
                    else
                        horizontalAdjust =
                            horizontalAdjust
                            - 0.1
                    end
                end

                if IsControlPressed(
                    0,
                    125
                ) then

                    if heading >= 180
                        and heading <= 365 then

                        horizontalAdjust =
                            horizontalAdjust
                            - 0.1
                    else
                        horizontalAdjust =
                            horizontalAdjust
                            + 0.1
                    end
                end

                local now =
                    GetGameTimer()

                if now
                    - lastNetworkUpdateAt
                    >= 500 then

                    local directionChanged =
                        horizontalAdjust ~= 0.0
                        or verticalAdjust ~= 0.0
                        or lastForwardX
                            ~= forward.x

                    if directionChanged then
                        TriggerServerEvent(
                            "spotlight:updateSpotlight",
                            listIndex,
                            {
                                forward.x,
                                direction.y
                                    + horizontalAdjust,
                                direction.z
                                    + verticalAdjust
                            }
                        )

                        lastNetworkUpdateAt =
                            now

                        lastForwardX =
                            forward.x
                    end
                end

                DisplayHelp(
                    "Spotlight is ~g~on~w~."
                )
            end

            -- The origin combines the driver's-door X/Z with the windscreen Y,
            -- exactly as the original client did.
            DrawSpotLight(
                doorPosition.x,
                windscreenPosition.y,
                doorPosition.z,
                direction.x,
                direction.y,
                direction.z,
                221,
                221,
                221,
                70.0,
                50.0,
                4.3,
                25.0,
                28.6
            )
        end
    end
end


CMG.createThreadOnTick(
    spotlightTick,
    "Car Spotlight"
)
