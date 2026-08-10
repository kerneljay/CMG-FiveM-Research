--[[
    Nether / Admin-Island Teleporters
    =================================

    There are four teleport entrances on the Admin Island. Each sends the
    player to one of four normal-world locations:

      Admin Island -> VIP Island
      Admin Island -> Sandy
      Admin Island -> Paleto
      Admin Island -> Legion

    The destination-only entries do NOT create their own return teleporter.

    Flow when a teleporter is entered:
      * optional permission is checked
      * combat timer must be zero
      * purple screen effect + sound + particle effect play
      * player fades out
      * player is moved to destination
      * player fades back in

    IMPORTANT:
      The decompiled destination entries do not contain an `h`/heading field,
      even though the old function attempted SetEntityHeading(target.h).
      This readable version only applies a heading when one actually exists,
      preventing a nil heading from breaking the teleport.
]]

local teleportLocations = {
    {
        id = 1,
        position =
            vector3(
                -3679.8432617188,
                -3487.1181640625,
                11.354908943176
            ),
        name =
            "Admin Island 2 Legion ",
        destination = 8
    },

    {
        id = 2,
        position =
            vector3(
                -3675.1618652344,
                -3491.994140625,
                11.357361793518
            ),
        name =
            "Admin Island 2 Paleto",
        destination = 7
    },

    {
        id = 3,
        position =
            vector3(
                -3670.7426757812,
                -3543.9267578125,
                11.363542556763
            ),
        name =
            "Admin Island 2 VIP Island",
        destination = 5
    },

    {
        id = 4,
        position =
            vector3(
                -3739.6174316406,
                -3476.6198730469,
                11.3069190979
            ),
        name =
            "Admin Island 2 VIP Sandy",
        destination = 6
    },

    {
        id = 5,
        position =
            vector3(
                -2172.5078125,
                5142.3876953125,
                2.8200016021729
            ),
        name = "VIP Island"
    },

    {
        id = 6,
        position =
            vector3(
                1842.3981933594,
                3667.9018554688,
                33.680000305176
            ),
        name = "Sandy"
    },

    {
        id = 7,
        position =
            vector3(
                131.46571350098,
                6422.3735351562,
                31.338863372803
            ),
        name = "Paleto"
    },

    {
        id = 8,
        position =
            vector3(
                167.32621765137,
                -1073.3220214844,
                29.192348480225
            ),
        name = "Legion"
    }
}


-- ============================================================
-- TELEPORT EFFECT
-- ============================================================

local function teleportPlayer(destination)
    if CMG.getPlayerCombatTimer() > 0 then
        notify(
            "~r~You can not teleport whilst you have a combat timer."
        )
        return
    end

    AnimpostfxPlay(
        "ArenaWheelPurple",
        5000,
        true
    )

    PlaySoundFrontend(
        -1,
        "FocusIn",
        "HintCamSounds",
        true
    )

    local ptfxDict =
        "scr_tplaces"

    CMG.loadPtfx(ptfxDict)

    UseParticleFxAsset(
        ptfxDict
    )

    local currentCoords =
        CMG.getPlayerCoords()

    StartParticleFxNonLoopedAtCoord(
        "scr_tplaces_team_swap",
        currentCoords.x,
        currentCoords.y,
        currentCoords.z,
        0.0,
        0.0,
        0.0,
        1.0,
        false,
        false,
        false
    )

    RemoveNamedPtfxAsset(
        ptfxDict
    )

    local playerPed =
        CMG.getPlayerPed()

    NetworkFadeOutEntity(
        playerPed,
        true,
        false
    )

    DoScreenFadeOut(1000)
    Citizen.Wait(1000)

    SetEntityCoords(
        playerPed,
        destination.position.x,
        destination.position.y,
        destination.position.z,
        true,
        false,
        false,
        true
    )

    -- See header: the original destination rows contain no heading.
    if destination.h ~= nil then
        SetEntityHeading(
            playerPed,
            destination.h
        )
    end

    NetworkFadeInEntity(
        playerPed,
        false
    )

    Citizen.Wait(1000)

    DoScreenFadeIn(1000)

    AnimpostfxStopAll()
end


local function useTeleporter(areaData)
    local destination =
        areaData[1]

    if destination.permission
        and not CMG.hasClientPermission(
            destination.permission
        ) then
        return
    end

    teleportPlayer(destination)
end


-- ============================================================
-- CREATE ONLY THE FOUR ENTRANCE AREAS
-- ============================================================

Citizen.CreateThread(function()
    for _, location
        in pairs(teleportLocations) do

        if location.destination then
            CMG.createArea(
                "nether_teleporter_"
                    .. tostring(
                        location.id
                    ),
                location.position,
                1.0,
                10.0,
                useTeleporter,
                function()
                end,
                function()
                end,
                {
                    teleportLocations[
                        location.destination
                    ]
                }
            )
        end
    end
end)
