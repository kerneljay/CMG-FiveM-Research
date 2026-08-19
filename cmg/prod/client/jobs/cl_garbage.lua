--[[
    LEVEL 1 BEGINNER GUIDE — Garbage
    =====================================

    File: cmg/prod/client/jobs/cl_garbage.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: civilian/job gameplay, specifically the Garbage feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 51
      * Background threads: 1
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_garbage

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    IMPORTANT — decompiler temporary names have been normalized for readability.
      Names like temporaryValue12, temporaryText4, temporaryTable7, stateFlag3, temporaryCmgCall2,
      localValue1/localValue2, or flow_label_* are NOT meaningful original developer names.
      A decompiler invented them while rebuilding source code.

      For a beginner, read the API call on the right-hand side first.
      Example:
        temporaryValue = GetEntityCoords
        temporaryTable2 = temporaryValue(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      Temporary variables use conservative plain-English fallback names.
      Decompiled code can reuse one temporary for several purposes, so API calls
      and nearby comments explain the exact role at each point.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
--[[
    CMG GARBAGE JOB
    Beginner-Friendly Rewrite / Learning Version
    ================================================================

    WHAT THIS SCRIPT DOES
    ---------------------
    This is the client-side logic for the Garbage job.

    In plain English, it handles:

      1. Garbage crew/lobby UI.
      2. Starting and ending a garbage run.
      3. Spawning the garbage truck for the crew leader.
      4. Showing the truck and route on the map.
      5. Picking rubbish bags up from route stops.
      6. Carrying one bag, or two with the dual-bag skill.
      7. Opening the truck's rear doors.
      8. Throwing bags into the truck.
      9. Counting completed bags on the HUD.
     10. Returning to the depot and finishing the run.
     11. Garbage XP / levels / leaderboard UI.
     12. A developer tool for tuning where the second bag sits on the ped.

    IMPORTANT
    ---------
    This is a readability / learning rewrite.

    The matching file:

        garbage_job_full_cleaned_reference.lua

    is the cleaned decompiled reference.  Use that when you need to compare
    exact event arguments, tiny timing details, or unusual framework-specific
    behaviour.

    All hashed network event strings from the source are preserved.
]]

---------------------------------------------------------------------
-- 1. CONFIG
---------------------------------------------------------------------

local GarbageConfig =
    CMG.loadModule("cfg/cfg_garbage")

---------------------------------------------------------------------
-- 2. CONSTANTS
---------------------------------------------------------------------

local CARRY_MOVE_CLIPSET =
    "clipset@move@trash_fast_turn"

-- The original decompile only gives us the weapon hash.
-- It is used as a temporary invisible/utility carry weapon while holding bags.
local CARRY_WEAPON_HASH =
    -499989876

local THROW_ANIM_DICT =
    "anim@heists@narcotics@trash"

local THROW_ANIM_NAME =
    "throw_b"

local SECOND_BAG_REBUILD_DELAY_MS =
    1000

local DEV_PREVIEW_BAG_A =
    "__garbageDevSecondBagPreviewA"

local DEV_PREVIEW_BAG_B =
    "__garbageDevSecondBagPreviewB"

local BAG_BLIP_SPRITE = 1
local BAG_BLIP_COLOUR = 2
local BAG_BLIP_SCALE = 0.4

local DEFAULT_TRUCK_MODEL =
    GarbageConfig.vehicleModel
    or "trash"

local MALE_FREEMODE_MODEL =
    1885233650

local FEMALE_FREEMODE_MODEL =
    -1667301416

---------------------------------------------------------------------
-- 3. NETWORK / LOCAL EVENT NAMES
---------------------------------------------------------------------
--
-- The readable names are ours.
-- The actual strings are kept exactly as the original resource expects.
---------------------------------------------------------------------

local EVENTS = {
    -------------------------------------------------------------
    -- Server -> client
    -------------------------------------------------------------

    SHOW_NOTIFICATION =
        "db020b65e8",

    SET_WAYPOINT =
        "1d86e687ab",

    UPDATE_LOBBY =
        "7718048412",

    PLAYER_SEARCH_RESULT =
        "c77105f3b9",

    START_RUN =
        "2e2d0ea5c2",

    UPDATE_RUN_STATE =
        "ee96587e34",

    CLEAR_LOCAL_CARRY =
        "1329895e80",

    BAG_PICKUP_CONFIRMED =
        "7831bf8fd7",

    BAG_DEPOSIT_REJECTED =
        "4dbbfeac16",

    BAG_DEPOSIT_CONFIRMED =
        "a83262be3d",

    RUN_ENDED =
        "39aecce185",

    LEVEL_STATE_RESULT =
        "3bc5672b8b",

    LEVEL_LIST_RESULT =
        "6d46ba943e",

    LEADERBOARD_RESULT =
        "0a2c254e81",

    -------------------------------------------------------------
    -- Client -> server
    -------------------------------------------------------------

    REGISTER_JOB_TRUCK =
        "310ffe3e16",

    PICK_UP_BAG =
        "9e8d96cc9c",

    DEPOSIT_BAG =
        "7c0e7a5e52",

    TRY_FINISH_RUN =
        "68fb560f23",

    REPORT_MISSING_TRUCK =
        "1f25b4012c",

    REQUEST_LOBBY_SYNC =
        "d910ec8d2b",

    REQUEST_LEVEL_STATE =
        "5a26a83e7a",

    REQUEST_LEVEL_LIST =
        "8cf6517ad0",

    REQUEST_LEADERBOARD =
        "61205eda19",

    SEARCH_PLAYERS =
        "c6f9287679",

    INVITE_PLAYER =
        "6d3d0c15d7",

    CANCEL_INVITE =
        "d04aa06a5b",

    ACCEPT_INVITE =
        "591788a528",

    DECLINE_INVITE =
        "63dda5a020",

    KICK_MEMBER =
        "c36f68cd71",

    LEAVE_LOBBY =
        "4c2815f98d",

    SET_SHARE_JOB_XP =
        "666c4f5c3d",

    SET_SELECTED_TRUCK =
        "1f81077eaf",

    START_RUN_REQUEST =
        "d18cb8b1e2",

    CANCEL_RUN_REQUEST =
        "98a1b940a5",

    -------------------------------------------------------------
    -- Can be handled locally if we own the entity, otherwise server.
    -------------------------------------------------------------

    SET_VEHICLE_LOCK =
        "126d6c2d61",

    -------------------------------------------------------------
    -- Framework local event: player job changed.
    -------------------------------------------------------------

    JOB_CHANGED =
        "a68d3374be",
}

---------------------------------------------------------------------
-- 4. VEHICLE DECOR KEYS
---------------------------------------------------------------------
--
-- These LOOK like event hashes, but in this script they are vehicle decorators.
---------------------------------------------------------------------

local DECOR = {
    OWNER_USER_ID =
        "ac76c9d452",

    GARAGE_UUID =
        "0a6cf607ed",
}

---------------------------------------------------------------------
-- 5. JOB SESSION STATE
---------------------------------------------------------------------
--
-- This table is the main "memory" for the current garbage run.
---------------------------------------------------------------------

local GarbageJob = {
    active = false,

    sessionId = nil,

    leaderUserId = nil,
    isLeader = false,

    routeIndex = nil,
    stopIndex = nil,

    -- Expected phases in the source:
    --
    --   "stops"  = collect bags
    --   "return" = return truck to depot
    phase = nil,

    -------------------------------------------------------------
    -- Bag state
    -------------------------------------------------------------

    -- ["stop_bag"] = true
    deposited = {},

    -- Every bag currently being carried by ANY crew member according to server.
    carryingBagKeys = {},

    -- Ordered bag keys carried by THIS client.
    localCarryKeys = {},

    -- Convenience: first carried bag.
    carryingKey = nil,

    -------------------------------------------------------------
    -- Truck state
    -------------------------------------------------------------

    truckNetId = nil,
    truckEntity = 0,

    truckSpawnPoint = nil,

    truckGarageUuid = nil,
    truckVehicleMods = nil,

    truckVehicleId =
        DEFAULT_TRUCK_MODEL,

    -------------------------------------------------------------
    -- Payment / route UI
    -------------------------------------------------------------

    payPerBag = 0,

    stopBlip = 0,

    baseBlip = 0,

    baseDepotMarkerId = nil,

    depotReturnGuidanceDone = false,

    -------------------------------------------------------------
    -- Carried bag props
    -------------------------------------------------------------

    carryObject = 0,
    carryObject2 = 0,

    -------------------------------------------------------------
    -- Deposit animation
    -------------------------------------------------------------

    depositInProgress = false,

    pendingDepositThrownEnt = 0,

    throwStartedWithDualCarry = false,

    -------------------------------------------------------------
    -- Truck guidance
    -------------------------------------------------------------

    truckJobBlip = 0,
    truckJobBlipEntity = 0,

    truckGuideMarkerConsumed = false,

    garbageFinishNextAttemptAt = nil,
}

---------------------------------------------------------------------
-- 6. BAG BLIPS
---------------------------------------------------------------------

-- ["stop_bag"] = blip handle
local BagBlips = {}

---------------------------------------------------------------------
-- 7. HOW MANY BAGS CAN THIS PLAYER CARRY?
---------------------------------------------------------------------

-- === HELPER FUNCTION: getMaxCarryBags() ===
local function getMaxCarryBags()
    if CMG.hasClientSkill(
        "garbage_dual_bag_carry"
    ) then
        return 2
    end

    return 1
end

-- === HELPER FUNCTION: isCarryingTwoBags() ===
local function isCarryingTwoBags()
    return #GarbageJob.localCarryKeys == 2
end

---------------------------------------------------------------------
-- 8. NOTIFICATIONS
---------------------------------------------------------------------

local function garbageNotify(
    success,
    message
)
    if not message or message == "" then
        return
    end

    -------------------------------------------------------------
    -- If the Garbage job terminal is open, send the message to
    -- the NUI instead of putting a normal GTA notification over it.
    -------------------------------------------------------------

    if CMG.isJobTerminalOpen()
        and CMG.getClientJob()
            == "Garbage"
    then
        CMG.uiSendMessage({
            action =
                "GARBAGE_NOTIFICATION",

            payload = {
                success =
                    success == true,

                message =
                    message,
            },
        })

        return
    end

    local colour =
        success
        and "~g~"
        or "~r~"

    tCMG.notify(
        colour .. message
    )
end

RegisterNetEvent(
    EVENTS.SHOW_NOTIFICATION
)

AddEventHandler(
    EVENTS.SHOW_NOTIFICATION,
    function(success, message)
        if type(message) ~= "string"
            or message == ""
        then
            return
        end

        garbageNotify(
            success == true,
            message
        )
    end
)

---------------------------------------------------------------------
-- 9. BAG BLIP HELPERS
---------------------------------------------------------------------

local function makeBagKey(
    stopIndex,
    bagIndex
)
    return string.format(
        "%d_%d",
        math.floor(
            tonumber(stopIndex)
            or 0
        ),
        math.floor(
            tonumber(bagIndex)
            or 0
        )
    )
end

local function removeBagBlip(
    bagKey
)
    if not bagKey then
        return
    end

    local blip =
        BagBlips[bagKey]

    if blip
        and DoesBlipExist(blip)
    then
        RemoveBlip(blip)
    end

    BagBlips[bagKey] = nil
end

local function styleBagBlip(
    blip
)
    SetBlipSprite(
        blip,
        BAG_BLIP_SPRITE
    )

    SetBlipColour(
        blip,
        BAG_BLIP_COLOUR
    )

    SetBlipScale(
        blip,
        BAG_BLIP_SCALE
    )

    SetBlipAsShortRange(
        blip,
        true
    )
end

-- === HELPER FUNCTION: clearBagBlips() ===
local function clearBagBlips()
    local keys = {}

    for bagKey in pairs(
        BagBlips
    ) do
        table.insert(
            keys,
            bagKey
        )
    end

    for _, bagKey in ipairs(keys) do
        removeBagBlip(
            bagKey
        )
    end
end

local function isBagDeposited(
    stopIndex,
    bagIndex
)
    return GarbageJob.deposited[
        makeBagKey(
            stopIndex,
            bagIndex
        )
    ] == true
end

local function isBagBeingCarried(
    stopIndex,
    bagIndex
)
    return GarbageJob.carryingBagKeys[
        makeBagKey(
            stopIndex,
            bagIndex
        )
    ] == true
end

---------------------------------------------------------------------
-- 10. DELETE ENTITY SAFELY
---------------------------------------------------------------------

local function deleteEntitySafely(
    entity
)
    if not entity
        or entity == 0
        or not DoesEntityExist(entity)
    then
        return
    end

    FreezeEntityPosition(
        entity,
        false
    )

    SetEntityAsMissionEntity(
        entity,
        true,
        true
    )

    if NetworkGetEntityIsNetworked(
        entity
    ) then
        for _ = 1, 25 do
            if NetworkHasControlOfEntity(
                entity
            ) then
                break
            end

            NetworkRequestControlOfEntity(
                entity
            )

            Wait(0)
        end
    end

    -- Decompiler repeatedly detached the prop using slightly different flags.
    DetachEntity(
        entity,
        true,
        true
    )

    Wait(0)

    if DoesEntityExist(entity)
        and IsEntityAttached(entity)
    then
        DetachEntity(
            entity,
            true,
            false
        )

        Wait(0)
    end

    if not DoesEntityExist(entity) then
        return
    end

    SetEntityAsMissionEntity(
        entity,
        true,
        true
    )

    if GetEntityType(entity) == 3 then
        DeleteObject(entity)
    else
        DeleteEntity(entity)
    end

    if DoesEntityExist(entity) then
        DeleteEntity(entity)
    end
end

---------------------------------------------------------------------
-- 11. CLEAR CARRIED BAG OBJECTS
---------------------------------------------------------------------

-- === HELPER FUNCTION: clearCarryObjects() ===
local function clearCarryObjects()
    local first =
        GarbageJob.carryObject

    local second =
        GarbageJob.carryObject2

    GarbageJob.carryObject = 0
    GarbageJob.carryObject2 = 0

    deleteEntitySafely(first)
    deleteEntitySafely(second)
end

---------------------------------------------------------------------
-- 12. RESTORE PLAYER MOVEMENT AFTER CARRYING
---------------------------------------------------------------------

local function restoreNormalMovement(
    ped
)
    ped =
        ped
        or CMG.getPlayerPed()

    ResetPedMovementClipset(
        ped,
        0.25
    )

    ResetPedWeaponMovementClipset(
        ped
    )

    ResetPedStrafeClipset(
        ped
    )

    SetPedCanSwitchWeapon(
        ped,
        true
    )
end

local function removeCarryWeapon(
    ped
)
    ped =
        ped
        or CMG.getPlayerPed()

    if HasPedGotWeapon(
        ped,
        CARRY_WEAPON_HASH,
        false
    ) then
        SetCurrentPedWeapon(
            ped,
            -1569615261,
            true
        )

        RemoveWeaponFromPed(
            ped,
            CARRY_WEAPON_HASH
        )
    end
end

-- === HELPER FUNCTION: clearLocalCarry() ===
local function clearLocalCarry()
    GarbageJob.localCarryKeys = {}

    clearCarryObjects()
    removeCarryWeapon()
    restoreNormalMovement()

    GarbageJob.carryingKey = nil
end

---------------------------------------------------------------------
-- 13. SECOND-BAG ATTACH CONFIG
---------------------------------------------------------------------
--
-- A large part of the decompiled file is a development tool used to position
-- the SECOND bag on the player's other side.
---------------------------------------------------------------------

local SecondBagDev = {
    useOverride = false,

    axisIndex = 1,

    posStepIndex = 3,
    rotStepIndex = 2,

    bonePresetIndex = 1,

    ox = 0.0,
    oy = 0.04,
    oz = -0.26,

    rx = 0.0,
    ry = 0.0,
    rz = 180.0,

    bone = 18905,
}

local BONE_PRESETS = {
    {
        id = 18905,
        label = "18905 L hand",
    },
    {
        id = 60309,
        label = "60309 L forearm",
    },
    {
        id = 26611,
        label = "26611 L upper arm",
    },
    {
        id = 28252,
        label = "28252 L clavicle",
    },
    {
        id = 57005,
        label = "57005 R hand (ref)",
    },
    {
        id = 28422,
        label = "28422 R hand (ref)",
    },
}

local POSITION_STEPS = {
    0.005,
    0.01,
    0.02,
    0.05,
    0.1,
}

local POSITION_STEP_LABELS = {
    "0.5cm",
    "1cm",
    "2cm",
    "5cm",
    "10cm",
}

local ROTATION_STEPS = {
    1.0,
    5.0,
    15.0,
    45.0,
}

local ROTATION_STEP_LABELS = {
    "1°",
    "5°",
    "15°",
    "45°",
}

local AXIS_LABELS = {
    "OX",
    "OY",
    "OZ",
    "RX",
    "RY",
    "RZ",
}

local AXIS_FIELDS = {
    "ox",
    "oy",
    "oz",
    "rx",
    "ry",
    "rz",
}

-- === HELPER FUNCTION: readPrimaryBagAttach() ===
local function readPrimaryBagAttach()
    local attach =
        GarbageConfig.bagAttach

    if type(attach) == "table"
        and #attach >= 6
    then
        return
            tonumber(attach[1]) or 0.0,
            tonumber(attach[2]) or 0.04,
            tonumber(attach[3]) or -0.26,
            tonumber(attach[4]) or 0.0,
            tonumber(attach[5]) or 0.0,
            tonumber(attach[6]) or 0.0
    end

    return
        0.0,
        0.04,
        -0.26,
        0.0,
        0.0,
        0.0
end

-- === HELPER FUNCTION: loadSecondBagDevValuesFromConfig() ===
local function loadSecondBagDevValuesFromConfig()
    local second =
        GarbageConfig.bagAttachSecond

    if type(second) == "table"
        and #second >= 6
    then
        SecondBagDev.ox =
            tonumber(second[1])
            or 0.0

        SecondBagDev.oy =
            tonumber(second[2])
            or 0.04

        SecondBagDev.oz =
            tonumber(second[3])
            or -0.26

        SecondBagDev.rx =
            tonumber(second[4])
            or 0.0

        SecondBagDev.ry =
            tonumber(second[5])
            or 0.0

        SecondBagDev.rz =
            tonumber(second[6])
            or 0.0
    else
        ---------------------------------------------------------
        -- If no custom second-bag values exist, mirror the first
        -- bag to the opposite side and rotate it 180 degrees.
        ---------------------------------------------------------

        local ox,
            oy,
            oz,
            rx,
            ry,
            rz =
            readPrimaryBagAttach()

        SecondBagDev.ox = -ox
        SecondBagDev.oy = oy
        SecondBagDev.oz = oz

        SecondBagDev.rx = rx
        SecondBagDev.ry = ry
        SecondBagDev.rz =
            rz + 180.0
    end

    SecondBagDev.bone =
        tonumber(
            GarbageConfig.bagAttachSecondBone
        )
        or 18905
end

loadSecondBagDevValuesFromConfig()

-- === HELPER FUNCTION: getSecondBagAttach() ===
local function getSecondBagAttach()
    -------------------------------------------------------------
    -- Developers can use the live dev override.
    -------------------------------------------------------------

    local userId =
        CMG.getClientUserId()

    if SecondBagDev.useOverride
        and userId
        and CMG.isDeveloper(userId)
    then
        return
            tonumber(
                SecondBagDev.bone
            ) or 18905,

            tonumber(
                SecondBagDev.ox
            ) or 0.0,

            tonumber(
                SecondBagDev.oy
            ) or 0.04,

            tonumber(
                SecondBagDev.oz
            ) or -0.26,

            tonumber(
                SecondBagDev.rx
            ) or 0.0,

            tonumber(
                SecondBagDev.ry
            ) or 0.0,

            tonumber(
                SecondBagDev.rz
            ) or 0.0
    end

    -------------------------------------------------------------
    -- Configured second bag.
    -------------------------------------------------------------

    local bone =
        tonumber(
            GarbageConfig.bagAttachSecondBone
        )
        or 18905

    local attach =
        GarbageConfig.bagAttachSecond

    if type(attach) == "table"
        and #attach >= 6
    then
        return
            bone,
            tonumber(attach[1]) or 0.0,
            tonumber(attach[2]) or 0.04,
            tonumber(attach[3]) or -0.26,
            tonumber(attach[4]) or 0.0,
            tonumber(attach[5]) or 0.0,
            tonumber(attach[6]) or 0.0
    end

    -------------------------------------------------------------
    -- Fallback: mirrored primary bag.
    -------------------------------------------------------------

    local ox,
        oy,
        oz,
        rx,
        ry,
        rz =
        readPrimaryBagAttach()

    return
        bone,
        -ox,
        oy,
        oz,
        rx,
        ry,
        rz + 180.0
end

---------------------------------------------------------------------
-- 14. CREATE + ATTACH A BAG PROP
---------------------------------------------------------------------

local function createAttachedBag(
    ped,
    bone,
    ox,
    oy,
    oz,
    rx,
    ry,
    rz,
    slot
)
    local bagModel =
        GetHashKey(
            GarbageConfig.bagPropModel
        )

    CMG.loadModel(
        bagModel
    )

    local coords =
        CMG.getPlayerCoords()

    local bag =
        CreateObject(
            bagModel,
            coords.x,
            coords.y,
            coords.z,
            false,
            true,
            false
        )

    if not bag
        or bag == 0
        or not DoesEntityExist(bag)
    then
        SetModelAsNoLongerNeeded(
            bagModel
        )

        return
    end

    AttachEntityToEntity(
        bag,
        ped,
        GetPedBoneIndex(
            ped,
            bone
        ),
        ox,
        oy,
        oz,
        rx,
        ry,
        rz,
        true,
        true,
        false,
        true,
        1,
        false
    )

    if slot == 1 then
        GarbageJob.carryObject =
            bag
    else
        GarbageJob.carryObject2 =
            bag
    end

    SetModelAsNoLongerNeeded(
        bagModel
    )
end

---------------------------------------------------------------------
-- 15. REBUILD CARRIED BAG PROPS
---------------------------------------------------------------------
--
-- The server only needs to synchronise BAG KEYS.
-- This function turns those keys into visible local bag props.
---------------------------------------------------------------------

local rebuildingCarryProps = false
local rebuildCarryPropsAgain = false

-- === HELPER FUNCTION: rebuildCarriedBags() ===
local function rebuildCarriedBags()
    if rebuildingCarryProps then
        rebuildCarryPropsAgain =
            true

        return
    end

    rebuildingCarryProps = true

    -- === HELPER FUNCTION: finished() ===
    local function finished()
        rebuildingCarryProps = false

        if rebuildCarryPropsAgain then
            rebuildCarryPropsAgain =
                false

            rebuildCarriedBags()
        end
    end

    local ped =
        CMG.getPlayerPed()

    clearCarryObjects()

    local carryCount =
        #GarbageJob.localCarryKeys

    if carryCount < 1 then
        GarbageJob.carryingKey =
            nil

        removeCarryWeapon(ped)
        restoreNormalMovement(ped)

        finished()
        return
    end

    GarbageJob.carryingKey =
        GarbageJob.localCarryKeys[1]

    -------------------------------------------------------------
    -- Restrict weapon use while carrying.
    -------------------------------------------------------------

    SetPedCanSwitchWeapon(
        ped,
        false
    )

    RequestAnimSet(
        CARRY_MOVE_CLIPSET
    )

    local attempts = 0

    while not HasAnimSetLoaded(
        CARRY_MOVE_CLIPSET
    )
        and attempts < 200
    do
        Wait(0)
        attempts =
            attempts + 1
    end

    if HasAnimSetLoaded(
        CARRY_MOVE_CLIPSET
    ) then
        SetPedMovementClipset(
            ped,
            CARRY_MOVE_CLIPSET,
            1.0
        )
    end

    GiveWeaponToPed(
        ped,
        CARRY_WEAPON_HASH,
        0,
        false,
        false
    )

    SetCurrentPedWeapon(
        ped,
        CARRY_WEAPON_HASH,
        true
    )

    -------------------------------------------------------------
    -- FIRST BAG
    -------------------------------------------------------------

    local ox,
        oy,
        oz,
        rx,
        ry,
        rz =
        readPrimaryBagAttach()

    createAttachedBag(
        ped,
        GarbageConfig.bagAttachBone
            or 28422,

        ox,
        oy,
        oz,
        rx,
        ry,
        rz,
        1
    )

    -------------------------------------------------------------
    -- SECOND BAG
    -------------------------------------------------------------

    if carryCount >= 2 then
        local secondBone,
            secondOx,
            secondOy,
            secondOz,
            secondRx,
            secondRy,
            secondRz =
            getSecondBagAttach()

        createAttachedBag(
            ped,
            secondBone,
            secondOx,
            secondOy,
            secondOz,
            secondRx,
            secondRy,
            secondRz,
            2
        )
    end

    finished()
end

local rebuildScheduled = false

-- === HELPER FUNCTION: scheduleCarryRebuild() ===
local function scheduleCarryRebuild()
    if rebuildScheduled then
        return
    end

    rebuildScheduled = true

    Citizen.SetTimeout(
        0,
        function()
            rebuildScheduled =
                false

            rebuildCarriedBags()
        end
    )
end

---------------------------------------------------------------------
-- 16. JOB RESET
---------------------------------------------------------------------

-- === HELPER FUNCTION: resetGarbageJobRuntime() ===
local function resetGarbageJobRuntime()
    GarbageJob.depositInProgress =
        false

    ClearPedSecondaryTask(
        CMG.getPlayerPed()
    )

    clearBagBlips()
    clearLocalCarry()

    if GarbageJob.stopBlip ~= 0 then
        RemoveBlip(
            GarbageJob.stopBlip
        )

        GarbageJob.stopBlip = 0
    end

    if GarbageJob.baseBlip ~= 0 then
        RemoveBlip(
            GarbageJob.baseBlip
        )

        GarbageJob.baseBlip = 0
    end

    if GarbageJob.baseDepotMarkerId then
        tCMG.removeMarker(
            GarbageJob.baseDepotMarkerId
        )

        GarbageJob.baseDepotMarkerId =
            nil
    end

    GarbageJob.depotReturnGuidanceDone =
        false

    GarbageJob.carryingBagKeys = {}
    GarbageJob.localCarryKeys = {}

    GarbageJob.truckEntity = 0
    GarbageJob.carryingKey = nil

    GarbageJob.truckSpawnPoint =
        nil

    if GarbageJob.truckJobBlip ~= 0
        and DoesBlipExist(
            GarbageJob.truckJobBlip
        )
    then
        RemoveBlip(
            GarbageJob.truckJobBlip
        )
    end

    GarbageJob.truckJobBlip = 0
    GarbageJob.truckJobBlipEntity = 0

    GarbageJob.garbageFinishNextAttemptAt =
        nil

    GarbageJob.truckGuideMarkerConsumed =
        false

    GarbageJob.pendingDepositThrownEnt =
        0

    GarbageJob.throwStartedWithDualCarry =
        false
end

---------------------------------------------------------------------
-- 17. DELETE A NETWORKED TRUCK
---------------------------------------------------------------------

local function deleteNetworkTruck(
    networkId
)
    networkId =
        tonumber(networkId)

    if not networkId
        or networkId == 0
    then
        return
    end

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(function()
        local vehicle =
            NetworkGetEntityFromNetworkId(
                networkId
            )

        if vehicle == 0
            or not DoesEntityExist(
                vehicle
            )
        then
            return
        end

        local ped =
            CMG.getPlayerPed()

        ---------------------------------------------------------
        -- If we are inside it, get out first.
        ---------------------------------------------------------

        if GetVehiclePedIsIn(
            ped,
            false
        ) == vehicle
        then
            TaskLeaveVehicle(
                ped,
                vehicle,
                0
            )

            local timeout =
                GetGameTimer()
                + 3000

            while GetVehiclePedIsIn(
                ped,
                false
            ) == vehicle
                and GetGameTimer()
                    < timeout
            do
                Wait(0)
            end
        end

        if not DoesEntityExist(
            vehicle
        ) then
            return
        end

        ---------------------------------------------------------
        -- Try to get entity control before deleting.
        ---------------------------------------------------------

        NetworkRequestControlOfEntity(
            vehicle
        )

        local timeout =
            GetGameTimer()
            + 800

        while not NetworkHasControlOfEntity(
            vehicle
        )
            and GetGameTimer()
                < timeout
        do
            Wait(0)

            NetworkRequestControlOfEntity(
                vehicle
            )
        end

        if DoesEntityExist(
            vehicle
        ) then
            SetEntityAsMissionEntity(
                vehicle,
                true,
                true
            )

            DeleteVehicle(
                vehicle
            )
        end
    end)
end

---------------------------------------------------------------------
-- 18. ROUTE / STOP HELPERS
---------------------------------------------------------------------

-- === HELPER FUNCTION: getTruckSpawnPoint() ===
local function getTruckSpawnPoint()
    if GarbageJob.truckSpawnPoint then
        return GarbageJob.truckSpawnPoint
    end

    if GarbageConfig.truckSpawns
        and #GarbageConfig.truckSpawns
            > 0
    then
        return GarbageConfig.truckSpawns[1]
    end

    return GarbageConfig.truckSpawn
end

-- === HELPER FUNCTION: getCurrentRoute() ===
local function getCurrentRoute()
    if not GarbageJob.routeIndex
        or not GarbageConfig.routes
    then
        return nil
    end

    return GarbageConfig.routes[
        GarbageJob.routeIndex
    ]
end

-- === HELPER FUNCTION: getCurrentStop() ===
local function getCurrentStop()
    local route =
        getCurrentRoute()

    if not route
        or not route.stops
        or not GarbageJob.stopIndex
    then
        return nil
    end

    return route.stops[
        GarbageJob.stopIndex
    ]
end

-- === HELPER FUNCTION: countDepositedBags() ===
local function countDepositedBags()
    local count = 0

    for _, deposited in pairs(
        GarbageJob.deposited
    ) do
        if deposited == true then
            count =
                count + 1
        end
    end

    return count
end

-- === HELPER FUNCTION: getTotalRouteBags() ===
local function getTotalRouteBags()
    local route =
        getCurrentRoute()

    if not route
        or not route.stops
    then
        return 0
    end

    local total = 0

    for _, stop in ipairs(
        route.stops
    ) do
        if stop.bags then
            total =
                total
                + #stop.bags
        end
    end

    return total
end

---------------------------------------------------------------------
-- 19. HUD BAG COUNTER
---------------------------------------------------------------------

CMG.registerHudTimerBarProvider(
    "garbageJob",
    function(timerBar)
        if not GarbageJob.active then
            return
        end

        local total =
            getTotalRouteBags()

        if total < 1 then
            return
        end

        local deposited =
            countDepositedBags()

        timerBar.push(
            "~g~BAGS:",
            string.format(
                "%d/%d",
                deposited,
                total
            )
        )
    end
)

---------------------------------------------------------------------
-- 20. UPDATE CURRENT STOP BLIPS
---------------------------------------------------------------------

-- === HELPER FUNCTION: updateStopBlips() ===
local function updateStopBlips()
    clearBagBlips()

    if GarbageJob.stopBlip ~= 0 then
        RemoveBlip(
            GarbageJob.stopBlip
        )

        GarbageJob.stopBlip = 0
    end

    if GarbageJob.phase ~= "stops" then
        return
    end

    local stop =
        getCurrentStop()

    if not stop or not stop.bags then
        return
    end

    local stopIndex =
        GarbageJob.stopIndex

    local averageCoords =
        vector3(
            0.0,
            0.0,
            0.0
        )

    local remainingCount = 0

    for bagIndex, bagCoords in ipairs(
        stop.bags
    ) do
        if not isBagDeposited(
            stopIndex,
            bagIndex
        )
            and not isBagBeingCarried(
                stopIndex,
                bagIndex
            )
        then
            local bagKey =
                makeBagKey(
                    stopIndex,
                    bagIndex
                )

            local blip =
                AddBlipForCoord(
                    bagCoords.x,
                    bagCoords.y,
                    bagCoords.z
                )

            styleBagBlip(blip)

            BagBlips[bagKey] =
                blip

            averageCoords =
                averageCoords
                + bagCoords

            remainingCount =
                remainingCount
                + 1
        end
    end

    -------------------------------------------------------------
    -- Route to the middle of all remaining bags at this stop.
    -------------------------------------------------------------

    if remainingCount > 0 then
        averageCoords =
            averageCoords
            / remainingCount

        GarbageJob.stopBlip =
            AddBlipForCoord(
                averageCoords.x,
                averageCoords.y,
                averageCoords.z
            )

        SetBlipSprite(
            GarbageJob.stopBlip,
            318
        )

        SetBlipRoute(
            GarbageJob.stopBlip,
            true
        )
    end
end

---------------------------------------------------------------------
-- 21. RETURN-TO-DEPOT GUIDANCE
---------------------------------------------------------------------

-- === HELPER FUNCTION: updateDepotGuidance() ===
local function updateDepotGuidance()
    if GarbageJob.baseBlip ~= 0 then
        RemoveBlip(
            GarbageJob.baseBlip
        )

        GarbageJob.baseBlip = 0
    end

    if GarbageJob.phase ~= "return" then
        if GarbageJob.baseDepotMarkerId then
            tCMG.removeMarker(
                GarbageJob.baseDepotMarkerId
            )

            GarbageJob.baseDepotMarkerId =
                nil
        end

        GarbageJob.depotReturnGuidanceDone =
            false

        return
    end

    local depot =
        GarbageConfig.baseReturn

    if not depot
        or GarbageJob.depotReturnGuidanceDone
    then
        return
    end

    SetNewWaypoint(
        depot.x,
        depot.y
    )

    if GarbageJob.baseDepotMarkerId then
        tCMG.removeMarker(
            GarbageJob.baseDepotMarkerId
        )
    end

    GarbageJob.baseDepotMarkerId =
        tCMG.addMarker(
            depot.x,
            depot.y,
            depot.z - 1.0,

            3.5,
            3.5,
            1.2,

            60,
            200,
            120,
            160,

            70.0,
            1,
            false,
            false,
            false
        )

    GarbageJob.depotReturnGuidanceDone =
        true
end

---------------------------------------------------------------------
-- 22. RESOLVE TRUCK NETWORK ID -> ENTITY
---------------------------------------------------------------------

-- === HELPER FUNCTION: resolveTruckEntity() ===
local function resolveTruckEntity()
    if GarbageJob.truckNetId
        and GarbageJob.truckNetId
            ~= 0
    then
        local vehicle =
            NetworkGetEntityFromNetworkId(
                GarbageJob.truckNetId
            )

        if vehicle
            and vehicle ~= 0
            and DoesEntityExist(vehicle)
        then
            GarbageJob.truckEntity =
                vehicle
        end
    end
end

---------------------------------------------------------------------
-- 23. ARE WE CURRENTLY INSIDE THE JOB TRUCK?
---------------------------------------------------------------------

-- === HELPER FUNCTION: isPlayerInsideJobTruck() ===
local function isPlayerInsideJobTruck()
    resolveTruckEntity()

    local ped =
        CMG.getPlayerPed()

    local currentVehicle =
        GetVehiclePedIsIn(
            ped,
            false
        )

    if currentVehicle == 0
        or not DoesEntityExist(
            currentVehicle
        )
    then
        return false
    end

    if GarbageJob.truckEntity ~= 0
        and DoesEntityExist(
            GarbageJob.truckEntity
        )
        and currentVehicle
            == GarbageJob.truckEntity
    then
        return true
    end

    if GarbageJob.truckNetId
        and GarbageJob.truckNetId
            ~= 0
    then
        return NetworkGetNetworkIdFromEntity(
            currentVehicle
        ) == GarbageJob.truckNetId
    end

    return false
end

---------------------------------------------------------------------
-- 24. JOB TRUCK BLIP
---------------------------------------------------------------------

-- === HELPER FUNCTION: clearTruckBlip() ===
local function clearTruckBlip()
    if GarbageJob.truckJobBlip ~= 0
        and DoesBlipExist(
            GarbageJob.truckJobBlip
        )
    then
        RemoveBlip(
            GarbageJob.truckJobBlip
        )
    end

    GarbageJob.truckJobBlip = 0
    GarbageJob.truckJobBlipEntity = 0
end

-- === HELPER FUNCTION: updateTruckBlip() ===
local function updateTruckBlip()
    if not GarbageJob.active
        or not GarbageJob.truckNetId
        or GarbageJob.truckNetId == 0
    then
        clearTruckBlip()
        return
    end

    resolveTruckEntity()

    local truck =
        GarbageJob.truckEntity

    if truck == 0
        or not DoesEntityExist(truck)
    then
        clearTruckBlip()
        return
    end

    -------------------------------------------------------------
    -- No need to mark the truck while we are driving it.
    -------------------------------------------------------------

    if isPlayerInsideJobTruck() then
        clearTruckBlip()
        return
    end

    if GarbageJob.truckJobBlip ~= 0
        and DoesBlipExist(
            GarbageJob.truckJobBlip
        )
        and GarbageJob.truckJobBlipEntity
            == truck
    then
        return
    end

    clearTruckBlip()

    local blip =
        AddBlipForEntity(
            truck
        )

    SetBlipSprite(
        blip,
        477
    )

    SetBlipColour(
        blip,
        BAG_BLIP_COLOUR
    )

    SetBlipScale(
        blip,
        0.85
    )

    SetBlipAsShortRange(
        blip,
        false
    )

    SetBlipAsFriendly(
        blip,
        true
    )

    BeginTextCommandSetBlipName(
        "STRING"
    )

    AddTextComponentSubstringPlayerName(
        "Your garbage truck"
    )

    EndTextCommandSetBlipName(
        blip
    )

    GarbageJob.truckJobBlip =
        blip

    GarbageJob.truckJobBlipEntity =
        truck
end

---------------------------------------------------------------------
-- 25. TOGGLE JOB TRUCK LOCK
---------------------------------------------------------------------

function CMG.tryToggleGarbageJobTruckLock(
    maximumDistance
)
    if not GarbageJob.active
        or not GarbageJob.truckNetId
        or GarbageJob.truckNetId == 0
    then
        return false
    end

    resolveTruckEntity()

    local truck =
        GarbageJob.truckEntity

    if truck == 0
        or not DoesEntityExist(truck)
    then
        return false
    end

    local distance =
        #(
            GetEntityCoords(
                truck,
                true
            )
            - GetEntityCoords(
                CMG.getPlayerPed()
            )
        )

    if distance
        > maximumDistance + 0.0001
    then
        return false
    end

    local currentlyLocked =
        GetVehicleDoorLockStatus(
            truck
        ) >= 2

    local networkId =
        NetworkGetNetworkIdFromEntity(
            truck
        )

    if networkId == 0 then
        return false
    end

    tCMG.notify(
        "Vehicle "
        .. (
            currentlyLocked
            and "unlocked"
            or "locked"
        )
        .. "."
    )

    -------------------------------------------------------------
    -- If this client owns the vehicle, update it locally.
    -- Otherwise ask the server/owner to do it.
    -------------------------------------------------------------

    if NetworkHasControlOfEntity(
        truck
    ) then
        TriggerEvent(
            EVENTS.SET_VEHICLE_LOCK,
            networkId,
            not currentlyLocked
        )
    else
        TriggerServerEvent(
            EVENTS.SET_VEHICLE_LOCK,
            networkId,
            not currentlyLocked
        )
    end

    return true
end

---------------------------------------------------------------------
-- 26. TRUCK DEPOSIT POSITION
---------------------------------------------------------------------

-- === HELPER FUNCTION: getTruckDepositCoords() ===
local function getTruckDepositCoords()
    resolveTruckEntity()

    local truck =
        GarbageJob.truckEntity

    if truck == 0
        or not DoesEntityExist(
            truck
        )
    then
        return nil
    end

    local offset =
        GarbageConfig.truckDepositLocalOffset

    return GetOffsetFromEntityInWorldCoords(
        truck,
        offset.x,
        offset.y,
        offset.z
    )
end

---------------------------------------------------------------------
-- 27. TRUCK REAR DOORS
---------------------------------------------------------------------

local function areTruckRearDoorsOpen(
    truck
)
    if not truck
        or truck == 0
        or not DoesEntityExist(truck)
    then
        return false
    end

    local minimumRatio =
        tonumber(
            GarbageConfig.truckDepositDoorMinRatio
        )
        or 0.12

    local doorIndices =
        GarbageConfig.truckDepositDoorIndices
        or {
            5,
            2,
            3,
        }

    for _, doorIndex in ipairs(
        doorIndices
    ) do
        local ratio =
            GetVehicleDoorAngleRatio(
                truck,
                doorIndex
            )

        if ratio
            and ratio
                > minimumRatio
        then
            return true
        end
    end

    return false
end

local function openTruckRearDoors(
    truck
)
    if not truck
        or truck == 0
        or not DoesEntityExist(truck)
    then
        return
    end

    if not NetworkHasControlOfEntity(
        truck
    ) then
        NetworkRequestControlOfEntity(
            truck
        )
    end

    local doorIndices =
        GarbageConfig.truckDepositDoorIndices
        or {
            5,
            2,
            3,
        }

    for _, doorIndex in ipairs(
        doorIndices
    ) do
        SetVehicleDoorOpen(
            truck,
            doorIndex,
            false,
            false
        )
    end
end

---------------------------------------------------------------------
-- 28. THROW BAG INTO TRUCK
---------------------------------------------------------------------

-- === HELPER FUNCTION: tryDepositBag() ===
local function tryDepositBag()
    if GarbageJob.depositInProgress
        or #GarbageJob.localCarryKeys
            < 1
        or not GarbageJob.active
    then
        return
    end

    resolveTruckEntity()

    local truck =
        GarbageJob.truckEntity

    if truck == 0
        or not areTruckRearDoorsOpen(
            truck
        )
    then
        garbageNotify(
            false,
            "Open the back of the truck first."
        )

        return
    end

    GarbageJob.depositInProgress =
        true

    GarbageJob.pendingDepositThrownEnt =
        GarbageJob.carryObject

    GarbageJob.throwStartedWithDualCarry =
        #GarbageJob.localCarryKeys
        >= 2

    local ped =
        CMG.getPlayerPed()

    CMG.loadAnimDict(
        THROW_ANIM_DICT
    )

    TaskPlayAnim(
        ped,
        THROW_ANIM_DICT,
        THROW_ANIM_NAME,
        8.0,
        -8.0,
        -1,
        0,
        0,
        false,
        false,
        false
    )

    local duration =
        GetAnimDuration(
            THROW_ANIM_DICT,
            THROW_ANIM_NAME
        )

    if not duration
        or duration <= 0.0
    then
        duration = 2.0
    end

    local animationMs =
        math.floor(
            duration * 1000
        )
        + 250

    -------------------------------------------------------------
    -- Tell server shortly after throw begins.
    -------------------------------------------------------------

    Citizen.SetTimeout(
        180,
        function()
            if GarbageJob.active
                and #GarbageJob.localCarryKeys
                    >= 1
                and GarbageJob.depositInProgress
            then
                TriggerServerEvent(
                    EVENTS.DEPOSIT_BAG
                )
            end
        end
    )

    -------------------------------------------------------------
    -- Safety cleanup if the animation outlives the server response.
    -------------------------------------------------------------

    Citizen.SetTimeout(
        animationMs,
        function()
            GarbageJob.depositInProgress =
                false

            if DoesEntityExist(ped) then
                StopAnimTask(
                    ped,
                    THROW_ANIM_DICT,
                    THROW_ANIM_NAME,
                    1.0
                )

                ClearPedSecondaryTask(
                    ped
                )
            end

            RemoveAnimDict(
                THROW_ANIM_DICT
            )
        end
    )
end

---------------------------------------------------------------------
-- 29. SPAWN JOB TRUCK
---------------------------------------------------------------------

-- === HELPER FUNCTION: spawnGarbageTruck() ===
local function spawnGarbageTruck()
    if not GarbageJob.isLeader then
        return
    end

    local spawn =
        getTruckSpawnPoint()

    if not spawn then
        return
    end

    local heading =
        spawn.w or 0.0

    local truck = 0

    -------------------------------------------------------------
    -- A truck chosen from the player's garage can bring saved mods/fuel.
    -------------------------------------------------------------

    if GarbageJob.truckGarageUuid
        and GarbageJob.truckVehicleMods
    then
        local vehicleModel =
            GarbageJob.truckVehicleId
            or GarbageConfig.vehicleModel
            or "trash"

        local loadedModel =
            CMG.loadModel(
                vehicleModel
            )

        if loadedModel == nil then
            garbageNotify(
                false,
                "Could not load your truck."
            )

            return
        end

        CMG.requestEntitySpawn(
            "garbage_truck_garage",
            GarbageJob.truckGarageUuid
        )

        truck =
            CMG.spawnVehicle(
                loadedModel,
                spawn.x,
                spawn.y,
                spawn.z,
                heading,
                false,
                true,
                true
            )

        if truck
            and truck ~= 0
            and DoesEntityExist(truck)
        then
            SetEntityHeading(
                truck,
                heading
            )

            local userId =
                CMG.getClientUserId()

            if userId then
                DecorSetInt(
                    truck,
                    DECOR.OWNER_USER_ID,
                    userId
                )
            end

            DecorSetInt(
                truck,
                DECOR.GARAGE_UUID,
                GarbageJob.truckGarageUuid
            )

            CMG.setVehicleFuel(
                truck,
                tonumber(
                    GarbageJob
                        .truckVehicleMods
                        .fuel
                )
                or 0
            )

            tCMG.applyModsOnVehicle(
                GarbageJob.truckVehicleMods,
                GarbageJob.truckGarageUuid,
                truck
            )
        end
    else
        ---------------------------------------------------------
        -- Normal configured garbage truck.
        ---------------------------------------------------------

        CMG.requestEntitySpawn(
            "garbage_truck"
        )

        truck =
            CMG.spawnVehicle(
                GarbageJob.truckVehicleId
                    or GarbageConfig.vehicleModel,

                spawn.x,
                spawn.y,
                spawn.z,
                heading,
                false,
                true,
                true
            )

        if truck
            and truck ~= 0
            and DoesEntityExist(truck)
        then
            SetEntityHeading(
                truck,
                heading
            )
        end
    end

    -------------------------------------------------------------
    -- Register the truck with the server.
    -------------------------------------------------------------

    if truck
        and truck ~= 0
        and DoesEntityExist(truck)
    then
        GarbageJob.truckEntity =
            truck

        GarbageJob.truckNetId =
            NetworkGetNetworkIdFromEntity(
                truck
            )

        updateTruckBlip()

        TriggerServerEvent(
            EVENTS.REGISTER_JOB_TRUCK,
            GarbageJob.truckNetId
        )
    else
        garbageNotify(
            false,
            "Could not spawn the garbage truck."
        )
    end
end

---------------------------------------------------------------------
-- 30. COMPARE TWO ORDERED LISTS
---------------------------------------------------------------------

local function arraysEqual(
    a,
    b
)
    if type(a) ~= "table"
        or type(b) ~= "table"
        or #a ~= #b
    then
        return false
    end

    for index = 1, #a do
        if a[index] ~= b[index] then
            return false
        end
    end

    return true
end

---------------------------------------------------------------------
-- 31. APPLY SERVER RUN-STATE UPDATE
---------------------------------------------------------------------

local function applyRunStateUpdate(
    update
)
    if not update then
        return
    end

    if update.leaderUserId ~= nil then
        GarbageJob.leaderUserId =
            update.leaderUserId
    end

    if update.isLeader ~= nil then
        GarbageJob.isLeader =
            update.isLeader == true
    end

    GarbageJob.stopIndex =
        update.stopIndex
        or GarbageJob.stopIndex

    if type(update.phase) == "string"
        and update.phase ~= ""
    then
        GarbageJob.phase =
            update.phase
    end

    GarbageJob.deposited =
        update.deposited
        or GarbageJob.deposited

    -------------------------------------------------------------
    -- Convert server list:
    --
    --   {"1_1", "1_2"}
    --
    -- into lookup:
    --
    --   carryingBagKeys["1_1"] = true
    -------------------------------------------------------------

    if update.carryingBagKeys ~= nil then
        local lookup = {}

        if type(
            update.carryingBagKeys
        ) == "table"
        then
            for _, bagKey in ipairs(
                update.carryingBagKeys
            ) do
                if type(bagKey)
                    == "string"
                then
                    lookup[bagKey] =
                        true
                end
            end
        end

        GarbageJob.carryingBagKeys =
            lookup
    end

    -------------------------------------------------------------
    -- Update this client's own carried bag list.
    -------------------------------------------------------------

    if update.myCarryingKeys ~= nil then
        local newKeys = {}

        if type(
            update.myCarryingKeys
        ) == "table"
        then
            for _, bagKey in ipairs(
                update.myCarryingKeys
            ) do
                if type(bagKey)
                    == "string"
                    and bagKey ~= ""
                then
                    table.insert(
                        newKeys,
                        bagKey
                    )
                end
            end
        end

        local changed =
            not arraysEqual(
                GarbageJob.localCarryKeys,
                newKeys
            )

        GarbageJob.localCarryKeys =
            newKeys

        if changed
            and not GarbageJob.depositInProgress
        then
            rebuildCarriedBags()
        end
    end

    if update.truckNetId then
        GarbageJob.truckNetId =
            update.truckNetId
    end

    updateStopBlips()
    updateDepotGuidance()
end

---------------------------------------------------------------------
-- 32. SERVER: SET WAYPOINT
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.SET_WAYPOINT
)

AddEventHandler(
    EVENTS.SET_WAYPOINT,
    function(x, y)
        if x and y then
            SetNewWaypoint(
                x + 0.0,
                y + 0.0
            )
        end
    end
)

---------------------------------------------------------------------
-- 33. SERVER: LOBBY UPDATE
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.UPDATE_LOBBY
)

