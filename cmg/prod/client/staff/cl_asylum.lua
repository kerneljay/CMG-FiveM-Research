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


local function onEnterAsylum()
    CMG.setCanOpenPhone(false)

    if inAsylum then
        TriggerServerEvent(
            "b2bd09d434"
        )
    end
end


local function onLeaveAsylum()
    CMG.setCanOpenPhone(true)
end


local function asylumAreaTick()
    SetCurrentPedWeapon(
        PlayerPedId(),
        -1569615261,
        true
    )
end


function CMG.isInAsylum()
    return inAsylum
end


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
