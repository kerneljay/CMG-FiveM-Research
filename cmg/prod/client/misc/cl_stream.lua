--[[
    LEVEL 1 BEGINNER GUIDE — Stream
    ====================================

    File: cmg/prod/client/misc/cl_stream.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Stream feature.

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
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: 02b1617ec9
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
    Stream File Client Helper
    =========================

    This script manages streamed files/mods that need to be loaded by the server.

    It keeps track of:
      - Files that are already activated
      - Files that have already been requested
      - Functions that should run when a streamed file finishes loading
]]

------------------------------------------------------------
-- STATE
------------------------------------------------------------

-- Files that are already active/loaded.
--
-- Example:
-- preActivatedFiles["some_file"] = true
local preActivatedFiles = {}

-- Files that we have already requested from the server.
--
-- This prevents the same file being requested multiple times.
local requestedFiles = {}

-- Functions that want to be notified when a stream file loads.
local streamFileLoadedCallbacks = {}

-- Only show the "restart required" notification once every 10 seconds.
local NOTIFICATION_COOLDOWN = 10000

-- Stores when we last showed the notification.
local lastNotificationTime = 0


------------------------------------------------------------
-- MARK A FILE AS ALREADY ACTIVATED
------------------------------------------------------------

-- === HELPER FUNCTION: CMG.setStreamFilePreActivatedClient(fileName) ===
function CMG.setStreamFilePreActivatedClient(fileName)
    preActivatedFiles[fileName] = true
end


------------------------------------------------------------
-- REQUEST A STREAM FILE
------------------------------------------------------------

-- === HELPER FUNCTION: requestStreamFile(fileName) ===
local function requestStreamFile(fileName)

    -- Don't request the same file more than once.
    if requestedFiles[fileName] then
        return
    end

    -- Remember that we've requested it.
    requestedFiles[fileName] = true


    --------------------------------------------------------
    -- CHECK IF THE PLAYER IS CURRENTLY IN A VEHICLE
    --------------------------------------------------------

    local playerPed = PlayerPedId()

    local vehicle = GetVehiclePedIsIn(
        playerPed,
        false
    )

    if vehicle ~= 0 then

        -- Convert the GTA vehicle model hash into the server's vehicle ID.
        local vehicleId = CMG.getVehicleIdFromModel(
            GetEntityModel(vehicle)
        )

        if vehicleId then

            -- Tell the server that this vehicle needs the streamed file.
            --
            -- The event hash has been left unchanged because the matching
            -- server-side event will also use this exact name.
            TriggerServerEvent(
                "02b1617ec9",
                vehicleId,
                {
                    fileName
                }
            )
        end
    end


    --------------------------------------------------------
    -- SHOW RESTART MESSAGE
    --------------------------------------------------------

    local currentTime = GetGameTimer()

    local timeSinceLastNotification =
        currentTime - lastNotificationTime

    if timeSinceLastNotification < NOTIFICATION_COOLDOWN then
        return
    end

    lastNotificationTime = currentTime

    tCMG.notify(
        "~y~This mod will be available from the next server restart."
    )
end


------------------------------------------------------------
-- PUBLIC FUNCTION: REQUEST A STREAM FILE
------------------------------------------------------------

-- === HELPER FUNCTION: CMG.requestStreamFileClient(fileName) ===
function CMG.requestStreamFileClient(fileName)

    -- Ignore invalid requests.
    if not fileName then
        return
    end

    -- If the file is already active, there is nothing to request.
    if preActivatedFiles[fileName] then
        return
    end

    requestStreamFile(fileName)
end


------------------------------------------------------------
-- REGISTER A "FILE LOADED" CALLBACK
------------------------------------------------------------

-- === HELPER FUNCTION: CMG.registerStreamFileLoadedCallback(callback) ===
function CMG.registerStreamFileLoadedCallback(callback)

    -- Save the function so another part of the streaming system
    -- can call it when a stream file finishes loading.
    table.insert(
        streamFileLoadedCallbacks,
        callback
    )
end
