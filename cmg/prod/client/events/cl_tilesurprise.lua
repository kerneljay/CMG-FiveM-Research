--[[
    BEGINNER GUIDE — Tilesurprise
    =============================

    File: cmg/prod/client/events/cl_tilesurprise.lua
    Purpose: This file contains event/minigame logic.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Config/data used:
      * cfg/events/cfg_tilesurprise

    Network/hash identifiers found: 8
      They are intentionally left unchanged because matching server code may use them.
      * cba023ac32
      * 22086f3ac9
      * 460d7ee179
      * bb0fad16db
      * 6d6db403a1
      * b328b55f35
      * 0c97107a0d
      * 70a0b3cccd

    Example player-facing text in this file:
      * Enter Spawncode

]]
-- Tile Surprise
-- Cleaned/reconstructed from decompiled FiveM Lua.
--
-- Hashed network event names are intentionally preserved because the server-side
-- event system is expected to use those exact names.

local config = CMG.loadModule("cfg/events/cfg_tilesurprise")

local TILE_MODEL = 385042515
local MAP_ORIGIN = vector3(-3947.41, -1712.07, 629.52)

local TILE_COLOURS = {
    { "red",    "~r~" },
    { "blue",   "~b~" },
    { "purple", "~p~" },
    { "black",  "~c~" },
    { "white",  "~y~" },
    { "grey",   "~m~" },
    { "yellow", "~y~" },
    { "orange", "~o~" },
    { "green",  "~g~" },
    { "pink",   "~y~" },
}

local DISABLED_EVENT_CONTROLS = {
    23, 75, 24, 25, 37,
    12, 13, 14, 15, 16, 17,
    53, 54, 99, 100, 261, 262,
}

local state = {}
local timerBars = CMG.createTimerBars()

-- Removes every generated tile and boundary wall from the current map.
local function deleteGeneratedMapObjects()
    if state.map then
        for _, layer in ipairs(state.map) do
            for _, column in ipairs(layer) do
                for _, tile in ipairs(column) do
                    DeleteObject(tile.object)
                end
            end
        end
    end

    if state.walls then
        for _, layerWalls in ipairs(state.walls) do
            for _, wall in ipairs(layerWalls) do
                DeleteObject(wall)
            end
        end
    end
end

-- Shows the local player's failure/wasted sequence and temporarily hides them
-- until the server advances the event to another round.
local function playFailureSequence()
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsUsing(ped)
    local coords = GetEntityCoords(ped)
    local rotation = GetEntityRotation(ped, 2)

    local camera = CreateCameraWithParams(
        "DEFAULT_SCRIPTED_CAMERA",
        coords.x,
        coords.y,
        coords.z + 10.0,
        rotation.x,
        rotation.y,
        rotation.z,
        65.001,
        false,
        2
    )

    SetCamActiveWithInterp(camera, GetRenderingCam(), 1000, 5, 5)
    RenderScriptCams(true, true, 3000, true, false)
    PointCamAtEntity(camera, vehicle, 1, 1, 1, true)
    ShakeCam(camera, "DEATH_FAIL_IN_EFFECT_SHAKE", 0.7)

    AnimpostfxPlay("DeadlineNeon", 3000, false)
    PlaySoundFrontend(-1, "ScreenFlash", "WastedSounds", false)
    CMG.announceMpBigMsg("~r~WASTED", "", 3000, true, true)

    local failedRound = state.round

    TaskLeaveVehicle(ped, vehicle, 16)
    ClearPedTasksImmediately(ped)

    SetEntityCoordsNoOffset(
        ped,
        state.position.x,
        state.position.y,
        state.position.z,
        true,
        false,
        false
    )

    FreezeEntityPosition(ped, true)
    SetEntityVisible(ped, false, false)
    SetEntityCollision(ped, false, false)

    while state.round == failedRound do
        Citizen.Wait(0)
    end

    -- The player's ped can change while waiting, so fetch it again.
    ped = PlayerPedId()

    FreezeEntityPosition(ped, false)
    SetEntityVisible(ped, true, true)
    SetEntityCollision(ped, true, true)

    AnimpostfxStop("DeadlineNeon")
    RenderScriptCams(false, false, 0, false, false)
    DestroyCam(camera, false)
end

-- Formats a participant's name for the minigame player-tag display.
local function formatPlayerTag(playerData)
    local player = GetPlayerFromServerId(playerData.source)

    if player ~= -1 then
        local playerName = CMG.getPlayerName(player)
        return string.format("%s (Lives: %d)", playerName, playerData.lives or -1)
    end

    return "Unknown (Lives: -1)"
