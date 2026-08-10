--[[
    Random Train Control
    ====================

    Event 63a81df20f
      Enables random trains on GTA train tracks 0 and 3.

    Event cb633fe9c7
      Disables those tracks again and changes the spawn frequency.

    The event hashes are kept unchanged because the server probably triggers
    them directly.
]]

RegisterNetEvent("63a81df20f", function()
    SwitchTrainTrack(0, true)
    SwitchTrainTrack(3, true)

    -- Ten minutes.
    SetTrainTrackSpawnFrequency(
        0,
        600000
    )

    SetRandomTrains(true)

    print("Starting trains")
end)

RegisterNetEvent("cb633fe9c7", function()
    SwitchTrainTrack(0, false)
    SwitchTrainTrack(3, false)

    -- Two minutes.
    SetTrainTrackSpawnFrequency(
        0,
        120000
    )

    print("Disabling trains")
end)
