--[[
    Dumpster Searching
    ==================

    Config: cfg/cfg_dumpster

    Every configured dumpster gets an interaction area.

    A player can search when:
      * their current job is NOT "Garbage"
      * server tunable "dumpster_enabled" is true
      * another dumpster search is not already in progress
      * they are on foot

    Press E to request a search from the server.

    Event 222d547efd(searchStarted)
      If searchStarted is true, play the dumpster-search animation and a
      five-second circular progress bar. Either way, unlock the local busy flag
      afterwards.

    Server event hashes are deliberately unchanged.
]]

local dumpsterConfig =
    CMG.loadModule(
        "cfg/cfg_dumpster"
    )

local searchInProgress = false


local function dumpsterTick(areaData)
    if CMG.getClientJob()
        == "Garbage" then
        return
    end

    if not CMG.getTunableValue(
        "dumpster_enabled"
    ) then
        return
    end

    if searchInProgress then
        return
    end

    local vehicle =
        CMG.getPlayerVehicle()

    if vehicle ~= 0 then
        return
    end

    drawNativeNotification(
        "Press ~INPUT_CONTEXT~ to search the dumpster"
    )

    if IsControlJustPressed(
        0,
        51
    ) then
        TriggerServerEvent(
            "211845115e",
            areaData.index
        )

        searchInProgress = true
    end
end


for index, dumpster
    in pairs(
        dumpsterConfig.objects
    ) do

    -- dumpster[2] is the configured world position.
    CMG.createArea(
        "dumpster_"
            .. tostring(index),
        dumpster[2],
        2.0,
        5.0,
        function()
        end,
        function()
        end,
        dumpsterTick,
        {
            index = index
        }
    )
end


RegisterNetEvent(
    "222d547efd",
    function(searchStarted)
        if searchStarted then
            tCMG.setCanAnim(false)

            local animDict =
                "amb@prop_human_bum_bin@base"

            CMG.loadAnimDict(
                animDict
            )

            TaskPlayAnim(
                PlayerPedId(),
                animDict,
                "base",
                8.0,
                8.0,
                5000,
                1,
                1,
                false,
                false,
                false
            )

            RemoveAnimDict(
                animDict
            )

            CMG.startCircularProgressBar(
                "",
                5000,
                nil,
                function()
                end
            )

            tCMG.setCanAnim(true)
        end

        searchInProgress = false
    end
)
