--[[
    Error / Seasonal-Flag Utilities
    ===============================

    This shared file contains:
      * a cleaned stack-trace helper
      * CMG.logError(...) for forwarding issues
      * Halloween / Christmas / Star Wars Day / Danny-event feature checks

    Stack traces intentionally remove internal error-handler lines so logged
    errors point at the useful calling code.
]]

local function cleanStackTrace(
    stackTrace
)
    local usefulLines = {}

    for line in string.gmatch(
        stackTrace,
        "([^\n]+)\n%s*"
    ) do
        local internalLine =
            string.match(
                line,
                "__newindex"
            )
            or string.match(
                line,
                "errorHandler"
            )
            or string.match(
                line,
                "handler"
            )
            or string.match(
                line,
                "error.lua"
            )

        if not internalLine then
            table.insert(
                usefulLines,
                string.format(
                    "%s\n",
                    line
                )
            )
        end
    end

    return
        table.concat(
            usefulLines
        )
end


function CMG.dumpStackTrace()
    -- Native 3607903178 is used by the original resource to request the
    -- current Lua stack as a string.
    local stackTrace =
        Citizen.InvokeNative(
            3607903178,
            nil,
            0,
            Citizen.ResultAsString()
        )

    if stackTrace then
        return
            cleanStackTrace(
                stackTrace
            )
    end

    return ""
end


function CMG.logError(
    title,
    message,
    extraDetails
)
    if extraDetails then
        extraDetails =
            "```"
            .. extraDetails
            .. "```"
    end

    if IsDuplicityVersion() then
        TriggerEvent(
            "CMG:serverIssue",
            title,
            message,
            extraDetails,
            true
        )
    else
        TriggerServerEvent(
            "a94274f399",
            title,
            message,
            extraDetails,
            true
        )
    end
end


local halloweenEnabled =
    GetConvarInt(
        "cmg_halloween",
        0
    ) == 1

function CMG.isHalloween()
    return halloweenEnabled
end


local christmasEnabled =
    GetConvarInt(
        "cmg_christmas",
        0
    ) == 1

function CMG.isChristmas()
    return christmasEnabled
end


function CMG.isStarWarsDay()
    if IsDuplicityVersion() then
        -- Server Lua: os.date is available.
        return
            os.date("%d/%m")
            == "05/04"
    end

    -- Client native returns year, month, day, hour, minute, second.
    local _, month, day =
        GetLocalTime()

    return
        month == 5
        and day == 4
end


function CMG.isDannyEvent()
    return
        GetConvarInt(
            "cmg_dannyevent",
            0
        ) == 1
end
