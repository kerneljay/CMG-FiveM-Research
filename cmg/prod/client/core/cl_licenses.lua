--[[
    LEVEL 1 BEGINNER GUIDE — Licenses
    ======================================

    File: cmg/prod/client/core/cl_licenses.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Licenses feature.

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
      * Incoming network events: 6732d32af6, f03b0703fc, 0506613825
      * Local event handlers: none found by static scan
      * Server events sent: 6732d32af6, d95bb7279e
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_licenses

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

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
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

-- === HELPER FUNCTION: closeLicenseShop() ===
local function closeLicenseShop()
    if RageUI.Visible(shopMenu) then
        RageUI.Visible(shopMenu, false)
    end
end

-- === HELPER FUNCTION: whileInsideLicenseShop() ===
local function whileInsideLicenseShop()
    -- Control 38 = E / INPUT_PICKUP.
    if IsControlJustPressed(1, 38) then
        RageUI.CloseAll()
        RageUI.Visible(
            shopMenu,
            not RageUI.Visible(shopMenu)
        )

        -- Refresh ownership information from the server.
        -- Beginner: sends the "6732d32af6" event to the server.
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

-- === HELPER FUNCTION: drawLicenseSection(title, licenses) ===
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

-- === NETWORK EVENT: receives "6732d32af6" from server/another network source ===
RegisterNetEvent("6732d32af6", function(serverOwnedLicenses)
    ownedLicenses = serverOwnedLicenses or {}
end)

-- Open the Vigilante information menu.

-- === NETWORK EVENT: receives "f03b0703fc" from server/another network source ===
RegisterNetEvent("f03b0703fc", function()
    RageUI.Visible(vigilanteMenu, true)
end)

-- Close the Vigilante information menu.

-- === NETWORK EVENT: receives "0506613825" from server/another network source ===
RegisterNetEvent("0506613825", function()
    RageUI.Visible(vigilanteMenu, false)
end)
