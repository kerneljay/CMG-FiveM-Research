
local cfg = {}

cfg.minPlayers = 4

cfg.locations = {
    ["Small"] = {
        data = json.decode(CMG.loadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/5-WwiwJ7Lk6WyqPIz6aN-Q.json")),
        isLarge = false,
        spawnpoints = {
            vector4(-3921.81, -1695.96, 630.69, 359.17),
            vector4(-3900.07, -1696.41, 630.69, 358.25),
            vector4(-3878.12, -1696.14, 630.69, 1.85),
            vector4(-3867.71, -1684.25, 630.69, 88.24),
            vector4(-3867.59, -1660.08, 630.69, 91.42),
            vector4(-3867.91, -1636.15, 630.69, 89.13),
            vector4(-3878.38, -1624.24, 630.7, 179.29),
            vector4(-3899.97, -1624.5, 630.7, 180.48),
            vector4(-3921.79, -1624.66, 630.7, 180.17),
            vector4(-3932.51, -1626.17, 630.7, 270.27),
            vector4(-3932.13, -1698, 630.7, 268.24),
            vector4(-3932.35, -1684.22, 630.69, 269.23)
        },
        vehicles = {
            ["Issi One"] = {
                model = `issi2`,
                level = 0
            },
            ["Rhapsody"] = {
                model = `rhapsody`,
                level = 0
            },
            ["Penumbra"] = {
                model = `penumbra`,
                level = 5
            },
            ["Tampa"] = {
                model = `tampa`,
                level = 10
            },
            ["Sultan 2"] = {
                model = `sultan2`,
                level = 20
            },
            ["Italia RSX"] = {
                model = `italirsx`,
                level = 30
            },
            ["Retinue"] = {
                model = `retinue`,
                level = 40
            },
            ["Slam Van"] = {
                model = `slamvan`,
                level = 50
            },
            ["Impaler 4"] = {
                model = `impaler4`,
                level = 60
            },
            ["Kalahari"] = {
                model = `kalahari`,
                level = 70
            },
            ["Dominator 6"] = {
                model = `dominator6`,
                level = 80
            },
            ["Slamvan 6"] = {
                model = `slamvan6`,
                level = 90
            },
            ["Speedo 2"] = {
                model = `speedo2`,
                level = 100
            }
        },
        scenes = {
            {
                pos = vector3(-3860.0, -1672.0, 669.5),
                pointAt = vector3(-3910.0, -1672.0, 629.5),
                transitionTime = 0
            },
            {
                pos = vector3(-3910.0, -1622.0, 669.5),
                pointAt = vector3(-3910.0, -1672.0, 629.5),
                transitionTime = 10000
            },
            {
                pos = vector3(-3960.0, -1672.0, 669.5),
                pointAt = vector3(-3910.0, -1672.0, 629.5),
                transitionTime = 10000
            },
            {
                pos = vector3(-3910.0, -1732.0, 669.5),
                pointAt = vector3(-3910.0, -1672.0, 629.5),
                transitionTime = 10000
            }
        }
    },
    ["Large"] = {
        data = json.decode(CMG.loadResourceFile(GetCurrentResourceName(), "cfg/rockstarmaps/5-WwiwJ7Lk6WyqPIz6aN-Q.json")),
        isLarge = true,
        spawnpoints = {
            vector4(-3936.6462402344,-1696.4439697266,630.69,272.1259765625),
            vector4(-3936.5144042969,-1688.2416992188,630.69,272.1259765625),
            vector4(-3936.421875,-1681.2526855469,630.69,272.1259765625),
            vector4(-3936.4086914062,-1672.6944580078,630.69,272.1259765625),
            vector4(-3936.4482421875,-1664.8088378906,630.69,272.1259765625),
            vector4(-3936.2109375,-1657.6351318359,630.69,272.1259765625),
            vector4(-3936.4086914062,-1647.8637695312,630.69,272.1259765625),
            vector4(-3936.5009765625,-1641.0725097656,630.69,272.1259765625),
            vector4(-3936.421875,-1633.0812988281,630.69,272.1259765625),
            vector4(-3936.4614257812,-1625.0900878906,630.69,272.1259765625),
            vector4(-3936.5539550781,-1616.7164306641,630.69,272.1259765625),
            vector4(-3936.4350585938,-1609.0153808594,630.69,272.1259765625),
            vector4(-3936.5671386719,-1600.2592773438,630.69,272.1259765625),
            vector4(-3925.4899902344,-1595.8022460938,630.69,181.41732788086),
            vector4(-3918.5009765625,-1596.1318359375,630.69,181.41732788086),
            vector4(-3911.2219238281,-1596.1318359375,630.69,181.41732788086),
            vector4(-3904.1274414062,-1596.1977539062,630.69,181.41732788086),
            vector4(-3896.1494140625,-1596.2109375,630.69,181.41732788086),
            vector4(-3889.9516601562,-1596.3428955078,630.69,181.41732788086),
            vector4(-3882.1186523438,-1596.0922851562,630.69,181.41732788086),
            vector4(-3875.3273925781,-1596.2901611328,630.69,181.41732788086),
            vector4(-3871.8374023438,-1596.1713867188,630.69,181.41732788086),
            vector4(-3867.8374023438,-1596.1713867188,630.69,181.41732788086),
            vector4(-3853.5693359375,-1596.2504882812,630.69,181.41732788086),
            vector4(-3846.1845703125,-1596.1977539062,630.69,181.41732788086),
            vector4(-3841.8330078125,-1607.9077148438,630.69,87.874015808105),
            vector4(-3842.1362304688,-1616.2813720703,630.69,87.874015808105),
            vector4(-3842.3471679688,-1624.5626220703,630.69,87.874015808105),
            vector4(-3842.2153320312,-1633.0549316406,630.69,87.874015808105),
            vector4(-3842.28125,-1640.2416992188,630.69,87.874015808105),
            vector4(-3842.2548828125,-1648.4307861328,630.69,87.874015808105),
            vector4(-3842.439453125,-1656.2241210938,630.69,87.874015808105),
            vector4(-3842.1362304688,-1664.7032470703,630.69,87.874015808105),
            vector4(-3842.3471679688,-1672.2989501953,630.69,87.874015808105),
            vector4(-3842.228515625,-1680.3956298828,630.69,87.874015808105),
            vector4(-3842.2944335938,-1688.1889648438,630.69,87.874015808105),
            vector4(-3842.228515625,-1695.8901367188,630.69,87.874015808105),
            vector4(-3853.2395019531,-1700.9538574219,630.69,357.16534423828),
            vector4(-3860.1098632812,-1700.4263916016,630.69,357.16534423828),
            vector4(-3867.2966308594,-1700.5582275391,630.69,357.16534423828),
            vector4(-3874.9978027344,-1700.3472900391,630.69,357.16534423828),
            vector4(-3882.0659179688,-1700.2945556641,630.69,357.16534423828),
            vector4(-3888.7648925781,-1700.3736572266,630.69,357.16534423828),
            vector4(-3896.2548828125,-1700.3341064453,630.69,357.16534423828),
            vector4(-3904.2197265625,-1700.2153320312,630.69,357.16534423828),
            vector4(-3911.2746582031,-1700.2416992188,630.69,357.16534423828),
            vector4(-3918.052734375,-1699.806640625,630.69,357.16534423828),
            vector4(-3925.2263183594,-1700.0307617188,630.69,357.16534423828),
            vector4(-3892.9714355469,-1657.0153808594,630.69,178.58267211914),
            vector4(-3893.1823730469,-1647.5076904297,630.69,357.16534423828)
        },
        vehicles = {
            ["Issi One"] = {
                model = `issi2`,
                level = 0
            },
            ["Rhapsody"] = {
                model = `rhapsody`,
                level = 0
            },
            ["Penumbra"] = {
                model = `penumbra`,
                level = 5
            },
            ["Tampa"] = {
                model = `tampa`,
                level = 10
            },
            ["Sultan 2"] = {
                model = `sultan2`,
                level = 20
            },
            ["Italia RSX"] = {
                model = `italirsx`,
                level = 30
            },
            ["Retinue"] = {
                model = `retinue`,
                level = 40
            },
            ["Slam Van"] = {
                model = `slamvan`,
                level = 50
            },
            ["Impaler 4"] = {
                model = `impaler4`,
                level = 60
            },
            ["Kalahari"] = {
                model = `kalahari`,
                level = 70
            },
            ["Dominator 6"] = {
                model = `dominator6`,
                level = 80
            },
            ["Slamvan 6"] = {
                model = `slamvan6`,
                level = 90
            },
            ["Speedo 2"] = {
                model = `speedo2`,
                level = 100
            }
        },
        scenes = {
            {
                pos = vector3(-3860.0, -1672.0, 669.5),
                pointAt = vector3(-3910.0, -1672.0, 629.5),
                transitionTime = 0
            },
            {
                pos = vector3(-3910.0, -1622.0, 669.5),
                pointAt = vector3(-3910.0, -1672.0, 629.5),
                transitionTime = 10000
            },
            {
                pos = vector3(-3960.0, -1672.0, 669.5),
                pointAt = vector3(-3910.0, -1672.0, 629.5),
                transitionTime = 10000
            },
            {
                pos = vector3(-3910.0, -1732.0, 669.5),
                pointAt = vector3(-3910.0, -1672.0, 629.5),
                transitionTime = 10000
            }
        }
    }
}

for _, locationData in pairs(cfg.locations) do
    for outerIndex, outerPosition in pairs(locationData.spawnpoints) do
        for innerIndex, innerPosition in pairs(locationData.spawnpoints) do
            if outerIndex ~= innerIndex then
                local distance = #(outerPosition - innerPosition)
                assert(distance > 2.0, string.format("Position at index %s is too close to position at index %s", outerIndex, innerIndex))
            end
        end
    end
end

return cfg
