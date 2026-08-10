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


local function setMenuVisible(visible)
    RageUI.Visible(
        pedsMenu,
        visible
    )
end


-- ============================================================
-- APPLY / RESET MODEL
-- ============================================================

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
