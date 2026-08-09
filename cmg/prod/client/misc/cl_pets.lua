--[[
    CMG Pets - beginner-friendly rewrite
    ====================================

    This is a readable rewrite of the supplied decompiled FiveM Lua script.

    WHAT THIS SCRIPT DOES
    ---------------------
    1. Creates a /pet management menu.
    2. Creates a pet store menu and pet preview camera.
    3. Loads the player's owned pets from the server.
    4. Spawns/deletes the active pet.
    5. Supports pet actions:
         - Follow
         - Stay
         - Sit
         - Attack
         - Teleport
         - Tricks
         - Shoulder pets
         - Vehicle pets
         - Rideable pets
    6. Tracks pet health and feeding.
    7. Handles pet purchase/name/skill updates from the server.
    8. Synchronises pet actions between clients.
    9. Spawns ambient cats at the cat cafe.

    IMPORTANT
    ---------
    The original script uses hashed network event names such as:

        "23e9f76715"
        "dc7cc2772e"

    Those strings are preserved exactly because the server-side resource
    must be listening for those exact event names.

    DECOMPILER RECONSTRUCTION
    -------------------------
    One helper in the decompiled file was clearly damaged:

        CMG.isHandcuffed()
        CMG.isPlayerNearPrison()
        return not value and value

    That expression can never return true, which would make /pet unusable.

    Based on how the function is used, this rewrite reconstructs it as:

        return not CMG.isHandcuffed()
           and not CMG.isPlayerNearPrison()

    That reconstruction is marked below.
]]

---------------------------------------------------------------------
-- MENU SETUP
---------------------------------------------------------------------

local MENU_NAMESPACE = "cmgpets"
local MENU_TEXTURE = "cmg_petsui"

RMenu.Add(
    MENU_NAMESPACE,
    "main",
    RageUI.CreateMenu(
        "",
        "Select your ~b~Pet",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        MENU_TEXTURE,
        MENU_TEXTURE
    )
)

RMenu.Add(
    MENU_NAMESPACE,
    "store",
    RageUI.CreateMenu(
        "",
        "~b~Store",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        MENU_TEXTURE,
        MENU_TEXTURE
    )
)

TriggerEvent(
    "chat:addSuggestion",
    "/pet",
    "Manage your owned pets!"
)

local function getPetMenu()
    return RMenu:Get(MENU_NAMESPACE, "main")
end

local function getPetStoreMenu()
    return RMenu:Get(MENU_NAMESPACE, "store")
end

---------------------------------------------------------------------
-- NETWORK EVENT CONSTANTS
---------------------------------------------------------------------
--
-- Giving these hashes readable Lua names makes the rest of the script
-- far easier to understand without changing the actual network protocol.
---------------------------------------------------------------------

local EVENTS = {
    -- Server -> client
    SET_ATTACK_ALLOWED = "5af8df8edf",
    UPDATE_PET_HEALTH = "a56e8354c6",
    INITIALISE_PETS = "4c301d11e7",
    OPEN_PET_MENU = "fee61f9761",
    PET_PURCHASED = "47e666d484",
    PET_RENAMED = "88afa5e8d8",
    TELEPORT_SKILL_PURCHASED = "5e0ec7f5c1",
    PLAYER_ATTACKED_BY_PET = "81dacc19c5",
    PET_ATTACK_FINISHED = "991adbef17",

    -- Client <-> server pet action relay
    PET_ACTION = "23e9f76715",

    -- Client -> server
    PURCHASE_PET = "dc7cc2772e",
    REQUEST_PET_ATTACK = "e37c85acd2",
    FEED_PET = "f895de7ef6",
    PURCHASE_TELEPORT_SKILL = "967f1b0ab8",
    REQUEST_PET_NAME_CHANGE = "55aec3a6bf",
    SAVE_PET_HEALTH = "b4523ffc6f",

    -- Server -> client low-level action helpers
    START_PET_COMBAT = "0d37102e9e",
    STOP_PET_TASKS = "dd2a28ff60",
}

---------------------------------------------------------------------
-- PET CONFIG + STATE
---------------------------------------------------------------------

-- Filled when EVENTS.INITIALISE_PETS arrives from the server.
local petConfig = {}

-- True after the pet configuration has been received and the shop has
-- finished initialising.
local petsReady = false

-- True while the special rideable-pet system is active.
local isRidingPet = false

-- Everything used by the pet-store preview UI.
local storeState = {
    purchasing = false,
    purchasingId = 0,

    viewingPet = false,
    lastViewingId = 0,
    viewingId = 0,
    viewingEntity = 0,

    cameraEnabled = false,
    cameraHandle = 0,
}

-- The original file used numeric values for the pet's current action.
-- "Trick" and "Shoulder" both used 5 in the source, so that is preserved.
local PET_ACTION = {
    Follow = 1,
    Stay = 2,
    Attack = 3,
    Sit = 4,
    Trick = 5,
    Shoulder = 5,
    Floor = 6,
    Ride = 7,
}

-- Only one pet can be active at a time.
local activePet = {
    active = false,
    id = 0,
    handle = 0,

    -- Prevent immediate re-spawning after manually deleting the pet.
    cooldown = false,
}

-- The decompiled script passes notification "types" around, although the
-- notification wrapper itself only calls notify(message).
local NOTIFY_TYPE = {
    Success = 1,
    Error = 2,
    Alert = 3,
    Info = 4,
    Unknown = 5,
}

local lastRideAttempt = 0

---------------------------------------------------------------------
-- GENERAL HELPERS
---------------------------------------------------------------------

local function petNotify(_, message)
    -- The original helper ignored the notification type.
    notify(message)
end

local function setMainMenuSubtitle()
    if not activePet.active then
        getPetMenu():SetSubtitle("Select your ~b~Pet")
        return
    end

    local pet = petConfig.pets
        and petConfig.pets[activePet.id]

    if not pet then
        getPetMenu():SetSubtitle("Select your ~b~Pet")
        return
    end

    local subtitle = "~b~Pet: ~w~" .. tostring(pet.name)

    if pet.health ~= nil then
        subtitle = subtitle
            .. " ~b~Health: ~w~"
            .. tostring(pet.health)
            .. "/100"
    end

    getPetMenu():SetSubtitle(subtitle)
end

local function getActivePet()
    if not activePet.active or activePet.id == 0 then
        return nil
    end

    if not petConfig.pets then
        return nil
    end

    return petConfig.pets[activePet.id]
end

local function playerOwnsAnyUsablePet()
    for _, pet in pairs(petConfig.pets or {}) do
        if pet.info
            and pet.info.owned
            and not pet.info.dead
        then
            return true
        end
    end

    return false
end

---------------------------------------------------------------------
-- PET MENU ACCESS CHECK
---------------------------------------------------------------------

local function canUsePetMenu()
    -- [DECOMPILER RECONSTRUCTION]
    --
    -- The source's return expression was impossible:
    --     not value and value
    --
    -- This is the behaviour that makes sense in context.
    return not CMG.isHandcuffed()
        and not CMG.isPlayerNearPrison()
end

---------------------------------------------------------------------
-- PET STORE CAMERA
---------------------------------------------------------------------

local function openPetStore()
    RageUI.Visible(getPetStoreMenu(), true)

    storeState.viewingPet = true

    if storeState.cameraEnabled then
        return
    end

    if storeState.cameraHandle
        and storeState.cameraHandle ~= 0
    then
        DestroyCam(storeState.cameraHandle, false)
    end

    storeState.cameraHandle =
        CreateCam("DEFAULT_SCRIPTED_CAMERA", true)

    SetCamCoord(
        storeState.cameraHandle,
        562.7604,
        2752.879,
        42.4
    )

    SetCamRot(
        storeState.cameraHandle,
        -1.0,
        -1.0,
        -84.73,
        2
    )

    RenderScriptCams(
        true,
        false,
        0,
        true,
        true
    )

    storeState.cameraEnabled = true
end