end

local function createWall(layerIndex, x, y, z, rotX, rotY, rotZ)
    local wall = CreateObjectNoOffset(TILE_MODEL, x, y, z, false, true, false)

    SetEntityRotation(wall, rotX, rotY, rotZ, 2, true)
    SetObjectTextureVariation(wall, 9)

    table.insert(state.walls[layerIndex], wall)
end

-- Creates boundary walls around the tile grid. This is called for every tile,
-- but only edge tiles actually result in a wall being created.
local function createBoundaryWalls(origin, layerIndex, columnIndex, rowIndex)
    if not state.walls[layerIndex] then
        state.walls[layerIndex] = {}
    end

    local tileX = origin.x + (columnIndex * 7.25)
    local tileY = origin.y + (rowIndex * 8.0)

    if columnIndex == 1 then
        createWall(
            layerIndex,
            tileX - 4.0,
            tileY,
            origin.z + 4.0,
            0.0,
            90.0,
            0.0
        )
    end

    if columnIndex == state.mapSize then
        createWall(
            layerIndex,
            tileX + 4.0,
            tileY,
            origin.z + 4.0,
            0.0,
            90.0,
            0.0
        )
    end

    if rowIndex == 1 then
        createWall(
            layerIndex,
            tileX,
            tileY - 4.3,
            origin.z + 3.625,
            90.0,
            0.0,
            0.0
        )
    end

    if rowIndex == state.mapSize then
        createWall(
            layerIndex,
            tileX,
            tileY + 4.3,
            origin.z + 3.625,
            90.0,
            0.0,
            0.0
        )
    end
end

-- Drops every tile that does not match the safe colour for the current round.
local function dropUnsafeTiles(safeColour)
    local playerCoords = GetEntityCoords(PlayerPedId(), true)

    if state.map then
        for layerIndex, layer in ipairs(state.map) do
            for _, column in ipairs(layer) do
                for _, tile in ipairs(column) do
                    if tile.colour ~= safeColour then
                        ActivatePhysics(tile.object)
                        FreezeEntityPosition(tile.object, false)

                        ApplyForceToEntity(
                            tile.object,
                            1,
                            0.0,
                            0.0,
                            math.random(10, 30) + 0.0,
                            math.random() - 0.5,
                            math.random() - 0.5,
                            math.random() - 0.5,
                            0,
                            false,
                            false,
                            true,
                            false,
                            true
                        )
                    end
                end

                -- The original event creates an explosion once per column on
                -- the first map layer while the unsafe tiles are released.
                if layerIndex == 1 then
                    AddExplosion(
                        playerCoords.x,
                        playerCoords.y,
                        playerCoords.z - 10.0,
                        math.random(0, 80),
                        0.0,
                        true,
                        true,
                        0.0
                    )
                end
            end
        end
    end

    if state.walls then
        for _, layerWalls in ipairs(state.walls) do
            for _, wall in ipairs(layerWalls) do
                if state.mapSize == 15 then
                    DeleteEntity(wall)
                else
                    ActivatePhysics(wall)
                    FreezeEntityPosition(wall, false)

                    ApplyForceToEntity(
                        wall,
                        1,
                        0.0,
                        0.0,
                        1.0,
                        math.random() - 0.5,
                        math.random() - 0.5,
                        math.random() - 0.5,
                        0,
                        false,
                        false,
                        true,
                        false,
                        true
                    )
                end
            end
        end
    end
end

-- Rebuilds the complete tile map. When savedColours is provided, each tile
-- reuses its previously assigned texture; otherwise a random colour is chosen.
local function buildTileMap(savedColours)
    CMG.loadModel(TILE_MODEL)

    deleteGeneratedMapObjects()

    state.map = {}
    state.walls = {}

    -- The event currently has one playable layer. The z-offset logic is kept
    -- because the original implementation was written to support more layers.
    for layerIndex = 1, 1 do
        state.map[layerIndex] = {}

        for columnIndex = 1, state.mapSize do
            state.map[layerIndex][columnIndex] = {}

            for rowIndex = 1, state.mapSize do
                local zOffset = (layerIndex - 1) * 200.0

                local tile = CreateObjectNoOffset(
                    TILE_MODEL,
                    MAP_ORIGIN.x + (columnIndex * 7.25),
                    MAP_ORIGIN.y + (rowIndex * 8.0),
                    MAP_ORIGIN.z - zOffset,
                    false,
                    true,
                    false
                )

                local flattenedIndex = (columnIndex * state.mapSize) + rowIndex - state.mapSize
                local colour = savedColours and savedColours[flattenedIndex]

                if not colour then
                    colour = math.random(1, 10)
                end

                SetObjectTextureVariation(tile, colour)
                SetEntityRotation(tile, 0.0, 0.0, 0.0, 2, true)

                state.map[layerIndex][columnIndex][rowIndex] = {
                    object = tile,
                    colour = colour,
                }
            end
        end
    end
