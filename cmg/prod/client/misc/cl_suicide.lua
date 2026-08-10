--[[
    /suicide Command
    ================

    The command is allowed only when:
      * the player is not in a greenzone
      * normal animations are currently allowed
      * the server/framework callback approves suicide

    KillYourself()
      Finds the first owned Pistol-class weapon with ammunition, equips it,
      plays GTA's "mp_suicide" pistol animation, disables the next normal coma
      state, fires the visual gunshot and sets local health to zero.

    The exact server-side permission logic lives in CMGclient.checkCanSuicide.
]]

local weaponConfig =
    CMG.loadModule(
        "cfg/weapons"
    )


function KillYourself()
    Citizen.CreateThread(function()
        local playerPed =
            CMG.getPlayerPed()

        local pistolHash = nil

        for modelName, weaponData
            in pairs(
                weaponConfig.weapons
            ) do

            if weaponData.class
                == "Pistol" then

                local weaponHash =
                    GetHashKey(
                        modelName
                    )

                if HasPedGotWeapon(
                    playerPed,
                    weaponHash,
                    false
                )
                    and GetAmmoInPedWeapon(
                        playerPed,
                        weaponHash
                    ) > 0 then

                    pistolHash =
                        weaponHash
                    break
                end
            end
        end

        if not pistolHash then
            return
        end

        local animDict =
            "mp_suicide"

        CMG.loadAnimDict(
            animDict
        )

        CMG.setWeapon(
            playerPed,
            pistolHash,
            true
        )

        TaskPlayAnim(
            playerPed,
            animDict,
            "pistol",
            8.0,
            1.0,
            -1,
            2,
            0,
            false,
            false,
            false
        )

        RemoveAnimDict(
            animDict
        )

        Citizen.Wait(750)

        CMG.disableNextDeathComaState()

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
    end)
end


function CMG.checkCanSuicide(
    callback
)
    if CMGclient
        and CMGclient.checkCanSuicide then

        -- RPC-style client interface used by this framework.
        CMGclient.checkCanSuicide(
            {},
            callback
        )
    else
        callback(
            false,
            "~r~System error - please report to staff"
        )
    end
end


RegisterCommand(
    "suicide",
    function()
        if tCMG.isInGreenzone(
            false
        ) then
            notify(
                "~r~You cannot use this command in a greenzone."
            )
            return
        end

        if not tCMG.canAnim() then
            notify(
                "~r~You cannot use this command right now."
            )
            return
        end

        CMG.checkCanSuicide(
            function(allowed, reason)
                if allowed then
                    KillYourself()
                else
                    notify(reason)
                end
            end
        )
    end,
    false
)
