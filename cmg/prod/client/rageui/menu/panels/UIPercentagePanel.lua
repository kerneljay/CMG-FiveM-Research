--[[
    LEVEL 1 BEGINNER GUIDE — Uipercentage Panel
    ================================================

    File: cmg/prod/client/rageui/menu/panels/UIPercentagePanel.lua
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
    RageUI Percentage Slider Panel
    ==============================

    RageUI.PercentagePanel(
        percentage,
        middleLabel,
        leftLabel,
        rightLabel,
        callback,
        onlyForMenuIndex
    )

    Draws a 0.0 -> 1.0 horizontal percentage bar below the current menu item.

    If the mouse is over the bar and the player holds left click:
      * the bar follows the cursor
      * percentage is clamped to 0.0..1.0
      * callback(hovered, changed, percentage) is called

    onlyForMenuIndex is optional. When supplied, the panel is only visible when
    that menu item is selected.

    This is RageUI framework code, not gameplay logic.
]]

local style = {
    Background = {
        Dictionary = "commonmenu",
        Texture = "gradient_bgd",
        Y = 4,
        Width = 431,
        Height = 76
    },

    Bar = {
        X = 9,
        Y = 50,
        Width = 413,
        Height = 10
    },

    Text = {
        Left = {
            X = 25,
            Y = 15,
            Scale = 0.35
        },

        Middle = {
            X = 215.5,
            Y = 15,
            Scale = 0.35
        },

        Right = {
            X = 398,
            Y = 15,
            Scale = 0.35
        }
    }
}


function RageUI.PercentagePanel(
    percentage,
    middleLabel,
    leftLabel,
    rightLabel,
    callback,
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

    local barX =
        menu.X
        + style.Bar.X
        + menu.SafeZoneSize.X

    local barY =
        menu.Y
        + style.Bar.Y
        + menu.SafeZoneSize.Y
        + menu.SubtitleHeight
        + RageUI.ItemOffset
        - 4

    local barWidth =
        style.Bar.Width
        + menu.WidthOffset

    local mouseInside =
        RageUI.IsMouseInBounds(
            barX,
            barY,
            barWidth,
            style.Bar.Height + 8
        )

    local changed =
        false

    percentage =
        math.max(
            0.0,
            math.min(
                1.0,
                percentage
            )
        )

    local filledWidth =
        style.Bar.Width
        * percentage

    -- Background panel.
    RenderSprite(
        style.Background.Dictionary,
        style.Background.Texture,
        menu.X,
        menu.Y
            + style.Background.Y
            + menu.SubtitleHeight
            + RageUI.ItemOffset,
        style.Background.Width
            + menu.WidthOffset,
        style.Background.Height
    )

    -- Full dark bar.
    RenderRectangle(
        menu.X
            + style.Bar.X
            + menu.WidthOffset / 2,
        menu.Y
            + style.Bar.Y
            + menu.SubtitleHeight
            + RageUI.ItemOffset,
        style.Bar.Width,
        style.Bar.Height,
        87,
        87,
        87,
        255
    )

    -- Filled light part.
    RenderRectangle(
        menu.X
            + style.Bar.X
            + menu.WidthOffset / 2,
        menu.Y
            + style.Bar.Y
            + menu.SubtitleHeight
            + RageUI.ItemOffset,
        filledWidth,
        style.Bar.Height,
        245,
        245,
        245,
        255
    )

    local textY =
        menu.Y
        + style.Text.Middle.Y
        + menu.SubtitleHeight
        + RageUI.ItemOffset

    RenderText(
        middleLabel or "Opacity",
        menu.X
            + style.Text.Middle.X
            + menu.WidthOffset / 2,
        textY,
        0,
        style.Text.Middle.Scale,
        245,
        245,
        245,
        255,
        1
    )

    RenderText(
        leftLabel or "0%",
        menu.X
            + style.Text.Left.X
            + menu.WidthOffset / 2,
        menu.Y
            + style.Text.Left.Y
            + menu.SubtitleHeight
            + RageUI.ItemOffset,
        0,
        style.Text.Left.Scale,
        245,
        245,
        245,
        255,
        1
    )

    RenderText(
        rightLabel or "100%",
        menu.X
            + style.Text.Right.X
            + menu.WidthOffset / 2,
        menu.Y
            + style.Text.Right.Y
            + menu.SubtitleHeight
            + RageUI.ItemOffset,
        0,
        style.Text.Right.Scale,
        245,
        245,
        245,
        255,
        1
    )

    -- Mouse dragging.
    if mouseInside
        and IsDisabledControlPressed(
            0,
            24
        ) then

        changed = true

        local mousePixelX =
            RageUI.round(
                GetControlNormal(
                    2,
                    239
                )
                * 1920
            )
            - menu.SafeZoneSize.X

        local relativeX =
            mousePixelX
            - (
                menu.X
                + style.Bar.X
                + menu.WidthOffset / 2
            )

        relativeX =
            math.max(
                0,
                math.min(
                    style.Bar.Width,
                    relativeX
                )
            )

        percentage =
            RageUI.round(
                relativeX
                    / style.Bar.Width,
                2
            )
    end

    RageUI.ItemOffset =
        RageUI.ItemOffset
        + style.Background.Height
        + style.Background.Y

    if mouseInside
        and changed then

        local audio =
            RageUI.Settings.Audio

        RageUI.PlaySound(
            audio[audio.Use]
                .Slider.audioName,

            audio[audio.Use]
                .Slider.audioRef,

            true
        )
    end

    callback(
        mouseInside,
        changed,
        percentage
    )
end
