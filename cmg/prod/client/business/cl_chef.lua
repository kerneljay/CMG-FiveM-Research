--[[
    LEVEL 1 BEGINNER GUIDE - Chef
    =============================

    Business Chef Job
    =================

    This file registers the "chef" business job.

    What the chef can do:
      * Wash hands at the sink.
      * Open preparation menus at drink/food machines.
      * Trigger direct prep actions for fries, patties, burger salad, and sauces.
      * View the business order list.

    Important event names:
      bf3f551598 = refresh business data from the server
      db9a057a2d = craft the selected recipe/menu item
      6a31d41cc5 = play drink-pouring animation
      c6cd1a916a = fry fries
      88f2f7f0ea = grill patties
      76d0a73816 = add burger salad
      2d5eb5712c = add sauces

    The event hashes and menu ids are part of the client/server contract.
    Keep them unchanged unless every caller is updated at the same time.
]]

local businessConfig = CMG.loadModule("cfg/cfg_business")

local isWashingHands = false
local dirtyHandsLevel = 0
local activeStations = {}

local MENU_IDS = {
    drinks = "chef_drinks",
    hotDrinks = "chef_hotdrinks",
    milkshakes = "chef_milkshakes",
    icecreams = "chef_icecreams",
    cupcakes = "chef_cupcakes",
    rice = "chef_rice",
    chinese = "chef_chinese",
}

local MENU_RECIPES = {
    [MENU_IDS.drinks] = businessConfig.drinksMachine,
    [MENU_IDS.hotDrinks] = businessConfig.hotDrinksMachine,
    [MENU_IDS.milkshakes] = businessConfig.milkshakeMachine,
    [MENU_IDS.icecreams] = businessConfig.icecreamMachine,
    [MENU_IDS.cupcakes] = businessConfig.cupcakesMachine,
    [MENU_IDS.rice] = businessConfig.riceStation,
    [MENU_IDS.chinese] = businessConfig.chineseCookingStation,
}

local function noop()
end

local function getAreaPosition(position)
    return position.xyz or position
end

local function addKitchenMarker(position)
    return tCMG.addMarker(
        position.x,
        position.y,
        position.z - 1.0,
        0.4,
        0.4,
        0.4,
        255,
        255,
        0,
        150,
        25.0,
        1
    )
end

local function rememberStation(marker, area)
    activeStations[#activeStations + 1] = {
        marker = marker,
        area = area,
    }
end

local function removeActiveStations()
    for _, station in pairs(activeStations) do
        if station.marker then
            tCMG.removeMarker(station.marker)
        end

        if station.area then
            tCMG.removeArea(station.area)
        end
    end

    activeStations = {}
end

local function refreshBusinessData()
    TriggerServerEvent("bf3f551598")
end

local function warnIfHandsAreDirty()
    if dirtyHandsLevel > 8 then
        notify("~r~Your hands are dirty. Please wash them.")
    end
end

local function canUseKitchenStation()
    return not isWashingHands
end

local function handleSingleInputStation(helpText, onUse)
    if not canUseKitchenStation() then
        return
    end

    warnIfHandsAreDirty()
    drawNativeNotification(helpText)

    if IsControlJustPressed(0, 51) then
        CMG.disableSittingOnChairThisFrame()
        refreshBusinessData()
        onUse()
    end
end

local function handleTwoInputStation(helpText, onUse)
    if not canUseKitchenStation() then
        return
    end

    warnIfHandsAreDirty()
    drawNativeNotification(helpText)

    DisableControlAction(0, 44, true)
    DisableControlAction(0, 52, true)

    local pressedPrimary = IsControlJustPressed(0, 51)
    local pressedSecondary = IsDisabledControlJustPressed(0, 52)

    if pressedPrimary or pressedSecondary then
        CMG.disableSittingOnChairThisFrame()
        refreshBusinessData()
        onUse(pressedSecondary)
    end
end

