--[[
    Staff Clear-Area Helpers
    ========================

    The server can trigger two cleanup passes.

    Event 38e29030b0
      Deletes empty, client-controlled vehicles except a small protected model
      list and model -291165322.

    Event e2ed727de4
      Deletes badly damaged empty vehicles and dead animal peds.

    The local player's current vehicle is never deleted.
]]

local protectedVehicleModels = {
    [-1352468814] = "trflat",
    [-877478386] = "TRAILERS",
    [-2140210194] = "DockTrailer",
    [1050873897] = "heli1",
    [1850558926] = "militaire1",
    [-1461353326] = "bvttanker",
    [2091594960] = "tr4"
}

local function canDeleteEmptyVehicle(vehicle)
    if not NetworkHasControlOfEntity(
        vehicle
    ) then
        return false
    end

    if GetPedInVehicleSeat(
        vehicle,
        -1
    ) ~= 0 then
        return false
    end

    local playerVehicle =
        GetVehiclePedIsIn(
            CMG.getPlayerPed(),
            true
        )

    return vehicle ~= playerVehicle
end

RegisterNetEvent(
    "38e29030b0",
    function()
        for _, vehicle
            in pairs(
                CMG.getAllVehicles()
            ) do

            if canDeleteEmptyVehicle(
                vehicle
            ) then
                local model =
                    GetEntityModel(vehicle)

                if protectedVehicleModels[model] == nil
                    and model ~= -291165322 then

                    DeleteEntity(vehicle)
                end
            end
        end
    end
)

RegisterNetEvent(
    "e2ed727de4",
    function()
        for _, vehicle
            in pairs(
                CMG.getAllVehicles()
            ) do

            if canDeleteEmptyVehicle(
                vehicle
            )
                and GetVehicleEngineHealth(
                    vehicle
                ) <= 200.0 then

                local model =
                    GetEntityModel(vehicle)

                -- Preserve the original check exactly. Because missing keys
                -- return nil rather than false, this only deletes models
                -- explicitly stored as false if such entries are added.
                if protectedVehicleModels[model] == false then
                    DeleteEntity(vehicle)
                end
            end
        end

        for _, ped
            in pairs(
                GetGamePool("CPed")
            ) do

            if NetworkHasControlOfEntity(ped)
                and GetPedType(ped) == 28
                and IsPedDeadOrDying(
                    ped,
                    true
                ) then

                DeletePed(ped)
            end
        end
    end
)
