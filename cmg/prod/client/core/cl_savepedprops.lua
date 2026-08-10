--[[
    Remember Hat / Glasses / Mask
    =============================

    GTA can remove props when the player gets damaged. This script remembers
    the last hat, glasses and mask the player wore so commands can put them
    back on.

    Commands:
      /putonhat
      /putonglasses
      /putonmask
]]

local savedHatDrawable = nil
local savedHatTexture = nil
local savedGlassesDrawable = nil
local savedMaskDrawable = nil

Citizen.CreateThread(function()
    while true do
        local playerPed = CMG.getPlayerPed()

        -- Prevent GTA from automatically throwing props away on damage.
        SetPedCanLosePropsOnDamage(playerPed, false, 0)

        -- -------------------------
        -- Hat (prop slot 0)
        -- -------------------------
        local hatDrawable = GetPedPropIndex(playerPed, 0)

        if hatDrawable ~= -1 then
            savedHatDrawable = hatDrawable
            savedHatTexture = GetPedPropTextureIndex(playerPed, 0)
        end

        -- -------------------------
        -- Glasses (prop slot 1)
        -- -------------------------
        local glassesDrawable = GetPedPropIndex(playerPed, 1)

        if glassesDrawable ~= -1 then
            savedGlassesDrawable = glassesDrawable
        end

        -- -------------------------
        -- Mask (component slot 1)
        -- -------------------------
        local maskDrawable = GetPedDrawableVariation(playerPed, 1)

        if maskDrawable ~= 0 then
            savedMaskDrawable = maskDrawable
        end

        Wait(1000)
    end
end)

RegisterCommand("putonhat", function()
    if savedHatDrawable == nil or savedHatTexture == nil then
        return
    end

    SetPedPropIndex(
        CMG.getPlayerPed(),
        0,
        savedHatDrawable,
        savedHatTexture,
        false
    )
end, false)

RegisterCommand("putonglasses", function()
    if savedGlassesDrawable == nil then
        return
    end

    SetPedPropIndex(
        CMG.getPlayerPed(),
        1,
        savedGlassesDrawable,
        0,
        false
    )
end, false)

RegisterCommand("putonmask", function()
    if savedMaskDrawable == nil then
        return
    end

    SetPedComponentVariation(
        CMG.getPlayerPed(),
        1,
        savedMaskDrawable,
        0,
        2
    )
end, false)
