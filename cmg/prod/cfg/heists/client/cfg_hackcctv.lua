--[[
    LEVEL 1 BEGINNER GUIDE — Hackcctv
    ======================================

    File: cmg/prod/cfg/heists/client/cfg_hackcctv.lua
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
      * Named functions: 37
      * Background threads: 1
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: 50b70a9edf, e8ecf4fc28, e62667d330, 292e52f985, beeb626586, 2d8b0ff1a7
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

-- === HELPER FUNCTION: ensureSecurityHasBlip(ped) ===
local function ensureSecurityHasBlip(ped)
    local pedBlip = GetBlipFromEntity(ped)
    if pedBlip == 0 then
        if GetRoomKeyFromEntity(PlayerPedId()) ~= 0 and not IsPedDeadOrDying(ped, true) then
            pedBlip = AddBlipForEntity(ped)
            SetBlipColour(pedBlip, 1)
            SetBlipScale(pedBlip, 0.5)
            SetBlipAsShortRange(pedBlip, true)
        end
    else
        if GetRoomKeyFromEntity(PlayerPedId()) == 0 or IsPedDeadOrDying(ped, true) then
           RemoveBlip(pedBlip)
        end
    end
end

-- === HELPER FUNCTION: onUpdateSecurityStand(ped) ===
local function onUpdateSecurityStand(ped)
    if NetworkHasControlOfEntity(ped) then
        if GetScriptTaskStatus(ped, 0xD88F2CDE) == 7 then
            local position = Entity(ped).state.position
            TaskStandGuard(ped, position.x, position.y, position.z, position.w, "WORLD_HUMAN_GUARD_STAND")
        end

        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, true)
    end

    ensureSecurityHasBlip(ped)
end

-- === HELPER FUNCTION: onUpdateSecurityAttack(ped) ===
local function onUpdateSecurityAttack(ped)
    if NetworkHasControlOfEntity(ped) then
        if GetScriptTaskStatus(ped, 0x2E85A751) == 7 then
            if GetScriptTaskStatus(ped, 0xD88F2CDE) ~= 7 then
                ClearPedTasksImmediately(ped)
            end

            SetPedCombatMovement(ped, 2)
            SetRagdollBlockingFlags(ped, 1)
            SetPedDropsWeaponsWhenDead(ped, false)

            TaskCombatPed(ped, PlayerPedId(), 0, 16)
        end

        local _, weaponModel = GetCurrentPedWeapon(ped, 0, false)
        if weaponModel ~= `WEAPON_PISTOL` then
            GiveWeaponToPed(ped, `WEAPON_PISTOL`, 1000, false, true)
        end

        if GetPedRelationshipGroupHash(ped) ~= `SECURITY_ATTACK` then
            SetPedRelationshipGroupHash(ped, `SECURITY_ATTACK`)
            SetPedRelationshipGroupDefaultHash(ped, `SECURITY_ATTACK`)
        end

        SetBlockingOfNonTemporaryEvents(ped, true)
        FreezeEntityPosition(ped, false)
    end


    ensureSecurityHasBlip(ped)
end

-- === HELPER FUNCTION: onUpdateWorkerSitting(ped) ===
local function onUpdateWorkerSitting(ped)
    if NetworkHasControlOfEntity(ped) then
        if not IsPedUsingScenario(ped, "PROP_HUMAN_SEAT_BENCH") then
            TaskStartScenarioInPlace(ped, "PROP_HUMAN_SEAT_BENCH", -1, false)
            FreezeEntityPosition(ped, true)
        end

        local position = Entity(ped).state.position
        SetEntityCoordsNoOffset(ped, position.x, position.y, position.z, false, false, false)

        SetBlockingOfNonTemporaryEvents(ped, true)
    end
end

-- === HELPER FUNCTION: onUpdatePersonStanding(ped, panic) ===
local function onUpdatePersonStanding(ped, panic)
    if NetworkHasControlOfEntity(ped) then
        if panic then
            if not IsEntityPlayingAnim(ped, "amb@code_human_cower@female@idle_a", "idle_c", 3) then
                RequestAnimDict("amb@code_human_cower@female@idle_a")
                if HasAnimDictLoaded("amb@code_human_cower@female@idle_a") then
                    TaskPlayAnim(ped, "amb@code_human_cower@female@idle_a", "idle_c", 8.0, 8.0, -1, 1, 1.0, false, false, false)
                end
                RemoveAnimDict("amb@code_human_cower@female@idle_a")
            end
        else
            if Entity(ped).state.usingPhone then
                if not IsPedUsingScenario(ped, "WORLD_HUMAN_STAND_MOBILE") then
                    TaskStartScenarioInPlace(ped, "WORLD_HUMAN_STAND_MOBILE", -1, false)
                end
            end
        end

        FreezeEntityPosition(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
    end
end

-- === HELPER FUNCTION: onUpdatePolicePilot(ped) ===
local function onUpdatePolicePilot(ped)
    local heliNetId = Entity(ped).state.heliNetId
    if heliNetId and NetworkDoesNetworkIdExist(heliNetId) and NetworkDoesEntityExistWithNetworkId(heliNetId) then
        local helicopter = NetworkGetEntityFromNetworkId(heliNetId)
        ---@cast helicopter Vehicle
        if helicopter ~= 0 then
            if NetworkHasControlOfEntity(helicopter) then
                if not GetIsVehicleEngineRunning(helicopter) then
                    SetVehicleEngineOn(helicopter, true, true, false)
                    SetHeliBladesFullSpeed(helicopter)
                end
            end
            if NetworkHasControlOfEntity(ped) then
                if GetPedInVehicleSeat(helicopter, -1) ~= ped then
                    SetPedIntoVehicle(ped, helicopter, -1)
                end
                SetBlockingOfNonTemporaryEvents(ped, true)
            end
        end
    end
    ensureSecurityHasBlip(ped)
end

-- === HELPER FUNCTION: onUpdatePoliceGunner(ped) ===
local function onUpdatePoliceGunner(ped)
    local heliNetId = Entity(ped).state.heliNetId
    if heliNetId and NetworkDoesNetworkIdExist(heliNetId) and NetworkDoesEntityExistWithNetworkId(heliNetId) then
        local helicopter = NetworkGetEntityFromNetworkId(heliNetId)
        ---@cast helicopter Vehicle
        if helicopter ~= 0 then
            if NetworkHasControlOfEntity(ped) then
                local pedVehicle = GetVehiclePedIsUsing(ped)
                if pedVehicle ~= helicopter then
                    local numSeats = GetVehicleModelNumberOfSeats(GetEntityModel(helicopter))
                    if numSeats >= 2 then
                        for seatIndex = (numSeats - 2), 0, -1 do
                            if IsVehicleSeatFree(helicopter, seatIndex) then
                                SetPedIntoVehicle(ped, helicopter, -1)
                            end
                        end
                    end
                end
                SetBlockingOfNonTemporaryEvents(ped, true)
            end
        end
    end
end

-- === HELPER FUNCTION: onUpdatePoliceARV(ped) ===
local function onUpdatePoliceARV(ped)
    local arvNetId = Entity(ped).state.arvNetId
    if arvNetId and NetworkDoesNetworkIdExist(arvNetId) and NetworkDoesEntityExistWithNetworkId(arvNetId) then
        local arv = NetworkGetEntityFromNetworkId(arvNetId)
        ---@cast arv Vehicle
        if arv ~= 0 then
            if NetworkHasControlOfEntity(arv) then
                if not GetIsVehicleEngineRunning(arv) then
                    SetVehicleEngineOn(arv, true, true, false)
                end
            end
            if NetworkHasControlOfEntity(ped) then
                local pedCoords = GetEntityCoords(ped, true)
                local pedVehicle = GetVehiclePedIsUsing(ped)
                local inVehicleDistance = (pedVehicle == 0) and 75.0 or 15.0
                local localPlayerVehicle = CMG.getPlayerVehicle()
                local isLocallyMoving = GetEntitySpeed(localPlayerVehicle) > 2.5
                local distance = #(pedCoords - CMG.getPlayerCoords())
                if distance < inVehicleDistance and not isLocallyMoving then
                    if pedVehicle == 0 then
                        if GetScriptTaskStatus(ped, `SCRIPT_TASK_COMBAT`) == 7 then
                            SetPedCombatMovement(ped, 2)
                            SetRagdollBlockingFlags(ped, 1)
                            SetPedDropsWeaponsWhenDead(ped, false)
                            TaskCombatPed(ped, PlayerPedId(), 0, 16)
                        end
                        local _, weaponModel = GetCurrentPedWeapon(ped, 0, false)
                        if weaponModel ~= `WEAPON_CARBINERIFLE` then
                            GiveWeaponToPed(ped, `WEAPON_CARBINERIFLE`, 1000, false, true)
                        end
                    else
                        if GetScriptTaskStatus(ped, `SCRIPT_TASK_LEAVE_VEHICLE`) == 7 then
                            TaskLeaveVehicle(ped, arv, 0)
                        end
                    end
                else
                    if pedVehicle == 0 then
                        local numSeats = GetVehicleModelNumberOfSeats(GetEntityModel(arv))
                        if numSeats >= 1 then
                            for seatIndex = -1, (numSeats - 2) do
                                if IsVehicleSeatFree(arv, seatIndex) then
                                    if distance < 125.0 then
                                        if GetScriptTaskStatus(ped, `SCRIPT_TASK_ENTER_VEHICLE`) == 7 then
                                            TaskEnterVehicle(ped, arv, -1, seatIndex, 3.0, 4194817, 0)
                                        end
                                    else
                                        SetPedIntoVehicle(ped, arv, seatIndex)
                                    end
                                end
                            end
                        end
                    elseif GetPedInVehicleSeat(arv, -1) == ped then
                        if localPlayerVehicle == 0 then
                            if GetScriptTaskStatus(ped, `SCRIPT_TASK_VEHICLE_MISSION`) == 7 then
                                TaskVehicleMissionPedTarget(ped, pedVehicle, PlayerPedId(), 6, 20.0, 786469, 5.0, 1.0, true)
                            end
                        else
                            if GetScriptTaskStatus(ped, `SCRIPT_TASK_VEHICLE_CHASE`) == 7 then
                                TaskVehicleChase(ped, PlayerPedId())
                            end
                        end
                    end
                end
                if GetPedRelationshipGroupHash(ped) ~= `SECURITY_ATTACK` then
                    SetPedRelationshipGroupHash(ped, `SECURITY_ATTACK`)
                    SetPedRelationshipGroupDefaultHash(ped, `SECURITY_ATTACK`)
                end
                SetBlockingOfNonTemporaryEvents(ped, true)
            end
        end
    end
    ensureSecurityHasBlip(ped)
end

-- === HELPER FUNCTION: onUpdateWorldPeds(panic) ===
local function onUpdateWorldPeds(panic)
    for _, ped in ipairs(GetGamePool("CPed")) do
        if NetworkGetEntityIsNetworked(ped) then
            local type = Entity(ped).state.type

            if type == "SECURITY_STAND" then
                onUpdateSecurityStand(ped)
            elseif type == "SECURITY_ATTACK" then
                onUpdateSecurityAttack(ped)
            elseif type == "WORKER_SITTING" then
                onUpdateWorkerSitting(ped)
            elseif type == "PERSON_STANDING" then
                onUpdatePersonStanding(ped, panic)
            elseif type == "POLICE_PILOT" then
                onUpdatePolicePilot(ped)
            elseif type == "POLICE_GUNNER" then
                onUpdatePoliceGunner(ped)
            elseif type == "POLICE_ARV" then
                onUpdatePoliceARV(ped)
            end
        end
    end
end

-- === HELPER FUNCTION: disableRunningAndSprintingInside() ===
local function disableRunningAndSprintingInside()
    if GetRoomKeyFromEntity(PlayerPedId()) ~= 0 then
        DisableControlAction(0, 21, true) -- INPUT_SPRINT
        DisableControlAction(0, 22, true) -- INPUT_JUMP
    end
end

-- === HELPER FUNCTION: checkPlayerIsBeingSilent(info) ===
local function checkPlayerIsBeingSilent(info)
    local playerPos = GetEntityCoords(PlayerPedId(), true)
    if #(playerPos - info.bankPosition) < 100.0 then
        if GetRoomKeyFromEntity(PlayerPedId()) ~= 0 then
            if GetVehiclePedIsUsing(PlayerPedId()) ~= 0 and not info.sentAlert then -- Driving inside
                print("Sending security alerted for reason 1.")
                -- Beginner: sends the "50b70a9edf" event to the server.
                TriggerServerEvent("50b70a9edf")
                info.sentAlert = true
            end

            local _, weaponModel = GetCurrentPedWeapon(PlayerPedId(), 0, false)
            if weaponModel ~= `WEAPON_UNARMED` and not info.sentAlert then -- Using weapons inside
                print("Sending security alerted for reason 2.")
                -- Beginner: sends the "50b70a9edf" event to the server.
                TriggerServerEvent("50b70a9edf")
                info.sentAlert = true
            end
        end
    end
    if info.knifeArch then
        if #(playerPos - info.knifeArchPosition.xyz) < 2.0 then
            local numWeapons = table.count(CMG.getWeapons())
            local limit = HasPedGotWeapon(PlayerPedId(), `GADGET_PARACHUTE`, false) and 1 or 0
            if numWeapons > limit and not info.sentAlert then -- Carrying weapons through knife arch
                print("Sending security alerted for reason 3.")
                -- Beginner: sends the "e8ecf4fc28" event to the server.
                TriggerServerEvent("e8ecf4fc28", info.knifeArchPosition.xyz)
                -- Beginner: sends the "50b70a9edf" event to the server.
                TriggerServerEvent("50b70a9edf")
                info.sentAlert = true
            end
            if not info.knifeArchInventoryCheck then
                -- Beginner: sends the "e62667d330" event to the server.
                TriggerServerEvent("e62667d330")
                info.knifeArchInventoryCheck = true
            end
        end
    end
end

-- === HELPER FUNCTION: ensureSecureDoorsAreLocked() ===
local function ensureSecureDoorsAreLocked()
    local lhsMetalDoor = GetClosestObjectOfType(272.13510131836,220.1669921875,97.16618347168, 5.0, 0x18651EA9, false, false, false)
    FreezeEntityPosition(lhsMetalDoor, true)

    local rhsMetalDoor = GetClosestObjectOfType(269.6491394043,213.09530639648,97.162208557129, 5.0, 0x18651EA9, false, false, false)
    FreezeEntityPosition(rhsMetalDoor, true)

    local roofLowerDoor = GetClosestObjectOfType(278.0891418457,223.49554443359,106.2822265625, 5.0, 0x0FF90DBD, false, false, false)
    FreezeEntityPosition(roofLowerDoor, true)

    local roofUpperDoor = GetClosestObjectOfType(278.05969238281,223.76918029785,110.17329406738, 5.0, 0x0FF90DBD, false, false, false)
    FreezeEntityPosition(roofUpperDoor, true)
end

-- === HELPER FUNCTION: drawPlayerCount(info) ===
local function drawPlayerCount(info)
    local timerBars = CMG.createTimerBars()
    timerBars.push("~y~MEMBERS~w~", tostring(#info.players))
    timerBars.draw()
end

-- === HELPER FUNCTION: exitHackingScaleform(info) ===
local function exitHackingScaleform(info)
    if info.scaleform then
        SetPlayerControl(PlayerId(), true, 0)
        SetScaleformMovieAsNoLongerNeeded(info.scaleform)
        SetScaleformMovieAsNoLongerNeeded(info.buttonScaleform)
        info.scaleform = nil
        info.buttonScaleform = nil
        info.numberLives = nil
        info.scaleformReturn = nil
        -- Beginner: sends the "292e52f985" event to the server.
        TriggerServerEvent("292e52f985", false)
        CMG.showAllDisplays("bankheist_setup")
    end
end

-- === HELPER FUNCTION: createHackingScaleform() ===
local function createHackingScaleform()
    CMG.hideAllDisplays("bankheist_setup")
    SetPlayerControl(PlayerId(), false, 0)

    local scaleform = RequestScaleformMovieInteractive("HACKING_PC")
    while not HasScaleformMovieLoaded(scaleform) do
        Citizen.Wait(0)
    end

    BeginScaleformMovieMethod(scaleform, "SET_LABELS")
    ScaleformMovieMethodAddParamTextureNameString("Local Disk (C:)")
    ScaleformMovieMethodAddParamTextureNameString("Network")
    ScaleformMovieMethodAddParamTextureNameString("External Device (F:)")
    ScaleformMovieMethodAddParamTextureNameString("adhesive.dll")
    ScaleformMovieMethodAddParamTextureNameString("eulen.exe")
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(scaleform, "SET_BACKGROUND")
    ScaleformMovieMethodAddParamInt(0)
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(scaleform, "ADD_PROGRAM")
    ScaleformMovieMethodAddParamFloat(1.0)
    ScaleformMovieMethodAddParamFloat(4.0)
    ScaleformMovieMethodAddParamTextureNameString("My Computer")
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(scaleform, "ADD_PROGRAM")
    ScaleformMovieMethodAddParamFloat(6.0)
    ScaleformMovieMethodAddParamFloat(6.0)
    ScaleformMovieMethodAddParamTextureNameString("Power Off")
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(scaleform, "SET_COLUMN_SPEED")
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamInt(255)
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(scaleform, "SET_COLUMN_SPEED")
    ScaleformMovieMethodAddParamInt(1)
    ScaleformMovieMethodAddParamInt(255)
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(scaleform, "SET_COLUMN_SPEED")
    ScaleformMovieMethodAddParamInt(2)
    ScaleformMovieMethodAddParamInt(255)
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(scaleform, "SET_COLUMN_SPEED")
    ScaleformMovieMethodAddParamInt(3)
    ScaleformMovieMethodAddParamInt(255)
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(scaleform, "SET_COLUMN_SPEED")
    ScaleformMovieMethodAddParamInt(4)
    ScaleformMovieMethodAddParamInt(255)
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(scaleform, "SET_COLUMN_SPEED")
    ScaleformMovieMethodAddParamInt(5)
    ScaleformMovieMethodAddParamInt(255)
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(scaleform, "SET_COLUMN_SPEED")
    ScaleformMovieMethodAddParamInt(6)
    ScaleformMovieMethodAddParamInt(255)
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(scaleform, "SET_COLUMN_SPEED")
    ScaleformMovieMethodAddParamInt(7)
    ScaleformMovieMethodAddParamInt(255)
    EndScaleformMovieMethod()

    return scaleform
end

-- === HELPER FUNCTION: onUpdateHackingScaleform(info) ===
local function onUpdateHackingScaleform(info)
    DrawScaleformMovieFullscreen(info.scaleform, 255, 255, 255, 255, 0)
    DrawScaleformMovieFullscreen(info.buttonScaleform, 255, 255, 255, 255, 0)

    BeginScaleformMovieMethod(info.scaleform, "SET_CURSOR")
    ScaleformMovieMethodAddParamFloat(GetDisabledControlNormal(0, 239))
    ScaleformMovieMethodAddParamFloat(GetDisabledControlNormal(0, 240))
    EndScaleformMovieMethod()

    DisableControlAction(0, 24, true)
    if IsDisabledControlJustPressed(0, 24) then
        BeginScaleformMovieMethod(info.scaleform, "SET_INPUT_EVENT_SELECT")
        info.scaleformReturn = EndScaleformMovieMethodReturnValue()
        PlaySoundFrontend(-1, "HACKING_CLICK", "", true)
    end

    DisableControlAction(0, 25, true)
    if IsDisabledControlJustPressed(0, 25) then
        BeginScaleformMovieMethod(info.scaleform, "SET_INPUT_EVENT_BACK")
        EndScaleformMovieMethod()
        PlaySoundFrontend(-1, "HACKING_CLICK", "", true)
    end

    if info.numberLives <= 0 then
        print("Sending security alerted for reason 4.")
        exitHackingScaleform(info)
        -- Beginner: sends the "50b70a9edf" event to the server.
        TriggerServerEvent("50b70a9edf")
        info.sentAlert = true
        return
    end

    if IsScaleformMovieMethodReturnValueReady(info.scaleformReturn) then
        local program = GetScaleformMovieMethodReturnValueInt(info.scaleformReturn)

        if program == 82 then
            PlaySoundFrontend(-1, "HACKING_CLICK_BAD", "", false)
        elseif program == 83 then
            BeginScaleformMovieMethod(info.scaleform, "RUN_PROGRAM")
            ScaleformMovieMethodAddParamFloat(83.0)
            EndScaleformMovieMethod()

            BeginScaleformMovieMethod(info.scaleform, "SET_ROULETTE_WORD")
            ScaleformMovieMethodAddParamTextureNameString(info.hackingText)
            EndScaleformMovieMethod()
        elseif program == 87 then
            info.numberLives = info.numberLives - 1

            BeginScaleformMovieMethod(info.scaleform, "SET_ROULETTE_WORD")
            ScaleformMovieMethodAddParamTextureNameString(info.hackingText)
            EndScaleformMovieMethod()

            BeginScaleformMovieMethod(info.scaleform, "SET_LIVES")
            ScaleformMovieMethodAddParamInt(info.numberLives)
            ScaleformMovieMethodAddParamInt(5)
            EndScaleformMovieMethod()

            PlaySoundFrontend(-1, "HACKING_CLICK_BAD", "", false)
        elseif program == 86 then
            PlaySoundFrontend(-1, "HACKING_SUCCESS", "", true)

            -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
            Citizen.CreateThread(function()
                BeginScaleformMovieMethod(info.scaleform, "SET_ROULETTE_OUTCOME")
                ScaleformMovieMethodAddParamBool(true)
                ScaleformMovieMethodAddParamTextureNameString("BRUTEFORCE SUCCESSFUL!")
                EndScaleformMovieMethod()

                Citizen.Wait(2500)

                BeginScaleformMovieMethod(info.scaleform, "CLOSE_APP")
                EndScaleformMovieMethod()

                BeginScaleformMovieMethod(info.scaleform, "OPEN_LOADING_PROGRESS")
                ScaleformMovieMethodAddParamBool(true)
                EndScaleformMovieMethod()

                BeginScaleformMovieMethod(info.scaleform, "SET_LOADING_PROGRESS")
                ScaleformMovieMethodAddParamInt(35)
                EndScaleformMovieMethod()

                BeginScaleformMovieMethod(info.scaleform, "SET_LOADING_TIME")
                ScaleformMovieMethodAddParamInt(35)
                EndScaleformMovieMethod()

                BeginScaleformMovieMethod(info.scaleform, "SET_LOADING_MESSAGE")
                ScaleformMovieMethodAddParamTextureNameString("Writing data to buffer..")
                ScaleformMovieMethodAddParamFloat(2.0)
                EndScaleformMovieMethod()

                Citizen.Wait(2500)

                BeginScaleformMovieMethod(info.scaleform, "SET_LOADING_MESSAGE")
                ScaleformMovieMethodAddParamTextureNameString("Executing malicious code..")
                ScaleformMovieMethodAddParamFloat(2.0)
                EndScaleformMovieMethod()

                BeginScaleformMovieMethod(info.scaleform, "SET_LOADING_TIME")
                ScaleformMovieMethodAddParamInt(15)
                EndScaleformMovieMethod()

                BeginScaleformMovieMethod(info.scaleform, "SET_LOADING_PROGRESS")
                ScaleformMovieMethodAddParamInt(75)
                EndScaleformMovieMethod()

                Citizen.Wait(1500)
                exitHackingScaleform(info)
                -- Beginner: sends the "beeb626586" event to the server.
                TriggerServerEvent("beeb626586")
            end)
        elseif program == 6 then
            Citizen.Wait(500)
            exitHackingScaleform(info)
        end
    end
end

-- === HELPER FUNCTION: createHackingInstructionalButtons() ===
local function createHackingInstructionalButtons()
    local scaleform = RequestScaleformMovie("instructional_buttons")

    while not HasScaleformMovieLoaded(scaleform) do
        Citizen.Wait(0)
    end

    BeginScaleformMovieMethod(scaleform, "CLEAR_ALL")
    EndScaleformMovieMethod()

    BeginScaleformMovieMethod(scaleform, "SET_DATA_SLOT")
    ScaleformMovieMethodAddParamInt(0)
    ScaleformMovieMethodAddParamPlayerNameString("~INPUT_ATTACK~")
    BeginTextCommandScaleformString("STRING")
    AddTextComponentSubstringKeyboardDisplay("Click / Select")
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

----------- [[ STAGE: DRIVE_TO_BANK ]] -----------

-- === HELPER FUNCTION: initDriveToBank(info) ===
local function initDriveToBank(info)
    info.bankBlip = AddBlipForCoord(info.bankPosition.x, info.bankPosition.y, info.bankPosition.z)
    SetBlipRoute(info.bankBlip, true)
    info.audioPlayed = false
    TriggerMusicEvent("AH3B_EVADE_COPS_RT")
end

-- === HELPER FUNCTION: runDriveToBank(info) ===
local function runDriveToBank(info)
    drawPlayerCount(info)

    if GetGameTimer() - info.lastInit > 10000 then
        if not info.audioPlayed then
            PlaySoundFrontend(-1, "wondering_what_doing", "dlc_bankheist_setupone_soundset", false)
            info.audioPlayed = true
        end
    end

    drawNativeText("Drive to the ~y~Bank Of England~w~")
end

-- === HELPER FUNCTION: cleanDriveToBank(info) ===
local function cleanDriveToBank(info)
    RemoveBlip(info.bankBlip)
    info.bankBlip = nil
    info.audioPlayed = nil
end

----------- [[ STAGE: GO_TO_ENTRANCE ]] -----------

-- === HELPER FUNCTION: initGoToEntrance(info) ===
local function initGoToEntrance(info)
    info.bankEnterBlips = {}
    for _, position in ipairs(info.bankEnterPositions) do
        local blip = AddBlipForCoord(position.x, position.y, position.z)
        SetBlipScale(blip, 0.5)
        info.bankEnterBlips[#info.bankEnterBlips + 1] = blip
    end

    PlaySoundFrontend(-1, "one_of_two_doors", "dlc_bankheist_setupone_soundset", false)
end

-- === HELPER FUNCTION: runGoToEntrance(info) ===
local function runGoToEntrance(info)
    drawPlayerCount(info)
    onUpdateWorldPeds(false)

    drawNativeText("Enter the bank through an ~y~entrance~w~")
end

-- === HELPER FUNCTION: cleanGotoEntrance(info) ===
local function cleanGotoEntrance(info)
    for _, blip in ipairs(info.bankEnterBlips) do
        RemoveBlip(blip)
    end
end

----------- [[ STAGE: FIND_COMPUTER ]] -----------

-- === HELPER FUNCTION: initFindComputer(info) ===
local function initFindComputer(info)
    PlaySoundFrontend(-1, "laptop_upstairs_offices", "dlc_bankheist_setupone_soundset", false)
    if info.knifeArchPosition then
        CMG.loadModel(`ch_prop_ch_metal_detector_01a`)
        info.knifeArch = CreateObjectNoOffset(`ch_prop_ch_metal_detector_01a`, info.knifeArchPosition.x, info.knifeArchPosition.y, info.knifeArchPosition.z, false, false, false)
        SetModelAsNoLongerNeeded(`ch_prop_ch_metal_detector_01a`)
        FreezeEntityPosition(info.knifeArch, true)
        SetEntityHeading(info.knifeArch, info.knifeArchPosition.w)
    end
end

-- === HELPER FUNCTION: runFindComputer(info) ===
local function runFindComputer(info)
    onUpdateWorldPeds(false)
    disableRunningAndSprintingInside()
    checkPlayerIsBeingSilent(info)
    drawPlayerCount(info)
    ensureSecureDoorsAreLocked()

    if GetRoomKeyFromEntity(PlayerPedId()) == 0 then
        drawNativeText("Head ~y~inside~w~ to locate the bank manager's ~b~computer~w~")
    else
        drawNativeText("Locate the bank manager's ~b~computer~w~")
    end
end

----------- [[ STAGE: HACK_COMPUTER ]] -----------

-- === HELPER FUNCTION: initHackComputer(info) ===
local function initHackComputer(info)
    local createInfo = info.computerCreateModel
    CMG.loadModel(createInfo.model)
    info.computerObject = CreateObjectNoOffset(createInfo.model, createInfo.position.x, createInfo.position.y,createInfo.position.z, false, false, false)
    SetModelAsNoLongerNeeded(createInfo.model)

    info.computerBlip = AddBlipForCoord(info.computerPosition.x, info.computerPosition.y, info.computerPosition.z)
    SetBlipSprite(info.computerBlip, 606)
    SetBlipColour(info.computerBlip, 18)
    SetBlipScale(info.computerBlip, 0.75)

    info.eventUsingComputer = RegisterHeistEvent("292e52f985", function(player)
        --print(string.format("Received set hacking player (server: %d)", player or 0))
        info.hackingPlayer = player
    end)

    PlaySoundFrontend(-1, "load_the_hack", "dlc_bankheist_setupone_soundset", false)
end

-- === HELPER FUNCTION: runHackComputer(info) ===
local function runHackComputer(info)
    onUpdateWorldPeds(false)
    disableRunningAndSprintingInside()
    checkPlayerIsBeingSilent(info)
    ensureSecureDoorsAreLocked()

    drawNativeText("Hack the ~b~computer~w to gain access to the cameras")

    if not info.hackingPlayer then
        local playerPos = GetEntityCoords(PlayerPedId(), true)
        if #(info.computerPosition - playerPos) < 1.0 then
            drawNativeNotification("Press ~INPUT_PICKUP~ to hack the computer")
            DisableControlAction(0, 38, true)
            if IsDisabledControlPressed(0, 38) then
                -- Beginner: sends the "292e52f985" event to the server.
                TriggerServerEvent("292e52f985", true)
                info.scaleform = createHackingScaleform()
                info.buttonScaleform = createHackingInstructionalButtons()
                info.numberLives = 5
                local texts = { "BATHBOMB", "ADHESIVE", "ROLEPLAY", "BANKPASS", "BUYMERCH", "SAVEFISH", "REDLIGHT", "LIVEONcE" }
                info.hackingText = texts[math.random(1, #texts)]
            end
        end
    end

    if info.scaleform then
        onUpdateHackingScaleform(info)
    end

    local hackComputerHudBars = CMG.createTimerBars()
    if not info.scaleform then
        hackComputerHudBars.push("~y~MEMBERS~w~", tostring(#info.players))
    end
    if info.hackingPlayer then
        local player = GetPlayerFromServerId(info.hackingPlayer)
        if player ~= -1 then
            hackComputerHudBars.push("~b~HACKING~w~", CMG.getPlayerName(player))
        end
    end
    if hackComputerHudBars.rowCount() > 0 then
        hackComputerHudBars.draw()
    end
end

-- === HELPER FUNCTION: cleanHackComputer(info) ===
local function cleanHackComputer(info)
    RemoveEventHandler(info.eventUsingComputer)
    info.eventUsingComputer = nil

    RemoveBlip(info.computerBlip)
    info.computerBlip = nil

    if info.computerObject then
        DeleteEntity(info.computerObject)
        info.computerObject = nil
    end

    info.hackingPlayer = nil
    exitHackingScaleform(info)
end

----------- [[ STAGE: VIEW_HACKED_CAMERAS ]] -----------

-- === HELPER FUNCTION: initViewHackedCameras(info) ===
local function initViewHackedCameras(info)
    info.cameraHandle = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
    SetCamActive(info.cameraHandle, true)
    RenderScriptCams(true, false, 0, false, false)

    info.lastCameraStage = 0
    info.lastCameraTransition = 0

    SetTimecycleModifier("scanline_cam_cheap")
    SetTimecycleModifierStrength(2.0)

    CMG.hideAllDisplays("bankheist_setup")
    SetPlayerControl(PlayerId(), false, 0)

    PlaySoundFrontend(-1, "hack_like_that_still", "dlc_bankheist_setupone_soundset", false)
    info.audioPlayed = false
end

-- === HELPER FUNCTION: runViewHackedCameras(info) ===
local function runViewHackedCameras(info)
    onUpdateWorldPeds(false)
    disableRunningAndSprintingInside()
    checkPlayerIsBeingSilent(info)
    drawPlayerCount(info)
    ensureSecureDoorsAreLocked()

    local currentTime = GetGameTimer()
    if currentTime - info.lastCameraTransition > 3500 and info.lastCameraStage < #info.camerasInformation then
        info.lastCameraStage = info.lastCameraStage + 1
        local camInfo = info.camerasInformation[info.lastCameraStage]
        local pos = camInfo.position

        local rotOne = camInfo.rotations[1]
        SetCamParams(info.cameraHandle, pos.x, pos.y, pos.z, rotOne.x, rotOne.y, rotOne.z, 70.0, 0, 1, 1, 2)

        local rotTwo = camInfo.rotations[2]
        if rotTwo then
            SetCamParams(info.cameraHandle, pos.x, pos.y, pos.z, rotTwo.x, rotTwo.y, rotTwo.z, 70.0, 3000, 1, 1, 2)
        end

        info.lastCameraTransition = currentTime
    end

    if not info.goldTrollieHandles then
        RequestModel(`hei_prop_hei_cash_trolly_01`)
        if HasModelLoaded(`hei_prop_hei_cash_trolly_01`) then
            info.goldTrollieHandles = {}
            for _, position in ipairs(info.goldTrolliePositions) do
                local handle = CreateObject(`hei_prop_hei_cash_trolly_01`, position.x, position.y, position.z, false, false, false)
                SetEntityHeading(handle, position.w)
                FreezeEntityPosition(handle, true)
                table.insert(info.goldTrollieHandles, handle)
            end
            SetModelAsNoLongerNeeded(`hei_prop_hei_cash_trolly_01`)
        end
    end

    if currentTime - info.lastInit > 11000 then
        if not info.audioPlayed then
            PlaySoundFrontend(-1, "lets_go_boys", "dlc_bankheist_setupone_soundset", false)
            info.audioPlayed = true
        end
    end

    HideHUDThisFrame()
end

-- === HELPER FUNCTION: cleanViewHackedCameras(info) ===
local function cleanViewHackedCameras(info)
    RenderScriptCams(false, false, 0, false, false)
    SetCamActive(info.cameraHandle, false)
    DestroyCam(info.cameraHandle, false)
    info.cameraHandle = nil
    info.lastCameraStage = nil
    info.lastCameraTransition = nil

    ClearTimecycleModifier()

    for _, handle in ipairs(info.goldTrollieHandles) do
        DeleteEntity(handle)
    end
    info.goldTrollieHandles = nil
    SetModelAsNoLongerNeeded(`hei_prop_hei_cash_trolly_01`)

    CMG.showAllDisplays("bankheist_setup")
    SetPlayerControl(PlayerId(), true, 0)
    info.audioPlayed = nil
end

----------- [[ STAGE: EXIT_BANK ]] -----------

-- === HELPER FUNCTION: initExitBank(info) ===
local function initExitBank(info)
    info.exitBlip = AddBlipForCoord(info.lestersFactoryPosition.x, info.lestersFactoryPosition.y, info.lestersFactoryPosition.z)
    SetBlipRoute(info.exitBlip, true)

    info.audioPlayed = false
end

-- === HELPER FUNCTION: runExitBank(info) ===
local function runExitBank(info)
    onUpdateWorldPeds(false)
    disableRunningAndSprintingInside()
    checkPlayerIsBeingSilent(info)
    drawPlayerCount(info)
    ensureSecureDoorsAreLocked()

    if GetGameTimer() - info.lastInit > 20000 then
        if not info.audioPlayed then
            PlaySoundFrontend(-1, "make_phone_calls", "dlc_bankheist_setupone_soundset", false)
            info.audioPlayed = true
        end
    end

    drawNativeText("Return to the ~y~factory~w~")
end

-- === HELPER FUNCTION: cleanExitBank(info) ===
local function cleanExitBank(info)
    RemoveBlip(info.exitBlip)
    info.exitBlip = nil
    info.audioPlayed = nil
end

----------- [[ STAGE: EXIT_BANK_ALERTED ]] -----------

-- === HELPER FUNCTION: initExitBankAlerted(info) ===
local function initExitBankAlerted(info)
    local startedLoading = GetGameTimer()
    while not RequestScriptAudioBank("ALARM_BELL_02", false) do
        if GetGameTimer() - startedLoading > 2000 then
            print("Failed to load bell audio bank")
            ReleaseNamedScriptAudioBank("ALARM_BELL_02")
            break
        end
        Citizen.Wait(0)
    end

    info.alarmSounds = {}
    for _, positon in ipairs(info.alarmPositions) do
        local sound = GetSoundId()
        PlaySoundFromCoord(info.alarmSound, "Bell_02", positon.x, positon.y, positon.z, "ALARMS_SOUNDSET", false, 0, false)
        info.alarmSounds[#info.alarmSounds + 1] = sound
    end

    local pos = info.alarmTurnOnCamera.position
    local rot = info.alarmTurnOnCamera.rotation
    info.alarmCamera = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", pos.x, pos.y, pos.z, rot.x, rot.y, rot.z, 60.0, false, 2)
    SetCamActive(info.alarmCamera, true)
    RenderScriptCams(true, false, 0, false, false)

    info.alarmTurnOnTime = GetGameTimer()
    info.alarmLastFlashed = GetGameTimer()

    AddRelationshipGroup("SECURITY_ATTACK")
    SetRelationshipBetweenGroups(0, `SECURITY_ATTACK`, `SECURITY_ATTACK`)

    local myGroup = GetPedRelationshipGroupHash(PlayerPedId())
    SetRelationshipBetweenGroups(5, `SECURITY_ATTACK`, myGroup)
    SetRelationshipBetweenGroups(5, myGroup, `SECURITY_ATTACK`)

    info.exitBlip = AddBlipForCoord(info.lestersFactoryPosition.x, info.lestersFactoryPosition.y, info.lestersFactoryPosition.z)
    SetBlipRoute(info.exitBlip, true)

    SetFakeWantedLevel(3)
    info.sentAlert = nil

    PlaySoundFrontend(-1, "you_fucking_stupid", "dlc_bankheist_setupone_soundset", false)
    info.hurryUpStage = 1

    info.eventGetSuitablePoliceSpawn = RegisterHeistEvent("57de4057f0", function()
        local playerCoords = CMG.getPlayerCoords()
        for nodeNum = math.random(51, 100), 50, -1 do
            local success, position, heading = GetNthClosestVehicleNodeWithHeading(playerCoords.x, playerCoords.y, playerCoords.z, nodeNum, vector3(0.0, 0.0, 0.0), 0.0, 0, 1, 3.0, 0.0)
            if success then
                -- Beginner: sends the "2d8b0ff1a7" event to the server.
                TriggerServerEvent("2d8b0ff1a7", position, heading)
                return
            end
        end
    end)
end

-- === HELPER FUNCTION: runExitBankAlerted(info) ===
local function runExitBankAlerted(info)
    onUpdateWorldPeds(true)
    drawPlayerCount(info)
    ensureSecureDoorsAreLocked()

    local currentTime = GetGameTimer()

    if info.alarmCamera and currentTime - info.alarmTurnOnTime > 2000 then
        RenderScriptCams(false, false, 0, false, false)
        SetCamActive(info.alarmCamera, false)
        DestroyCam(info.alarmCamera, false)
        info.alarmCamera = nil
        info.alarmTurnOnTime = nil
    end

    if currentTime - info.alarmLastFlashed > 500 then
        for _, position in ipairs(info.alarmPositions) do
            local intensity = (info.alarmCamera and 10.0 or 2.5)
            DrawLightWithRange(position.x - 0.5, position.y - 0.5, position.z, 255, 0, 0, 5.0, intensity)
            DrawLightWithRange(position.x + 0.5, position.y + 0.5, position.z, 255, 0, 0, 5.0, intensity)
            DrawLightWithRange(position.x, position.y, position.z, 255, 0, 0, 5.0, intensity)
        end

        if currentTime - info.alarmLastFlashed > 500 then
            info.alarmLastFlashed = currentTime
        end
    end

    if info.hurryUpStage < 3 then
        if currentTime - info.lastInit > (120000 * info.hurryUpStage) then
            if info.hurryUpStage == 1 then
                PlaySoundFrontend(-1, "where_you_at", "dlc_bankheist_setupone_soundset", false)
            elseif info.hurryUpStage == 2 then
                PlaySoundFrontend(-1, "hurry_up_get_here", "dlc_bankheist_setupone_soundset", false)
            end
            info.hurryUpStage = info.hurryUpStage + 1
        end
    end

    drawNativeText("Return to the ~y~factory~w~")
end

-- === HELPER FUNCTION: cleanExitBankAlerted(info) ===
local function cleanExitBankAlerted(info)
    RemoveBlip(info.exitBlip)
    info.exitBlip = nil

    if info.alarmSounds then
        for _, sound in ipairs(info.alarmSounds) do
            StopSound(sound)
            ReleaseSoundId(sound)
        end
    end
    info.alarmSounds = nil

    info.alarmLastFlashed = nil
    info.hurryUpStage = nil

    if info.eventGetSuitablePoliceSpawn then
        RemoveEventHandler(info.eventGetSuitablePoliceSpawn)
        info.eventGetSuitablePoliceSpawn = nil
    end

    RemoveRelationshipGroup(`SECURITY_ATTACK`)
    SetFakeWantedLevel(0)
end

----------- [[ CONFIGURATION ]] -----------

local heist = {}

heist.stages = {
    {
        name = "DRIVE_TO_BANK",
        init = initDriveToBank,
        run = runDriveToBank,
        clean = cleanDriveToBank
    },
    {
        name = "GO_TO_ENTRANCE",
        init = initGoToEntrance,
        run = runGoToEntrance,
        clean = cleanGotoEntrance
    },
    {
        name = "FIND_COMPUTER",
        init = initFindComputer,
        run = runFindComputer
    },
    {
        name = "HACK_COMPUTER",
        init = initHackComputer,
        run = runHackComputer,
        clean = cleanHackComputer
    },
    {
        name = "VIEW_HACKED_CAMERAS",
        init = initViewHackedCameras,
        run = runViewHackedCameras,
        clean = cleanViewHackedCameras
    },
    {
        name = "EXIT_BANK",
        init = initExitBank,
        run = runExitBank,
        clean = cleanExitBank,
        isFinishStage = true
    },
    {
        name = "EXIT_BANK_ALERTED",
        init = initExitBankAlerted,
        run = runExitBankAlerted,
        clean = cleanExitBankAlerted,
        isFinishStage = true
    }
}

heist.finish = function(info)
    TriggerMusicEvent("BST_STOP")
    ReleaseNamedScriptAudioBank("ALARM_BELL_02")
    if info.knifeArch then
        DeleteEntity(info.knifeArch)
    end
end

return heist
