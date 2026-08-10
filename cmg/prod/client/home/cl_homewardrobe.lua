--[[
    Home Wardrobe
    =============

    The wardrobe has three menus:
      Main Menu
        * List Outfits
        * Save Outfit
        * Get Outfit Code

      List Outfits
        * Shows every outfit name supplied by the server.

      Equip
        * Equip the selected outfit
        * Delete the selected outfit

    Server events:
      1fa1fff768(outfits?)
        Opens the wardrobe. If no outfit table is supplied, it first asks the
        server for one with 7c23a49d7d.

      38e666c1a7(outfits)
        Replaces the local outfit-name list.

      02e1799443
        Closes the wardrobe.

      8d90706bc9(name)
        Saves the CURRENT outfit under the supplied name.

      c02e231b9b(name)
        Equips a saved outfit.

      9c9c9f3e4d(name)
        Deletes a saved outfit.

      f707bb5c63
        Requests a shareable five-character outfit code for the CURRENT outfit.

    Sharing outfit codes requires CMG Plus or Platinum.

    Animal-form players cannot save an animal as a wardrobe outfit.

    Hash-looking event names are deliberately unchanged.
]]

local outfits = {}
local selectedOutfitName = nil


-- ============================================================
-- MENUS
-- ============================================================

RMenu.Add(
    "cmgwardrobe",
    "mainmenu",
    RageUI.CreateMenu(
        "",
        "~b~Wardrobe",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_clothesui",
        "cmg_clothesui"
    )
)

local mainMenu =
    RMenu:Get(
        "cmgwardrobe",
        "mainmenu"
    )


RMenu.Add(
    "cmgwardrobe",
    "listoutfits",
    RageUI.CreateSubMenu(
        mainMenu,
        "",
        "~b~Wardrobe",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_clothesui",
        "cmg_clothesui"
    )
)

local listMenu =
    RMenu:Get(
        "cmgwardrobe",
        "listoutfits"
    )


RMenu.Add(
    "cmgwardrobe",
    "equip",
    RageUI.CreateSubMenu(
        mainMenu,
        "",
        "~b~Wardrobe",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_clothesui",
        "cmg_clothesui"
    )
)

local equipMenu =
    RMenu:Get(
        "cmgwardrobe",
        "equip"
    )


-- ============================================================
-- OPEN / CLOSE
-- ============================================================

local function openWardrobe()
    RageUI.CloseAll()
    RageUI.Visible(
        mainMenu,
        true
    )
end


local function closeWardrobe()
    RageUI.CloseAll()
    RageUI.Visible(
        mainMenu,
        false
    )
end


-- ============================================================
-- SAVE CURRENT OUTFIT
-- ============================================================

local function saveCurrentOutfit()
    local outfitName =
        CMG.GetRageInputText(
            "outfit name:"
        )

    if not outfitName
        or outfitName == "" then
        tCMG.notify(
            "~r~Invalid outfit name"
        )
        return
    end

    if CMG.isPlayerInAnimalForm() then
        tCMG.notify(
            "~r~Cannot save animal in wardrobe."
        )
        return
    end

    TriggerServerEvent(
        "8d90706bc9",
        outfitName
    )
end


-- ============================================================
-- GET SHAREABLE OUTFIT CODE
-- ============================================================

local function requestOutfitCode()
    if CMG.isPlusClub()
        or CMG.isPlatClub() then

        TriggerServerEvent(
            "f707bb5c63"
        )
        return
    end

    tCMG.notify(
        "~y~You need to be a subscriber of CMG Plus or CMG Platinum to use this feature."
    )

    tCMG.notify(
        "~y~Available @ store.cmgstudios.net"
    )
end


-- ============================================================
-- DRAW MENUS
-- ============================================================

RageUI.CreateWhile(
    1.0,
    mainMenu,
    nil,
    function()
        -- ----------------------------------------------------
        -- MAIN
        -- ----------------------------------------------------

        RageUI.IsVisible(
            mainMenu,
            true,
            true,
            true,
            function()
                RageUI.ButtonWithStyle(
                    "List Outfits",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function()
                    end,
                    listMenu
                )

                RageUI.ButtonWithStyle(
                    "Save Outfit",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected then
                            saveCurrentOutfit()
                        end
                    end
                )

                RageUI.ButtonWithStyle(
                    "Get Outfit Code",
                    "Gets a code for your current outfit which can be shared with other players.",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected then
                            requestOutfitCode()
                        end
                    end
                )
            end,
            function()
            end
        )


        -- ----------------------------------------------------
        -- SAVED OUTFIT LIST
        -- ----------------------------------------------------

        RageUI.IsVisible(
            listMenu,
            true,
            true,
            true,
            function()
                if outfits
                    and next(outfits)
                        ~= nil then

                    for _, outfitName
                        in pairs(outfits) do

                        RageUI.ButtonWithStyle(
                            outfitName,
                            "",
                            {RightLabel = "→→→"},
                            true,
                            function(_, _, selected)
                                if selected then
                                    selectedOutfitName =
                                        outfitName
                                end
                            end,
                            equipMenu
                        )
                    end
                else
                    RageUI.ButtonWithStyle(
                        "~r~No outfits saved",
                        "",
                        {RightLabel = "→→→"},
                        true,
                        function()
                        end,
                        mainMenu
                    )
                end
            end,
            function()
            end
        )


        -- ----------------------------------------------------
        -- SELECTED OUTFIT
        -- ----------------------------------------------------

        RageUI.IsVisible(
            equipMenu,
            true,
            true,
            true,
            function()
                RageUI.ButtonWithStyle(
                    "Equip Outfit",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected
                            and selectedOutfitName then

                            TriggerServerEvent(
                                "c02e231b9b",
                                selectedOutfitName
                            )
                        end
                    end,
                    listMenu
                )

                RageUI.ButtonWithStyle(
                    "Delete Outfit",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected
                            and selectedOutfitName then

                            TriggerServerEvent(
                                "9c9c9f3e4d",
                                selectedOutfitName
                            )
                        end
                    end,
                    listMenu
                )
            end,
            function()
            end
        )
    end
)


-- ============================================================
-- SERVER EVENTS
-- ============================================================

RegisterNetEvent(
    "1fa1fff768",
    function(serverOutfits)
        if serverOutfits then
            outfits =
                serverOutfits
        else
            TriggerServerEvent(
                "7c23a49d7d"
            )
        end

        openWardrobe()
    end
)


RegisterNetEvent(
    "38e666c1a7",
    function(serverOutfits)
        outfits =
            serverOutfits
            or {}
    end
)


RegisterNetEvent(
    "02e1799443",
    closeWardrobe
)