AddEventHandler(
    EVENTS.UPDATE_LOBBY,
    function(lobby)
        CMG.uiSendMessage({
            type =
                "GARBAGE_LOBBY",

            payload =
                lobby
                or {},
        })
    end
)

---------------------------------------------------------------------
-- 34. SERVER: PLAYER SEARCH RESULT
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.PLAYER_SEARCH_RESULT
)

AddEventHandler(
    EVENTS.PLAYER_SEARCH_RESULT,
    function(players)
        CMG.uiSendMessage({
            type =
                "GARBAGE_SEARCH_RESULT",

            payload = {
                players =
                    players
                    or {},
            },
        })
    end
)

---------------------------------------------------------------------
-- 35. SERVER: START RUN
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.START_RUN
)

AddEventHandler(
    EVENTS.START_RUN,
    function(run)
        resetGarbageJobRuntime()

        GarbageJob.active = true

        GarbageJob.sessionId =
            run.sessionId

        GarbageJob.leaderUserId =
            run.leaderUserId

        GarbageJob.routeIndex =
            run.routeIndex

        GarbageJob.stopIndex =
            run.stopIndex
            or 1

        GarbageJob.phase =
            run.phase
            or "stops"

        GarbageJob.deposited = {}
        GarbageJob.carryingBagKeys = {}
        GarbageJob.localCarryKeys = {}

        GarbageJob.truckNetId = nil
        GarbageJob.carryingKey = nil

        GarbageJob.payPerBag =
            run.payPerBag
            or 0

        GarbageJob.isLeader =
            run.isLeader == true

        GarbageJob.truckEntity = 0

        GarbageJob.truckGarageUuid =
            run.truckGarageUuid

        GarbageJob.truckVehicleMods =
            run.truckVehicleMods

        GarbageJob.truckVehicleId =
            run.truckVehicleId
            or GarbageConfig.vehicleModel
            or "trash"

        ---------------------------------------------------------
        -- Optional server-selected spawn point.
        ---------------------------------------------------------

        if type(run.truckSpawn)
            == "table"
            and run.truckSpawn.x ~= nil
            and run.truckSpawn.y ~= nil
            and run.truckSpawn.z ~= nil
        then
            GarbageJob.truckSpawnPoint =
                vector4(
                    run.truckSpawn.x,
                    run.truckSpawn.y,
                    run.truckSpawn.z,
                    tonumber(
                        run.truckSpawn.w
                    )
                    or 0.0
                )
        else
            GarbageJob.truckSpawnPoint =
                nil
        end

        ---------------------------------------------------------
        -- Put worker uniform on.
        ---------------------------------------------------------

        local ped =
            CMG.getPlayerPed()

        local model =
            GetEntityModel(ped)

        if model
            == MALE_FREEMODE_MODEL
        then
            CMG.lockCustomisationPreset(
                "GarbageMale"
            )
        elseif model
            == FEMALE_FREEMODE_MODEL
        then
            CMG.lockCustomisationPreset(
                "GarbageFemale"
            )
        else
            CMG.lockCustomisationPreset(
                "GarbageMale"
            )
        end

        ---------------------------------------------------------
        -- Crew leader creates the truck.
        ---------------------------------------------------------

        if GarbageJob.isLeader then
            spawnGarbageTruck()
        end

        updateStopBlips()
        updateDepotGuidance()

        CMG.setHudTimerBarProviderActive(
            "garbageJob",
            true
        )

        garbageNotify(
            true,
            "Run started. Get in the truck, then follow the route to collect bags."
        )
    end
)

