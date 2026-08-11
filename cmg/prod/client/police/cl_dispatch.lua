--[[
    LEVEL 1 BEGINNER GUIDE — Dispatch
    ======================================

    File: cmg/prod/client/police/cl_dispatch.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: police gameplay and tools, specifically the Dispatch feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 2
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: CEventGunShot
      * Server events sent: a29fe1820a
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
--[[
    Automatic Police Gunshot Dispatch
    ==================================

    This file helps the police dispatch system.

    Client callback 4bdccf1c50 returns basic information about THIS player:
      position
      streetName
      gender
      inRedzone

    It also listens for the local GTA event "CEventGunShot".

    Only about 1% of eligible gunshots create an automatic police report.
    The report is skipped when:
      * the shot was not fired by the local ped
      * another automatic gunshot report was sent less than 60 seconds ago
      * player is in aim training
      * player is in an arena
      * player is in a redzone
      * player is an on-duty Vigilante
      * player currently belongs to a faction
      * server callback c71a5ac32d returns anything other than zero
      * weapon group is one of the ignored/non-firearm groups below

    Eligible reports are sent through server event a29fe1820a.

    Hash-looking event/callback names are deliberately unchanged.
]]

-- ============================================================
-- LOCATION TEXT
-- ============================================================

local function getStreetAndZoneName(
    coords
)
    local streetHash =
        GetStreetNameAtCoord(
            coords.x,
            coords.y,
            coords.z
        )

    local streetName =
        GetStreetNameFromHashKey(
            streetHash
        )

    local zoneCode =
        GetNameOfZone(
            coords.x,
            coords.y,
            coords.z
        )

    local zoneName =
        GetLabelText(
            zoneCode
        )

    return
        streetName
        .. ", "
        .. zoneName
end


-- ============================================================
-- DISPATCH CALLBACK FOR THIS PLAYER
-- ============================================================

CMG.RegisterClientCallback(
    "4bdccf1c50",
    function()
        local coords =
            CMG.getPlayerCoords()

        return {
            position = coords,
            streetName =
                getStreetAndZoneName(
                    coords
                ),
            gender =
                CMG.getModelGender(),
            inRedzone =
                CMG.isPlayerInRedZone()
        }
    end
)


-- ============================================================
-- WEAPON-GROUP NAMES
-- ============================================================

local weaponGroupByHash = {
    [-755518101] = "DIGISCANNER",
    [-37788308] = "FIREEXTINGUISHER",
    [1175761940] = "HACKINGDEVICE",
    [-1569042529] = "HEAVY",
    [-728555052] = "MELEE",
    [-535475913] = "METALDETECTOR",
    [1159398588] = "MG",
    [-801780072] = "NIGHTVISION",
    [431593103] = "PARACHUTE",
    [1595662460] = "PETROLCAN",
    [416676503] = "PISTOL",
    [970310034] = "RIFLE",
    [860033945] = "SHOTGUN",
    [-957766203] = "SMG",
    [-1212426201] = "SNIPER",
    [690389602] = "STUNGUN",
    [1548507267] = "THROWN",
    [75159441] = "TRANQILIZER",
    [-1609580060] = "UNARMED"
}

local ignoredWeaponGroups = {
    "DIGISCANNER",
    "FIREEXTINGUISHER",
    "HACKINGDEVICE",
    "METALDETECTOR",
    "NIGHTVISION",
    "PARACHUTE",
    "PETROLCAN",
    "STUNGUN",
    "TRANQILIZER",
    "UNARMED",
    "UNKNOWN"
}

local weaponGroupDisplayNames = {
    DIGISCANNER = "Digiscanner",
    FIREEXTINGUISHER = "Fire Extinguisher",
    HACKINGDEVICE = "Hacking Device",
    HEAVY = "Heavy",
    MELEE = "Melee",
    METALDETECTOR = "Metal Detector",
    MG = "Machine Gun",
    NIGHTVISION = "Night Vision",
    PARACHUTE = "Parachute",
    PETROLCAN = "Petrol Can",
    PISTOL = "Pistol",
    RIFLE = "Rifle",
    SHOTGUN = "Shotgun",
    SMG = "SMG",
    SNIPER = "Sniper",
    STUNGUN = "Stun Gun",
    THROWN = "Thrown",
    TRANQILIZER = "Tranquilizer",
    UNARMED = "Unarmed",
    UNKNOWN = "Firearm"
}


local function getWeaponGroupName(
    weaponHash
)
    local groupHash =
        GetWeapontypeGroup(
            weaponHash
        )

    return
        weaponGroupByHash[
            groupHash
        ]
        or "UNKNOWN"
end


-- ============================================================
-- AUTOMATIC GUNSHOT REPORT
-- ============================================================

local lastGunshotReportAt = nil


AddEventHandler(
    "CEventGunShot",
    function(_, shooterPed)
        local localPed =
            PlayerPedId()

        if shooterPed ~= localPed then
            return
        end

        -- Roughly 1% chance.
        if math.random() > 0.01 then
            return
        end

        if lastGunshotReportAt
            and GetGameTimer()
                - lastGunshotReportAt
                < 60000 then
            return
        end

        if CMG.isAimTraining()
            or CMG.inArena()
            or CMG.isPlayerInRedZone() then
            return
        end

        if CMG.hasClientPermission(
            "vigilante.onduty.permission"
        ) then
            return
        end

        if CMG.getClientFaction() then
            return
        end

        if CMG.TriggerServerCallback(
            "c71a5ac32d"
        ) ~= 0 then
            return
        end

        local weaponHash =
            GetSelectedPedWeapon(
                shooterPed
            )

        local weaponGroup =
            getWeaponGroupName(
                weaponHash
            )

        if table.has(
            ignoredWeaponGroups,
            weaponGroup
        ) then
            return
        end

        local coords =
            GetEntityCoords(
                shooterPed
            )

        local locationText =
            getStreetAndZoneName(
                coords
            )

        local dispatchReport = {
            priority = "high",
            title = "Gun shots",
            description =
                "Report of gun shots heard at "
                .. locationText
                .. ". Possible armed suspect(s) in the area.",
            time = 300,
            job = "police",

            location = {
                label = locationText,
                coords =
                    vector2(
                        coords.x,
                        coords.y
                    )
            },

            gender =
                CMG.getModelGender(),

            fields = {
                {
                    icon =
                        "fa-solid fa-circle-question",
                    label = "Suspect",
                    value =
                        "is armed with a "
                        .. weaponGroupDisplayNames[
                            weaponGroup
                        ]
                }
            }
        }

        TriggerServerEvent(
            "a29fe1820a",
            dispatchReport
        )

        lastGunshotReportAt =
            GetGameTimer()
    end
)
