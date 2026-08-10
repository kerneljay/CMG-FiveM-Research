--[[
    BEGINNER GUIDE — News
    =====================

    File: cmg/prod/cfg/cfg_news.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

]]
local cfg = {}

cfg.items = {
    ["camera"] = {
        formalName = "Camera",
        model = `prop_v_cam_01`,
        holding = false,
        using = false,
        netId = nil,
        boneId = 28422,
        animations = {
            dict = "missfinale_c2mcs_1",
            name = "fin_c2_mcs_1_camman",
        },
        position = {
            x = 0.0,
            y = 0.0,
            z = 0.0,
        },
        rotation = {
            x = 0.0,
            y = 0.0,
            z = 0.0,
        },
    },
    ["micA"] = {
        formalName = "Microphone",
        model = `p_ing_microphonel_01`,
        holding = false,
        using = false,
        netId = nil,
        boneId = 28422,
        animations = {
            dict = "cellphone@",
            name = "cellphone_text_read_base",
        },
        position = {
            x = 0.0,
            y = 0.0,
            z = 0.0,
        },
        rotation = {
            x = 0.0,
            y = 0.0,
            z = 0.0,
        },
    },
    ["micB"] = {
        formalName = "Boom Arm Microphone",
        model = `prop_v_bmike_01`,
        holding = false,
        using = false,
        netId = nil,
        boneId = 28422,
        animations = {
            dict = "missfra1",
            name = "mcs2_crew_idle_m_boom"
        },
        position = {
            x = -0.08,
            y = 0.0,
            z = 0.0,
        },
        rotation = {
            x = 0.0,
            y = 0.0,
            z = 0.0,
        }
    }
}

cfg.textures = {
    [3] = {name = "Camera", textureName = "camera"},
    [4] = {name = "CMG TV", textureName = "cmgtv"},
}


return cfg
