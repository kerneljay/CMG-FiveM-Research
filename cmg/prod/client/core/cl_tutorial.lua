--[[
    New Player Tutorial + Protection Client
    =======================================

    Beginner overview:
      This file contains TWO related systems:

      1. THE TUTORIAL
         A guided first-time-player sequence which teaches:
           * gender/character setup
           * phone basics
           * entering/driving a vehicle
           * Simeon's vehicle store
           * purchasing / previewing a vehicle
           * using a garage
           * City Hall / jobs / licences
           * finishing the tutorial

      2. NEW PLAYER PROTECTION
         For roughly the first two hours:
           * the player cannot be damaged
           * the player cannot damage other people
           * melee/shooting controls are disabled
           * a HUD timer shows how long protection remains
           * drawing a real weapon asks the server to end protection early
           * /protectionoff can also end it early

    Many detailed tutorial steps depend on UI/garage/store scripts elsewhere
    in the framework, so this readable version keeps those external calls
    obvious instead of hiding them behind hundreds of decompiler temporaries.

    Hash-looking event names are deliberately unchanged.
]]

-- ============================================================
-- TUTORIAL COORDINATES
-- ============================================================

local airportStart =
    vector3(
        -1033.1064453125,
        -2730.1145019531,
        13.756633758545
    )

local airportBoardingPoint =
    vector3(
        -1036.5452880859,
        -2735.7922363281,
        13.756631851196
    )

local undergroundTrainPoint =
    vector3(
        -1056.6693115234,
        -2695.5822753906,
        -8.2877798080444
    )

local cityArrivalPoint =
    vector3(
        103.13236236572,
        -1710.0469970703,
        29.128242492676
    )


-- Several tutorial checkpoints around Simeon's / first-vehicle area.
-- Original entries are {markerPosition, destinationPosition, heading}.
local vehicleTutorialCheckpoints = {
    {
        marker = vector3(
            95.41603088379,
            -1727.3582763672,
            28.85818862915
        ),
        destination = vector3(
            95.41603088379,
            -1727.3582763672,
            28.85818862915
        ),
        heading = 50.0
    },

    {
        marker = vector3(
            94.067138671875,
            -1740.6694335938,
            29.305875778198
        ),
        destination = vector3(
            94.067138671875,
            -1740.6694335938,
            28.305875778198
        ),
        heading = 320.0
    },

    {
        marker = vector3(
            96.752075195312,
            -1745.4302978516,
            29.315612792968
        ),
        destination = vector3(
            96.752075195312,
            -1745.4302978516,
            28.315612792968
        ),
        heading = 320.0
    },

    {
        marker = vector3(
            103.90421295166,
            -1751.818359375,
            29.321237564086
        ),
        destination = vector3(
            103.90421295166,
            -1751.818359375,
            28.321237564086
        ),
        heading = 320.0
    },

    {
        marker = vector3(
            108.07794952392,
            -1756.5098876954,
            29.360332489014
        ),
        destination = vector3(
            108.07794952392,
            -1756.5098876954,
            28.360332489014
        ),
        heading = 320.0
    },

    {
        marker = vector3(
            111.3772354126,
            -1740.8269042968,
            28.854513168334
        ),
        destination = vector3(
            111.3772354126,
            -1740.8269042968,
            28.854513168334
        ),
        heading = 50.0
    },

    {
        marker = vector3(
            97.749137878418,
            -1728.8994140625,
            28.873386383056
        ),
        destination = vector3(
            97.749137878418,
            -1728.8994140625,
            28.873386383056
        ),
        heading = 50.0
    }
}


-- ============================================================
-- TUTORIAL STATE
-- ============================================================

local isNewPlayer = false
local inTutorial = false

local tutorialVehicle = nil
local tutorialTrain = nil
local selectedGender = nil

local tutorialStage = "INVALID"

-- Money value received from CMG:initMoney.
local currentMoney = 0

-- This decor existed in the original tutorial and is kept with the same name.
DecorRegister(
    "91dff835ca",
    1
)


RegisterNetEvent(
    "CMG:initMoney",
    function(_, bankMoney)
        currentMoney =
            bankMoney or 0
    end
)


local function tutorialLog(message, ...)
    print(
        "[Tutorial] " ..
        tostring(message),
        ...
    )
end


-- Server-side debug/progress tracking used by the original tutorial.
local function reportTutorialStage(stageName)
    tutorialStage = stageName

    TriggerServerEvent(
        "813acdb9f7",
        stageName
    )
end


local function sendTutorialTransaction(
    transactionType
)
    SendNUIMessage({
        transactionType =
            transactionType
    })
