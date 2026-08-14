--[[
    LEVEL 1 BEGINNER GUIDE — Bus
    =================================

    File: cmg/prod/client/jobs/cl_bus.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: civilian/job gameplay, specifically the Bus feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 9
      * Background threads: 1
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: CMG:onClientSpawn
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
    CMG BUS DRIVER JOB
    Beginner-Friendly Rewrite
    ================================================================

    WHAT THIS SCRIPT DOES
    ---------------------
    This is a small client-side bus driver job.

    The flow is:

        1. Player goes to the bus station.
        2. Player presses E to request a shift.
        3. Server tells this client to start the shift.
        4. Client spawns a bus.
        5. Server sends each next bus-stop location.
        6. When a stop is completed:
             - stop counter increases,
             - earnings increase,
             - bus engine is temporarily forced off,
             - all six bus doors open,
             - doors close again after 2.5 seconds.
        7. Server tells the client when the shift is complete.
        8. Bus is deleted and all local job state is reset.

    IMPORTANT
    ---------
    The event hashes below are kept EXACTLY the same as the supplied script.
    The server-side resource must listen for those same hashes.
]]

---------------------------------------------------------------------
-- 1. CONSTANTS
---------------------------------------------------------------------

-- Total number of stops shown on the HUD.
local TOTAL_STOPS = 15

-- Bus vehicle model.
local BUS_MODEL = "bus"

-- Where the job bus is spawned.
local BUS_SPAWN_COORDS =
    vector3(
        423.28366088867,
        -611.52502441406,
        28.499677658081
    )

-- Where players start the bus job.
local BUS_JOB_START_COORDS =
    vector3(
        429.52169799804,
        -587.45068359375,
        29.499813079834
    )

-- Heading used when spawning the bus.
local BUS_SPAWN_HEADING = 343

---------------------------------------------------------------------
-- 2. NETWORK EVENTS
---------------------------------------------------------------------

local EVENTS = {
    -- Server -> client: create the bus and start the shift.
    START_SHIFT = "7332a52cba",

    -- Server -> client: finish/reset the shift.
    COMPLETE_SHIFT = "3ecacefd77",

    -- Server -> client:
    -- a stop has been completed and an optional payment was earned.
    COMPLETE_STOP = "76c99145ae",

    -- Server -> client:
    -- create the marker/blip for the next bus stop.
    SET_NEXT_STOP = "ea390002ee",

    -- Client -> server:
    -- player pressed E at the bus station and wants to start.
    REQUEST_START_SHIFT = "f94f6be633",
}

---------------------------------------------------------------------
-- 3. JOB STATE
---------------------------------------------------------------------
--
-- Instead of temporaryValue.tempVehicle / temporaryValue.cashEarned etc,
-- keep everything in one clearly named table.
---------------------------------------------------------------------

local BusJob = {
    onJob = false,

    -- Current bus-stop marker.
    stopMarker = 0,

    -- Current route blip.
    stopBlip = nil,

    -- Bus spawned for this shift.
    busVehicle = 0,

    -- Present in the decompiled source even though this snippet never
    -- actually creates an object with it.
    temporaryObject = 0,

    cashEarned = 0,
    completedStops = 0,
}

---------------------------------------------------------------------
-- 4. HUD
---------------------------------------------------------------------

CMG.registerHudTimerBarProvider(
    "busJob",
    function(timerBar)
        if not BusJob.onJob then
            return
        end

        ---------------------------------------------------------
        -- MONEY EARNED
        ---------------------------------------------------------

        timerBar.push(
            "~g~EARNED:",
            "£"
                .. getMoneyStringFormatted(
                    BusJob.cashEarned
                )
        )

        ---------------------------------------------------------
        -- STOP PROGRESS
        --
        -- The original script calls this "PACKAGES" even though
        -- this is a bus-driver job. We preserve the display text.
        ---------------------------------------------------------

        timerBar.push(
            "PACKAGES:",
            tostring(
                BusJob.completedStops
            )
                .. "/"
                .. tostring(
                    TOTAL_STOPS
                )
        )
    end
)

