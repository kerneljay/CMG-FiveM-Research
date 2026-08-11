--[[
    LEVEL 1 BEGINNER GUIDE — Vehiclemenu
    =========================================

    File: cmg/prod/client/misc/cl_vehiclemenu.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Vehiclemenu feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 2
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
    Vehicle Seat-Changing Helper
    ============================

    CMG.changeSeat(seatIndex) moves the player to another free seat after a
    two-second progress bar.

    It is blocked when:
      * another seat change is already running
      * the player is not in a vehicle
      * the requested seat is occupied
      * the player has a combat timer
      * the player is handcuffed
      * the current vehicle is moving faster than 0.1 game speed units
]]

local changingSeat = false

-- === HELPER FUNCTION: canChangeVehicleState(actionDescription) ===
local function canChangeVehicleState(actionDescription)
    if CMG.getPlayerCombatTimer() > 0 then
        notify(
            "Cannot "
            .. actionDescription
            .. " whilst you havea combat timer"
        )
        return false
    end

    local vehicle =
        CMG.getPlayerVehicle()

    if vehicle == 0 then
        return false
    end

    if CMG.isHandcuffed() then
        return false
    end

    return
        GetEntitySpeed(vehicle)
        < 0.1
end

-- === HELPER FUNCTION: CMG.changeSeat(seatIndex) ===
function CMG.changeSeat(seatIndex)
    if changingSeat then
        return
    end

    changingSeat = true

    local playerPed =
        PlayerPedId()

    if not IsPedSittingInAnyVehicle(
        playerPed
    ) then
        notify(
            "You are not in a vehicle!"
        )

        changingSeat = false
        return
    end

    local vehicle =
        GetVehiclePedIsIn(
            playerPed,
            false
        )

    if not IsVehicleSeatFree(
        vehicle,
        seatIndex
    ) then
        notify(
            "That seat is not free!"
        )

        changingSeat = false
        return
    end

    if not canChangeVehicleState(
        "change seat"
    ) then
        changingSeat = false
        return
    end

    CMG.startCircularProgressBar(
        "",
        2000,
        nil,
        function()
        end
    )

    -- Make sure the player is still in the same vehicle after the delay.
    if CMG.getPlayerVehicle()
        == vehicle then

        SetPedIntoVehicle(
            PlayerPedId(),
            vehicle,
            seatIndex
        )
    end

    changingSeat = false
end
