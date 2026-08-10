--[[
    Identity / City Hall Client
    ===========================

    Beginner overview:
      * Creates City Hall interaction markers.
      * Opens the Identity Services RageUI menu.
      * Lets the player request an identity change.
      * Lets the player pay an outstanding bounty or house tax.
      * Displays a driving licence sent by the server.

    The hashed event names are kept exactly as they were because the
    server-side resource probably uses those exact names.
]]

local identityConfig = CMG.loadModule("cfg/cfg_identity")
if not identityConfig then
    return
end

local identityLocations = identityConfig.identites
local showingDrivingLicence = false

-- ============================================================
-- IDENTITY SERVICES MENU
-- ============================================================

RMenu.Add(
    "main",
    "identity",
    RageUI.CreateMenu(
        "",
        "",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_cityhallui",
        "cmg_cityhallui"
    )
)

local identityMenu = RMenu:Get("main", "identity")
identityMenu:SetSubtitle("~b~Identity Services")


-- ============================================================
-- CITY HALL WORLD MARKERS
-- ============================================================

AddEventHandler("CMG:onClientSpawn", function(_, firstSpawn)
    if not firstSpawn then
        return
    end

    local function onEnterCityHall()
        drawNativeNotification(
            "Press ~INPUT_PICKUP~ to access the City Hall."
        )

        PlaySound(
            -1,
            "SELECT",
            "HUD_MINI_GAME_SOUNDSET",
            false,
            0,
            true
        )
    end

    local function onLeaveCityHall()
        RageUI.CloseAll()
        RageUI.Visible(identityMenu, false)
    end

    local function whileInsideCityHall()
        -- Control 51 = INPUT_CONTEXT / usually E.
        if IsControlJustPressed(1, 51) then
            RageUI.CloseAll()

            -- The original code checked an admin identity menu before
            -- deciding whether this menu should be visible.
            local adminIdentityMenu =
                RMenu:Get("cmgadminmenu", "identity")

            RageUI.Visible(
                identityMenu,
                not RageUI.Visible(adminIdentityMenu)
            )
        end
    end

    for index, coords in pairs(identityLocations) do
        CMG.createArea(
            "identity_" .. index,
            coords,
            1.5,
            6,
            onEnterCityHall,
            onLeaveCityHall,
            whileInsideCityHall
        )

        tCMG.addMarker(
            coords.x,
            coords.y,
            coords.z - 0.2,
            0.5,
            0.5,
            0.5,
            0,
            50,
            255,
            170,
            50,
            20,
            false,
            false,
            true
        )
    end

    -- Ask the server for the player's current City Hall information.
    TriggerServerEvent("e58e55199b")
end)


-- ============================================================
-- MENU CONTENT
-- ============================================================

RageUI.CreateWhile(
    1.0,
    identityMenu,
    nil,
    function()
        RageUI.IsVisible(
            identityMenu,
            true,
            true,
            true,
            function()
                RageUI.ButtonWithStyle(
                    "Change your Identity",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected then
                            TriggerServerEvent("509b447bd2")
                        end
                    end,
                    RMenu:Get("confirm", "identity")
                )

                local bounty = CMG.getClientBounty()
                if bounty > 0 then
                    RageUI.ButtonWithStyle(
                        "~r~Pay Outstanding Bounty",
                        "",
                        {
                            RightLabel =
                                "£" .. getMoneyStringFormatted(bounty)
                        },
                        true,
                        function(_, _, selected)
                            if selected then
                                TriggerServerEvent("c9701a471a")
                            end
                        end
                    )
                end

                local houseTax =
                    CMG.getOustandingHouseTaxAmount()

                if houseTax > 0 then
                    RageUI.ButtonWithStyle(
                        "~r~Pay Outstanding House Taxes",
                        "",
                        {
                            RightLabel =
                                "£" ..
                                getMoneyStringFormatted(houseTax)
                        },
                        true,
                        function(_, _, selected)
                            if selected then
                                TriggerServerEvent("e58e55199b")
                            end
                        end
                    )
                end
            end,
            function()
                -- No extra panel content.
            end
        )
    end
)


-- ============================================================
-- DRIVING-LICENCE HEADSHOT HELPER
-- ============================================================