---------------------------------------------------------------------
-- 5. SMALL CLEANUP HELPERS
---------------------------------------------------------------------

-- === HELPER FUNCTION: removeCurrentStopMarker() ===
local function removeCurrentStopMarker()
    if BusJob.stopMarker
        and BusJob.stopMarker ~= 0
    then
        tCMG.removeMarker(
            BusJob.stopMarker
        )

        BusJob.stopMarker = 0
    end
end

-- === HELPER FUNCTION: removeCurrentStopBlip() ===
local function removeCurrentStopBlip()
    if BusJob.stopBlip then
        tCMG.removeBlip(
            BusJob.stopBlip
        )

        BusJob.stopBlip = nil
    end
end

-- === HELPER FUNCTION: deleteBusVehicle() ===
local function deleteBusVehicle()
    -------------------------------------------------------------
    -- The original script deletes BOTH:
    --   1. whatever vehicle the player is currently inside
    --   2. the stored job bus
    --
    -- Those can be the same vehicle, so check existence first.
    -------------------------------------------------------------

    local playerPed =
        CMG.getPlayerPed()

    local currentVehicle =
        GetVehiclePedIsIn(
            playerPed,
            false
        )

    if currentVehicle
        and currentVehicle ~= 0
        and DoesEntityExist(currentVehicle)
    then
        DeleteVehicle(
            currentVehicle
        )
    end

    if BusJob.busVehicle
        and BusJob.busVehicle ~= 0
        and DoesEntityExist(
            BusJob.busVehicle
        )
    then
        DeleteVehicle(
            BusJob.busVehicle
        )
    end

    BusJob.busVehicle = 0
end

-- === HELPER FUNCTION: resetBusJobState() ===
local function resetBusJobState()
    removeCurrentStopMarker()
    removeCurrentStopBlip()

    BusJob.onJob = false

    BusJob.busVehicle = 0
    BusJob.temporaryObject = 0

    BusJob.cashEarned = 0
    BusJob.completedStops = 0
end

---------------------------------------------------------------------
-- 6. START SHIFT
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.START_SHIFT
)

AddEventHandler(
    EVENTS.START_SHIFT,
    function()
        ---------------------------------------------------------
        -- Tell the framework we are about to create a job vehicle.
        ---------------------------------------------------------

        CMG.requestEntitySpawn(
            "busjob"
        )

        ---------------------------------------------------------
        -- CREATE THE BUS
        ---------------------------------------------------------

        local bus =
            CMG.spawnVehicle(
                BUS_MODEL,

                BUS_SPAWN_COORDS.x,
                BUS_SPAWN_COORDS.y,
                BUS_SPAWN_COORDS.z,

                BUS_SPAWN_HEADING,

                true,
                true,
                true
            )

        BusJob.busVehicle =
            bus

        BusJob.onJob =
            true

        ---------------------------------------------------------
        -- TURN HUD ON
        ---------------------------------------------------------

        CMG.setHudTimerBarProviderActive(
            "busJob",
            true
        )

        tCMG.notify(
            "~g~Bus Job started, exit the bus station and head to the first bus stop."
        )

        ---------------------------------------------------------
        -- The original event waits until the shift ends, then
        -- disables the HUD.
        ---------------------------------------------------------

        while BusJob.onJob do
            Wait(0)
        end

        CMG.setHudTimerBarProviderActive(
            "busJob",
            false
        )
    end
)

---------------------------------------------------------------------
-- 7. COMPLETE SHIFT
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.COMPLETE_SHIFT
)

AddEventHandler(
    EVENTS.COMPLETE_SHIFT,
    function()
        tCMG.notify(
            "~g~Shift complete"
        )

        deleteBusVehicle()

        resetBusJobState()
    end
)

---------------------------------------------------------------------
-- 8. OPEN / CLOSE ALL BUS DOORS
---------------------------------------------------------------------

