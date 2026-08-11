--[[
    LEVEL 1 BEGINNER GUIDE — Poledancing
    =========================================

    File: cmg/prod/client/misc/cl_poledancing.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Poledancing feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 1
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: CMG:onClientSpawn
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: none found by static scan

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
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


-- === HELPER FUNCTION: startPoleDance(location) ===
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
