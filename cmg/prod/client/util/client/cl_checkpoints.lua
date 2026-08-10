--[[
    Checkpoint Manager
    ==================

    CMG.createCheckpoint(...) creates THREE linked things:
      * GTA checkpoint
      * map blip
      * CMG interaction area around the checkpoint

    It stores them under a caller-supplied group name so they can later be
    removed with CMG.deleteCheckpoint(groupName, checkpointKey).

    The final callback is called while the player is in the checkpoint area:
      callback(checkpointKey, checkpointHandle)
]]

local checkpointGroups = {}


function CMG.createCheckpoint(
    groupName,
    checkpointType,
    x,
    y,
    z,
    nextX,
    nextY,
    nextZ,
    radius,
    red,
    green,
    blue,
    alpha,
    reserved,
    callback
)
    checkpointGroups[groupName] =
        checkpointGroups[groupName]
        or {}

    local checkpointKey =
        "checkpoint_"
        .. CMG.generateUUID(
            "checkpoints",
            7,
            "alphanumeric"
        )

    local checkpointHandle =
        CreateCheckpoint(
            checkpointType,
            x,
            y,
            z,
            nextX,
            nextY,
            nextZ,
            radius,
            red,
            green,
            blue,
            alpha,
            reserved
        )

    -- Secondary checkpoint colour from the original helper.
    SetCheckpointRgba2(
        checkpointHandle,
        0,
        204,
        204,
        150
    )

    local blipHandle =
        tCMG.addBlip(
            x,
            y,
            z,
            570,
            5
        )

    checkpointGroups[groupName][
        checkpointKey
    ] = {
        checkpointId =
            checkpointHandle,

        blipId =
            blipHandle
    }

    CMG.useIncreasedAreaRefreshRate(
        true
    )

    CMG.createArea(
        checkpointKey,
        vector3(x, y, z),
        radius * 1.25,
        10,

        function()
        end,

        function()
        end,

        function()
            callback(
                checkpointKey,
                checkpointHandle
            )
        end,

        {}
    )

    return
        checkpointHandle,
        checkpointKey
end


function CMG.deleteCheckpoint(
    groupName,
    checkpointKey
)
    local group =
        checkpointGroups[groupName]

    if not group then
        print(
            tostring(groupName)
            .. " is not valid."
        )
        return
    end

    local data =
        group[checkpointKey]

    if data then
        if data.checkpointId then
            DeleteCheckpoint(
                data.checkpointId
            )
        end

        if data.blipId then
            tCMG.removeBlip(
                data.blipId
            )
        end
    end

    tCMG.removeArea(
        checkpointKey
    )

    group[checkpointKey] = nil

    if table.count(
        checkpointGroups
    ) == 0 then
        CMG.useIncreasedAreaRefreshRate(
            false
        )
    end
end


-- Developer helper: visually preview GTA checkpoint types 1..100.
CMG.registerCommand(
    "previewcheckpointstypes",
    function()
        for checkpointType = 1, 100 do
            local handle =
                CreateCheckpoint(
                    checkpointType,
                    475.82565307617
                        + checkpointType * 25,
                    5562.2729492188,
                    794.68963623047,
                    475.82565307617,
                    5562.2729492188,
                    794.68963623047,
                    10.0,
                    255,
                    255,
                    0,
                    127,
                    0
                )

            print(
                "made",
                checkpointType,
                handle
            )

            Wait(250)
        end
    end,
    false
)