end


-- ============================================================
-- SIMPLE TUTORIAL UI HELPERS
-- ============================================================

local function showObjective(text)
    drawNativeNotification(text)
end


local function waitUntil(
    condition,
    tickMessage
)
    while inTutorial
        and not condition() do

        if tickMessage then
            drawNativeNotification(
                tickMessage
            )
        end

        Wait(0)
    end

    return inTutorial
end


local function createTutorialCheckpoint(
    coords,
    radius
)
    return CreateCheckpoint(
        1,
        coords.x,
        coords.y,
        coords.z,
        coords.x,
        coords.y,
        coords.z,
        radius or 3.0,
        0,
        170,
        255,
        170,
        0
    )
end


local function deleteCheckpointSafe(
    checkpoint
)
    if checkpoint
        and checkpoint ~= 0 then
        DeleteCheckpoint(checkpoint)
    end
end


-- ============================================================
-- GENDER SELECTION
-- ============================================================

local genderSelectionOpen = false


local function closeGenderSelection()
    genderSelectionOpen = false

    CMG.uiSetFocus(
        false,
        false,
        false
    )

    CMG.uiSendMessage({
        type = "APP_TOGGLE",
        app = ""
    })
end


local function openGenderSelection()
    genderSelectionOpen = true

    CMG.uiSetFocus(
        true,
        true,
        false
    )

    CMG.uiSendMessage({
        type = "APP_TOGGLE",
        app = "tutorial"
    })

    CMG.uiSendMessage({
        type = "tutorialgender"
    })
end


CMG.uiRegisterCallback(
    "onMaleTutorialClick",
    function(_, reply)
        selectedGender = "male"
        closeGenderSelection()

        if reply then
            reply({ok = true})
        end
    end
)


CMG.uiRegisterCallback(
    "onFemaleTutorialClick",
    function(_, reply)
        selectedGender = "female"
        closeGenderSelection()

        if reply then
            reply({ok = true})
        end
    end
)


local function runGenderStage()
    reportTutorialStage("Gender Stage")

    tutorialLog(
        "Starting gender stage"
    )

    selectedGender = nil

    openGenderSelection()

    waitUntil(
        function()
            return selectedGender ~= nil
        end
    )

    if not inTutorial then
        return false
    end

    -- Server/framework event which owns final gender/character creation.
    TriggerServerEvent(
        "97a59f5031",
        selectedGender
    )

    return true
end


-- ============================================================
-- NAME / IDENTITY STAGE
-- ============================================================

local function runNameStage()
    reportTutorialStage("Name Stage")

    -- Existing framework event which opens/handles the tutorial identity step.
    TriggerEvent(
        "69df7aca22"
    )

    return inTutorial
end


-- ============================================================
-- PHONE STAGE
-- ============================================================

local function runPhoneStage()
    reportTutorialStage("Phone Call")

    showObjective(
        "Your phone is used for messages, calls, services and many other features."
    )

    local phone =
        exports["lb-phone"]

    if phone and phone.IsOpen
        and phone:IsOpen() then

        drawNativeNotification(
            "Press ~INPUT_64637822~ to toggle the phone."
        )
    end

    Wait(2000)
    return inTutorial
end


-- ============================================================
-- FIRST VEHICLE / SIMEON'S STAGE
-- ============================================================

local function runVehicleStage()
    reportTutorialStage("Buy Simeons")

    TriggerEvent(
        "3d47766955",
        "FOLLOW THE YELLOW MARKERS!"
    )

    showObjective(
        "Drive to ~y~Simeons~w~ to purchase your first vehicle"
    )

    -- Follow the configured beginner checkpoints.
    for _, step
        in ipairs(
            vehicleTutorialCheckpoints
        ) do

        if not inTutorial then
            return false
        end

        local checkpoint =
            createTutorialCheckpoint(
                step.marker,
                4.0
            )

        waitUntil(
            function()
                return
                    #(
                        CMG.getPlayerCoords()
                        - step.destination
                    ) < 6.0
            end
        )

        deleteCheckpointSafe(
            checkpoint
        )
    end

    showObjective(
        "Exit your ~b~vehicle~w~"
    )

    waitUntil(
        function()
            return not IsPedInAnyVehicle(
                PlayerPedId(),
                false
            )
        end
    )

    showObjective(
        "Locate the ~y~store selector~w~"
    )

    Wait(1500)

    showObjective(
        "Select a vehicle category"
    )

    Wait(1500)

    showObjective(
        "Each category has an arrangement of stock and custom vehicles to pick from."
    )

    Wait(1500)

    showObjective(
        "Select a vehicle to purchase or preview"
    )

    Wait(1500)

    showObjective(
        "Previewing a vehicle gives you a minute to test how the vehicle drives without upgrades."
    )

    Wait(1500)

    showObjective(
        "Purchase or preview this vehicle"
    )

    Wait(1500)

    showObjective(
        "Money will be taken from your bank account for this vehicle and it will be delivered to your garage."
    )

    Wait(1500)

    showObjective(
        "Purchase this vehicle"
    )

    return inTutorial
