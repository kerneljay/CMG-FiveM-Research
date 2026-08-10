--[[
    Casino Donation Helper
    ======================

    GetPackage(packageId) asks the server to handle/fetch the specified casino
    donation package.

    The hashed event name is preserved because the server expects it.
]]

function GetPackage(packageId)
    TriggerServerEvent("63a38afe30", packageId)
end
