--[[
    LEVEL 1 BEGINNER GUIDE — Manager
    =====================================

    File: cmg/prod/client/business/cl_manager.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: business gameplay and business job logic, specifically the Manager feature.

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
      * Incoming network events: 7aa155f442
      * Local event handlers: none found by static scan
      * Server events sent: bf3f551598, c195715473
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
    Business Manager Job
    ====================

    This client is the lightweight "manager" business job.

    When active, the manager menu offers:
      * View Stock
      * View Orders

    Server events:
      bf3f551598 = refresh manager/business data
      c195715473 = request stock view
      7aa155f442 = open the manager menu when the player is a manager

    The event hashes are deliberately preserved.
]]


-- ============================================================
-- BUSINESS-JOB LIFECYCLE
-- ============================================================

-- === HELPER FUNCTION: initialiseManagerJob() ===
local function initialiseManagerJob()
    TriggerServerEvent(
        "bf3f551598"
    )
end


-- === HELPER FUNCTION: managerJobTick() ===
local function managerJobTick()
    -- The original decompiled client did not perform per-frame work here.
end


-- === HELPER FUNCTION: finishManagerJob() ===
local function finishManagerJob()
    -- The original decompiled client did not need cleanup here.
end


-- ============================================================
-- MANAGER MENU
-- ============================================================

RMenu.Add(
    "business",
    "manager_mainmenu",
    RageUI.CreateMenu(
        "",
        "~b~CMG Business",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_marketui",
        "cmg_marketui"
    )
)

local managerMenu =
    RMenu:Get(
        "business",
        "manager_mainmenu"
    )


RageUI.CreateWhile(
    1.0,
    managerMenu,
    nil,
    function()
        RageUI.IsVisible(
            managerMenu,
            true,
            false,
            true,
            function()
                local managerData =
                    CMG.getUserBusinessData(
                        "manager"
                    )

                if not managerData then
                    RageUI.CloseAll()
                    return
                end

                RageUI.ButtonWithStyle(
                    "~g~View Stock",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected then
                            TriggerServerEvent(
                                "c195715473",
                                true
                            )

                            RageUI.CloseAll()
                        end
                    end
                )

                RageUI.ButtonWithStyle(
                    "~y~View Orders",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function()
                        -- The generic business order-view submenu handles this.
                    end,
                    RMenu:Get(
                        "business",
                        "manager_vieworders"
                    )
                )
            end
        )
    end
)


RegisterNetEvent(
    "7aa155f442",
    function()
        if not CMG.getUserBusinessData(
            "manager"
        ) then
            return
        end

        RageUI.Visible(
            managerMenu,
            true
        )

        TriggerServerEvent(
            "bf3f551598"
        )
    end
)


-- ============================================================
-- REGISTER WITH THE BUSINESS FRAMEWORK
-- ============================================================

local managerJobStates = {
    main = {
        init = initialiseManagerJob,
        tick = managerJobTick,
        finish = finishManagerJob,
        next = "main"
    }
}

CMG.registerBusinessJob(
    "manager",
    nil,
    "main",
    managerJobStates,
    nil
)

Citizen.Wait(0)

CMG.addGenericBusinessOrderView(
    "manager",
    "manager_mainmenu"
)
