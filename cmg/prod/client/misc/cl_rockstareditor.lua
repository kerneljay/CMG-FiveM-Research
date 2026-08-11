--[[
    LEVEL 1 BEGINNER GUIDE — Rockstareditor
    ============================================

    File: cmg/prod/client/misc/cl_rockstareditor.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Rockstareditor feature.

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
      * Commands: rockstareditor
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
    Rockstar Editor Recording Mode
    ==============================

    /rockstareditor toggles recording-mode controls.

    While enabled:
      Control 288 = start replay recording
      Control 57  = start recording / stop and save
      Control 289 = stop and discard
      Control 178 = leave the network session and open Rockstar Editor

    CMG.isInRecordingMode() lets other scripts see whether this mode is on.
]]

local controls = {
    startReplayRecording = 288,
    startRecording = 57,
    stopAndSave = 57,
    stopAndDiscard = 289,
    openEditor = 178
}

local recordingModeEnabled = false

-- === HELPER FUNCTION: recordingTick() ===
local function recordingTick()
    if not recordingModeEnabled then
        return
    end

    if IsRecording() then
        if IsControlJustPressed(
            1,
            controls.stopAndSave
        ) then
            StopRecordingAndSaveClip()
        end

        if IsControlJustPressed(
            1,
            controls.stopAndDiscard
        ) then
            StopRecordingAndDiscardClip()
        end
    else
        if IsControlJustPressed(
            1,
            controls.startReplayRecording
        ) then
            StartRecording(0)
        end

        if IsControlJustPressed(
            1,
            controls.startRecording
        ) then
            StartRecording(1)
        end
    end

    if IsControlJustPressed(
        1,
        controls.openEditor
    ) then
        NetworkSessionLeaveSinglePlayer()
        ActivateRockstarEditor()
    end
end

CMG.createThreadOnTick(
    recordingTick,
    "Recording"
)

RegisterCommand(
    "rockstareditor",
    function()
        recordingModeEnabled =
            not recordingModeEnabled

        if recordingModeEnabled then
            tCMG.notify(
                "~g~Recording mode is now on (F10 to record)"
            )
        else
            tCMG.notify(
                "~r~Recording mode is now off"
            )
        end
    end,
    false
)

-- === HELPER FUNCTION: CMG.isInRecordingMode() ===
function CMG.isInRecordingMode()
    return recordingModeEnabled
end