end


-- ============================================================
-- GARAGE STAGE
-- ============================================================

local function runGarageStage()
    reportTutorialStage("Pull Out Garage")

    showObjective(
        "Head outside of Simeons to get in your new vehicle"
    )

    Wait(1500)

    showObjective(
        "Head to the marked garage to get a vehicle out"
    )

    Wait(1500)

    showObjective(
        "This is the main UI for any garage. From here you can get out or store a vehicle, view rented vehicles and configure custom folders."
    )

    Wait(1500)

    showObjective(
        "This lists all the vehicles you have bought for this garage type."
    )

    Wait(1500)

    showObjective(
        "Select your newly purchased vehicle"
    )

    Wait(1500)

    showObjective(
        "You can spawn your vehicle, or choose to sell and rent it to another player here."
    )

    Wait(1500)

    showObjective(
        "Press Spawn Vehicle"
    )

    return inTutorial
end


-- ============================================================
-- CITY HALL STAGE
-- ============================================================

local function runCityHallStage()
    reportTutorialStage("Drive City Hall")

    showObjective(
        "The City Hall is used to get a job, change your identity and to purchase licenses."
    )

    Wait(3000)

    return inTutorial
end


-- ============================================================
-- COMPLETE / ABORT TUTORIAL
-- ============================================================

local function cleanTutorialEntities()
    if tutorialVehicle
        and DoesEntityExist(
            tutorialVehicle
        ) then

        DeleteEntity(
            tutorialVehicle
        )
    end

    if tutorialTrain
        and DoesEntityExist(
            tutorialTrain
        ) then

        DeleteEntity(
            tutorialTrain
        )
    end

    tutorialVehicle = nil
    tutorialTrain = nil
end


local function finishTutorial()
    tutorialStage =
        "Complete"

    showObjective(
        "~g~Tutorial Complete"
    )

    cleanTutorialEntities()

    inTutorial = false
    isNewPlayer = false

    -- Server marks tutorial completion.
    TriggerServerEvent(
        "42036878bb"
    )

    CMG.tryShowNewPlayerProtectionIntroUi()
end


local function cancelTutorial()
    cleanTutorialEntities()
    inTutorial = false
    tutorialStage = "INVALID"
end


-- ============================================================
-- MAIN TUTORIAL SEQUENCE
-- ============================================================

local function startTutorialSequence()
    if inTutorial then
        return
    end

    tutorialLog(
        "Start Tutorial Sequence"
    )

    inTutorial = true
    isNewPlayer = true

    -- Store the current player weapon. The original client prevents normal
    -- weapons being used until the tutorial is complete.
    local ped = PlayerPedId()

    local selectedWeapon =
        GetSelectedPedWeapon(ped)

    if selectedWeapon
        and selectedWeapon ~= 0
        and selectedWeapon ~= -1569615261 then

        TriggerServerEvent(
            "91dff835ca",
            selectedWeapon
        )

        RemoveAllPedWeapons(
            ped,
            true
        )

        notify(
            "Your weapon has been stored. You must complete the tutorial first."
        )
    end

    -- The original sequence begins around LSIA before progressing into the city.
    SetEntityCoords(
        ped,
        airportStart.x,
        airportStart.y,
        airportStart.z,
        false,
        false,
        false,
        true
    )

    if not runGenderStage() then
        return
    end

    if not runNameStage() then
        return
    end

    if not runPhoneStage() then
        return
    end

    if not runVehicleStage() then
        return
    end

    if not runGarageStage() then
        return
    end

    if not runCityHallStage() then
        return
    end

    finishTutorial()
end


-- Server explicitly starts/restarts the tutorial.
RegisterNetEvent(
    "a146e2cd0b",
    startTutorialSequence
)


-- First-spawn state check.
AddEventHandler(
    "CMG:onClientSpawn",
    function(_, firstSpawn)
        if not firstSpawn then
            return
        end

        tutorialLog(
            "Checking completed state"
        )

        TriggerServerEvent(
            "42036878bb"
        )
    end
)