end

-- Places the selected event vehicle at the player's assigned spawnpoint and
-- enforces the selected primary/secondary vehicle colour.
local function setupEventVehicle(leaveUnfrozen)
    SetPedIntoVehicle(PlayerPedId(), state.vehicle, -1)

    local controlWaitStarted = GetGameTimer()
    local expectedState = state

    while not NetworkHasControlOfEntity(state.vehicle) do
        if GetGameTimer() - controlWaitStarted >= 2000 then
            break
        end

        Citizen.Wait(0)

        -- Cleanup replaces the state table. Stop if that happened while this
        -- coroutine was waiting for network control.
        if state ~= expectedState then
            return
        end
    end

    if state.position == nil then
        print("[Tile Surprise] Deleting vehicle on spawn, no position was set.")
        DeleteEntity(state.vehicle)
        return
    end

    SetEntityCoordsNoOffset(
        state.vehicle,
        state.position.x,
        state.position.y,
        state.position.z + 1.0,
        true,
        false,
        false
    )

    SetVehicleOnGroundProperly(state.vehicle)

    if not leaveUnfrozen then
        FreezeEntityPosition(state.vehicle, true)
    end

    SetVehRadioStation(state.vehicle, "OFF")
    SetVehicleRadioEnabled(state.vehicle, false)
    SetDisableVehicleEngineFires(state.vehicle, true)
    SetDisableVehiclePetrolTankFires(state.vehicle, true)

    Citizen.CreateThreadNow(function()
        local primaryColour = -1
        local secondaryColour = -1

        while primaryColour ~= state.colour or secondaryColour ~= state.colour do
            SetVehicleColours(state.vehicle, state.colour, state.colour)
            primaryColour, secondaryColour = GetVehicleColours(state.vehicle)
            Citizen.Wait(0)
        end
    end)
end

-- Server provides the network ID of the event vehicle created for this player.
RegisterNetEvent("cba023ac32", function(networkId, leaveUnfrozen)
    state.hasFailed = false

    if DoesEntityExist(state.vehicle) then
        DeleteEntity(state.vehicle)
    end

    local expectedState = state

    while not DoesEntityExist(state.vehicle) do
        if NetworkDoesEntityExistWithNetworkId(networkId) then
            state.vehicle = NetworkGetEntityFromNetworkId(networkId)
        end

        Citizen.Wait(0)

        if state ~= expectedState then
            return
        end
    end

    -- Wait until this client owns the vehicle and is sitting in its driver seat.
    while true do
        if NetworkHasControlOfEntity(state.vehicle) then
            local driver = GetPedInVehicleSeat(state.vehicle, -1)

            if driver == PlayerPedId() then
                break
            end
        end

        Citizen.Wait(0)

        if state ~= expectedState then
            return
        end
    end

    setupEventVehicle(leaveUnfrozen)
end)

local function disableEventControls()
    for _, control in ipairs(DISABLED_EVENT_CONTROLS) do
        DisableControlAction(0, control, true)
    end
end

local function updateEventStats()
    local activePlayers = #CMG.getActiveEventPlayers()
    local eliminatedPlayers = #currentEvent.players - activePlayers

    timerBars.push("~y~ELIMINATED~w~", tostring(eliminatedPlayers))
    timerBars.push("~y~REMAINING~w~", tostring(activePlayers))
    timerBars.push("~y~ROUND~w~", tostring(state.round))
end

-- Tracks which player's vehicle most recently damaged the local player's event
-- vehicle so the server can attribute a knock-out where possible.
local function trackLastDamagedVehicle()
    for _, player in ipairs(GetActivePlayers()) do
        local ped = GetPlayerPed(player)

        if ped ~= 0 then
            local vehicle = GetVehiclePedIsUsing(ped)

            if vehicle ~= 0 then
                if HasEntityBeenDamagedByEntity(state.vehicle, vehicle, true) then
                    state.lastDamagedVehicle = vehicle
                    state.lastDamagedVehicleTime = GetGameTimer()
                end

                SetVehicleHandlingFloat(vehicle, "CHandlingData", "fMass", 1500.0)
                ClearEntityLastDamageEntity(vehicle)
            end
        end
    end
