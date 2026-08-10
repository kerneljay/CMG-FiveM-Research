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
