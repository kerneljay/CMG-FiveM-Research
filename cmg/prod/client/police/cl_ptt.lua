--[[
    LEVEL 1 BEGINNER GUIDE — Ptt
    =================================

    File: cmg/prod/client/police/cl_ptt.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Ptt feature.

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
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: pma-voice:radioActive
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_business

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
    Emergency-Service Radio PTT Animation + Indoor Voice Range
    ==========================================================

    This file connects pma-voice radio activity to:
      * a radio animation
      * NUI "radio on/off" sound/state messages
      * temporary combat-control disabling while the animation plays
      * shorter maximum voice proximity inside selected interiors

    Radio animation starts only when:
      * player is emergency service
      * animations are allowed
      * radio becomes active
      * ped is not reloading
      * pma-voice radio volume is above zero
      * player is actually in a radio channel
      * animation is not already active

    The exact business/interior hashes are preserved from the original file.
]]

local businessConfig =
    CMG.loadModule(
        "cfg/cfg_business"
    )

local radioAnimationActive = false


-- ============================================================
-- RADIO PTT ANIMATION
-- ============================================================

AddEventHandler(
    "pma-voice:radioActive",
    function(isRadioActive)
        if not CMG.isEmergencyService()
            or not tCMG.canAnim() then
            return
        end

        local playerId =
            PlayerId()

        local ped =
            PlayerPedId()

        if isRadioActive then
            if not tCMG.canAnim()
                or IsPedReloading(ped)
                or exports["pma-voice"]:getRadioVolume() <= 0.0
                or not CMG.isInRadioChannel()
                or radioAnimationActive then
                return
            end

            -- Beginner: sends a Lua table to the HTML/JavaScript UI.
            SendNUIMessage({
                transactionType =
                    "playRadioOn"
            })

            local animDict =
                "random@arrests"

            CMG.loadAnimDict(
                animDict
            )

            local animName =
                IsPlayerFreeAiming(
                    playerId
                )
                and "radio_chatter"
                or "generic_radio_enter"

            TaskPlayAnim(
                ped,
                animDict,
                animName,
                8.0,
                2.0,
                -1,
                50,
                2.0,
                false,
                false,
                false
            )

            RemoveAnimDict(
                animDict
            )

            radioAnimationActive =
                true

        elseif radioAnimationActive then
            -- Beginner: sends a Lua table to the HTML/JavaScript UI.
            SendNUIMessage({
                transactionType =
                    "playRadioOff"
            })

            ClearPedTasks(ped)

            radioAnimationActive =
                false
        end
    end
)


-- ============================================================
-- DISABLE COMBAT WHILE USING THE RADIO ANIMATION
-- ============================================================

-- === HELPER FUNCTION: DisableActions(playerId) ===
function DisableActions(playerId)
    DisableControlAction(
        1,
        140,
        true
    )

    DisableControlAction(
        1,
        141,
        true
    )

    DisableControlAction(
        1,
        142,
        true
    )

    DisableControlAction(
        1,
        37,
        true
    )

    DisablePlayerFiring(
        playerId,
        true
    )
end


-- === HELPER FUNCTION: policePttTick() ===
local function policePttTick()
    if not CMG.hasClientPermission(
        "police.onduty.permission"
    )
        or not tCMG.canAnim()
        or not radioAnimationActive then
        return
    end

    local ped =
        CMG.getPlayerPed()

    if IsEntityPlayingAnim(
        ped,
        "random@arrests",
        "generic_radio_enter",
        3
    )
        or IsEntityPlayingAnim(
            ped,
            "random@arrests",
            "radio_chatter",
            3
        ) then

        DisableActions(
            PlayerId()
        )
    end
end


CMG.createThreadOnTick(
    policePttTick,
    "Police Push To Talk"
)


-- ============================================================
-- INDOOR VOICE PROXIMITY
-- ============================================================

-- Default max proximity mode by interior hash.
local interiorVoiceModes = {
    [137473] = 2,
    [121346] = 2,
    [120834] = 2,
    [127234] = 2
}

-- Room-specific override:
-- interior 120834, room key -1174491112 -> mode 1.
local roomVoiceModes = {
    [120834] = {
        [-1174491112] = 1
    }
}

-- Business config can define additional interior hashes which use mode 2.
for _, location
    in pairs(
        businessConfig.locations
        or {}
    ) do

    if location.interiorHash then
        interiorVoiceModes[
            location.interiorHash
        ] = 2
    end
end

local activeProximityMode = nil


-- === HELPER FUNCTION: interiorVoiceTick(context) ===
local function interiorVoiceTick(context)
    local interiorHash =
        GetInteriorFromEntity(
            context.playerPed
        )

    local wantedMode =
        interiorVoiceModes[
            interiorHash
        ]

    local roomOverrides =
        roomVoiceModes[
            interiorHash
        ]

    if roomOverrides then
        local roomKey =
            GetRoomKeyFromEntity(
                context.playerPed
            )

        if roomOverrides[
            roomKey
        ] then
            wantedMode =
                roomOverrides[
                    roomKey
                ]
        end
    end

    if wantedMode then
        if activeProximityMode
            ~= wantedMode then

            exports["pma-voice"]:setMaxProximityMode(
                wantedMode
            )

            activeProximityMode =
                wantedMode
        end

    elseif activeProximityMode then
        exports["pma-voice"]:clearMaxProximityMode()

        activeProximityMode =
            nil
    end
end


CMG.createThreadOnTick(
    interiorVoiceTick,
    "Interior Voices"
)
