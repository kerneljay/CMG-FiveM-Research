--[[
    LEVEL 1 BEGINNER GUIDE — Groupselector
    ===========================================

    File: cmg/prod/client/core/cl_groupselector.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Groupselector feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 7
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: 8938ae8828, 1d9acfa3dd, 2f8f180e56, 9a672bc0ac
      * Local event handlers: CMG:onClientSpawn
      * Server events sent: e7a86c3e34, 5c91c15de0, 09d233a638
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_groupselector

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
    Job / Group Selector Client
    ===========================

    Beginner overview:
      * Receives active job-selector locations from the server.
      * Creates a marker, blip and interaction area for each selector.
      * Lets the player pick an available job.
      * Checks any licence/permission needed for a job.
      * Always provides an "Unemployed" option.
      * Shows a withdraw-paycheck button.
      * Exposes a similar withdraw button used by the casino-owner menu.

    Useful config ideas:
      selectorDefinitions = static selector information from cfg_groupselector
      activeSelectors     = server-sent selectors/jobs currently available

    Job entry positions used by this client:
      job[1] = job name
      job[3] = optional required permission/licence
      job[4] = optional description

    All hashed server events are deliberately kept unchanged.
]]

local groupSelectorConfig =
    CMG.loadModule("cfg/cfg_groupselector")

if not groupSelectorConfig then
    return
end

local selectorDefinitions =
    groupSelectorConfig.selectors

local activeSelectors = {}

-- Which selector the player is currently standing in.
local currentSelectorId = ""

-- Paycheck information sent by the server.
local minutesSinceLastPaycheck = 0
local withdrawablePaycheck = 0

-- Handles used so old server-sent selectors can be removed cleanly.
local selectorAreas = {}
local selectorMarkers = {}
local selectorBlips = {}


-- ============================================================
-- MENU
-- ============================================================

RMenu.Add(
    "main",
    "groupselector",
    RageUI.CreateMenu(
        "",
        "",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_licenseui",
        "cmg_licenseui"
    )
)

local selectorMenu =
    RMenu:Get("main", "groupselector")

selectorMenu:SetSubtitle("~b~Job Selector")


-- ============================================================
-- ASK FOR SELECTOR DATA ON FIRST SPAWN
-- ============================================================

AddEventHandler(
    "CMG:onClientSpawn",
    function(_, firstSpawn)
        if firstSpawn then
            -- Beginner: sends the "e7a86c3e34" event to the server.
            TriggerServerEvent("e7a86c3e34")
        end
    end
)


-- ============================================================
-- REMOVE OLD SELECTOR WORLD ITEMS
-- ============================================================

-- === HELPER FUNCTION: clearSelectorWorldItems() ===
local function clearSelectorWorldItems()
    for _, areaId in pairs(selectorAreas) do
        tCMG.removeArea(areaId)
    end

    for _, marker in pairs(selectorMarkers) do
        tCMG.removeMarker(marker)
    end

    for _, blip in pairs(selectorBlips) do
        tCMG.removeBlip(blip)
    end

    selectorAreas = {}
    selectorMarkers = {}
    selectorBlips = {}
end


-- ============================================================
-- CREATE / REFRESH SERVER-SENT SELECTORS
-- ============================================================

RegisterNetEvent(
    "8938ae8828",
    function(serverSelectors)
        clearSelectorWorldItems()

        activeSelectors = serverSelectors or {}

        -- === HELPER FUNCTION: onEnterSelector(areaData) ===
        local function onEnterSelector(areaData)
            -- The purge disables normal job-selector use.
            if not CMG.isPurge() then
                currentSelectorId =
                    areaData.selectorId
            end
        end

        -- === HELPER FUNCTION: onLeaveSelector() ===
        local function onLeaveSelector()
            RageUI.CloseAll()
            RageUI.Visible(selectorMenu, false)
        end

        -- === HELPER FUNCTION: whileInsideSelector(areaData) ===
        local function whileInsideSelector(areaData)
            if CMG.isPurge()
                or CMG.isPlayerInPrison() then
                return
            end

            if IsControlJustPressed(1, 38) then
                local selectorId =
                    areaData.selectorId

                local definition =
                    selectorDefinitions[selectorId]

                if definition then
                    local selectorType =
                        definition.type

                    local typeConfig =
                        groupSelectorConfig
                            .selectorTypes[selectorType]
                            ._config

                    RageUI.CloseAll()

                    selectorMenu:SetSpriteBanner(
                        typeConfig.TextureDictionary,
                        typeConfig.texture
                    )

                    local adminSelectorMenu =
                        RMenu:Get(
                            "cmgadminmenu",
                            "groupselector"
                        )

                    RageUI.Visible(
                        selectorMenu,
                        not RageUI.Visible(
                            adminSelectorMenu
                        )
                    )
                end
            end

            local selector =
                selectorDefinitions[
                    areaData.selectorId
                ]

            if selector then
                CMG.DrawText3D(
                    selector.position,
                    "Press [E] to open Job Selector.",
                    0.3
                )
            end
        end

        for selectorId, selector
            in pairs(activeSelectors) do

            local areaId =
                CMG.createArea(
                    "selector_" .. selectorId,
                    selector.position,
                    1.5,
                    6,
                    onEnterSelector,
                    onLeaveSelector,
                    whileInsideSelector,
                    {selectorId = selectorId}
                )

            local marker =
                tCMG.addPropMarker(
                    "bzzz_marker_job_blue_anim",
                    selector.position.x,
                    selector.position.y,
                    selector.position.z,
                    10.0
                )

            local blip =
                tCMG.addBlip(
                    selector.position.x,
                    selector.position.y,
                    selector.position.z,
                    selector._config.blipid,
                    selector._config.blipcolor,
                    selector._config.name
                )

            table.insert(
                selectorAreas,
                areaId
            )

            table.insert(
                selectorMarkers,
                marker
            )

            table.insert(
                selectorBlips,
                blip
            )
        end
    end
)


