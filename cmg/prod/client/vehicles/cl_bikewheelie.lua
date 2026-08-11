--[[
    LEVEL 1 BEGINNER GUIDE — Bikewheelie
    =========================================

    File: cmg/prod/client/vehicles/cl_bikewheelie.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: vehicle gameplay and vehicle systems, specifically the Bikewheelie feature.

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
      * Commands: +bikewheelie, -bikewheelie
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
    Bike Wheelie Animation Binds
    ============================

    Hold LEFT SHIFT to enable the wheelie-animation controls.

    Requirements:
      * the local player must be the vehicle driver
      * vehicle model must be a bicycle or motorbike
      * speed must be at least 10 km/h

    While the bind is held, releasing the arrow keys plays different
    "rcmextreme2atv" bike trick/wheelie animations:
      Up    -> idle_e
      Down  -> idle_d
      Left  -> idle_b
      Right -> idle_c

    The decompiler's original goto could leave a boolean in the speed variable
    for non-bike vehicles. This readable version restores the clear intended
    behaviour: simply return when the current vehicle is not a bike/bicycle.
]]

local wheelieBindHeld = false

local ANIM_DICT =
    "rcmextreme2atv"


local function playWheelieAnimation(
    animName
)
    CMG.loadAnimDict(
        ANIM_DICT
    )

    TaskPlayAnim(
        PlayerPedId(),
        ANIM_DICT,
        animName,
        -1,
        -1,
        -1,
        32,
        0,
        false,
        false,
        false
    )

    RemoveAnimDict(
        ANIM_DICT
    )
end


-- === HELPER FUNCTION: bikeWheelieTick() ===
local function bikeWheelieTick()
    if not wheelieBindHeld then
        return
    end

    local vehicle, isDriver =
        CMG.getPlayerVehicle()

    if vehicle == 0
        or not isDriver then
        return
    end

    local modelHash =
        GetEntityModel(vehicle)

    if not IsThisModelABicycle(
        modelHash
    )
        and not IsThisModelABike(
            modelHash
        ) then
        return
    end

    local speedKmh =
        GetEntitySpeed(vehicle)
        * 3.6

    if speedKmh < 10.0 then
        return
    end

    if IsControlJustReleased(
        0,
        172
    ) then
        playWheelieAnimation(
            "idle_e"
        )
    end

    if IsControlJustReleased(
        0,
        173
    ) then
        playWheelieAnimation(
            "idle_d"
        )
    end

    if IsControlJustReleased(
        0,
        174
    ) then
        playWheelieAnimation(
            "idle_b"
        )
    end

    if IsControlJustReleased(
        0,
        175
    ) then
        playWheelieAnimation(
            "idle_c"
        )
    end
end


CMG.createThreadOnTick(
    bikeWheelieTick,
    "Bike Wheelie"
)


CMG.registerCommand(
    "+bikewheelie",
    function()
        wheelieBindHeld = true
    end,
    false
)


CMG.registerCommand(
    "-bikewheelie",
    function()
        wheelieBindHeld = false
    end,
    false
)


RegisterKeyMapping(
    "+bikewheelie",
    "Key to hold to perform wheelie binds",
    "KEYBOARD",
    "LSHIFT"
)