local function closePetStore()
    RageUI.Visible(getPetStoreMenu(), false)

    storeState.viewingPet = false

    if storeState.viewingEntity
        and storeState.viewingEntity ~= 0
        and DoesEntityExist(storeState.viewingEntity)
    then
        DeleteEntity(storeState.viewingEntity)
    end

    storeState.viewingEntity = 0
    storeState.viewingId = 0

    if storeState.cameraEnabled then
        RenderScriptCams(
            false,
            false,
            0,
            true,
            false
        )

        if storeState.cameraHandle
            and storeState.cameraHandle ~= 0
        then
            DestroyCam(storeState.cameraHandle, false)
        end

        storeState.cameraEnabled = false
        storeState.cameraHandle = 0
    end
end

local function petStoreAreaTick()
    -- The original area tick callback was empty.
end

---------------------------------------------------------------------
-- SHOP NPC APPEARANCE
---------------------------------------------------------------------

local function customisePetShopNpc(ped)
    SetPedComponentVariation(ped, 1, 0, 0, 0)
    SetPedComponentVariation(ped, 2, 12, 3, 1)
    SetPedComponentVariation(ped, 3, 0, 0, 0)
    SetPedComponentVariation(ped, 4, 4, 0, 0)
    SetPedComponentVariation(ped, 5, 0, 0, 0)
    SetPedComponentVariation(ped, 6, 75, 0, 0)
    SetPedComponentVariation(ped, 7, 0, 0, 0)
    SetPedComponentVariation(ped, 8, 142, 0, 0)
    SetPedComponentVariation(ped, 9, 0, 0, 0)
    SetPedComponentVariation(ped, 10, 0, 0, 0)
    SetPedComponentVariation(ped, 11, 146, 0, 0)
end

---------------------------------------------------------------------
-- INITIALISE PET CONFIG / OWNERSHIP
---------------------------------------------------------------------

RegisterNetEvent(EVENTS.INITIALISE_PETS)
AddEventHandler(
    EVENTS.INITIALISE_PETS,
    function(ownedPets, restrictions, config)
        petConfig = config or {}

        -------------------------------------------------------------
        -- Build runtime state for every configured pet.
        -------------------------------------------------------------

        for petId, pet in pairs(petConfig.pets or {}) do
            pet.abilities = pet.abilities or {}

            -- Teleport is a purchasable skill, so start disabled.
            pet.abilities.teleport = false

            pet.awaitingHealthReduction = false

            pet.info = {
                currentAction = PET_ACTION.Follow,
                owned = false,
                dead = false,
                inVehicle = false,
                active = false,
                isAttacking = false,
                handle = 0,
            }

            -- Server can globally disable pet attacking.
            if restrictions and restrictions.attack then
                pet.abilities.attack = false
            end

            ---------------------------------------------------------
            -- Match this configured pet against the player's saved
            -- ownership data sent by the server.
            ---------------------------------------------------------

            for _, ownedPet in pairs(ownedPets or {}) do
                if ownedPet.id == petId then
                    pet.info.owned = true

                    if ownedPet.name then
                        pet.name = ownedPet.name
                    end

                    if ownedPet.ownedSkills
                        and ownedPet.ownedSkills.teleport
                    then
                        pet.abilities.teleport = true
                    end

                    if ownedPet.health ~= nil then
                        pet.health =
                            tonumber(ownedPet.health) or 100
                    else
                        pet.health = 100
                    end

                    break
                end
            end
        end

        -------------------------------------------------------------
        -- Create the pet-store marker, area, blip and NPC.
        -------------------------------------------------------------

        if petConfig.shop and petConfig.shop.coords then
            local shop = petConfig.shop
            local coords = shop.coords

            tCMG.addMarker(
                coords.x,
                coords.y,
                coords.z,
                1.0001,
                1.0001,
                0.5001,
                31,
                135,
                173,
                220,
                20.0,
                31,
                false,
                false,
                true,
                nil,
                nil,
                0.0,
                0.0,
                0.0
            )

            CMG.createArea(
                "petStore",
                coords,
                1.5,
                1.5,
                openPetStore,
                closePetStore,
                petStoreAreaTick,
                {}
            )

            tCMG.addBlip(
                coords.x,
                coords.y,
                coords.z,
                442,
                26,
                "Pet Store"
            )
        end

        petsReady = true

        -- Pet store clerk.
        CMG.createDynamicPed(
            1885233650,
            vector3(558.74, 2752.71, 42.85),
            179.45,
            true,
            "mini@strip_club@idles@bouncer@base",
            "base",
            10,
            false,
            customisePetShopNpc
        )
    end
)

---------------------------------------------------------------------
-- STAFF / SERVER PET ATTACK TOGGLE
---------------------------------------------------------------------

RegisterNetEvent(EVENTS.SET_ATTACK_ALLOWED)
AddEventHandler(
    EVENTS.SET_ATTACK_ALLOWED,
    function(attackAllowed)
        if attackAllowed then
            return
        end

        for _, pet in pairs(petConfig.pets or {}) do
            pet.abilities = pet.abilities or {}
            pet.abilities.attack = false

            petNotify(
                NOTIFY_TYPE.Alert,
                "Your ability to attack has been disabled by a ~b~CMG Staff Member~w~."
            )
        end
    end
)

---------------------------------------------------------------------
-- HEALTH UPDATE FROM SERVER
---------------------------------------------------------------------

RegisterNetEvent(EVENTS.UPDATE_PET_HEALTH)
AddEventHandler(
    EVENTS.UPDATE_PET_HEALTH,
    function(petId, health)
        local pet = petConfig.pets
            and petConfig.pets[petId]

        if not pet or not pet.info or not pet.info.owned then
            return
        end

        pet.health = health
        setMainMenuSubtitle()
    end
)

---------------------------------------------------------------------
-- OPEN /PET MENU
---------------------------------------------------------------------

RegisterNetEvent(EVENTS.OPEN_PET_MENU)
AddEventHandler(
    EVENTS.OPEN_PET_MENU,
    function()
        if not petsReady then
            petNotify(
                NOTIFY_TYPE.Info,
                "Please wait before opening the pet menu."
            )
            return
        end

        if activePet.cooldown then
            petNotify(
                NOTIFY_TYPE.Info,
                "Please wait before spawning in a new pet."
            )
            return
        end

        if not playerOwnsAnyUsablePet() then
            petNotify(
                NOTIFY_TYPE.Error,
                "You do not own any ~b~pets~w~. Visit a ~b~pet store ~w~to purchase one."
            )
            return
        end

        if not canUsePetMenu() then
            notify("~r~Unable to access the pet menu at this time")
            return
        end

        RageUI.Visible(getPetMenu(), true)
    end
)

---------------------------------------------------------------------
-- PURCHASE / NAME / SKILL RESPONSES
---------------------------------------------------------------------

RegisterNetEvent(EVENTS.PET_PURCHASED)
AddEventHandler(
    EVENTS.PET_PURCHASED,
    function(petId)
        local pet = petConfig.pets
            and petConfig.pets[petId]

        if not pet then
            return
        end

        PlaySoundFrontend(
            -1,
            "PROPERTY_PURCHASE",
            "HUD_AWARDS",
            false
        )

        petNotify(
            NOTIFY_TYPE.Success,
            "You have now ~b~purchased ~w~a ~b~"
                .. tostring(pet.name)
                .. "~w~. Use /pet to spawn it in."
        )

        pet.info.owned = true
        pet.health = 100
    end
)

RegisterNetEvent(EVENTS.PET_RENAMED)
AddEventHandler(
    EVENTS.PET_RENAMED,
    function(petId, newName)
        local pet = petConfig.pets
            and petConfig.pets[petId]

        if not pet then
            return
        end

        PlaySoundFrontend(
            -1,
            "PROPERTY_PURCHASE",
            "HUD_AWARDS",
            false
        )

        petNotify(
            NOTIFY_TYPE.Success,
            "You have now changed your pet name to ~b~"
                .. tostring(newName)
                .. "~w~!"
        )

        pet.name = newName

        setMainMenuSubtitle()
        RageUI.Visible(getPetMenu(), true)
    end
)

