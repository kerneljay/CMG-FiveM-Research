----------- [[ UTILITIES ]] -----------

local function drawPlayerCount(info)
    local timerBars = CMG.createTimerBars()
    timerBars.push("~y~MEMBERS~w~", tostring(#info.players))
    timerBars.draw()
end

local function SetBoatRemainsAnchoredWhilePlayerIsDriver(vehicleIndex, forcePlayerBoatAnchorFlag)
	Citizen.InvokeNative(0x577f790cb611bd49, vehicleIndex, forcePlayerBoatAnchorFlag)
end

local function ensureSecurityHasBlip(ped)
    local pedBlip = GetBlipFromEntity(ped)
    if pedBlip == 0 then
        if not IsPedDeadOrDying(ped, true) then
            pedBlip = AddBlipForEntity(ped)
            SetBlipColour(pedBlip, 1)
            SetBlipScale(pedBlip, 0.5)
        end
    else
        if IsPedDeadOrDying(ped, true) then
           RemoveBlip(pedBlip)
        end
    end
end

local setupNpcAccuracy = 22
local setupNpcCombatAbility = 0
local setupNpcShootRate = 35

local function applySetupCombatDifficulty(ped)
    if Entity(ped).state.setupCombatTuned then
        return
    end
    SetPedAccuracy(ped, setupNpcAccuracy)
    SetPedCombatAbility(ped, setupNpcCombatAbility)
    SetPedShootRate(ped, setupNpcShootRate)
    Entity(ped).state.setupCombatTuned = true
end

local function onUpdateSecurity(ped)
    if NetworkHasControlOfEntity(ped) then
        applySetupCombatDifficulty(ped)
        if GetScriptTaskStatus(ped, 0x2E85A751) == 7 then
            SetPedCombatMovement(ped, 1)
            SetRagdollBlockingFlags(ped, 1)
            SetPedDropsWeaponsWhenDead(ped, false)

            TaskCombatPed(ped, PlayerPedId(), 0, 16)
        end

        local _, weaponModel = GetCurrentPedWeapon(ped, 0, false)
        if weaponModel ~= `WEAPON_PISTOL` then
            GiveWeaponToPed(ped, `WEAPON_PISTOL`, 1000, false, true)
        end

        if GetPedRelationshipGroupHash(ped) ~= `SETUP_ATTACK` then
            SetPedRelationshipGroupHash(ped, `SETUP_ATTACK`)
            SetPedRelationshipGroupDefaultHash(ped, `SETUP_ATTACK`)
        end

        SetBlockingOfNonTemporaryEvents(ped, true)
    end
    ensureSecurityHasBlip(ped)
end

local function onUpdateStaff(ped)
    if NetworkHasControlOfEntity(ped) then
        applySetupCombatDifficulty(ped)
        if GetScriptTaskStatus(ped, 0x2E85A751) == 7 then
            SetPedCombatMovement(ped, 1)
            SetRagdollBlockingFlags(ped, 1)
            SetPedDropsWeaponsWhenDead(ped, false)

            TaskCombatPed(ped, PlayerPedId(), 0, 16)
        end

        local _, weaponModel = GetCurrentPedWeapon(ped, 0, false)
        if weaponModel ~= `WEAPON_PISTOL` then
            GiveWeaponToPed(ped, `WEAPON_PISTOL`, 1000, false, true)
        end

        if GetPedRelationshipGroupHash(ped) ~= `SETUP_ATTACK` then
            SetPedRelationshipGroupHash(ped, `SETUP_ATTACK`)
            SetPedRelationshipGroupDefaultHash(ped, `SETUP_ATTACK`)
        end

        SetBlockingOfNonTemporaryEvents(ped, true)
    end
    ensureSecurityHasBlip(ped)
end

local heliAttackOrbitRadius = 75.0
local heliAttackHeight = 28.0

local function getHeliFromPedState(ped)
    local heliNetId = Entity(ped).state.heliNetId
    if not heliNetId or not NetworkDoesNetworkIdExist(heliNetId) or not NetworkDoesEntityExistWithNetworkId(heliNetId) then
        return 0
    end
    return NetworkGetEntityFromNetworkId(heliNetId)
end

local function onUpdateHeliVehicle(helicopter, pilotPed)
    if helicopter == 0 or not DoesEntityExist(helicopter) then
        return
    end
    local isPlaneOrPilotDead = IsEntityDead(helicopter) or GetEntityCoords(helicopter).z <= 5.0 or GetEntityHealth(helicopter) <= 0
    if not isPlaneOrPilotDead then
        if pilotPed and pilotPed ~= 0 and GetBlipFromEntity(helicopter) == 0 then
            local blip = AddBlipForEntity(helicopter)
            SetBlipSprite(blip, 353)
        end
    else
        local blip = GetBlipFromEntity(helicopter)
        if blip ~= 0 then
            RemoveBlip(blip)
        end
    end
    if NetworkHasControlOfEntity(helicopter) then
        if not GetIsVehicleEngineRunning(helicopter) then
            SetVehicleEngineOn(helicopter, true, true, false)
        end
        if not Entity(helicopter).state.fullSpeed then
            SetHeliBladesFullSpeed(helicopter)
            SetHeliTurbulenceScalar(helicopter, 0.0)
            Entity(helicopter).state.fullSpeed = true
        end
        if GetIsVehicleEngineRunning(helicopter) and pilotPed and pilotPed ~= 0 and GetPedInVehicleSeat(helicopter, -1) == pilotPed then
            FreezeEntityPosition(helicopter, false)
        end
    end
end

local function isHeliUsable(helicopter)
    return helicopter ~= 0 and DoesEntityExist(helicopter) and not IsEntityDead(helicopter) and GetEntityHealth(helicopter) > 0
end

local function onUpdateDismountedPilot(ped)
    if NetworkHasControlOfEntity(ped) then
        applySetupCombatDifficulty(ped)
        SetEntityInvincible(ped, false)
        SetEntityProofs(ped, false, false, false, false, false, false, false, false)
        SetPedCanBeTargetted(ped, true)
        SetPedCanBeTargettedByPlayer(ped, PlayerId(), true)
        SetBlockingOfNonTemporaryEvents(ped, true)

        local _, weaponModel = GetCurrentPedWeapon(ped, 0, false)
        if weaponModel ~= `WEAPON_PISTOL` then
            GiveWeaponToPed(ped, `WEAPON_PISTOL`, 1000, false, true)
        end

        if GetPedRelationshipGroupHash(ped) ~= `SETUP_ATTACK` then
            SetPedRelationshipGroupHash(ped, `SETUP_ATTACK`)
            SetPedRelationshipGroupDefaultHash(ped, `SETUP_ATTACK`)
        end

        if GetScriptTaskStatus(ped, 0x2E85A751) == 7 then
            SetPedCombatMovement(ped, 1)
            SetRagdollBlockingFlags(ped, 1)
            SetPedDropsWeaponsWhenDead(ped, false)
            TaskCombatPed(ped, PlayerPedId(), 0, 16)
        end
    end
    ensureSecurityHasBlip(ped)
end

local function onUpdatePilot(ped)
    local helicopter = getHeliFromPedState(ped)
    if not isHeliUsable(helicopter) then
        onUpdateDismountedPilot(ped)
        return
    end
    ---@cast helicopter Vehicle

    local isHeliPilot = Entity(ped).state.isHeliPilot

    if NetworkHasControlOfEntity(ped) then
        SetBlockingOfNonTemporaryEvents(ped, true)
        applySetupCombatDifficulty(ped)
        if isHeliPilot then
            if GetPedRelationshipGroupHash(ped) ~= `SETUP_ATTACK` then
                SetPedRelationshipGroupHash(ped, `SETUP_ATTACK`)
                SetPedRelationshipGroupDefaultHash(ped, `SETUP_ATTACK`)
            end
            if GetPedInVehicleSeat(helicopter, -1) ~= ped then
                SetPedIntoVehicle(ped, helicopter, -1)
            end
            if GetPedInVehicleSeat(helicopter, -1) == ped then
                if not Entity(helicopter).state.orbitBias then
                    Entity(helicopter).state.orbitBias = math.random(0, 359)
                end
                if GetScriptTaskStatus(ped, `SCRIPT_TASK_HELI_CHASE`) == 7 then
                    local orbitAngle = math.rad(Entity(helicopter).state.orbitBias + 0.0)
                    local offsetX = math.cos(orbitAngle) * heliAttackOrbitRadius
                    local offsetY = math.sin(orbitAngle) * heliAttackOrbitRadius
                    TaskHeliChase(ped, PlayerPedId(), offsetX, offsetY, heliAttackHeight)
                end
            end
        else
            local _, weaponModel = GetCurrentPedWeapon(ped, 0, false)
            if weaponModel ~= `WEAPON_PISTOL` then
                GiveWeaponToPed(ped, `WEAPON_PISTOL`, 1000, false, true)
            end

            if GetPedRelationshipGroupHash(ped) ~= `SETUP_ATTACK` then
                SetPedRelationshipGroupHash(ped, `SETUP_ATTACK`)
                SetPedRelationshipGroupDefaultHash(ped, `SETUP_ATTACK`)
            end

            if GetVehiclePedIsUsing(ped) ~= helicopter then
                for seatIndex = 0, 2 do
                    if IsVehicleSeatFree(helicopter, seatIndex) then
                        SetPedIntoVehicle(ped, helicopter, seatIndex)
                        break
                    end
                end
            end

            if GetScriptTaskStatus(ped, `SCRIPT_TASK_COMBAT`) == 7 then
                SetPedCombatMovement(ped, 1)
                SetRagdollBlockingFlags(ped, 1)
                SetPedDropsWeaponsWhenDead(ped, false)
                TaskCombatPed(ped, PlayerPedId(), 0, 16)
            end
        end
    end

    local pilotPed = GetPedInVehicleSeat(helicopter, -1)
    onUpdateHeliVehicle(helicopter, pilotPed)
    ensureSecurityHasBlip(ped)
end

local function onUpdateWorldPeds()
     for _, ped in pairs(GetGamePool("CPed")) do
        if NetworkGetEntityIsNetworked(ped) then
            local type = Entity(ped).state.type
            if type == "SETUP_SECURITY" then
                onUpdateSecurity(ped)
            elseif type == "SETUP_STAFF" then
                onUpdateStaff(ped)
            elseif type == "SETUP_PILOT" then
                onUpdatePilot(ped)
            end
        end
     end
end

local function drawCursor()
	local screenX, screenY = GetActiveScreenResolution()
	local ratio = screenY / screenX
	DrawRect(0.5, 0.5, 0.015 * ratio, 0.0025, 200, 30, 30, 255)
	DrawRect(0.5, 0.5, 0.0025 * ratio, 0.015, 200, 30, 30, 255)
end

local function requestCargoShipIpls(info)
    if not info.cargoShipIpls then
        return
    end
    for _, iplName in ipairs(info.cargoShipIpls) do
        RequestIpl(iplName)
    end
end

local function removeCargoShipIpls(info)
    if not info.cargoShipIpls then
        return
    end
    for _, iplName in ipairs(info.cargoShipIpls) do
        RemoveIpl(iplName)
    end
end

local function findDaisyBoat()
    for _, vehicle in pairs(CMG.getAllVehicles()) do
        if GetEntityModel(vehicle) == `daisy` then
            return vehicle
        end
    end
    return 0
end

local grappleSlowWalkClipSet = "anim@move_m@grooving@slow@"

local function enableGrappleSlowWalk(info)
    local playerPed = PlayerPedId()
    CMG.loadClipSet(grappleSlowWalkClipSet)
    SetPedMovementClipset(playerPed, grappleSlowWalkClipSet, 1.0)
    SetPedMaxMoveBlendRatio(playerPed, 0.35)
    SetRunSprintMultiplierForPlayer(PlayerId(), 0.0)
    info.grappleSlowWalkActive = true
end

local function disableGrappleSlowWalk(info)
    if not info.grappleSlowWalkActive then
        return
    end
    local playerPed = PlayerPedId()
    ResetPedMovementClipset(playerPed, 0.25)
    SetPedMaxMoveBlendRatio(playerPed, 1.0)
    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
    info.grappleSlowWalkActive = false
end

local function isPlayerInGrappleWater()
    local playerPed = PlayerPedId()
    return IsEntityInWater(playerPed) or IsPedSwimming(playerPed) or IsPedSwimmingUnderWater(playerPed)
end

----------- [[ STAGE: DRIVE_TO_CAYO ]] -----------

local function initDriveToCayo(info)
    requestCargoShipIpls(info)
    info.cayoBlip = AddBlipForCoord(info.cayoPosition.x, info.cayoPosition.y, info.cayoPosition.z)
    SetBlipRoute(info.cayoBlip, true)
    TriggerMusicEvent("AH3B_EVADE_COPS_RT")
    SetPlayerFallDistance(PlayerId(), 200.0)
end

local function runDriveToCayo(info)
    drawPlayerCount(info)
    drawNativeText("Drive to the ~y~coast~w~")
end

local function cleanDriveToCayo(info)
    RemoveBlip(info.cayoBlip)
    info.cayoBlip = nil
end

----------- [[ STAGE: GET_IN_BOAT ]] -----------

local function initGetInBoat(info)
    info.dinghyBlip = AddBlipForCoord(info.dinghyPosition.x, info.dinghyPosition.y, info.dinghyPosition.z)
    SetBlipRoute(info.dinghyBlip, true)
    SetPlayerFallDistance(PlayerId(), 200.0)
end

local function runGetInBoat()
    local isInDinghy = false
    local playerVehicle = CMG.getPlayerVehicle()
    for _, vehicle in pairs(CMG.getAllVehicles()) do
        local model = GetEntityModel(vehicle)
        if model == `dinghy` then
            if GetBlipFromEntity(vehicle) == 0  then
                local blip = AddBlipForEntity(vehicle)
                SetBlipSprite(blip, 427)
                SetBlipColour(blip, 5)
            end
            if playerVehicle == vehicle then
                isInDinghy = true
            end
            SetBoatAnchor(vehicle, true)
            SetBoatRemainsAnchoredWhilePlayerIsDriver(vehicle, true)
        end
    end
    if isInDinghy then
        drawNativeText("~b~Waiting for other players to enter the dinghys")
    else
        drawNativeText("Enter any of the ~y~dinghys~w~")
    end
end

local function cleanGetInBoat(info)
    RemoveBlip(info.dinghyBlip)
    info.dinghyBlip = nil
end

----------- [[ STAGE: GRAPPLE_ONTO_BOAT ]] -----------

local function initGrappleOntoBoat(info)
    info.hasSentEvent = false
    info.grappleSlowWalkActive = false
    info.grappleAnchor = 0
    info.boat = 0

    SetEntityProofs(PlayerPedId(), false, true, true, false, false, false, false, false)
    SetPlayerFallDistance(PlayerId(), 200.0)

    AddRelationshipGroup("SETUP_ATTACK")
    SetRelationshipBetweenGroups(0, `SETUP_ATTACK`, `SETUP_ATTACK`)

    local myGroup = GetPedRelationshipGroupHash(PlayerPedId())
    SetRelationshipBetweenGroups(5, `SETUP_ATTACK`, myGroup)
    SetRelationshipBetweenGroups(5, myGroup, `SETUP_ATTACK`)

    for _, vehicle in pairs(CMG.getAllVehicles()) do
        if GetEntityModel(vehicle) == `dinghy` then
            SetBoatAnchor(vehicle, false)
            SetBoatRemainsAnchoredWhilePlayerIsDriver(vehicle, false)
        end
    end

    CMG.loadModel(`prop_dummy_01`)
    info.grappleAnchor = CreateObject(`prop_dummy_01`, info.grapplePosition.x, info.grapplePosition.y, info.grapplePosition.z, false, false, false)
    SetModelAsNoLongerNeeded(`prop_dummy_01`)
    FreezeEntityPosition(info.grappleAnchor, true)
    SetEntityVisible(info.grappleAnchor, false, false)
    info.boat = info.grappleAnchor

    info.boatBlip = AddBlipForCoord(info.grapplePosition.x, info.grapplePosition.y, info.grapplePosition.z)
    SetBlipRoute(info.boatBlip, true)

    info.ropeHandles = {}

    info.ropeCoordsEvent = RegisterNetEvent("2bccd0dc23", function(targetSrc, coords)
        local playerIndex = GetPlayerFromServerId(targetSrc)
        if playerIndex == -1 then
            return
        end
        local playerPed = GetPlayerPed(playerIndex)
        if playerPed == 0 or info.grappleAnchor == 0 or not DoesEntityExist(info.grappleAnchor) then
            return
        end
        local playerCoords = GetEntityCoords(playerPed)
        local distance = #(playerCoords - coords)

        local rope = AddRope(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 4.0, 1, distance, 0.6, 15.0, false, true, false, 1.0, false)
        AttachEntitiesToRope(rope, playerPed, info.grappleAnchor, playerCoords.x, playerCoords.y, playerCoords.z, coords.x, coords.y, coords.z, distance, true, true, nil, nil)
        StartRopeWinding(rope)
        RopeLoadTextures()

        if targetSrc == CMG.getLocalPlayerSrc() then
            disableGrappleSlowWalk(info)
            SetEntityInvincible(PlayerPedId(), true)
        end

        table.insert(info.ropeHandles, rope)

        local startTime = GetGameTimer()
        local lastMoved = GetGameTimer()
        local lastPosition = GetEntityCoords(playerPed, true)
        while GetGameTimer() - startTime < 10000 do
            local nextPosition = GetEntityCoords(playerPed, true)
            if #(lastPosition.xy - nextPosition.xy) > 0.5 or math.abs(lastPosition.z - nextPosition.z) > 0.5 then
                lastMoved = GetGameTimer()
                lastPosition = nextPosition
            end
            if GetGameTimer() - lastMoved > 500 and GetGameTimer() - startTime > 2000 then
                break
            end
            Citizen.Wait(0)
        end

        DeleteRope(rope)

        if targetSrc == CMG.getLocalPlayerSrc() then
            local localPed = PlayerPedId()
            local finalCoords = GetEntityCoords(localPed)
            if finalCoords.z < 5.0 or #(finalCoords.xy - info.grapplePosition.xy) > 10.0 then
                SetEntityCoordsNoOffset(localPed, info.grapplePosition.x, info.grapplePosition.y, info.grapplePosition.z + 0.5, true, false, false)
            end
            disableGrappleSlowWalk(info)
            SetEntityInvincible(localPed, false)
        end
    end)
end

local function runGrappleOntoBoat(info)
    if info.grappleAnchor == 0 or not DoesEntityExist(info.grappleAnchor) then
        drawNativeText("Approach the ~y~cargo ship~w~ carefully")
        onUpdateWorldPeds()
        return
    end

    info.boat = info.grappleAnchor
    local playerCoords = CMG.getPlayerCoords()
    local distanceToShip = #(playerCoords - info.grapplePosition)
    local approachDistance = #(playerCoords.xy - info.suggestedLeavePosition.xy)
    if distanceToShip < 225.0 then
        local vehicle = CMG.getPlayerVehicle()
        if vehicle == 0 then
            if not info.hasSentEvent then
                if isPlayerInGrappleWater() then
                    disableGrappleSlowWalk(info)
                elseif not info.grappleSlowWalkActive then
                    enableGrappleSlowWalk(info)
                else
                    SetPedMaxMoveBlendRatio(PlayerPedId(), 0.35)
                    SetRunSprintMultiplierForPlayer(PlayerId(), 0.0)
                end
                if info.grappleSlowWalkActive then
                    DisableControlAction(0, 21, true)
                end
            elseif info.grappleSlowWalkActive then
                disableGrappleSlowWalk(info)
            end
            if not info.hasSentEvent then
                DrawMarker(1, info.suggestedLeavePosition.x, info.suggestedLeavePosition.y, info.suggestedLeavePosition.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 10.0, 10.0, 2.0, 255, 255, 0, 120, false, false, 2, false, nil, nil, false)
                DrawMarker(1, info.grapplePosition.x, info.grapplePosition.y, info.grapplePosition.z + 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.5, 1.5, 2.0, 255, 223, 0, 120, false, false, 2, false, nil, nil, false)
                if approachDistance < 15.0 and playerCoords.z < 5.0 then
                    local playerPed = PlayerPedId()
                    if GetSelectedPedWeapon(playerPed) ~= `WEAPON_STAFFGUN` then
                        GiveWeaponToPed(playerPed, `WEAPON_STAFFGUN`, 0, false, true)
                    end
                    drawCursor()
                    drawNativeNotification("Aim at the ~y~cargo ship~w~ and fire your grapple hook")
                    if IsControlJustPressed(0, 24) then
                        RemoveWeaponFromPed(playerPed, `WEAPON_STAFFGUN`)
                        disableGrappleSlowWalk(info)
                        TriggerServerEvent("2bccd0dc23", info.grapplePosition)
                        info.hasSentEvent = true
                    end
                    drawNativeText("Grapple onto the ~y~cargo ship~w~")
                else
                    drawNativeText("Move to the ~y~approach point~w~ to use your grapple hook")
                end
            end
        else
            disableGrappleSlowWalk(info)
            DrawMarker(1, info.suggestedLeavePosition.x, info.suggestedLeavePosition.y, info.suggestedLeavePosition.z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 10.0, 10.0, 2.0, 255, 255, 0, 120, false, false, 2, false, nil, nil, false)
            drawNativeText("Exit your vehicle seat when nearby to the ~y~cargo ship~w~")
        end
    else
        drawNativeText("Approach the ~y~cargo ship~w~ carefully")
    end
    onUpdateWorldPeds()
end

local function cleanGrappleOntoBoat(info)
    RemoveBlip(info.boatBlip)
    info.boatBlip = nil
    info.hasSentEvent = nil
    if info.grappleAnchor and DoesEntityExist(info.grappleAnchor) then
        DeleteEntity(info.grappleAnchor)
    end
    info.grappleAnchor = nil
    info.boat = nil
    RemoveWeaponFromPed(PlayerPedId(), `WEAPON_STAFFGUN`)
    disableGrappleSlowWalk(info)
    if info.ropeCoordsEvent then
        RemoveEventHandler(info.ropeCoordsEvent)
        info.ropeCoordsEvent = nil
    end
    if info.ropeHandles then
        for _, rope in pairs(info.ropeHandles) do
            DeleteRope(rope)
        end
        info.ropeHandles = nil
    end
end

----------- [[ STAGE: KILL_ALL_AI ]] -----------

local function initKillAllAi(info)
    for _, vehicle in pairs(CMG.getAllVehicles()) do
        if GetEntityModel(vehicle) == `dinghy` then
            SetBoatAnchor(vehicle, true)
            SetBoatRemainsAnchoredWhilePlayerIsDriver(vehicle, true)
        end
    end

    info.lastTeleportTime = 0

    SetPlayerFallDistance(PlayerId(), 200.0)
end

local function runKillAllAi(info)
    if CMG.getPlayerCoords().z <= 5.0 and GetGameTimer() - info.lastTeleportTime > 1000 then
        SetEntityCoordsNoOffset(PlayerPedId(), info.failedGrappelPosition.x, info.failedGrappelPosition.y, info.failedGrappelPosition.z, true, false, false)
        info.lastTeleportTime = GetGameTimer()
    end
    drawNativeText("Kill the remaining ~r~security~w~ and ~r~coastguard~w~")
    onUpdateWorldPeds()
end

local function cleanKillAllAi(info)
    info.lastTeleportTime = nil
end

----------- [[ STAGE: BOAT_SINKING_CUTSCENE ]] -----------

local function initBoatSinkingCutscene(info)
    removeCargoShipIpls(info)

    info.boat = 0
    local waitUntil = GetGameTimer() + 10000
    while (info.boat == 0 or not DoesEntityExist(info.boat)) and GetGameTimer() < waitUntil do
        info.boat = findDaisyBoat()
        Citizen.Wait(100)
    end

    if info.boat ~= 0 and DoesEntityExist(info.boat) then
        FreezeEntityPosition(info.boat, true)
        SetEntityLodDist(info.boat, 1000)
    end

    CMG.hideAllDisplays("bankheist_setup")

    local playerPed = PlayerPedId()
    FreezeEntityPosition(playerPed, true)
    SetEntityVisible(playerPed, false, false)
    SetEntityInvincible(playerPed, true)
    SetEntityCoordsNoOffset(playerPed, info.boatPosition.x, info.boatPosition.y, 150.0, true, false, false)
    FreezeEntityPosition(playerPed, true)

    CMG.loadModel(`buzzard`)
    info.heli = CreateVehicle(`buzzard`, info.crashHeliStartPosition.x, info.crashHeliStartPosition.y, info.crashHeliStartPosition.z, 0.0, false, false)
    SetModelAsNoLongerNeeded(`buzzard`)
    FreezeEntityPosition(info.heli, true)
    SetVehicleEngineOn(info.heli, true, true, false)
    SetHeliBladesFullSpeed(info.heli)
    SetEntityInvincible(info.heli, true)

    info.fakePilots = {}
    for seatIndex = -1, 2 do
        CMG.loadModel(`s_m_y_swat_01`)
        local ped = CreatePedInsideVehicle(info.heli, 0, `s_m_y_swat_01`, seatIndex, false, false)
        SetModelAsNoLongerNeeded(`s_m_y_swat_01`)
        if seatIndex > -1 then
            SetEntityHealth(ped, 0)
        end
        table.insert(info.fakePilots, ped)
    end

    CMG.loadPtfx("core")
    UseParticleFxAsset("core")
    info.firePtfxs = {}
    table.insert(info.firePtfxs, StartParticleFxLoopedOnEntity("ent_ray_meth_fires", info.heli, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, false, false, false))
    RemoveNamedPtfxAsset("core")

    info.camera = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
    SetCamCoord(info.camera, info.crashCameraPosition.x, info.crashCameraPosition.y, info.crashCameraPosition.z)
    PointCamAtEntity(info.camera, info.heli, 0.0, 0.0, 0.0, false)
    SetCamActive(info.camera, true)
    RenderScriptCams(true, false, 0, false, false)
    SetFocusPosAndVel(info.crashCameraPosition.x, info.crashCameraPosition.y, info.crashCameraPosition.z, 0.0, 0.0, 0.0)

    info.crashStartTime = GetGameTimer()
    info.lastSpinSpeed = 0.0

    SetPlayerFallDistance(PlayerId(), 200.0)
end

local function runBoatSinkingCutscene(info)
    if info.crashStartTime then
        local elapsedFloat = (GetGameTimer() - info.crashStartTime) / 5000
        if elapsedFloat <= 1.0 then
            local heliPosition = info.crashHeliStartPosition + ((info.crashHeliEndPosition - info.crashHeliStartPosition) * elapsedFloat)
            SetEntityCoordsNoOffset(info.heli, heliPosition.x, heliPosition.y, heliPosition.z, true, false, false)
        else
            SetVehicleEngineOn(info.heli, false, false, true)
            FreezeEntityPosition(info.heli, false)
            SetEntityInvincible(info.heli, false)
            AddExplosion(info.crashHeliEndPosition.x, info.crashHeliEndPosition.y, info.crashHeliEndPosition.z, 0, 1.0, true, false, 0.2)
            info.crashStartTime = nil
            info.lastExplosionTime = GetGameTimer()
            info.nextExplosionIndex = 1
        end
        local rotation = GetEntityRotation(info.heli, 2)
        info.lastSpinSpeed = info.lastSpinSpeed + 70.0 * GetFrameTime()
        SetEntityRotation(info.heli, rotation.x, rotation.y, rotation.z + (GetFrameTime() * info.lastSpinSpeed), 2, false)
    elseif info.lastExplosionTime then
        SetCamCoord(info.camera, info.sinkCameraPosition.x, info.sinkCameraPosition.y, info.sinkCameraPosition.z)
        if info.boat ~= 0 and DoesEntityExist(info.boat) then
            PointCamAtEntity(info.camera, info.boat, 0.0, 0.0, 0.0, false)
        end
        if GetGameTimer() - info.lastExplosionTime > 100 then
            local position = info.explosionPositions[info.nextExplosionIndex]
            if not position then
                info.lastExplosionTime = nil
                info.nextExplosionIndex = nil
            else
                AddExplosion(position.x, position.y, position.z, 0, 1.0, true, false, 0.2)
                CMG.loadPtfx("core")
                UseParticleFxAsset("core")
                if info.boat ~= 0 and DoesEntityExist(info.boat) then
                    local offset = GetOffsetFromEntityGivenWorldCoords(info.boat, position.x, position.y, position.z)
                    table.insert(info.firePtfxs, StartParticleFxLoopedOnEntity("ent_ray_meth_fires", info.boat, offset.x, offset.y, offset.z, 0.0, 0.0, 0.0, 2.0, false, false, false))
                end
                RemoveNamedPtfxAsset("core")
                info.nextExplosionIndex = info.nextExplosionIndex + 1
                info.lastExplosionTime = GetGameTimer()
                WaterOverrideSetStrength(1.5)
            end
        end
    end
    if not info.crashStartTime then
        if info.boat ~= 0 and DoesEntityExist(info.boat) and NetworkHasControlOfEntity(info.boat) then
            if not info.lastBoatPosition then
                info.lastBoatPosition = GetEntityCoords(info.boat, true)
            end
            if not info.lastBoatRotation then
                info.lastBoatRotation = GetEntityRotation(info.boat, 2)
            end
            info.lastBoatPosition = vector3(info.lastBoatPosition.x, info.lastBoatPosition.y, info.lastBoatPosition.z - (GetFrameTime() * 2.0))
            info.lastBoatRotation = vector3(info.lastBoatRotation.x + (GetFrameTime() * 1.0), info.lastBoatRotation.y, info.lastBoatRotation.z)
            SetEntityCoordsNoOffset(info.boat, info.lastBoatPosition.x, info.lastBoatPosition.y, info.lastBoatPosition.z, true, false, false)
            SetEntityRotation(info.boat, info.lastBoatRotation.x, info.lastBoatRotation.y, info.lastBoatRotation.z, 2, false)
        else
            info.lastBoatPosition = nil
            info.lastBoatRotation = nil
        end
    end
end

local function cleanBoatSinkingCutscene(info)
    if info.heli then
        DeleteEntity(info.heli)
        info.heli = nil
    end

    if info.fakePilots then
        for _, handle in pairs(info.fakePilots) do
            DeleteEntity(handle)
        end
        info.fakePilots = nil
    end

    if info.firePtfxs then
        for _, handle in pairs(info.firePtfxs) do
            StopParticleFxLooped(handle, false)
        end
        info.firePtfxs = nil
    end

    if info.camera then
        RenderScriptCams(false, false, 0, false, false)
        SetCamActive(info.camera, false)
        DestroyCam(info.camera, false)
        info.camera = nil
    end

    ClearFocus()

    info.crashStartTime = nil
    info.lastSpinSpeed = nil

    info.lastExplosionTime = nil
    info.nextExplosionIndex = nil

    info.lastBoatPosition = nil
    info.lastBoatRotation = nil

    local playerPed = PlayerPedId()
    SetEntityCoords(playerPed, info.boatPosition.x, info.boatPosition.y, info.boatPosition.z, true, false, false, false)

    -- Explosions may persist a few frames ahead, lets wait a second for good measure.
    Citizen.CreateThread(function()
        Wait(1000)
        FreezeEntityPosition(playerPed, false)
        SetEntityVisible(playerPed, true, false)
        SetEntityInvincible(playerPed, false)
    end)

    CMG.showAllDisplays("bankheist_setup")
end

----------- [[ STAGE: SEARCH_FOR_TECH ]] -----------

local function initSearchForTech(info)
    DoScreenFadeOut(0)

    removeCargoShipIpls(info)

    if not info.boat or info.boat == 0 or not DoesEntityExist(info.boat) then
        info.boat = findDaisyBoat()
    end
    if info.boat ~= 0 and DoesEntityExist(info.boat) and NetworkHasControlOfEntity(info.boat) then
        FreezeEntityPosition(info.boat, true)
        SetEntityCoordsNoOffset(info.boat, info.boatRestingPosition.x, info.boatRestingPosition.y, info.boatRestingPosition.z, true, false, false)
        SetEntityRotation(info.boat, info.boatRestingRotation.x, info.boatRestingRotation.y, info.boatRestingRotation.z, 2, false)
    end
    if info.boat ~= 0 and DoesEntityExist(info.boat) then
        SetEntityLodDist(info.boat, 1000)
    end

    local playerPed = PlayerPedId()
    local spawnPos = info.searchPlayerSpawnPos + vector3(math.random(1, 25), math.random(1, 25), math.random(0, 1))
    SetEntityCoordsNoOffset(playerPed, spawnPos.x, spawnPos.y, spawnPos.z, true, false, false)

    SetEnableScuba(playerPed, true)
    SetPedMaxTimeUnderwater(playerPed, 400.0)

    if GetEntityModel(playerPed) == `mp_m_freemode_01` then
        info.previousCustomisation = tCMG.getCustomization()
        CMG.loadCustomisationPreset("BankHeistSearchBoat")
        SetPedScubaGearVariation(PlayerPedId())
    end

    info.crateObjects = {}
    info.crateMarkers = {}
    info.crateBlips = {}
    for index, position in pairs(info.cratePositions) do
        local model = info.crateModels[(index % #info.crateModels) + 1]
        CMG.loadModel(model)
        local object = CreateObject(model, position.x, position.y, position.z, false, false, false)
        SetModelAsNoLongerNeeded(model)
        FreezeEntityPosition(object, true)
        SetEntityLodDist(object, 1000)
        table.insert(info.crateObjects, object)
        local markerId = tCMG.addMarker(position.x,position.y,position.z+1.5,0.5,0.5,0.5,255,223,0,150,50.0,0,false,true,true)
        table.insert(info.crateMarkers, markerId)
        local blip = AddBlipForCoord(position.x, position.y, position.z)
        SetBlipScale(blip, 0.4)
        table.insert(info.crateBlips, blip)
    end

    info.removeCrateEvent = RegisterNetEvent("5472d87bcb", function(crateIndex)
        if info.crateMarkers and info.crateMarkers[crateIndex] then
            tCMG.removeMarker(info.crateMarkers[crateIndex])
        end
        if info.crateBlips and info.crateBlips[crateIndex] then
            RemoveBlip(info.crateBlips[crateIndex])
        end
    end)

    SetPlayerFallDistance(PlayerId(), 200.0)

    Citizen.CreateThread(function()
        Citizen.Wait(1000)
        DoScreenFadeIn(2000)
    end)
end

local function runSearchForTech(info)
    drawNativeText("Scuba dive and search ~y~crates~w~ in the ~b~wreck~w~")
    local coords = CMG.getPlayerCoords()
    for index, object in pairs(info.crateObjects) do
        if #(coords - GetEntityCoords(object, true)) < 2.0 then
            drawNativeNotification("Press ~INPUT_CONTEXT~ to search the crate")
            if IsControlJustPressed(0, 51) then
               TriggerServerEvent("6ec17c4146", index)
            end
        end
    end
end

local function cleanSearchForTech(info)
    if info.crateObjects then
        for _, object in pairs(info.crateObjects) do
            DeleteEntity(object)
        end
        info.crateObjects = nil
    end
    if info.crateMarkers then
        for _, markerId in pairs(info.crateMarkers) do
            tCMG.removeMarker(markerId)
        end
        info.crateMarkers = nil
    end
    if info.crateBlips then
        for _, blip in pairs(info.crateBlips) do
            RemoveBlip(blip)
        end
        info.crateBlips = nil
    end

    if info.removeCrateEvent then
        RemoveEventHandler(info.removeCrateEvent)
        info.removeCrateEvent = nil
    end
end

----------- [[ STAGE: RETURN_TO_FACTORY ]] -----------

local function initReturnToFactory(info)
    for _, vehicle in pairs(CMG.getAllVehicles()) do
        if GetEntityModel(vehicle) == `dinghy` then
            SetBoatAnchor(vehicle, false)
            SetBoatRemainsAnchoredWhilePlayerIsDriver(vehicle, false)
        end
    end
    info.factoryBlip = AddBlipForCoord(info.factoryPosition.x, info.factoryPosition.y, info.factoryPosition.z)
    SetBlipRoute(info.factoryBlip, false)
    SetPlayerFallDistance(PlayerId(), 200.0)
end

local function runReturnToFactory()
    drawNativeText("Return to the ~y~factory~w~ to finish")
end

local function cleanReturnToFactory(info)
    if info.factoryBlip then
        RemoveBlip(info.factoryBlip)
        info.factoryBlip = nil
    end
end

----------- [[ CONFIGURATION ]] -----------

local heist = {}

heist.stages = {
    {
        name = "DRIVE_TO_CAYO",
        init = initDriveToCayo,
        run = runDriveToCayo,
        clean = cleanDriveToCayo
    },
    {
        name = "GET_IN_BOAT",
        init = initGetInBoat,
        run = runGetInBoat,
        clean = cleanGetInBoat
    },
    {
        name = "GRAPPLE_ONTO_BOAT",
        init = initGrappleOntoBoat,
        run = runGrappleOntoBoat,
        clean = cleanGrappleOntoBoat
    },
    {
        name = "KILL_ALL_AI",
        init = initKillAllAi,
        run = runKillAllAi,
        clean = cleanKillAllAi
    },
    {
        name = "BOAT_SINKING_CUTSCENE",
        init = initBoatSinkingCutscene,
        run = runBoatSinkingCutscene,
        clean = cleanBoatSinkingCutscene
    },
    {
        name = "SEARCH_FOR_TECH",
        init = initSearchForTech,
        run = runSearchForTech,
        clean = cleanSearchForTech
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
    RemoveRelationshipGroup(`SETUP_ATTACK`)
    WaterOverrideSetStrength(0.0)
    removeCargoShipIpls(info)

    if info.grappleAnchor and DoesEntityExist(info.grappleAnchor) then
        DeleteEntity(info.grappleAnchor)
        info.grappleAnchor = nil
    end

    local playerPed = PlayerPedId()
    SetEnableScuba(playerPed, false)
    SetPedMaxTimeUnderwater(playerPed, 10.0)

    if info.previousCustomisation then
        tCMG.setCustomization(info.previousCustomisation)
        info.previousCustomisation = nil
    end

    SetEntityProofs(playerPed, false, false, false, false, false, false, false, false)
    SetPlayerFallDistance(PlayerId(), 5.0)
end

return heist