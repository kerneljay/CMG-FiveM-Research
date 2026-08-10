--[[
    Server Tunables / Feature Flags
    ===============================

    A "tunable" is a server-controlled value which can be changed without
    hard-coding the value in this client.

    CMG.getTunableValue(name)
      Returns the latest value received for that tunable.

    Event 2f89bbe50c
      Updates one value.

    Event 220ec18765
      Replaces/populates many values at once.

    Event 1a027a264a is fired locally after a value changes so other client
    scripts can react.
]]

local tunables = {}

function CMG.getTunableValue(name)
    local tunable = tunables[name]
    return tunable and tunable.value or nil
end

RegisterNetEvent("2f89bbe50c", function(name, value)
    tunables[name] = tunables[name] or {}
    tunables[name].value = value

    TriggerEvent("1a027a264a", name, value)
end)

RegisterNetEvent("220ec18765", function(serverTunables)
    for _, entry in pairs(serverTunables) do
        local name = entry[1]
        local value = entry[2]

        tunables[name] = {
            value = value
        }

        TriggerEvent("1a027a264a", name, value)
    end
end)
