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

function CMG.isInRecordingMode()
    return recordingModeEnabled
end
