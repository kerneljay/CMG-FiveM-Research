--[[
    RageUI Heritage Window
    ======================

    RageUI.HeritageWindow(motherIndex, fatherIndex)

    Draws GTA character-creator portraits for the selected mother and father.
    The valid parent indexes are the normal GTA heritage indexes.

    This is only rendering code; it does not change the player's genetics.
]]

local style = {
    Background = {
        Dictionary =
            "pause_menu_pages_char_mom_dad",
        Texture = "mumdadbg",
        Width = 431,
        Height = 228
    },

    Mum = {
        Dictionary =
            "char_creator_portraits",
        X = 25,
        Width = 228,
        Height = 228
    },

    Dad = {
        Dictionary =
            "char_creator_portraits",
        X = 195,
        Width = 228,
        Height = 228
    }
}


local function getMotherTexture(index)
    if index < 0 or index > 21 then
        index = 0
    end

    if index == 21 then
        -- GTA stores the special heritage portraits under separate names.
        return
            "special_female_"
            .. tostring(index - 1)
    end

    return
        "female_"
        .. tostring(index)
end


local function getFatherTexture(index)
    if index < 0 or index > 23 then
        index = 0
    end

    if index >= 21 then
        return
            "special_male_"
            .. tostring(index - 1)
    end

    return
        "male_"
        .. tostring(index)
end


function RageUI.HeritageWindow(
    motherIndex,
    fatherIndex
)
    local menu =
        RageUI.CurrentMenu

    if menu == nil
        or not menu() then
        return
    end

    local motherTexture =
        getMotherTexture(
            motherIndex
        )

    local fatherTexture =
        getFatherTexture(
            fatherIndex
        )

    local y =
        menu.Y
        + menu.SubtitleHeight
        + RageUI.ItemOffset

    RenderSprite(
        style.Background.Dictionary,
        style.Background.Texture,
        menu.X,
        y,
        style.Background.Width
            + menu.WidthOffset,
        style.Background.Height
    )

    RenderSprite(
        style.Dad.Dictionary,
        fatherTexture,
        menu.X
            + style.Dad.X
            + menu.WidthOffset / 2,
        y,
        style.Dad.Width,
        style.Dad.Height
    )

    RenderSprite(
        style.Mum.Dictionary,
        motherTexture,
        menu.X
            + style.Mum.X
            + menu.WidthOffset / 2,
        y,
        style.Mum.Width,
        style.Mum.Height
    )

    RageUI.ItemOffset =
        RageUI.ItemOffset
        + style.Background.Height
end
