--[[
    Truck Dealership / Rental
    =========================

    Config: cfg/cfg_trucking

    This client creates the trucking dealership/rental interaction.

    Menus:
      buy-rent
        Lists configured NON-custom trucks.
        If a truck model is already in `rented`, the button shows a tick.
        Otherwise it shows the configured purchase/rental price.

      vehicle
        Exists as a submenu in the original resource. The decompiled client
        does not draw content into it here.

      vehicles
        Top-level "Your Trucks" menu container.

      rented_trucks / owned_trucks
        Submenus created for other trucking code to populate.

    Server actions:
      dad36733a1(modelName, price)
        Buy/rent a truck that is not currently rented.

      c0a43cc041(modelName)
        Spawn/use a truck already in the rented list.

      55dd309134(ownedList, rentedList)
        Replaces the local server-owned vehicle lists.

      4fd18e8fe3(modelHash)
        Adds a newly-rented model hash to the local rented list and then asks
        the server to spawn/use it.

      cddad45dd3(modelName)
        Spawns a purchased/rented truck at the player's current position.

    Hash-looking event names are deliberately unchanged.
]]

local truckingConfig =
    CMG.loadModule(
        "cfg/cfg_trucking"
    )

local truckDefinitions =
    truckingConfig.trucks

local ownedAndRented = {
    owned = {},
    rented = {}
}


-- ============================================================
-- MENUS
-- ============================================================

RMenu.Add(
    "cmgtruckmenu",
    "buy-rent",
    RageUI.CreateMenu(
        "",
        "~b~CMG Trucking",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_truckingjob",
        "cmg_truckingjob"
    )
)

local buyRentMenu =
    RMenu:Get(
        "cmgtruckmenu",
        "buy-rent"
    )


RMenu.Add(
    "cmgtruckmenu",
    "vehicle",
    RageUI.CreateSubMenu(
        buyRentMenu,
        "CMG Trucking",
        "~b~CMG Trucking",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_truckingjob",
        "cmg_truckingjob"
    )
)


RMenu.Add(
    "cmgtruckmenu",
    "vehicles",
    RageUI.CreateMenu(
        "Your Trucks",
        "~b~CMG Trucking",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_truckingjob",
        "cmg_truckingjob"
    )
)

local vehiclesMenu =
    RMenu:Get(
        "cmgtruckmenu",
        "vehicles"
    )


RMenu.Add(
    "cmgtruckmenu",
    "rented_trucks",
    RageUI.CreateSubMenu(
        vehiclesMenu,
        "Rented Vehicles",
        "~b~CMG Trucking",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_truckingjob",
        "cmg_truckingjob"
    )
)


RMenu.Add(
    "cmgtruckmenu",
    "owned_trucks",
    RageUI.CreateSubMenu(
        vehiclesMenu,
        "Owned Vehicles",
        "~b~CMG Trucking",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_truckingjob",
        "cmg_truckingjob"
    )
)


-- ============================================================
-- SERVER ACTION HELPERS
-- ============================================================

local function buyOrRentTruck(
    modelName,
    price
)
    TriggerServerEvent(
        "dad36733a1",
        modelName,
        price
    )
end


local function useRentedTruck(
    modelName
)
    TriggerServerEvent(
        "c0a43cc041",
        modelName
    )
end


-- Server confirms a new rented truck model hash.
RegisterNetEvent(
    "4fd18e8fe3",
    function(modelHash)
        table.insert(
            ownedAndRented.rented,
            modelHash
        )

        useRentedTruck(
            modelHash
        )
    end
)


-- ============================================================
-- BUY / RENT MENU
-- ============================================================

RageUI.CreateWhile(
    1.0,
    buyRentMenu,
    nil,
    function()
        RageUI.IsVisible(
            buyRentMenu,
            true,
            false,
            true,
            function()
                for modelName, truck
                    in pairs(
                        truckDefinitions
                    ) do

                    -- Custom trucks are handled elsewhere.
                    if not truck.custom then
                        local modelHash =
                            GetHashKey(
                                modelName
                            )

                        local alreadyRented =
                            table.has(
                                ownedAndRented.rented,
                                modelHash
                            )

                        local style

                        if alreadyRented then
                            style = {
                                RightBadge =
                                    RageUI.BadgeStyle.Tick
                            }
                        else
                            style = {
                                RightLabel =
                                    "£"
                                    .. getMoneyStringFormatted(
                                        truck.price
                                    )
                            }
                        end

                        RageUI.ButtonWithStyle(
                            truck.name,
                            "Press to spawn.",
                            style,
                            true,
                            function(_, _, selected)
                                if not selected then
                                    return
                                end

                                if alreadyRented then
                                    useRentedTruck(
                                        modelName
                                    )
                                else
                                    buyOrRentTruck(
                                        modelName,
                                        truck.price
                                    )
                                end
                            end
                        )
                    end
                end
            end
        )
    end
)


-- ============================================================
-- SERVER LIST UPDATE
-- ============================================================

RegisterNetEvent(
    "55dd309134",
    function(
        ownedTrucks,
        rentedTrucks
    )
        ownedAndRented.owned =
            ownedTrucks or {}

        ownedAndRented.rented =
            rentedTrucks or {}
    end
)


-- ============================================================
-- WORLD DEALERSHIP MARKERS
-- ============================================================

CreateThread(function()
    for _, location
        in ipairs(
            truckingConfig.buylocations
        ) do

        local coords =
            location.main

        -- This text uses a fixed dealership location in the original client.
        CMG.add3DTextForCoord(
            "Truck Dealership",
            895.5809,
            -3187.351,
            5.808145,
            8.0
        )

        CMG.add3DTextForCoord(
            "Truck Rental",
            coords.x,
            coords.y,
            coords.z,
            8.0
        )

        tCMG.addPropMarker(
            "bzzz_marker_shop_blue_anim",
            coords.x,
            coords.y,
            coords.z,
            50.0
        )

        tCMG.addBlip(
            coords.x,
            coords.y,
            coords.z,
            67,
            5,
            "Truck Rental"
        )
    end
end)


-- ============================================================
-- OPEN MENU WHEN ENTERING RENTAL AREA
-- ============================================================

AddEventHandler(
    "CMG:onClientSpawn",
    function(_, firstSpawn)
        if not firstSpawn then
            return
        end

        local function onEnter()
            local ped =
                PlayerPedId()

            -- The decompiler checks that the player is NOT currently in a
            -- vehicle before opening.
            if not IsPedInAnyVehicle(
                ped,
                false
            ) then
                RageUI.CloseAll()

                RageUI.Visible(
                    buyRentMenu,
                    true
                )
            end
        end

        local function onLeave()
            RageUI.CloseAll()
        end

        for index, location
            in ipairs(
                truckingConfig.buylocations
            ) do

            CMG.createArea(
                "trucking_buy_"
                    .. tostring(index),
                location.main,
                1.15,
                6,
                onEnter,
                onLeave,
                function()
                end,
                {}
            )
        end
    end
)


-- ============================================================
-- CLIENT SPAWN VEHICLE EVENT
-- ============================================================

RegisterNetEvent(
    "cddad45dd3",
    function(modelName)
        local ped =
            PlayerPedId()

        local coords =
            GetEntityCoords(ped)

        CMG.requestEntitySpawn(
            "buytrucks"
        )

        CMG.spawnVehicle(
            modelName,
            coords.x,
            coords.y,
            coords.z,
            GetEntityHeading(ped),
            true,
            true,
            true
        )
    end
)
