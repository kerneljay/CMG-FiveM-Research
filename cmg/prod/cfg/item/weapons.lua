--[[
    BEGINNER GUIDE — Weapons
    ========================

    File: cmg/prod/cfg/item/weapons.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Config/data used:
      * cfg/weapons

    Example player-facing text in this file:
      * ~r~You can not use vigilante weapons.
      * ~r~You may only equip one weapon of class 
      * ~r~You are not allowed to do this right before a restart
      * ~r~You don

]]
local items = {}
local cfg = CMG.loadModule("cfg/weapons")

local function use_weapon(source,user_id,itemId,useAmount)
	if not CMG.hasGroup(user_id, "Vigilante") and CMG.isWeaponInVigilanteJob(itemId) then
		notify(source, "~r~You can not use vigilante weapons.")
		return
	end

	if not CMG.isCloseToRestart() then
		local weaponClass = CMG.getWeaponClass(itemId)
		local ammoItem = CMG.getAmmoType(itemId)
		if ammoItem == "modelammo" then
			if useAmount > 0 and CMG.tryGetInventoryItem(user_id, itemId, useAmount, true) then
				local weapons = {}
				weapons[itemId] = {ammo = useAmount}
				CMG.giveWeapon(source,user_id,weapons,false)
			end
		else
			CMGclient.getWeapons(source, {}, function(clientWeapons)
				for weaponId in pairs(clientWeapons) do
					if CMG.getWeaponClass(weaponId) == weaponClass and weaponClass ~= "Melee" then
						CMGclient.notify(source,{"~r~You may only equip one weapon of class " .. weaponClass .. " at a time."})
						return
					end

					if CMG.getWeaponClass(weaponId) == "Shotgun" and weaponClass == "Heavy" then
						CMGclient.notify(source,{"~r~You may only equip one weapon of class " .. weaponClass .. " at a time."})
						return
					end

					if CMG.getWeaponClass(weaponId) == "Heavy" and weaponClass == "Shotgun" then
						CMGclient.notify(source,{"~r~You may only equip one weapon of class " .. weaponClass .. " at a time."})
						return
					end
				end
				if ammoItem ~= "modelammo" then
					if CMG.tryGetInventoryItem(user_id, itemId, 1, true) then
						local weapons = {}
						weapons[itemId] = {ammo = 0}
						CMG.giveWeapon(source,user_id,weapons,false)
					end
				end
			end)
		end
	else
		CMGclient.notify(source,{"~r~You are not allowed to do this right before a restart"})
	end
end

local function useAmmoInternal(source, user_id, itemId, amount)
	CMGclient.getWeapons(source, {}, function(uweapons)
		local weaponAmmoID = CMG.getEquippedWeaponFromAmmoType(uweapons,itemId)
		if weaponAmmoID then
			if uweapons[weaponAmmoID] then
				if CMG.tryGetInventoryItem(user_id, itemId, amount, true) then -- give weapon ammo
					CMG.setAmmo(source,user_id,weaponAmmoID,uweapons[weaponAmmoID].ammo + amount)
				end
			else
				CMGclient.notify(source,{"~r~You don't have any weapons that fit this ammo type!"})
			end
		else
			CMGclient.notify(source,{"~r~You don't have any weapons that fit this ammo type."})
		end
	end)
end

local function use_ammo(source,user_id,itemId,useAmount)
	if useAmount then
		useAmmoInternal(source, user_id, itemId, math.min(useAmount, 250))
	else
		local amount = CMG.getInventoryItemAmount(user_id, itemId)
		CMG.prompt(source, "Amount of ammo to load: (max "..math.min(amount, 250)..")", "", function(_, ramountInput)
			local ramount = tonumber(ramountInput)
			if ramount then
				useAmmoInternal(source, user_id, itemId, ramount)
			end
		end)
	end
end

local meleeWeight = 2.0
local pistolWeight = 5.0
local smgWeight = 7.5
local shotgunWeight = 7.5
local assaultrifleWeight = 10.0
local sniperWeight = 15.0

--?Initialize weapon configs.
for weaponModel, weaponInfo in pairs(cfg.weapons) do
	--?Generate class tables

	local weaponWeight = 10.0
	if weaponInfo.class == "Pistol" then
		weaponWeight = pistolWeight
	elseif weaponInfo.class == "AR" then
		weaponWeight = assaultrifleWeight
	elseif weaponInfo.class == "Shotgun" then
		weaponWeight = shotgunWeight
	elseif weaponInfo.class == "SMG" then
		weaponWeight = smgWeight
	elseif weaponInfo.class == "Heavy" then
		weaponWeight = sniperWeight
	elseif weaponInfo.class == "Melee" then
		weaponWeight = meleeWeight
	end

	-- Mosins historically were shotguns which have a lower mass
	if weaponInfo.subType == "musket" then
		weaponWeight = shotgunWeight
	end

	--?Generate stored ammo type definitions
	local ammo
	if weaponInfo.ammo ~= "" then ammo = weaponInfo.ammo end
	items[weaponModel] = {weaponInfo.name,"",use_weapon,weaponWeight,ammo}
end

--Police Ammo
items["p12guage"] = {"Police-Issued 12 Guage","",use_ammo,0.01}
items["p5.56"] = {"Police-Issued 5.56mm","",use_ammo,0.01}
items["p7.62"] = {"Police-Issued 7.62mm","",use_ammo,0.01}
items["p9mm"] = {"Police-Issued 9mm","",use_ammo,0.01}
items["p.308"] = {"Police-Issued .308","",use_ammo,0.01}
items["plastic"] = {"Rubber Bullets","",use_ammo,0.01}

--Civ Ammo
items["7.62"] = {"7.62mm Bullets","",use_ammo,0.01}
items["5.56"] = {"5.56mm NATO Bullets","",use_ammo,0.01}
items["12guage"] = {"12 Guage Pellets","",use_ammo,0.01}
items["9mm"] = {"9mm Bullets","",use_ammo,0.01}
items[".357"] = {".357 Bullets","",use_ammo,0.01}
items[".45ACP"] = {".45 ACP Bullets","",use_ammo,0.01}
items[".308"] = {".308 Sniper Rounds","",use_ammo,0.01}
items["firework"] = {"Firework Bullets","",use_ammo,0.01}
items["hominglauncher"] = {"Homing Launcher Bullets","",use_ammo,0.01}
items["flare"] = {"Flare Ammo","",use_ammo,0.01}

--Placeholder Ammo
items["modelammo"] = {"Model Ammo","",use_ammo,0.01}

return items