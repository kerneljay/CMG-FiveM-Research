--[[
    LEVEL 1 BEGINNER GUIDE — Eod
    =================================

    File: cmg/prod/client/misc/cl_eod.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Eod feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 20
      * Background threads: 3
      * Always-running loops: 1
      * Commands: eodvisorup, eodvisordown
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
    CMG EOD Robot - Beginner-Friendly Rewrite
    ==========================================

    This file is a readable rewrite of the supplied decompiled FiveM Lua.

    WHAT THIS SCRIPT DOES
    ---------------------
    It controls an EOD (bomb-disposal) robot.

    The script can:
      - Spawn/remove the EOD robot.
      - Remotely drive the robot.
      - Open a camera attached to the robot.
      - Toggle thermal vision.
      - Toggle night vision.
      - Run an 8-second bomb-disarm sequence.
      - Activate/deactivate a water hose.
      - Synchronise explosions, hose effects and sounds between clients.
      - Provide two developer-only EOD visor commands.

    IMPORTANT
    ---------
    The network event hashes are intentionally kept EXACTLY as they appeared
    in the original file. Changing only the client event names would break
    communication with the matching server script.

    The two model hashes are also preserved exactly because the original
    decompile does not tell us their source model names.
]]

---------------------------------------------------------------------
-- MODEL CONSTANTS
---------------------------------------------------------------------

-- Vehicle model used as the EOD robot.
local EOD_ROBOT_MODEL = -537896628

-- Invisible ped placed in the driver's seat so GTA can drive the robot
-- using TaskVehicleTempAction().
local EOD_DRIVER_MODEL = -1613485779

---------------------------------------------------------------------
-- NETWORK EVENTS
---------------------------------------------------------------------

local EVENTS = {
    -- Toggle/spawn the EOD robot.
    TOGGLE_ROBOT = "6303abd345",

    -- Ask the server to create/synchronise the disarm explosion/effect.
    REQUEST_DISARM_EFFECT = "a2c6350ee0",

    -- Server tells nearby clients to create the actual explosion.
    CREATE_DISARM_EXPLOSION = "baeeded899",

    -- Start the robot's water-cannon particle effect.
    ACTIVATE_HOSE = "620bb841c2",

    -- Stop the robot's water-cannon particle effect.
    DEACTIVATE_HOSE = "c8662fcaa0",

    -- Play an EOD-related sound for nearby players.
    PLAY_NEARBY_SOUND = "879e33c266",
}

---------------------------------------------------------------------
-- CONTROL IDS
---------------------------------------------------------------------
--
-- Keeping the actual numeric control IDs makes it easy to compare this file
-- with the original decompile.
---------------------------------------------------------------------

local CONTROLS = {
    FORWARD = 172,
    BACKWARD = 173,
    LEFT = 174,
    RIGHT = 175,

    TOGGLE_CAMERA = 121,
    TOGGLE_THERMAL = 178,
    TOGGLE_NIGHT_VISION = 212,

    START_DISARM = 208,
    CANCEL_DISARM = 207,

    HOSE = 74,
}

---------------------------------------------------------------------
-- EOD ROBOT STATE
---------------------------------------------------------------------

local robot = {
    active = false,

    vehicleHandle = 0,
    driverHandle = 0,

    cameraEnabled = false,
    cameraHandle = 0,

    nightVisionEnabled = false,
    thermalEnabled = false,

    hoseEnabled = false,
}

-- True when the player has cancelled the current 8-second disarm sequence.
local disarmCancelled = false

-- Tracks entities that currently have an active hose particle effect.
--
-- Original decompile stored:
--
--     activeHoseEffects[entity] = { entity, entity }
--
-- Only the existence of the entry is actually important, so a boolean is
-- clearer.
local activeHoseEffects = {}

---------------------------------------------------------------------
-- PUBLIC HELPER
---------------------------------------------------------------------

-- Other scripts can use:
--
--     if CMG.isPlayerUsingRobot() then
--         ...
--     end
--

-- === HELPER FUNCTION: CMG.isPlayerUsingRobot() ===
function CMG.isPlayerUsingRobot()
    return robot.active
end

---------------------------------------------------------------------
-- SMALL HELPERS
---------------------------------------------------------------------

