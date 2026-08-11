--[[
    LEVEL 1 BEGINNER GUIDE — Warningsystem
    ===========================================

    File: cmg/prod/client/staff/cl_warningsystem.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: staff/admin gameplay and moderation tools, specifically the Warningsystem feature.

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
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
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
    On-Screen Keyboard Input Helpers
    ================================

    These helpers open GTA's built-in on-screen keyboard.

    CMG.GetRageInputText(label, defaultValue)
      Returns text or nil.

    CMG.GetRageInputInt(label, defaultValue)
      Returns tonumber(text) or nil.

    Controls are disabled while the keyboard is open so gameplay input does
    not accidentally fire behind the input box.
]]

local function getKeyboardInput(
    label,
    defaultValue
)
    AddTextEntry(
        "FMMC_MPM_NA",
        "Enter " .. label
    )

    DisplayOnscreenKeyboard(
        1,
        "FMMC_MPM_NA",
        "Enter " .. label .. " message",
        defaultValue or "",
        "",
        "",
        "",
        30
    )

    CMG.toggleTemporaryFocusDisable()

    while UpdateOnscreenKeyboard()
        == 0 do

        DisableAllControlActions(0)
        Wait(0)
    end

    CMG.toggleTemporaryFocusDisable()

    local result =
        GetOnscreenKeyboardResult()

    if result and result ~= "" then
        return result
    end

    return nil
end

function CMG.GetRageInputText(
    label,
    defaultValue
)
    return getKeyboardInput(
        label,
        defaultValue
    )
end

function CMG.GetRageInputInt(
    label,
    defaultValue
)
    local result =
        getKeyboardInput(
            label,
            defaultValue
        )

    if result then
        return tonumber(result)
    end

    return nil
end