-- Server marks this account as a new player and starts the light new-player
-- checking tick.
RegisterNetEvent(
    "c2edd7984f",
    function()
        isNewPlayer = true
    end
)


function CMG.isNewPlayer()
    return isNewPlayer
end


function CMG.isInTutorial()
    return inTutorial
end


-- Server tells the client that tutorial setup is ready and that protection can
-- display its introductory notification when appropriate.
RegisterNetEvent(
    "6932434e21",
    function()
        tutorialCompletedStateReceived =
            true

        CMG.tryShowNewPlayerProtectionIntroUi()
    end
)


-- ============================================================
-- RETURNING-NEW-PLAYER TUTORIAL REPLAY PROMPT
-- ============================================================

RegisterNetEvent(
    "47324dc7c8",
    function(
        playtimeMinutes,
        recentSessions,
        skipInitialDelay
    )
        if playtimeMinutes < 30 then
            return
        end

        if not skipInitialDelay then
            Wait(10000)
        end

        if recentSessions > 20 then
            return
        end

        local startedAt =
            GetGameTimer()

        while
            GetGameTimer() - startedAt
            < 20000
        do

            drawNativeNotification([[
We've noticed you're a new player and haven't connected in a while.

If you would like to retry the tutorial press ~INPUT_REPLAY_START_STOP_RECORDING~.]])

            if IsControlJustPressed(
                0,
                288
            ) then
                TriggerServerEvent(
                    "d8da13a755"
                )
                break
            end

            Wait(0)
        end
    end
)


CMG.registerDevMenuItems(
    "Miscellaneous",
    function()
        RageUI.Button(
            "Prompt Full Tutorial Replay",
            "",
            true,
            function(_, _, selected)
                if selected then
                    TriggerEvent(
                        "47324dc7c8",
                        120,
                        10,
                        true
                    )
                end
            end
        )
    end
)


-- ============================================================
-- NEW PLAYER PROTECTION
-- ============================================================

local weaponConfig =
    CMG.loadModule("cfg/weapons")

local newPlayerProtectionActive = false

-- Unix/cloud time when protection ends.
local protectionEndsAt = 0

-- Avoid spamming the server every frame when a protected player equips a gun.
local lastWeaponDisableRequestAt = 0

-- Server has told us enough protection state to show the intro.
local protectionStateReceived = false

-- Intro shown once per activation/client session.
local protectionIntroShown = false

-- Set by tutorial state message above.
tutorialCompletedStateReceived =
    tutorialCompletedStateReceived
    or false


local protectedWeaponClasses = {
    Pistol = true,
    AR = true,
    SMG = true,
    Shotgun = true,
    Heavy = true,
    Melee = true
}


function CMG.hasNewPlayerProtection()
    return newPlayerProtectionActive
end


local function isRealCombatWeapon(
    weaponHash
)
    if weaponHash == 0
        or weaponHash == -1569615261 then
        return false
    end

    local modelName =
        weaponConfig.weaponHashToModels
        and weaponConfig
            .weaponHashToModels[
                weaponHash
            ]

    if modelName then
        local data =
            weaponConfig.weapons
            and weaponConfig
                .weapons[modelName]

        if data
            and protectedWeaponClasses[
                data.class
            ] then
            return true
        end

        return false
    end

    -- Fallback GTA weapon groups used by the original client.
    local combatGroups = {
        [416676503] = true,
        [-957766203] = true,
        [970310034] = true,
        [1159398588] = true,
        [860033945] = true,
        [-1212426201] = true,
        [-1569042529] = true,
        [-728555052] = true
    }

    return
        combatGroups[
            GetWeapontypeGroup(
                weaponHash
            )
        ] == true
end


local function disableProtectionCombatControls()
    local controls = {
        140,
        141,
        142,
        143,
        263,
        264,
        257,
        24,
        25
    }

    for _, control
        in ipairs(controls) do

        DisableControlAction(
            0,
            control,
            true
        )
    end
end


local function protectionCanApply()
    if not newPlayerProtectionActive then
        return false
    end

    if CMG.isStaffedOnClient() then
        return false
    end

    if CMG.inEvent() then
        return false
    end

    if tCMG.isInComa() then
        return false
    end

    return true
end


local function showProtectionIntro()
    notify({
        title = "New Player Protection",
        message =
            "You can't be killed during your first 2 hours. Equipping a weapon or typing /protectionoff ends protection early.",
        type = "info",
        duration = 15000,
        sound = "notification"
    })
end


