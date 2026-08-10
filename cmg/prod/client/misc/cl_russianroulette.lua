--[[
    Russian Roulette Command
    ========================

    /russianroulette works only when the player owns weapon hash 2048965069
    and has at least one round for it.

    Flow:
      * equip the revolver
      * play a global roulette sound/event at the player's position
      * roll a random number from 1 to 6
      * play a reload/spin animation
      * play the suicide-style pistol animation
      * roll == 1: fire the gun effect and kill the local player
      * otherwise: play the empty-gun sound globally

    This is intentionally a game mechanic; the 1-in-6 chance is exactly what
    the original client used.
]]

local REVOLVER_HASH = 2048965069
local RELOAD_ANIM_DICT =
    "anim@weapons@first_person@aim_rng@general@pistol@revolver@str"

math.randomseed(
    GetGameTimer()
)


local function loadAnimationDictionary(
    animDict
)
    if HasAnimDictLoaded(animDict) then
        return
    end

    RequestAnimDict(animDict)

    while not HasAnimDictLoaded(
        animDict
    ) do
        Wait(1)
    end
end


RegisterCommand(
    "russianroulette",
    function()
        local playerPed =
            CMG.getPlayerPed()

        if not HasPedGotWeapon(
            playerPed,
            REVOLVER_HASH,
            false
        ) then
            return
        end

        if GetAmmoInPedWeapon(
            playerPed,
            REVOLVER_HASH
        ) <= 0 then
            return
        end

        CMG.setWeapon(
            playerPed,
            REVOLVER_HASH,
            true
        )

        local coords =
            GetEntityCoords(
                playerPed
            )

        TriggerServerEvent(
            "playRussianRouletteGlobally",
            coords
        )

        local chamberRoll =
            math.random(1, 6)

        loadAnimationDictionary(
            RELOAD_ANIM_DICT
        )

        TaskPlayAnim(
            playerPed,
            RELOAD_ANIM_DICT,
            "reload_aim",
            8.0,
            8.0,
            -1,
            2,
            1.0,
            false,
            false,
            false
        )

        RemoveAnimDict(
            RELOAD_ANIM_DICT
        )

        Wait(4500)

        loadAnimationDictionary(
            "mp_suicide"
        )

        if chamberRoll == 1 then
            TaskPlayAnim(
                playerPed,
                "mp_suicide",
                "pistol",
                4.0,
                0.0,
                -1,
                0,
                0.1,
                false,
                false,
                false
            )

            Wait(800)

            SetPedShootsAtCoord(
                playerPed,
                0.0,
                0.0,
                0.0,
                false
            )

            SetEntityHealth(
                playerPed,
                0
            )
        else
            TaskPlayAnim(
                playerPed,
                "mp_suicide",
                "pistol",
                2.0,
                100.0,
                500,
                0,
                0.1,
                false,
                false,
                false
            )

            Wait(500)

            TriggerServerEvent(
                "playEmptyGunGlobally",
                coords
            )
        end

        RemoveAnimDict(
            "mp_suicide"
        )

        ClearPedSecondaryTask(
            playerPed
        )
    end,
    false
)