end

local function getLastDamagedPlayerServerId()
    if not state.lastDamagedVehicle then
        return nil
    end

    local driverPed = GetPedInVehicleSeat(state.lastDamagedVehicle, -1)
    local player = NetworkGetPlayerIndexFromPed(driverPed)

    return GetPlayerServerId(player)
end

local function failureCooldownExpired()
    if not state.hasFailed then
        return true
    end

    return GetGameTimer() - state.lastFailedTime > 20000
end

local function markPlayerAsFailed()
    Citizen.CreateThreadNow(playFailureSequence)
    state.hasFailed = true
    state.lastFailedTime = GetGameTimer()
end

-- Main per-frame update used while the Tile Surprise round is active.
local function updateGameplay()
    CMG.hideAllDisplays("tilesurprise")

    if not DoesEntityExist(state.vehicle) then
        local playerVehicle = CMG.getPlayerVehicle()

        if playerVehicle ~= 0 then
            state.vehicle = playerVehicle
        else
            local distanceFromMap = #(CMG.getPlayerCoords() - MAP_ORIGIN)

            if distanceFromMap > 100.0 then
                SetEntityCoordsNoOffset(
                    PlayerPedId(),
                    MAP_ORIGIN.x,
                    MAP_ORIGIN.y,
                    MAP_ORIGIN.z,
                    false,
                    false,
                    false
                )
            end
        end
    end

    timerBars.reset()
    updateEventStats()
    trackLastDamagedVehicle()

    ClearEntityLastDamageEntity(state.vehicle)

    if state.lastDamagedVehicle then
        if GetGameTimer() - state.lastDamagedVehicleTime > 5000 then
            state.lastDamagedVehicle = nil
        end
    end

    local localPlayer = CMG.getEventLocalPlayer()

    if localPlayer and localPlayer.active then
        disableEventControls()
        SetPlayerControl(PlayerId(), true, 0)

        local vehicle = GetVehiclePedIsUsing(PlayerPedId())

        if vehicle ~= 0 then
            local playerIsDead = GetEntityHealth(PlayerPedId()) <= 0
            local vehicleIsDestroyed = GetEntityHealth(vehicle) <= 0

            if (playerIsDead or vehicleIsDestroyed) and failureCooldownExpired() then
                TriggerServerEvent("22086f3ac9")
                markPlayerAsFailed()
            end

            FreezeEntityPosition(vehicle, false)
            SetVehicleEngineOn(vehicle, true, true, false)
            SetVehicleColours(vehicle, state.colour, state.colour)
        end

        local playerCoords = GetEntityCoords(PlayerPedId(), true)

        if playerCoords.z < 625.0 and failureCooldownExpired() then
            TriggerServerEvent("22086f3ac9", getLastDamagedPlayerServerId())
            markPlayerAsFailed()
        end

        timerBars.push("~y~LIVES~w~", tostring(localPlayer.lives))
    end

    if state.counter ~= nil then
        timerBars.push("~r~COUNTDOWN~W~", tostring(state.counter))
    end

    timerBars.draw()
end

-- Initializes the local client for a new Tile Surprise event.
RegisterNetEvent("460d7ee179", function(locationIndex, spawnIndex)
    currentEvent.drawPlayersTimeBar = false
    SetPlayerControl(PlayerId(), false, 0)

    local location = config.locations[locationIndex]

    state.colour = 1
    state.vehicles = location.vehicles
    state.confirmedCharacter = false
    state.hasFailed = false
    state.lastFailedTime = 0
    state.lastDamagedVehicle = nil
    state.lastDamagedVehicleTime = 0
    state.position = location.spawnpoints[spawnIndex]
    state.mapSize = location.isLarge and 15 or 12

    assert(
        state.position,
        string.format("Invalid spawnIndex %s provided to client", tostring(spawnIndex))
    )

    SetEntityCoordsNoOffset(
        PlayerPedId(),
        state.position.x,
        state.position.y,
        state.position.z,
        true,
        false,
        false
    )

    FreezeEntityPosition(PlayerPedId(), true)
    SetEntityHeading(PlayerPedId(), state.position.w)

    RequestScriptAudioBank("DLC_STUNT/STUNT_RACE_01", false)
    RequestScriptAudioBank("DLC_STUNT/STUNT_RACE_02", false)
    RequestScriptAudioBank("DLC_STUNT/STUNT_RACE_03", false)

    CMG.setEventMusic("FAM2_NEAR_YACHT")
    CMG.loadPtfx("core")
    CMG.setIgnoreEventRespawns(true)

    buildTileMap(nil)
end)

