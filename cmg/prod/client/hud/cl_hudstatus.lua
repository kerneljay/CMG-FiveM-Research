--[[
    LEVEL 1 BEGINNER GUIDE — Hudstatus
    =======================================

    File: cmg/prod/client/hud/cl_hudstatus.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: HUD and on-screen player information, specifically the Hudstatus feature.

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
      * Background threads: 1
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: b608fad5cc, 9015b015c4, 7fb9a4e5e3
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
    HUD Player Status
    =================

    This file feeds the custom HUD with the player's basic survival/status
    values.

    Values stored locally:
      food
      water
      stress

    Values read live:
      health
      armour
      underwater breath

    Network events:
      b608fad5cc(value) -> food
      9015b015c4(value) -> water
      7fb9a4e5e3(value) -> stress

    Stress is converted into a "stress effect" percentage:
      stress <= 40 -> 0%
      stress 100   -> 100%
      values between are mapped linearly.

    Every 200ms the HUD receives health and armour.

    While underwater the HUD also receives remaining breath time.
]]

local food = 100
local water = 100
local stress = 0


-- ============================================================
-- SERVER STATUS EVENTS
-- ============================================================

RegisterNetEvent(
    "b608fad5cc",
    function(value)
        food = value
    end
)


RegisterNetEvent(
    "9015b015c4",
    function(value)
        water = value
    end
)


RegisterNetEvent(
    "7fb9a4e5e3",
    function(value)
        stress = value
    end
)


-- ============================================================
-- STRESS EFFECT
-- ============================================================

-- === HELPER FUNCTION: getStressEffectPercent() ===
local function getStressEffectPercent()
    if stress <= 40 then
        return 0
    end

    return
        math.min(
            100,
            math.floor(
                (stress - 40)
                / 60
                * 100
            )
        )
end


-- ============================================================
-- HUD UPDATE
-- ============================================================

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    while true do
        local ped =
            CMG.getPlayerPed()

        local health =
            math.max(
                0,
                GetEntityHealth(ped)
                - 100
            )

        local armour =
            GetPedArmour(ped)

        CMG.sendHudNuiMessage(
            "SET_STATUS",
            {
                type = "health",
                value = health
            }
        )

        CMG.sendHudNuiMessage(
            "SET_STATUS",
            {
                type = "armour",
                value = armour
            }
        )

        CMG.sendHudNuiMessage(
            "SET_STATUS",
            {
                type = "food",
                value = food
            }
        )

        CMG.sendHudNuiMessage(
            "SET_STATUS",
            {
                type = "water",
                value = water
            }
        )

        CMG.sendHudNuiMessage(
            "SET_STATUS",
            {
                type = "stress",
                value =
                    getStressEffectPercent()
            }
        )

        if IsPedSwimmingUnderWater(
            ped
        ) then

            local breath =
                GetPlayerUnderwaterTimeRemaining(
                    PlayerId()
                )

            CMG.sendHudNuiMessage(
                "SET_STATUS",
                {
                    type = "oxygen",
                    value = breath
                }
            )
        end

        Wait(200)
    end
end)