-- === HELPER FUNCTION: robotExists() ===
local function robotExists()
    return robot.vehicleHandle ~= 0
        and DoesEntityExist(robot.vehicleHandle)
end

-- === HELPER FUNCTION: driverExists() ===
local function driverExists()
    return robot.driverHandle ~= 0
        and DoesEntityExist(robot.driverHandle)
end

-- === HELPER FUNCTION: getRobotNetworkId() ===
local function getRobotNetworkId()
    if not robotExists() then
        return 0
    end

    return NetworkGetNetworkIdFromEntity(robot.vehicleHandle)
end

-- === HELPER FUNCTION: getDistanceToRobot() ===
local function getDistanceToRobot()
    if not robotExists() then
        return 0.0
    end

    local playerCoords = CMG.getPlayerCoords()
    local robotCoords = GetEntityCoords(robot.vehicleHandle)

    return #(playerCoords - robotCoords)
end

-- The original script makes the camera transition longer when the robot is
-- farther away from the player.

-- === HELPER FUNCTION: getCameraTransitionTime() ===
local function getCameraTransitionTime()
    local distance = getDistanceToRobot()

    local distanceSteps = math.ceil(distance / 10.0)

    return 500 * distanceSteps
end

---------------------------------------------------------------------
-- CAMERA
---------------------------------------------------------------------

-- === HELPER FUNCTION: disableRobotCamera() ===
local function disableRobotCamera()
    if not robot.cameraEnabled then
        return
    end

    local transitionTime = getCameraTransitionTime()

    RenderScriptCams(
        false, -- stop rendering scripted cameras
        true,  -- ease the transition
        transitionTime,
        true,
        false
    )

    ClearTimecycleModifier()

    if DoesCamExist(robot.cameraHandle) then
        DestroyCam(robot.cameraHandle, false)
    end

    robot.cameraEnabled = false
    robot.cameraHandle = 0

    -- The original only automatically disabled NIGHT VISION here.
    -- Thermal vision is left alone until manually toggled or the robot is
    -- removed, so that behaviour is preserved.
    if robot.nightVisionEnabled then
        SetNightvision(false)
        robot.nightVisionEnabled = false
    end
end

-- === HELPER FUNCTION: enableRobotCamera() ===
local function enableRobotCamera()
    if not robotExists() then
        return
    end

    robot.cameraHandle =
        CreateCam("DEFAULT_SCRIPTED_CAMERA", true)

    -- Mount the camera slightly behind and above the robot.
    AttachCamToEntity(
        robot.cameraHandle,
        robot.vehicleHandle,
        -0.3,
        0.0,
        1.2,
        true
    )

    local transitionTime = getCameraTransitionTime()

    robot.cameraEnabled = true

    RenderScriptCams(
        true,
        true,
        transitionTime,
        true,
        true
    )

    Wait(transitionTime)

    -- Give the robot camera a CCTV/scanline look.
    SetTimecycleModifier("scanline_cam_cheap")
    SetTimecycleModifierStrength(1.0)

    -------------------------------------------------------------
    -- KEEP CAMERA ROTATION MATCHED TO THE ROBOT
    -------------------------------------------------------------

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(function()
        while DoesCamExist(robot.cameraHandle) do
            Citizen.Wait(2)

            if not robotExists() then
                break
            end

            local rotation =
                GetEntityRotation(robot.vehicleHandle)

            SetCamRot(
                robot.cameraHandle,
                rotation.x,
                rotation.y,
                rotation.z,
                2
            )
        end
    end)
end

-- === HELPER FUNCTION: toggleRobotCamera() ===
local function toggleRobotCamera()
    if robot.cameraEnabled then
        disableRobotCamera()
    else
        enableRobotCamera()
    end
end

---------------------------------------------------------------------
-- THERMAL / NIGHT VISION
---------------------------------------------------------------------

-- === HELPER FUNCTION: toggleThermalVision() ===
local function toggleThermalVision()
    -- Original script only allows this while the robot camera is active.
    if not robot.cameraEnabled then
        return
    end

    robot.thermalEnabled =
        not robot.thermalEnabled

    SetSeethrough(robot.thermalEnabled)
end

-- === HELPER FUNCTION: toggleNightVision() ===
local function toggleNightVision()
    -- Original script only allows this while the robot camera is active.
    if not robot.cameraEnabled then
        return
    end

    robot.nightVisionEnabled =
        not robot.nightVisionEnabled

    SetNightvision(robot.nightVisionEnabled)
