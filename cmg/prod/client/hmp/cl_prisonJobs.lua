--[[
    LEVEL 1 BEGINNER GUIDE — Prison Jobs
    =========================================

    File: cmg/prod/client/hmp/cl_prisonJobs.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: prison gameplay, specifically the Prison Jobs feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 5
      * Background threads: 1
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: c88f69209e, 7a9cb961f5, 9be829c8d9
      * Local event handlers: none found by static scan
      * Server events sent: 7a9cb961f5, 9be829c8d9
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_prison

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
    Prison Cleaning Job
    ===================

    Config: cfg/cfg_prison

    Server event c88f69209e
      Starts the prison-cleaning activity and copies cfg cleaning positions.

    While cleaning:
      * yellow markers show cleaning spots within 25 metres
      * the nearest spot within 2 metres can be cleaned with E
      * a mop prop (model -320848029) is attached to the player's hand
      * idle mop animation is maintained
      * server event 9be829c8d9(index) is sent when cleaning starts
      * server event 9be829c8d9(index) later removes that completed point

    Server event 7a9cb961f5
      Stops/cleans up the job.

    If the player leaves the prison area, the client rate-limits
    TriggerServerEvent("7a9cb961f5") to once per second.

    The original code's handcuff/taze condition is preserved: while the
    cleaning animation thread is active, a handcuffed OR tazed player is not
    allowed to proceed with normal cleaning interaction.
]]

local prisonConfig =
    CMG.loadModule(
        "cfg/cfg_prison"
    )

local cleaningActive = false

-- True while one cleaning animation is playing.
local currentlyCleaning = false

-- Remaining cleaning positions copied from config.
local cleaningPositions = nil

local mopEntity = 0

local lastOutsideStopRequestAt = 0


-- ============================================================
-- MOP ATTACHMENT
-- ============================================================

local function attachMopForWorking(
    mop,
    ped
)
    AttachEntityToEntity(
        mop,
        ped,
        GetPedBoneIndex(
            ped,
            28422
        ),
        -0.02,
        -0.06,
        -0.2,
        -13.377,
        10.3568,
        17.9681,
        true,
        true,
        false,
        true,
        1,
        true
    )
end


local function attachMopIdle(
    mop,
    ped
)
    AttachEntityToEntity(
        mop,
        ped,
        GetPedBoneIndex(
            ped,
            28422
        ),
        0.0,
        0.0,
        -0.12,
        0.0,
        0.0,
        0.0,
        true,
        true,
        false,
        true,
        1,
        true
    )
end


-- ============================================================
-- PLAY ONE CLEANING ANIMATION
-- ============================================================

-- === HELPER FUNCTION: playCleaningAnimation() ===
local function playCleaningAnimation()
    local ped =
        PlayerPedId()

    attachMopIdle(
        mopEntity,
        ped
    )

    local animDict =
        "move_mop"

    local animName =
        "idle_scrub_small_player"

    CMG.loadAnimDict(
        animDict
    )

    local animationDurationMs =
        math.floor(
            GetAnimDuration(
                animDict,
                animName
            )
            * 1000.0
        )

    local startedAt =
        GetGameTimer()

    while GetGameTimer()
        - startedAt
        < animationDurationMs do

        if not cleaningActive then
            return
        end

        if not IsEntityPlayingAnim(
            ped,
            animDict,
            animName,
            7
        ) then
            TaskPlayAnim(
                ped,
                animDict,
                animName,
                8.0,
                8.0,
                -1,
                51,
                1.0,
                false,
                false,
                false
            )
        end

        Wait(0)
    end

    RemoveAnimDict(
        animDict
    )

    attachMopForWorking(
        mopEntity,
        ped
    )

    currentlyCleaning =
        false
end


-- ============================================================
-- CREATE MOP ON DEMAND
-- ============================================================

