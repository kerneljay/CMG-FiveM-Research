--[[
    CMG Club / VIP Perks Client
    ===========================

    Beginner overview:
      /cmgclub opens the CMG Club menu.

      The server owns four time balances:
        subscription.hoursOfPlus
        subscription.hoursOfPlatinum
        subscription.hoursOfPlusGame
        subscription.hoursOfPlatinumGame

      "Game" hours are reward/playtime entitlement, while the other two are
      normal subscription time.

      Local PC preferences are saved with resource KVPs:
        cmg_club_time          = custom time/freeze settings
        cmg_deathsound         = selected death sound
        cmg_codhitmarkersounds = COD-style hit marker on/off
        cmg_killlistsetting    = kill list on/off

      Platinum/Plus perks in this file include:
        * custom death sounds
        * weekly kit claim
        * COD hitmarker sound
        * kill list
        * vehicle extras
        * local time editor
        * clean current vehicle
        * reserve parachute for Platinum

    Hash-looking server event names are intentionally unchanged.
]]

-- ============================================================
-- MENUS
-- ============================================================

local function createClubMenu(menuName, parentName)
    local menu

    if parentName then
        menu = RageUI.CreateSubMenu(
            RMenu:Get("vipclubmenu", parentName),
            "",
            "",
            CMG.getRageUIMenuWidth(),
            CMG.getRageUIMenuHeight(),
            "cmg_club",
            "cmg_club"
        )
    else
        menu = RageUI.CreateMenu(
            "",
            "",
            CMG.getRageUIMenuWidth(),
            CMG.getRageUIMenuHeight(),
            "cmg_club",
            "cmg_club"
        )
    end

    RMenu.Add("vipclubmenu", menuName, menu)

    local registered = RMenu:Get("vipclubmenu", menuName)
    registered:SetSubtitle("~b~CMG Club")

    return registered
end

local mainMenu = createClubMenu("mainmenu")
local subscriptionMenu = createClubMenu("managesubscription", "mainmenu")
local perksMenu = createClubMenu("manageperks", "mainmenu")
local deathSoundsMenu = createClubMenu("deathsounds", "manageperks")
local vehicleExtrasMenu = createClubMenu("vehicleextras", "manageperks")
local timeEditorMenu = createClubMenu("weather_time_manager", "manageperks")


-- ============================================================
-- SUBSCRIPTION STATE
-- ============================================================

local subscription = {
    hoursOfPlus = 0,
    hoursOfPlatinum = 0,
    hoursOfPlusGame = 0,
    hoursOfPlatinumGame = 0
}

function CMG.isPlusClub()
    return
        subscription.hoursOfPlus > 0
        or subscription.hoursOfPlusGame > 0
end

function CMG.isPlatClub()
    return
        subscription.hoursOfPlatinum > 0
        or subscription.hoursOfPlatinumGame > 0
        or CMG.hasClientPermission("vipclub.free")
end

local function hasAnyClub()
    return CMG.isPlusClub() or CMG.isPlatClub()
end


-- ============================================================
-- LOCAL TIME SETTINGS
-- ============================================================

local TIME_KVP = "cmg_club_time"

local overrideTime = false
local timeFrozen = false

local hourOptions = {}
local minuteOptions = {}
local secondOptions = {}

for value = 0, 23 do
    hourOptions[value] = value
end

for value = 0, 59 do
    minuteOptions[value] = value
    secondOptions[value] = value
end

-- These indexes intentionally start at zero because the original menu tables
-- were indexed 0..23 and 0..59.
local hourIndex = 0
local minuteIndex = 0
local secondIndex = 0

local function getSelectedTime()
    return
        hourOptions[hourIndex] or 0,
        minuteOptions[minuteIndex] or 0,
        secondOptions[secondIndex] or 0
end

local function applyClubTimeSettings()
    CMG.setTimeFrozen(timeFrozen)

    if overrideTime then
        local hour, minute, second =
            getSelectedTime()

        CMG.overrideTime(
            hour,
            minute,
            second
        )
    end
end

local function saveClubTimeSettings()
    if not hasAnyClub() then
        return
    end

    SetResourceKvp(
        TIME_KVP,
        json.encode({
            override = overrideTime,
            frozen = timeFrozen,
            hourIndex = hourIndex,
            minuteIndex = minuteIndex,
            secondIndex = secondIndex
        })
    )
