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