end

---------------------------------------------------------------------
-- CHAT SUGGESTION
---------------------------------------------------------------------

-- The original client file only adds the suggestion here.
-- The actual /eod command appears to be handled elsewhere and results in
-- EVENTS.TOGGLE_ROBOT being sent back to this client.
TriggerEvent(
    "chat:addSuggestion",
    "/eod",
    "Setup or remove an EOD robot."
)

---------------------------------------------------------------------
-- REMOVE / CLEAN UP THE ROBOT
---------------------------------------------------------------------

-- === HELPER FUNCTION: removeRobot() ===
local function removeRobot()
    -------------------------------------------------------------
    -- STOP HOSE IF IT IS ACTIVE
    -------------------------------------------------------------

    if robot.hoseEnabled and robotExists() then
        TriggerServerEvent(
            EVENTS.DEACTIVATE_HOSE,
            VehToNet(robot.vehicleHandle)
        )

        robot.hoseEnabled = false
    end

    Wait(500)

    robot.active = false

    -------------------------------------------------------------
    -- REMOVE INVISIBLE DRIVER
    -------------------------------------------------------------

    if driverExists() then
        DeletePed(robot.driverHandle)
    end

    robot.driverHandle = 0

    -------------------------------------------------------------
    -- REMOVE ROBOT VEHICLE
    -------------------------------------------------------------

    if robotExists() then
        SetEntityAsMissionEntity(
            robot.vehicleHandle,
            false,
            false
        )

        DeleteEntity(robot.vehicleHandle)
    end

    robot.vehicleHandle = 0

    SetModelAsNoLongerNeeded(EOD_ROBOT_MODEL)

    -------------------------------------------------------------
    -- CLEAN UP VISUAL MODES
    -------------------------------------------------------------

    if robot.thermalEnabled then
        SetSeethrough(false)
        robot.thermalEnabled = false
    end

    -- Camera cleanup was not explicitly performed inside the original
    -- remove function. Keeping it here would be a behaviour change, so the
    -- original camera cleanup path remains toggleRobotCamera().
end

---------------------------------------------------------------------
-- SPAWN THE ROBOT
---------------------------------------------------------------------

-- === HELPER FUNCTION: spawnRobot() ===
local function spawnRobot()
    -------------------------------------------------------------
    -- LOAD THE ROBOT + INVISIBLE DRIVER MODELS
    -------------------------------------------------------------

    CMG.loadModel(EOD_ROBOT_MODEL)
    CMG.loadModel(EOD_DRIVER_MODEL)

    -------------------------------------------------------------
    -- SPAWN ABOUT FOUR METRES IN FRONT OF THE PLAYER
    -------------------------------------------------------------

    local playerPed = CMG.getPlayerPed()

    local spawnCoords =
        GetOffsetFromEntityInWorldCoords(
            playerPed,
            0.0,
            4.0,
            0.0
        )

    local heading =
        GetEntityHeading(playerPed)

    -------------------------------------------------------------
    -- SPAWN THE ROBOT VEHICLE
    -------------------------------------------------------------

    CMG.requestEntitySpawn(
        "eod",
        spawnCoords
    )

    robot.vehicleHandle =
        CMG.spawnVehicle(
            EOD_ROBOT_MODEL,
            spawnCoords.x,
            spawnCoords.y,
            spawnCoords.z,
            heading,
            false
        )

    Wait(1000)

    if not robotExists() then
        return
    end

    SetEntityAsMissionEntity(
        robot.vehicleHandle,
        true,
        true
    )

    -------------------------------------------------------------
    -- CONFIGURE NETWORK SYNCHRONISATION
    -------------------------------------------------------------

    local networkId =
        NetworkGetNetworkIdFromEntity(
            robot.vehicleHandle
        )

    NetworkUseHighPrecisionBlending(
        networkId,
        true
    )

    SetNetworkIdCanMigrate(
        networkId,
        true
    )

    SetNetworkIdExistsOnAllMachines(
        networkId,
        true
    )

    -------------------------------------------------------------
    -- CREATE INVISIBLE AI DRIVER
    -------------------------------------------------------------

    CMG.requestEntitySpawn(
        "eod_ped",
        spawnCoords
    )

    robot.driverHandle =
        CreatePed(
            4,
            EOD_DRIVER_MODEL,
            spawnCoords.x,
            spawnCoords.y,
            spawnCoords.z,
            heading,
            true,
            true
        )

    if not driverExists() then
        DeleteEntity(robot.vehicleHandle)
        robot.vehicleHandle = 0
        return
    end

    SetEntityInvincible(
        robot.driverHandle,
        true
    )

    SetEntityVisible(
        robot.driverHandle,
        false,
        false
    )

    FreezeEntityPosition(
        robot.driverHandle,
        true
    )

    SetPedAlertness(
        robot.driverHandle,
        0.0
    )

    -------------------------------------------------------------
    -- PUT DRIVER INTO ROBOT
    -------------------------------------------------------------

    TaskWarpPedIntoVehicle(
        robot.driverHandle,
        robot.vehicleHandle,
        -1
    )

    while not IsPedInVehicle(
        robot.driverHandle,
        robot.vehicleHandle,
        false
    ) do
        Wait(0)
    end

    -------------------------------------------------------------
    -- STOP PLAYERS ENTERING THE ROBOT
    -------------------------------------------------------------

    SetVehicleDoorsLocked(
        robot.vehicleHandle,
        2
    )

    SetVehicleDoorsLockedForAllPlayers(
        robot.vehicleHandle,
        true
    )

    SetModelAsNoLongerNeeded(
        EOD_ROBOT_MODEL
    )

    SetModelAsNoLongerNeeded(
        EOD_DRIVER_MODEL
    )

    robot.active = true
