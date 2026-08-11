--[[
    LEVEL 1 BEGINNER GUIDE — Uiheritage
    ========================================

    File: cmg/prod/client/rageui/menu/windows/UIHeritage.lua
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


-- === HELPER FUNCTION: getMotherTexture(index) ===
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


-- === HELPER FUNCTION: getFatherTexture(index) ===
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
