--[[
    LEVEL 1 BEGINNER GUIDE — Gameflags
    =======================================

    File: cmg/prod/client/util/shared/gameflags.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: shared utility/framework helper code.

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
    GTA Animation Flags
    ===================

    GTA's TaskPlayAnim uses a bit-field called an animation stateFlag.

    CMG.getFlags("AF_LOOPING", "AF_UPPERBODY")
    adds the numeric values together and returns the combined stateFlag.
]]

local animationFlags = {
    AF_DEFAULT = 0,
    AF_LOOPING = 1,
    AF_HOLD_LAST_FRAME = 2,
    AF_REPOSITION_WHEN_FINISHED = 4,
    AF_NOT_INTERRUPTABLE = 8,
    AF_UPPERBODY = 16,
    AF_SECONDARY = 32,
    AF_REORIENT_WHEN_FINISHED = 64,
    AF_ABORT_ON_PED_MOVEMENT = 128,
    AF_ADDITIVE = 256,
    AF_TURN_OFF_COLLISION = 512,
    AF_OVERRIDE_PHYSICS = 1024,
    AF_IGNORE_GRAVITY = 2048,
    AF_EXTRACT_INITIAL_OFFSET = 4096,
    AF_EXIT_AFTER_INTERRUPTED = 8192,
    AF_TAG_SYNC_IN = 16384,
    AF_TAG_SYNC_OUT = 32768,
    AF_TAG_SYNC_CONTINUOUS = 65536,
    AF_FORCE_START = 131072,
    AF_USE_KINEMATIC_PHYSICS = 262144,
    AF_USE_MOVER_EXTRACTION = 524288,
    AF_HIDE_WEAPON = 1048576,
    AF_ENDS_IN_DEAD_POSE = 2097152,
    AF_ACTIVATE_RAGDOLL_ON_COLLISION = 4194304,
    AF_DONT_EXIT_ON_DEATH = 8388608,
    AF_ABORT_ON_WEAPON_DAMAGE = 16777216,
    AF_DISABLE_FORCED_PHYSICS_UPDATE = 33554432,
    AF_PROCESS_ATTACHMENTS_ON_START = 67108864,
    AF_EXPAND_PED_CAPSULE_FROM_SKELETON = 134217728,
    AF_USE_ALTERNATIVE_FP_ANIM = 268435456,
    AF_BLENDOUT_WRT_LAST_FRAME = 536870912,
    AF_USE_FULL_BLENDING = 1073741824
}

-- === HELPER FUNCTION: CMG.getFlags(...) ===
function CMG.getFlags(...)
    local combinedFlags = 0

    for _, flagName in pairs({...}) do
        combinedFlags =
            combinedFlags
            + animationFlags[flagName]
    end

    return combinedFlags
end
