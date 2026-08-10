--[[
    Player Animation Commands
    =========================

    Beginner overview:
      This file adds simple chat commands such as:
        /salute
        /finger
        /finger2
        /facepalm
        /damn
        /fail
        /sign1
        /sign2
        /fingerbum
        /touchself
        /wanker
        /cigar

      Most commands do the exact same job:
        1. Check that your ped exists and is alive.
        2. Load an animation dictionary.
        3. If that animation is already playing, play its "exit" animation.
        4. Otherwise play the requested animation.

      The original decompiled file repeated that logic hundreds of times, so
      this readable version puts the shared behaviour into one helper.
]]

-- /fingerbum temporarily prevents shooting while its animation is active.
local blockFiringForAnimation = false

-- /cigar stores the spawned cigar prop here so it can be deleted later.
local cigarObject = 0

-- The original script used this global value.
-- Keep it global in case another client file reads it.
IsCigar = IsCigar or false


-- ============================================================
-- BASIC ANIMATION HELPERS
-- ============================================================

local function canUseAnimation()
    local ped = CMG.getPlayerPed()

    if not DoesEntityExist(ped) then
        return false, ped
    end

    if IsEntityDead(ped) then
        return false, ped
    end

    return true, ped
end


local function playUpperBodyAnim(ped, dict, anim)
    TaskPlayAnim(
        ped,
        dict,
        anim,
        8.0,
        1.0,
        -1,
        49,
        0,
        false,
        false,
        false
    )
end


local function stopToggleAnimation(ped, dict, exitWaitMs, clearAfterExit)
    playUpperBodyAnim(ped, dict, "exit")

    Wait(exitWaitMs or 100)

    if clearAfterExit then
        ClearPedSecondaryTask(CMG.getPlayerPed())
    end
end


-- Registers one of the repeated animation commands.
--
-- options:
--   startWaitMs       = how long the original code waited after starting
--   autoExit          = automatically play "exit" after startWaitMs
--   stopWaitMs        = wait after playing exit when toggled off
--   clearAfterStop    = clear the secondary task after toggling off
--   clearAfterAutoExit= clear the task after an automatic exit
--   blockFiring       = keep normal weapon firing disabled while active
local function registerToggleAnimation(commandName, dict, animName, options)
    options = options or {}

    RegisterCommand(commandName, function()
        local allowed, ped = canUseAnimation()

        if not allowed then
            return
        end

        CMG.loadAnimDict(dict)

        local alreadyPlaying =
            IsEntityPlayingAnim(
                ped,
                dict,
                animName,
                3
            )

        if alreadyPlaying then
            stopToggleAnimation(
                ped,
                dict,
                options.stopWaitMs or 100,
                options.clearAfterStop
            )

            if options.blockFiring then
                blockFiringForAnimation = false
            end
        else
            playUpperBodyAnim(
                ped,
                dict,
                animName
            )

            if options.blockFiring then
                blockFiringForAnimation = true
            end

            if options.startWaitMs then
                Wait(options.startWaitMs)
            end

            if options.autoExit then
                playUpperBodyAnim(
                    ped,
                    dict,
                    "exit"
                )

                Wait(options.autoExitWaitMs or 100)

                if options.clearAfterAutoExit then
                    ClearPedSecondaryTask(
                        CMG.getPlayerPed()
                    )
                end
            end
        end

        RemoveAnimDict(dict)
    end, false)
end


-- ============================================================
-- SIMPLE COMMANDS
-- ============================================================

registerToggleAnimation(
    "salute",
    "anim@mp_player_intuppersalute",
    "idle_a",
    {
        startWaitMs = 500,
        stopWaitMs = 600,
        clearAfterStop = true
    }
)

registerToggleAnimation(
    "finger",
    "anim@mp_player_intselfiethe_bird",
    "idle_a",
    {
        startWaitMs = 5000,
        autoExit = true,
        autoExitWaitMs = 100,
        clearAfterAutoExit = true,
        stopWaitMs = 100,
        clearAfterStop = true
    }
)

