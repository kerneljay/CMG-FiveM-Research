--[[
    BEGINNER GUIDE — Impound
    ========================

    File: cmg/prod/cfg/cfg_impound.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Example player-facing text in this file:
      * Vehicle has been stolen
      * Vehicle has been involved in a collision
      * Vehicle was parked illegally
      * Vehicle was involved in a crime and abandoned
      * Vehicle was driven in an anti-social manner

]]
local cfg = {}

cfg.positions = {
    {
        x = 393.99752807617,
        y = -1620.1383056641,
        z = 29.29195022583,
        heading = 320.85,
    },
    {
        x = 391.22680664062,
        y = -1617.6063232422,
        z =29.29195022583,
        heading = 320.85,
    },
    {
        x = 408.68963623047,
        y = -1638.9798583984,
        z = 29.291952133179,
        heading = 230.27,
    },
    {
        x = 411.12161254883,
        y = -1636.5198974609,
        z = 29.291952133179,
        heading = 230.27,
    },
    {
        x = 402.46197509766,
        y = -1633.4318847656,
        z = 29.291952133179,
        heading = 141.36
    },
    {
        x = 389.99276733398,
        y = -1630.65234375,
        z = 29.291940689087,
        heading = 319.89,
    }
}

cfg.paletoPositions = {
    {
        x = -453.27032470703,
        y = 6050.5581054688,
        z = 31.335571289062,
        heading = 221.10237121582,
    },
    {
        x = -449.52526855469,
        y = 6053.0112304688,
        z = 31.335571289062,
        heading = 223.93701171875,
    },
    {
        x = -445.71429443359,
        y = 6055.4638671875,
        z = 31.335571289062,
        heading = 218.2677154541,
    }
}

cfg.ped = {
    modelHash = `ig_trafficwarden`,
    position = vector3(369.81695556641,-1607.9230957031,29.3031152344),
    animDict = "amb@world_human_hang_out_street@male_c@idle_a",
    animName = "idle_b",
}

cfg.paletoPed = {
    modelHash = `ig_trafficwarden`,
    position = vector3(-450.68811035156,6026.015625,31.490116119385),
    animDict = "amb@world_human_hang_out_street@male_c@idle_a",
    animName = "idle_b",
}

cfg.driveToPosition = vector3(406.3603515625,-1600.9317626953,29.237545013428)

cfg.reasonsForImpound = {
    {option = "Vehicle has been stolen", selected = false, isCriminal = true},
    {option = "Vehicle has been involved in a collision", selected = false, isCriminal = false},
    {option = "Vehicle was parked illegally", selected = false, isCriminal = true},
    {option = "Vehicle was involved in a crime and abandoned", selected = false, isCriminal = true},
    {option = "Vehicle was driven in an anti-social manner", selected = false, isCriminal = true},
    {option = "Vehicle was causing an obstruction or danger", selected = false, isCriminal = false},
    {option = "Vehicle was requested to be removed", selected = false, isCriminal = false},
}

cfg.disallowedGarageTypes = {
    -- Government vehicles
    ["Police Service Vehicles"] = true,
    ["Police Service Boats"] = true,
    ["Health Service Vehicles"] = true,
    ["Fire Service Garage"] = true,
    ["Police Helicopters"] = true,
    ["Health Service Helicopters"] = true,
    ["Prison Service Vehicles"] = true,
    ["Mechanics"] = true,
    ["Diamond Casino"] = true,

    -- Large vehicles
    ["Standard Aircraft"] = true,
    ["Standard Helicopters"] = true,
    ["VIP Aircraft"] = true,
    ["VIP Helicopters"] = true,

}

cfg.disallowedVehicleClasses = {
    [10] = true,
    [13] = true,
    [14] = true,
    [21] = true,
    [15] = true,
    [16] = true,
}


return cfg