RegisterNetEvent(EVENTS.TELEPORT_SKILL_PURCHASED)
AddEventHandler(
    EVENTS.TELEPORT_SKILL_PURCHASED,
    function(petId)
        local pet = petConfig.pets
            and petConfig.pets[petId]

        if pet and pet.abilities then
            pet.abilities.teleport = true
        end
    end
)

---------------------------------------------------------------------
-- PET NETWORK-ACTION SENDER
---------------------------------------------------------------------

local function sendPetAction(actionName, ...)
    if not activePet.active
        or activePet.handle == 0
        or not DoesEntityExist(activePet.handle)
    then
        return
    end

    local networkId =
        NetworkGetNetworkIdFromEntity(activePet.handle)

    if networkId == 0 then
        return
    end

    -- The server receives:
    --   active pet ID
    --   pet network ID
    --   action name
    --   optional action arguments
    TriggerServerEvent(
        EVENTS.PET_ACTION,
        activePet.id,
        networkId,
        actionName,
        ...
    )
end

---------------------------------------------------------------------
-- PET SPAWNING
---------------------------------------------------------------------

local function makePetFollowPlayer()

    local pet = getActivePet()
    if not pet then
        return
    end

    -- Shoulder-only pets are placed on the shoulder instead of being
    -- given the normal ground-follow task. The decompiled source calls
    -- the shoulder action here with no explicit side; false gives the
    -- same left-shoulder branch on receiving clients.
    if pet.onShoulder then
        pet.info.currentAction =
            PET_ACTION.Shoulder

        sendPetAction(
            "petOnShoulder",
            GetPlayerServerId(PlayerId()),
            false
        )

        petNotify(
            NOTIFY_TYPE.Success,
            tostring(pet.name)
                .. " is now on your shoulder."
        )

        return
    end

    petNotify(
        NOTIFY_TYPE.Info,
        tostring(pet.name) .. " is now following."
    )

    sendPetAction(
        "petFollow",
        GetPlayerServerId(PlayerId())
    )

    pet.info.currentAction = PET_ACTION.Follow
end

function CMG.setActivePetFollowsPlayer()
    if activePet.active
        and activePet.id ~= 0
        and petConfig.pets
        and petConfig.pets[activePet.id]
    then
        makePetFollowPlayer()
    end
end

local function spawnPet(petId)
    local pet = petConfig.pets
        and petConfig.pets[petId]

    if not pet then
        return
    end

    local playerPed = CMG.getPlayerPed()

    CMG.loadModel(pet.model)

    local spawnCoords =
        GetOffsetFromEntityInWorldCoords(
            playerPed,
            0.0,
            1.0,
            0.0
        )

    local heading =
        GetEntityHeading(playerPed)

    -- Framework hook used before the local CreatePed call.
    CMG.requestEntitySpawn(
        "pets_ped",
        petId,
        spawnCoords
    )

    local petHandle =
        CreatePed(
            28,
            pet.model,
            spawnCoords.x,
            spawnCoords.y,
            spawnCoords.z,
            heading,
            true,
            true
        )

    pet.info.handle = petHandle

    while not DoesEntityExist(petHandle) do
        Wait(0)
    end

    SetModelAsNoLongerNeeded(pet.model)

    if pet.movementRate ~= nil then
        SetPedMoveRateOverride(
            petHandle,
            pet.movementRate
        )
    end

    SetBlockingOfNonTemporaryEvents(
        petHandle,
        true
    )

    pet.info.active = true

    activePet.active = true
    activePet.id = petId
    activePet.handle = petHandle

    makePetFollowPlayer()
    setMainMenuSubtitle()

    petNotify(
        NOTIFY_TYPE.Success,
        tostring(pet.name) .. " has now been created."
    )
end

---------------------------------------------------------------------
-- DELETE ACTIVE PET
---------------------------------------------------------------------

local function deleteActivePet()
    if not activePet.active then
        return
    end

    sendPetAction("petDelete")

    local pet = getActivePet()

    if pet and pet.info then
        pet.info.active = false
        pet.info.handle = 0
        pet.info.inVehicle = false
        pet.info.isAttacking = false
    end

    activePet.active = false
    activePet.id = 0
    activePet.handle = 0

    activePet.cooldown = true

    setMainMenuSubtitle()

    SetTimeout(
        20000,
        function()
            activePet.cooldown = false

            petNotify(
                NOTIFY_TYPE.Success,
                "You are now able to spawn in a pet again."
            )
        end
    )
end

---------------------------------------------------------------------
-- BASIC PET ACTIONS
---------------------------------------------------------------------

local function makePetStay()
    local pet = getActivePet()
    if not pet then
        return
    end

    sendPetAction("petStay")
    pet.info.currentAction = PET_ACTION.Stay
end

local function makePetSit()
    local pet = getActivePet()

    if not pet
        or not pet.animations
        or not pet.animations.sit
    then
        return
    end

    local sit = pet.animations.sit

    sendPetAction(
        "petSit",
        sit.dict,
        sit.base
    )

    pet.info.currentAction = PET_ACTION.Sit
end

local function teleportPetToPlayer()
    local pet = getActivePet()
    if not pet then
        return
    end

    sendPetAction(
        "tpPet",
        GetPlayerServerId(PlayerId())
    )
end

local function performPetTrick(animation)
    local pet = getActivePet()

    if not pet or not animation then
        return
    end

    pet.info.currentAction = PET_ACTION.Trick

    sendPetAction(
        "petPerformTrick",
        animation.dict,
        animation.base
    )
end

---------------------------------------------------------------------
-- SHOULDER PETS
---------------------------------------------------------------------

local function putPetOnShoulder(useRightShoulder)
    local pet = getActivePet()

    if not pet or not pet.onShoulder then
        return
    end

    pet.info.currentAction =
        PET_ACTION.Shoulder

    sendPetAction(
        "petOnShoulder",
        GetPlayerServerId(PlayerId()),
        useRightShoulder
    )

    petNotify(
        NOTIFY_TYPE.Success,
        tostring(pet.name)
            .. " is now on your shoulder."
    )
end

local function placeShoulderPetOnGround()
    local pet = getActivePet()

    if not pet
        or not pet.onShoulder
        or pet.info.currentAction ~= PET_ACTION.Shoulder
    then
        return
    end

    pet.info.currentAction =
        PET_ACTION.Floor

    sendPetAction(
        "petOnGround",
        GetPlayerServerId(PlayerId())
    )

    petNotify(
        NOTIFY_TYPE.Success,
        tostring(pet.name)
            .. " is now on the ground"
    )
end

---------------------------------------------------------------------
-- VEHICLE PETS
---------------------------------------------------------------------

local function putPetInNearestVehicle()
    local pet = getActivePet()
    if not pet then
        return
    end

    local vehicle =
        tCMG.getNearestVehicle(7.0)

    if vehicle == -1
        or vehicle == nil
        or vehicle == 0
    then
        petNotify(
            NOTIFY_TYPE.Error,
            "No nearby vehicle found."
        )
        return
    end

    local vehicleNetId =
        NetworkGetNetworkIdFromEntity(vehicle)

    if vehicleNetId ~= 0 then
        sendPetAction(
            "putPetInVehicle",
            vehicleNetId
        )
    end

    pet.info.inVehicle = true
    pet.info.insideVehicleHandle = vehicle

    petNotify(
        NOTIFY_TYPE.Info,
        "Pet is now inside the vehicle"
    )
end

local function removePetFromVehicle()
    local pet = getActivePet()
    if not pet then
        return
    end

    if IsPedInAnyVehicle(
        CMG.getPlayerPed(),
        true
    ) then
        petNotify(
            NOTIFY_TYPE.Error,
            "You must be outside the vehicle."
        )
        return
    end

    sendPetAction(
        "removePetFromVehicle",
        GetPlayerServerId(PlayerId())
    )

    pet.info.inVehicle = false

    petNotify(
        NOTIFY_TYPE.Info,
        tostring(pet.name)
            .. " is now removed from the vehicle."
    )
end

---------------------------------------------------------------------
-- ATTACK TARGETING
---------------------------------------------------------------------

