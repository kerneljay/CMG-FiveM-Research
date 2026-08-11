--[[
    LEVEL 1 BEGINNER GUIDE — Recoil
    ====================================

    File: cmg/prod/client/misc/cl_recoil.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Recoil feature.

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
      * Always-running loops: 1
      * Commands: none found by static scan
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
    Weapon Recoil / Combat-Control Tweaks
    =====================================

    This file does two things:

      1. While holding an armed weapon, it disables GTA melee controls
         140/141/142 and hides the default ammo display.

      2. When the player fires a normal weapon on foot, the gameplay camera is
         nudged upward very slightly to create recoil.

    Weapons configured with subtype "combatmg" skip the extra camera recoil.
]]

local weaponConfig =
    CMG.loadModule("cfg/weapons")

-- === HELPER FUNCTION: isCombatMgEquipped(ped) ===
local function isCombatMgEquipped(ped)
    local weaponHash =
        GetSelectedPedWeapon(ped)

    local modelName =
        weaponConfig.weaponHashToModels[
            weaponHash
        ]

    if not modelName then
        return false
    end

    local weaponData =
        weaponConfig.weapons[
            modelName
        ]

    return
        weaponData ~= nil
        and weaponData.subType
            == "combatmg"
end

-- === HELPER FUNCTION: combatControlsTick(context) ===
local function combatControlsTick(context)
    if IsPedArmed(
        context.playerPed,
        6
    ) then
        DisableControlAction(
            1,
            140,
            true
        )

        DisableControlAction(
            1,
            141,
            true
        )

        DisableControlAction(
            1,
            142,
            true
        )
    end

    DisplayAmmoThisFrame(false)
end

CMG.createThreadOnTick(
    combatControlsTick,
    "Recoil Control Disabling"
)

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    while true do
        Citizen.Wait(100)

        local playerPed =
            CMG.getPlayerPed()

        if IsPedShooting(playerPed)
            and not isCombatMgEquipped(
                playerPed
            )
            and GetVehiclePedIsIn(
                playerPed,
                false
            ) == 0 then

            local appliedRecoil = 0.0

            repeat
                Wait(0)

                local pitch =
                    GetGameplayCamRelativePitch()

                SetGameplayCamRelativePitch(
                    pitch + 0.1,
                    0.2
                )

                appliedRecoil =
                    appliedRecoil + 0.1

            until appliedRecoil >= 0.15
        end
    end
end)