---------------------------------------------------------------------
-- 36. SERVER: PATCH RUN STATE
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.UPDATE_RUN_STATE
)

AddEventHandler(
    EVENTS.UPDATE_RUN_STATE,
    function(update)
        if GarbageJob.active then
            applyRunStateUpdate(
                update
            )
        end
    end
)

---------------------------------------------------------------------
-- 37. SERVER: CLEAR CARRY
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.CLEAR_LOCAL_CARRY
)

AddEventHandler(
    EVENTS.CLEAR_LOCAL_CARRY,
    function()
        GarbageJob.carryingKey =
            nil

        GarbageJob.depositInProgress =
            false

        GarbageJob.throwStartedWithDualCarry =
            false

        clearLocalCarry()
    end
)

---------------------------------------------------------------------
-- 38. SERVER: BAG PICKUP CONFIRMED
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.BAG_PICKUP_CONFIRMED
)

AddEventHandler(
    EVENTS.BAG_PICKUP_CONFIRMED,
    function(bagKey)
        if type(bagKey) ~= "string"
            or bagKey == ""
        then
            return
        end

        removeBagBlip(
            bagKey
        )

        local alreadyHaveIt =
            false

        for _, currentKey in ipairs(
            GarbageJob.localCarryKeys
        ) do
            if currentKey == bagKey then
                alreadyHaveIt =
                    true

                break
            end
        end

        if not alreadyHaveIt then
            table.insert(
                GarbageJob.localCarryKeys,
                bagKey
            )
        end

        rebuildCarriedBags()
    end
)