end

---------------------------------------------------------------------
-- SERVER EVENT: TOGGLE ROBOT
---------------------------------------------------------------------

RegisterNetEvent(EVENTS.TOGGLE_ROBOT)
AddEventHandler(
    EVENTS.TOGGLE_ROBOT,
    function()
        if robot.active then
            removeRobot()
        else
            spawnRobot()
        end
    end
)

---------------------------------------------------------------------
-- BOMB DISARM SEQUENCE
---------------------------------------------------------------------

-- === HELPER FUNCTION: beginDisarmSequence() ===
local function beginDisarmSequence()

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(function()
        disarmCancelled = false

        ---------------------------------------------------------
        -- START COUNTDOWN
        ---------------------------------------------------------

        PlaySoundFrontend(
            -1,
            "5s_To_Event_Start_Countdown",
            "GTAO_FM_Events_Soundset",
            true
        )

        drawNativeNotification(
            "Press ~INPUT_FRONTEND_LT~ to cancel."
        )

        -- Original code waits 8 seconds.
        Wait(8000)

        ---------------------------------------------------------
        -- IF NOT CANCELLED, PERFORM THE DISARM EFFECT
        ---------------------------------------------------------

        if not disarmCancelled and robotExists() then
            SetEntityInvincible(
                robot.vehicleHandle,
                true
            )

            -- Effect/explosion point is two metres in front of the robot.
            local effectCoords =
                GetOffsetFromEntityInWorldCoords(
                    robot.vehicleHandle,
                    0.0,
                    2.0,
                    0.1
                )

            TriggerServerEvent(
                EVENTS.REQUEST_DISARM_EFFECT,
                effectCoords
            )

            SetVehicleFixed(
                robot.vehicleHandle
            )

            PlaySoundFrontend(
                -1,
                "Bomb_Disarmed",
                "GTAO_Speed_Convoy_Soundset",
                true
            )

            Wait(1000)

            PlaySoundFrontend(
                -1,
                "BASE_JUMP_PASSED",
                "HUD_AWARDS",
                true
            )
        end

        disarmCancelled = false
    end)
end

-- === HELPER FUNCTION: cancelDisarmSequence(showMessage) ===
local function cancelDisarmSequence(showMessage)
    disarmCancelled = true

    if showMessage then
        drawNativeNotification(
            "Explosion cancelled"
        )
    end
end

---------------------------------------------------------------------
-- NETWORK OWNERSHIP
---------------------------------------------------------------------

