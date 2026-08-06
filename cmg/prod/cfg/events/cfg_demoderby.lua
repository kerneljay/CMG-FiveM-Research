local maps = {
    ["Big sky thing"] = {
        rockstarMap = "https://prod.cloud.rockstargames.com/ugc/gta5mission/3726/9Rxg4gGO00SWs-WVq6nBsw/0_0_fr.json",
        middleCoords = vector3(273.09106445313,113.85364532471,723.77307128906),
        banner = "placeholder1",
        maxPlayers = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"},
        maxRounds = {"3", "4", "5", "6", "7", "8"},
        cars = {"scarab", "zr380", "monster"},
        teams = {"0", "2"},
        cameraTransitionCoords = {
            {placementCoords = vector3(332.71343994141,40.128517150879,788.27111816406), pointAt = vector3(277.00567626953,112.13814544678,754.51873779297)},
            {placementCoords = vector3(191.64059448242,58.651958465576,789.60717773438), pointAt = vector3(277.00567626953,112.13814544678,754.51873779297)},
        }
    },
    ["Sandy one"] = {
        rockstarMap = "https://prod.cloud.rockstargames.com/ugc/gta5mission/3726/zahAwRVizU29-2gEsSHS9g/0_0_it.json",
        banner = "placeholder2",
        maxPlayers = {"1", "2", "3", "4", "5", "6", "7", "8"},
        cars = {"panto", "bulldozer", "monster"},
        teams = {"0", "2"},
    },
    allMaps = {"Big sky thing", "Sandy one"},
}

return maps