---------------------------------------------------------------------
-- 39. SERVER: DEPOSIT REJECTED
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.BAG_DEPOSIT_REJECTED
)

AddEventHandler(
    EVENTS.BAG_DEPOSIT_REJECTED,
    function(reason)
        GarbageJob.depositInProgress =
            false

        GarbageJob.throwStartedWithDualCarry =
            false

        GarbageJob.pendingDepositThrownEnt =
            0

        local ped =
            CMG.getPlayerPed()

        if DoesEntityExist(ped) then
            StopAnimTask(
                ped,
                THROW_ANIM_DICT,
                THROW_ANIM_NAME,
                1.0
            )

            ClearPedSecondaryTask(ped)
        end

        if GarbageJob.active then
            rebuildCarriedBags()
        end

        if reason == "door" then
            garbageNotify(
                false,
                "Open the back of the truck first."
            )
        end
    end
)

---------------------------------------------------------------------
-- 40. SERVER: DEPOSIT CONFIRMED
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.BAG_DEPOSIT_CONFIRMED
)

AddEventHandler(
    EVENTS.BAG_DEPOSIT_CONFIRMED,
    function(remainingCarryKeys)
        local thrownEntity =
            GarbageJob.pendingDepositThrownEnt

        if not thrownEntity
            or thrownEntity == 0
        then
            thrownEntity =
                GarbageJob.carryObject
        end

        GarbageJob.pendingDepositThrownEnt =
            0

        GarbageJob.carryingKey =
            nil

        ---------------------------------------------------------
        -- Server tells us which bags remain in our hands.
        ---------------------------------------------------------

        if type(remainingCarryKeys)
            == "table"
        then
            GarbageJob.localCarryKeys =
                {}

            for _, bagKey in ipairs(
                remainingCarryKeys
            ) do
                if type(bagKey)
                    == "string"
                    and bagKey ~= ""
                then
                    table.insert(
                        GarbageJob.localCarryKeys,
                        bagKey
                    )
                end
            end
        end

        if not GarbageJob.active then
            GarbageJob.throwStartedWithDualCarry =
                false

            return
        end

        ---------------------------------------------------------
        -- Delay removing the thrown prop so the animation looks natural.
        ---------------------------------------------------------

        local removeDelay =
            tonumber(
                GarbageConfig.depositBagRemoveDelayMs
            )
            or 850

        removeDelay =
            math.max(
                0,
                removeDelay
            )

        if GarbageJob.throwStartedWithDualCarry
            and type(remainingCarryKeys)
                == "table"
            and #remainingCarryKeys == 1
        then
            removeDelay =
                removeDelay
                + SECOND_BAG_REBUILD_DELAY_MS
        end

        Citizen.SetTimeout(
            removeDelay,
            function()
                if not GarbageJob.active then
                    GarbageJob.throwStartedWithDualCarry =
                        false

                    return
                end

                local ped =
                    CMG.getPlayerPed()

                if DoesEntityExist(ped) then
                    StopAnimTask(
                        ped,
                        THROW_ANIM_DICT,
                        THROW_ANIM_NAME,
                        1.0
                    )

                    ClearPedSecondaryTask(
                        ped
                    )
                end

                if thrownEntity
                    and thrownEntity ~= 0
                    and DoesEntityExist(
                        thrownEntity
                    )
                then
                    deleteEntitySafely(
                        thrownEntity
                    )
                end

                if GarbageJob.carryObject
                    == thrownEntity
                then
                    GarbageJob.carryObject =
                        0
                end

                rebuildCarriedBags()

                GarbageJob.throwStartedWithDualCarry =
                    false
            end
        )
    end
)