local function animatedMarkerColour(speed)
    local time = GetGameTimer() / 200

    return {
        r = math.floor(
            math.sin((time * speed) + 0) * 127 + 128
        ),
        g = math.floor(
            math.sin((time * speed) + 2) * 127 + 128
        ),
        b = math.floor(
            math.sin((time * speed) + 4) * 127 + 128
        ),
    }
end

local function beginAttackSelection()
    local pet = getActivePet()

    if not pet
        or not pet.abilities
        or not pet.abilities.attack
    then
        return
    end

    RageUI.Visible(getPetMenu(), false)

    Citizen.CreateThread(function()
        pet.info.currentAction =
            PET_ACTION.Attack

        local scaleform =
            CMG.setupDogScaleform(
                "instructional_buttons"
            )

        petNotify(
            NOTIFY_TYPE.Info,
            "Aim at the ~b~target ~s~and press ENTER to begin the attack."
        )

        local localPlayerId = PlayerId()

        while activePet.active
            and activePet.id ~= 0
            and pet.info.currentAction == PET_ACTION.Attack
        do
            local isAiming, targetEntity =
                GetEntityPlayerIsFreeAimingAt(
                    localPlayerId
                )

            if isAiming
                and targetEntity ~= 0
                and IsEntityAPed(targetEntity)
                and targetEntity ~= pet.info.handle
            then
                DrawScaleformMovieFullscreen(
                    scaleform,
                    255,
                    255,
                    255,
                    255,
                    0
                )

                local targetCoords =
                    GetEntityCoords(
                        targetEntity,
                        true
                    )

                local colour =
                    animatedMarkerColour(0.5)

                DrawMarker(
                    1,
                    targetCoords.x,
                    targetCoords.y,
                    targetCoords.z - 1.02,
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    0.7,
                    0.7,
                    1.5,
                    colour.r,
                    colour.g,
                    colour.b,
                    200,
                    false,
                    false,
                    2,
                    false,
                    nil,
                    nil,
                    false
                )

                -- ENTER
                if IsControlJustPressed(1, 18) then
                    local petNetId =
                        NetworkGetNetworkIdFromEntity(
                            pet.info.handle
                        )

                    local targetNetId =
                        NetworkGetNetworkIdFromEntity(
                            targetEntity
                        )

                    if petNetId ~= 0
                        and targetNetId ~= 0
                    then
                        TriggerServerEvent(
                            EVENTS.REQUEST_PET_ATTACK,
                            activePet.id,
                            petNetId,
                            targetNetId
                        )

                        pet.info.isAttacking = true

                        scaleform =
                            CMG.setupDogScaleform(
                                "instructional_buttons"
                            )

                        petNotify(
                            NOTIFY_TYPE.Info,
                            "Attack has started!"
                        )

                        -- Wait until the server tells us the attack ended.
                        while activePet.active
                            and pet.info.isAttacking
                        do
                            Wait(0)
                        end

                        break
                    end
                end
            end

            Wait(0)
        end
    end)
end

RegisterNetEvent(EVENTS.PET_ATTACK_FINISHED)
AddEventHandler(
    EVENTS.PET_ATTACK_FINISHED,
    function(petId)
        local pet = petConfig.pets
            and petConfig.pets[petId]

        if not pet or not pet.info then
            return
        end

        pet.info.isAttacking = false

        petNotify(
            NOTIFY_TYPE.Alert,
            "The attack has finished."
        )
    end
)

---------------------------------------------------------------------
-- PLAYER WAS ATTACKED BY A PET
---------------------------------------------------------------------

RegisterNetEvent(EVENTS.PLAYER_ATTACKED_BY_PET)
AddEventHandler(
    EVENTS.PLAYER_ATTACKED_BY_PET,
    function(ownerUserId, ownerName)
        SetPedToRagdoll(
            CMG.getPlayerPed(),
            12000,
            12000,
            0,
            false,
            false,
            false
        )

        petNotify(
            NOTIFY_TYPE.Alert,
            "~y~~h~Alert~h~~s~: You have been attacked by a pet."
        )

        petNotify(
            NOTIFY_TYPE.Alert,
            "~b~Owner: ~w~"
                .. tostring(ownerName)
                .. "\n\nUser ID: ~b~"
                .. tostring(ownerUserId)
        )

        Wait(1000)

        local playerPed = CMG.getPlayerPed()

        if not IsPedRagdoll(playerPed) then
            SetPedToRagdoll(
                playerPed,
                -1,
                -1,
                0,
                false,
                false,
                false
            )
        end
    end
)

---------------------------------------------------------------------
-- RIDEABLE PETS
---------------------------------------------------------------------
--
-- This is the strangest part of the original script.
--
-- It:
--   1. Saves the player's current customization.
--   2. Clones the player's current ped.
--   3. Changes the real player into model hash 6768186.
--   4. Attaches the cloned human ped to the new model.
--   5. Uses the clone to make it LOOK like the player is riding.
--   6. Restores the real player's customization when finished.
---------------------------------------------------------------------

local RIDE_MODEL_HASH = 6768186

local FREEMODE_MALE_HASH = 1885233650
local FREEMODE_FEMALE_HASH = -1667301416

local function startRidingPet()
    local pet = getActivePet()

    if not pet
        or not pet.info
        or not pet.info.handle
        or not DoesEntityExist(pet.info.handle)
        or IsEntityDead(pet.info.handle)
    then
        return
    end

    if isRidingPet then
        return
    end

    local distance =
        #(CMG.getPlayerCoords()
            - GetEntityCoords(
                pet.info.handle,
                true
            ))

    if distance > 2.5 then
        notify("~r~You are too far away")
        return
    end

    local now = GetGameTimer()

    if now - lastRideAttempt < 10000 then
        notify("~r~Please try again in 10 seconds.")
        return
    end

    lastRideAttempt = now

    local playerPed = PlayerPedId()
    local playerModel =
        GetEntityModel(playerPed)

    if playerModel ~= FREEMODE_MALE_HASH
        and playerModel ~= FREEMODE_FEMALE_HASH
    then
        notify(
            "~r~Custom peds cannot be used with riding."
        )
        return
    end

    -- Original pet ped is removed while riding.
    DeleteEntity(pet.info.handle)

    CMG.requestEntitySpawn(
        "pets_bear_ped",
        playerModel
    )

    -- Clone the human appearance before changing the real player's model.
    local riderClone =
        ClonePed(
            playerPed,
            true,
            true,
            true
        )

    isRidingPet = true

    local originalHealth =
        GetEntityHealth(playerPed)

    local originalCustomization =
        tCMG.getCustomization()

    tCMG.setCustomization({
        modelhash = RIDE_MODEL_HASH,
    })

    SetModelAsNoLongerNeeded(
        RIDE_MODEL_HASH
    )

    Citizen.CreateThread(function()
        Wait(200)

        SetEntityHealth(
            PlayerPedId(),
            originalHealth
        )
    end)

    pet.info.currentAction =
        PET_ACTION.Ride

    -- Attach the cloned human ped to the transformed player model.
    AttachEntityToEntity(
        riderClone,
        PlayerPedId(),
        GetPedBoneIndex(
            PlayerPedId(),
            24816
        ),
        -0.35,
        0.0,
        0.65,
        0.0,
        0.0,
        -90.0,
        false,
        false,
        false,
        true,
        2,
        true
    )

    CMG.loadAnimDict(
        "amb@prop_human_seat_chair@male@generic@base"
    )

    TaskPlayAnim(
        riderClone,
        "amb@prop_human_seat_chair@male@generic@base",
        "base",
        8.0,
        1.0,
        -1,
        1,
        1.0,
        false,
        false,
        false
    )

    RemoveAnimDict(
        "amb@prop_human_seat_chair@male@generic@base"
    )

    FreezeEntityPosition(
        PlayerPedId(),
        false
    )

    FreezeEntityPosition(
        riderClone,
        false
    )

    SetPedComponentVariation(
        PlayerPedId(),
        0,
        0,
        0,
        0
    )

    SetBlockingOfNonTemporaryEvents(
        riderClone,
        true
    )

    SetPedFleeAttributes(
        riderClone,
        0,
        false
    )

    SetPedRelationshipGroupHash(
        riderClone,
        1191392768
    )

    Citizen.CreateThread(function()
        while activePet.active
            and activePet.id ~= 0
            and petConfig.pets
            and petConfig.pets[activePet.id]
            and pet.info.currentAction == PET_ACTION.Ride
            and isRidingPet
        do
            drawNativeNotification(
                "~s~~INPUT_JUMP~ to stop riding"
            )

            CMG.setWeapon(
                PlayerPedId(),
                "weapon_unarmed",
                true
            )

            DisableControlAction(0, 263, true)
            DisableControlAction(0, 264, true)
            DisableControlAction(0, 257, true)
            DisableControlAction(0, 140, true)
            DisableControlAction(0, 141, true)
            DisableControlAction(0, 142, true)
            DisableControlAction(0, 143, true)
            DisableControlAction(0, 24, true)
            DisableControlAction(0, 25, true)

            SetPedDropsWeaponsWhenDead(
                riderClone,
                false
            )

            -- SPACE
            if IsDisabledControlPressed(0, 22) then
                break
            end

            Wait(0)
        end

        DeleteEntity(riderClone)

        DetachEntity(
            PlayerPedId(),
            false,
            false
        )

        local health =
            GetEntityHealth(PlayerPedId())

        tCMG.setCustomization(
            originalCustomization
        )

        Citizen.CreateThread(function()
            Wait(200)

            SetEntityHealth(
                PlayerPedId(),
                health
            )

            Wait(1000)

            CMG.setInPoliceHorseDelayed(
                false
            )
        end)

        isRidingPet = false

        -- Respawn the pet after restoring the player.
        if activePet.id == petId then
            spawnPet(petId)
        end
    end)
