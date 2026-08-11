--[[
    LEVEL 1 BEGINNER GUIDE — Hudmoney
    ======================================

    File: cmg/prod/client/hud/cl_hudmoney.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: HUD and on-screen player information, specifically the Hudmoney feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 6
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: 9c15108c11, CMG:setDisplayBankMoney, dba3e00154, 84cbcfbf61, 8afb93c3a0, CMG:initMoney
      * Local event handlers: 9c15108c11, CMG:setDisplayBankMoney, dba3e00154, CMG:initMoney, pma-voice:setTalkingMode, mumbleConnected, mumbleDisconnected
      * Server events sent: none found by static scan
      * NUI callbacks: moneyUILoaded
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
    Money HUD / Legacy Voice Indicator
    ==================================

    This file stores the money values displayed by the HUD:
      cash
      bank
      dirtyCash
      secondaryMoneyA
      secondaryMoneyB

    CMG.getClientDisplayMoney()
      Returns those five raw numeric values.

    CMG.refreshMoneyUI()
      Sends the latest values to either the legacy HUD or the newer HUD.

    Legacy HUD additionally shows:
      * player bounty
      * voice proximity text: Whisper / Talking / Shouting
      * whether the player is currently speaking

    Money update events:
      9c15108c11(amount)       -> cash
      CMG:setDisplayBankMoney -> bank
      dba3e00154(amount)      -> dirty cash
      84cbcfbf61(amount)      -> secondary money A
      8afb93c3a0(amount)      -> secondary money B
      CMG:initMoney(...)      -> initial values

    The exact purpose of the two secondary values is not described by this
    client file, so they keep neutral names.
]]

local cash = 0
local bank = 0
local dirtyCash = 0

local secondaryMoneyA = 0
local secondaryMoneyB = 0

local voiceMode = 2

local voiceModeNames = {
    "Whisper",
    "Talking",
    "Shouting"
}

local legacyTalking = false


-- ============================================================
-- PUBLIC MONEY GETTER
-- ============================================================

-- === HELPER FUNCTION: CMG.getClientDisplayMoney() ===
function CMG.getClientDisplayMoney()
    return
        cash,
        bank,
        dirtyCash,
        secondaryMoneyA,
        secondaryMoneyB
end


-- ============================================================
-- VOICE TEXT
-- ============================================================

-- === HELPER FUNCTION: getVoiceProximityText() ===
local function getVoiceProximityText()
    if not MumbleIsConnected() then
        return "Voice Disabled"
    end

    return
        voiceModeNames[
            voiceMode
        ]
        or "Talking"
end


-- ============================================================
-- LEGACY MONEY HUD
-- ============================================================

-- === HELPER FUNCTION: refreshLegacyMoneyHud() ===
local function refreshLegacyMoneyHud()
    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        updateMoney = true,

        cash =
            "£"
            .. getMoneyStringFormatted(
                tostring(cash)
            ),

        bank =
            "£"
            .. getMoneyStringFormatted(
                tostring(bank)
            ),

        redmoney =
            "£"
            .. getMoneyStringFormatted(
                tostring(dirtyCash)
            ),

        bounty =
            "£"
            .. getMoneyStringFormatted(
                tostring(
                    CMG.getClientBounty()
                )
            ),

        proximity =
            getVoiceProximityText(),

        topLeftAnchor =
            CMG.getRoundMinimapRightPx(),

        bountyJammed =
            false
    })

    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        showMoney = true
    })

    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        moneyTalking =
            legacyTalking
    })
end


-- ============================================================
-- NEW MONEY HUD
-- ============================================================

-- === HELPER FUNCTION: refreshModernMoneyHud() ===
local function refreshModernMoneyHud()
    -- Beginner: sends a Lua table to the HTML/JavaScript UI.
    SendNUIMessage({
        showMoney = false
    })

    CMG.uiSendMessage({
        action =
            "LOAD_PLAYER_MONEY",

        payload = {
            type = "cash",
            amount = cash
        }
    })

    CMG.uiSendMessage({
        action =
            "LOAD_PLAYER_MONEY",

        payload = {
            type = "bank",
            amount = bank
        }
    })

    CMG.uiSendMessage({
        action =
            "LOAD_PLAYER_MONEY",

        payload = {
            type = "dirtycash",
            amount = dirtyCash
        }
    })

    CMG.sendHudNuiMessage(
        "SET_STATUS",
        {
            type = "bounty",
            value =
                CMG.getClientBounty()
        }
    )
