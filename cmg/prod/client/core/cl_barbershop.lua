--[[
    Barbershop Locations
    ====================

    Creates interaction areas and map/world markers for barber shops.
    When you stand in one, the script displays a haircut prompt.
    Pressing the interaction key triggers the existing haircut event.
]]

local barbershopLocations = {
    vector3(-815.59008789063, -182.16806030273, 37.568920135498),
    vector3(139.21583557129, -1708.9689941406, 29.301620483398),
    vector3(-1281.9802246094, -1119.6861572266, 7.0001249313354),
    vector3(1934.115234375, 3730.7399902344, 32.854434967041),
    vector3(1211.0759277344, -475.00064086914, 66.218032836914),
    vector3(-34.97777557373, -150.9037322998, 57.086517333984),
    vector3(-280.37301635742, 6227.017578125, 31.705526351929)
}

local function showBarbershopPrompt()
    drawNativeNotification("Press ~INPUT_PICKUP~ to get a haircut.")

    -- Same UI/select sound used by the original script.
    PlaySound(-1, "SELECT", "HUD_MINI_GAME_SOUNDSET", false, 0, true)
end

local function onLeaveBarbershop()
    -- The original callback was empty.
end

local function handleBarbershopInput()
    -- Control 51 is the framework's interaction key here.
    if IsControlJustPressed(1, 51) then
        TriggerEvent("b0ae230dba")
    end
end

AddEventHandler("CMG:onClientSpawn", function(_, firstSpawn)
    -- Only create these areas on the initial client spawn.
    if not firstSpawn then
        return
    end

    for index, position in pairs(barbershopLocations) do
        CMG.createArea(
            "barbershop_" .. index,
            position,
            1.5,
            6,
            showBarbershopPrompt,
            onLeaveBarbershop,
            handleBarbershopInput
        )

        tCMG.addMarker(
            position.x,
            position.y,
            position.z - 0.2,
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
end)