---------------------------------------------------------------------
-- 41. SERVER: RUN ENDED
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.RUN_ENDED
)

AddEventHandler(
    EVENTS.RUN_ENDED,
    function(
        reason,
        truckNetworkId,
        shouldDeleteTruck
    )
        CMG.setHudTimerBarProviderActive(
            "garbageJob",
            false
        )

        CMG.unlockCustomisationPreset()

        if shouldDeleteTruck ~= false then
            deleteNetworkTruck(
                truckNetworkId
            )
        end

        resetGarbageJobRuntime()

        GarbageJob.truckNetId = nil
        GarbageJob.active = false
        GarbageJob.sessionId = nil
        GarbageJob.isLeader = false

        GarbageJob.truckGarageUuid =
            nil

        GarbageJob.truckVehicleMods =
            nil

        GarbageJob.truckVehicleId =
            GarbageConfig.vehicleModel
            or "trash"

        if reason == "complete" then
            garbageNotify(
                true,
                "Run finished."
            )
        elseif reason
            == "member_left"
        then
            garbageNotify(
                false,
                "Run ended (someone left the crew)."
            )
        elseif reason
            == "cancelled"
        then
            garbageNotify(
                false,
                "Run cancelled."
            )
        else
            garbageNotify(
                false,
                "Run ended."
            )
        end

        TriggerServerEvent(
            EVENTS.REQUEST_LOBBY_SYNC
        )
    end
)

