--[[
    LEVEL 1 BEGINNER GUIDE — Liverymenu
    ========================================

    File: cmg/prod/client/misc/cl_liverymenu.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Liverymenu feature.

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
      * Background threads: 0
      * Always-running loops: 0
      * Commands: livery
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
    Vehicle Livery Menu
    ===================

    /livery or INSERT opens a simple livery selector for the vehicle the local
    player is DRIVING.

    The menu contains:
      * normal vehicle liveries from GetVehicleLiveryCount
      * optional roof liveries from GetVehicleRoofLiveryCount

    GTA livery indexes are zero-based, while the menu labels are shown as
    "Livery #1", "Livery #2", etc. Therefore button N applies index N - 1.

    Important original behaviour:
      The command checks GetVehicleLiveryCount(vehicle) > 0 before opening.
      That means a vehicle with ONLY roof liveries will still be treated as
      having no liveries. This is preserved.
]]

RMenu.Add(
    "cmgliverymenu",
    "main",
    RageUI.CreateMenu(
        "CMG Livery Menu",
        "~b~CMG Livery Menu"
    )
)

local liveryMenu =
    RMenu:Get(
        "cmgliverymenu",
        "main"
    )

liveryMenu:SetStyleSize(90)

local selectedVehicle = nil


RageUI.CreateWhile(
    1.0,
    liveryMenu,
    nil,
    function()
        RageUI.IsVisible(
            liveryMenu,
            true,
            false,
            true,
            function()
                if selectedVehicle == nil then
                    return
                end

                local liveryCount =
                    GetVehicleLiveryCount(
                        selectedVehicle
                    )

                for menuIndex = 1,
                    liveryCount do

                    RageUI.Button(
                        "Livery #"
                            .. tostring(menuIndex),
                        nil,
                        true,
                        function(_, _, selected)
                            if selected then
                                SetVehicleLivery(
                                    selectedVehicle,
                                    menuIndex - 1
                                )
                            end
                        end
                    )
                end

                local roofLiveryCount =
                    GetVehicleRoofLiveryCount(
                        selectedVehicle
                    )

                if roofLiveryCount > 0 then
                    RageUI.Separator(
                        "~y~Additional Liveries"
                    )

                    for menuIndex = 1,
                        roofLiveryCount do

                        RageUI.Button(
                            "Livery #"
                                .. tostring(menuIndex),
                            nil,
                            true,
                            function(_, _, selected)
                                if selected then
                                    SetVehicleRoofLivery(
                                        selectedVehicle,
                                        menuIndex - 1
                                    )
                                end
                            end
                        )
                    end
                end
            end,
            function()
            end
        )
    end
)


RegisterKeyMapping(
    "livery",
    "Livery Menu",
    "keyboard",
    "INSERT"
)

TriggerEvent(
    "chat:addSuggestion",
    "/livery",
    "Open the livery menu"
)


RegisterCommand(
    "livery",
    function()
        local playerPed =
            CMG.getPlayerPed()

        local vehicle =
            CMG.getPlayerVehicle()

        if not IsPedInAnyVehicle(
            playerPed,
            false
        ) then
            return
        end

        if GetPedInVehicleSeat(
            vehicle,
            -1
        ) ~= playerPed then
            return
        end

        if GetVehicleLiveryCount(
            vehicle
        ) <= 0 then
            tCMG.notify(
                "~r~This vehicle has no liveries!"
            )
            return
        end

        selectedVehicle =
            vehicle

        RageUI.Visible(
            liveryMenu,
            not RageUI.Visible(
                liveryMenu
            )
        )

        if CMG.isNewPlayer()
            and RageUI.Visible(
                liveryMenu
            ) then

            drawNativeNotification(
                "Press ~INPUT_805D8F10~ to toggle the livery menu."
            )
        end
    end,
    false
)
