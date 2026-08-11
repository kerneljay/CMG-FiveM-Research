--[[
    LEVEL 1 BEGINNER GUIDE — Savepedprops
    ==========================================

    File: cmg/prod/client/core/cl_savepedprops.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Savepedprops feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 0
      * Background threads: 1
      * Always-running loops: 1
      * Commands: putonhat, putonglasses, putonmask
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: none found by static scan

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

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
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

-- === COMMAND /putonhat: runs when that command is entered ===
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

-- === COMMAND /putonglasses: runs when that command is entered ===
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

-- === COMMAND /putonmask: runs when that command is entered ===
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