---------------------------------------------------------------------
-- 42. JOB CHANGED
---------------------------------------------------------------------

AddEventHandler(
    EVENTS.JOB_CHANGED,
    function(jobName)
        if jobName == "Garbage" then
            TriggerServerEvent(
                EVENTS.REQUEST_LOBBY_SYNC
            )
        end
    end
)

---------------------------------------------------------------------
-- 43. SIMPLE NUI DATA PARSER
---------------------------------------------------------------------
--
-- Some callbacks may receive a Lua table.
-- Others can receive JSON text.
---------------------------------------------------------------------

-- === HELPER FUNCTION: parseUiData(data) ===
local function parseUiData(data)
    if type(data) == "table" then
        return data
    end

    if type(data) == "string"
        and data ~= ""
    then
        local ok,
            decoded =
            pcall(
                json.decode,
                data
            )

        if ok
            and type(decoded)
                == "table"
        then
            return decoded
        end
    end

    return nil
end

---------------------------------------------------------------------
-- 44. LOBBY NUI CALLBACKS
---------------------------------------------------------------------

CMG.uiRegisterCallback(
    "garbageRequestLobbySync",
    function()
        TriggerServerEvent(
            EVENTS.REQUEST_LOBBY_SYNC
        )
    end
)

CMG.uiRegisterCallback(
    "garbageSearchPlayers",
    function(data)
        local parsed =
            parseUiData(data)

        local query =
            parsed
            and parsed.query
            or data

        if type(query) == "string" then
            TriggerServerEvent(
                EVENTS.SEARCH_PLAYERS,
                query
            )
        end
    end
)

CMG.uiRegisterCallback(
    "garbageInvitePlayer",
    function(data)
        local parsed =
            parseUiData(data)

        local userId =
            parsed
            and (
                parsed.userId
                or parsed.user_id
            )
            or data

        if userId ~= nil then
            TriggerServerEvent(
                EVENTS.INVITE_PLAYER,
                tonumber(userId)
                    or userId
            )
        end
    end
)

CMG.uiRegisterCallback(
    "garbageCancelInvite",
    function(data)
        local parsed =
            parseUiData(data)

        local userId =
            parsed
            and (
                parsed.userId
                or parsed.user_id
            )
            or data

        if userId ~= nil then
            TriggerServerEvent(
                EVENTS.CANCEL_INVITE,
                tonumber(userId)
                    or userId
            )
        end
    end
)

CMG.uiRegisterCallback(
    "garbageAcceptInvite",
    function(data)
        local parsed =
            parseUiData(data)

        local leaderUserId =
            parsed
            and parsed.leaderUserId
            or data

        if leaderUserId ~= nil then
            TriggerServerEvent(
                EVENTS.ACCEPT_INVITE,
                tonumber(leaderUserId)
                    or leaderUserId
            )
        end
    end
)

CMG.uiRegisterCallback(
    "garbageDeclineInvite",
    function(data)
        local parsed =
            parseUiData(data)

        local leaderUserId =
            parsed
            and parsed.leaderUserId
            or data

        if leaderUserId ~= nil then
            TriggerServerEvent(
                EVENTS.DECLINE_INVITE,
                tonumber(leaderUserId)
                    or leaderUserId
            )
        end
    end
)

CMG.uiRegisterCallback(
    "garbageKickMember",
    function(data)
        local parsed =
            parseUiData(data)

        local userId =
            parsed
            and (
                parsed.userId
                or parsed.user_id
            )
            or data

        if userId ~= nil then
            TriggerServerEvent(
                EVENTS.KICK_MEMBER,
                tonumber(userId)
                    or userId
            )
        end
    end
)

CMG.uiRegisterCallback(
    "garbageLeaveLobby",
    function()
        TriggerServerEvent(
            EVENTS.LEAVE_LOBBY
        )
    end
)

CMG.uiRegisterCallback(
    "garbageSetShareJobXp",
    function(data)
        local parsed =
            parseUiData(data)

        local enabled =
            parsed
            and parsed.enabled
            or data

        TriggerServerEvent(
            EVENTS.SET_SHARE_JOB_XP,
            enabled == true
        )
    end
)

CMG.uiRegisterCallback(
    "garbageSetSelectedTruck",
    function(data)
        local parsed =
            parseUiData(data)

        local selectedTruckKey =
            parsed
            and parsed.selectedTruckKey
            or data

        if type(selectedTruckKey)
            == "string"
            and selectedTruckKey
                ~= ""
        then
            TriggerServerEvent(
                EVENTS.SET_SELECTED_TRUCK,
                selectedTruckKey
            )
        end
    end
)

CMG.uiRegisterCallback(
    "garbageStartRun",
    function()
        TriggerServerEvent(
            EVENTS.START_RUN_REQUEST
        )
    end
)

CMG.uiRegisterCallback(
    "garbageCancelRun",
    function()
        TriggerServerEvent(
            EVENTS.CANCEL_RUN_REQUEST
        )
    end
)