-- === HELPER FUNCTION: requestRobotNetworkControl() ===
local function requestRobotNetworkControl()
    if not robot.active then
        return
    end

    if driverExists()
        and not NetworkHasControlOfEntity(
            robot.driverHandle
        )
    then
        NetworkRequestControlOfEntity(
            robot.driverHandle
        )
    end

    if robotExists()
        and not NetworkHasControlOfEntity(
            robot.vehicleHandle
        )
    then
        NetworkRequestControlOfEntity(
            robot.vehicleHandle
        )
    end
end

---------------------------------------------------------------------
-- DISABLE NORMAL PLAYER CONTROLS USED TO DRIVE THE ROBOT
---------------------------------------------------------------------

-- === HELPER FUNCTION: disableRobotDrivingControls() ===
local function disableRobotDrivingControls()
    DisableControlAction(0, CONTROLS.FORWARD, true)
    DisableControlAction(1, CONTROLS.FORWARD, true)

    DisableControlAction(0, 300, true)

    DisableControlAction(0, 27, true)
    DisableControlAction(1, 27, true)

    DisableControlAction(0, 188, true)
    DisableControlAction(1, 188, true)
end

---------------------------------------------------------------------
-- REMOTE DRIVING
---------------------------------------------------------------------
--
-- The original decompiler repeated this entire block twice and used goto
-- labels just to skip one "stop" action.
--
-- This helper contains the same individual movement cases in normal Lua.
---------------------------------------------------------------------

-- === HELPER FUNCTION: driveRobot() ===
local function driveRobot()
    if not robot.active
        or not robotExists()
        or not driverExists()
    then
        return
    end

    local forward =
        IsDisabledControlPressed(
            0,
            CONTROLS.FORWARD
        )

    local backward =
        IsControlPressed(
            0,
            CONTROLS.BACKWARD
        )

    local left =
        IsControlPressed(
            0,
            CONTROLS.LEFT
        )

    local right =
        IsControlPressed(
            0,
            CONTROLS.RIGHT
        )

    -------------------------------------------------------------
    -- FORWARD
    -------------------------------------------------------------

    if forward and not backward then
        TaskVehicleTempAction(
            robot.driverHandle,
            robot.vehicleHandle,
            9,
            1
        )
    end

    -------------------------------------------------------------
    -- STOP WHEN FORWARD/BACK IS RELEASED
    -------------------------------------------------------------

    local releasedForward =
        IsDisabledControlJustReleased(
            0,
            CONTROLS.FORWARD
        )

    local releasedBackward =
        IsControlJustReleased(
            0,
            CONTROLS.BACKWARD
        )

    if releasedForward or releasedBackward then
        TaskVehicleTempAction(
            robot.driverHandle,
            robot.vehicleHandle,
            6,
            2500
        )
    end

    -------------------------------------------------------------
    -- BACKWARDS
    -------------------------------------------------------------

    if backward and not forward then
        TaskVehicleTempAction(
            robot.driverHandle,
            robot.vehicleHandle,
            22,
            1
        )
    end

    -------------------------------------------------------------
    -- TURN WHILE REVERSING
    -------------------------------------------------------------

    if left and backward then
        TaskVehicleTempAction(
            robot.driverHandle,
            robot.vehicleHandle,
            13,
            1
        )
    end

    if right and backward then
        TaskVehicleTempAction(
            robot.driverHandle,
            robot.vehicleHandle,
            14,
            1
        )
    end

    -------------------------------------------------------------
    -- FORWARD + BACKWARD TOGETHER
    -------------------------------------------------------------

    if forward and backward then
        TaskVehicleTempAction(
            robot.driverHandle,
            robot.vehicleHandle,
            30,
            100
        )
    end

    -------------------------------------------------------------
    -- TURN WHILE MOVING FORWARD
    -------------------------------------------------------------

    if left and forward then
        TaskVehicleTempAction(
            robot.driverHandle,
            robot.vehicleHandle,
            7,
            1
        )
    end

    if right and forward then
        TaskVehicleTempAction(
            robot.driverHandle,
            robot.vehicleHandle,
            8,
            1
        )
    end

    -------------------------------------------------------------
    -- TURN ON THE SPOT
    -------------------------------------------------------------

    if left
        and not forward
        and not backward
    then
        TaskVehicleTempAction(
            robot.driverHandle,
            robot.vehicleHandle,
            4,
            1
        )
    end

    if right
        and not forward
        and not backward
    then
        TaskVehicleTempAction(
            robot.driverHandle,
            robot.vehicleHandle,
            5,
            1
        )
    end
