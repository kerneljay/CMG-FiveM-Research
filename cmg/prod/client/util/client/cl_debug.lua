--[[
    Debug Logging
    =============

    /debugmode toggles extra CMG debug logging for this client.

    CMG.debugLog(...)
      Prints only while debug mode is enabled.

    export "debugLog"
      Lets another resource log through CMG and automatically includes the
      calling resource's name.
]]

local debugEnabled = false

function CMG.toggleDebugMode()
    debugEnabled = not debugEnabled

    print(
        "[CMG] debug mode "
        .. (debugEnabled and "enabled" or "disabled")
    )
end

function CMG.debugLog(...)
    if debugEnabled then
        print("[CMG DEBUG] ", ...)
    end
end

function CMG.debugLog_export(resourceName, ...)
    if debugEnabled then
        print(
            string.format(
                "[CMG DEBUG : %s]",
                resourceName
            ),
            ...
        )
    end
end

CMG.registerCommand(
    "debugmode",
    function()
        CMG.toggleDebugMode()
    end,
    false
)

exports("debugLog", function(...)
    CMG.debugLog_export(
        GetInvokingResource(),
        ...
    )
end)