---------------------------------------------------------------------
-- 45. LEVEL / LEADERBOARD NUI CALLBACKS
---------------------------------------------------------------------

CMG.uiRegisterCallback(
    "getGarbageLevelState",
    function()
        TriggerServerEvent(
            EVENTS.REQUEST_LEVEL_STATE
        )
    end
)

CMG.uiRegisterCallback(
    "getGarbageLevels",
    function()
        TriggerServerEvent(
            EVENTS.REQUEST_LEVEL_LIST
        )
    end
)

CMG.uiRegisterCallback(
    "getGarbageLeaderboard",
    function()
        TriggerServerEvent(
            EVENTS.REQUEST_LEADERBOARD
        )
    end
)

---------------------------------------------------------------------
-- 46. SERVER -> LEVEL UI
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.LEVEL_STATE_RESULT
)

AddEventHandler(
    EVENTS.LEVEL_STATE_RESULT,
    function(level, xp, xpMax)
        CMG.uiSendMessage({
            type =
                "GARBAGE_LEVELS",

            payload = {
                level =
                    level or 0,

                xp =
                    xp or 0,

                xpMax =
                    xpMax or 0,
            },
        })
    end
)

RegisterNetEvent(
    EVENTS.LEVEL_LIST_RESULT
)

AddEventHandler(
    EVENTS.LEVEL_LIST_RESULT,
    function(levels)
        CMG.uiSendMessage({
            type =
                "GARBAGE_LEVEL_LIST",

            payload = {
                levels =
                    levels or {},
            },
        })
    end
)

RegisterNetEvent(
    EVENTS.LEADERBOARD_RESULT
)

AddEventHandler(
    EVENTS.LEADERBOARD_RESULT,
    function(collectors)
        CMG.uiSendMessage({
            type =
                "GARBAGE_LEADERBOARD",

            payload = {
                collectors =
                    collectors
                    or {},
            },
        })
    end
)

---------------------------------------------------------------------
-- 47. DISABLE COMBAT WHILE CARRYING BAGS
---------------------------------------------------------------------

-- === HELPER FUNCTION: garbageBagCarryControlsTick() ===
local function garbageBagCarryControlsTick()
    if #GarbageJob.localCarryKeys < 1 then
        return
    end

    local ped =
        CMG.getPlayerPed()

    SetPedMaxMoveBlendRatio(
        ped,
        3.0
    )

    -- Attack / aim / melee / jump.
    DisableControlAction(0, 24, true)
    DisableControlAction(0, 257, true)
    DisableControlAction(0, 25, true)
    DisableControlAction(0, 263, true)
    DisableControlAction(0, 264, true)
    DisableControlAction(0, 140, true)
    DisableControlAction(0, 141, true)
    DisableControlAction(0, 142, true)
    DisableControlAction(0, 143, true)
    DisableControlAction(0, 22, true)
end

CMG.createThreadOnTick(
    garbageBagCarryControlsTick,
    "Garbage bag carry controls"
)

---------------------------------------------------------------------
-- 48. MAIN GARBAGE JOB TICK
---------------------------------------------------------------------

-- === HELPER FUNCTION: garbageJobTick() ===
local function garbageJobTick()
    if not GarbageJob.active then
        return
    end

    updateTruckBlip()
    resolveTruckEntity()

    -------------------------------------------------------------
    -- Crew leader's truck disappearing cancels the run.
    -------------------------------------------------------------

    if GarbageJob.isLeader
        and GarbageJob.truckNetId
        and GarbageJob.truckNetId ~= 0
    then
        local truck =
            NetworkGetEntityFromNetworkId(
                GarbageJob.truckNetId
            )

        if truck == 0
            or not DoesEntityExist(
                truck
            )
        then
            TriggerServerEvent(
                EVENTS.REPORT_MISSING_TRUCK
            )

            CMG.setHudTimerBarProviderActive(
                "garbageJob",
                false
            )

            resetGarbageJobRuntime()

            GarbageJob.active = false

            garbageNotify(
                false,
                "Truck has been deleted, run cancelled"
            )

            return
        end
    end

    local playerPed =
        CMG.getPlayerPed()

    local playerCoords =
        GetEntityCoords(
            playerPed
        )

    local binInteractRadius =
        GarbageConfig.binInteractRadius
        or 1.85

    -------------------------------------------------------------
    -- Early-run guidance: point at the truck until player gets in.
    -------------------------------------------------------------

    if isPlayerInsideJobTruck() then
        GarbageJob.truckGuideMarkerConsumed =
            true
    elseif not GarbageJob.truckGuideMarkerConsumed
        and GarbageJob.truckEntity ~= 0
        and DoesEntityExist(
            GarbageJob.truckEntity
        )
    then
        local truckCoords =
            GetEntityCoords(
                GarbageJob.truckEntity
            )

        if #(playerCoords - truckCoords)
            < 95.0
        then
            DrawMarker(
                1,
                truckCoords.x,
                truckCoords.y,
                truckCoords.z - 1.15,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                3.0,
                3.0,
                1.1,
                60,
                200,
                120,
                90,
                false,
                true,
                2,
                false,
                nil,
                nil,
                false
            )
        end
    end

    -------------------------------------------------------------
    -- COLLECTION PHASE
    -------------------------------------------------------------

    if GarbageJob.phase == "stops" then
        local stop =
            getCurrentStop()

        if stop and stop.bags then
            local stopIndex =
                GarbageJob.stopIndex

            for bagIndex, bagCoords in ipairs(
                stop.bags
            ) do
                if not isBagDeposited(
                    stopIndex,
                    bagIndex
                )
                    and not isBagBeingCarried(
                        stopIndex,
                        bagIndex
                    )
                    and #GarbageJob.localCarryKeys
                        < getMaxCarryBags()
                then
                    local distance =
                        #(
                            playerCoords
                            - bagCoords
                        )

                    if distance
                        < binInteractRadius
                    then
                        drawNativeText(
                            "Pick up a bag from the bin"
                        )

                        -- INPUT_CONTEXT / E
                        if IsControlJustPressed(
                            0,
                            51
                        ) then
                            TriggerServerEvent(
                                EVENTS.PICK_UP_BAG,
                                stopIndex,
                                bagIndex
                            )
                        end
                    end
                end
            end
        end

        ---------------------------------------------------------
        -- If carrying a bag, direct player to truck.
        ---------------------------------------------------------

        if #GarbageJob.localCarryKeys >= 1 then
            local depositCoords =
                getTruckDepositCoords()

            if depositCoords then
                local distance =
                    #(
                        playerCoords
                        - depositCoords
                    )

                if distance
                    < (
                        GarbageConfig
                            .truckDepositRadius
                        + 0.5
                    )
                then
                    resolveTruckEntity()

                    local truck =
                        GarbageJob.truckEntity

                    if GarbageJob.depositInProgress then
                        drawNativeText(
                            "Loading the truck..."
                        )
                    elseif truck ~= 0
                        and areTruckRearDoorsOpen(
                            truck
                        )
                    then
                        drawNativeNotification(
                            "Press ~INPUT_CONTEXT~ to load the bag into the truck."
                        )

                        drawNativeText(
                            "Load the bag into the truck"
                        )

                        if IsControlJustPressed(
                            0,
                            51
                        ) then
                            tryDepositBag()
                        end
                    else
                        drawNativeText(
                            "Open the ~y~back of the truck~w~ to load the bag"
                        )

                        if truck ~= 0
                            and DoesEntityExist(
                                truck
                            )
                        then
                            EnableControlAction(
                                0,
                                47,
                                true
                            )

                            drawNativeNotification(
                                "Press ~INPUT_DETONATE~ to open the truck ~y~rear doors~s~."
                            )

                            if IsControlJustPressed(
                                0,
                                47
                            )
                                or IsDisabledControlJustPressed(
                                    0,
                                    47
                                )
                            then
                                openTruckRearDoors(
                                    truck
                                )
                            end
                        end

                        if IsControlJustPressed(
                            0,
                            51
                        ) then
                            garbageNotify(
                                false,
                                "Open the back of the truck first."
                            )
                        end
                    end
                else
                    drawNativeText(
                        "Take the bag to the ~y~back of the truck~w~"
                    )
                end
            end
        end

        return
    end

    -------------------------------------------------------------
    -- RETURN-TO-DEPOT PHASE
    -------------------------------------------------------------

    if GarbageJob.phase ~= "return" then
        return
    end

    local depot =
        GarbageConfig.baseReturn

    if not depot then
        return
    end

    local truckCompleteRadius =
        tonumber(
            GarbageConfig.baseTruckCompleteRadius
        )
        or 22.0

    local playerCompleteRadius =
        tonumber(
            GarbageConfig.baseCompleteRadius
        )
        or 25.0

    local completionRadius =
        math.max(
            playerCompleteRadius,
            truckCompleteRadius
        )

    local playerAtDepot =
        #(playerCoords - depot)
        < completionRadius

    resolveTruckEntity()

    local truck =
        GarbageJob.truckEntity

    local truckAtDepot =
        false

    if truck ~= 0
        and DoesEntityExist(truck)
    then
        truckAtDepot =
            #(
                GetEntityCoords(truck)
                - depot
            ) < completionRadius
    end

    local playerInsideTruck =
        isPlayerInsideJobTruck()

    -------------------------------------------------------------
    -- Non-leaders wait for the leader to complete.
    -------------------------------------------------------------

    if not GarbageJob.isLeader then
        if playerAtDepot
            or (
                playerInsideTruck
                and truckAtDepot
            )
        then
            drawNativeText(
                "Wait for the ~y~leader~w~ at the depot to finish the run."
            )
        end

        return
    end

    -------------------------------------------------------------
    -- Leader must return the truck.
    -------------------------------------------------------------

    if not truckAtDepot then
        drawNativeText(
            "Drive the job truck into the depot area"
        )

        return
    end

    if not (
        playerAtDepot
        or playerInsideTruck
    )
    then
        drawNativeText(
            "Be at the depot with the job truck to finish"
        )

        return
    end

    if GetEntitySpeed(truck) >= 4.0 then
        drawNativeText(
            "Slow down and park in the depot to finish the run"
        )

        return
    end

    -------------------------------------------------------------
    -- Server validates completion.
    -- Original client retries about every 900 ms.
    -------------------------------------------------------------

    local now =
        GetGameTimer()

    local nextAttempt =
        GarbageJob.garbageFinishNextAttemptAt
        or 0

    if now >= nextAttempt then
        GarbageJob.garbageFinishNextAttemptAt =
            now + 900

        TriggerServerEvent(
            EVENTS.TRY_FINISH_RUN
        )
    end

    drawNativeText(
        "Finishing run…"
    )
end

CMG.createThreadOnTick(
    garbageJobTick,
    "Garbage job tick"
)

---------------------------------------------------------------------
-- 49. DEVELOPMENT PREVIEW HELPERS
---------------------------------------------------------------------

