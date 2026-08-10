--[[
    Strip-Club Pole Dancing
    =======================

    Three configured poles are turned into interaction areas after the
    player's first spawn.

    When the player stands at a pole:
      * "[E] Poledance" is drawn in the world.
      * E starts that pole's GTA synchronised dancing scene.
      * Leaving the area lets the interaction be started again.

    "number" chooses which of Rockstar's pole-dance animation variants to use.
]]

local poleDanceConfig = {
    enabled = true,

    locations = {
        {
            coords = vector3(
                88.950886535645,
                -1314.8494140625,
                21.245265960693
            ),
            number = "3"
        },

        {
            coords = vector3(
                104.18,
                -1293.94,
                29.26
            ),
            number = "1"
        },

        {
            coords = vector3(
                102.24,
                -1290.54,
                29.26
            ),
            number = "2"
        }
    }
}

local labels = {
    Pole_Dance =
        "[~r~E~w~] Poledance"
}

local dancing = false


local function startPoleDance(location)
    local number =
        location.number

    local animDict =
        "mini@strip_club@pole_dance@pole_dance"
        .. number

    local animName =
        "pd_dance_0"
        .. number

    CMG.loadAnimDict(
        animDict
    )

    local scene =
        NetworkCreateSynchronisedScene(
            location.coords.x,
            location.coords.y,
            location.coords.z,
            0.0,
            0.0,
            0.0,
            2,
            false,
            false,
            1065353216,
            0,
            1.3
        )

    NetworkAddPedToSynchronisedScene(
        CMG.getPlayerPed(),
        scene,
        animDict,
        animName,
        1.5,
        -4.0,
        1,
        1,
        1148846080,
        0
    )

    NetworkStartSynchronisedScene(
        scene
    )

    -- The original file removed the base dictionary name rather than the
    -- numbered dictionary it loaded. Preserve that exact call.
    RemoveAnimDict(
        "mini@strip_club@pole_dance@pole_dance"
    )

    dancing = true
end


AddEventHandler(
    "CMG:onClientSpawn",
    function(_, firstSpawn)
        if not firstSpawn
            or not poleDanceConfig.enabled then
            return
        end

        for poleId, location
            in pairs(
                poleDanceConfig.locations
            ) do

            CMG.createArea(
                "poledance_"
                    .. poleId,
                location.coords,
                2.25,
                6,

                function()
                    -- No special enter action.
                end,

                function()
                    dancing = false
                end,

                function(areaData)
                    if dancing then
                        return
                    end

                    local pole =
                        poleDanceConfig
                            .locations[
                                areaData.poleId
                            ]

                    if not pole then
                        return
                    end

                    CMG.DrawText3D(
                        pole.coords,
                        labels.Pole_Dance,
                        0.35
                    )

                    if IsControlJustReleased(
                        0,
                        51
                    ) then
                        startPoleDance(
                            pole
                        )
                    end
                end,

                {
                    poleId = poleId
                }
            )
        end
    end
)