-- ============================================================
-- PAYCHECK BUTTON
-- ============================================================

-- === HELPER FUNCTION: drawPaycheckButton() ===
local function drawPaycheckButton()
    -- The original only draws this button after at least some paycheck
    -- time or money has been recorded.
    if minutesSinceLastPaycheck <= 0
        and withdrawablePaycheck <= 0 then
        return
    end

    RageUI.ButtonWithStyle(
        "~y~Withdraw Paycheck",
        "You are next paid in " ..
            tostring(
                30 - minutesSinceLastPaycheck
            ) ..
            " minutes.",
        {
            RightLabel =
                "£" ..
                getMoneyStringFormatted(
                    withdrawablePaycheck
                )
        },
        true,
        function(_, _, selected)
            if not selected then
                return
            end

            if withdrawablePaycheck > 0 then
                TriggerServerEvent(
                    "5c91c15de0"
                )
            else
                notify(
                    "~r~You have no money to withdraw."
                )
            end
        end
    )
end


-- This function is used from the casino-owner UI elsewhere in the client.

-- === HELPER FUNCTION: CMG.drawPaycheckButtonForCasinoOwner() ===
function CMG.drawPaycheckButtonForCasinoOwner()
    if minutesSinceLastPaycheck <= 0
        and withdrawablePaycheck <= 0 then
        return
    end

    RageUI.ButtonWithStyle(
        "~y~Withdraw Casino Profits",
        "",
        {
            RightLabel =
                "£" ..
                getMoneyStringFormatted(
                    withdrawablePaycheck
                )
        },
        true,
        function(_, _, selected)
            if not selected then
                return
            end

            if withdrawablePaycheck > 0 then
                TriggerServerEvent(
                    "5c91c15de0"
                )
            else
                notify(
                    "~r~You have no money to withdraw."
                )
            end
        end
    )
end


-- ============================================================
-- DRAW JOB BUTTONS
-- ============================================================

-- === HELPER FUNCTION: drawJobsForCurrentSelector() ===
local function drawJobsForCurrentSelector()
    for selectorId, selector
        in pairs(activeSelectors) do

        if selectorId == currentSelectorId then
            local jobs = selector.jobs

            if table.count(jobs) ~= 0 then
                for _, job in pairs(jobs) do
                    local jobName = job[1]
                    local requiredPermission = job[3]
                    local description = job[4] or ""

                    local canSelect = true

                    if requiredPermission
                        and not CMG.hasClientPermission(
                            requiredPermission
                        ) then

                        canSelect = false
                        description =
                            "You do not have the required license for this job"
                    end

                    -- The original still allowed disabled jobs to be shown
                    -- at selectors explicitly named "Job Selector".
                    local shouldShow =
                        canSelect
                        or selector._config.name
                            == "Job Selector"

                    if shouldShow then
                        local extraLabel = ""

                        if jobName == "Trucking" then
                            extraLabel =
                                "~g~ - Recommended for new players"
                        end

                        RageUI.ButtonWithStyle(
                            jobName .. extraLabel,
                            description,
                            {RightLabel = "→→→"},
                            canSelect,
                            function(_, _, selected)
                                if selected then
                                    TriggerServerEvent(
                                        "09d233a638",
                                        selectorId,
                                        jobName
                                    )
                                end
                            end,
                            RMenu:Get(
                                "confirm",
                                "groupselector"
                            )
                        )
                    end
                end
            else
                RageUI.Separator(
                    "You have no available clock on ranks"
                )
            end

            -- Everyone can choose to clock off.
            RageUI.ButtonWithStyle(
                "Unemployed",
                "",
                {RightLabel = "→→→"},
                true,
                function(_, _, selected)
                    if selected then
                        TriggerServerEvent(
                            "09d233a638",
                            selectorId,
                            "Unemployed"
                        )
                    end
                end,
                RMenu:Get(
                    "confirm",
                    "groupselector"
                )
            )
        end
    end
end


-- ============================================================
-- MENU DRAW LOOP
-- ============================================================

RageUI.CreateWhile(
    1.0,
    selectorMenu,
    nil,
    function()
        RageUI.IsVisible(
            selectorMenu,
            true,
            true,
            true,
            function()
                drawPaycheckButton()
                drawJobsForCurrentSelector()
            end,
            function()
            end
        )
    end
)


-- ============================================================
-- PAYCHECK SERVER UPDATES
-- ============================================================

-- Replace the current withdrawable amount.

-- === NETWORK EVENT: receives "1d9acfa3dd" from server/another network source ===
RegisterNetEvent("1d9acfa3dd", function(amount)
    withdrawablePaycheck = amount
end)

-- Add money to the current withdrawable amount.

-- === NETWORK EVENT: receives "2f8f180e56" from server/another network source ===
RegisterNetEvent("2f8f180e56", function(amount)
    withdrawablePaycheck =
        withdrawablePaycheck + amount
end)

-- Update the paycheck timer value.

-- === NETWORK EVENT: receives "9a672bc0ac" from server/another network source ===
RegisterNetEvent("9a672bc0ac", function(minutes)
    minutesSinceLastPaycheck = minutes
end)
