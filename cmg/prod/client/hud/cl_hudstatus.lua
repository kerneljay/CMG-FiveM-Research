--[[
    HUD Player Status
    =================

    This file feeds the custom HUD with the player's basic survival/status
    values.

    Values stored locally:
      food
      water
      stress

    Values read live:
      health
      armour
      underwater breath

    Network events:
      b608fad5cc(value) -> food
      9015b015c4(value) -> water
      7fb9a4e5e3(value) -> stress

    Stress is converted into a "stress effect" percentage:
      stress <= 40 -> 0%
      stress 100   -> 100%
      values between are mapped linearly.

    Every 200ms the HUD receives health and armour.

    While underwater the HUD also receives remaining breath time.
]]

local food = 100
local water = 100
local stress = 0


-- ============================================================
-- SERVER STATUS EVENTS
-- ============================================================

RegisterNetEvent(
    "b608fad5cc",
    function(value)
        food = value
    end
)


RegisterNetEvent(
    "9015b015c4",
    function(value)
        water = value
    end
)


RegisterNetEvent(
    "7fb9a4e5e3",
    function(value)
        stress = value
    end
)


-- ============================================================
-- STRESS EFFECT
-- ============================================================

local function getStressEffectPercent()
    if stress <= 40 then
        return 0
    end

    return
        math.min(
            100,
            math.floor(
                (stress - 40)
                / 60
                * 100
            )
        )
end


-- ============================================================
-- HUD UPDATE
-- ============================================================

CreateThread(function()
    while true do
        local ped =
            CMG.getPlayerPed()

        local health =
            math.max(
                0,
                GetEntityHealth(ped)
                - 100
            )

        local armour =
            GetPedArmour(ped)

        CMG.sendHudNuiMessage(
            "SET_STATUS",
            {
                type = "health",
                value = health
            }
        )

        CMG.sendHudNuiMessage(
            "SET_STATUS",
            {
                type = "armour",
                value = armour
            }
        )

        CMG.sendHudNuiMessage(
            "SET_STATUS",
            {
                type = "food",
                value = food
            }
        )

        CMG.sendHudNuiMessage(
            "SET_STATUS",
            {
                type = "water",
                value = water
            }
        )

        CMG.sendHudNuiMessage(
            "SET_STATUS",
            {
                type = "stress",
                value =
                    getStressEffectPercent()
            }
        )

        if IsPedSwimmingUnderWater(
            ped
        ) then

            local breath =
                GetPlayerUnderwaterTimeRemaining(
                    PlayerId()
                )

            CMG.sendHudNuiMessage(
                "SET_STATUS",
                {
                    type = "oxygen",
                    value = breath
                }
            )
        end

        Wait(200)
    end
end)
