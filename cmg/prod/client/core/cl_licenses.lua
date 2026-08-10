--[[
    License Shop Client
    ===================

    Beginner overview:
      * Splits configured licences into legal and illegal sections.
      * Adds the red License Shop marker/blip.
      * Opens a RageUI shop when E is pressed.
      * Shows owned licences as disabled.
      * Uses a confirmation screen before buying.
      * Has a small Vigilante information page.

    Config entry format inferred from how this client uses it:
      {
          licenseId,      -- value sent to the server when buying
          licenseName,    -- name shown in the menu / ownership-table key
          price,
          description,
          isIllegal       -- true = list under "Illegal Licenses"
      }

    Hashed event names are preserved unchanged.
]]

local licenseConfig = CMG.loadModule("cfg/cfg_licenses")
if not licenseConfig then
    return
end

local legalLicenses = {}
local illegalLicenses = {}

for _, license in pairs(licenseConfig.licenses) do
    if license[5] then
        table.insert(illegalLicenses, license)
    else
        table.insert(legalLicenses, license)
    end
end

local shopCoords = licenseConfig.shopCoords

-- Server-owned table such as:
-- ownedLicenses["Firearms License"] = true
local ownedLicenses = {}

-- Which licence the user selected before entering the confirm menu.
local selectedLicenseId = nil


-- ============================================================
-- WORLD MARKER / BLIP
-- ============================================================

Citizen.CreateThread(function()
    tCMG.addMarker(
        shopCoords.x,
        shopCoords.y,
        shopCoords.z - 1.0,
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

    tCMG.addBlip(
        shopCoords.x,
        shopCoords.y,
        shopCoords.z,
        525,
        2,
        "License Shop"
    )
end)


-- ============================================================
-- RAGEUI MENUS
-- ============================================================

RMenu.Add(
    "main",
    "licenses",
    RageUI.CreateMenu(
        "",
        "",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_licenseui",
        "cmg_licenseui"
    )
)

local shopMenu = RMenu:Get("main", "licenses")
shopMenu:SetSubtitle("~b~Purchase a License.")

RMenu.Add(
    "confirm",
    "licenses",
    RageUI.CreateMenu(
        "",
        "",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_licenseui",
        "cmg_licenseui"
    )
)

local confirmMenu = RMenu:Get("confirm", "licenses")
confirmMenu:SetSubtitle("~b~Are you sure?")

RMenu.Add(
    "vigilante",
    "licenses",
    RageUI.CreateMenu(
        "",
        "",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_licenseui",
        "cmg_licenseui"
    )
)

local vigilanteMenu = RMenu:Get("vigilante", "licenses")
vigilanteMenu:SetSubtitle(
    "~b~Vigilante License Information"
)


-- ============================================================
-- SHOP AREA
-- ============================================================

local function closeLicenseShop()
    if RageUI.Visible(shopMenu) then
        RageUI.Visible(shopMenu, false)
    end
end

local function whileInsideLicenseShop()
    -- Control 38 = E / INPUT_PICKUP.
    if IsControlJustPressed(1, 38) then
        RageUI.CloseAll()
        RageUI.Visible(
            shopMenu,
            not RageUI.Visible(shopMenu)
        )

        -- Refresh ownership information from the server.
        TriggerServerEvent("6732d32af6")
    end

    CMG.DrawText3D(
        shopCoords,
        "Press [E] to open Licenses Shop",
        0.2
    )
end

CMG.createArea(
    "license_area",
    shopCoords,
    1.5,
    3.0,
    function()
        -- No special enter action.
    end,
    closeLicenseShop,
    whileInsideLicenseShop,
    {}
)


-- ============================================================
-- LICENCE LIST HELPER
-- ============================================================

local function drawLicenseSection(title, licenses)
    RageUI.Separator(title)

    for _, license in pairs(licenses) do
        local licenseId,
              licenseName,
              price,
              description =
            table.unpack(license)

        local formattedPrice =
            getMoneyStringFormatted(
                tostring(price)
            )

        local canBuy =
            not ownedLicenses[licenseName]

        local buttonDescription = description

        if not canBuy or not description then
            buttonDescription =
                "You already own this license."
        end

        local style = {}

        if canBuy then
            style.RightLabel =
                "£" .. formattedPrice
        end

        RageUI.ButtonWithStyle(
            licenseName,
            buttonDescription,
            style,
            canBuy,
            function(_, _, selected)
                if selected and canBuy then
                    selectedLicenseId =
                        licenseId
                end
            end,
            confirmMenu
        )
    end
end


-- ============================================================
-- MENU DRAW LOOP
-- ============================================================

RageUI.CreateWhile(
    1.0,
    shopMenu,
    nil,
    function()
        -- Main shop.
        RageUI.IsVisible(
            shopMenu,
            true,
            true,
            true,
            function()
                drawLicenseSection(
                    "Legal Licenses",
                    legalLicenses
                )

                drawLicenseSection(
                    "Illegal Licenses",
                    illegalLicenses
                )
            end,
            function()
            end
        )

        -- Purchase confirmation.
        RageUI.IsVisible(
            confirmMenu,
            true,
            true,
            true,
            function()
                RageUI.ButtonWithStyle(
                    "Yes",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected then
                            TriggerServerEvent(
                                "d95bb7279e",
                                selectedLicenseId
                            )

                            -- Refresh the ownership table.
                            TriggerServerEvent(
                                "6732d32af6"
                            )
                        end
                    end,
                    shopMenu
                )

                RageUI.ButtonWithStyle(
                    "No",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected then
                            tCMG.notify(
                                "~r~Cancelled."
                            )
                        end
                    end,
                    shopMenu
                )
            end,
            function()
            end
        )

        -- Vigilante information screen.
        RageUI.IsVisible(
            vigilanteMenu,
            true,
            true,
            true,
            function()
                RageUI.BackspaceMenuCallback(
                    function()
                        RageUI.Visible(
                            confirmMenu,
                            true
                        )
                    end
                )

                RageUI.FakeButtonWithStyle(
                    "",
                    [[
Read more about the Vigilante job in our wiki
https://wiki.cmgstudios.net/guides/licenses/vigilante]],
                    {RightLabel = "→→→"},
                    true,
                    function()
                    end,
                    vigilanteMenu
                )
            end,
            function()
            end
        )
    end
)


-- ============================================================
-- SERVER EVENTS
-- ============================================================

-- Server sends the licences this player currently owns.
RegisterNetEvent("6732d32af6", function(serverOwnedLicenses)
    ownedLicenses = serverOwnedLicenses or {}
end)

-- Open the Vigilante information menu.
RegisterNetEvent("f03b0703fc", function()
    RageUI.Visible(vigilanteMenu, true)
end)

-- Close the Vigilante information menu.
RegisterNetEvent("0506613825", function()
    RageUI.Visible(vigilanteMenu, false)
end)