local function openAllBusDoors(
    vehicle
)
    if not vehicle
        or vehicle == 0
        or not DoesEntityExist(vehicle)
    then
        return
    end

    -- GTA vehicle door indices used by the source: 0 through 5.
    for doorIndex = 0, 5 do
        SetVehicleDoorOpen(
            vehicle,
            doorIndex,
            false,
            false
        )
    end
end

local function closeAllBusDoors(
    vehicle
)
    if not vehicle
        or vehicle == 0
        or not DoesEntityExist(vehicle)
    then
        return
    end

    for doorIndex = 0, 5 do
        SetVehicleDoorShut(
            vehicle,
            doorIndex,
            false
        )
    end
end

---------------------------------------------------------------------
-- 9. COMPLETE A BUS STOP
---------------------------------------------------------------------
--
-- Original event:
--
--     "76c99145ae"
--
-- Arguments:
--
--     firstArgument
--         Present in the event handler but NEVER used by this client code.
--
--     payment
--         If present, gets added to cashEarned.
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.COMPLETE_STOP
)

AddEventHandler(
    EVENTS.COMPLETE_STOP,
    function(_unusedValue, payment)
        local bus =
            BusJob.busVehicle

        ---------------------------------------------------------
        -- UPDATE HUD COUNTERS
        ---------------------------------------------------------

        BusJob.completedStops =
            BusJob.completedStops
            + 1

        if payment then
            BusJob.cashEarned =
                BusJob.cashEarned
                + payment
        end

        ---------------------------------------------------------
        -- KEEP BUS ENGINE OFF WHILE PASSENGERS ARE GETTING
        -- ON/OFF.
        --
        -- The decompiled source keeps doing this every frame until
        -- a local variable is set to nil 2.5 seconds later.
        ---------------------------------------------------------

        local keepEngineOff =
            true

        -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
        Citizen.CreateThread(
            function()
                while keepEngineOff do
                    if bus
                        and bus ~= 0
                        and DoesEntityExist(bus)
                    then
                        SetVehicleEngineOn(
                            bus,
                            false,
                            true,
                            false
                        )
                    end

                    Wait(0)
                end
            end
        )

        ---------------------------------------------------------
        -- REMOVE THE OLD STOP MARKER
        ---------------------------------------------------------

        removeCurrentStopMarker()

        ---------------------------------------------------------
        -- OPEN BUS DOORS
        ---------------------------------------------------------

        openAllBusDoors(
            bus
        )

        ---------------------------------------------------------
        -- REMOVE OLD ROUTE BLIP
        ---------------------------------------------------------

        removeCurrentStopBlip()

        ---------------------------------------------------------
        -- 2.5 SECONDS LATER:
        -- close the doors and allow the engine to run normally.
        ---------------------------------------------------------

        SetTimeout(
            2500,
            function()
                closeAllBusDoors(
                    bus
                )

                keepEngineOff =
                    false
            end
        )
    end
)

---------------------------------------------------------------------
-- 10. SET THE NEXT BUS STOP
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.SET_NEXT_STOP
)

AddEventHandler(
    EVENTS.SET_NEXT_STOP,
    function(stopCoords)
        if not stopCoords then
            return
        end

        ---------------------------------------------------------
        -- CLEAN OLD GUIDANCE FIRST
        ---------------------------------------------------------

        removeCurrentStopBlip()
        removeCurrentStopMarker()

        ---------------------------------------------------------
        -- MAP BLIP
        ---------------------------------------------------------

        BusJob.stopBlip =
            tCMG.addBlip(
                stopCoords.x,
                stopCoords.y,
                stopCoords.z,

                1,      -- blip sprite
                5,      -- colour
                nil,    -- no custom name
                1.0,
                false
            )

        SetBlipRoute(
            BusJob.stopBlip,
            true
        )

        ---------------------------------------------------------
        -- WORLD MARKER
        ---------------------------------------------------------

        BusJob.stopMarker =
            tCMG.addMarker(
                stopCoords.x,
                stopCoords.y,
                stopCoords.z - 1.0,

                2.0,
                2.0,
                1.0,

                200,
                20,
                0,
                50,

                50
            )
    end
)

