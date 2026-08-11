--[[
    LEVEL 1 BEGINNER GUIDE — Selljewelry
    =========================================

    File: cmg/prod/client/jobs/cl_selljewelry.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: civilian/job gameplay, specifically the Selljewelry feature.

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
      * Background threads: 1
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: e468a1e124
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_jewelryHeist

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
    Sell Jewelry Job
    ================

    Config: cfg/cfg_jewelryHeist

    This file creates jewelry-selling locations and a simple RageUI menu.

    At each configured sell location:
      * a red marker is drawn
      * a "Sell Jewelry" blip is added
      * entering the area opens the menu
      * leaving closes it

    The menu lists every cfg jewelry item and its sell price.

    Selecting an item:
      1. triggers local event 963a1f4ac7
      2. tells the server which item index and configured sell price were used
         via event e468a1e124

    The server still owns the actual inventory/money validation.
]]

local jewelryConfig =
    CMG.loadModule(
        "cfg/cfg_jewelryHeist"
    )

if not jewelryConfig then
    return
end


-- ============================================================
-- MENU
-- ============================================================

RMenu.Add(
    "cmgSellJewelry",
    "main",
    RageUI.CreateMenu(
        "",
        "~b~Sell Jewelry",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "shopui_title_arenawar",
        "shopui_title_arenawar"
    )
)

local sellJewelryMenu =
    RMenu:Get(
        "cmgSellJewelry",
        "main"
    )

local selectedJewelryIndex = nil


RageUI.CreateWhile(
    1.0,
    sellJewelryMenu,
    nil,
    function()
        RageUI.IsVisible(
            sellJewelryMenu,
            true,
            false,
            true,
            function()
                for index, item
                    in ipairs(
                        jewelryConfig.jewelryItems
                    ) do

                    RageUI.ButtonWithStyle(
                        item.name,
                        "",
                        {
                            RightLabel =
                                "£"
                                .. getMoneyStringFormatted(
                                    item.sellPrice
                                )
                        },
                        true,
                        function(_, active, selected)
                            if active then
                                selectedJewelryIndex =
                                    index
                            end

                            if selected then
                                TriggerEvent(
                                    "963a1f4ac7"
                                )

                                TriggerServerEvent(
                                    "e468a1e124",
                                    selectedJewelryIndex,
                                    jewelryConfig
                                        .jewelryItems[
                                            selectedJewelryIndex
                                        ].sellPrice
                                )
                            end
                        end
                    )
                end
            end,
            function()
            end
        )
    end
)


-- ============================================================
-- WORLD LOCATIONS
-- ============================================================

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()

    -- === HELPER FUNCTION: openSellMenu() ===
    local function openSellMenu()
        RageUI.Visible(
            sellJewelryMenu,
            true
        )
    end

    -- === HELPER FUNCTION: closeSellMenu() ===
    local function closeSellMenu()
        RageUI.Visible(
            sellJewelryMenu,
            false
        )
    end

    -- === HELPER FUNCTION: sellAreaTick() ===
    local function sellAreaTick()
        -- No per-frame interaction is needed; the menu opens on area enter.
    end

    for index, location
        in ipairs(
            jewelryConfig.jewelrySellLocs
        ) do

        local coords =
            location.coords

        tCMG.addMarker(
            coords.x,
            coords.y,
            coords.z - 0.9,
            0.8,
            0.8,
            0.8,
            200,
            0,
            0,
            255,
            30,
            27,
            false,
            false,
            false
        )

        local blip =
            tCMG.addBlip(
                coords.x,
                coords.y,
                coords.z,
                618,
                46,
                "Sell Jewelry"
            )

        CMG.addBlipContext(
            "Civilian",
            blip
        )

        CMG.createArea(
            "sellJewelry_"
                .. tostring(index),
            coords,
            2.0,
            5.0,
            openSellMenu,
            closeSellMenu,
            sellAreaTick,
            {}
        )
    end
end)