end

local function loadClubTimeSettings()
    local raw =
        GetResourceKvpString(TIME_KVP)

    if not raw then
        return
    end

    local data = json.decode(raw)

    if type(data) ~= "table" then
        return
    end

    if type(data.hourIndex) == "number"
        and data.hourIndex >= 0
        and data.hourIndex <= 23 then
        hourIndex = data.hourIndex
    end

    if type(data.minuteIndex) == "number"
        and data.minuteIndex >= 0
        and data.minuteIndex <= 59 then
        minuteIndex = data.minuteIndex
    end

    if type(data.secondIndex) == "number"
        and data.secondIndex >= 0
        and data.secondIndex <= 59 then
        secondIndex = data.secondIndex
    end

    if type(data.override) == "boolean" then
        overrideTime = data.override
    end

    if type(data.frozen) == "boolean" then
        timeFrozen = data.frozen
    end

    applyClubTimeSettings()
end


-- ============================================================
-- DEATH SOUNDS
-- ============================================================

local DEATH_SOUND_KVP = "cmg_deathsound"

local deathSounds = {
    CMG = {
        checked = true,
        soundId = "playDead"
    },

    Fortnite = {
        checked = false,
        soundId = "fortnite_death"
    },

    Roblox = {
        checked = false,
        soundId = "roblox_death"
    },

    Minecraft = {
        checked = false,
        soundId = "minecraft_death"
    },

    ["Pac-Man"] = {
        checked = false,
        soundId = "pacman_death"
    },

    Mario = {
        checked = false,
        soundId = "mario_death"
    },

    ["CS:GO"] = {
        checked = false,
        soundId = "csgo_death"
    }
}

function CMG.setDeathSound(soundId)
    if not hasAnyClub() then
        tCMG.notify(
            "~r~Cannot change deathsound, not a valid CMG Plus or Platinum subscriber."
        )
        return
    end

    SetResourceKvp(
        DEATH_SOUND_KVP,
        soundId
    )
end

function CMG.getDeathSound()
    if not hasAnyClub() then
        return "playDead"
    end

    local saved =
        GetResourceKvpString(
            DEATH_SOUND_KVP
        )

    if type(saved) == "string"
        and saved ~= "" then
        return saved
    end

    return "playDead"
end

local function refreshDeathSoundChecks()
    local selected =
        CMG.getDeathSound()

    for _, data in pairs(deathSounds) do
        data.checked =
            data.soundId == selected
    end
end


-- ============================================================
-- HITMARKER / KILL-LIST SETTINGS
-- ============================================================

local COD_HITMARKER_KVP =
    "cmg_codhitmarkersounds"

local KILL_LIST_KVP =
    "cmg_killlistsetting"

local codHitmarkersEnabled = false
local killListEnabled = false

local function setCodHitmarkers(enabled)
    codHitmarkersEnabled = enabled

    SetResourceKvp(
        COD_HITMARKER_KVP,
        enabled and "true" or "false"
    )

    if enabled then
        TriggerEvent("81a637c0d3")
    else
        TriggerEvent("71e40f05bd")
    end

    CMG.setCODHitMarkerSetting(enabled)
end

local function setKillList(enabled)
    killListEnabled = enabled

    SetResourceKvp(
        KILL_LIST_KVP,
        enabled and "true" or "false"
    )

    CMG.setKillListSetting(enabled)
end

Citizen.CreateThread(function()
    loadClubTimeSettings()

    codHitmarkersEnabled =
        GetResourceKvpString(
            COD_HITMARKER_KVP
        ) == "true"

    killListEnabled =
        GetResourceKvpString(
            KILL_LIST_KVP
        ) == "true"

    if codHitmarkersEnabled then
        TriggerEvent("81a637c0d3")
    else
        TriggerEvent("71e40f05bd")
    end

    CMG.setCODHitMarkerSetting(
        codHitmarkersEnabled
    )

    CMG.setKillListSetting(
        killListEnabled
    )
end)


-- Re-sync the checkbox after the player's first spawn.
AddEventHandler(
    "CMG:onClientSpawn",
    function(_, firstSpawn)
        if not firstSpawn then
            return
        end

        Wait(5000)
        refreshDeathSoundChecks()
    end
)


