--[[
    LEVEL 1 BEGINNER GUIDE — Interceptconvoy
    =============================================

    File: cmg/prod/cfg/heists/client/cfg_interceptconvoy.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: configuration/data used by other scripts.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 47
      * Background threads: 3
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: 279175563c, a9469cd747, f41b06e9fc, 9d5eb52282
      * NUI callbacks: none found by static scan
      * Modules/config loaded: none found by static scan

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
----------- [[ UTILITIES ]] -----------

-- === HELPER FUNCTION: drawPlayerCount(info) ===
local function drawPlayerCount(info)
    local timerBars = CMG.createTimerBars()
    timerBars.push("~y~MEMBERS~w~", tostring(#info.players))
    timerBars.draw()
end

-- === HELPER FUNCTION: loadTrainModels(loadFlag) ===
local function loadTrainModels(loadFlag)
    local procedure = loadFlag and CMG.loadModel or SetModelAsNoLongerNeeded
    procedure(`freight`)
    procedure(`freightcar`)
    procedure(`freightcont1`)
    procedure(`freightcont2`)
    procedure(`freightgrain`)
    procedure(`freight`)
    procedure(`tankercar`)
end

-- === HELPER FUNCTION: getCurrentTrain() ===
local function getCurrentTrain()
    for _, vehicle in ipairs(CMG.getAllVehicles()) do
        if GetEntityModel(vehicle) == `freight` then
            return vehicle
        end
    end
    return 0
end

-- === HELPER FUNCTION: createTrainWorkaround(type, position, direction, isCompleteFn, createdFn) ===
local function createTrainWorkaround(type, position, direction, isCompleteFn, createdFn)
    DoScreenFadeOut(0)
    local origPos = GetEntityCoords(PlayerPedId(), true)
    SetEntityCoordsNoOffset(PlayerPedId(), position.x, position.y, position.z - 5.0, false, false, false)
    FreezeEntityPosition(PlayerPedId(), true)

    local train = 0
    while true do
        if DoesEntityExist(train) then
            DeleteMissionTrain(train)
        end
        train = CreateMissionTrain(type, position.x, position.y, position.z, direction)
        Citizen.Wait(2000)
        if isCompleteFn(train) then
            if createdFn then
                createdFn(train)
            end
            break
        end
    end

    SetEntityCoordsNoOffset(PlayerPedId(), origPos.x, origPos.y, origPos.z, false, false, false)
    FreezeEntityPosition(PlayerPedId(), false)
    DoScreenFadeIn(1000)
end

-- === HELPER FUNCTION: createTrainControlsScaleform() ===
local function createTrainControlsScaleform()
    local scaleform = RequestScaleformMovie("instructional_buttons")

    while not HasScaleformMovieLoaded(scaleform) do
        Citizen.Wait(0)
    end

    BeginScaleformMovieMethod(scaleform, "CLEAR_ALL")
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(scaleform, "SET_DATA_SLOT")
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamPlayerNameString("~INPUT_MOVE_DOWN_ONLY~")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringKeyboardDisplay("Brake")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(scaleform, "SET_DATA_SLOT")
    ScaleformMovieMethodAddParamInt(1)
    ScaleformMovieMethodAddParamPlayerNameString("~INPUT_DIVE~")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringKeyboardDisplay("Throttle Idle")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(scaleform, "SET_DATA_SLOT")
    ScaleformMovieMethodAddParamInt(2)
    ScaleformMovieMethodAddParamPlayerNameString("~INPUT_MOVE_UP_ONLY~")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringKeyboardDisplay("Throttle Forward")
    EndTextCommandScaleformString()
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(scaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(scaleform, "SET_BACKGROUND_COLOUR")
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamInt(80)
    EndScaleformMovieMethod()

    return scaleform
end

-- === HELPER FUNCTION: loadCollideCutsceneModels(info, loadFlag) ===
local function loadCollideCutsceneModels(info, loadFlag)
    local procedure = loadFlag and CMG.loadModel or SetModelAsNoLongerNeeded
    procedure(`cs_fbisuit_01`)

    for _, vehInfo in ipairs(info.collideCutscene.stageOne.vehicles) do
        procedure(vehInfo.model)
    end
end

-- === HELPER FUNCTION: moveToCollideStageTwo(info) ===
local function moveToCollideStageTwo(info)
    for _, vehInfo in ipairs(info.cutsceneVehicles) do
        if vehInfo.focus then
            AttachCamToEntity(info.camera, vehInfo.vehicle, -0.8, 3.12, 1.5, true)

            local rot = GetEntityRotation(vehInfo.vehicle, 2)
            SetCamRot(info.camera, rot.x, rot.y, rot.z, 2)

            SetEntityVisible(vehInfo.ped, false, false)
            break
        end
    end
    info.stage = 2
end

-- === HELPER FUNCTION: moveToCollideStageThree(info) ===
local function moveToCollideStageThree(info)
    for _, vehInfo in ipairs(info.cutsceneVehicles) do
        ClearPedTasks(vehInfo.ped)
        FreezeEntityPosition(vehInfo.vehicle, true)
    end

    local cutscene = info.collideCutscene.stageThree
    info.prevPos = GetEntityCoords(PlayerPedId(), true)
    SetEntityCoordsNoOffset(PlayerPedId(), cutscene.camPos.x, cutscene.camPos.y, cutscene.camPos.z, false, false, false)

    if info.hostPlayer == GetPlayerServerId(PlayerId()) then
        createTrainWorkaround(2, cutscene.trainPosition, cutscene.trainDirection, function(train)
            return DoesEntityExist(train) and NetworkGetEntityIsNetworked(train) and NetworkGetNetworkIdFromEntity(train) ~= 0
        end, function(train)
            print(string.format("Created train for collide stage (entity: %d)", train))
        end)
    end

    SetFocusPosAndVel(cutscene.trainPosition.x, cutscene.trainPosition.y, cutscene.trainPosition.z, 0.0, 0.0, 0.0)
    DetachCam(info.camera)
    SetCamCoord(info.camera, cutscene.camPos.x, cutscene.camPos.y, cutscene.camPos.z)

    info.stage = 3
end

-- === HELPER FUNCTION: onUpdateStageThree(info) ===
local function onUpdateStageThree(info)
    local train = getCurrentTrain()
    if train ~= 0 then
        PointCamAtEntity(info.camera, train, 0.0, 0.0, 0.0, true)
    end
end

-- === HELPER FUNCTION: moveToCollideStageFour(info) ===
local function moveToCollideStageFour(info)
    local targetPosition = info.collideCutscene.stageOne.targetPosition

    SetEntityCoordsNoOffset(PlayerPedId(), info.prevPos.x, info.prevPos.y, info.prevPos.z, false, false, false)
    info.prevPos = nil

    for _, vehInfo in ipairs(info.cutsceneVehicles) do
        FreezeEntityPosition(vehInfo.vehicle, false)
        TaskVehicleDriveToCoord(vehInfo.ped, vehInfo.vehicle, targetPosition.x, targetPosition.y, targetPosition.z, 20.0, 1.0, GetEntityModel(vehInfo.vehicle), 3, 5.0, 0.0)

        if vehInfo.focus then
            local pos = GetEntityCoords(vehInfo.vehicle)
            SetFocusPosAndVel(pos.x, pos.y, pos.z, 0.0, 0.0, 0.0)
            AttachCamToEntity(info.camera, vehInfo.vehicle, -0.8, 3.12, 1.5, true)
        end
    end

    info.stage = 4
end

-- === HELPER FUNCTION: moveToCollideStageFive(info) ===
local function moveToCollideStageFive(info)
    local cutscene = info.collideCutscene.stageFive

    for _, vehInfo in ipairs(info.cutsceneVehicles) do
        ClearPedTasksImmediately(vehInfo.ped)

        if vehInfo.focus then
            SetEntityVisible(vehInfo.ped, true, false)
            SetEntityHealth(vehInfo.ped, 0)

            for _ = 1, 5 do
                local pos = GetEntityCoords(vehInfo.vehicle, true)
                local x = (math.random() - 0.5 ) * 5.0
                local y = (math.random() - 0.5 ) * 5.0
                local z = (math.random() - 0.5 ) * 2.5
                AddExplosion(pos.x + x, pos.y + y, pos.z + z, 7, 1.0, true, false, 0.0)
            end
        end
    end

    StopCamPointing(info.camera)
    DetachCam(info.camera)
    SetCamCoord(info.camera, cutscene.camPos.x, cutscene.camPos.y, cutscene.camPos.z)
    SetCamRot(info.camera, cutscene.camRot.x, cutscene.camRot.y, cutscene.camRot.z, 2)

    info.objects = {}
    info.particles = {}

    for _, vehicle in ipairs(CMG.getAllVehicles()) do
        local model = GetEntityModel(vehicle)
        if IsThisModelATrain(model) then
            local pos = GetEntityCoords(vehicle, true)
            local velocity = GetEntityVelocity(vehicle)

            SetEntityVisible(vehicle, false, false)
            SetEntityCollision(vehicle, false, false)

            -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
            Citizen.CreateThread(function()
                Citizen.Wait(1000)
                if NetworkHasControlOfEntity(vehicle) then
                    DeleteEntity(vehicle)
                end
            end)

            local object = CreateObjectNoOffset(model, pos.x, pos.y, pos.z, false, false, false)
            SetEntityVelocity(object, velocity.x / 2.0, velocity.y / 2.0, velocity.z / 2.0)
            table.insert(info.objects, object)

            -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
            Citizen.CreateThread(function()
                CMG.loadPtfx("scr_trevor3")
                local fire = StartParticleFxLoopedOnEntity("scr_trev3_trailer_plume", object, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2.0, false, false, false)
                if info.particles then
                    table.insert(info.particles, fire)
                    Citizen.Wait(5000)

                    CMG.loadPtfx("scr_agencyheistb")
                    local smoke = StartParticleFxLoopedOnEntity("scr_env_agency3b_smoke", object, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 20.0, false, false, false)
                    if info.particles then
                        table.insert(info.particles, smoke)
                    else
                        StopParticleFxLooped(smoke, false)
                    end
                else
                    StopParticleFxLooped(fire, false)
                end
            end)
        end
    end

    ShakeCam(info.camera, "SMALL_EXPLOSION_SHAKE", 1.0)

    info.stage = 5
end

-- === HELPER FUNCTION: getFocusVehicleInfo(info) ===
local function getFocusVehicleInfo(info)
    for _, vehInfo in ipairs(info.cutsceneVehicles) do
        if vehInfo.focus then
            return vehInfo
        end
    end
end

-- === HELPER FUNCTION: shouldSwitchToStageFive(info) ===
local function shouldSwitchToStageFive(info)
    local vehInfo = getFocusVehicleInfo(info)
    if GetEntityHealth(vehInfo.vehicle) <= 0 or GetEntityHealth(vehInfo.ped) <= 0 then
        return true
    end
    return getCurrentTrain() == 0
end

-- === HELPER FUNCTION: deleteAiVehicles() ===
local function deleteAiVehicles()
    SetVehicleDensityMultiplierThisFrame(0.0)
    SetRandomVehicleDensityMultiplierThisFrame(0.0)
    SetParkedVehicleDensityMultiplierThisFrame(0.0)
    SetPedDensityMultiplierThisFrame(0.0)
    SetScenarioPedDensityMultiplierThisFrame(0.0, 0.0)

    for _, vehicle in ipairs(CMG.getAllVehicles()) do
        if NetworkGetEntityIsNetworked(vehicle) and NetworkHasControlOfEntity(vehicle) then
            local model = GetEntityModel(vehicle)
            if not IsThisModelATrain(model) and not IsEntityAMissionEntity(vehicle) then
                DeleteEntity(vehicle)
            end
        end
    end
end

-- === HELPER FUNCTION: onUpdateGenericAgent(ped) ===
local function onUpdateGenericAgent(ped)
    if GetScriptTaskStatus(ped, 0x2E85A751) == 7 then
        SetPedCombatMovement(ped, 2)
        SetRagdollBlockingFlags(ped, 1)
        SetPedDropsWeaponsWhenDead(ped, false)

        TaskCombatPed(ped, PlayerPedId(), 0, 16)
    end

    if GetPedRelationshipGroupHash(ped) ~= `GENERIC_AGENT` then
        SetPedRelationshipGroupHash(ped, `GENERIC_AGENT`)
        SetPedRelationshipGroupDefaultHash(ped, `GENERIC_AGENT`)
    end

    SetBlockingOfNonTemporaryEvents(ped, true)
end

-- === HELPER FUNCTION: ensureAgentHasBlip(ped) ===
local function ensureAgentHasBlip(ped)
    local pedBlip = GetBlipFromEntity(ped)
    if pedBlip == 0 then
        if not IsPedDeadOrDying(ped, true) then
            pedBlip = AddBlipForEntity(ped)
            SetBlipColour(pedBlip, 1)
            SetBlipScale(pedBlip, 0.5)
            SetBlipAsShortRange(pedBlip, true)
        end
    else
        if IsPedDeadOrDying(ped, true) then
           RemoveBlip(pedBlip)
        end
    end
end

-- === HELPER FUNCTION: onUpdateStandardAgent(ped) ===
local function onUpdateStandardAgent(ped)
    if NetworkHasControlOfEntity(ped) then
        onUpdateGenericAgent(ped)

        local _, weaponModel = GetCurrentPedWeapon(ped, 0,false)
        if weaponModel ~= `WEAPON_PISTOL` then
            GiveWeaponToPed(ped, `WEAPON_PISTOL`, 1000, false, true)
        end
    end

    ensureAgentHasBlip(ped)
end

-- === HELPER FUNCTION: onUpdateArmedAgent(ped) ===
local function onUpdateArmedAgent(ped)
    if NetworkHasControlOfEntity(ped) then
        onUpdateGenericAgent(ped)

        local _, weaponModel = GetCurrentPedWeapon(ped, 0, false)
        if weaponModel ~= `WEAPON_CARBINERIFLE` then
            GiveWeaponToPed(ped, `WEAPON_CARBINERIFLE`, 1000, false, true)
        end
    end

    ensureAgentHasBlip(ped)
end

-- === HELPER FUNCTION: onUpdateFiremanAgent(ped) ===
local function onUpdateFiremanAgent(ped)
    if NetworkHasControlOfEntity(ped) then
        onUpdateGenericAgent(ped)

        local _, weaponModel = GetCurrentPedWeapon(ped, 0, false)
        if weaponModel ~= `WEAPON_BATTLEAXE` then
            GiveWeaponToPed(ped, `WEAPON_BATTLEAXE`, 1, false, true)
        end
    end

    ensureAgentHasBlip(ped)
end

-- === HELPER FUNCTION: onUpdateWorldPeds() ===
local function onUpdateWorldPeds()
    for _, ped in ipairs(GetGamePool("CPed")) do
        if NetworkGetEntityIsNetworked(ped) then
            local type = Entity(ped).state.type

            if type == "STANDARD_AGENT" then
                onUpdateStandardAgent(ped)
            elseif type == "ARMED_AGENT" then
                onUpdateArmedAgent(ped)
            elseif type == "FIREMAN_AGENT" then
                onUpdateFiremanAgent(ped)
            end
        end
    end
end

-- === HELPER FUNCTION: startStealingDevice(info) ===
local function startStealingDevice(info)
    -- Beginner: sends the "279175563c" event to the server.
    TriggerServerEvent("279175563c", true)
    info.stealingDevicePlayer = GetPlayerServerId(PlayerId())
    TaskStartScenarioInPlace(PlayerPedId(), "CODE_HUMAN_MEDIC_TEND_TO_DEAD", 0, true)
end

-- === HELPER FUNCTION: exitStealingDevice(info) ===
local function exitStealingDevice(info)
    if info.stealingDevicePlayer == GetPlayerServerId(PlayerId()) then
        -- Beginner: sends the "279175563c" event to the server.
        TriggerServerEvent("279175563c", false)
        ClearPedTasksImmediately(PlayerPedId())
    end
    info.stealingDevicePlayer = nil
end

----------- [[ STAGE: DRIVE_TO_TRACK ]] -----------

-- === HELPER FUNCTION: initDriveToTrack(info) ===
local function initDriveToTrack(info)
    loadTrainModels(true)
    loadCollideCutsceneModels(info, true)

    info.trackBlip = AddBlipForCoord(info.trackPosition.x, info.trackPosition.y, info.trackPosition.z)
    SetBlipRoute(info.trackBlip, true)
    TriggerMusicEvent("AH3B_EVADE_COPS_RT")
end

-- === HELPER FUNCTION: runDriveToTrack(info) ===
local function runDriveToTrack(info)
    drawPlayerCount(info)

    drawNativeText("Drive to the ~y~train crossing~w~")
end

-- === HELPER FUNCTION: cleanDriveToTrack(info) ===
local function cleanDriveToTrack(info)
    RemoveBlip(info.trackBlip)
    info.trackBlip = nil
end

----------- [[ STAGE: BLOCK_TRACK ]] -----------

-- === HELPER FUNCTION: initBlockTrack(info) ===
local function initBlockTrack(info)
    info.eventBlockedTracked = RegisterHeistEvent("a9469cd747", function(hasBlocked)
        print(string.format("Received track blocked (hasBlocked: %s)", hasBlocked and "true" or "false"))
        info.trackBlocked = hasBlocked
    end)
    info.trackBlocked = false

    info.trackBlip = AddBlipForCoord(info.trackPosition.x, info.trackPosition.y, info.trackPosition.z)
    SetBlipRoute(info.trackBlip, true)
end

-- === HELPER FUNCTION: runBlockTrack(info) ===
local function runBlockTrack(info)
    drawPlayerCount(info)

    if info.trackBlocked then
        drawNativeText("Waiting for members to arrive to the location...")
    else
        drawNativeText("Block the ~y~track crossing~w~ with your vehicle")

        local playerVehicle = GetVehiclePedIsUsing(PlayerPedId())
        if playerVehicle ~= 0 and GetEntitySpeed(playerVehicle) == 0.0 then
            local boundOne = info.trackBlockBounds[1]
            local boundTwo = info.trackBlockBounds[2]
            if IsEntityInArea(playerVehicle, boundOne.x, boundOne.y, boundOne.z, boundTwo.x, boundTwo.y, boundTwo.z, false, false, 0) then
                FreezeEntityPosition(playerVehicle, true)
                -- Beginner: sends the "a9469cd747" event to the server.
                TriggerServerEvent("a9469cd747", true)
            end
        end
    end
end

-- === HELPER FUNCTION: cleanBlockTrack(info) ===
local function cleanBlockTrack(info)
    RemoveEventHandler(info.eventBlockedTracked)
    info.eventBlockedTracked = nil
    info.trackBlocked = nil

    RemoveBlip(info.trackBlip)
    info.trackBlip = nil
end

----------- [[ STAGE: TRAIN_COMING_CUTSCENE ]] -----------

-- === HELPER FUNCTION: initTrainComingCutscene(info) ===
local function initTrainComingCutscene(info)
    if info.hostPlayer == GetPlayerServerId(PlayerId()) then
        createTrainWorkaround(2, info.trainCutscene.position, info.trainCutscene.direction, function(train)
            return DoesEntityExist(train) and NetworkGetEntityIsNetworked(train) and NetworkGetNetworkIdFromEntity(train) ~= 0
        end, function(train)
            print(string.format("Created train for train coming stage (entity: %d)", train))
        end)
    end

    SetPlayerControl(PlayerId(), false, 0)
    info.prevPos = GetEntityCoords(PlayerPedId(), true)
    local newPos = info.trainCutscene.position
    SetEntityCoordsNoOffset(PlayerPedId(), newPos.x, newPos.y, newPos.z, false, false, false)

    local camPos = info.trainCutscene.cameraPosition
    local camRot = info.trainCutscene.cameraRotation
    info.camera = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", camPos.x, camPos.y, camPos.z, camRot.x, camRot.y, camRot.z, 70.0, false, 2)
    SetCamActive(info.camera, true)
    RenderScriptCams(true, false, 0, false, false)
    ShakeCam(info.camera, "DRUNK_SHAKE", 1.0)

    CMG.hideAllDisplays("bankheist_setup")
    SetFocusPosAndVel(camPos.x, camPos.y, camPos.z, 0.0, 0.0, 0.0)

    info.isFocused = false
end

-- === HELPER FUNCTION: runTrainComingCutscene(info) ===
local function runTrainComingCutscene(info)
    drawPlayerCount(info)

    local train = getCurrentTrain()
    if train ~= 0 and NetworkHasControlOfEntity(train) then
        pcall(function()
            SetTrainSpeed(train, 25.0)
            SetTrainCruiseSpeed(train, 25.0)
        end)
    end

    if not info.isFocused and GetGameTimer() - info.lastInit > 5000 then
        if train ~= 0 then
            PointCamAtEntity(info.camera, train, 0.0, 0.0, 0.0, true)
            info.isFocused = true
        end
    end
end

-- === HELPER FUNCTION: cleanTrainComingCutscene(info) ===
local function cleanTrainComingCutscene(info)
    local train = getCurrentTrain()
    if train ~= 0 and NetworkHasControlOfEntity(train) then
        DeleteMissionTrain(train)
    end

    SetPlayerControl(PlayerId(), true, 0)
    SetEntityCoordsNoOffset(PlayerPedId(), info.prevPos.x, info.prevPos.y, info.prevPos.z, false, false, false)

    SetCamActive(info.camera, true)
    RenderScriptCams(false, false, 0, false, false)
    DestroyCam(info.camera, false)
    info.camera = nil

    CMG.showAllDisplays("bankheist_setup")
    ClearFocus();

    info.isFocused = nil
end

----------- [[ STAGE: TRAIN_SLOWING ]] -----------

-- === HELPER FUNCTION: initTrainSlowing(info) ===
local function initTrainSlowing(info)
    if info.hostPlayer == GetPlayerServerId(PlayerId()) then
        createTrainWorkaround(2, info.trainSlowing.position, info.trainSlowing.direction, function(train)
            return DoesEntityExist(train) and NetworkGetEntityIsNetworked(train) and NetworkGetNetworkIdFromEntity(train) ~= 0
        end, function(train)
            info.train = train
            local netId = NetworkGetNetworkIdFromEntity(train)
            -- Beginner: sends the "f41b06e9fc" event to the server.
            TriggerServerEvent("f41b06e9fc", netId)
            print(string.format("Alerting server of train create (entity: %d network: %d)", train, netId))
        end)
    end

    info.eventSetNetworkTrain = RegisterHeistEvent("f41b06e9fc", function(netId)
        print(string.format("Received set network train (network: %d)", netId))
        info.trainNetId = netId
    end)

    info.trainNetId = 0
end

-- === HELPER FUNCTION: runTrainSlowing(info) ===
local function runTrainSlowing(info)
    drawPlayerCount(info)

    if not info.train and NetworkDoesNetworkIdExist(info.trainNetId) then
        info.train = NetworkGetEntityFromNetworkId(info.trainNetId)
    end

    if info.train and NetworkHasControlOfEntity(info.train) then
        local speed = #(GetEntityCoords(info.train, true) - info.trainSlowing.stopPosition) / 5.0
        if speed < 1.0 then
            speed = 0.0
        end

        pcall(function()
            local trainVehicle = info.train
            ---@cast trainVehicle Vehicle
            SetTrainSpeed(trainVehicle, speed)
            SetTrainCruiseSpeed(trainVehicle, speed)
        end)
    end

    if info.train and GetBlipFromEntity(info.train) == 0 then
        local blip = AddBlipForEntity(info.train)
        SetBlipSprite(blip, 795)
        SetBlipColour(blip, 3)
    end

    drawNativeText("Wait for the ~b~train~w~ to come to an emergency stop")
end

-- === HELPER FUNCTION: cleanTrainSlowing(info) ===
local function cleanTrainSlowing(info)
    RemoveEventHandler(info.eventSetNetworkTrain)
    info.eventSetNetworkTrain = nil
end

----------- [[ STAGE: HIJACK_TRAIN ]] -----------

-- === HELPER FUNCTION: runHijackTrain(info) ===
local function runHijackTrain(info)
    drawPlayerCount(info)
    drawNativeText("Steal the ~b~train~w~ from the train driver")

    if info.train and NetworkHasControlOfEntity(info.train) then
        pcall(function()
            SetTrainSpeed(info.train, 0.0)
            SetTrainCruiseSpeed(info.train, 0.0)
        end)
    end

    if info.train and DoesEntityExist(info.train) then
        local driverPed = GetPedInVehicleSeat(info.train, 0)
        local driverHealth = (driverPed == 0) and 200 or GetEntityHealth(driverPed)

        local trainPosition = GetEntityCoords(info.train, true)
        local playerPos = GetEntityCoords(PlayerPedId(), true)
        if #(trainPosition - playerPos) < 10.0 and IsPedOnVehicle(PlayerPedId()) then
            if driverHealth <= 0 or not DoesEntityExist(driverPed) then
                drawNativeNotification("Press ~INPUT_ENTER~ to drive the train")

                DisableControlAction(0, 23, true)
                if IsDisabledControlJustPressed(0, 23) then
                    SetPedIntoVehicle(PlayerPedId(), info.train, -1)
                    info.isTrainDriver = true
                end
            end
        end

        if driverHealth <= 0 or not DoesEntityExist(driverPed) then
            SetFakeWantedLevel(1)
        end
    end
end

----------- [[ STAGE: DRIVE_TRAIN ]] -----------

-- === HELPER FUNCTION: initDriveTrain(info) ===
local function initDriveTrain(info)
    info.eventSetTrainState = RegisterHeistEvent("9d5eb52282", function(state)
        print(string.format("Received set train state (state: %s)", state))
        info.trainState = state
    end)

    info.trainState = "SLOWING"

    info.buttonScaleform = createTrainControlsScaleform()

    info.destinationBlip = AddBlipForCoord(info.collisionTargetPosition.x, info.collisionTargetPosition.y, info.collisionTargetPosition.z)
    SetBlipSprite(info.destinationBlip, 67)
    SetBlipColour(info.destinationBlip, 5)

    for _, vehicle in ipairs(CMG.getAllVehicles()) do
        if NetworkHasControlOfEntity(vehicle) then
            FreezeEntityPosition(vehicle, false)
        end
    end
end

-- === HELPER FUNCTION: runDriveTrain(info) ===
local function runDriveTrain(info)
    drawPlayerCount(info)

    for _, vehicle in ipairs(CMG.getAllVehicles()) do
        SetEntityProofs(vehicle, true, true, true, true, true, true, true, true)
        SetVehicleExplodesOnHighExplosionDamage(vehicle, false)
    end

    if info.train and DoesEntityExist(info.train) then
        -- Train driver may not necessarily be the train entity owner because OneSync assumes trains cant have drivers...
        if NetworkHasControlOfEntity(info.train) then
            if not info.trainSpeed then
                info.trainSpeed = GetEntitySpeed(info.train)
            end

            if info.trainState == "SLOWING" then
                info.trainSpeed = info.trainSpeed - (5.0 * GetFrameTime())
                if info.trainSpeed < 0.0 then
                    info.trainSpeed = 0.0
                end
            elseif info.trainState == "INCREASING" then
                info.trainSpeed = info.trainSpeed + (1.0 * GetFrameTime())
                if info.trainSpeed > 67.0 then
                    info.trainSpeed = 67.0
                end
            end

            pcall(function()
                SetTrainSpeed(info.train, info.trainSpeed)
                SetTrainCruiseSpeed(info.train, info.trainSpeed)
            end)
        else
            info.trainSpeed = nil
        end

        if info.isTrainDriver then
            if GetPedInVehicleSeat(info.train, -1) == 0 then
                SetPedIntoVehicle(PlayerPedId(), info.train, -1)
            else
                DrawScaleformMovieFullscreen(info.buttonScaleform, 255, 255, 255, 255, 0)

                if not IsPauseMenuActive() then
                    if info.train ~= "INCREASING" then
                        DisableControlAction(0, 32, true)
                        if IsDisabledControlJustPressed(0, 32) then
                            -- Beginner: sends the "9d5eb52282" event to the server.
                            TriggerServerEvent("9d5eb52282", "INCREASING")
                        end
                    end

                    if info.train ~= "STEADY" then
                        DisableControlAction(0, 55, true)
                        if IsDisabledControlJustPressed(0, 55) then
                            -- Beginner: sends the "9d5eb52282" event to the server.
                            TriggerServerEvent("9d5eb52282", "STEADY")
                        end
                    end

                    if info.train ~= "SLOWING" then
                        DisableControlAction(0, 33, true)
                        if IsDisabledControlJustPressed(0, 33) then
                            -- Beginner: sends the "9d5eb52282" event to the server.
                            TriggerServerEvent("9d5eb52282", "SLOWING")
                        end
                    end
                end

                drawNativeText("Drive the ~b~train~w~ to the ~y~collision~w~ point")
                DisableControlAction(0, 23, true)
                DisableControlAction(0, 75, true)
            end
        else
            drawNativeText("Waiting for the driver to drive the ~b~train~w~ to the ~y~collision~w~ point")
        end

        if not info.isTrainDriver then
            local speed = GetEntitySpeed(info.train)
            if speed > 10.0 then
                local carriage = GetTrainCarriage(info.train, 1)
                if carriage ~= 0 and not IsPedOnVehicle(PlayerPedId()) and not IsPedJumping(PlayerPedId()) then
                    local carriagePos = GetEntityCoords(carriage, true)
                    SetEntityCoordsNoOffset(PlayerPedId(), carriagePos.x, carriagePos.y, carriagePos.z + 1.0, false, false, false)
                end
            end
        end
    end

    local object_1 = GetClosestObjectOfType(-212.79, 6062.0, 32.19, 5.0, 2229275927, false, false, false)
    if DoesEntityExist(object_1) then
        FreezeEntityPosition(object_1, true)
        SetEntityCollision(object_1, false, false)
    end

    local object_2 = GetClosestObjectOfType(-212.79, 6062.0, 32.19, 5.0, -2065691369, false, false, false)
    if DoesEntityExist(object_2) then
        FreezeEntityPosition(object_2, true)
        SetEntityCollision(object_2, false, false)
    end
end

-- === HELPER FUNCTION: cleanDriveTrain(info) ===
local function cleanDriveTrain(info)
    RemoveEventHandler(info.eventSetTrainState)
    info.eventSetTrainState = nil

    SetScaleformMovieAsNoLongerNeeded(info.buttonScaleform)
    info.buttonScaleform = nil

    RemoveBlip(info.destinationBlip)
    info.destinationBlip = nil

    for _, vehicle in ipairs(CMG.getAllVehicles()) do
        if NetworkHasControlOfEntity(vehicle) then
            local model = GetEntityModel(vehicle)
            if IsThisModelATrain(model) then
                DeleteEntity(vehicle)
            end
        end
    end

    info.train = nil
    info.trainNetId = nil
    info.isTrainDriver = nil
end

----------- [[ STAGE: TRAIN_COLLIDE_CUTSCENE ]] -----------

-- === HELPER FUNCTION: initTrainCollideCutscene(info) ===
local function initTrainCollideCutscene(info)
    CMG.hideAllDisplays("bankheist_setup")
    SetPlayerControl(PlayerId(), false, 0)

    local cutscene = info.collideCutscene.stageOne

    local playerPed = PlayerPedId()
    SetEntityCoordsNoOffset(playerPed, cutscene.playerTeleportPosition.x, cutscene.playerTeleportPosition.y, cutscene.playerTeleportPosition.z, false, false, false)

    for _, player in ipairs(GetActivePlayers()) do
        local ped = GetPlayerPed(player)
        SetEntityVisible(ped, false, false)
    end

    info.cutsceneVehicles = {}

    for _, vehInfo in ipairs(cutscene.vehicles) do
        local vehicle = CMG.spawnVehicle(vehInfo.model, vehInfo.position.x, vehInfo.position.y, vehInfo.position.z, vehInfo.position.w, false, false, true)
        local ped = CreatePedInsideVehicle(vehicle, 1, `cs_fbisuit_01`, -1, false, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        TaskVehicleDriveToCoord(ped, vehicle, cutscene.targetPosition.x, cutscene.targetPosition.y, cutscene.targetPosition.z, 20.0, 1.0, vehInfo.model, 3, 5.0, 0.0)
        SetVehicleSiren(vehicle, true)

        if vehInfo.focus then
            SetFocusPosAndVel(cutscene.targetPosition.x, cutscene.targetPosition.y, cutscene.targetPosition.z, 0.0, 0.0, 0.0)
        end

        table.insert(info.cutsceneVehicles, { vehicle = vehicle, ped = ped, focus = vehInfo.focus or false })
    end

    local cam = cutscene.camera
    info.camera = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", cam.pos.x, cam.pos.y, cam.pos.z, cam.rot.x, cam.rot.y, cam.rot.z, 70.0, false, 2)
    SetCamActive(info.camera, true)
    RenderScriptCams(true, false, 0, false, false)

    info.stage = 1
end

-- === HELPER FUNCTION: runTrainCollideCutscene(info) ===
local function runTrainCollideCutscene(info)
    local currentTime = GetGameTimer()

    if info.stage == 1 then
        for _, vehInfo in ipairs(info.cutsceneVehicles) do
            SetVehicleForwardSpeed(vehInfo.vehicle, 20.0)
        end

        if currentTime - info.lastInit >= 5000 then
            moveToCollideStageTwo(info)
        end
    end

    if info.stage == 2 then
        if currentTime - info.lastInit >= 8000 then
            moveToCollideStageThree(info)
        end
    end

    if info.stage == 3 then
        local train = getCurrentTrain()
        if train ~= 0 and NetworkHasControlOfEntity(train) then
            pcall(function()
                SetTrainSpeed(train, 67.0)
                SetTrainCruiseSpeed(train, 67.0)
            end)
        end

        onUpdateStageThree(info)

        if currentTime - info.lastInit >= 15000 then
            moveToCollideStageFour(info)
        end
    end

    if info.stage == 4 then
        local train = getCurrentTrain()
        if train ~= 0 then
            if NetworkHasControlOfEntity(train) then
                pcall(function()
                    SetTrainSpeed(train, 67.0)
                    SetTrainCruiseSpeed(train, 67.0)
                end)
            end

            local cutscene = info.collideCutscene.stageFour

            local trainPos = GetEntityCoords(train, true)
            local trainSpeed = GetEntitySpeed(train)
            -- Get the distance until train collides with convoy
            local distToTrainCollide = #(trainPos - cutscene.switchPosition)
            -- Calculate how long it will take for the train to collide
            local timeToTrainCollide = (distToTrainCollide / trainSpeed)

            local focusInfo = getFocusVehicleInfo(info)
            local focusPos = GetEntityCoords(focusInfo.vehicle, true)
            -- Get the distance until the convoy collides with train
            local distToFocusCollide = #(focusPos - cutscene.switchPosition)
            -- Calculate speed the convoy will need to travel at to hit at the same time
            local speedNeededToCollide = (distToFocusCollide / timeToTrainCollide)

            for _, vehInfo in ipairs(info.cutsceneVehicles) do
                SetVehicleForwardSpeed(vehInfo.vehicle, speedNeededToCollide)
            end

            if distToTrainCollide < 20.0 or shouldSwitchToStageFive(info) then
                moveToCollideStageFive(info)
            end
        end
    end

    deleteAiVehicles()
end

-- === HELPER FUNCTION: cleanTrainCollideCutscene(info) ===
local function cleanTrainCollideCutscene(info)
    for _, vehInfo in ipairs(info.cutsceneVehicles) do
        DeleteEntity(vehInfo.vehicle)
        DeleteEntity(vehInfo.ped)
    end
    info.cutsceneVehicles = nil

    for _, particle in ipairs(info.particles) do
        StopParticleFxLooped(particle, false)
    end
    info.particles = nil

    for _, object in ipairs(info.objects) do
        DeleteEntity(object)
    end
    info.objects = nil

    ClearFocus()
    SetCamActive(info.camera, false)
    RenderScriptCams(false, false, 0, false, false)
    DestroyCam(info.camera, false)
    info.camera = nil

    DoScreenFadeOut(0)

    for _, player in ipairs(GetActivePlayers()) do
        local ped = GetPlayerPed(player)
        SetEntityVisible(ped, true, false)
    end

    SetPlayerControl(PlayerId(), true, 0)
    CMG.showAllDisplays("bankheist_setup")
end

----------- [[ STAGE: LOOT_CONVOY_CONTENTS ]] -----------

-- === HELPER FUNCTION: initLootConvoyContents(info) ===
local function initLootConvoyContents(info)
    local position = info.afterCollide.spawnPosition + vector3((math.random() - 0.5) * 10.0, (math.random() - 0.5) * 10.0, 0.0)
    SetEntityCoordsNoOffset(PlayerPedId(), position.x, position.y, position.z, true, false, false)
    SetPlayerControl(PlayerId(), true, 0)

    Citizen.Wait(3000)
    DoScreenFadeIn(1500)

    SetFakeWantedLevel(4)

    AddRelationshipGroup("GENERIC_AGENT")
    SetRelationshipBetweenGroups(0, `GENERIC_AGENT`, `GENERIC_AGENT`)

    local myGroup = GetPedRelationshipGroupHash(PlayerPedId())
    SetRelationshipBetweenGroups(5, `GENERIC_AGENT`, myGroup)
    SetRelationshipBetweenGroups(5, myGroup, `GENERIC_AGENT`)

    for _, vehicle in ipairs(CMG.getAllVehicles()) do
        if NetworkGetEntityIsNetworked(vehicle) then
            local type = Entity(vehicle).state.type
            if type and type == "STATIC_CONVOY_VEHICLE" then
                local hasControl = NetworkHasControlOfEntity(vehicle)
                if hasControl then
                    SetVehicleEngineOn(vehicle, true, true, false)
                    SetVehicleSiren(vehicle, true)
                end

                if Entity(vehicle).state.focus then
                    local vehPos = GetEntityCoords(vehicle, true)
                    AddExplosion(vehPos.x, vehPos.y, vehPos.z, 4, 1.0, true, false, 1.0)

                    info.focusBlip = AddBlipForCoord(vehPos.x, vehPos.y, vehPos.z)
                    SetBlipSprite(info.focusBlip, 67)
                    SetBlipColour(info.focusBlip, 5)

                    if hasControl then
                        SetEntityHealth(vehicle, 0)
                        SetVehicleEngineHealth(vehicle, -1.0)
                    end

                    info.focusEntity = vehicle
                    info.focusNetId = NetworkGetNetworkIdFromEntity(vehicle)
                end
            end
        end
    end

    info.particles = {}

    for _, object in ipairs(GetGamePool("CObject")) do
        if NetworkGetEntityIsNetworked(object) then
            local type = Entity(object).state.type
            if type and type == "STATIC_TRAIN_OBJECT" then
                if NetworkHasControlOfEntity(object) then
                    local heading = Entity(object).state.heading
                    SetEntityHeading(object, heading)
                    FreezeEntityPosition(object, true)
                    PlaceObjectOnGroundProperly(object)
                end

                -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
                Citizen.CreateThread(function()
                    local pos = GetEntityCoords(object, true)

                    CMG.loadPtfx("scr_trevor3")
                    local fire = StartParticleFxLoopedAtCoord("scr_trev3_trailer_plume", pos.x, pos.y, pos.z, 0.0, 0.0, 0.0, 2.0, false, false, false, false)
                    table.insert(info.particles, fire)

                    CMG.loadPtfx("scr_agencyheistb")
                    local smoke = StartParticleFxLoopedAtCoord("scr_env_agency3b_smoke", pos.x, pos.y, pos.z, 0.0, 0.0, 0.0, 20.0, false, false, false, false)
                    table.insert(info.particles, smoke)
                end)
            end
        end
    end

    info.eventStealingDevice = RegisterHeistEvent("279175563c", function(playerServerId)
        print(string.format("Received stealing device player (server: %d)", playerServerId or 0))
        info.stealingDevicePlayer = playerServerId
    end)
end

-- === HELPER FUNCTION: runLootConvoyContents(info) ===
local function runLootConvoyContents(info)
    onUpdateWorldPeds()
    local convoyLootHudBars = CMG.createTimerBars()
    convoyLootHudBars.push("~y~MEMBERS~w~", tostring(#info.players))

    if GetGameTimer() - info.lastInit > 20000 then
        if DoesEntityExist(info.focusEntity) then
            if not info.stealingDevicePlayer then
                local playerPos = GetEntityCoords(PlayerPedId(), true)
                local vehPos = GetEntityCoords(info.focusEntity, true)
                if #(playerPos - vehPos) < 5.0 then
                    drawNativeNotification("Press ~INPUT_PICKUP~ to start stealing")
                    DisableControlAction(0, 38, true)
                    if IsDisabledControlJustPressed(0, 38) then
                        startStealingDevice(info)
                    end
                end
            end
        else
            if NetworkDoesEntityExistWithNetworkId(info.focusNetId) then
                info.focusEntity = NetworkGetEntityFromNetworkId(info.focusNetId)
            end
        end

        if info.stealingDevicePlayer then
            local playerIndex = GetPlayerFromServerId(info.stealingDevicePlayer)
            if playerIndex ~= -1 then
                local name = CMG.getPlayerName(playerIndex)
                convoyLootHudBars.push("~b~STEALING~w~", name)
            end
        end

        drawNativeText("Steal the thermite devices from the ~y~convoy vehicle~w~")
    else
        drawNativeText("Fight off ~y~armed police agents~w~ surrounding the convoy")
    end
    convoyLootHudBars.draw()
end

-- === HELPER FUNCTION: cleanLootConvoyContents(info) ===
local function cleanLootConvoyContents(info)
    RemoveBlip(info.focusBlip)
    info.focusBlip = nil

    RemoveEventHandler(info.eventStealingDevice)
    info.eventStealingDevice = nil

    exitStealingDevice(info)
end

----------- [[ STAGE: RETURN_TO_FACTORY ]] -----------

-- === HELPER FUNCTION: initReturnToFactory(info) ===
local function initReturnToFactory(info)
    info.exitBlip = AddBlipForCoord(info.lestersFactoryPosition.x, info.lestersFactoryPosition.y, info.lestersFactoryPosition.z)
    SetBlipRoute(info.exitBlip, true)

    info.vehicleBlips = {}
    for _, vehicle in ipairs(CMG.getAllVehicles()) do
        if IsVehicleDriveable(vehicle, false) and not IsEntityDead(vehicle) and GetEntityHealth(vehicle) > 0 then
            local blip = AddBlipForEntity(vehicle)
            SetBlipSprite(blip, 326)
            SetBlipColour(blip, 3)
            table.insert(info.vehicleBlips, blip)
        end
    end
end

-- === HELPER FUNCTION: runReturnToFactory(info) ===
local function runReturnToFactory(info)
    onUpdateWorldPeds()
    drawPlayerCount(info)

    drawNativeText("Return to the ~y~factory~w~")
end

-- === HELPER FUNCTION: cleanReturnToFactory(info) ===
local function cleanReturnToFactory(info)
    for _, blip in ipairs(info.vehicleBlips) do
        RemoveBlip(blip)
    end
    info.vehicleBlips = nil

    RemoveBlip(info.exitBlip)
    info.exitBlip = nil
end

----------- [[ CONFIGURATION ]] -----------

local heist = {}

heist.stages = {
    {
        name = "DRIVE_TO_TRACK",
        init = initDriveToTrack,
        run = runDriveToTrack,
        clean = cleanDriveToTrack
    },
    {
        name = "BLOCK_TRACK",
        init = initBlockTrack,
        run = runBlockTrack,
        clean = cleanBlockTrack
    },
    {
        name = "TRAIN_COMING_CUTSCENE",
        init = initTrainComingCutscene,
        run = runTrainComingCutscene,
        clean = cleanTrainComingCutscene
    },
    {
        name = "TRAIN_SLOWING",
        init = initTrainSlowing,
        run = runTrainSlowing,
        clean = cleanTrainSlowing
    },
    {
        name = "HIJACK_TRAIN",
        run = runHijackTrain
    },
    {
        name = "DRIVE_TRAIN",
        init = initDriveTrain,
        run = runDriveTrain,
        clean = cleanDriveTrain
    },
    {
        name = "TRAIN_COLLIDE_CUTSCENE",
        init = initTrainCollideCutscene,
        run = runTrainCollideCutscene,
        clean = cleanTrainCollideCutscene
    },
    {
        name = "LOOT_CONVOY_CONTENTS",
        init = initLootConvoyContents,
        run = runLootConvoyContents,
        clean = cleanLootConvoyContents
    },
    {
        name = "RETURN_TO_FACTORY",
        init = initReturnToFactory,
        run = runReturnToFactory,
        clean = cleanReturnToFactory,
        isFinishStage = true
    }
}

heist.finish = function(info)
    TriggerMusicEvent("BST_STOP")
    RemoveRelationshipGroup(`GENERIC_AGENT`)
    SetFakeWantedLevel(0)

    if info.particles then
        for _, particle in ipairs(info.particles) do
            StopParticleFxLooped(particle, false)
        end
        info.particles = nil
    end

    RemoveNamedPtfxAsset("scr_trevor3")
    RemoveNamedPtfxAsset("scr_agencyheistb")

    loadTrainModels(false)
    loadCollideCutsceneModels(info, false)
end

return heist