---------------------------------------------------------------------
-- 11. BUS-STATION START AREA
---------------------------------------------------------------------

-- === HELPER FUNCTION: showBusStartPrompt() ===
local function showBusStartPrompt()
    drawNativeNotification(
        "Press ~INPUT_PICKUP~ to start your bus shift"
    )
end

-- === HELPER FUNCTION: onLeaveBusStartArea() ===
local function onLeaveBusStartArea()
    -- Original callback was empty.
end

-- === HELPER FUNCTION: busStartAreaTick() ===
local function busStartAreaTick()
    -------------------------------------------------------------
    -- Control 38 = INPUT_CONTEXT / E.
    -------------------------------------------------------------

    if IsControlJustReleased(
        1,
        38
    ) then
        if not BusJob.onJob then
            TriggerServerEvent(
                EVENTS.REQUEST_START_SHIFT
            )
        end
    end
end

---------------------------------------------------------------------
-- 12. CREATE BUS JOB MAP MARKERS ON CLIENT SPAWN
---------------------------------------------------------------------

AddEventHandler(
    "CMG:onClientSpawn",
    function(_userId, firstSpawn)
        ---------------------------------------------------------
        -- Original script only creates these on the first spawn.
        ---------------------------------------------------------

        if not firstSpawn then
            return
        end

        ---------------------------------------------------------
        -- PERMANENT MAP BLIP
        ---------------------------------------------------------

        tCMG.addBlip(
            BUS_JOB_START_COORDS.x,
            BUS_JOB_START_COORDS.y,
            BUS_JOB_START_COORDS.z,

            106,
            1,
            "Bus Driver Job"
        )

        ---------------------------------------------------------
        -- PERMANENT WORLD MARKER
        ---------------------------------------------------------

        tCMG.addMarker(
            BUS_JOB_START_COORDS.x,
            BUS_JOB_START_COORDS.y,
            BUS_JOB_START_COORDS.z - 1.0,

            1.0,
            1.0,
            1.0,

            255,
            0,
            0,
            70,

            50,
            39,
            false,
            false,
            true
        )

        ---------------------------------------------------------
        -- INTERACTION AREA
        ---------------------------------------------------------

        CMG.createArea(
            "bus",

            BUS_JOB_START_COORDS,

            1.5,
            6,

            showBusStartPrompt,
            onLeaveBusStartArea,
            busStartAreaTick,

            {}
        )
    end
)

---------------------------------------------------------------------
-- 13. BEGINNER WALKTHROUGH
---------------------------------------------------------------------
--
-- Start reading the script HERE if you are learning FiveM Lua.
--
--   1. Player walks into the "bus" area.
--
--   2. showBusStartPrompt()
--      Displays:
--
--          Press E to start your bus shift
--
--   3. busStartAreaTick()
--      When E is released:
--
--          TriggerServerEvent(EVENTS.REQUEST_START_SHIFT)
--
--   4. Server decides whether the shift can start.
--
--   5. Server sends:
--
--          EVENTS.START_SHIFT
--
--   6. Client spawns a bus and enables the HUD.
--
--   7. Server sends:
--
--          EVENTS.SET_NEXT_STOP
--
--      which creates a GPS route and red marker.
--
--   8. When that stop is completed the server sends:
--
--          EVENTS.COMPLETE_STOP
--
--      which:
--          * adds one completed stop,
--          * adds the payment,
--          * opens all bus doors,
--          * turns the engine off,
--          * waits 2.5 seconds,
--          * closes all doors.
--
--   9. When all work is finished the server sends:
--
--          EVENTS.COMPLETE_SHIFT
--
--      which deletes the bus and resets everything.
---------------------------------------------------------------------
