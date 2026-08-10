--[[
    RageUI Sound Helper
    ===================

    RageUI.PlaySound(soundSet, soundName, oneFrameOnly)

    If oneFrameOnly is false/nil, GTA plays the normal frontend sound.
    If it is true, the helper allocates a sound ID, plays it for one frame,
    then stops/releases the ID.
]]

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
