--[[
    Quick Charges - beginner-friendly rewrite
    =========================================

    This is a readable rewrite of the supplied decompiled FiveM Lua file.

    What this script does:
      1. Loads police offence/charge data from cfg/cfg_pnc.
      2. Organises offences into categories for the NUI.
      3. Lets an ON-DUTY police officer open a "quick charges" menu
         for another player.
      4. Lets the officer choose offences and punishment tiers.
      5. Sends the selected offences to the server as either:
            - a jail action
            - or a fine action

    Important:
      - The original hashed server event names are preserved exactly.
      - The exact server-side implementation is NOT in this file, so the
        event constants below are named according to how this client uses them.
      - This file does not define cfg/cfg_pnc; it only reads it.
]]

---------------------------------------------------------------------
-- CONFIG
---------------------------------------------------------------------

-- This config is expected to contain tables similar to:
--
-- PNCConfig.categories = {
--     ["Category Name"] = {
--         "offence_id_1",
--         "offence_id_2"
--     }
-- }
--
-- PNCConfig.offences = {
--     ["offence_id_1"] = {
--         name = "Example offence",
--         punishments = {
--             [1] = { fine = 100, months = 1 },
--             [2] = { fine = 250, months = 3 },
--             [3] = { fine = 500, months = 5 }
--         }
--     }
-- }
local PNCConfig = CMG.loadModule("cfg/cfg_pnc")

---------------------------------------------------------------------
-- SERVER EVENT NAMES
---------------------------------------------------------------------

-- These hashes are deliberately unchanged from the original script.
--
-- Their exact server-side function names are not visible here, so these
-- names describe how THIS client uses them.

local EVENT_JAIL_TARGET = "61172cd221"
local EVENT_JAIL_CHARGES = "c08019918f"
local EVENT_FINE_CHARGES = "9276adb44e"

---------------------------------------------------------------------
-- MENU STATE
---------------------------------------------------------------------

-- Which action is currently open:
--     "jail"
--     "fine"
--     nil = no menu open
local currentMode = nil

-- Server ID of the player being charged.
local targetServerId = 0

-- Prevents the menu from being opened twice at once.
local quickChargesOpen = false

---------------------------------------------------------------------
-- CACHED CHARGE DATA
---------------------------------------------------------------------

-- We only build the offence/category structure once because the config is
-- normally static while the resource is running.
local cachedCharges = nil
local cachedCategories = nil
local cachedCategoryOrder = nil

---------------------------------------------------------------------
-- SMALL HELPER: BUILD ONE PUNISHMENT-TIER LIST
---------------------------------------------------------------------

-- Each offence can have up to three punishment tiers.
--
-- Example returned value:
-- {
--     { fine = 100, months = 1 },
--     { fine = 250, months = 3 },
--     { fine = 500, months = 5 }
-- }
local function buildPunishmentTiers(offence)
    local tiers = {}

    for tierNumber = 1, 3 do
        local punishment = offence.punishments
            and offence.punishments[tierNumber]

        if punishment then
            tiers[#tiers + 1] = {
                fine = punishment.fine or 0,
                months = punishment.months or 0,
            }
        end
    end

    return tiers
end

---------------------------------------------------------------------
-- BUILD DATA FOR THE QUICK-CHARGES NUI
---------------------------------------------------------------------