local function addChefStation(areaName, position, onTick, onExit)
    if not position then
        return
    end

    local marker = addKitchenMarker(position)
    local area = CMG.createArea(
        areaName,
        getAreaPosition(position),
        1.5,
        3.0,
        noop,
        onExit or noop,
        onTick,
        {}
    )

    rememberStation(marker, area)
end

local function washHands()
    if isWashingHands then
        return
    end

    drawNativeNotification("Press ~INPUT_CONTEXT~ to wash your hands")

    if not IsControlJustPressed(0, 51) then
        return
    end

    CMG.disableSittingOnChairThisFrame()
    tCMG.setCanAnim(false)
    isWashingHands = true

    tCMG.playAnim(true, {
        {"switch@michael@wash_face", "loop_michael", 1},
    }, false)

    Citizen.CreateThread(function()
        Citizen.Wait(3800)
        refreshBusinessData()
        isWashingHands = false
        tCMG.setCanAnim(true)
        dirtyHandsLevel = 0
    end)
end

local function openOrderList()
    if not canUseKitchenStation() then
        return
    end

    warnIfHandsAreDirty()
    drawNativeNotification("Press ~INPUT_CONTEXT~ to view the order list")

    if IsControlJustPressed(0, 51) then
        CMG.disableSittingOnChairThisFrame()
        RageUI.Visible(RMenu:Get("business", "chef_vieworders"), true)
    end
end

local function initialiseChefJob(businessData)
    local metadata = businessData.jobMetadata

    addChefStation("business_wash", metadata.washPosition, washHands)

    addChefStation("business_drinks", metadata.drinksDispensor, function()
        handleSingleInputStation("Press ~INPUT_CONTEXT~ to pour a drink", function()
            RageUI.Visible(RMenu:Get("business", MENU_IDS.drinks), true)
        end)
    end)

    addChefStation("business_frier", metadata.frierPosition, function()
        handleTwoInputStation([[
Press ~INPUT_CONTEXT~ to fry small fries
Press ~INPUT_CONTEXT_SECONDARY~ to fry large fries]], function(isLargeFries)
            TriggerServerEvent("c6cd1a916a", isLargeFries)
        end)
    end)

    addChefStation("business_grill", metadata.grillPosition, function()
        handleSingleInputStation("Press ~INPUT_CONTEXT~ to grill the patties", function()
            TriggerServerEvent("88f2f7f0ea")
        end)
    end)

    addChefStation("business_burger", metadata.burgerPosition, function()
        handleTwoInputStation([[
Press ~INPUT_CONTEXT~ to add salad to small burger
Press ~INPUT_CONTEXT_SECONDARY~ to add salad to large burger]], function(isLargeBurger)
            TriggerServerEvent("76d0a73816", isLargeBurger)
        end)
    end)

    addChefStation("business_sauces", metadata.saucesPosition, function()
        handleSingleInputStation("Press ~INPUT_CONTEXT~ to add the sauces", function()
            TriggerServerEvent("2d5eb5712c")
        end)
    end)

    addChefStation("business_orders", metadata.ordersPosition, openOrderList, function()
        RageUI.CloseAll()
    end)

    addChefStation("business_hotdrinks", metadata.hotDrinksDispensor, function()
        handleSingleInputStation("Press ~INPUT_CONTEXT~ to pour a hot drink", function()
            RageUI.Visible(RMenu:Get("business", MENU_IDS.hotDrinks), true)
        end)
    end)

    addChefStation("business_milkshakes", metadata.milkshakeMachine, function()
        handleSingleInputStation("Press ~INPUT_CONTEXT~ to mix a milkshake", function()
            RageUI.Visible(RMenu:Get("business", MENU_IDS.milkshakes), true)
        end)
    end)

    addChefStation("business_icecream", metadata.icecreamMachine, function()
        handleSingleInputStation("Press ~INPUT_CONTEXT~ to create icecream", function()
            RageUI.Visible(RMenu:Get("business", MENU_IDS.icecreams), true)
        end)
    end)

    addChefStation("business_cupcakes", metadata.cupcakeMachine, function()
        handleSingleInputStation("Press ~INPUT_CONTEXT~ to create cupcakes", function()
            RageUI.Visible(RMenu:Get("business", MENU_IDS.cupcakes), true)
        end)
    end)

    addChefStation("business_rice", metadata.riceMachine, function()
        handleSingleInputStation("Press ~INPUT_CONTEXT~ to fry rice", function()
            RageUI.Visible(RMenu:Get("business", MENU_IDS.rice), true)
        end)
    end)

    addChefStation("business_chinese", metadata.chineseMachine, function()
        handleSingleInputStation("Press ~INPUT_CONTEXT~ to cook food", function()
            RageUI.Visible(RMenu:Get("business", MENU_IDS.chinese), true)
        end)
    end)
