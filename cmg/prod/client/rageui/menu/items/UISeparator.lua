--[[
    LEVEL 1 BEGINNER GUIDE — Uiseparator
    =========================================

    File: cmg/prod/client/rageui/menu/items/UISeparator.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: usable inventory item behaviour, specifically the Uiseparator feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 1
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
    RageUI Separator Item
    =====================

    RageUI.Separator(text) draws a non-clickable line of text inside the
    current menu and advances the menu's vertical item offset.

    This is UI framework code rather than gameplay code.
]]

local separatorStyle = {
    Rectangle = {
        Y = 0,
        Width = 431,
        Height = 38
    },

    Text = {
        X = 8,
        Y = 3,
        Scale = 0.33
    }
}

-- === HELPER FUNCTION: RageUI.Separator(text) ===
function RageUI.Separator(text)
    local menu = RageUI.CurrentMenu

    if menu == nil or not menu() then
        return
    end

    local optionIndex =
        RageUI.Options + 1

    local minimum =
        menu.Pagination.Minimum

    local maximum =
        menu.Pagination.Maximum

    if optionIndex >= minimum
        and optionIndex <= maximum then

        if text ~= nil then
            local widthOffset =
                menu.WidthOffset * 2.5

            if widthOffset == 0 then
                widthOffset = 200
            end

            RenderText(
                text,
                menu.X
                    + separatorStyle.Text.X
                    + widthOffset,
                menu.Y
                    + separatorStyle.Text.Y
                    + menu.SubtitleHeight
                    + RageUI.ItemOffset,
                0,
                separatorStyle.Text.Scale,
                245,
                245,
                245,
                255,
                1
            )
        end

        RageUI.ItemOffset =
            RageUI.ItemOffset
            + separatorStyle.Rectangle.Height

        -- Preserve RageUI's cursor/index behaviour.
        if menu.Index == optionIndex then
            if RageUI.LastControl then
                menu.Index =
                    optionIndex - 1

                if menu.Index < 1 then
                    menu.Index =
                        RageUI.CurrentMenu.Options
                end
            else
                menu.Index =
                    optionIndex + 1
            end
        end
    end

    RageUI.Options =
        RageUI.Options + 1
end
