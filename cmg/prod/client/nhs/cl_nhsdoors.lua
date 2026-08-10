--[[
    NHS Door Lock System
    ====================

    The SERVER owns the authoritative NHS door list and lock states.

    Event 5ba722ae30(doorStates, doors)
      Supplies:
        doorStates[doorHash] = GTA door-system state
        doors = configured NHS door definitions

    Each door definition uses:
      doorHash
      modelHash
      position
      isAllowlisted

    Permission to see/use the "(E to toggle lock)" prompt:
      * nhs.onduty.permission
      * OR staffed-on client
      * OR the door is allowlisted AND player has nhs.whitelisted

    Door-state meanings used by this client:
      0 / 5 -> displayed as unlocked and DoorSystemSetHoldOpen(true)
      other -> displayed as locked and hold-open false

    Pressing E toggles:
      state 4 -> state 5
      anything else -> state 4

    Server events/callback:
      ef11dd6918(doorHash, state) -> request state change
      04bc7a9ba8                  -> request full state table
      630cfa65f9(hash, state)    -> live state update

    Hash-looking event names are deliberately unchanged.
]]

local doorStates = nil
local doors = nil

-- One large area near the NHS building causes a full state refresh on entry.
local syncAreaCentres = {
    vector3(
        -463.73846435547,
        -335.82943725586,
        51.953220367432
    )
}


-- ============================================================
-- PERMISSION
-- ============================================================

local function canToggleDoor(door)
    if CMG.hasClientPermission(
        "nhs.onduty.permission"
    ) then
        return true
    end

    if CMG.isStaffedOnClient() then
        return true
    end

    return
        door.isAllowlisted
        and CMG.hasClientPermission(
            "nhs.whitelisted"
        )
end


-- ============================================================
-- APPLY ONE GTA DOOR STATE
-- ============================================================

local function applyDoorState(
    doorHash,
    state
)
    DoorSystemSetDoorState(
        doorHash,
        state,
        false,
        false
    )

    DoorSystemSetHoldOpen(
        doorHash,
        state == 0
            or state == 5
    )

    if doorStates
        and doorStates[doorHash]
            ~= nil then

        doorStates[doorHash] =
            state
    end
end


-- ============================================================
-- DRAW / TOGGLE ONE DOOR
-- ============================================================

local function doorAreaTick(door)
    local state =
        doorStates[
            door.doorHash
        ]

    local canToggle =
        canToggleDoor(door)

    local promptSuffix =
        canToggle
        and " (E to toggle lock)"
        or ""

    if state == 5
        or state == 0 then

        CMG.DrawText3D(
            door.position,
            "🔓" .. promptSuffix,
            0.45,
            4
        )
    else
        CMG.DrawText3D(
            door.position,
            "🔒" .. promptSuffix,
            0.45,
            4
        )
    end

    if not canToggle
        or not IsControlJustPressed(
            0,
            38
        ) then
        return
    end

    local animDict =
        "anim@heists@keycard@"

    CMG.loadAnimDict(
        animDict
    )

    Citizen.CreateThread(function()
        TaskPlayAnim(
            PlayerPedId(),
            animDict,
            "exit",
            5.0,
            1.0,
            -1,
            48,
            0,
            false,
            false,
            false
        )

        Wait(1200)

        ClearPedTasks(
            PlayerPedId()
        )

        RemoveAnimDict(
            animDict
        )
    end)

    local wantedState =
        state == 4
        and 5
        or 4

    TriggerServerEvent(
        "ef11dd6918",
        door.doorHash,
        wantedState
    )
end


-- ============================================================
-- SERVER SENDS INITIAL DATA
-- ============================================================

RegisterNetEvent(
    "5ba722ae30",
    function(serverDoorStates, serverDoors)
        doorStates =
            serverDoorStates

        doors =
            serverDoors
    end
)


-- ============================================================
-- FIRST-SPAWN SETUP
-- ============================================================

AddEventHandler(
    "CMG:onClientSpawn",
    function(_, firstSpawn)
        if not firstSpawn then
            return
        end

        while doorStates == nil
            or doors == nil do
            Citizen.Wait(1000)
        end

        -- One close-range area for every actual door.
        for _, door
            in ipairs(doors) do

            CMG.createArea(
                "openNhsDoor_"
                    .. tostring(
                        door.doorHash
                    ),
                door.position,
                1.5,
                5,
                function()
                end,
                function()
                end,
                doorAreaTick,
                {
                    doorHash =
                        door.doorHash,
                    position =
                        door.position,
                    isAllowlisted =
                        door.isAllowlisted
                }
            )
        end

        -- Register each configured door with GTA's Door System.
        for _, door
            in ipairs(doors) do

            AddDoorToSystem(
                door.doorHash,
                door.modelHash,
                door.position.x,
                door.position.y,
                door.position.z,
                false,
                false,
                false
            )

            applyDoorState(
                door.doorHash,
                doorStates[
                    door.doorHash
                ]
            )
        end

        local function refreshAllDoorStates()
            doorStates =
                CMG.TriggerServerCallback(
                    "04bc7a9ba8"
                )

            for doorHash, state
                in pairs(doorStates) do

                DoorSystemSetDoorState(
                    doorHash,
                    state,
                    false,
                    false
                )

                DoorSystemSetHoldOpen(
                    doorHash,
                    state == 0
                        or state == 5
                )
            end
        end

        for _, centre
            in ipairs(
                syncAreaCentres
            ) do

            CMG.createArea(
                "nhsSyncDoorsOnAreaEnter",
                centre,
                250,
                250,
                refreshAllDoorStates,
                function()
                end,
                function()
                end,
                {}
            )
        end
    end
)


-- ============================================================
-- LIVE DOOR UPDATE
-- ============================================================

RegisterNetEvent(
    "630cfa65f9",
    function(doorHash, state)
        applyDoorState(
            doorHash,
            state
        )
    end
)
