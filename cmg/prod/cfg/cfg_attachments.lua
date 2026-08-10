--[[
    BEGINNER GUIDE — Attachments
    ============================

    File: cmg/prod/cfg/cfg_attachments.lua
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

cfg.attachments = {
    "COMPONENT_CARBINERIFLE_CLIP_02",
    "COMPONENT_AT_AR_FLSH",
    "COMPONENT_AT_RAILCOVER_01",
    "COMPONENT_AT_SCOPE_SMALL",
    "COMPONENT_AT_SCOPE_MEDIUM",
    "COMPONENT_AT_SCOPE_MACRO",
    "COMPONENT_AT_AR_SUPP",
    "COMPONENT_SPECIALCARBINE_CLIP_01",
    "COMPONENT_ASSAULTRIFLE_CLIP_03",
    "COMPONENT_ASSAULTRIFLE_CLIP_02",
    "COMPONENT_ASSAULTRIFLE_MK2_CLIP_02",
    "COMPONENT_PISTOL_CLIP_02",
    "COMPONENT_AT_PI_FLSH",
    "COMPONENT_AT_PI_SUPP",
    "COMPONENT_MACHINEPISTOL_CLIP_02",
    "COMPONENT_MACHINEPISTOL_CLIP_03",
    "COMPONENT_MICROSMG_CLIP_02",
    "COMPONENT_AT_AR_SUPP_02",
    "COMPONENT_COMBATPDW_CLIP_02",
    "COMPONENT_AT_AR_AFGRIP",
    "COMPONENT_COMBATPDW_CLIP_03",
    "COMPONENT_SMG_MK2_CLIP_02",
    "COMPONENT_AT_SCOPE_MEDIUM_MK2",
    "COMPONENT_PISTOL50_CLIP_02",
    "COMPONENT_SPECIALCARBINE_CLIP_02",
    "COMPONENT_COMBATPISTOL_CLIP_02",
    "COMPONENT_AKM_CLIP_02",
    "COMPONENT_HKG3_CLIP_02"
}

return cfg
