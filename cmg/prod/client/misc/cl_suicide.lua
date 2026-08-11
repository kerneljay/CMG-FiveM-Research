--[[
    LEVEL 1 BEGINNER GUIDE — Suicide
    =====================================

    File: cmg/prod/client/misc/cl_suicide.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Suicide feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 2
      * Background threads: 1
      * Always-running loops: 0
      * Commands: suicide
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/weapons

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


-- === HELPER FUNCTION: KillYourself() ===
function KillYourself()

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
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
