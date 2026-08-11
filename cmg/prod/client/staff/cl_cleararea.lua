--[[
    LEVEL 1 BEGINNER GUIDE — Cleararea
    =======================================

    File: cmg/prod/client/staff/cl_cleararea.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: staff/admin gameplay and moderation tools, specifically the Cleararea feature.

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
      * Incoming network events: 38e29030b0, e2ed727de4
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

-- === HELPER FUNCTION: canDeleteEmptyVehicle(vehicle) ===
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
