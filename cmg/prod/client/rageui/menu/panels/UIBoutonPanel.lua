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
