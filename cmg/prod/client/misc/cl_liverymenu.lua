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