function CMG.tryShowNewPlayerProtectionIntroUi()
    if protectionIntroShown then
        return
    end

    if not protectionStateReceived
        or not newPlayerProtectionActive then
        return
    end

    if inTutorial then
        return
    end

    if not tutorialCompletedStateReceived then
        return
    end

    protectionIntroShown = true
    showProtectionIntro()
end


local function setProtectionHudEnabled(
    enabled
)
    CMG.setHudTimerBarProviderActive(
        "newPlayerProtection",
        enabled
    )
end


local function disableNewPlayerProtection()
    newPlayerProtectionActive = false
    protectionEndsAt = 0

    setProtectionHudEnabled(false)

    local ped =
        PlayerPedId()

    SetEntityInvincible(
        ped,
        false
    )

    SetPlayerInvincible(
        CMG.getPlayerId(),
        false
    )

    SetEntityCanBeDamaged(
        ped,
        true
    )

    SetPlayerMeleeWeaponDamageModifier(
        CMG.getPlayerId(),
        1.0
    )

    SetPlayerWeaponDamageModifier(
        CMG.getPlayerId(),
        1.0
    )
end


local function applyProtectionToPed(
    ped
)
    SetEntityInvincible(
        ped,
        true
    )

    SetPlayerInvincible(
        CMG.getPlayerId(),
        true
    )

    SetEntityProofs(
        ped,
        true,
        true,
        true,
        true,
        true,
        true,
        true,
        true
    )

    SetEntityCanBeDamaged(
        ped,
        false
    )

    -- Ragdoll is still allowed; protection is about damage rather than making
    -- the player completely immovable.
    SetPedCanRagdoll(
        ped,
        true
    )

    SetPedCanRagdollFromPlayerImpact(
        ped,
        true
    )

    ClearPedBloodDamage(ped)
    ResetPedVisibleDamage(ped)
    ClearPedLastWeaponDamage(ped)
end


local function formatProtectionTime(
    seconds
)
    local minutes =
        math.floor(seconds / 60)

    local remainingSeconds =
        seconds % 60

    return string.format(
        "%d:%02d",
        minutes,
        remainingSeconds
    )
end


CMG.registerHudTimerBarProvider(
    "newPlayerProtection",
    function(timerBars)
        if not newPlayerProtectionActive then
            return
        end

        local secondsLeft =
            protectionEndsAt
            - GetCloudTimeAsInt()

        if secondsLeft <= 0 then
            return
        end

        timerBars.push(
            "~g~PROTECTION~w~",
            formatProtectionTime(
                secondsLeft
            )
        )
    end
)


-- Server protection state:
-- {
--   active = true/false,
--   protectionEndsAtUnix = <unix timestamp>
-- }
RegisterNetEvent(
    "d227939ac3",
    function(data)
        protectionStateReceived = true

        if not data
            or not data.active then

            disableNewPlayerProtection()
            return
        end

        newPlayerProtectionActive = true

        protectionEndsAt =
            data.protectionEndsAtUnix
            or 0

        setProtectionHudEnabled(true)

        CMG.tryShowNewPlayerProtectionIntroUi()
    end
)


local function newPlayerProtectionTick()
    if not protectionCanApply() then
        return
    end

    local ped =
        CMG.getPlayerPed()

    local playerId =
        CMG.getPlayerId()

    applyProtectionToPed(ped)

    -- Protected players also cannot hurt other players.
    SetPlayerMeleeWeaponDamageModifier(
        playerId,
        0.0
    )

    SetPlayerWeaponDamageModifier(
        playerId,
        0.0
    )

    disableProtectionCombatControls()

    local selectedWeapon =
        GetSelectedPedWeapon(ped)

    if isRealCombatWeapon(
        selectedWeapon
    ) then
        local now =
            GetGameTimer()

        if now
            - lastWeaponDisableRequestAt
            >= 2000 then

            lastWeaponDisableRequestAt =
                now

            -- Ask server to turn protection off early.
            TriggerServerEvent(
                "c50703eeb9"
            )
        end
    end

    if protectionEndsAt > 0
        and GetCloudTimeAsInt()
            >= protectionEndsAt then
        disableNewPlayerProtection()
    end
end

CMG.createThreadOnTick(
    newPlayerProtectionTick,
    "New Player Protection Tick"
)


TriggerEvent(
    "chat:addSuggestion",
    "/protectionoff",
    "Turn off new player protection early"
)


RegisterCommand(
    "protectionoff",
    function()
        if newPlayerProtectionActive then
            TriggerServerEvent(
                "c50703eeb9"
            )
        end
    end,
    false
)