-- GTA licence UI wants a texture of the target player's face.
--
-- Returns:
--   textureName, headshotHandle
--
-- If the player cannot be resolved, "CHAR_BLOCKED", nil is returned.
local function getPlayerHeadshot(serverId)
    local playerIndex = GetPlayerFromServerId(serverId)

    if playerIndex == -1 then
        return "CHAR_BLOCKED", nil
    end

    local ped = GetPlayerPed(playerIndex)

    if ped == 0 then
        return "CHAR_BLOCKED", nil
    end

    local headshotHandle =
        RegisterPedheadshotTransparent(ped)

    local startedAt = GetGameTimer()

    while not IsPedheadshotReady(headshotHandle) do
        -- Give the headshot up to 2.5 seconds to become valid/ready.
        if GetGameTimer() - startedAt > 2500
            or not IsPedheadshotValid(headshotHandle) then

            UnregisterPedheadshot(headshotHandle)
            return "CHAR_BLOCKED", nil
        end

        Citizen.Wait(0)
    end

    return
        GetPedheadshotTxdString(headshotHandle),
        headshotHandle
end


-- ============================================================
-- DRIVING LICENCE DISPLAY
-- ============================================================

-- The server sends nine values here.
--
-- Only some of their exact meanings can be proven from this client:
--   serverId          = whose headshot to display
--   hasFullLicence    = full vs provisional background
--   firstName/lastName = printed name fields
--   countryCode       = printed before "UNITED KINGDOM"
--
-- The remaining fields are kept with neutral names because this client
-- only draws them and does not describe their meaning.
RegisterNetEvent(
    "24e267197d",
    function(
        serverId,
        hasFullLicence,
        firstName,
        lastName,
        countryCode,
        licenceField5,
        licenceField6,
        licenceField7,
        licenceField8
    )
        showingDrivingLicence = true

        RequestStreamedTextureDict(
            "driving_licence",
            false
        )

        while not HasStreamedTextureDictLoaded(
            "driving_licence"
        ) do
            Citizen.Wait(0)
        end

        local headshotTexture, headshotHandle =
            getPlayerHeadshot(serverId)

        local backgroundTexture =
            hasFullLicence and "full" or "provisional"

        local fontId =
            CMG.getFontId("Montserrat-Light")

        firstName = string.upper(firstName)
        lastName = string.upper(lastName)

        while showingDrivingLicence do
            -- Licence card background.
            DrawSprite(
                "driving_licence",
                backgroundTexture,
                0.13,
                0.5,
                0.35,
                0.35,
                0.0,
                255,
                255,
                255,
                255
            )

            -- Player portrait.
            DrawSprite(
                headshotTexture,
                headshotTexture,
                0.048,
                0.49,
                0.052,
                0.11,
                0.0,
                255,
                255,
                255,
                255
            )

            local function drawLicenceText(x, y, text)
                DrawAdvancedTextNoOutline(
                    x,
                    y,
                    0.005,
                    0.0028,
                    0.2,
                    text,
                    70,
                    70,
                    71,
                    255,
                    fontId,
                    1
                )
            end

            drawLicenceText(0.188, 0.411, firstName)
            drawLicenceText(0.188, 0.4245, lastName)

            drawLicenceText(
                0.188,
                0.4545,
                string.format(
                    "%s UNITED KINGDOM",
                    countryCode
                )
            )

            -- These values are drawn exactly where the original script
            -- drew them. Their semantic names are not available here.
            drawLicenceText(
                0.188,
                0.47,
                licenceField6
            )

            drawLicenceText(
                0.238,
                0.47,
                "DVLA"
            )

            drawLicenceText(
                0.188,
                0.485,
                licenceField7
            )

            drawLicenceText(
                0.2,
                0.5,
                "CMG02072018BD9CV"
            )

            drawLicenceText(
                0.188,
                0.556,
                "1 Victoria St, London SW1H 0ET"
            )

            drawLicenceText(
                0.188,
                0.596,
                "AM/B/f/k/q"
            )

            Citizen.Wait(0)
        end

        SetStreamedTextureDictAsNoLongerNeeded(
            "driving_licence"
        )

        if headshotHandle then
            UnregisterPedheadshot(headshotHandle)
        end
    end
)


-- Server tells us to stop drawing the licence.
RegisterNetEvent("d47617dc0c", function()
    showingDrivingLicence = false
end)
