--[[
    LEVEL 1 BEGINNER GUIDE — Peds
    ==================================

    File: cmg/prod/client/misc/cl_peds.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Peds feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 6
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: f2a45f46ba
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/ped_cfg/peds

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
    Ped Model Selection Menu
    ========================

    Config: cfg/ped_cfg/peds

    The SERVER sends a list of ped-menu world locations through event
    f2a45f46ba.

    Each server location is:
      location[1] = menu ID
      location[2] = world coordinates

    The menu ID chooses:
      pedConfig.peds[menuId]

    Each available ped entry is:
      entry[1] = model
      entry[2] = label shown in RageUI

    Entering a ped-menu area:
      * saves the player's current customisation and health ONCE
      * loads the configured ped list
      * opens "CMG Peds Menu"

    Leaving:
      * closes the menu
      * restores the previously-saved health
      * allows the next visit to save a fresh baseline

    "Reset" restores the saved customisation.

    A dead/coma player (health <= 102) cannot change ped.
]]

local pedConfig =
    CMG.loadModule(
        "cfg/ped_cfg/peds"
    )

local availablePeds = {}

local savedCustomisation = nil
local referenceCustomisation = nil

local shouldSaveOnEnter = true

local areaIds = {}
local markerHandles = {}

local savedHealth = 0


-- ============================================================
-- MENU
-- ============================================================

RMenu.Add(
    "cmgpedsmenu",
    "main",
    RageUI.CreateMenu(
        "",
        "CMG Peds Menu",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_peds",
        "cmg_peds"
    )
)

local pedsMenu =
    RMenu:Get(
        "cmgpedsmenu",
        "main"
    )


-- === HELPER FUNCTION: setMenuVisible(visible) ===
local function setMenuVisible(visible)
    RageUI.Visible(
        pedsMenu,
        visible
    )
end


-- ============================================================
-- APPLY / RESET MODEL
-- ============================================================

-- === HELPER FUNCTION: applyPedModel(model) ===
local function applyPedModel(model)
    local playerPed =
        CMG.getPlayerPed()

    local heading =
        GetEntityHeading(
            playerPed
        )

    tCMG.setCustomization({
        model = model
    })

    SetEntityHeading(
        CMG.getPlayerPed(),
        heading
    )

    Wait(100)

    SetEntityMaxHealth(
        CMG.getPlayerPed(),
        200
    )

    SetEntityHealth(
        CMG.getPlayerPed(),
        200
    )
end


-- === HELPER FUNCTION: resetPedModel() ===
local function resetPedModel()
    tCMG.setCustomization(
        savedCustomisation
    )
end


-- ============================================================
-- DRAW MENU
-- ============================================================

RageUI.CreateWhile(
    1.0,
    pedsMenu,
    nil,
    function()
        RageUI.IsVisible(
            pedsMenu,
            true,
            true,
            true,
            function()
                local showReset = false

                if savedCustomisation ~= nil then
                    if referenceCustomisation == nil then
                        showReset = true
                    else
                        showReset =
                            tCMG.getCustomization()
                            ~= savedCustomisation
                    end
                end

                if showReset then
                    RageUI.Button(
                        "Reset",
                        nil,
                        true,
                        function(_, _, selected)
                            if selected then
                                resetPedModel()
                            end
                        end
                    )
                end

                for index = 1,
                    #availablePeds do

                    local entry =
                        availablePeds[index]

                    RageUI.Button(
                        entry[2],
                        nil,
                        true,
                        function(_, _, selected)
                            if not selected then
                                return
                            end

                            if GetEntityHealth(
                                CMG.getPlayerPed()
                            ) > 102 then

                                applyPedModel(
                                    entry[1]
                                )
                            else
                                tCMG.notify(
                                    "~r~You try to change ped, but then remember you are dead."
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
-- CLEAR OLD WORLD AREAS
-- ============================================================

-- === HELPER FUNCTION: clearPedMenuLocations() ===
local function clearPedMenuLocations()
    for index = #areaIds,
        1,
        -1 do

        tCMG.removeArea(
            areaIds[index]
        )

        table.remove(
            areaIds,
            index
        )
    end

    for _, marker
        in pairs(markerHandles) do

        tCMG.removeMarker(
            marker
        )
    end

    markerHandles = {}
end


-- ============================================================
-- SERVER SENDS WORLD LOCATIONS
-- ============================================================

RegisterNetEvent(
    "f2a45f46ba",
    function(locations)
        clearPedMenuLocations()

        -- === HELPER FUNCTION: onEnter(areaData) ===
        local function onEnter(areaData)
            availablePeds =
                pedConfig.peds[
                    areaData.menu_id
                ]
                or {}

            if shouldSaveOnEnter then
                savedCustomisation =
                    tCMG.getCustomization()

                savedHealth =
                    GetEntityHealth(
                        CMG.getPlayerPed()
                    )
            end

            setMenuVisible(true)

            shouldSaveOnEnter =
                false
        end

        -- === HELPER FUNCTION: onLeave() ===
        local function onLeave()
            setMenuVisible(false)

            shouldSaveOnEnter =
                true

            SetEntityHealth(
                CMG.getPlayerPed(),
                savedHealth
            )
        end

        for index, location
            in ipairs(locations or {}) do

            local menuId =
                location[1]

            local coords =
                location[2]

            local areaId =
                string.format(
                    "pedmenu_%s_%s",
                    menuId,
                    index
                )

            CMG.createArea(
                areaId,
                coords,
                1.25,
                6,
                onEnter,
                onLeave,
                function()
                end,
                {
                    menu_id = menuId
                }
            )

            local marker =
                tCMG.addMarker(
                    coords.x,
                    coords.y,
                    coords.z - 1.0,
                    0.7,
                    0.7,
                    0.5,
                    0,
                    255,
                    125,
                    125,
                    50,
                    27,
                    false,
                    false
                )

            table.insert(
                areaIds,
                areaId
            )

            table.insert(
                markerHandles,
                marker
            )
        end
    end
)
