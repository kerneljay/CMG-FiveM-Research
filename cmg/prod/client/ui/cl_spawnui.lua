--[[
    LEVEL 1 BEGINNER GUIDE — Spawnui
    =====================================

    File: cmg/prod/client/ui/cl_spawnui.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: NUI/menu/interface behaviour, specifically the Spawnui feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 0
      * Background threads: 1
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: 0cee493655, 2f40f9b5e7
      * Local event handlers: CMGUI:openSpawnMenu, fdf12e0408, 0d3f9227c2, 5d1f7b4ba9, d374144aa8, 10e19c3bc2, 6b772be49e, 543db28eb0
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
    Spawn / Death-Screen UI Bridge
    ==============================

    This file does not decide WHERE the player may respawn. It only passes
    data between CMG Lua and the browser/NUI.

    Spawn menu:
      Event "CMGUI:openSpawnMenu"(locations)
        sends the location list to NUI and focuses the spawn app.

      NUI callback "respawnButtonClicked"
        forwards the selected location name + price to local event 600fad7b06,
        then closes the spawn UI.

    Death screen:
      Event fdf12e0408(data)
        normalises the death data, applies the "damage" colour filter and shows
        the death screen.

      data fields used:
        timer
        killer
        killerPermId
        killedByWeapon
        suicide
        ignoreCallingNhs

      Other events update NHS/RDM/status information in the death-screen UI.

    deathScreenTimer counts down once per second. When it reaches zero, local
    event 5e8a71b65d is fired.
]]

local spawnMenuOpen = false
local deathScreenTimer = 0


-- ============================================================
-- SPAWN MENU
-- ============================================================

CMG.uiRegisterCallback(
    "respawnButtonClicked",
    function(data)
        if not spawnMenuOpen then
            return
        end

        local location =
            data.location

        TriggerEvent(
            "600fad7b06",
            location.name,
            tonumber(
                location.price
            )
        )

        CMG.uiSendMessage({
            type = "APP_TOGGLE",
            app = ""
        })

        CMG.uiSetFocus(
            false,
            false,
            false
        )

        spawnMenuOpen = false

        CMG.showHud()
    end
)


AddEventHandler(
    "CMGUI:openSpawnMenu",
    function(locations)
        CMG.uiSendMessage({
            type =
                "SET_SPAWN_LOCATIONS",

            info = {
                locations = locations
            }
        })

        CMG.uiSendMessage({
            type = "APP_TOGGLE",
            app = "spawn"
        })

        CMG.uiSetFocus(
            true,
            true,
            false
        )

        spawnMenuOpen = true
    end
)


-- ============================================================
-- CLOSE DEATH/SPAWN UI
-- ============================================================

RegisterNetEvent(
    "0cee493655",
    function()
        ClearTimecycleModifier()

        CMG.uiSendMessage({
            type = "APP_TOGGLE",
            app = ""
        })

        CMG.uiSetFocus(
            false,
            false,
            false
        )

        deathScreenTimer = 0
    end
)


-- ============================================================
-- DEATH-SCREEN BUTTON / STATE EVENTS
-- ============================================================

RegisterNetEvent(
    "2f40f9b5e7",
    function()
        CMG.uiSendMessage({
            page = "deathscreen",
            type =
                "RESPAWN_KEY_PRESSED"
        })
    end
)


AddEventHandler(
    "fdf12e0408",
    function(data)
        SetTimecycleModifier(
            "damage"
        )

        SetTimecycleModifierStrength(
            1.0
        )

        data.timer =
            tonumber(data.timer)
            or 0

        data.killer =
            data.killer
            or "N/A"

        data.killerPermId =
            data.killerPermId
            or 0

        data.killedByWeapon =
            data.killedByWeapon
            or "N/A"

        data.suicide =
            data.suicide == true

        data.ignoreCallingNhs =
            data.ignoreCallingNhs
            == true

        CMG.uiSendMessage({
            page = "deathscreen",
            type =
                "SHOW_DEATH_SCREEN",
            info = data
        })

        CMG.uiSetFocus(
            false,
            false,
            false
        )

        deathScreenTimer =
            math.floor(
                data.timer
            )
    end
)


AddEventHandler(
    "0d3f9227c2",
    function()
        CMG.uiSendMessage({
            page = "deathscreen",
            type =
                "DEATH_SCREEN_NHS_CALLED"
        })
    end
)


AddEventHandler(
    "5d1f7b4ba9",
    function()
        CMG.uiSendMessage({
            page = "deathscreen",
            type =
                "DEATH_SCREEN_RDM_REPORTED"
        })
    end
)


AddEventHandler(
    "d374144aa8",
    function()
        CMG.uiSendMessage({
            page = "deathscreen",
            type =
                "DEATH_SCREEN_RDM_REPORT_RESET"
        })
    end
)


AddEventHandler(
    "10e19c3bc2",
    function(message)
        CMG.uiSendMessage({
            page = "deathscreen",
            type =
                "DEATH_SCREEN_NHS_CALL_BLOCKED",

            info = {
                message =
                    message
                    or "You cannot call the health service in this area."
            }
        })
    end
)


AddEventHandler(
    "6b772be49e",
    function(
        nearestMedics,
        medicCallStatus
    )
        CMG.uiSendMessage({
            page = "deathscreen",
            type =
                "DEATHSCREEN_SET_NEARBY_AMBULANCE",

            info = {
                nearestMedics =
                    nearestMedics,

                medicCallStatus =
                    medicCallStatus
            }
        })
    end
)


-- ============================================================
-- TIMER CORRECTION
-- ============================================================

AddEventHandler(
    "543db28eb0",
    function(newTimer)
        newTimer =
            tonumber(newTimer)
            or 0

        if newTimer <= 0 then
            return
        end

        -- The original only accepts this update if there is no timer yet OR
        -- the new value is SHORTER than the current timer.
        if deathScreenTimer > 0
            and newTimer
                >= deathScreenTimer then
            return
        end

        deathScreenTimer =
            math.floor(
                newTimer
            )

        CMG.uiSendMessage({
            page = "deathscreen",
            type =
                "UPDATE_DEATH_SCREEN_TIMER",

            info = {
                timer =
                    deathScreenTimer
            }
        })
    end
)


-- ============================================================
-- ONE-SECOND COUNTDOWN
-- ============================================================

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(function()
    while true do
        if deathScreenTimer > 0 then
            deathScreenTimer =
                deathScreenTimer - 1

            if deathScreenTimer == 0 then
                TriggerEvent(
                    "5e8a71b65d"
                )
            end
        end

        Citizen.Wait(1000)
    end
end)


-- NUI has its own countdown completion callback. The old Lua callback was
-- intentionally empty.
CMG.uiRegisterCallback(
    "countdownEnded",
    function()
    end
)
