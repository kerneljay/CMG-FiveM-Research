--[[
    LEVEL 1 BEGINNER GUIDE — Rebelshop
    =======================================

    File: cmg/prod/client/crime/cl_rebelshop.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: crime, robbery, gang, and criminal gameplay, specifically the Rebelshop feature.

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
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: 545aed5eba
      * Local event handlers: none found by static scan
      * Server events sent: 3ba20beab5, b8ae897759
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
    Vigilante Weapon Sell Point
    ===========================

    This is a small rebel/Vigilante sell location.

    World setup:
      sellPosition = where the interaction marker is
      dealerPosition = where the decorative NPC stands

    Flow:
      1. Stand at the marker and press E.
      2. Client tells the server via event 3ba20beab5.
      3. If the server allows the sale, event 545aed5eba starts a 30-second
         progress bar.
      4. If the player dies, enters coma, or their combat timer increases,
         the sale is cancelled.
      5. If the same sale token survives for the full 30 seconds, the client
         tells the server via b8ae897759.

    Hash event names are intentionally preserved.
]]

local sellPosition =
    vector3(
        1416.8923339844,
        6359.4326171875,
        22.999128631592
    )

local dealerPosition =
    vector4(
        1416.2241210938,
        6360.580078125,
        24.005859375,
        201.25984191895
    )

-- Unique ID for the sale currently running. nil = not selling.
local activeSaleToken = nil


-- === HELPER FUNCTION: sellPointTick() ===
local function sellPointTick()
    drawNativeNotification(
        "Press ~INPUT_CONTEXT~ to sell any Vigilante weapons."
    )

    DisableControlAction(
        0,
        51,
        true
    )

    if IsDisabledControlJustPressed(
        0,
        51
    ) then
        TriggerServerEvent(
            "3ba20beab5"
        )
    end
end


CMG.createArea(
    "rebel_token_selling",
    sellPosition,
    2.0,
    3.0,
    function()
    end,
    function()
    end,
    sellPointTick,
    {}
)


tCMG.addMarker(
    sellPosition.x,
    sellPosition.y,
    sellPosition.z,
    1.0,
    1.0,
    1.0,
    255,
    0,
    0,
    170,
    50,
    27
)


CMG.createDynamicPed(
    1161072059,
    dealerPosition.xyz,
    dealerPosition.w,
    true,
    nil,
    nil,
    25.0,
    nil,
    function()
    end
)


RegisterNetEvent(
    "545aed5eba",
    function()
        if activeSaleToken then
            return
        end

        local thisSaleToken =
            CMG.generateUUID(
                "vigilante_sell",
                10,
                "alphanumeric"
            )

        activeSaleToken =
            thisSaleToken

        -- Finish the sale after the 30-second progress bar, but only if no
        -- cancellation changed/cleared activeSaleToken in the meantime.

        -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
        Citizen.CreateThread(function()
            CMG.startCircularProgressBar(
                "",
                30000,
                nil,
                function()
                end
            )

            if activeSaleToken
                == thisSaleToken then

                TriggerServerEvent(
                    "b8ae897759"
                )

                activeSaleToken = nil
            end
        end)

        local playerPed =
            PlayerPedId()

        local previousCombatTimer =
            CMG.getPlayerCombatTimer()

        while activeSaleToken do
            local currentCombatTimer =
                CMG.getPlayerCombatTimer()

            local interrupted =
                tCMG.isInComa()
                or IsEntityDead(
                    playerPed
                )
                or currentCombatTimer
                    > previousCombatTimer

            if interrupted then
                notify(
                    "~r~Cancelling sell as you have been damaged."
                )

                CMG.stopCircularProgressBar()

                activeSaleToken = nil
                break
            end

            previousCombatTimer =
                currentCombatTimer

            Wait(0)
        end
    end
)
