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