end

---------------------------------------------------------------------
-- CAMERA / DISARM HOTKEYS
---------------------------------------------------------------------

local function handleRobotFeatureControls(
    showCancelMessage
)
    -------------------------------------------------------------
    -- CAMERA
    -------------------------------------------------------------

    if IsControlJustPressed(
        0,
        CONTROLS.TOGGLE_CAMERA
    ) then
        toggleRobotCamera()
    end

    -------------------------------------------------------------
    -- THERMAL
    -------------------------------------------------------------

    if IsControlJustPressed(
        0,
        CONTROLS.TOGGLE_THERMAL
    ) then
        toggleThermalVision()
    end

    -------------------------------------------------------------
    -- NIGHT VISION
    -------------------------------------------------------------

    if IsControlJustPressed(
        0,
        CONTROLS.TOGGLE_NIGHT_VISION
    ) then
        toggleNightVision()
    end

    -------------------------------------------------------------
    -- START DISARM
    -------------------------------------------------------------

    if IsControlJustPressed(
        0,
        CONTROLS.START_DISARM
    ) then
        beginDisarmSequence()
    end

    -------------------------------------------------------------
    -- CANCEL DISARM
    -------------------------------------------------------------

    if IsControlJustPressed(
        0,
        CONTROLS.CANCEL_DISARM
    ) then
        cancelDisarmSequence(
            showCancelMessage
        )
    end
end

---------------------------------------------------------------------
-- WATER HOSE
---------------------------------------------------------------------

-- === HELPER FUNCTION: startRobotHose() ===
local function startRobotHose()
    if robot.hoseEnabled
        or not robotExists()
    then
        return
    end

    robot.hoseEnabled = true

    PlaySoundFrontend(
        -1,
        "EDIT",
        "HUD_DEATHMATCH_SOUNDSET",
        true
    )

    TriggerServerEvent(
        EVENTS.ACTIVATE_HOSE,
        getRobotNetworkId()
    )

    -------------------------------------------------------------
    -- KEEP DRIVING AVAILABLE WHILE THE HOSE BUTTON IS HELD
    -------------------------------------------------------------

    while robot.active and robot.hoseEnabled do
        -- The original stops the hose when this button is released.
        if IsControlJustReleased(
            1,
            CONTROLS.HOSE
        ) then
            break
        end

        disableRobotDrivingControls()
        driveRobot()

        -- In the original inner loop, cancelling a disarm does not show the
        -- "Explosion cancelled" message.
        handleRobotFeatureControls(false)

        Wait(0)
    end

    -------------------------------------------------------------
    -- TELL OTHER CLIENTS TO REMOVE THE PARTICLE EFFECT
    -------------------------------------------------------------

    if robot.hoseEnabled then
        TriggerServerEvent(
            EVENTS.DEACTIVATE_HOSE,
            getRobotNetworkId()
        )

        robot.hoseEnabled = false
    end
end

---------------------------------------------------------------------
-- MAIN EOD CONTROL LOOP
---------------------------------------------------------------------

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    while true do
        if robot.active then
            -----------------------------------------------------
            -- NETWORK OWNERSHIP / RANGE
            -----------------------------------------------------

            local distance =
                getDistanceToRobot()

            if distance <= 1000.0 then
                requestRobotNetworkControl()
            else
                -- If the player goes more than 1 km away, stop the robot.
                if driverExists() and robotExists() then
                    TaskVehicleTempAction(
                        robot.driverHandle,
                        robot.vehicleHandle,
                        6,
                        2500
                    )
                end
            end

            -----------------------------------------------------
            -- DRIVE ROBOT
            -----------------------------------------------------

            disableRobotDrivingControls()
            driveRobot()

            -----------------------------------------------------
            -- CAMERA / VISION / DISARM
            -----------------------------------------------------

            handleRobotFeatureControls(true)

            -----------------------------------------------------
            -- WATER HOSE
            -----------------------------------------------------

            if not robot.hoseEnabled
                and IsControlPressed(
                    1,
                    CONTROLS.HOSE
                )
            then
                startRobotHose()
            end
        end

        Wait(0)
    end
end)

---------------------------------------------------------------------
-- SERVER EVENT: CREATE DISARM EXPLOSION
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.CREATE_DISARM_EXPLOSION
)

