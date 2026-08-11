--[[
    LEVEL 1 BEGINNER GUIDE — Hudmic
    ====================================

    File: cmg/prod/client/hud/cl_hudmic.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: HUD and on-screen player information, specifically the Hudmic feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 1
      * Background threads: 2
      * Always-running loops: 2
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: pma-voice:setTalkingMode
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
    Voice / Microphone HUD
    ======================

    This small bridge keeps the custom HUD in sync with pma-voice/Mumble.

    HUD fields sent:
      mic_level = current pma-voice talking mode
      isTalking = whether the local player is actively transmitting voice
      isMuted   = true when Mumble is disconnected

    Two connection flags are kept so the NUI is only updated when the mute
    state actually changes.
]]

local mumbleConnected = true
local previousConnectedState = true
local wasTalking = false

-- === HELPER FUNCTION: updateMicrophoneSetting(settingType, value) ===
local function updateMicrophoneSetting(settingType, value)
    CMG.sendHudNuiMessage(
        "SET_MICROPHONE_SETTINGS",
        {
            type = settingType,
            value = value
        }
    )
end

AddEventHandler(
    "pma-voice:setTalkingMode",
    function(mode)
        updateMicrophoneSetting(
            "mic_level",
            mode
        )
    end
)

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    while true do
        local isTalking =
            NetworkIsPlayerTalking(
                PlayerId()
            )

        if isTalking and not wasTalking then
            wasTalking = true
            updateMicrophoneSetting(
                "isTalking",
                true
            )

        elseif not isTalking
            and wasTalking then

            wasTalking = false
            updateMicrophoneSetting(
                "isTalking",
                false
            )
        end

        Wait(0)
    end
end)

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    while true do
        local connected =
            MumbleIsConnected()

        if not connected then
            if mumbleConnected
                or previousConnectedState then

                mumbleConnected = false
                previousConnectedState = false

                updateMicrophoneSetting(
                    "isMuted",
                    true
                )
            end

        elseif not mumbleConnected
            or not previousConnectedState then

            mumbleConnected = true
            previousConnectedState = false

            updateMicrophoneSetting(
                "isMuted",
                false
            )
        end

        Wait(2000)
    end
end)
