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

local function refreshLegacyMoneyHud()
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

    SendNUIMessage({
        showMoney = true
    })

    SendNUIMessage({
        moneyTalking =
            legacyTalking
    })
end


-- ============================================================
-- NEW MONEY HUD
-- ============================================================

local function refreshModernMoneyHud()
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

local function legacyTalkingTick()
    if not CMG.isLegacyHudEnabled() then
        if legacyTalking then
            legacyTalking = false

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