AddEventHandler(
    EVENTS.CREATE_DISARM_EXPLOSION,
    function(coords)
        local playerCoords =
            CMG.getPlayerCoords()

        local distance =
            #(coords - playerCoords)

        -- Only create the effect for players close enough to see/hear it.
        if distance < 150.0 then
            AddOwnedExplosion(
                CMG.getPlayerPed(),
                coords.x,
                coords.y,
                coords.z,

                4,      -- explosion type
                17.0,   -- damage scale
                true,   -- audible
                false,  -- invisible?
                6.0
            )
        end
    end
)

---------------------------------------------------------------------
-- SERVER EVENT: ACTIVATE HOSE PARTICLE EFFECT
---------------------------------------------------------------------

RegisterNetEvent(EVENTS.ACTIVATE_HOSE)

AddEventHandler(
    EVENTS.ACTIVATE_HOSE,
    function(robotNetworkId)
        ---------------------------------------------------------
        -- RESOLVE NETWORK ID INTO THE LOCAL ROBOT ENTITY
        ---------------------------------------------------------

        local robotEntity =
            CMG.getObjectId(
                robotNetworkId,
                "eodActivateHose"
            )

        if not robotEntity then
            return
        end

        activeHoseEffects[robotEntity] = true

        ---------------------------------------------------------
        -- LOAD PARTICLE EFFECT
        ---------------------------------------------------------

        CMG.loadPtfx("core")

        UseParticleFxAsset("core")

        SetParticleFxShootoutBoat(1)

        local particleHandle =
            StartParticleFxLoopedOnEntity(
                "water_cannon_jet",
                robotEntity,

                -- Position offset
                0.0,
                0.19,
                1.1,

                -- Rotation
                0.0,
                0.0,
                -0.7,

                -- Scale
                0.7,

                false,
                false,
                false
            )

        ---------------------------------------------------------
        -- KEEP IT ACTIVE UNTIL DEACTIVATE_HOSE REMOVES THE ENTRY
        ---------------------------------------------------------

        while activeHoseEffects[robotEntity] do
            Wait(100)
        end

        StopParticleFxLooped(
            particleHandle,
            false
        )

        RemoveNamedPtfxAsset("core")
    end
)

---------------------------------------------------------------------
-- SERVER EVENT: DEACTIVATE HOSE PARTICLE EFFECT
---------------------------------------------------------------------

RegisterNetEvent(EVENTS.DEACTIVATE_HOSE)

AddEventHandler(
    EVENTS.DEACTIVATE_HOSE,
    function(robotNetworkId)
        local robotEntity =
            CMG.getObjectId(
                robotNetworkId,
                "eodDeactivateHose"
            )

        if not robotEntity then
            return
        end

        activeHoseEffects[robotEntity] = nil
    end
)

---------------------------------------------------------------------
-- SERVER EVENT: PLAY EOD SOUND NEARBY
---------------------------------------------------------------------

RegisterNetEvent(EVENTS.PLAY_NEARBY_SOUND)

AddEventHandler(
    EVENTS.PLAY_NEARBY_SOUND,
    function(coords, soundName, soundSet)
        local distance =
            #(coords - CMG.getPlayerCoords())

        if distance < 30.0 then
            PlaySoundFrontend(
                -1,
                soundName,
                soundSet,
                true
            )
        end
    end
)

---------------------------------------------------------------------
-- DEVELOPER-ONLY EOD VISOR COMMANDS
---------------------------------------------------------------------
--
-- These appear to swap between two helmet/visor prop variants.
---------------------------------------------------------------------

RegisterCommand(
    "eodvisorup",
    function()
        local userId =
            CMG.getClientUserId()

        if not userId then
            return
        end

        if not CMG.isDeveloper(userId) then
            return
        end

        SetPedPropIndex(
            PlayerPedId(),
            0,
            191,
            0,
            true
        )
    end,
    false
)

RegisterCommand(
    "eodvisordown",
    function()
        local userId =
            CMG.getClientUserId()

        if not userId then
            return
        end

        if not CMG.isDeveloper(userId) then
            return
        end

        SetPedPropIndex(
            PlayerPedId(),
            0,
            190,
            0,
            true
        )
    end,
    false
)
