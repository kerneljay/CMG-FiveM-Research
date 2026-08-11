--[[
    LEVEL 1 BEGINNER GUIDE — Audio
    ===================================

    File: cmg/prod/client/rageui/components/Audio.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: RageUI menu framework/library code.

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
      * Background threads: 1
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
    RageUI Sound Helper
    ===================

    RageUI.PlaySound(soundSet, soundName, oneFrameOnly)

    If oneFrameOnly is false/nil, GTA plays the normal frontend sound.
    If it is true, the helper allocates a sound ID, plays it for one frame,
    then stops/releases the ID.
]]

-- === HELPER FUNCTION: RageUI.PlaySound(soundSet, soundName, oneFrameOnly) ===
function RageUI.PlaySound(soundSet, soundName, oneFrameOnly)
    if not oneFrameOnly then
        PlaySoundFrontend(
            -1,
            soundName,
            soundSet,
            true
        )
        return
    end

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(function()
        local soundId = GetSoundId()

        PlaySoundFrontend(
            soundId,
            soundName,
            soundSet,
            true
        )

        Citizen.Wait(0)

        StopSound(soundId)
        ReleaseSoundId(soundId)
    end)
end
