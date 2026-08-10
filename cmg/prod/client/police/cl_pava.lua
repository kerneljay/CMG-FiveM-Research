--[[
    Police PAVA Spray
    =================

    PAVA weapon hash:
      561663666

    Local settings:
      intensity       = particle size
      timeUntilReload = how many seconds the spray can be held
      sprayRange      = capsule/raycast range
      sprayEffectTime = victim impairment duration

    When PAVA is equipped:
      * the player is kept in the projectile aiming idle animation
      * melee/attack controls are disabled
      * pressing attack starts one spray cycle

    Spray cycle:
      1. server event 3d1541f44f begins networked spray state
      2. a short capsule shape test checks what is directly in front
      3. if another player is hit, their server ID is sent in fa6b8620ec
      4. while attack remains held, `timeUntilReload` counts down every 0.5 sec
      5. if the spray becomes invalid the client sends adc0b1e4ab
      6. releasing/finishing also sends adc0b1e4ab

    Network visual events:
      44abcb0ccb(serverId) -> start spray particle on that player's weapon
      2b5ec979de(serverId) -> remove spray particle from weapon
      2585ce9e7e            -> apply the victim's drunk/disabled-controls effect

    Hash-looking network events are deliberately unchanged.
]]

local settings = {
    intensity = 4.0,
    timeUntilReload = 10.0,
    sprayRange = 2.0,
    sprayEffectTime = 15
}

local pavaEquipped = false

local AIM_ANIM_DICT =
    "weapons@first_person@aim_rng@generic@projectile@shared@core"

local AIM_ANIM_NAME =
    "idlerng_med"

local PTFX_DICT =
    "scr_bike_business"

local PTFX_NAME =
    "scr_bike_spraybottle_spray"


-- ============================================================
-- FIND ENTITY DIRECTLY IN FRONT
-- ============================================================

local function getSprayTargetEntity()
    local ped =
        PlayerPedId()

    local startCoords =
        GetEntityCoords(
            ped,
            false
        )

    local endCoords =
        GetOffsetFromEntityInWorldCoords(
            ped,
            0.0,
            settings.sprayRange,
            0.0
        )

    local shapeTest =
        StartShapeTestCapsule(
            startCoords.x,
            startCoords.y,
            startCoords.z,
            endCoords.x,
            endCoords.y,
            endCoords.z,
            1.0,
            12,
            ped,
            7
        )

    local _, _, _, _, entity =
        GetShapeTestResult(
            shapeTest
        )

    return entity
end


-- ============================================================
-- ONE SPRAY CYCLE
-- ============================================================

local function startSpraying()
    CreateThread(function()
        local secondsLeft =
            settings.timeUntilReload

        TriggerServerEvent(
            "3d1541f44f"
        )

        local hitEntity =
            getSprayTargetEntity()

        if hitEntity ~= 0
            and IsPedAPlayer(
                hitEntity
            ) then

            local playerIndex =
                NetworkGetPlayerIndexFromPed(
                    hitEntity
                )

            if playerIndex ~= -1 then
                TriggerServerEvent(
                    "fa6b8620ec",
                    GetPlayerServerId(
                        playerIndex
                    )
                )
            end
        end

        while IsDisabledControlPressed(
            0,
            24
        )
            and secondsLeft > 0 do

            if not pavaEquipped then
                TriggerServerEvent(
                    "adc0b1e4ab"
                )
                return
            end

            Wait(500)

            secondsLeft =
                secondsLeft - 0.5
        end

        TriggerServerEvent(
            "adc0b1e4ab"
        )
    end)
end


-- ============================================================
-- EQUIPPED-WEAPON CONTROL THREAD
-- ============================================================

CreateThread(function()
    while true do
        local ped =
            PlayerPedId()

        pavaEquipped =
            GetSelectedPedWeapon(ped)
            == 561663666

        local playingAimAnimation =
            IsEntityPlayingAnim(
                ped,
                AIM_ANIM_DICT,
                AIM_ANIM_NAME,
                3
            )

        if pavaEquipped then
            if not playingAimAnimation then
                CMG.loadAnimDict(
                    AIM_ANIM_DICT
                )

                TaskPlayAnim(
                    ped,
                    AIM_ANIM_DICT,
                    AIM_ANIM_NAME,
                    1.0,
                    -1.0,
                    -1,
                    50,
                    0,
                    false,
                    false,
                    false
                )

                RemoveAnimDict(
                    AIM_ANIM_DICT
                )
            end

            for _, control in ipairs({
                24,
                140,
                141,
                142,
                257,
                263,
                264
            }) do
                DisableControlAction(
                    0,
                    control,
                    true
                )
            end

            if IsDisabledControlJustPressed(
                0,
                24
            ) then
                startSpraying()
            end

            Wait(0)

        else
            if playingAimAnimation then
                StopAnimTask(
                    ped,
                    AIM_ANIM_DICT,
                    AIM_ANIM_NAME,
                    1.0
                )
            end

            Wait(1000)
        end
    end
end)


-- ============================================================
-- NETWORKED SPRAY PARTICLE
-- ============================================================

RegisterNetEvent(
    "44abcb0ccb",
    function(serverId)
        local playerIndex =
            GetPlayerFromServerId(
                serverId
            )

        if playerIndex == -1 then
            return
        end

        local ped =
            GetPlayerPed(
                playerIndex
            )

        if ped == 0 then
            return
        end

        local weaponEntity =
            GetCurrentPedWeaponEntityIndex(
                ped
            )

        if weaponEntity == 0 then
            return
        end

        CMG.loadPtfx(
            PTFX_DICT
        )

        StartParticleFxLoopedOnEntity(
            PTFX_NAME,
            weaponEntity,
            -0.2,
            0.002,
            0.0,
            0.0,
            -95.0,
            180.0,
            settings.intensity,
            false,
            false,
            false
        )

        RemoveNamedPtfxAsset(
            PTFX_DICT
        )
    end
)


RegisterNetEvent(
    "2b5ec979de",
    function(serverId)
        local playerIndex =
            GetPlayerFromServerId(
                serverId
            )

        if playerIndex == -1 then
            return
        end

        local ped =
            GetPlayerPed(
                playerIndex
            )

        if ped == 0 then
            return
        end

        local weaponEntity =
            GetCurrentPedWeaponEntityIndex(
                ped
            )

        if weaponEntity ~= 0 then
            RemoveParticleFxFromEntity(
                weaponEntity
            )
        end
    end
)


-- ============================================================
-- VICTIM EFFECT
-- ============================================================

RegisterNetEvent(
    "2585ce9e7e",
    function()
        SetTimecycleModifier(
            "drunk"
        )

        SetTimecycleModifierStrength(
            2.0
        )

        local clipSet =
            "move_m@drunk@verydrunk"

        CMG.loadClipSet(
            clipSet
        )

        SetPedMovementClipset(
            PlayerPedId(),
            clipSet,
            1.0
        )

        RemoveClipSet(
            clipSet
        )

        local startedAt =
            GetGameTimer()

        while GetGameTimer()
            - startedAt
            < settings.sprayEffectTime
                * 1000 do

            DisablePlayerFiring(
                PlayerId(),
                true
            )

            for _, control in ipairs({
                21,
                22,
                23,
                24,
                25
            }) do
                DisableControlAction(
                    0,
                    control,
                    true
                )
            end

            Wait(0)
        end

        ClearTimecycleModifier()
        ResetScenarioTypesEnabled()

        ResetPedMovementClipset(
            PlayerPedId(),
            0
        )
    end
)