end

---------------------------------------------------------------------
-- PET STORE MENU
---------------------------------------------------------------------

local function drawPetStoreMenu()
    if storeState.purchasing then
        local pet =
            petConfig.pets
            and petConfig.pets[
                storeState.purchasingId
            ]

        if not pet then
            storeState.purchasing = false
            storeState.purchasingId = 0
            return
        end

        RageUI.ButtonWithStyle(
            "Purchase " .. tostring(pet.name),
            "Purchase",
            {
                RightLabel =
                    "£"
                    .. getMoneyStringFormatted(
                        pet.price
                    )
            },
            true,
            function(_, _, selected)
                if selected then
                    TriggerServerEvent(
                        EVENTS.PURCHASE_PET,
                        storeState.purchasingId
                    )

                    storeState.purchasing = false
                    storeState.purchasingId = 0
                end
            end
        )

        RageUI.ButtonWithStyle(
            "Cancel Purchase",
            "Cancel",
            {},
            true,
            function(_, _, selected)
                if selected then
                    storeState.purchasing = false
                    storeState.purchasingId = 0
                end
            end
        )

        return
    end

    if not petsReady then
        return
    end

    local foundPetForSale = false

    for petId, pet in pairs(petConfig.pets or {}) do
        if not pet.info.owned then
            foundPetForSale = true

            RageUI.ButtonWithStyle(
                pet.name,
                pet.description,
                {
                    RightLabel =
                        "£"
                        .. getMoneyStringFormatted(
                            pet.price
                        )
                },
                true,
                function(_, hovered, selected)
                    if hovered then
                        storeState.viewingId =
                            petId
                    end

                    if selected then
                        storeState.purchasing =
                            true

                        storeState.purchasingId =
                            petId
                    end
                end
            )
        end
    end

    if not foundPetForSale then
        RageUI.Visible(
            getPetStoreMenu(),
            false
        )

        petNotify(
            NOTIFY_TYPE.Info,
            "There are no available pets for you to purchase."
        )
    end
end

RageUI.CreateWhile(
    1.0,
    getPetStoreMenu(),
    nil,
    function()
        RageUI.IsVisible(
            getPetStoreMenu(),
            true,
            true,
            true,
            drawPetStoreMenu,
            function()
            end
        )
    end
)

---------------------------------------------------------------------
-- PET STORE PREVIEW THREAD
---------------------------------------------------------------------

Citizen.CreateThread(function()
    while true do
        if storeState.viewingPet
            and storeState.viewingId ~= 0
            and storeState.viewingId
                ~= storeState.lastViewingId
        then
            storeState.lastViewingId =
                storeState.viewingId

            local pet =
                petConfig.pets
                and petConfig.pets[
                    storeState.viewingId
                ]

            if pet then
                CMG.loadModel(pet.model)

                drawNativeText(
                    "You are viewing the ~b~"
                        .. tostring(pet.name)
                        .. "~w~."
                )

                if not pet.abilities.attack then
                    if pet.onShoulder then
                        drawNativeText(
                            "This pet can only go on your ~b~shoulder ~w~."
                        )
                    else
                        drawNativeText(
                            "This pet ~b~cannot ~w~attack."
                        )
                    end
                end

                if storeState.viewingEntity ~= 0
                    and DoesEntityExist(
                        storeState.viewingEntity
                    )
                then
                    DeleteEntity(
                        storeState.viewingEntity
                    )
                end

                local playerPed =
                    CMG.getPlayerPed()

                local previewPed =
                    CreatePed(
                        28,
                        pet.model,
                        564.83,
                        2753.28,
                        41.89,
                        81.06,
                        false,
                        false
                    )

                storeState.viewingEntity =
                    previewPed

                SetEntityNoCollisionEntity(
                    previewPed,
                    playerPed,
                    false
                )

                TaskStandStill(
                    previewPed,
                    100000
                )

                -----------------------------------------------------
                -- Slowly rotate the preview while the same pet
                -- remains highlighted.
                -----------------------------------------------------

                while storeState.viewingPet
                    and storeState.viewingId
                        == storeState.lastViewingId
                    and DoesEntityExist(previewPed)
                do
                    SetEntityHeading(
                        previewPed,
                        GetEntityHeading(previewPed)
                            - 0.3
                    )

                    Wait(0)
                end

                SetModelAsNoLongerNeeded(
                    pet.model
                )

                if DoesEntityExist(previewPed) then
                    DeleteEntity(previewPed)
                end

                if storeState.viewingEntity
                    == previewPed
                then
                    storeState.viewingEntity = 0
                end
            end
        end

        Wait(0)
    end
end)

---------------------------------------------------------------------
-- MAIN PET MENU
---------------------------------------------------------------------

