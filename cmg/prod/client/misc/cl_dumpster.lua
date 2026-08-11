--[[
    LEVEL 1 BEGINNER GUIDE — Dumpster
    ======================================

    File: cmg/prod/client/misc/cl_dumpster.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Dumpster feature.

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
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: 222d547efd
      * Local event handlers: none found by static scan
      * Server events sent: 211845115e
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_dumpster

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
    Dumpster Searching
    ==================

    Config: cfg/cfg_dumpster

    Every configured dumpster gets an interaction area.

    A player can search when:
      * their current job is NOT "Garbage"
      * server tunable "dumpster_enabled" is true
      * another dumpster search is not already in progress
      * they are on foot

    Press E to request a search from the server.

    Event 222d547efd(searchStarted)
      If searchStarted is true, play the dumpster-search animation and a
      five-second circular progress bar. Either way, unlock the local busy flag
      afterwards.

    Server event hashes are deliberately unchanged.
]]

local dumpsterConfig =
    CMG.loadModule(
        "cfg/cfg_dumpster"
    )

local searchInProgress = false


-- === HELPER FUNCTION: dumpsterTick(areaData) ===
local function dumpsterTick(areaData)
    if CMG.getClientJob()
        == "Garbage" then
        return
    end

    if not CMG.getTunableValue(
        "dumpster_enabled"
    ) then
        return
    end

    if searchInProgress then
        return
    end

    local vehicle =
        CMG.getPlayerVehicle()

    if vehicle ~= 0 then
        return
    end

    drawNativeNotification(
        "Press ~INPUT_CONTEXT~ to search the dumpster"
    )

    if IsControlJustPressed(
        0,
        51
    ) then
        TriggerServerEvent(
            "211845115e",
            areaData.index
        )

        searchInProgress = true
    end
end


for index, dumpster
    in pairs(
        dumpsterConfig.objects
    ) do

    -- dumpster[2] is the configured world position.
    CMG.createArea(
        "dumpster_"
            .. tostring(index),
        dumpster[2],
        2.0,
        5.0,
        function()
        end,
        function()
        end,
        dumpsterTick,
        {
            index = index
        }
    )
end


RegisterNetEvent(
    "222d547efd",
    function(searchStarted)
        if searchStarted then
            tCMG.setCanAnim(false)

            local animDict =
                "amb@prop_human_bum_bin@base"

            CMG.loadAnimDict(
                animDict
            )

            TaskPlayAnim(
                PlayerPedId(),
                animDict,
                "base",
                8.0,
                8.0,
                5000,
                1,
                1,
                false,
                false,
                false
            )

            RemoveAnimDict(
                animDict
            )

            CMG.startCircularProgressBar(
                "",
                5000,
                nil,
                function()
                end
            )

            tCMG.setCanAnim(true)
        end

        searchInProgress = false
    end
)