-- ============================================================
-- OPEN / CLOSE COMMAND
-- ============================================================

local function toggleClubMenu()
    RageUI.CloseAll()

    RageUI.Visible(
        mainMenu,
        not RageUI.Visible(mainMenu)
    )
end

RegisterCommand(
    "cmgclub",
    toggleClubMenu,
    false
)


-- ============================================================
-- KILL LIST
-- ============================================================

local recentKills = {}

local function isBountyTargetPed(ped)
    if not DoesEntityExist(ped)
        or not IsPedAPlayer(ped) then
        return false
    end

    local playerIndex =
        NetworkGetPlayerIndexFromPed(ped)

    if playerIndex == -1 then
        return false
    end

    local serverId =
        GetPlayerServerId(playerIndex)

    -- The original resource used its existing bounty-target helper here.
    return CMG.isBountyTarget
        and CMG.isBountyTarget(serverId)
        or false
end

local function killListTick()
    if not killListEnabled then
        return
    end

    local font =
        CMG.getFontId(
            "Akrobat-Regular"
        )

    for index, name in ipairs(recentKills) do
        DrawAdvancedTextNoOutline(
            0.6,
            0.5 + 0.025 * index,
            0.005,
            0.0028,
            0.35,
            "Killed " .. tostring(name),
            255,
            255,
            255,
            255,
            font,
            1
        )
    end
end

CMG.createThreadOnTick(
    killListTick,
    "Club Kill List"
)

RegisterNetEvent(
    "2244097108",
    function(victimPed)
        if not killListEnabled then
            return
        end

        if not hasAnyClub()
            and not isBountyTargetPed(
                victimPed
            ) then
            return
        end

        local name = "Player"

        if DoesEntityExist(victimPed)
            and IsPedAPlayer(victimPed) then

            local playerIndex =
                NetworkGetPlayerIndexFromPed(
                    victimPed
                )

            if playerIndex ~= -1 then
                name =
                    CMG.getPlayerName(
                        playerIndex
                    )
            end
        end

        table.insert(
            recentKills,
            name
        )

        local myIndex = #recentKills

        Citizen.CreateThread(function()
            Wait(2000)

            -- Remove by value/index safely even if several kills were added.
            if recentKills[myIndex] == name then
                table.remove(
                    recentKills,
                    myIndex
                )
                return
            end

            for index, existingName
                in ipairs(recentKills) do

                if existingName == name then
                    table.remove(
                        recentKills,
                        index
                    )
                    break
                end
            end
        end)
    end
)


-- ============================================================
-- SUBSCRIPTION SERVER EVENTS
-- ============================================================

RegisterNetEvent(
    "7aab2694dd",
    function(
        plusHours,
        platinumHours,
        plusGameHours,
        platinumGameHours
    )
        local hadPlatinum =
            CMG.isPlatClub()

        local gainingPlatinum =
            platinumHours > subscription.hoursOfPlatinum
            or platinumGameHours
                > subscription.hoursOfPlatinumGame

        if not hadPlatinum
            and gainingPlatinum then
            TriggerServerEvent(
                "dd042dd67d",
                false
            )
        end

        subscription.hoursOfPlus =
            plusHours

        subscription.hoursOfPlatinum =
            platinumHours

        subscription.hoursOfPlusGame =
            plusGameHours

        subscription.hoursOfPlatinumGame =
            platinumGameHours

        applyClubTimeSettings()
        refreshDeathSoundChecks()
    end
)

RegisterNetEvent(
    "70e6fd77fe",
    function()
        if subscription.hoursOfPlusGame > 0 then
            subscription.hoursOfPlusGame =
                subscription.hoursOfPlusGame - 1
        else
            subscription.hoursOfPlus =
                math.max(
                    subscription.hoursOfPlus - 1,
                    0
                )
        end
    end
)

RegisterNetEvent(
    "8aaaa9e0cc",
    function()
        if subscription.hoursOfPlatinumGame > 0 then
            subscription.hoursOfPlatinumGame =
                subscription.hoursOfPlatinumGame - 1
        else
            subscription.hoursOfPlatinum =
                math.max(
                    subscription.hoursOfPlatinum - 1,
                    0
                )
        end
    end
)


