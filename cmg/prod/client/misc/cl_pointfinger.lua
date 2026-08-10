--[[
    Finger Pointing
    ===============

    Press B to toggle GTA's networked finger-pointing animation.

    Requirements:
      * player must be on foot
      * player must be unarmed
      * SHIFT must not be held
      * player must not be inside an event

    While pointing, this file continuously sends camera pitch/heading signals
    into Rockstar's "task_mp_pointing" movement task so the hand follows the
    direction the player is looking.

    A short shape test also tells the animation whether the hand is blocked by
    a nearby wall/object.
]]

local pointing = false
local POINT_ANIM_DICT = "anim@mp_point"


local function startPointing()
    local ped =
        CMG.getPlayerPed()

    CMG.setWeapon(
        ped,
        -1569615261,
        true
    )

    CMG.loadAnimDict(
        POINT_ANIM_DICT
    )

    SetPedCurrentWeaponVisible(
        ped,
        false,
        true,
        true,
        true
    )

    SetPedConfigFlag(
        ped,
        36,
        true
    )

    TaskMoveNetworkByName(
        ped,
        "task_mp_pointing",
        0.5,
        false,
        POINT_ANIM_DICT,
        24
    )

    RemoveAnimDict(
        POINT_ANIM_DICT
    )
end


local function stopPointing()
    local ped =
        CMG.getPlayerPed()

    RequestTaskMoveNetworkStateTransition(
        ped,
        "Stop"
    )

    if not IsPedInjured(ped) then
        ClearPedSecondaryTask(ped)
    end

    if not IsPedInAnyVehicle(
        ped,
        true
    ) then
        SetPedCurrentWeaponVisible(
            ped,
            true,
            true,
            true,
            true
        )
    end

    SetPedConfigFlag(
        ped,
        36,
        false
    )

    ClearPedSecondaryTask(ped)
end


local function togglePointing()
    local ped =
        CMG.getPlayerPed()

    local hasWeapon,
          weaponHash =
        GetCurrentPedWeapon(
            ped,
            -1569615261,
            false
        )

    -- The original decompile only lets pointing start while the ped is
    -- unarmed/on foot.
    local canStart =
        IsPedOnFoot(ped)
        and not hasWeapon
        and weaponHash
            == -1569615261

    if pointing then
        pointing = false
        stopPointing()
        return
    end

    if canStart
        and not IsDisabledControlPressed(
            0,
            21
        )
        and not CMG.inEvent() then

        pointing = true
        startPointing()
    end
end


RegisterCommand(
    "point",
    togglePointing,
    false
)

RegisterKeyMapping(
    "point",
    "Point Finger",
    "keyboard",
    "B"
)


local function pointingTick()
    if not pointing then
        return
    end

    if CMG.isNewPlayer() then
        drawNativeNotification(
            "Press ~INPUT_3090B280~ to toggle the finger pointing."
        )
    end

    local ped =
        CMG.getPlayerPed()

    -- Convert camera pitch from GTA's roughly -70..42 range into 0..1.
    local pitch =
        GetGameplayCamRelativePitch()

    pitch =
        math.min(
            42.0,
            math.max(
                -70.0,
                pitch
            )
        )

    local normalisedPitch =
        (pitch + 70.0)
        / 112.0

    -- Convert camera heading from -180..180 into 0..1.
    local heading =
        GetGameplayCamRelativeHeading()

    heading =
        math.min(
            180.0,
            math.max(
                -180.0,
                heading
            )
        )

    local normalisedHeading =
        (heading + 180.0)
        / 360.0

    local headingRadians =
        math.rad(
            heading
        )

    local cosine =
        math.cos(
            headingRadians
        )

    local sine =
        math.sin(
            headingRadians
        )

    local distance =
        0.4
            * normalisedHeading
            + 0.3

    local startCoords =
        GetOffsetFromEntityInWorldCoords(
            ped,
            cosine * -0.2
                - sine * distance,
            sine * -0.2
                + cosine * distance,
            0.6
        )

    local endCoords =
        startCoords
        + vector3(
            0.0,
            0.0,
            0.4
        )

    local ray =
        StartShapeTestCapsule(
            startCoords.x,
            startCoords.y,
            startCoords.z - 0.2,
            endCoords.x,
            endCoords.y,
            endCoords.z - 0.2,
            0.4,
            95,
            ped,
            7
        )

    local _, blocked =
        GetShapeTestResult(ray)

    SetTaskMoveNetworkSignalFloat(
        ped,
        "Pitch",
        normalisedPitch
    )

    SetTaskMoveNetworkSignalFloat(
        ped,
        "Heading",
        1.0
            - normalisedHeading
    )

    SetTaskMoveNetworkSignalBool(
        ped,
        "isBlocked",
        blocked
    )

    SetTaskMoveNetworkSignalBool(
        ped,
        "isFirstPerson",
        GetCamViewModeForContext(
            GetCamActiveViewModeContext()
        ) == 4
    )
end


CMG.createThreadOnTick(
    pointingTick,
    "Point Finger"
)
