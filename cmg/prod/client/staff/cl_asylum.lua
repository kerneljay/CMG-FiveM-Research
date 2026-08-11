--[[
    LEVEL 1 BEGINNER GUIDE — Asylum
    ====================================

    File: cmg/prod/client/staff/cl_asylum.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: staff/admin gameplay and moderation tools, specifically the Asylum feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 6
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: 283cbfc6f3
      * Local event handlers: none found by static scan
      * Server events sent: b2bd09d434
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
    Staff Asylum Area
    =================

    The asylum is a large restricted area centred at the configured position.

    When an asylumed player enters:
      * their phone is disabled
      * if asylum state is active, the server is notified via b2bd09d434

    While inside:
      * the player's current weapon is forced to unarmed

    If an asylumed player gets outside the radius:
      * they are detached from anything carrying them
      * teleported back inside
      * shown "YOU CANNOT ESCAPE..."
      * the asylum uniform is reapplied

    Event 283cbfc6f3 activates asylum mode and applies the uniform.
]]

local inAsylum = false

local asylum = {
    coords = vector3(
        4032.2041015625,
        4931.5092773438,
        28.732015609741
    ),

    radius = 240.0
}


-- === HELPER FUNCTION: onEnterAsylum() ===
local function onEnterAsylum()
    CMG.setCanOpenPhone(false)

    if inAsylum then
        TriggerServerEvent(
            "b2bd09d434"
        )
    end
end


-- === HELPER FUNCTION: onLeaveAsylum() ===
local function onLeaveAsylum()
    CMG.setCanOpenPhone(true)
end


-- === HELPER FUNCTION: asylumAreaTick() ===
local function asylumAreaTick()
    SetCurrentPedWeapon(
        PlayerPedId(),
        -1569615261,
        true
    )
end


-- === HELPER FUNCTION: CMG.isInAsylum() ===
function CMG.isInAsylum()
    return inAsylum
end


-- === HELPER FUNCTION: applyAsylumUniform() ===
local function applyAsylumUniform()
    local ped = PlayerPedId()

    SetPedComponentVariation(
        ped,
        6,
        7,
        0,
        0
    )

    SetPedComponentVariation(
        ped,
        4,
        20,
        0,
        0
    )

    SetPedComponentVariation(
        ped,
        8,
        15,
        0,
        0
    )

    SetPedComponentVariation(
        ped,
        3,
        0,
        0,
        0
    )

    SetPedComponentVariation(
        ped,
        11,
        22,
        0,
        0
    )

    SetPedPropIndex(
        ped,
        1,
        1,
        0,
        false
    )
end


RegisterNetEvent(
    "283cbfc6f3",
    function()
        inAsylum = true
        applyAsylumUniform()
    end
)


CMG.createArea(
    "asylum",
    asylum.coords,
    asylum.radius,
    20.0,
    onEnterAsylum,
    onLeaveAsylum,
    asylumAreaTick,
    {}
)


-- === HELPER FUNCTION: asylumEscapeCheck() ===
local function asylumEscapeCheck()
    if not inAsylum then
        return
    end

    local distance =
        #(
            asylum.coords
            - CMG.getPlayerCoords()
        )

    if distance <= asylum.radius then
        return
    end

    local ped = PlayerPedId()

    DetachEntity(
        ped,
        true,
        false
    )

    SetEntityCoords(
        ped,
        3959.9475097656,
        4899.6313476562,
        6.5490188598633,
        false,
        false,
        false,
        false
    )

    CMG.announceMpBigMsg(
        "~r~YOU CANNOT ESCAPE...",
        "",
        3000,
        true,
        true
    )

    applyAsylumUniform()
end


CMG.createThreadOnTick(
    asylumEscapeCheck,
    "asylum"
)