-- Opens the vehicle/colour selector before the first round begins.
RegisterNetEvent("bb0fad16db", function(selectionPosition)
    CMG.stopEventSequence()
    CMG.hideAllDisplays("tilesurprise")
    BusyspinnerOff()

    SetPlayerControl(PlayerId(), true, 0)
    SetEntityVisible(PlayerPedId(), true, false)

    CMG.startVehicleSelection(
        selectionPosition.xyz,
        selectionPosition.w,
        state.vehicles,
        20,
        function(selectedVehicle)
            TriggerServerEvent("6d6db403a1", selectedVehicle)
        end,
        function(selectedColour)
            state.colour = selectedColour
        end
    )

    state.stage = "SELECT"
    state.position = selectionPosition

    while state.stage == "SELECT" do
        local vehicle = GetVehiclePedIsUsing(PlayerPedId())

        if vehicle ~= 0 then
            FreezeEntityPosition(vehicle, true)
        end

        Citizen.Wait(0)
    end
end)

-- Starts or advances a Tile Surprise round.
RegisterNetEvent("b328b55f35", function(savedColours, roundNumber)
    state.round = roundNumber

    if roundNumber == 1 then
        CMG.endVehicleSelection()
        SetFollowPedCamViewMode(2)

        if DoesEntityExist(state.vehicle) then
            DeleteEntity(state.vehicle)
        end

        for _, playerData in ipairs(currentEvent.players) do
            playerData.lives = 3
        end

        for _, player in pairs(GetActivePlayers()) do
            SetEntityVisible(GetPlayerPed(player), true, false)
        end

        -- Keep the player locked in place while vehicle selection/countdown is
        -- still in progress. The loop naturally exits when stage becomes START.
        Citizen.CreateThreadNow(function()
            while state.stage == "SELECT" or state.stage == "BEFORE_START" do
                disableEventControls()

                local vehicle = GetVehiclePedIsUsing(PlayerPedId())
                if vehicle ~= 0 then
                    FreezeEntityPosition(vehicle, true)
                end

                Citizen.Wait(0)
            end
        end)
    end

    buildTileMap(savedColours)

    AnimpostfxPlay("MinigameEndNeutral", 0, false)
    SetVehicleFixed(state.vehicle)

    if roundNumber ~= 1 then
        PlaySoundFrontend(-1, "Deliver_Item", "GTAO_Biker_Modes_Soundset", false)
    end

    local localPlayer = CMG.getEventLocalPlayer()

    if localPlayer and localPlayer.active then
        if roundNumber == 1 then
            CMG.setEventIntroMessage(
                "TILE SURPRISE",
                "Remain safely on a tile and knock opponents off",
                3000
            )
        else
            CMG.announceMpBigMsg("Round " .. tostring(roundNumber), "", 3000)
        end
    end

    if roundNumber == 1 then
        CMG.hideAllDisplays("tilesurprise")
        state.stage = "BEFORE_START"

        CMG.showCountdownTimer(3)

        -- The event may have been cancelled while the countdown was running.
        if state.stage ~= "BEFORE_START" then
            return
        end

        FreezeEntityPosition(state.vehicle, false)
        CMG.enableMinigamePlayerTags(true, false, nil, formatPlayerTag)
        CMG.setPlayerCanOpenLeaderboard(true)

        state.stage = "START"

        while state.stage == "START" do
            updateGameplay()
            Citizen.Wait(0)
        end
    end
end)

