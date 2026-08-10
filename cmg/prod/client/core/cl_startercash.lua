--[[
    Starter Cash
    ============

    Very small client helper.

    Calling GetStarterCash() tells the server that this client wants to run
    the starter-cash action. The server event hash is kept unchanged because
    the server-side resource will expect this exact event name.
]]

function GetStarterCash()
    TriggerServerEvent("1d92d56c88")
end