end


-- === HELPER FUNCTION: CMG.refreshMoneyUI() ===
function CMG.refreshMoneyUI()
    if CMG.isLegacyHudEnabled() then
        refreshLegacyMoneyHud()
    else
        refreshModernMoneyHud()
    end
end


-- ============================================================
-- NUI INITIAL LOAD
-- ============================================================

RegisterNUICallback(
    "moneyUILoaded",
    function(_, reply)
        if CMG.isLegacyHudEnabled() then
            refreshLegacyMoneyHud()
        else
            -- Beginner: sends a Lua table to the HTML/JavaScript UI.
            SendNUIMessage({
                showMoney = false
            })
        end

        reply("ok")
    end
)


-- ============================================================
-- MONEY EVENTS
-- ============================================================

-- === NETWORK EVENT: receives "9c15108c11" from server/another network source ===
RegisterNetEvent("9c15108c11")

AddEventHandler(
    "9c15108c11",
    function(amount)
        cash =
            math.floor(amount)

        CMG.refreshMoneyUI()
    end
)


RegisterNetEvent(
    "CMG:setDisplayBankMoney"
)

AddEventHandler(
    "CMG:setDisplayBankMoney",
    function(amount)
        bank =
            math.floor(amount)

        CMG.refreshMoneyUI()
    end
)


-- === NETWORK EVENT: receives "dba3e00154" from server/another network source ===
RegisterNetEvent("dba3e00154")

AddEventHandler(
    "dba3e00154",
    function(amount)
        dirtyCash =
            math.floor(amount)

        CMG.refreshMoneyUI()
    end
)


RegisterNetEvent(
    "84cbcfbf61",
    function(amount)
        secondaryMoneyA =
            math.floor(amount)
    end
)


RegisterNetEvent(
    "8afb93c3a0",
    function(amount)
        secondaryMoneyB =
            math.floor(amount)
    end
)


RegisterNetEvent(
    "CMG:initMoney"
)

AddEventHandler(
    "CMG:initMoney",
    function(
        initialCash,
        initialBank,
        initialSecondaryA,
        initialSecondaryB
    )
        cash =
            math.floor(
                initialCash
            )

        bank =
            math.floor(
                initialBank
            )

        secondaryMoneyA =
            math.floor(
                initialSecondaryA
            )

        if initialSecondaryB ~= nil then
            secondaryMoneyB =
                math.floor(
                    initialSecondaryB
                )
        end

        CMG.refreshMoneyUI()
    end
)


-- ============================================================
-- VOICE EVENTS
-- ============================================================

AddEventHandler(
    "pma-voice:setTalkingMode",
    function(mode)
        voiceMode = mode

        if CMG.isLegacyHudEnabled() then
            refreshLegacyMoneyHud()
        end
    end
)


AddEventHandler(
    "mumbleConnected",
    function()
        if CMG.isLegacyHudEnabled() then
            refreshLegacyMoneyHud()
        end
    end
)


AddEventHandler(
    "mumbleDisconnected",
    function()
        if CMG.isLegacyHudEnabled() then
            refreshLegacyMoneyHud()
        end
    end
)


-- ============================================================
-- LEGACY "CURRENTLY TALKING" INDICATOR
-- ============================================================

-- === HELPER FUNCTION: legacyTalkingTick() ===
local function legacyTalkingTick()
    if not CMG.isLegacyHudEnabled() then
        if legacyTalking then
            legacyTalking = false

            -- Beginner: sends a Lua table to the HTML/JavaScript UI.
            SendNUIMessage({
                moneyTalking =
                    false
            })
        end

        return
    end

    local talking =
        NetworkIsPlayerTalking(
            PlayerId()
        )

    if talking ~= legacyTalking then
        legacyTalking =
            talking

        -- Beginner: sends a Lua table to the HTML/JavaScript UI.
        SendNUIMessage({
            moneyTalking =
                legacyTalking
        })
    end
end


CMG.createThreadOnTick(
    legacyTalkingTick,
    "Legacy Money Talking"
)