-- ============================================================
-- PASSIVE CLUB PERKS
-- ============================================================

Citizen.CreateThread(function()
    while true do
        if CMG.isPlatClub() then
            local ped = PlayerPedId()

            if not HasPedGotWeapon(
                ped,
                -72657034,
                false
            ) then
                GiveWeaponToPed(
                    ped,
                    -72657034,
                    0,
                    false,
                    false
                )
            end

            SetPlayerHasReserveParachute(
                PlayerId()
            )
        end

        if hasAnyClub()
            and GetPlayerRoutingBucket
            and GetPlayerRoutingBucket(
                PlayerId()
            ) ~= 333 then

            local vehicle =
                CMG.getPlayerVehicle()

            if vehicle
                and vehicle ~= 0 then
                SetVehicleDirtLevel(
                    vehicle,
                    0.0
                )
            end
        end

        Wait(1000)
    end
end)


-- ============================================================
-- MENU CONTENT
-- ============================================================

RageUI.CreateWhile(
    1.0,
    mainMenu,
    nil,
    function()
        RageUI.IsVisible(
            mainMenu,
            true,
            true,
            true,
            function()
                RageUI.ButtonWithStyle(
                    "Manage Subscription",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function()
                    end,
                    subscriptionMenu
                )

                RageUI.ButtonWithStyle(
                    "Manage Perks",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function()
                    end,
                    perksMenu
                )
            end,
            function()
            end
        )

        RageUI.IsVisible(
            subscriptionMenu,
            true,
            true,
            true,
            function()
                if CMG.hasClientPermission(
                    "vipclub.free"
                ) then
                    RageUI.Separator(
                        "~g~Platinum perks enabled due to staff rank!"
                    )
                end

                local paidDays =
                    math.rounddp(
                        subscription.hoursOfPlatinum
                            / 24,
                        2
                    )

                local rewardDays =
                    math.rounddp(
                        subscription.hoursOfPlatinumGame
                            / 24,
                        2
                    )

                RageUI.Separator(
                    "Days remaining of Platinum Subscription: " ..
                    tostring(paidDays) ..
                    " days."
                )

                RageUI.Separator(
                    "Days remaining of Platinum Rewards: " ..
                    tostring(rewardDays) ..
                    " days."
                )

                RageUI.Separator("---")

                RageUI.ButtonWithStyle(
                    "Sell Platinum Subscription days.",
                    "~r~If you have already claimed your weekly kit, the first 7 of your subscription days may not be re-sold.",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if not selected then
                            return
                        end

                        if tCMG.isInGreenzone(false) then
                            TriggerServerEvent(
                                "d9fb371b48",
                                "Platinum"
                            )
                        else
                            notify(
                                "~r~You must be in a greenzone to sell."
                            )
                        end
                    end
                )
            end,
            function()
            end
        )

        RageUI.IsVisible(
            perksMenu,
            true,
            true,
            true,
            function()
                RageUI.ButtonWithStyle(
                    "Custom Death Sounds",
                    "",
                    {RightLabel = "→→→"},
                    hasAnyClub(),
                    function()
                    end,
                    deathSoundsMenu
                )

                RageUI.ButtonWithStyle(
                    "Vehicle Extras",
                    "",
                    {RightLabel = "→→→"},
                    hasAnyClub(),
                    function()
                    end,
                    vehicleExtrasMenu
                )

                RageUI.ButtonWithStyle(
                    "Claim Weekly Kit",
                    "",
                    {RightLabel = "→→→"},
                    CMG.isPlatClub(),
                    function(_, _, selected)
                        if not selected then
                            return
                        end

                        if not globalInPrison
                            and not tCMG.isHandcuffed() then
                            TriggerServerEvent(
                                "43b7dcfedd"
                            )
                        else
                            notify(
                                "~r~You can not redeem a kit whilst in custody."
                            )
                        end
                    end
                )

                RageUI.Checkbox(
                    "Enable COD Hitmarkers",
                    "~g~This adds 'hit marker' sound and image when shooting another player.",
                    codHitmarkersEnabled,
                    {},
                    function(_, _, _, checked)
                        setCodHitmarkers(
                            checked
                        )

                        notify(
                            "~y~COD Hitmarkers now set to " ..
                            tostring(checked)
                        )
                    end
                )

                RageUI.Checkbox(
                    "Enable Kill List",
                    "~g~This adds a kill list below your crosshair when you kill a player.",
                    killListEnabled,
                    {},
                    function(_, _, _, checked)
                        setKillList(checked)
                    end
                )

                RageUI.ButtonWithStyle(
                    "Time Editor",
                    "",
                    {RightLabel = "→→→"},
                    hasAnyClub(),
                    function()
                    end,
                    timeEditorMenu
                )
            end,
            function()
            end
        )

        RageUI.IsVisible(
            deathSoundsMenu,
            true,
            true,
            true,
            function()
                for label, soundData
                    in pairs(deathSounds) do

                    RageUI.Checkbox(
                        label,
                        "",
                        soundData.checked,
                        {},
                        function(_, _, _, checked)
                            if checked then
                                CMG.setDeathSound(
                                    soundData.soundId
                                )

                                for _, other
                                    in pairs(deathSounds) do
                                    other.checked = false
                                end

                                soundData.checked = true
                            end
                        end
                    )
                end
            end,
            function()
            end
        )

        RageUI.IsVisible(
            vehicleExtrasMenu,
            true,
            true,
            true,
            function()
                local vehicle =
                    CMG.getPlayerVehicle()

                if not vehicle
                    or vehicle == 0 then
                    RageUI.Separator(
                        "~r~Enter a vehicle to be able to use this menu"
                    )
                    return
                end

                SetVehicleAutoRepairDisabled(
                    vehicle,
                    true
                )

                for extra = 1, 99 do
                    if DoesExtraExist(
                        vehicle,
                        extra
                    ) then
                        local enabled =
                            IsVehicleExtraTurnedOn(
                                vehicle,
                                extra
                            )

                        RageUI.Checkbox(
                            "Extra " .. extra,
                            "",
                            enabled,
                            {},
                            function(_, _, _, checked)
                                SetVehicleExtra(
                                    vehicle,
                                    extra,
                                    not checked
                                )
                            end
                        )
                    end
                end
            end,
            function()
            end
        )

        RageUI.IsVisible(
            timeEditorMenu,
            true,
            true,
            true,
            function()
                RageUI.Checkbox(
                    "Freeze Time",
                    "",
                    timeFrozen,
                    {},
                    function(_, _, _, checked)
                        timeFrozen = checked
                        CMG.setTimeFrozen(
                            checked
                        )
                        saveClubTimeSettings()
                    end
                )

                RageUI.Checkbox(
                    "Override Time",
                    "",
                    overrideTime,
                    {},
                    function(_, _, _, checked)
                        overrideTime = checked

                        if checked then
                            local hour, minute, second =
                                getSelectedTime()

                            CMG.overrideTime(
                                hour,
                                minute,
                                second
                            )
                        else
                            DecorSetBool(
                                PlayerPedId(),
                                "a99d39faff",
                                false
                            )

                            CMG.cancelOverrideTimeWeather()
                        end

                        saveClubTimeSettings()
                    end
                )

                RageUI.List(
                    "Hours",
                    hourOptions,
                    hourIndex,
                    "",
                    {},
                    true,
                    function(_, _, _, index)
                        hourIndex = index

                        if overrideTime then
                            local hour, minute, second =
                                getSelectedTime()

                            CMG.overrideTime(
                                hour,
                                minute,
                                second
                            )
                        end

                        saveClubTimeSettings()
                    end
                )

                RageUI.List(
                    "Minutes",
                    minuteOptions,
                    minuteIndex,
                    "",
                    {},
                    true,
                    function(_, _, _, index)
                        minuteIndex = index

                        if overrideTime then
                            local hour, minute, second =
                                getSelectedTime()

                            CMG.overrideTime(
                                hour,
                                minute,
                                second
                            )
                        end

                        saveClubTimeSettings()
                    end
                )

                RageUI.List(
                    "Seconds",
                    secondOptions,
                    secondIndex,
                    "",
                    {},
                    true,
                    function(_, _, _, index)
                        secondIndex = index

                        if overrideTime then
                            local hour, minute, second =
                                getSelectedTime()

                            CMG.overrideTime(
                                hour,
                                minute,
                                second
                            )
                        end

                        saveClubTimeSettings()
                    end
                )
            end,
            function()
            end
        )
    end
)
