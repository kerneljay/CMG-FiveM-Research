--[[
    LEVEL 1 BEGINNER GUIDE — Communitypot
    ==========================================

    File: cmg/prod/client/misc/cl_communitypot.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Communitypot feature.

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
      * Incoming network events: c17e64466e, f8c5f8e5cb
      * Local event handlers: none found by static scan
      * Server events sent: 9b6076a268
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
    Shared / Community Money Pots
    =============================

    This menu lets approved players view and move money in several shared pots.

    Known pots:
      community_pot -> Community Pot
      gc_pot        -> Gold Command Pot
      nhs_pot       -> NHS High Command Pot
      hmp_pot       -> HMP Headquarters Pot
      event_pot     -> Event Team Pot
      streamer_pot  -> Streamer Pot

    Server event c17e64466e(potId, amount)
      Updates one pot and marks this client as having access to it.

    Server event f8c5f8e5cb
      Opens the menu and asks the server to refresh pot balances.

    Deposit event:  b37040220b(potId, amount)
    Withdraw event: 41131bf015(potId, amount)

    The server remains responsible for permission and money validation.
]]

local sharedPots = {
    community_pot = {
        name = "Community Pot",
        amount = 0,
        hasAccess = false
    },

    gc_pot = {
        name = "Gold Command Pot",
        amount = 0,
        hasAccess = false
    },

    nhs_pot = {
        name = "NHS High Command Pot",
        amount = 0,
        hasAccess = false
    },

    hmp_pot = {
        name = "HMP Headquarters Pot",
        amount = 0,
        hasAccess = false
    },

    event_pot = {
        name = "Event Team Pot",
        amount = 0,
        hasAccess = false
    },

    streamer_pot = {
        name = "Streamer Pot",
        amount = 0,
        hasAccess = false
    }
}

local selectedPotId = nil


-- ============================================================
-- MENUS
-- ============================================================

RMenu.Add(
    "cmgsharedpots",
    "mainmenu",
    RageUI.CreateMenu(
        "",
        "",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_atmui",
        "cmg_atmui"
    )
)

local mainMenu =
    RMenu:Get(
        "cmgsharedpots",
        "mainmenu"
    )

mainMenu:SetSubtitle(
    "~b~Shared Pots"
)


RMenu.Add(
    "cmgsharedpots",
    "submenu",
    RageUI.CreateSubMenu(
        mainMenu,
        "",
        "~b~Shared Pot",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_atmui",
        "cmg_atmui"
    )
)

local potMenu =
    RMenu:Get(
        "cmgsharedpots",
        "submenu"
    )


-- ============================================================
-- SERVER UPDATES
-- ============================================================

RegisterNetEvent(
    "c17e64466e",
    function(potId, amount)
        local pot =
            sharedPots[potId]

        if not pot then
            return
        end

        pot.amount = amount
        pot.hasAccess = true
    end
)


-- ============================================================
-- INPUT HELPERS
-- ============================================================

local function promptAmount(
    serverEventName
)
    if not selectedPotId then
        return
    end

    local input =
        CMG.GetRageInputText(
            "Enter amount"
        )

    if not tonumber(input) then
        tCMG.notify(
            "~r~Invalid amount."
        )
        return
    end

    TriggerServerEvent(
        serverEventName,
        selectedPotId,
        input
    )
end


-- ============================================================
-- DRAW MENU
-- ============================================================

RageUI.CreateWhile(
    1.0,
    mainMenu,
    nil,
    function()
        RageUI.IsVisible(
            mainMenu,
            true,
            false,
            true,
            function()
                for potId, pot
                    in pairs(sharedPots) do

                    if pot.hasAccess then
                        RageUI.ButtonWithStyle(
                            pot.name,
                            "",
                            {RightLabel = "→→→"},
                            true,
                            function(_, _, selected)
                                if selected then
                                    selectedPotId =
                                        potId
                                end
                            end,
                            potMenu
                        )
                    end
                end
            end,
            function()
            end
        )

        RageUI.IsVisible(
            potMenu,
            true,
            false,
            true,
            function()
                local pot =
                    selectedPotId
                    and sharedPots[
                        selectedPotId
                    ]

                if not pot then
                    return
                end

                RageUI.Separator(
                    pot.name
                    .. " Balance: ~g~£"
                    .. getMoneyStringFormatted(
                        pot.amount
                    )
                )

                RageUI.ButtonWithStyle(
                    "Deposit",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected then
                            promptAmount(
                                "b37040220b"
                            )
                        end
                    end
                )

                RageUI.ButtonWithStyle(
                    "Withdraw",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected then
                            promptAmount(
                                "41131bf015"
                            )
                        end
                    end
                )
            end,
            function()
            end
        )
    end
)


RegisterNetEvent(
    "f8c5f8e5cb",
    function()
        RageUI.Visible(
            mainMenu,
            true
        )

        TriggerServerEvent(
            "9b6076a268"
        )
    end
)