local function drawMainPetMenu()
    if not canUsePetMenu() then
        RageUI.CloseAll()
        return
    end

    -- The source blocks pet management during the Organ Heist.
    if CMG.inOrganHesit() then
        RageUI.Visible(
            getPetMenu(),
            false
        )
        return
    end

    -------------------------------------------------------------
    -- NO ACTIVE PET:
    -- Show every owned pet as a spawn button.
    -------------------------------------------------------------

    if not activePet.active then
        for petId, pet in pairs(petConfig.pets or {}) do
            if pet.info.owned then
                RageUI.Button(
                    "Spawn " .. tostring(pet.name),
                    "Press to spawn",
                    true,
                    function(_, _, selected)
                        if not selected then
                            return
                        end

                        if pet.info.dead then
                            petNotify(
                                NOTIFY_TYPE.Info,
                                "Please wait before spawning in "
                                    .. tostring(pet.name)
                                    .. "."
                            )
                            return
                        end

                        if activePet.cooldown then
                            petNotify(
                                NOTIFY_TYPE.Info,
                                "Please wait before spawning in a pet."
                            )
                            return
                        end

                        spawnPet(petId)
                    end
                )
            end
        end

        return
    end

    local pet = getActivePet()
    if not pet then
        return
    end

    -------------------------------------------------------------
    -- PET IS CURRENTLY IN A VEHICLE
    -------------------------------------------------------------

    if pet.info.inVehicle then
        RageUI.Button(
            "Remove from vehicle",
            "Remove pet from vehicle",
            true,
            function(_, _, selected)
                if selected then
                    removePetFromVehicle()
                end
            end
        )

        return
    end

    -------------------------------------------------------------
    -- Most normal actions are hidden for a shoulder pet and
    -- while health is too low.
    -------------------------------------------------------------

    local canUseNormalActions =
        (pet.health == nil or pet.health > 1)
        and not pet.onShoulder

    if canUseNormalActions then
        if pet.info.currentAction
            ~= PET_ACTION.Follow
        then
            RageUI.Button(
                "Follow",
                "Pet will follow you",
                true,
                function(_, _, selected)
                    if selected and not isRidingPet then
                        makePetFollowPlayer()
                    end
                end
            )
        end

        if pet.info.currentAction
            ~= PET_ACTION.Stay
        then
            RageUI.Button(
                "Stay",
                "Pet will stay",
                true,
                function(_, _, selected)
                    if selected and not isRidingPet then
                        petNotify(
                            NOTIFY_TYPE.Info,
                            tostring(pet.name)
                                .. " is now staying."
                        )

                        makePetStay()
                    end
                end
            )
        end

        if pet.abilities.sit
            and pet.info.currentAction
                ~= PET_ACTION.Sit
        then
            RageUI.Button(
                "Sit",
                "Pet will sit",
                true,
                function(_, _, selected)
                    if selected and not isRidingPet then
                        petNotify(
                            NOTIFY_TYPE.Info,
                            tostring(pet.name)
                                .. " is now sitting."
                        )

                        makePetSit()
                    end
                end
            )
        end

        if pet.abilities.teleport then
            RageUI.Button(
                "Teleport",
                "Teleport pet to you",
                true,
                function(_, _, selected)
                    if selected and not isRidingPet then
                        teleportPetToPlayer()

                        petNotify(
                            NOTIFY_TYPE.Info,
                            "Pet has now been teleported to you."
                        )
                    end
                end
            )
        end

        if pet.abilities.attack
            and pet.info.currentAction
                ~= PET_ACTION.Attack
        then
            RageUI.Button(
                "Attack",
                "Pet will attack",
                true,
                function(_, _, selected)
                    if selected and not isRidingPet then
                        beginAttackSelection()
                    end
                end
            )
        end

        if pet.info.currentAction
            ~= PET_ACTION.Attack
        then
            RageUI.Button(
                "Put in vehicle",
                "Put pet in vehicle",
                true,
                function(_, _, selected)
                    if selected and not isRidingPet then
                        putPetInNearestVehicle()
                    end
                end
            )

            if pet.abilities.paw
                and pet.animations
                and pet.animations.paw
            then
                RageUI.Button(
                    "Paw Trick",
                    "Pet will lift paw",
                    true,
                    function(_, _, selected)
                        if selected and not isRidingPet then
                            performPetTrick(
                                pet.animations.paw
                            )
                        end
                    end
                )
            end

            if pet.abilities.sleep
                and pet.animations
                and pet.animations.sleep
            then
                RageUI.Button(
                    "Sleep Trick",
                    "Pet will sleep",
                    true,
                    function(_, _, selected)
                        if selected and not isRidingPet then
                            performPetTrick(
                                pet.animations.sleep
                            )
                        end
                    end
                )
            end
        end
    end

    -------------------------------------------------------------
    -- SHOULDER-PET CONTROLS
    -------------------------------------------------------------

    if pet.onShoulder then
        if pet.info.currentAction
            == PET_ACTION.Shoulder
        then
            RageUI.Button(
                "Place on ground",
                "Place your pet on the ground",
                true,
                function(_, _, selected)
                    if selected and not isRidingPet then
                        placeShoulderPetOnGround()
                    end
                end
            )
        elseif pet.info.currentAction
            == PET_ACTION.Floor
        then
            RageUI.Button(
                "Place on right shoulder",
                "Place your pet on your right shoulder",
                true,
                function(_, _, selected)
                    if selected and not isRidingPet then
                        putPetOnShoulder(true)
                    end
                end
            )

            RageUI.Button(
                "Place on left shoulder",
                "Place your pet on your left shoulder",
                true,
                function(_, _, selected)
                    if selected and not isRidingPet then
                        putPetOnShoulder(false)
                    end
                end
            )
        end
    end

    -------------------------------------------------------------
    -- FEED PET
    -------------------------------------------------------------

    if pet.health ~= nil
        and pet.health < 100
    then
        RageUI.Button(
            "Feed Pet",
            "Feed your current pet",
            true,
            function(_, _, selected)
                if selected and not isRidingPet then
                    TriggerServerEvent(
                        EVENTS.FEED_PET,
                        activePet.id
                    )
                end
            end
        )
    end

    -------------------------------------------------------------
    -- DELETE PET
    -------------------------------------------------------------

    RageUI.Button(
        "Delete Pet",
        "Deletes your current pet",
        true,
        function(_, _, selected)
            if selected then
                RageUI.Visible(
                    getPetMenu(),
                    false
                )

                deleteActivePet()
            end
        end
    )

    -------------------------------------------------------------
    -- BUY TELEPORT SKILL
    -------------------------------------------------------------

    if pet.abilities
        and not pet.abilities.teleport
        and not pet.onShoulder
        and pet.skillPrices
        and pet.skillPrices.teleport
    then
        RageUI.ButtonWithStyle(
            "Purchase Teleport Feature",
            "Purchase",
            {
                RightLabel =
                    "£"
                    .. getMoneyStringFormatted(
                        pet.skillPrices.teleport
                    )
            },
            true,
            function(_, _, selected)
                if selected then
                    TriggerServerEvent(
                        EVENTS.PURCHASE_TELEPORT_SKILL,
                        activePet.id
                    )
                end
            end
        )
    end

    -------------------------------------------------------------
    -- CHANGE NAME
    -------------------------------------------------------------

    if petConfig.shop
        and petConfig.shop.changeNamePrice
    then
        RageUI.ButtonWithStyle(
            "Change Name",
            "Purchase",
            {
                RightLabel =
                    "£"
                    .. getMoneyStringFormatted(
                        petConfig.shop.changeNamePrice
                    )
            },
            true,
            function(_, _, selected)
                if selected then
                    TriggerServerEvent(
                        EVENTS.REQUEST_PET_NAME_CHANGE,
                        activePet.id
                    )

                    RageUI.CloseAll()
                end
            end
        )
    end

    -------------------------------------------------------------
    -- RIDE PET
    -------------------------------------------------------------

    if pet.abilities
        and pet.abilities.ride
    then
        RageUI.ButtonWithStyle(
            "Ride",
            "",
            {},
            true,
            function(_, _, selected)
                if selected then
                    startRidingPet()
                    RageUI.CloseAll()
                end
            end
        )
    end
end

RageUI.CreateWhile(
    1.0,
    getPetMenu(),
    nil,
    function()
        RageUI.IsVisible(
            getPetMenu(),
            true,
            true,
            true,
            drawMainPetMenu,
            function()
            end
        )
    end
)

---------------------------------------------------------------------
-- LOW-LEVEL PET ACTION FUNCTIONS
---------------------------------------------------------------------

local function playPetAnimation(
    petPed,
    animationDictionary,
    animationName
)
    ClearPedTasks(petPed)

    CMG.loadAnimDict(
        animationDictionary
    )

    TaskPlayAnim(
        petPed,
        animationDictionary,
        animationName,
        8.0,
        -8.0,
        -1,
        2,
        0.0,
        false,
        false,
        false
    )

    RemoveAnimDict(
        animationDictionary
    )
end

local function deletePetEntity(petPed)
    DeleteEntity(petPed)
end

local function followPlayerByServerId(
    petPed,
    playerServerId
)
    local playerIndex =
        GetPlayerFromServerId(
            playerServerId
        )

    if playerIndex == -1 then
        return
    end

    local playerPed =
        GetPlayerPed(playerIndex)

    if playerPed == 0 then
        return
    end

    ClearPedTasks(petPed)

    TaskFollowToOffsetOfEntity(
        petPed,
        playerPed,
        0.0,
        0.0,
        0.0,
        7.0,
        -1,
        10.0,
        true
    )
end

local function makePetEntityStay(petPed)
    ClearPedTasks(petPed)
end