registerToggleAnimation(
    "finger2",
    "anim@mp_player_intupperfinger",
    "idle_a",
    {
        startWaitMs = 5000,
        autoExit = true,
        autoExitWaitMs = 100,
        clearAfterAutoExit = true,
        stopWaitMs = 100,
        clearAfterStop = true
    }
)

registerToggleAnimation(
    "facepalm",
    "anim@mp_player_intupperface_palm",
    "idle_a",
    {
        startWaitMs = 5000,
        autoExit = true,
        autoExitWaitMs = 100,
        clearAfterAutoExit = true,
        stopWaitMs = 100,
        clearAfterStop = true
    }
)

registerToggleAnimation(
    "damn",
    "gestures@m@standing@casual",
    "gesture_damn",
    {
        startWaitMs = 500,
        stopWaitMs = 100
    }
)

registerToggleAnimation(
    "fail",
    "random@car_thief@agitated@idle_a",
    "agitated_idle_a",
    {
        startWaitMs = 500,
        stopWaitMs = 100
    }
)

registerToggleAnimation(
    "sign1",
    "mp_player_int_uppergang_sign_a",
    "mp_player_int_gang_sign_a",
    {
        startWaitMs = 500,
        stopWaitMs = 100
    }
)

registerToggleAnimation(
    "sign2",
    "mp_player_int_uppergang_sign_b",
    "mp_player_int_gang_sign_b",
    {
        startWaitMs = 500,
        stopWaitMs = 100
    }
)

registerToggleAnimation(
    "fingerbum",
    "mp_player_int_upperarse_pick",
    "mp_player_int_arse_pick",
    {
        startWaitMs = 500,
        stopWaitMs = 100,
        blockFiring = true
    }
)

registerToggleAnimation(
    "touchself",
    "mp_player_int_uppergrab_crotch",
    "mp_player_int_grab_crotch",
    {
        startWaitMs = 500,
        stopWaitMs = 100
    }
)

registerToggleAnimation(
    "wanker",
    "mp_player_intwank",
    "mp_player_int_wank",
    {
        startWaitMs = 500,
        stopWaitMs = 100
    }
)


-- ============================================================
-- CIGAR COMMAND
-- ============================================================

RegisterCommand("cigar", function()
    local allowed, ped = canUseAnimation()

    if not allowed then
        return
    end

    local animDict =
        "mp_player_int_uppersmoke"

    CMG.loadAnimDict(animDict)

    -- --------------------------------------------------------
    -- TURN CIGAR OFF
    -- --------------------------------------------------------

    if IsCigar then
        Wait(500)

        if cigarObject ~= 0
            and DoesEntityExist(cigarObject) then
            DeleteObject(cigarObject)
        end

        cigarObject = 0
        IsCigar = false

        RemoveAnimDict(animDict)
        return
    end

    -- --------------------------------------------------------
    -- TURN CIGAR ON
    -- --------------------------------------------------------

    IsCigar = true

    Wait(500)

    local coords = GetEntityCoords(ped)

    -- Framework bookkeeping before creating this entity.
    CMG.requestEntitySpawn(
        "animation_cigar_object"
    )

    cigarObject = CreateObject(
        GetHashKey("prop_cigar_02"),
        coords.x,
        coords.y,
        coords.z + 0.2,
        true,
        true,
        true
    )

    AttachEntityToEntity(
        cigarObject,
        ped,
        GetPedBoneIndex(ped, 47419),
        0.015,
        -0.0001,
        0.003,
        55.0,
        0.0,
        -85.0,
        true,
        true,
        false,
        true,
        1,
        true
    )

    TaskPlayAnim(
        ped,
        animDict,
        "mp_player_int_smoke",
        8.0,
        1.0,
        -1,
        49,
        0,
        false,
        false,
        false
    )

    RemoveAnimDict(animDict)
end, false)


-- ============================================================
-- FIRING SAFETY TICK
-- ============================================================

local function animationSafetyTick()
    if blockFiringForAnimation then
        DisablePlayerFiring(
            PlayerId(),
            true
        )
    end
end

CMG.createThreadOnTick(
    animationSafetyTick,
    "Anim Check Tick"
)


-- ============================================================
-- EXPORT
-- ============================================================

exports("canAnim", function()
    return tCMG.canAnim()
end)