end

local function finishChefJob()
    removeActiveStations()
    isWashingHands = false
    dirtyHandsLevel = 0
end

local function buildRequirementsText(businessData, recipe)
    local requirements = "Requirements: "

    for _, requiredItem in pairs(recipe.items) do
        local itemInfo = businessData.locationInfo.items[requiredItem.id]
        local itemName = itemInfo and itemInfo[1] or requiredItem.id

        requirements = requirements .. "\n" .. tostring(requiredItem.amount) .. "x " .. itemName
    end

    return requirements
end

local function drawRecipeButtons(businessData, recipes)
    for itemId, recipe in pairs(recipes) do
        local itemInfo = businessData.locationInfo.items[itemId]

        if itemInfo then
            RageUI.ButtonWithStyle(
                itemInfo[1],
                buildRequirementsText(businessData, recipe),
                {RightLabel = ">>>"},
                true,
                function(_, _, selected)
                    if selected then
                        TriggerServerEvent("db9a057a2d", itemId)
                    end
                end
            )
        end
    end
end

local function drawChefRecipeMenu(menuId, recipes)
    RageUI.IsVisible(
        RMenu:Get("business", menuId),
        true,
        false,
        true,
        function()
            local businessData = CMG.getUserBusinessData("chef")

            if not businessData then
                RageUI.CloseAll()
                return
            end

            drawRecipeButtons(businessData, recipes)
        end
    )
end

for _, menuId in pairs(MENU_IDS) do
    RMenu.Add(
        "business",
        menuId,
        RageUI.CreateMenu(
            "",
            "~b~CMG Business",
            CMG.getRageUIMenuWidth(),
            CMG.getRageUIMenuHeight(),
            "cmg_marketui",
            "cmg_marketui"
        )
    )
end

RageUI.CreateWhile(
    1.0,
    RMenu:Get("business", MENU_IDS.drinks),
    nil,
    function()
        for menuId, recipes in pairs(MENU_RECIPES) do
            drawChefRecipeMenu(menuId, recipes)
        end
    end
)

RegisterNetEvent("6a31d41cc5", function()
    tCMG.setCanAnim(true)

    local playerPed = PlayerPedId()
    FreezeEntityPosition(playerPed, true)

    tCMG.playAnim(true, {
        {"anim@amb@nightclub@mini@drinking@drinking_shots@ped_d@normal", "pour_one", 1},
    }, false)

    FreezeEntityPosition(playerPed, false)
    tCMG.setCanAnim(false)
end)

RegisterNetEvent("c6cd1a916a", noop)
RegisterNetEvent("88f2f7f0ea", noop)
RegisterNetEvent("76d0a73816", noop)
RegisterNetEvent("2d5eb5712c", noop)

local chefStages = {
    main = {
        init = noop,
        tick = noop,
        finish = noop,
        next = "main",
    },
}

CMG.registerBusinessJob(
    "chef",
    initialiseChefJob,
    "main",
    chefStages,
    finishChefJob
)

Citizen.Wait(0)

CMG.addGenericBusinessOrderView("chef", nil)
