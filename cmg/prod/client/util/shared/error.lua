--[[
    LEVEL 1 BEGINNER GUIDE — Error
    ===================================

    File: cmg/prod/client/util/shared/error.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: shared utility/framework helper code.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 7
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: a94274f399
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


-- === HELPER FUNCTION: CMG.dumpStackTrace() ===
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

-- === HELPER FUNCTION: CMG.isHalloween() ===
function CMG.isHalloween()
    return halloweenEnabled
end


local christmasEnabled =
    GetConvarInt(
        "cmg_christmas",
        0
    ) == 1

-- === HELPER FUNCTION: CMG.isChristmas() ===
function CMG.isChristmas()
    return christmasEnabled
end


-- === HELPER FUNCTION: CMG.isStarWarsDay() ===
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


-- === HELPER FUNCTION: CMG.isDannyEvent() ===
function CMG.isDannyEvent()
    return
        GetConvarInt(
            "cmg_dannyevent",
            0
        ) == 1
end