local function attachPetToVehicle(
    petPed,
    vehicleNetworkId
)
    if not NetworkDoesNetworkIdExist(
        vehicleNetworkId
    ) then
        return
    end

    local vehicle =
        NetworkGetEntityFromNetworkId(
            vehicleNetworkId
        )

    if vehicle == 0 then
        return
    end

    ClearPedTasks(petPed)

    local seatBone =
        GetEntityBoneIndexByName(
            vehicle,
            "seat_dside_r"
        )

    if seatBone == -1 then
        seatBone =
            GetEntityBoneIndexByName(
                vehicle,
                "seat_pside_f"
            )
    end

    AttachEntityToEntity(
        petPed,
        vehicle,
        seatBone,
        0.0,
        -0.1,
        0.4,
        0.0,
        0.0,
        0.0,
        false,
        false,
        false,
        true,
        0,
        true
    )
end

local function removePetEntityFromVehicle(
    petPed,
    ownerServerId
)
    local ownerIndex =
        GetPlayerFromServerId(
            ownerServerId
        )

    if ownerIndex == -1 then
        return
    end

    local ownerPed =
        GetPlayerPed(ownerIndex)

    if ownerPed == 0 then
        return
    end

    ClearPedTasks(petPed)

    local ownerCoords =
        GetEntityCoords(
            ownerPed,
            true
        )

    DetachEntity(
        petPed,
        true,
        true
    )

    SetEntityCoords(
        petPed,
        ownerCoords.x,
        ownerCoords.y,
        ownerCoords.z - 1.0,
        false,
        false,
        false,
        false
    )

    followPlayerByServerId(
        petPed,
        ownerServerId
    )
end

local function placePetOnGround(
    petPed,
    ownerServerId
)
    local ownerIndex =
        GetPlayerFromServerId(
            ownerServerId
        )

    if ownerIndex == -1 then
        return
    end

    local ownerPed =
        GetPlayerPed(ownerIndex)

    if ownerPed == 0 then
        return
    end

    DetachEntity(
        petPed,
        false,
        false
    )

    -- The decompiled source briefly starts a follow task and immediately
    -- clears it. The useful effect here is simply detaching/idle.
    ClearPedTasks(petPed)
end

local function attachPetToShoulder(
    petPed,
    ownerServerId,
    useRightShoulder
)
    local ownerIndex =
        GetPlayerFromServerId(
            ownerServerId
        )

    if ownerIndex == -1 then
        return
    end

    local ownerPed =
        GetPlayerPed(ownerIndex)

    if ownerPed == 0 then
        return
    end

    local zOffset

    if useRightShoulder then
        zOffset = -0.18
    else
        zOffset = 0.2
    end

    AttachEntityToEntity(
        petPed,
        ownerPed,
        GetPedBoneIndex(
            ownerPed,
            24818
        ),
        0.17,
        0.0,
        zOffset,
        0.0,
        90.0,
        0.0,
        false,
        false,
        false,
        true,
        1,
        true
    )
end

local function teleportPetEntityToPlayer(
    petPed,
    ownerServerId
)
    local ownerIndex =
        GetPlayerFromServerId(
            ownerServerId
        )

    if ownerIndex == -1 then
        return
    end

    local ownerPed =
        GetPlayerPed(ownerIndex)

    if ownerPed == 0 then
        return
    end

    local coords =
        GetEntityCoords(
            ownerPed,
            true
        )

    SetEntityCoords(
        petPed,
        coords.x,
        coords.y,
        coords.z - 1.0,
        false,
        false,
        false,
        false
    )
end

---------------------------------------------------------------------
-- PET ACTION BROADCAST FROM SERVER
---------------------------------------------------------------------

RegisterNetEvent(EVENTS.PET_ACTION)
AddEventHandler(
    EVENTS.PET_ACTION,
    function(petNetworkId, actionName, ...)
        if not NetworkDoesNetworkIdExist(
            petNetworkId
        ) then
            return
        end

        local petPed =
            NetworkGetEntityFromNetworkId(
                petNetworkId
            )

        if petPed == 0 then
            return
        end

        if actionName == "petPerformTrick" then
            playPetAnimation(
                petPed,
                ...
            )

        elseif actionName == "petDelete" then
            deletePetEntity(petPed)

        elseif actionName == "petFollow" then
            followPlayerByServerId(
                petPed,
                ...
            )

        elseif actionName == "petStay" then
            makePetEntityStay(petPed)

        elseif actionName == "putPetInVehicle" then
            attachPetToVehicle(
                petPed,
                ...
            )

        elseif actionName == "removePetFromVehicle" then
            removePetEntityFromVehicle(
                petPed,
                ...
            )

        elseif actionName == "petSit" then
            playPetAnimation(
                petPed,
                ...
            )

        elseif actionName == "petAttack" then
            playPetAnimation(
                petPed,
                ...
            )

        elseif actionName == "petOnGround" then
            placePetOnGround(
                petPed,
                ...
            )

        elseif actionName == "petOnShoulder" then
            attachPetToShoulder(
                petPed,
                ...
            )

        elseif actionName == "tpPet" then
            teleportPetEntityToPlayer(
                petPed,
                ...
            )
        end
    end
)

---------------------------------------------------------------------
-- SERVER TELLS THIS CLIENT TO START PET COMBAT
---------------------------------------------------------------------

RegisterNetEvent(EVENTS.START_PET_COMBAT)
AddEventHandler(
    EVENTS.START_PET_COMBAT,
    function(petNetworkId, targetNetworkId)
        if not NetworkDoesNetworkIdExist(
            petNetworkId
        ) then
            return
        end

        if not NetworkDoesNetworkIdExist(
            targetNetworkId
        ) then
            return
        end

        if not NetworkDoesEntityExistWithNetworkId(
            petNetworkId
        ) then
            return
        end

        if not NetworkDoesEntityExistWithNetworkId(
            targetNetworkId
        ) then
            return
        end

        local petPed =
            NetworkGetEntityFromNetworkId(
                petNetworkId
            )

        local targetPed =
            NetworkGetEntityFromNetworkId(
                targetNetworkId
            )

        if petPed == 0
            or targetPed == 0
        then
            return
        end

        if not NetworkHasControlOfEntity(
            petPed
        ) then
            return
        end

        TaskCombatPed(
            petPed,
            targetPed,
            0,
            16
        )
    end
)

RegisterNetEvent(EVENTS.STOP_PET_TASKS)
AddEventHandler(
    EVENTS.STOP_PET_TASKS,
    function(petNetworkId)
        if not NetworkDoesNetworkIdExist(
            petNetworkId
        ) then
            return
        end

        if not NetworkDoesEntityExistWithNetworkId(
            petNetworkId
        ) then
            return
        end

        local petPed =
            NetworkGetEntityFromNetworkId(
                petNetworkId
            )

        if petPed == 0 then
            return
        end

        if not NetworkHasControlOfEntity(
            petPed
        ) then
            return
        end

        ClearPedTasksImmediately(
            petPed
        )
    end
)

---------------------------------------------------------------------
-- PET HEALTH / DEATH / STORE CAMERA TICK
---------------------------------------------------------------------