-- === HELPER FUNCTION: clearOffJobDevPreview() ===
local function clearOffJobDevPreview()
    if GarbageJob.active then
        return
    end

    if not isCarryingTwoBags() then
        return
    end

    GarbageJob.localCarryKeys = {}
    scheduleCarryRebuild()
end

-- === HELPER FUNCTION: spawnOffJobDevPreview() ===
local function spawnOffJobDevPreview()
    local userId =
        CMG.getClientUserId()

    if not userId
        or not CMG.isDeveloper(userId)
        or not SecondBagDev.useOverride
        or GarbageJob.active
        or isCarryingTwoBags()
    then
        return
    end

    GarbageJob.localCarryKeys = {
        DEV_PREVIEW_BAG_A,
        DEV_PREVIEW_BAG_B,
    }

    scheduleCarryRebuild()
end

-- === HELPER FUNCTION: refreshSecondBagDevPreview() ===
local function refreshSecondBagDevPreview()
    if not SecondBagDev.useOverride then
        return
    end

    local userId =
        CMG.getClientUserId()

    if not userId
        or not CMG.isDeveloper(userId)
        or #GarbageJob.localCarryKeys < 2
    then
        return
    end

    rebuildCarriedBags()
end

local function nudgeSecondBagValue(
    field,
    amount
)
    SecondBagDev[field] =
        (
            tonumber(
                SecondBagDev[field]
            )
            or 0.0
        )
        + amount

    refreshSecondBagDevPreview()
end

-- === HELPER FUNCTION: printSecondBagConfig() ===
local function printSecondBagConfig()
    local bone =
        tonumber(
            SecondBagDev.bone
        )
        or 18905

    local ox =
        tonumber(
            SecondBagDev.ox
        )
        or 0.0

    local oy =
        tonumber(
            SecondBagDev.oy
        )
        or 0.0

    local oz =
        tonumber(
            SecondBagDev.oz
        )
        or 0.0

    local rx =
        tonumber(
            SecondBagDev.rx
        )
        or 0.0

    local ry =
        tonumber(
            SecondBagDev.ry
        )
        or 0.0

    local rz =
        tonumber(
            SecondBagDev.rz
        )
        or 0.0

    print(
        "--- Paste into resources/cmg/cfg/cfg_garbage.lua ---"
    )

    print(
        string.format(
            "cfg.bagAttachSecondBone = %d",
            bone
        )
    )

    print(
        string.format(
            "cfg.bagAttachSecond = { %.4f, %.4f, %.4f, %.4f, %.4f, %.4f }",
            ox,
            oy,
            oz,
            rx,
            ry,
            rz
        )
    )

    print("--- end ---")

    tCMG.notify(
        "~g~Printed cfg.bagAttachSecond* lines to F8."
    )
end

---------------------------------------------------------------------
-- 50. DEVELOPMENT MENU
---------------------------------------------------------------------

CMG.registerDevMenuItems(
    "Jobs/Garbage second bag",
    function()
        RageUI.Separator(
            "Dual carry: 2nd prop attach (bone-local ox..rz)"
        )

        RageUI.Separator(
            "Off-job: enable override, then use ~y~Spawn preview bags~s~ (no server spawn spam)."
        )

        RageUI.Checkbox(
            "Use live dev tune",
            "When on (developers only), 2nd bag uses values below instead of cfg.",
            SecondBagDev.useOverride == true,
            {},
            function(_, _, _, checked)
                SecondBagDev.useOverride =
                    checked == true

                if not SecondBagDev.useOverride then
                    clearOffJobDevPreview()
                elseif not GarbageJob.active then
                    spawnOffJobDevPreview()
                elseif #GarbageJob.localCarryKeys
                    >= 1
                then
                    rebuildCarriedBags()
                end
            end
        )

        RageUI.Button(
            "Spawn preview bags (off-job)",
            "Two local props only. Not needed during a real run.",
            true,
            function(_, _, selected)
                if selected then
                    spawnOffJobDevPreview()
                end
            end
        )

        ---------------------------------------------------------
        -- Choose which coordinate we are adjusting.
        ---------------------------------------------------------

        SecondBagDev.axisIndex =
            math.max(
                1,
                math.min(
                    6,
                    math.floor(
                        tonumber(
                            SecondBagDev.axisIndex
                        )
                        or 1
                    )
                )
            )

        RageUI.List(
            "Adjust axis",
            AXIS_LABELS,
            SecondBagDev.axisIndex,
            "Which offset (OX-OZ) or rotation (RX-RZ) nudge buttons change.",
            {},
            true,
            function(_, _, _, index)
                SecondBagDev.axisIndex =
                    index
            end
        )

        ---------------------------------------------------------
        -- Position step.
        ---------------------------------------------------------

        RageUI.List(
            "Position step (m)",
            POSITION_STEP_LABELS,
            SecondBagDev.posStepIndex,
            "Step for OX/OY/OZ when using nudge +/-.",
            {},
            true,
            function(_, _, _, index)
                SecondBagDev.posStepIndex =
                    index
            end
        )

        ---------------------------------------------------------
        -- Rotation step.
        ---------------------------------------------------------

        RageUI.List(
            "Rotation step (deg)",
            ROTATION_STEP_LABELS,
            SecondBagDev.rotStepIndex,
            "Step for RX/RY/RZ when using nudge +/-.",
            {},
            true,
            function(_, _, _, index)
                SecondBagDev.rotStepIndex =
                    index
            end
        )

        ---------------------------------------------------------
        -- Bone preset.
        ---------------------------------------------------------

        local boneLabels = {}
        local selectedBoneIndex = 1

        for index, preset in ipairs(
            BONE_PRESETS
        ) do
            boneLabels[index] =
                preset.label

            if preset.id
                == tonumber(
                    SecondBagDev.bone
                )
            then
                selectedBoneIndex =
                    index
            end
        end

        RageUI.List(
            "Bone preset",
            boneLabels,
            selectedBoneIndex,
            "Ped bone id for 2nd bag (dev tune only when override on).",
            {},
            true,
            function(_, _, _, index)
                SecondBagDev.bone =
                    BONE_PRESETS[
                        index
                    ].id

                refreshSecondBagDevPreview()
            end
        )

        RageUI.Separator(
            string.format(
                "bone %s  pos %.4f, %.4f, %.4f  rot %.2f, %.2f, %.2f",
                tostring(
                    SecondBagDev.bone
                ),
                tonumber(
                    SecondBagDev.ox
                ) or 0.0,
                tonumber(
                    SecondBagDev.oy
                ) or 0.0,
                tonumber(
                    SecondBagDev.oz
                ) or 0.0,
                tonumber(
                    SecondBagDev.rx
                ) or 0.0,
                tonumber(
                    SecondBagDev.ry
                ) or 0.0,
                tonumber(
                    SecondBagDev.rz
                ) or 0.0
            )
        )

        ---------------------------------------------------------
        -- Nudge selected value.
        ---------------------------------------------------------

        local axisIndex =
            SecondBagDev.axisIndex

        local field =
            AXIS_FIELDS[
                axisIndex
            ]

        local step

        if axisIndex <= 3 then
            step =
                POSITION_STEPS[
                    SecondBagDev.posStepIndex
                ]
        else
            step =
                ROTATION_STEPS[
                    SecondBagDev.rotStepIndex
                ]
        end

        RageUI.Button(
            "Nudge + (add step)",
            string.format(
                "%s += %.5g",
                field,
                step
            ),
            true,
            function(_, _, selected)
                if selected then
                    nudgeSecondBagValue(
                        field,
                        step
                    )
                end
            end
        )

        RageUI.Button(
            "Nudge - (subtract step)",
            string.format(
                "%s -= %.5g",
                field,
                step
            ),
            true,
            function(_, _, selected)
                if selected then
                    nudgeSecondBagValue(
                        field,
                        -step
                    )
                end
            end
        )

        RageUI.Button(
            "Reload numbers from cfg module",
            "CMG.loadModule(cfg_garbage); does not toggle override.",
            true,
            function(_, _, selected)
                if selected then
                    GarbageConfig =
                        CMG.loadModule(
                            "cfg/cfg_garbage"
                        )

                    loadSecondBagDevValuesFromConfig()

                    refreshSecondBagDevPreview()

                    tCMG.notify(
                        "~g~Second-bag dev numbers reset from cfg."
                    )
                end
            end
        )

        RageUI.Button(
            "Print cfg lines (F8)",
            "cfg.bagAttachSecondBone + cfg.bagAttachSecond table row.",
            true,
            function(_, _, selected)
                if selected then
                    printSecondBagConfig()
                end
            end
        )
    end
)

---------------------------------------------------------------------
-- 51. GARBAGE JOB START INFORMATION AREA
---------------------------------------------------------------------

local GARBAGE_JOB_START =
    vector3(
        -334.55859375,
        -1538.3623046875,
        27.731037139893
    )

-- === HELPER FUNCTION: showGarbageJobStartInfo() ===
local function showGarbageJobStartInfo()
    drawNativeNotification(
        "Press ~INPUT_SELECT_CHARACTER_FRANKLIN~ to start your Garbage job."
    )
end

tCMG.addPropMarker(
    "bzzz_marker_point_green_anim",
    GARBAGE_JOB_START.x,
    GARBAGE_JOB_START.y,
    GARBAGE_JOB_START.z,
    40.0
)

CMG.createArea(
    "garbage_job_start_info",
    GARBAGE_JOB_START,
    1.0,
    8.0,

    function()
        -- No special action when entering.
    end,

    function()
        -- No special action when leaving.
    end,

    showGarbageJobStartInfo,
    {}
)

---------------------------------------------------------------------
-- 52. BEGINNER MAP
---------------------------------------------------------------------
--
-- If you are trying to understand this file from scratch, follow this:
--
--   A. GarbageJob
--      Stores everything about the current run.
--
--   B. EVENTS.START_RUN
--      Server tells this client a run has begun.
--
--   C. spawnGarbageTruck()
--      The crew leader creates the truck.
--
--   D. updateStopBlips()
--      Shows all bags at the current collection stop.
--
--   E. garbageJobTick()
--      Player presses E near a bag.
--
--   F. EVENTS.BAG_PICKUP_CONFIRMED
--      Server confirms the bag belongs to this player.
--
--   G. rebuildCarriedBags()
--      Creates the bag prop(s) and attaches them to the ped.
--
--   H. tryDepositBag()
--      Plays the throw animation and asks the server to deposit a bag.
--
--   I. EVENTS.BAG_DEPOSIT_CONFIRMED
--      Server returns the bag keys still being carried.
--
--   J. phase == "return"
--      Everybody returns to the depot.
--
--   K. EVENTS.TRY_FINISH_RUN
--      Leader asks the server to validate completion.
--
-- The SHX variables in the decompile are just temporary register names.
-- They are not meaningful gameplay concepts.
---------------------------------------------------------------------
