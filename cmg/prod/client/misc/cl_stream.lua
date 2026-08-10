--[[
    BEGINNER GUIDE — Stream
    =======================

    File: cmg/prod/client/misc/cl_stream.lua
    Purpose: This file contains general gameplay utility.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Network/hash identifiers found: 1
      They are intentionally left unchanged because matching server code may use them.
      * 02b1617ec9

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

function CMG.setStreamFilePreActivatedClient(fileName)
    preActivatedFiles[fileName] = true
end


------------------------------------------------------------
-- REQUEST A STREAM FILE
------------------------------------------------------------

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

function CMG.registerStreamFileLoadedCallback(callback)

    -- Save the function so another part of the streaming system
    -- can call it when a stream file finishes loading.
    table.insert(
        streamFileLoadedCallbacks,
        callback
    )
end