local function petSystemTick()
    -------------------------------------------------------------
    -- ACTIVE PET HEALTH / DEATH
    -------------------------------------------------------------

    if activePet.active
        and activePet.handle ~= 0
        and DoesEntityExist(activePet.handle)
    then
        local pet = getActivePet()

        if not pet then
            return
        end

        ---------------------------------------------------------
        -- PET DIED
        ---------------------------------------------------------

        if IsEntityDead(activePet.handle) then
            drawNativeText(
                "Your pet has ~b~died~w~, please wait before respawning."
            )

            petNotify(
                NOTIFY_TYPE.Alert,
                "Please wait 5 minutes before respawning the pet."
            )

            local deadPetId =
                activePet.id

            pet.info.dead = true
            pet.info.active = false

            activePet.active = false
            activePet.handle = 0

            setMainMenuSubtitle()

            SetTimeout(
                300000,
                function()
                    local deadPet =
                        petConfig.pets
                        and petConfig.pets[
                            deadPetId
                        ]

                    if deadPet
                        and deadPet.info
                    then
                        deadPet.info.dead =
                            false
                    end
                end
            )

        ---------------------------------------------------------
        -- PET HEALTH DRAIN
        ---------------------------------------------------------

        elseif not pet.awaitingHealthReduction
            and pet.health ~= nil
            and pet.health < 1
        then
            -- This odd condition is preserved from the decompile:
            -- health only starts this 5-minute timer when it is below 1.
            pet.awaitingHealthReduction =
                true

            SetTimeout(
                300000,
                function()
                    local currentPet =
                        getActivePet()

                    if not currentPet then
                        return
                    end

                    local newHealth =
                        (currentPet.health or 0)
                        - 10

                    if newHealth < 2 then
                        newHealth = 1

                        petNotify(
                            NOTIFY_TYPE.Alert,
                            "You must feed your pet to continue using it. Head to a pet store!"
                        )
                    end

                    currentPet.health =
                        newHealth

                    currentPet.awaitingHealthReduction =
                        false

                    TriggerServerEvent(
                        EVENTS.SAVE_PET_HEALTH,
                        activePet.id,
                        newHealth
                    )

                    setMainMenuSubtitle()
                end
            )
        end

    -------------------------------------------------------------
    -- CLOSE PREVIEW CAMERA IF STORE MENU IS NO LONGER VISIBLE
    -------------------------------------------------------------

    elseif storeState.cameraEnabled then
        if not RageUI.Visible(
            getPetStoreMenu()
        ) then
            RenderScriptCams(
                false,
                false,
                0,
                true,
                false
            )

            if storeState.cameraHandle
                and storeState.cameraHandle ~= 0
            then
                DestroyCam(
                    storeState.cameraHandle,
                    false
                )
            end

            storeState.cameraEnabled =
                false

            storeState.cameraHandle = 0
            storeState.viewingPet = false
        end
    end
end

function CMG.hasPetSpawned()
    return activePet.active
end

CMG.createThreadOnTick(
    petSystemTick,
    "Pets"
)

---------------------------------------------------------------------
-- CAT CAFE
---------------------------------------------------------------------
--
-- The final part of the original resource is independent from the player's
-- owned pet system. It populates the cat cafe with ambient cats.
---------------------------------------------------------------------

local CAT_MODEL = 1462895032

local catCafeStaticPositions = {
    vector4(-576.30914306641, -1054.8338623047, 22.430583953857, 5.0),
    vector4(-573.13830566406, -1056.7286376953, 22.34726524353, 10.0),
    vector4(-583.85375976562, -1050.8475341797, 22.903409957886, 200.0),
    vector4(-575.36315917969, -1049.3723144531, 23.532382965088, 150.0),
    vector4(-571.82427978516, -1049.1110839844, 27.636543273926, 300.0),
    vector4(-574.15216064453, -1067.8732910156, 26.716175079346, 350.0),
    vector4(-575.49182128906, -1068.4104003906, 26.867456436157, 73.0),
    vector4(-577.69000244141, -1069.3704833984, 27.260467529297, 351.0),
    vector4(-580.46539306641, -1061.1938476562, 27.50301361084, 264.0),
    vector4(-566.78350830078, -1049.1219482422, 24.757600784302, 193.0),
    vector4(-577.61096191406, -1069.3815917969, 22.990507125854, 45.0),
    vector4(-579.7275390625, -1062.9910888672, 23.105237960815, 80.0),
    vector4(-588.34497070312, -1049.7238769531, 22.344200134277, 164.0),
    vector4(-598.33673095703, -1050.1214599609, 22.849090576172, 200.0),
    vector4(-573.61352539062, -1060.0550537109, 22.639022827148, 274.0),
    vector4(-577.73022460938, -1051.1755371094, 22.347290039062, 189.0),
    vector4(-582.08251953125, -1054.7325439453, 22.429388046265, 328.0),
    vector4(-581.43719482422, -1058.3192138672, 22.344200134277, 239.0),
}

local catCafeNetworkSpawnPoints = {
    vector3(-578.38031005859, -1059.7563476562, 21.339666366577),
    vector3(-581.20819091797, -1053.5622558594, 21.347272872925),
    vector3(-573.55206298828, -1051.6333007812, 21.344181060791),
    vector3(-581.60565185547, -1067.0407714844, 21.344177246094),
    vector3(-573.43670654297, -1050.8446044922, 22.344200134277),
}

local catCafeAnimations = {
    {
        "creatures@cat@amb@world_cat_sleeping_ground@base",
        "base",
    },
}

local localCatCafeCats = {}

local function spawnCatCafeCats()
    CMG.loadModel(CAT_MODEL)

    -------------------------------------------------------------
    -- STATIC LOCAL CATS
    -------------------------------------------------------------

    for index, coords in pairs(
        catCafeStaticPositions
    ) do
        local cat =
            CreatePed(
                0,
                CAT_MODEL,
                coords.x,
                coords.y,
                coords.z - 1.0,
                coords.w,
                false,
                false
            )

        FreezeEntityPosition(cat, true)
        SetEntityCanBeDamaged(cat, false)
        SetBlockingOfNonTemporaryEvents(
            cat,
            true
        )

        local animationIndex =
            (index % #catCafeAnimations) + 1

        local animation =
            catCafeAnimations[
                animationIndex
            ]

        CMG.loadAnimDict(
            animation[1]
        )

        TaskPlayAnim(
            cat,
            animation[1],
            animation[2],
            8.0,
            8.0,
            -1,
            3,
            1.0,
            false,
            false,
            false
        )

        RemoveAnimDict(
            animation[1]
        )

        table.insert(
            localCatCafeCats,
            cat
        )
    end

    SetModelAsNoLongerNeeded(
        CAT_MODEL
    )

    -------------------------------------------------------------
    -- OPTIONAL NETWORKED CAT
    -------------------------------------------------------------

    local networkedCatCount = 0

    for _, ped in pairs(
        GetGamePool("CPed")
    ) do
        if GetEntityModel(ped) == CAT_MODEL
            and NetworkGetEntityIsNetworked(
                ped
            )
        then
            networkedCatCount =
                networkedCatCount + 1
        end
    end

    if networkedCatCount
        < #catCafeNetworkSpawnPoints
    then
        local spawnPoint =
            catCafeNetworkSpawnPoints[
                math.random(
                    1,
                    #catCafeNetworkSpawnPoints
                )
            ]

        CMG.requestEntitySpawn(
            "catcafe_cat",
            spawnPoint
        )

        local cat =
            CreatePed(
                0,
                CAT_MODEL,
                spawnPoint.x,
                spawnPoint.y,
                spawnPoint.z,
                0.0,
                true,
                true
            )

        SetEntityCanBeDamaged(
            cat,
            false
        )

        SetEntityProofs(
            cat,
            true,
            true,
            true,
            true,
            true,
            true,
            true,
            true
        )
    end
end

local function updateCatCafeCats()
    for _, ped in pairs(
        GetGamePool("CPed")
    ) do
        if GetEntityModel(ped) == CAT_MODEL
            and NetworkGetEntityIsNetworked(
                ped
            )
            and NetworkHasControlOfEntity(
                ped
            )
        then
            -- 1056466932 is the task hash checked by the original.
            if GetScriptTaskStatus(
                ped,
                1056466932
            ) == 7
            then
                TaskFollowToOffsetOfEntity(
                    ped,
                    PlayerPedId(),
                    0.0,
                    0.0,
                    0.0,
                    7.0,
                    -1,
                    10.0,
                    true
                )
            end
        end
    end
end

local function removeLocalCatCafeCats()
    for _, cat in pairs(
        localCatCafeCats
    ) do
        DeleteEntity(cat)
    end

    localCatCafeCats = {}
end

CMG.createArea(
    "catCafeCats",
    catCafeStaticPositions[1].xyz,
    25.0,
    50.0,
    spawnCatCafeCats,
    removeLocalCatCafeCats,
    updateCatCafeCats,
    {}
)

AddEventHandler(
    "onResourceStop",
    function(resourceName)
        if resourceName
            == GetCurrentResourceName()
        then
            removeLocalCatCafeCats()
        end
    end
)