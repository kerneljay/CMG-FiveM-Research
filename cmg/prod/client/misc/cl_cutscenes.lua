--[[
    Cutscene Character Helpers
    ==========================

    This file lets CMG place real player characters into Rockstar cutscenes
    while keeping their current clothing.

    Public helpers:
      StartIntroCutscene()
        Plays "mp_intro_concat" using the correct male/female playback list.

      StartCasinoCutscene()
        Plays "mpcas_int" using the correct male/female playback list.

      SetCutscenePedClothing(ped, customisation)
        Applies old-style component/prop data onto a cutscene ped.

    Network event 466e35f309(data)
      Plays a server-described cutscene and registers several players into
      named cutscene slots.

    Beginner note:
      Rockstar cutscenes often create THEIR OWN copy of a ped. That is why the
      code waits for DoesCutsceneEntityExist(...) and then applies clothing to
      the cutscene entity.
]]

local MALE_MODEL = 1885233650
local FEMALE_MODEL = -1667301416


-- ============================================================
-- LEGACY CLOTHING FORMAT
-- ============================================================

local function parseLegacyClothingSlot(slotKey)
    if type(slotKey) == "string"
        and slotKey:sub(1, 1) == "p" then

        return
            true,
            tonumber(
                slotKey:sub(2)
            )
    end

    return false, tonumber(slotKey)
end


function SetCutscenePedClothing(
    ped,
    customisation
)
    for slotKey, item
        in pairs(customisation or {}) do

        if slotKey ~= "model"
            and slotKey ~= "modelhash" then

            local isProp, slotId =
                parseLegacyClothingSlot(
                    slotKey
                )

            if slotId then
                if isProp then
                    if item[1] < 0 then
                        ClearPedProp(
                            ped,
                            slotId
                        )
                    else
                        SetPedPropIndex(
                            ped,
                            slotId,
                            item[1],
                            item[2],
                            true
                        )
                    end
                else
                    SetPedComponentVariation(
                        ped,
                        slotId,
                        item[1],
                        item[2],
                        item[3] or 2
                    )
                end
            end
        end
    end
end


-- ============================================================
-- CUTSCENE LOADING
-- ============================================================

local function waitForCutscene(cutsceneName)
    while not HasThisCutsceneLoaded(
        cutsceneName
    ) do
        Citizen.Wait(0)
    end
end


local function waitForCutsceneEntity(
    cutsceneSlot,
    modelHash
)
    while not DoesCutsceneEntityExist(
        cutsceneSlot,
        modelHash
    ) do
        Citizen.Wait(0)
    end
end


-- ============================================================
-- GTA ONLINE INTRO CUTSCENE
-- ============================================================

function StartIntroCutscene()
    local customisation =
        tCMG.getCustomization()

    local playerPed =
        CMG.getPlayerPed()

    local playerModel =
        GetEntityModel(
            playerPed
        )

    local playbackList = 31
    local cutsceneModel = MALE_MODEL
    local cutsceneSlot =
        "MP_Male_Character"

    if playerModel == FEMALE_MODEL then
        playbackList = 103
        cutsceneModel = FEMALE_MODEL
        cutsceneSlot =
            "MP_Female_Character"
    end

    RequestCutsceneWithPlaybackList(
        "mp_intro_concat",
        playbackList,
        8
    )

    waitForCutscene(
        "mp_intro_concat"
    )

    StartCutscene(0)

    if cutsceneModel == MALE_MODEL then
        RegisterEntityForCutscene(
            playerPed,
            "MP_Male_Character",
            0,
            0,
            64
        )

        RegisterEntityForCutscene(
            0,
            "MP_Female_Character",
            3,
            FEMALE_MODEL,
            0
        )
    else
        -- The original decompile passes FEMALE_MODEL for this empty male slot.
        -- Preserve that value instead of silently changing server-era logic.
        RegisterEntityForCutscene(
            0,
            "MP_Male_Character",
            3,
            FEMALE_MODEL,
            0
        )

        RegisterEntityForCutscene(
            playerPed,
            "MP_Female_Character",
            0,
            0,
            64
        )
    end

    SetCutsceneEntityStreamingFlags(
        cutsceneSlot,
        0,
        1
    )

    waitForCutsceneEntity(
        cutsceneSlot,
        cutsceneModel
    )

    SetCutscenePedClothing(
        playerPed,
        customisation
    )
end


-- ============================================================
-- CASINO CUTSCENE
-- ============================================================

function StartCasinoCutscene()
    local customisation =
        tCMG.getCustomization()

    local playerPed =
        CMG.getPlayerPed()

    local playbackList = 59301
    local modelHash = MALE_MODEL

    if GetEntityModel(playerPed)
        == FEMALE_MODEL then

        playbackList = 40905
        modelHash = FEMALE_MODEL

        print(
            "is female",
            modelHash
        )
    end

    EnableMovieSubtitles(true)

    RequestCutsceneWithPlaybackList(
        "mpcas_int",
        playbackList,
        8
    )

    waitForCutscene(
        "mpcas_int"
    )

    StartCutscene(0)

    RegisterEntityForCutscene(
        playerPed,
        "MP_1",
        0,
        0,
        64
    )

    waitForCutsceneEntity(
        "MP_1",
        modelHash
    )

    SetCutscenePedClothing(
        playerPed,
        customisation
    )
end


-- ============================================================
-- SERVER-DESCRIBED MULTIPLAYER CUTSCENE
-- ============================================================

RegisterNetEvent(
    "466e35f309",
    function(data)
        RequestCutsceneWithPlaybackList(
            data.name,
            0,
            8
        )

        waitForCutscene(
            data.name
        )

        StartCutscene(0)

        for _, playerData
            in pairs(
                data.players or {}
            ) do

            local serverId =
                tonumber(
                    playerData.source
                )

            if serverId then
                local playerIndex =
                    GetPlayerFromServerId(
                        serverId
                    )

                local playerPed =
                    GetPlayerPed(
                        playerIndex
                    )

                -- The decompiled source used the LOCAL player's model here,
                -- even for remote players. Keep it to preserve behaviour.
                local modelHash =
                    GetEntityModel(
                        CMG.getPlayerPed()
                    )

                local customisation =
                    tCMG.getPlayerCustomization(
                        playerPed
                    )

                RegisterEntityForCutscene(
                    playerPed,
                    playerData.cutsceneId,
                    0,
                    0,
                    64
                )

                waitForCutsceneEntity(
                    playerData.cutsceneId,
                    modelHash
                )

                local cutscenePed =
                    GetEntityIndexOfCutsceneEntity(
                        playerData.cutsceneId,
                        modelHash
                    )

                SetCutscenePedClothing(
                    cutscenePed,
                    customisation
                )
            end
        end
    end
)