-- Announces the safe colour, creates/colours the boundary walls, runs the
-- countdown and finally drops every unsafe tile.
RegisterNetEvent("0c97107a0d", function(safeColourIndex, countdownSeconds)
    local colourInfo = TILE_COLOURS[safeColourIndex]

    Citizen.CreateThreadNow(function()
        PlaySoundFrontend(-1, "Crates_Blipped", "GTAO_Biker_Modes_Soundset", false)
        CMG.announceMpBigMsg(
            "Head to a " .. colourInfo[2] .. colourInfo[1] .. "~w~ tile",
            "",
            2000
        )
    end)

    for layerIndex = 1, 1 do
        local zOffset = (layerIndex - 1) * 200.0
        local layerOrigin = vector3(
            MAP_ORIGIN.x,
            MAP_ORIGIN.y,
            MAP_ORIGIN.z - zOffset
        )

        for columnIndex = 1, state.mapSize do
            for rowIndex = 1, state.mapSize do
                createBoundaryWalls(
                    layerOrigin,
                    layerIndex,
                    columnIndex,
                    rowIndex
                )
            end
        end
    end

    if state.walls then
        for _, layerWalls in ipairs(state.walls) do
            for _, wall in ipairs(layerWalls) do
                SetObjectTextureVariation(wall, safeColourIndex)
            end
        end
    end

    local previousTick = GetGameTimer()
    state.counter = countdownSeconds

    while state.counter do
        local now = GetGameTimer()

        if now - previousTick > 1000 then
            state.counter = state.counter - 1
            previousTick = now

            if state.counter == 0 then
                state.counter = nil
                break
            else
                PlaySoundFrontend(-1, "Checkpoint_Buzz", "DLC_AW_Frontend_Sounds", false)
            end
        end

        drawNativeText(
            "Head to a " .. colourInfo[2] .. colourInfo[1] .. "~w~ tile"
        )

        Citizen.Wait(0)
    end

    dropUnsafeTiles(safeColourIndex)
    ShakeGameplayCam("MEDIUM_EXPLOSION_SHAKE", 1.0)
end)

-- Updates a participant's remaining lives and displays the corresponding
-- knockout/elimination notification.
RegisterNetEvent(
    "70a0b3cccd",
    function(
        serverId,
        playerColourCode,
        remainingLives,
        playerName,
        killerColourCode,
        killerName
    )
        if remainingLives == 0 then
            if killerColourCode and killerName then
                notify(
                    playerColourCode
                        .. playerName
                        .. " ~w~has been eliminated by "
                        .. killerColourCode
                        .. killerName
                        .. "~w~!"
                )
            else
                notify(playerColourCode .. playerName .. " ~w~has been eliminated!")
            end
        else
            local lifeLabel = remainingLives > 1 and "lives" or "life"

            if killerColourCode and killerName then
                notify(string.format(
                    "%s%s~w~ has been knocked out by %s%s~w~! (%d %s remaining)",
                    playerColourCode,
                    playerName,
                    killerColourCode,
                    killerName,
                    remainingLives,
                    lifeLabel
                ))
            else
                notify(string.format(
                    "%s%s~w~ has %d %s remaining!",
                    playerColourCode,
                    playerName,
                    remainingLives,
                    lifeLabel
                ))
            end
        end

        for _, playerData in ipairs(currentEvent.players) do
            if playerData.source == serverId then
                playerData.lives = remainingLives

                if playerData.tag then
                    RemoveMpGamerTag(playerData.tag)
                    playerData.tag = nil
                end

                break
            end
        end
    end
)

Citizen.CreateThread(function()
    local eventName = "Tile Surprise"

    CMG.registerMinigameCleanupHandler(eventName, function()
        deleteGeneratedMapObjects()

        CMG.enableMinigamePlayerTags(false, false)
        CMG.setIgnoreEventRespawns(false)

        ReleaseNamedScriptAudioBank("DLC_STUNT/STUNT_RACE_01")
        ReleaseNamedScriptAudioBank("DLC_STUNT/STUNT_RACE_02")
        ReleaseNamedScriptAudioBank("DLC_STUNT/STUNT_RACE_03")

        TriggerMusicEvent("BST_STOP")
        RemoveNamedPtfxAsset("core")

        CMG.setPlayerCanOpenLeaderboard(false)
        DeleteEntity(state.vehicle)
        CMG.showAllDisplays("tilesurprise")

        BusyspinnerOff()
        SetPlayerControl(PlayerId(), true, 0)

        state = {}
    end)

    local options = {
        customSpawncode = nil,
    }

    CMG.registerMinigameOptionsHandler(eventName, function()
        RageUI.ButtonWithStyle(
            "~y~Custom Spawncode",
            "The custom spawncode to use on the map. Leave empty to have the default vehicle selection used.",
            {
                RightLabel = options.customSpawncode or "N/A",
            },
            true,
            function(_, _, selected)
                if selected then
                    CMG.clientPrompt("Enter Spawncode", "", function(input)
                        local spawncode = string.lower(input)

                        if IsModelValid(GetHashKey(spawncode)) then
                            options.customSpawncode = spawncode
                        else
                            options.customSpawncode = nil
                        end
                    end)
                end
            end
        )

        return options
    end)
end)