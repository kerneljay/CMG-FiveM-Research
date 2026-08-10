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

CreateThread(function()
    local function openSellMenu()
        RageUI.Visible(
            sellJewelryMenu,
            true
        )
    end

    local function closeSellMenu()
        RageUI.Visible(
            sellJewelryMenu,
            false
        )
    end

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