-- Returns THREE values:
--
-- 1. charges
--    A flat list containing every offence.
--
-- 2. categories
--    A table mapping a category name to offence IDs.
--
-- 3. categoryOrder
--    An ordered list of category names so the UI can display them
--    consistently.
local function buildQuickChargeData()
    local charges = {}
    local categories = {}
    local categoryOrder = {}

    -------------------------------------------------------------
    -- STEP 1:
    -- Read all categories from the config and sort their names.
    -------------------------------------------------------------

    local sortedCategoryNames = {}

    for categoryName in pairs(PNCConfig.categories or {}) do
        sortedCategoryNames[#sortedCategoryNames + 1] = categoryName
    end

    table.sort(sortedCategoryNames)

    -------------------------------------------------------------
    -- STEP 2:
    -- Add offences that are explicitly listed inside categories.
    -------------------------------------------------------------

    for _, categoryName in ipairs(sortedCategoryNames) do
        local offenceIds = PNCConfig.categories[categoryName]

        categoryOrder[#categoryOrder + 1] = categoryName
        categories[categoryName] = {}

        for _, offenceId in ipairs(offenceIds) do
            local offence = PNCConfig.offences
                and PNCConfig.offences[offenceId]

            -- Ignore category entries that point at an offence that
            -- does not actually exist in the config.
            if offence then
                categories[categoryName][#categories[categoryName] + 1] = offenceId

                charges[#charges + 1] = {
                    id = offenceId,
                    name = offence.name or offenceId,
                    tiers = buildPunishmentTiers(offence),
                }
            end
        end
    end

    -------------------------------------------------------------
    -- STEP 3:
    -- Find offences that were NOT placed in any configured category.
    -------------------------------------------------------------

    local uncategorisedOffences = {}

    for offenceId, offence in pairs(PNCConfig.offences or {}) do
        local alreadyAdded = false

        for _, charge in ipairs(charges) do
            if charge.id == offenceId then
                alreadyAdded = true
                break
            end
        end

        if not alreadyAdded then
            uncategorisedOffences[#uncategorisedOffences + 1] = {
                id = offenceId,
                offence = offence,
            }
        end
    end

    -------------------------------------------------------------
    -- STEP 4:
    -- Sort the uncategorised offences alphabetically.
    -------------------------------------------------------------

    table.sort(uncategorisedOffences, function(a, b)
        local aName = a.offence.name or a.id
        local bName = b.offence.name or b.id

        return aName < bName
    end)

    -------------------------------------------------------------
    -- STEP 5:
    -- Put all unlisted offences into "Other Offences".
    -------------------------------------------------------------

    for _, entry in ipairs(uncategorisedOffences) do
        local offenceId = entry.id
        local offence = entry.offence

        local categoryName = "Other Offences"

        if not categories[categoryName] then
            categories[categoryName] = {}
            categoryOrder[#categoryOrder + 1] = categoryName
        end

        categories[categoryName][#categories[categoryName] + 1] = offenceId

        charges[#charges + 1] = {
            id = offenceId,
            name = offence.name or offenceId,
            tiers = buildPunishmentTiers(offence),
        }
    end

    return charges, categories, categoryOrder
end

---------------------------------------------------------------------
-- GET THE CACHED CHARGE DATA
---------------------------------------------------------------------

local function getQuickChargeData()
    if not cachedCharges then
        cachedCharges, cachedCategories, cachedCategoryOrder =
            buildQuickChargeData()
    end

    return cachedCharges, cachedCategories, cachedCategoryOrder
end

---------------------------------------------------------------------
-- POLICE PERMISSION CHECK
---------------------------------------------------------------------

local function isOnDutyPolice()
    return CMG.hasClientPermission("police.onduty.permission")
end

---------------------------------------------------------------------
-- CLOSE THE QUICK-CHARGES MENU
---------------------------------------------------------------------

local function closeQuickChargesMenu()
    if not quickChargesOpen then
        return
    end

    quickChargesOpen = false
    currentMode = nil
    targetServerId = 0

    -- Give control of the mouse/keyboard back to the game.
    SetNuiFocus(false, false)
end

---------------------------------------------------------------------
-- OPEN THE QUICK-CHARGES MENU
---------------------------------------------------------------------

-- targetEntity:
--     The PED/entity of the player we want to charge.
--
-- requestedMode:
--     "jail" = jail workflow
--     anything else = fine workflow
function CMG.openQuickChargesMenu(targetEntity, requestedMode)

    -------------------------------------------------------------
    -- Do not open another copy if one is already open.
    -------------------------------------------------------------

    if quickChargesOpen then
        return
    end

    -------------------------------------------------------------
    -- Only on-duty police are allowed to use the menu.
    -------------------------------------------------------------

    if not isOnDutyPolice() then
        notify("~r~Only on-duty police can use this.")
        return
    end

    -------------------------------------------------------------
    -- Convert the target PED/entity into a FiveM player index.
    -------------------------------------------------------------

    local targetPlayer = GetPlayerByEntityID(targetEntity)

    if not targetPlayer then
        notify("~r~No valid player target.")
        return
    end

    -------------------------------------------------------------
    -- Convert the local player index into the player's server ID.
    -------------------------------------------------------------

    local serverId = GetPlayerServerId(targetPlayer)

    if not serverId or serverId <= 0 then
        return
    end

    -------------------------------------------------------------
    -- Load the offence list for the NUI.
    -------------------------------------------------------------

    local charges, categories, categoryOrder = getQuickChargeData()

    if not charges or #charges == 0 then
        notify("~r~No charges configured.")
        return
    end

    -------------------------------------------------------------
    -- Only "jail" is treated as jail mode.
    -- Everything else becomes fine mode.
    -------------------------------------------------------------

    currentMode = requestedMode == "jail" and "jail" or "fine"
    targetServerId = serverId
    quickChargesOpen = true

    -------------------------------------------------------------
    -- The original code waits 50 ms before focusing/opening the NUI.
    -------------------------------------------------------------

    SetTimeout(50, function()

        -- The menu might have been closed during those 50 ms.
        if not quickChargesOpen then
            return
        end

        SetNuiFocus(true, true)

        SendNUIMessage({
            openQuickCharges = true,

            mode = currentMode,

            -- Flat offence data.
            charges = charges,

            -- categoryName -> offence IDs
            categories = categories,

            -- Order to draw the categories in.
            categoryOrder = categoryOrder,
        })
    end)
end

---------------------------------------------------------------------
-- NUI CALLBACK: CLOSE BUTTON
---------------------------------------------------------------------

RegisterNUICallback("quickChargesClose", function(_, callback)
    closeQuickChargesMenu()

    -- Always reply to an NUI callback.
    callback({})
end)

---------------------------------------------------------------------
-- VALIDATE ONE SELECTED CHARGE
---------------------------------------------------------------------

-- The browser/NUI sends selected entries like:
--
-- {
--     id = "some_offence_id",
--     tier = 2
-- }
--
-- We only accept:
--   - a table
--   - with a STRING offence id
--
-- Tier is forced into the valid 1 -> 3 range.
local function sanitiseSelectedCharge(pick)
    if type(pick) ~= "table" then
        return nil
    end

    if type(pick.id) ~= "string" then
        return nil
    end

    local tier = tonumber(pick.tier) or 1

    if tier < 1 then
        tier = 1
    elseif tier > 3 then
        tier = 3
    end

    return {
        id = pick.id,
        tier = tier,
    }
end

---------------------------------------------------------------------
-- NUI CALLBACK: OFFICER CONFIRMED THE CHARGES
---------------------------------------------------------------------

RegisterNUICallback("quickChargesConfirm", function(data, callback)

    -- Reply to the browser immediately.
    callback({})

    -- Ignore confirmations when the menu is not actually open.
    if not quickChargesOpen then
        return
    end

    -------------------------------------------------------------
    -- Never blindly trust the NUI's mode.
    -------------------------------------------------------------

    local mode = data.mode == "jail" and "jail" or "fine"

    -------------------------------------------------------------
    -- Clean up the selected offence list.
    -------------------------------------------------------------

    local selectedCharges = {}

    if type(data.picks) == "table" then
        for _, pick in ipairs(data.picks) do
            local cleanPick = sanitiseSelectedCharge(pick)

            if cleanPick then
                selectedCharges[#selectedCharges + 1] = cleanPick
            end
        end
    end

    -------------------------------------------------------------
    -- Save the target BEFORE closing the menu.
    --
    -- closeQuickChargesMenu() resets targetServerId back to 0.
    -------------------------------------------------------------

    local selectedTargetServerId = targetServerId

    closeQuickChargesMenu()

    -------------------------------------------------------------
    -- Nothing valid was selected, so do nothing.
    -------------------------------------------------------------

    if #selectedCharges == 0 then
        return
    end

    if not selectedTargetServerId or selectedTargetServerId <= 0 then
        return
    end

    -------------------------------------------------------------
    -- SEND THE REQUEST TO THE SERVER
    -------------------------------------------------------------
    --
    -- Jail mode sends TWO server events in the original code.
    --
    -- Fine mode sends ONE server event.
    --
    -- The hashes are deliberately unchanged.
    -------------------------------------------------------------

    if mode == "jail" then
        TriggerServerEvent(
            EVENT_JAIL_TARGET,
            selectedTargetServerId
        )

        TriggerServerEvent(
            EVENT_JAIL_CHARGES,
            selectedTargetServerId,
            selectedCharges
        )
    else
        TriggerServerEvent(
            EVENT_FINE_CHARGES,
            selectedTargetServerId,
            selectedCharges
        )
    end
end)