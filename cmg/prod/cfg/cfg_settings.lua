--[[
    BEGINNER GUIDE — Settings
    =========================

    File: cmg/prod/cfg/cfg_settings.lua
    Purpose: This file contains configuration/data.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Example player-facing text in this file:
      * Close Culling

]]
local cfg = {}

cfg.presets = {
    {
        name = "Graphics",
        presets = {
            {
                name = "Low End",
                values = {
                    ["heightReflect.width"] = 10.0,
                    ["heightReflect.height"] = 22.0,
                    ["heightReflect.specularoffset"] = 0.05,
                    ["rain.UseLitShader"] = 0.0,
                    ["sky.cloudInscatteringRange"] = 0.0,
                    ["sky.cloudEdgeSmooth"] = 0.0,
                    ["shadows.cloudtexture.rangemax"] = 0.0,
                    ["car.sirens.SpecularFade"] = 2.0,
                    ["car.sirens.ShadowFade"] = 2.0,
                    ["train.light.fadingdistance"] = 50.0,
                    ["car.headlight.day.emissive.on"] = 10.0,
                    ["car.headlight.night.emissive.on"] = 10.0,
                    ["car.defaultlight.day.emissive.on"] = 1.5,
                    ["car.defaultlight.night.emissive.on"] = 1.5,
                    ["car.brakelight.day.emissive.on"] = 30.0,
                    ["car.middlebrakelight.day.emissive.on"] = 30.0,
                    ["car.lod.distance.high"] = 25.0,
                    ["car.lod.distance.low"] = 50.0,
                    ["defaultsearchlight.mainLightInfo.globalIntensity"] = 2.0,
                    ["trafficLight.near.coronaHDR"] = 2.0,
                    ["imposter.color.blendRange"] = 0.0,
                    ["imposter.color.blendBias"] = 0.0,
                    ["imposter.color.size1"] = 0.0,
                    ["imposter.color.amt1"] = 0.0,
                    ["imposter.color.size2"] = 0.0,
                    ["imposter.color.amt2"] = 0.0,
                    ["imposter.backgroundColor.red"] = 0.0,
                    ["imposter.backgroundColor.green"] = 0.0,
                    ["imposter.backgroundColor.blue"] = 0.0,
                    ["imposter.shadow.blendRange"] = 0.0,
                    ["imposter.shadow.blendBias"] = 0.0,
                    ["imposter.shadow.size1"] = 0.0,
                    ["imposter.shadow.amt1"] = 0.0,
                    ["imposter.shadow.size2"] = 0.0,
                    ["imposter.shadow.amt2"] = 0.0,
                    ["ped.ambientvolume.fadestart"] = 12.0,
                    ["ped.ambientvolume.fadeend"] = 16.0,
                    ["pedincar.lod.distance.high"] = 4.0,
                    ["pedincar.lod.distance.high.x64"] = 8.0,
                    ["distantlights.sizeReflections"] = 0.0,
                    ["distantlights.sizeUpscaleReflections"] = 0.0,
                    ["misc.DOFBlurMultiplier.SD"] = 0.0,
                    ["misc.Multiplier.heightEnd"] = 100.0,
                    ["misc.3dMarkers.FrontLightIntensity"] = 2.0,
                    ["misc.coronas.intensityScaleGlobal"] = 0.0,
                    ["misc.coronas.intensityScaleWater"] = 0.0,
                    ["misc.coronas.sizeScaleWater"] = 0.0,
                    ["misc.coronas.underwaterFadeDist"] = 2.0,
                    ["misc.coronas.screenEdgeMinDistForFade"] = 0.0,
                    ["misc.BloomIntensityClamp.SD"] = 0.0,
                    ["misc.CrossPMultiplier.RimLight"] = 0.0,
                    ["misc.CrossPMultiplier.GlobalEnvironmentReflection"] = 0.0,
                    ["misc.CrossPMultiplier.MidBlur"] = 0.0,
                    ["misc.CrossPMultiplier.Farblur"] = 0.0,
                    ["misc.HiDof.midBlur"] = 0.0,
                    ["misc.HiDof.farBlur"] = 0.0,
                    ["misc.cutscene.nearBlurMin"] = 0.0,
                    ["misc.MoonDimMult"] = 0.1,
                    ["cloudgen.frequency"] = 1.0,
                    ["cloudgen.scale"] = 24.0,
                    ["cloudgen.edge.detail.scale"] = 4.0,
                    ["cloudgen.overlay.detail.scale"] = 2.0,
                    ["lod.fadedist.orphanhd"] = 0.075,
                    ["lod.fadedist.hd"] = 0.075,
                    ["lod.fadedist.lod"] = 0.075,
                    ["lod.fadedist.slod1"] = 0.075,
                    ["lod.fadedist.slod2"] = 0.075,
                    ["lod.fadedist.slod3"] = 0.075,
                    ["lod.fadedist.slod4"] = 0.075
                }
            }
        },
        default = {
            ["heightReflect.width"] = 100.0,
            ["heightReflect.height"] = 220.0,
            ["heightReflect.specularoffset"] = 0.15,
            ["rain.UseLitShader"] = 1.0,
            ["sky.cloudInscatteringRange"] = 0.68,
            ["sky.cloudEdgeSmooth"] = 0.76,
            ["shadows.cloudtexture.rangemax"] = 1.0,
            ["car.sirens.SpecularFade"] = 15.0,
            ["car.sirens.ShadowFade"] = 15.0,
            ["train.light.fadingdistance"] = 100.0,
            ["car.headlight.day.emissive.on"] = 25.0,
            ["car.headlight.night.emissive.on"] = 15.0,
            ["car.defaultlight.day.emissive.on"] = 15.0,
            ["car.defaultlight.night.emissive.on"] = 6.0,
            ["car.brakelight.day.emissive.on"] = 45.0,
            ["car.middlebrakelight.day.emissive.on"] = 45.0,
            ["car.lod.distance.high"] = 40.0,
            ["car.lod.distance.low"] = 180.0,
            ["defaultsearchlight.mainLightInfo.globalIntensity"] = 4.0,
            ["trafficLight.near.coronaHDR"] = 10.0,
            ["imposter.color.blendRange"] = 54.0,
            ["imposter.color.blendBias"] = 128.0,
            ["imposter.color.size1"] = 128.0,
            ["imposter.color.amt1"] = 12.0,
            ["imposter.color.size2"] = 64.0,
            ["imposter.color.amt2"] = 12.0,
            ["imposter.backgroundColor.red"] = 0.2,
            ["imposter.backgroundColor.green"] = 0.2,
            ["imposter.backgroundColor.blue"] = 0.2,
            ["imposter.shadow.blendRange"] = 12.0,
            ["imposter.shadow.blendBias"] = 128.0,
            ["imposter.shadow.size1"] = 256.0,
            ["imposter.shadow.amt1"] = 12.0,
            ["imposter.shadow.size2"] = 128.0,
            ["imposter.shadow.amt2"] = 64.0,
            ["ped.ambientvolume.fadestart"] = 16.0,
            ["ped.ambientvolume.fadeend"] = 20.0,
            ["pedincar.lod.distance.high"] = 7.0,
            ["pedincar.lod.distance.high.x64"] = 15.0,
            ["distantlights.sizeReflections"] = 0.8,
            ["distantlights.sizeUpscaleReflections"] = 1.5,
            ["misc.DOFBlurMultiplier.SD"] = 0.5,
            ["misc.Multiplier.heightEnd"] = 250.0,
            ["misc.3dMarkers.FrontLightIntensity"] = 10.0,
            ["misc.coronas.intensityScaleGlobal"] = 0.5,
            ["misc.coronas.intensityScaleWater"] = 0.5,
            ["misc.coronas.sizeScaleWater"] = 0.5,
            ["misc.coronas.underwaterFadeDist"] = 4.0,
            ["misc.coronas.screenEdgeMinDistForFade"] = 0.95,
            ["misc.BloomIntensityClamp.SD"] = 10.0,
            ["misc.CrossPMultiplier.RimLight"] = 1.0,
            ["misc.CrossPMultiplier.GlobalEnvironmentReflection"] = 1.0,
            ["misc.CrossPMultiplier.MidBlur"] = 1.0,
            ["misc.CrossPMultiplier.Farblur"] = 1.0,
            ["misc.HiDof.midBlur"] = 0.2,
            ["misc.HiDof.farBlur"] = 1.0,
            ["misc.cutscene.nearBlurMin"] = 0.2,
            ["misc.MoonDimMult"] = 0.3,
            ["cloudgen.frequency"] = 2.0,
            ["cloudgen.scale"] = 48.0,
            ["cloudgen.edge.detail.scale"] = 16.0,
            ["cloudgen.overlay.detail.scale"] = 8.0,
            ["lod.fadedist.orphanhd"] = 20.0,
            ["lod.fadedist.hd"] = 20.0,
            ["lod.fadedist.lod"] = 20.0,
            ["lod.fadedist.slod1"] = 20.0,
            ["lod.fadedist.slod2"] = 25.0,
            ["lod.fadedist.slod3"] = 25.0,
            ["lod.fadedist.slod4"] = 25.0
        }
    },
    {
        name = "Emergency Light System",
        presets = {
            {
                name = "Very Dim",
                values = {
                    ["car.defaultlight.day.emissive.on"] = 200.0,
                    ["car.defaultlight.night.emissive.on"] = 200.0
                }
            },
            {
                name = "Dim",
                values = {
                    ["car.defaultlight.day.emissive.on"] = 500.0,
                    ["car.defaultlight.night.emissive.on"] = 500.0
                }
            },
            {
                name = "Bright",
                values = {
                    ["car.defaultlight.day.emissive.on"] = 900.0,
                    ["car.defaultlight.night.emissive.on"] = 900.0
                }
            },
            {
                name = "Very Bright",
                values = {
                    ["car.defaultlight.day.emissive.on"] = 1300.0,
                    ["car.defaultlight.night.emissive.on"] = 1300.0
                }
            },
            {
                name = "Blinding",
                values = {
                    ["car.defaultlight.day.emissive.on"] = 2000.0,
                    ["car.defaultlight.night.emissive.on"] = 2000.0
                }
            }
        },
        default = {
            ["car.defaultlight.day.emissive.on"] = 45.0,
            ["car.defaultlight.night.emissive.on"] = 30.0
        }
    }
}

cfg.timecycles = {
    ["Fog Disabled"] = {
        type = "static",
        name = "fog_density",
        first = 0.0,
        second = 0.0
    },
    ["Ambient Light"] = {
        type = "slider",
        name = "light_natural_amb_down_intensity",
        first = {0.0, 150.0},
        second = 0.0
    },
    ["Close Culling"] = {
        type = "static",
        name = "far_clip",
        first = 350.0,
        second = 350.0
    },
}

return cfg