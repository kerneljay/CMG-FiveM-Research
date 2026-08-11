--[[
    LEVEL 1 BEGINNER GUIDE — Uibouton Panel
    ============================================

    File: cmg/prod/client/rageui/menu/panels/UIBoutonPanel.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: RageUI menu framework/library code.

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
    RageUI Button/Statistic Panel
    =============================

    RageUI.BoutonPanel(leftText, rightText, onlyForMenuIndex)

    Draws a dark statistic/info row beneath the current menu item:
      leftText  -> aligned left
      rightText -> aligned right

    If onlyForMenuIndex is supplied, the panel is only drawn while that menu
    option is selected.

    This is UI-framework code, not gameplay logic.
]]

local style = {
    Background = {
        Dictionary = "commonmenu",
        Texture = "gradient_bgd",
        Y = 4,
        Width = 431,
        Height = 42
    },

    Text = {
        Left = {
            X = 8,
            Y = 10,
            Scale = 0.35
        },

        Right = {
            X = 8,
            Y = 10,
            Scale = 0.35
        }
    }
}


function RageUI.BoutonPanel(
    leftText,
    rightText,
    onlyForMenuIndex
)
    local menu =
        RageUI.CurrentMenu

    if menu == nil
        or not menu() then
        return
    end

    if onlyForMenuIndex ~= nil
        and menu.Index
            ~= onlyForMenuIndex then
        return
    end

    local rightTextWidth =
        MeasureStringWidth(
            rightText or ""
        )

    local panelY =
        menu.Y
        + style.Background.Y
        + menu.SubtitleHeight
        + RageUI.ItemOffset
        + RageUI.StatisticPanelCount
            * 42

    RenderRectangle(
        menu.X,
        panelY,
        style.Background.Width
            + menu.WidthOffset,
        style.Background.Height,
        0,
        0,
        0,
        170
    )

    local textY =
        RageUI.StatisticPanelCount
            * 40
        + menu.Y
        + style.Text.Left.Y
        + menu.SubtitleHeight
        + RageUI.ItemOffset

    RenderText(
        leftText or "",
        menu.X
            + style.Text.Left.X,
        textY,
        0,
        style.Text.Left.Scale,
        245,
        245,
        245,
        255,
        0
    )

    RenderText(
        rightText or "",
        menu.X
            + style.Background.Width
            + menu.WidthOffset
            - rightTextWidth,
        textY,
        0,
        style.Text.Right.Scale,
        245,
        245,
        245,
        255,
        2
    )

    RageUI.StatisticPanelCount =
        RageUI.StatisticPanelCount
        + 1
end
