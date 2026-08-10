--[[
    Discord Nitro / Special Vehicle Crafting
    ========================================

    Lets eligible players craft small fun vehicles after a 5-second hammering
    animation. All craft actions share a 10-second cooldown.

    Server events:
      739ff0bbbe = craft BMX
      c185d91d8b = craft moped

    Commands:
      /unicycle   (requires unicycle.whitelisted)
      /skate      (requires skate.whitelisted)
]]

local lastCraftTime = GetGameTimer()
local CRAFT_COOLDOWN_MS = 10000
local CRAFT_ANIMATION_MS = 5000

local function isPlayerInWater()
    return IsEntityInWater(CMG.getPlayerPed())
end

local function isCraftCooldownReady()
    return GetTimeDifference(GetGameTimer(), lastCraftTime) > CRAFT_COOLDOWN_MS
end

-- Restrictions shared by all four craftable vehicles.
local function isGeneralCraftingAllowed()
    if tCMG.isInComa() then
        return false
    end

    if CMG.isHandcuffed() then
        return false
    end

    if CMG.isInsideDiamondCasino() then
        return false
    end

    if CMG.isPlayerNearPrison() then
        return false
    end

    return true
end

local function startHammering(playerPed, message)
    lastCraftTime = GetGameTimer()
    tCMG.notify(message)

    TaskStartScenarioInPlace(
        playerPed,
        "WORLD_HUMAN_HAMMERING",
        0,
        true
    )

    Wait(CRAFT_ANIMATION_MS)
end

-- Used by BMX and moped. These two have extra water/vehicle checks before and
-- after the 5-second crafting animation.
local function craftNitroVehicle(options)
    if not isGeneralCraftingAllowed() then
        -- The original file only explicitly showed this message for the coma
        -- branch; this generic message describes the intended restriction.
        tCMG.notify("~r~Cannot craft a " .. options.displayName .. " right now.")
        return
    end

    if not isCraftCooldownReady() then
        tCMG.notify(options.cooldownMessage)
        return
    end

    local playerPed = CMG.getPlayerPed()

    if isPlayerInWater() then
        tCMG.notify("~r~You cannot craft a " .. options.displayName .. " while in the water.")
        return
    end

    if IsPedInAnyVehicle(playerPed, false) then
        tCMG.notify("~r~You cannot craft a " .. options.displayName .. " while in a vehicle.")
        return
    end

    startHammering(playerPed, options.craftingMessage)

    -- The original script does not finish the spawn while inside the organ
    -- heist state.
    if CMG.inOrganHesit() then
        return
    end

    -- Re-check conditions because the player may have moved during the 5 sec.
    if isPlayerInWater() then
        ClearPedTasksImmediately(playerPed)
        tCMG.notify("~r~You cannot craft a " .. options.displayName .. " while in the water.")
        return
    end

    if IsPedInAnyVehicle(playerPed, false) then
        ClearPedTasksImmediately(playerPed)
        tCMG.notify("~r~You cannot craft a " .. options.displayName .. " while in a vehicle.")
        return
    end

    ClearPedTasksImmediately(playerPed)

    local coords = GetEntityCoords(playerPed)

    CMG.requestEntitySpawn(options.spawnRequestName)

    CMG.spawnVehicle(
        options.modelHash,
        coords.x,
        coords.y,
        coords.z,
        GetEntityHeading(playerPed),
        true,
        true,
        true
    )
end

RegisterNetEvent("739ff0bbbe", function()
    craftNitroVehicle({
        displayName = "BMX",
        craftingMessage = "~g~Crafting a BMX",
        cooldownMessage = "~r~Nitro BMX cooldown, please wait.",
        spawnRequestName = "bmx",
        modelHash = 1131912276
    })
end)

RegisterNetEvent("c185d91d8b", function()
    craftNitroVehicle({
        displayName = "moped",
        craftingMessage = "~g~Crafting a Moped",
        -- This wording is intentionally kept from the original file.
        cooldownMessage = "~r~Nitro BMX cooldown, please wait.",
        spawnRequestName = "moped",
        modelHash = -1842748181
    })
end)

-- Unicycle/skateboard use CreateVehicle directly instead of CMG.spawnVehicle.
local function craftWhitelistedVehicle(options)
    if not CMG.hasClientPermission(options.permission) then
        return
    end

    if not isGeneralCraftingAllowed() then
        tCMG.notify("~r~Cannot craft a " .. options.displayName .. " right now.")
        return
    end

    if not isCraftCooldownReady() then
        tCMG.notify(options.cooldownMessage)
        return
    end

    local playerPed = CMG.getPlayerPed()

    startHammering(playerPed, options.craftingMessage)
    ClearPedTasksImmediately(playerPed)

    local coords = GetEntityCoords(playerPed)
    local loadedModel = CMG.loadModel(options.modelHash)

    if not loadedModel then
        return
    end

    CMG.requestEntitySpawn(options.spawnRequestName)

    local vehicle = CreateVehicle(
        loadedModel,
        coords.x,
        coords.y,
        coords.z,
        GetEntityHeading(playerPed),
        true,
        false
    )

    CMG.initLocalVehicle(vehicle)
    SetVehicleOnGroundProperly(vehicle)
    SetEntityInvincible(vehicle, false)
    SetPedIntoVehicle(playerPed, vehicle, -1)
    SetModelAsNoLongerNeeded(loadedModel)
end

RegisterCommand("unicycle", function()
    craftWhitelistedVehicle({
        permission = "unicycle.whitelisted",
        displayName = "Unicycle",
        craftingMessage = "~g~Crafting a Unicycle",
        cooldownMessage = "~r~Unicycle cooldown, please wait.",
        spawnRequestName = "unicycle",
        modelHash = 769320387
    })
end, false)

RegisterCommand("skate", function()
    craftWhitelistedVehicle({
        permission = "skate.whitelisted",
        displayName = "Skateboard",
        craftingMessage = "~g~Crafting a Skateboard",
        cooldownMessage = "~r~Skateboard cooldown, please wait.",
        spawnRequestName = "skate",
        modelHash = 1958479196
    })
end, false)