-- === HELPER FUNCTION: ensureMopExists(ped) ===
local function ensureMopExists(ped)
    if DoesEntityExist(
        mopEntity
    ) then
        return
    end

    local modelHash =
        -320848029

    CMG.loadModel(
        modelHash
    )

    local coords =
        CMG.getPlayerCoords()

    CMG.requestEntitySpawn(
        "prison_mop"
    )

    mopEntity =
        CreateObject(
            modelHash,
            coords.x,
            coords.y,
            coords.z,
            true,
            false,
            false
        )

    SetModelAsNoLongerNeeded(
        modelHash
    )

    attachMopForWorking(
        mopEntity,
        ped
    )
end


-- ============================================================
-- MAIN CLEANING TICK
-- ============================================================

-- === HELPER FUNCTION: prisonCleaningTick() ===
local function prisonCleaningTick()
    if not CMG.isPlayerNearPrison() then
        local now =
            GetGameTimer()

        if now
            - lastOutsideStopRequestAt
            > 1000 then

            TriggerServerEvent(
                "7a9cb961f5"
            )

            lastOutsideStopRequestAt =
                now
        end

        return
    end

    local closestIndex = 0
    local closestDistance = 2.0

    for index, coords
        in pairs(
            cleaningPositions
            or {}
        ) do

        local distance =
            #(
                CMG.getPlayerCoords()
                - coords
            )

        if distance < closestDistance then
            closestIndex = index
            closestDistance =
                distance
        end

        if distance < 25.0 then
            DrawMarker(
                0,
                coords.x,
                coords.y,
                coords.z - 0.7,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.0,
                0.2,
                0.2,
                0.2,
                255,
                255,
                0,
                255,
                true,
                false,
                2,
                false,
                nil,
                nil,
                false
            )
        end
    end

    if currentlyCleaning
        and not CMG.isHandcuffed()
        and not tCMG.isTazed() then
        return
    end

    local ped =
        PlayerPedId()

    local carryAnimDict =
        "missfbi4prepp1"

    if not IsEntityPlayingAnim(
        ped,
        carryAnimDict,
        "idle",
        7
    ) then

        CMG.loadAnimDict(
            carryAnimDict
        )

        TaskPlayAnim(
            ped,
            carryAnimDict,
            "idle",
            8.0,
            8.0,
            -1,
            51,
            1.0,
            false,
            false,
            false
        )

        RemoveAnimDict(
            carryAnimDict
        )
    end

    ensureMopExists(ped)

    if closestIndex == 0 then
        drawNativeText(
            "Locate the next ~y~cleaning location~w~"
        )
        return
    end

    drawNativeNotification(
        "Press ~INPUT_CONTEXT~ to clean the mess."
    )

    if IsControlJustPressed(
        0,
        51
    ) then
        TriggerServerEvent(
            "9be829c8d9",
            closestIndex
        )

        currentlyCleaning =
            true

        -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
        Citizen.CreateThread(
            playCleaningAnimation
        )
    end
end


-- ============================================================
-- START / STOP / COMPLETE POINT
-- ============================================================

RegisterNetEvent(
    "c88f69209e",
    function()
        cleaningActive =
            true

        cleaningPositions =
            table.copy(
                prisonConfig.cleaningPositions
            )

        CMG.createThreadOnTick(
            prisonCleaningTick,
            "Prison Cleaning"
        )
    end
)


RegisterNetEvent(
    "7a9cb961f5",
    function()
        cleaningActive =
            false

        cleaningPositions = nil

        DeleteEntity(
            mopEntity
        )

        StopAnimTask(
            PlayerPedId(),
            "missfbi4prepp1",
            "idle",
            7
        )

        CMG.deleteThreadOnTick(
            prisonCleaningTick
        )
    end
)


RegisterNetEvent(
    "9be829c8d9",
    function(cleaningIndex)
        if cleaningPositions then
            cleaningPositions[
                cleaningIndex
            ] = nil
        end
    end
)
