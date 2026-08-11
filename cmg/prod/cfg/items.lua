--[[
    LEVEL 1 BEGINNER GUIDE — Items
    ===================================

    File: cmg/prod/cfg/items.lua
    Runs as: Config/shared data — is mainly loaded as data/configuration by other scripts.
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
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_backpacks, cfg/cfg_food, cfg/item/

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local cfg = {}
local backpackCfg = CMG.loadModule("cfg/cfg_backpacks")

-- === HELPER FUNCTION: use_backpack(source,user_id,itemId) ===
local function use_backpack(source,user_id,itemId)
    if CMG.getExtraStorageSize(user_id) == 0 then
        if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
            for _, storeInfo in pairs(backpackCfg.stores) do
                for backpackName,backpackInfo in pairs(storeInfo) do
                    if backpackName ~= "_config" then
                        local compId, coll, li, tex, _, size = table.unpack(backpackInfo)
                        if itemId == backpackName then
                            TriggerClientEvent("f0b530372d", source, compId, coll, li, tex, size, backpackName)
                            CMG.setExtraStorageSize(user_id,size)
                            CMG.setUserBackpack(user_id,backpackName)
                            CMG.sendClientInventoryData(user_id)
                        end
                    end
                end
            end
        end
    else
        CMGclient.notify(source, {"~r~You already have a backpack equipped."})
    end
end

-- === HELPER FUNCTION: play_smell(player) ===
local function play_smell(player)
    local seq3 = {
        {"mp_player_intdrink", "intro_bottle", 1},
        {"mp_player_intdrink", "loop_bottle", 1},
        {"mp_player_intdrink", "outro_bottle", 1}
    }

    CMGclient.playAnim(player, {true, seq3, false})
end

-- === HELPER FUNCTION: play_eat(player) ===
local function play_eat(player)
    local seq = {
        {"mp_player_inteat@burger", "mp_player_int_eat_burger_enter", 1},
        {"mp_player_inteat@burger", "mp_player_int_eat_burger", 1},
        {"mp_player_inteat@burger", "mp_player_int_eat_burger_fp", 1},
        {"mp_player_inteat@burger", "mp_player_int_eat_exit_burger", 1}
    }

    CMGclient.playAnim(player, {true, seq, false})
end

-- === HELPER FUNCTION: use_firework(source, user_id) ===
local function use_firework(source, user_id)
    CMG.useFireworkBox(user_id, source)
end

-- === HELPER FUNCTION: use_morphine(source,user_id,itemId) ===
local function use_morphine(source,user_id,itemId)
	if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
		TriggerClientEvent("30b690a8dd",source)
	end
end

-- === HELPER FUNCTION: use_nhsmorphine(source, user_id) ===
local function use_nhsmorphine(source, user_id)
    if CMG.hasPermission(user_id, "nhs.onduty.permission") then
        TriggerClientEvent("676d7f86f9", source)
    else
        notify(source, "~r~You lack the skills to use this drug.")
    end
end

-- === HELPER FUNCTION: use_bandage(source, user_id, itemId) ===
local function use_bandage(source, user_id, itemId)
    local state = CMG.TriggerClientCallback(source, "79d0fa347c")
    if not state or not state.bleeding then
        notify(source, "~r~You are not bleeding.")
        return
    end
    if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
        TriggerClientEvent("b14b321665", source, state.fromArm, state.fromLeg)
    end
end

-- === HELPER FUNCTION: use_binoculars(source,user_id,itemId) ===
local function use_binoculars(source,user_id,itemId)
	if CMG.getInventoryItemAmount(user_id, itemId) > 0 then
		TriggerClientEvent("dfb83eb4ef", source)
	end
end

-- === HELPER FUNCTION: use_handcuffkeys(source,user_id,itemId) ===
local function use_handcuffkeys(source,user_id,itemId)
    CMGclient.getNearestPlayer(source,{6},function(targetSrc)
        local targetId = CMG.getUserId(targetSrc)
        if targetId then
            if CMG.tryGetInventoryItem(user_id, itemId, 1, false) then
                CMG.handcuffPlayer(user_id,targetId, false, false, false, function() end)
            end
        end
    end)
end

-- === HELPER FUNCTION: use_handcuffs(source,user_id,itemId) ===
local function use_handcuffs(source,user_id,itemId)
    CMGclient.getNearestPlayer(source,{6},function(targetSrc)
        local targetId = CMG.getUserId(targetSrc)
        if targetId then
            if CMG.getInventoryItemAmount(user_id, itemId) > 0 then
                CMG.handcuffPlayer(user_id,targetId, true, false, false, function() end)
            end
        end
    end)
end

-- === HELPER FUNCTION: use_taco(source,user_id,itemId) ===
local function use_taco(source,user_id,itemId)
	if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
		TriggerClientEvent("49921b1e25", source)
	end
end

local foodCfg = CMG.loadModule("cfg/cfg_food")

-- === HELPER FUNCTION: use_business_effect(source, user_id, itemId) ===
local function use_business_effect(source, user_id, itemId)
	if CMG.isBusinessFoodBlockedForUser(user_id, itemId) then
		notify(source, "~r~You can not use your own items.")
		return
	end
	if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
		CMG.applyBusinessItemEffect(source, user_id, itemId)
	end
end

-- === HELPER FUNCTION: use_food(source, user_id, itemId) ===
local function use_food(source, user_id, itemId)
	if CMG.isPlayerEating(user_id) then
		return
	end
	if CMG.isBusinessFoodBlockedForUser(user_id, itemId) then
		notify(source, "~r~You can not use your own items.")
		return
	end
	if foodCfg.food[itemId] and CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
		CMG.setPlayerEating(user_id)
		TriggerClientEvent("c82f62b8de", source, itemId)
		CMG.applyBusinessItemEffect(source, user_id, itemId)
	end
end

-- === HELPER FUNCTION: use_camera(source,user_id,itemId) ===
local function use_camera(source,user_id,itemId)
	if CMG.getInventoryItemAmount(user_id, itemId) >= 1 then
		TriggerClientEvent("f55afa9558", source, "camera")
	end
end

-- === HELPER FUNCTION: use_zombiemeat(source,user_id,itemId) ===
local function use_zombiemeat(source,user_id,itemId)
	if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
		play_eat(source)
        TriggerClientEvent("c771c826dd", source)
	end
end

-- === HELPER FUNCTION: use_mic(source,user_id,itemId) ===
local function use_mic(source,user_id,itemId)
	if CMG.getInventoryItemAmount(user_id, itemId) >= 1 then
		TriggerClientEvent("f55afa9558", source, "micA")
	end
end

-- === HELPER FUNCTION: use_boomarm(source,user_id,itemId) ===
local function use_boomarm(source,user_id,itemId)
	if CMG.getInventoryItemAmount(user_id, itemId) >= 1 then
		TriggerClientEvent("f55afa9558", source, "micB")
	end
end

-- === HELPER FUNCTION: use_cocaine(source,user_id,itemId) ===
local function use_cocaine(source,user_id,itemId)
	if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
        play_smell(source)
		TriggerClientEvent("770ce54c02", source)
	end
end

-- === HELPER FUNCTION: use_heroin(source,user_id,itemId) ===
local function use_heroin(source,user_id,itemId)
	if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
        play_smell(source)
		TriggerClientEvent("631801299a", source)
	end
end

-- === HELPER FUNCTION: use_lsd(source,user_id,itemId) ===
local function use_lsd(source,user_id,itemId)
	if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
        TriggerClientEvent("2155168724",source,30000)
        CMG.updateWeeklyTaskData(user_id, "take_lsd", nil)
	end
end

-- === HELPER FUNCTION: drink_gin(source,user_id,itemId) ===
local function drink_gin(source,user_id,itemId)
	if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
        TriggerClientEvent("a72f22e19a",source)
	end
end

-- === HELPER FUNCTION: drink_fosters(source,user_id,itemId) ===
local function drink_fosters(source,user_id,itemId)
	if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
        TriggerClientEvent("6c304cd42b",source, "w_me_fosters")
	end
end

-- === HELPER FUNCTION: drink_darkfruit(source,user_id,itemId) ===
local function drink_darkfruit(source,user_id,itemId)
	if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
        TriggerClientEvent("6c304cd42b",source, "w_me_darkfruit")
	end
end

-- === HELPER FUNCTION: drink_stella(source,user_id,itemId) ===
local function drink_stella(source,user_id,itemId)
	if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
        TriggerClientEvent("6c304cd42b",source, "w_me_stella")
	end
end

-- === HELPER FUNCTION: drink_coors(source,user_id,itemId) ===
local function drink_coors(source,user_id,itemId)
	if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
        TriggerClientEvent("6c304cd42b",source, "w_me_coors")
	end
end

-- === HELPER FUNCTION: use_unknownsweet(source,user_id,itemId) ===
local function use_unknownsweet(source,user_id,itemId)
    if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
        TriggerClientEvent("46214fe8ae", source)
	end
end

-- === HELPER FUNCTION: use_shaver(source, user_id, itemId) ===
local function use_shaver(source, user_id, itemId)
    CMGclient.getNearestPlayer(source, {4}, function(targetPlayerSrc)
        if not targetPlayerSrc then
            notify(source, "~r~No player nearby.")
            return
        end

        CMGclient.isPlayerKneeling(targetPlayerSrc, {}, function(isKneeling)
            if not isKneeling then
                notify(source, "~r~Player must be on the kneeling on the ground.")
                return
            end

            if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
                TriggerClientEvent("e4bcfd6526", source, targetPlayerSrc)
                TriggerClientEvent("05f833428d", targetPlayerSrc, source)
                TriggerEvent("5f3e9a3866", targetPlayerSrc)
                Citizen.Wait(2500)
                TriggerClientScopeEvent("c38ea56445", source, targetPlayerSrc)

                local targetUserId = CMG.getUserId(targetPlayerSrc)
                if targetUserId then
                    CMG.updateWeeklyTaskData(user_id, "shave_people", targetUserId)
                end
            end
        end)
    end)
end

-- === HELPER FUNCTION: use_burner_phone(source) ===
local function use_burner_phone(source)
    TriggerEvent("d19508f3d9", source)
end

-- === HELPER FUNCTION: use_armour_plate(source, user_id, itemId) ===
local function use_armour_plate(source, user_id, itemId)
    if not CMG.hasPermission(user_id, "rebellicense.whitelisted") and not select(1, CMG.isPlayerInEvent(source)) then
        notify(source, "~r~You require the rebel license and advanced rebel license to use this.")
        return
    end

    if not CMG.hasPermission(user_id, "advrebellicense.whitelisted") and not select(1, CMG.isPlayerInEvent(source)) then
        notify(source, "~r~You require the advanced rebel license to use this.")
        return
    end

    if CMG.getPlayerArmour(source) >= 100 then
        notify(source, "~r~You already have full armour.")
        return
    end

    CMGclient.getPlayerSpeed(source, {}, function(speed)
        if speed > 0.1 then
            notify(source, "~r~You must be stationary to apply armour plates.")
            return
        end

        if CMG.tryGetInventoryItem(user_id, itemId, 1, false) then
            TriggerClientEvent("b44d4efa87", source)
            Citizen.Wait(5000)
            CMG.setPlayerArmour(source, 100)
            notify(source, "~g~Applied armour plate.")
        end
    end)
end

-- === HELPER FUNCTION: use_police_armour_plate(source, user_id, itemId) ===
local function use_police_armour_plate(source, user_id, itemId)
    if not CMG.hasPermission(user_id, "police.onduty.permission") then
        notify(source, "~r~This armour plate can only be used by police.")
        return
    end

    if CMG.getPlayerArmour(source) >= 100 then
        notify(source, "~r~You already have full armour.")
        return
    end

    if CMG.tryGetInventoryItem(user_id, itemId, 1, false) then
        TriggerClientEvent("b44d4efa87", source)
        Citizen.Wait(5000)
        CMG.givePlayerFactionArmour(source)
        notify(source, "~g~Applied armour plate.")
    end
end

-- === HELPER FUNCTION: use_purge_armour_plate(source, user_id, itemId) ===
local function use_purge_armour_plate(source, user_id, itemId)
    if not CMG.hasPermission(user_id, "purge.active") then
        notify(source, "~r~You must be in purge to use this.")
        return
    end

    if CMG.getPlayerArmour(source) >= 100 then
        notify(source, "~r~You already have full armour.")
        return
    end

    CMGclient.getPlayerSpeed(source, {}, function(speed)
        if speed > 0.1 then
            notify(source, "~r~You must be stationary to apply armour plates.")
            return
        end

        if CMG.tryGetInventoryItem(user_id, itemId, 1, false) then
            TriggerClientEvent("b44d4efa87", source)
            Citizen.Wait(5000)
            CMG.setPlayerArmour(source, 50)
            notify(source, "~g~Applied armour plate.")
        end
    end)
end

-- === HELPER FUNCTION: use_vigilante_armour_plate(source, user_id, itemId) ===
local function use_vigilante_armour_plate(source, user_id, itemId)
    if not CMG.hasPermission(user_id, "vigilante.onduty.permission") then
        notify(source, "~r~This armour plate can only be used by vigilantes on duty.")
        return
    end

    local armourPercent = CMG.getVigilanteSkillArmourPercent(user_id)
    if armourPercent <= 0 then
        notify(source, "~r~You need to unlock armour plates in the vigilante skill tree to use this.")
        return
    end

    if CMG.getPlayerArmour(source) >= armourPercent then
        notify(source, "~r~You already have full armour for your current skill level.")
        return
    end

    CMGclient.getPlayerSpeed(source, {}, function(speed)
        if speed > 0.1 then
            notify(source, "~r~You must be stationary to apply armour plates.")
            return
        end

        if CMG.tryGetInventoryItem(user_id, itemId, 1, false) then
            TriggerClientEvent("b44d4efa87", source)
            local baseMs = 5000
            local reduction = CMG.getVigilanteArmourApplySpeedReductionPercent(user_id)
            local duration = math.max(500, math.floor(baseMs * (1 - reduction / 100)))
            Citizen.Wait(duration)
            CMG.setPlayerArmour(source, armourPercent)
            notify(source, string.format("~g~Applied armour plate (%s%%).", armourPercent))
        end
    end)
end

-- === HELPER FUNCTION: use_megaphone(source, user_id) ===
local function use_megaphone(source, user_id)
    if (CMG.hasPermission(user_id, "police.onduty.permission") or CMG.hasPermission(user_id, "prisonguard.onduty.permission")) and CMG.hasPermission(user_id, "megaphone.permission") then
        TriggerClientEvent("2ba3a046fc", source)
    else
        notify(source, "~r~You do not have permission to use this item.")
    end
end

-- === HELPER FUNCTION: use_hmpgatekeyfob(source, user_id, itemId) ===
local function use_hmpgatekeyfob(source, user_id, itemId)
    if CMG.getInventoryItemAmount(user_id, itemId) > 0 then
        if CMG.hasPermission(user_id, "prisonguard.onduty.permission") or CMG.hasPermission(user_id, "police.onduty.permission") or CMG.hasPermission(user_id, "borderforce.onduty.permission") then
            TriggerClientEvent("6c335938c2", source)
        else
            notify(source, "~r~You are unable to use this item")
        end
    else
        notify(source, "~r~You do not have a HMP Gate Keyfob")
    end
end

-- === HELPER FUNCTION: use_diyrepairkit(source) ===
local function use_diyrepairkit(source)
    TriggerClientEvent("a37e8d69f4", source, "diy")
end

-- === HELPER FUNCTION: use_transportrepairkit(source) ===
local function use_transportrepairkit(source)
    TriggerClientEvent("a37e8d69f4", source, "transport")
end

-- === HELPER FUNCTION: use_truckrepairkit(source) ===
local function use_truckrepairkit(source)
    TriggerClientEvent("a37e8d69f4", source, "trucking")
end

-- === HELPER FUNCTION: use_letter(source, user_id, itemId) ===
local function use_letter(source, user_id, itemId)
    if CMG.getInventoryItemAmount(user_id, itemId) > 0 then
        TriggerClientEvent("5a1808605d", source)
    end
end

-- === HELPER FUNCTION: use_evidencebag(source, user_id, uniqueItemId) ===
local function use_evidencebag(source, user_id, uniqueItemId)
    if CMG.getInventoryItemAmount(user_id, uniqueItemId) == 1 then
        CMG.tryOpenEvidenceBag(source, user_id, uniqueItemId)
        return
    end
end

local POIs =
{
    ["HMP"] = {position=vector3(1684.822266, 2581.853516, 62.797512), radius=500.0},
    ["Methmining"] = {position=vector3(1391.96484375,3603.0559082032,38.941928863526),radius=2},
    ["Methprocessing"] = {position=vector3(1011.0156860352,-3196.03125,-38.993114471436),radius=4},
    ["Heroinmining"] = {position=vector3(2304.98828125,5135.8110351563,51.296546936035),radius=100},
    ["Heroinprocessing"] = {position=vector3(1580.9086914062,3581.8850097656,34.838912963867),radius=10},
    ["LSDmining"] = {position=vector3(5382.7719726562,-5251.4077148438,34.086650848389),radius=100},
    ["LSDprocessing"] = {position=vector3(-2087.8676757812,2630.2211914062,3.083966255188),radius=35},
    ["LSDrefinery"] = {position=vector3(481.53744506836,-3254.2009277344,6.069260597229),radius=35},
    ["Goldmining"] = {position=vector3(-593.01190185546,2077.3544921875,131.38098144532),radius=10},
    ["Goldprocessing"] = {position=vector3(2711.3342285156,1519.6458740234,24.500577926636),radius=50},
    ["Diamondmining"] = {position=vector3(382.52517700195,2893.7443847656,43.554821014404),radius=100},
    ["Diamondprocessing"] = {position=vector3(2645.3518066406,2814.0886230469,33.947082519531),radius=100},
    ["Sandy"] = {position=vector3(1833.0328369141,3682.8110351563,33.270057678223), radius=200.0},
    ["SandyAirport"] = {position=vector3(1724.3901367188,3255.5581054688,41.177299499512),radius=300.0},
    ["Zancudo"] = {position=vector3(-2087.3723144531,2984.4274902344,32.803066253662),radius=600.0},
    ["OffShoreAirport"] = {position=vector3(5169.6079101562,7952.1459960938,22.863611221313),radius=1000.0},
    ["AsylumIsland"] = {position=vector3(4019.1638183594,4952.9575195312,26.555746078491),radius=700.0},
}

-- === HELPER FUNCTION: use_airdropflare(source, user_id, itemId) ===
local function use_airdropflare(source, user_id, itemId)
    if CMG.isPlayerInCityZone(source) then
        notify(source, "~r~Airdrops cannot be called in the city")
        return false
    end

    if CMG.isPlayerAboveMtChilliad(source) then
        notify(source, "~r~Airdrops cannot be called this high up!")
        return false
    end

    if CMG.getPlayerRoutingBucket(source) ~= 0 then
        notify(source, "~r~You cannot call an airdrop in this bucket")
        return false
    end

    if CMG.isPlayerBelowGroundLevel(source) then
        notify(source, "~r~You cannot call an airdrop underground")
        return false
    end

    local isPlayerInInterior = CMG.TriggerClientCallback(source, "c1d4a26d0d")
    if isPlayerInInterior then
        notify(source, "~r~You cannot call an airdrop while inside a building")
        return false
    end

    local playerPed = GetPlayerPed(source)
    if not DoesEntityExist(playerPed) then
        return false
    end
    local playerCoords = GetEntityCoords(playerPed)

    for _, poiInfo in pairs(POIs) do
        local dist = #(playerCoords - poiInfo.position)
        if dist < poiInfo.radius then
            notify(source, "~r~You cannot call an airdrop near a CMG POI")
            return false
        end
    end

    if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
        local location = GetEntityCoords(GetPlayerPed(source))
        if not CMG.callAirdrop(user_id, location) then
            CMG.giveInventoryItem(user_id, itemId, 1)
        end
    end
end

-- === HELPER FUNCTION: use_spraycan(source, user_id, itemId) ===
local function use_spraycan(source, user_id, itemId)
    if CMG.getInventoryItemAmount(user_id, itemId) > 0 then
        TriggerClientEvent("2fa07a16b3", source, false)
    end
end

-- === HELPER FUNCTION: use_sponge(source, user_id, itemId) ===
local function use_sponge(source, user_id, itemId)
    if CMG.getInventoryItemAmount(user_id, itemId) > 0 then
        TriggerClientEvent("10f402facb", source)
    end
end

-- === HELPER FUNCTION: use_vigijammer(source, user_id, itemId, hours) ===
local function use_vigijammer(source, user_id, itemId, hours)
    if CMG.isUserImmuneFromVigilantes(user_id) then
        notify(source, "~r~You are already jamming vigilantes, immunity expires in " .. CMG.getVigilanteImmunityTimeLeftFormatted(user_id))
        return
    end

    if CMG.getPlayerCombatTimer(source) > 0 then
        notify(source, "~r~You can not use a vigilante jammer with a combat timer.")
        return
    end

    local postCombatCooldownRemaining = CMG.getPlayerCombatTimerPostCooldownRemaining(source)
    if postCombatCooldownRemaining > 0 then
        notify(source, "~r~You can not use a vigilante jammer yet. Try again in " .. postCombatCooldownRemaining .. " seconds.")
        return
    end

    if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
        CMG.setVigilanteImmunity(user_id, hours)
    end
end

-- === HELPER FUNCTION: use_vigijammer_1hour(source, user_id, itemId) ===
local function use_vigijammer_1hour(source, user_id, itemId)
    use_vigijammer(source, user_id, itemId, 1)
end

-- === HELPER FUNCTION: use_vigijammer_2hours(source, user_id, itemId) ===
local function use_vigijammer_2hours(source, user_id, itemId)
    use_vigijammer(source, user_id, itemId, 2)
end

-- === HELPER FUNCTION: use_vigijammer_4hours(source, user_id, itemId) ===
local function use_vigijammer_4hours(source, user_id, itemId)
    use_vigijammer(source, user_id, itemId, 4)
end

--todo categorize with comments!
cfg.items = {
    --* AA Job
    ["repairkit"] = {"Repair Kit","Used to repair vehicles.",nil,1},

    --*Grinding Metals
    ["copperore"] = {"Copper Ore","A naturally occurring solid material from which a copper can be extracted",nil,1},
    ["copper"] = {"Copper","A not so rare metal used for pipes to keep you warm at night",nil,4},
    ["limestoneore"] = {"Limestone Ore","A naturally occurring solid material from which limestone can be extracted",nil,1},
    ["limestone"] = {"Limestone","A stone to make your concrete stronger",nil,4},
    ["goldore"] = {"Gold Ore","A naturally occurring solid material from which gold can be extracted",nil,1},
    ["gold"] = {"Gold","Some shiny ting",nil,4},
    ["uncutdiamond"] = {"Uncut Diamond","cloudy glass",nil,1},
    ["diamond"] = {"Diamonds","Make a pickaxe out of this and you'll be good for life",nil,4},

    --*Grinding Drugs
    ["dirtyweed"] = {"Weed leaf","some dirty green",nil,1},
    ["weed"] = {"Weed", "A pot.", nil, 6},
    ["dirtycocaine"] = {"Coca leaf","some dirty flour",nil,1},
    ["cocaine"] = {"Cocaine", "make some bread out of this?", use_cocaine, 6},
    ["dirtymeth"] = {"Ephedra","some dirty blue",nil,1},
    ["meth"] = {"Meth", "Some blue meth.", nil, 6},
    ["dirtyheroin"] = {"Opium Poppy", "take it and you might die",nil,1},
    ["heroin"] = {"Heroin", "make some bread out of this?", use_heroin, 6},
    ["dirtylsd"] = {"Frogs legs", "take it and you might die",nil,1},
    ["refinedlsd"] = {"Lysergic Acid Amide", "",nil,1},
    ["lsd"] = {"LSD", "", use_lsd, 6},
    ["rocks"] = {"Rocks","Useless rubble",nil,1},
    ["dirtycash"] = {"Dirty Cash", "", nil, 0},

    --*Border Force
    ["passport"] = {"UK Passport","UK Passport used  to traverse the border",nil,0.1},
    ["hmpgatekeyfob"] = {"HMP Gate Keyfob", "Keyfob used to open the front gates from your vehicle",use_hmpgatekeyfob, 0.1},

    --*Fishing job
    ["high_tier_bait"] = {"Peeler Crab Bait (High Tier)", "Peeler Crab Bait",nil, 1},
    ["mid_tier_bait"] = {"Lugworm Bait (Mid Tier)", "Lugworm Bait",nil, 1},
    ["low_tier_bait"] = {"Normal Bait (Low Tier)", "Normal Bait",nil, 1},
    ["old_boot"] = {"Old Boot", "Old Boot",nil, 1},
    ["bass_fish"] = {"Common Bass", "Bass fish",nil, 1},
    ["haddock_fish"] = {"Common Haddock", "Haddock fish",nil, 1},
    ["cod_fish"] = {"Common Cod", "Cod fish",nil, 1},
    ["carp_fish"] = {"Uncommon Carp", "Carp fish",nil, 1},
    ["pouting_fish"] = {"Uncommon Pouting", "Pouting fish",nil, 1},
    ["sole_fish"] = {"Uncommon Sole", "Sole fish",nil, 1},
    ["black_bream_fish"] = {"Uncommon Black Bream","Black Bream fish",nil, 1},
    ["red_mullet_fish"] = {"Rare Red Mullet", "Red Mullet fish",nil, 1},
    ["ling_fish"] = {"Rare Ling", "Ling fish",nil, 1},
    ["catfish_fish"] = {"Rare Catfish", "Catfish",nil, 1},
    ["wreckfish_fish"] = {"Very Rare Wreckfish", "Wreckfish",nil, 1},
    ["sturgeon_fish"] = {"Very Rare Sturgeon", "Sturgeon fish",nil, 1},
    ["red_scorpion_fish"] = {"Ultra Rare Red Scorpion Fish", "Red Scorpion Fish",nil, 1},
    ["small_shark_fin"] = {"Small Shark Fin", "Small Shark Fin", nil, 1},
    ["medium_shark_fin"] = {"Medium Shark Fin", "Medium Shark Fin", nil, 2},
    ["large_shark_fin"] = {"Large Shark Fin", "Large Shark Fin", nil, 3},

    --*Backpacks
    ["Large Hiking Backpack (+40kg)"] = {"Large Hiking Backpack (+40kg)", "",use_backpack,5.0},
    ["Black Hiking Backpack (+40kg)"] = {"Black Hiking Backpack (+40kg)", "",use_backpack,5.0},
    ["Light Bag (+20kg)"] = {"Light Bag (+20kg)", "",use_backpack,5.0},
    ["Very Light Bag (+15kg)"] = {"Very Light Bag (+15kg)", "",use_backpack,5.0},
    ["Rearwall Bag (+30kg)"] = {"Rearwall Bag (+30kg)", "",use_backpack,5.0},
    ["Hunting Backpack (+35kg)"] = {"Hunting Backpack (+35kg)", "",use_backpack,5.0},
    ["Para Bag (+30kg)"] = {"Para Bag (+30kg)", "",use_backpack,5.0},
    ["Rebel Backpack (+70kg)"] = {"Rebel Backpack (+70kg)", "",use_backpack,5.0},

    --*Foodwork Items
    ["bun"] = {"Bun", "", nil, 0.1},
    ["lettuce"] = {"Lettuce", "", nil, 0.1},
    ["tomato"] = {"Tomato", "", nil, 0.1},
    ["onion"] = {"Onion", "", nil, 0.1},
    ["cheese"] = {"Cheese", "", nil, 0.1},
    ["beef_patty"] = {"Beef Patty", "", nil, 0.1},

    ["burger"] = {"Burger", "Restores hunger", use_food, 0.1},
    ["hotdog"] = {"Hotdog", "Restores hunger", use_food, 0.1},
    ["donuts"] = {"Donuts", "Restores hunger", use_food, 0.1},
    ["pizza"] = {"Pizza", "Restores hunger", use_food, 0.1},
    ["noodles_box"] = {"Noodles Box", "Restores hunger", use_food, 0.2},
    ["pasta_box"] = {"Pasta Box", "Restores hunger", use_food, 0.2},
    ["ecola"] = {"eCola", "Restores thirst", use_food, 0.1},
    ["sprunk"] = {"Sprunk", "Restores thirst", use_food, 0.1},
    ["daiquiri"] = {"Daiquiri", "Restores thirst", use_food, 0.1},
    ["mojito"] = {"Mojito", "Restores thirst", use_food, 0.1},
    ["energy_drink"] = {"Energy Drink", "Boosts sprint speed", use_business_effect, 0.1},
    ["protein_bar"] = {"Protein Bar", "Temporarily increases carry capacity", use_business_effect, 0.1},
    ["carrot"] = {"Carrot", "Grants night vision", use_business_effect, 0.1},
    ["beer"] = {"Beer", "Allows punching", use_business_effect, 0.1},

    --*Misc Items
    ["headbag"] = {"Head Bag","",nil,0.1},
    ["policeheadbag"] = {"Police Head Bag", "", nil, 0.1},
    ["warrant"] = {"UK GOV Warrant","",nil,0.1},
    ["boltcutters"] = {"Bolt Cutters", "", nil, 3},
    ["lockpick"] = {"Lockpick", "Used to break into locks", nil, 1},
    ["ldnulockpick"] = {"Gold Lockpick", "Gold Lockpick with a higher success chance", nil, 1},
    ["pet_food"] = {"Pet Food", "Intended for consumption by pets", nil, 0.1},
    ["firework_box"] = {"Firework", "A small display contained within a box", use_firework, 0.1},
    ["morphine"] = {"Morphine", "Recovers a small amount of health",use_morphine,1.0},
    ["paracetamol"] = {"Morphine", "Recovers a small amount of health",use_morphine,1.0},
    ["nhsmorphine"] = {"NHS Morphine", "NHS Issued. Recovers a small amount of health",use_nhsmorphine,1.0},
    ["taco"] = {"Taco", "A delicious taco", use_taco, 0.1},
    ["cuffs"] = {"Handcuffs", "Fluffy pink handcuffs", use_handcuffs, 1.0},
    ["keys"] = {"Handcuff Keys", "Generic keys that fit in most cuffs", use_handcuffkeys, 0.1},
    ["binos"] = {"Binoculars", "Useful for seeing far objects up close", use_binoculars, 1},
    ["whiskey"] = {"Gin", "", drink_gin, 1},
    ["wrayandnephew"] = {"Wray & Nephew", "Product of Jamaica", drink_gin, 1},
    ["stella"] = {"Star Artisan", "Premium Lager Beer", drink_stella, 1},
    ["coorslight"] = {"Crest Bright", "Colder than most people from Canada", drink_coors, 1},
    ["fosters"] = {"Jostlers", "Australia's famous beer", drink_fosters, 1},
    ["darkfruits"] = {"Boldarrow Blackfruits", "Refreshingly light cider", drink_darkfruit, 1},
    ["tyskie"] = {"Tyskar", "Polish beer", drink_gin, 1},
    ["frostyjacks"] = {"Jacks Freeze", "Famous blue cider", drink_gin, 1},
    ["brewdog_3hazy"] = {"Stircat Haze Triple", "Brewed in Scotland", drink_gin, 1},
    ["boomarm"] = {"Boom Arm", "Long range microphone", use_boomarm, 1},
    ["microphone"] = {"Microphone", "Handheld microphone", use_mic, 1},
    ["camera"] = {"Camera", "4K video camera", use_camera, 1},
    ["rotten_meat"] = {"Rotten Meat", "", use_zombiemeat, 1},
    ["halloween_sweet"] = {"Unknown Sweet", "", use_unknownsweet, 0.1},
    ["electric_shaver"] = {"Electric Shaver", "Used to remove head, facial and body hair", use_shaver, 1},
    ["burner_phone"] = {"Burner Phone", "Way to communicate without your identity being exposed", use_burner_phone, 1},
    ["armour_plate"] = {"Armour Plate", "A portable armour item that can be applied", use_armour_plate, 20},
    ["police_armour_plate"] = {"Police Armour Plate", "A portable armour item that can be applied by police", use_police_armour_plate, 20},
    ["purge_armour_plate"] = {"Purge Armour Plate", "A portable armour item that can be applied in purge", use_purge_armour_plate, 20},
    ["vigilante_armour_plate"] = {"Vigilante Armour Plate", "A portable armour item for vigilantes", use_vigilante_armour_plate, 20},
    ["vigilante_spike_strip"] = {"Vigilante Spike Strip", "Deployable spike strip for vigilantes. Use /spikestrips to place.", nil, 10.0},
    ["radio"] = {"Civilian Radio", "", nil, 0.2},
    ["emergencyradio"] = {"Emergency Radio", "", nil, 0.2},
    ["megaphone"] = {"Megaphone", "", use_megaphone, 0.8},
    ["diyrepairkit"] = {"DIY Repair Kit", "", use_diyrepairkit, 10.0},
    ["bandage"] = {"Bandage", "Stops bleeding when applied to arm or leg wound", use_bandage, 1.0},
    ["letter"] = {"Blank Letter", "A blank letter which can be written inside", use_letter, 0.2},
    ["transportrepairkit"] = {"HMP Transport Repair Kit", "", use_transportrepairkit, 10.0},
    ["truckingrepairkit"] = {"Truck Repair Kit", "", use_truckrepairkit, 3.0},
    ["evidencebag"] = {"Evidence Bag", "Contains items seized by emergency services", use_evidencebag, 5.0},
    ["spraycan"] = {"Spray Can", "Used to spray graffiti on walls", use_spraycan, 1.0},
    ["sponge"] = {"Sponge", "Used to remove graffiti from walls", use_sponge, 1.0},
    ["airdropflare"] = {"Airdrop Flare", "", use_airdropflare, 5.0},
    ["jammer"] = {"Vigilante Jammer (1 hour)", "", use_vigijammer_1hour, 5.0},
    ["jammer2"] = {"Vigilante Jammer (2 hours)", "", use_vigijammer_2hours, 5.0},
    ["jammer3"] = {"Vigilante Jammer (4 hours)", "", use_vigijammer_4hours, 5.0},
}

-- load more items function

-- === HELPER FUNCTION: load_item_pack(name) ===
local function load_item_pack(name)
    local items = CMG.loadModule("cfg/item/"..name)
    if items then
        for k,v in pairs(items) do
            cfg.items[k] = v
        end
    else
        CMG.print("red","[CMG] item pack ["..name.."] not found")
    end
end

load_item_pack("weapons")


for k,v in pairs(cfg.items) do
    cfg.items[k].name=v[1]
    cfg.items[k].description=v[2]
    cfg.items[k].choices=v[3]
    cfg.items[k].weight=v[4]
end
return cfg

--?Item Definition format.
--* [idname] = {name,description,useItem_func,weight}
--* Description is no longer used, use empty string for future proofing.
