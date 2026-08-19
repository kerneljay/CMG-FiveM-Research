--[[
    LEVEL 1 BEGINNER GUIDE — Storerob
    ======================================

    File: cmg/prod/client/crime/cl_storerob.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: crime, robbery, gang, and criminal gameplay, specifically the Storerob feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 40
      * Background threads: 0
      * Always-running loops: 14
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: none found by static scan

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    IMPORTANT — decompiler temporary names have been normalized for readability.
      Names like workingValue12, text4, dataCollection7, stateFlag3, cmgOperation2,
      localValue1/localValue2, or flow_label_* are NOT meaningful original developer names.
      A decompiler invented them while rebuilding source code.

      For a beginner, read the API call on the right-hand side first.
      Example:
        workingValue = GetEntityCoords
        dataCollection2 = workingValue(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      Temporary variables use conservative plain-English fallback names.
      Decompiled code can reuse one temporary for several purposes, so API calls
      and nearby comments explain the exact role at each point.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local text, text3, text5, text7, workingValue5, workingValue6, workingValue7, gameTime, number13, number15, number, workingValue, stateFlag4, text2, stateFlag5, stateFlag7, dataCollection, dataCollection2, createVector3, number4, number5, number6, number7, number8, workingValue2, workingValue3, cmgOperation2, eventHandlerRegistration, text4, workingValue4
text = "rotation.clockwise"
text3 = ""
text5 = ""
text7 = ""
workingValue5 = nil
workingValue6 = nil
workingValue7 = nil
gameTime = GetGameTimer
-- Beginner: result below is gameTimeMs.
gameTime = gameTime()
number13 = 100
number15 = 0.48
number = 0.3
workingValue = nil
stateFlag4 = false
text2 = ""
stateFlag5 = false
stateFlag7 = false
dataCollection = {}
dataCollection2 = {}
dataCollection2.shopNpcModel = 416176080
createVector3 = vector3
number4 = 1727.8286132813
number5 = 6415.54296875
number6 = 35.025634765625
createVector3 = createVector3(number4, number5, number6)
dataCollection2.shopNpcPosition = createVector3
dataCollection2.shopNpcHeading = 246.61416625977
dataCollection2.shopNpcHandler = 0
dataCollection2.prop_safe = 1936747465
dataCollection2.prop_door = -1375589668
createVector3 = vector3
number4 = 1736.289
number5 = 6418.842
number6 = 34.80501
createVector3 = createVector3(number4, number5, number6)
dataCollection2.safePosition = createVector3
dataCollection2.safeHeading = 242.48239135742
dataCollection2.money_prop = 1554100735
dataCollection2.money_prop2 = 1554100735
dataCollection2.money_prop3 = 290621560
dataCollection2.money_prop4 = 1603932804
createVector3 = vector3
number4 = 1736.702
number5 = 6418.888
number6 = 34.14135
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos = createVector3
createVector3 = vector3
number4 = 1736.702
number5 = 6418.888
number6 = 34.14135
createVector3 = createVector3(number4, number5, number6)
number4 = vector3
number5 = 0.0
number6 = 0.0
number7 = 0.15
number4 = number4(number5, number6, number7)
createVector3 = createVector3 + number4
dataCollection2.moneyPos2 = createVector3
createVector3 = vector3
number4 = 1736.835
number5 = 6419.24
number6 = 34.10043
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos3 = createVector3
createVector3 = vector3
number4 = 1736.798
number5 = 6418.982
number6 = 34.851775
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos4 = createVector3
dataCollection2.moneyHeading = 331.59808349609
dataCollection2.moneyHeading2 = 331.59808349609
dataCollection2.moneyHeading3 = 335.39840698242
dataCollection2.moneyHeading4 = 242.181640625
dataCollection2.safeHandler = 0
dataCollection2.doorHandler = 0
dataCollection2.moneyHandler = 0
dataCollection2.moneyHandler2 = 0
dataCollection2.moneyHandler3 = 0
dataCollection2.moneyHandler4 = 0
dataCollection2.distanceToPlayer = 1000.0
dataCollection2.insideStore = false
dataCollection2.robberyInProgress = false
dataCollection2.isPlayingAnims = false
dataCollection.paleto_twentyfourseven = dataCollection2
dataCollection2 = {}
dataCollection2.shopNpcModel = 416176080
createVector3 = vector3
number4 = 1959.876953125
number5 = 3740.0307617188
number6 = 32.329711914062
createVector3 = createVector3(number4, number5, number6)
dataCollection2.shopNpcPosition = createVector3
dataCollection2.shopNpcHeading = 303.30709838867
dataCollection2.shopNpcHandler = 0
dataCollection2.prop_safe = 1936747465
dataCollection2.prop_door = -1375589668
createVector3 = vector3
number4 = 1961.656
number5 = 3748.989
number6 = 32.11159
createVector3 = createVector3(number4, number5, number6)
dataCollection2.safePosition = createVector3
dataCollection2.safeHeading = 299.89376831055
dataCollection2.money_prop = 1554100735
dataCollection2.money_prop2 = 1554100735
dataCollection2.money_prop3 = 290621560
dataCollection2.money_prop4 = 1603932804
createVector3 = vector3
number4 = 1961.845
number5 = 3749.336
number6 = 31.44533
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos = createVector3
createVector3 = vector3
number4 = 1961.845
number5 = 3749.336
number6 = 31.44533
createVector3 = createVector3(number4, number5, number6)
number4 = vector3
number5 = 0.0
number6 = 0.0
number7 = 0.15
number4 = number4(number5, number6, number7)
createVector3 = createVector3 + number4
dataCollection2.moneyPos2 = createVector3
createVector3 = vector3
number4 = 1961.586
number5 = 3749.646
number6 = 31.44697
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos3 = createVector3
createVector3 = vector3
number4 = 1961.822
number5 = 3749.47
number6 = 32.22634
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos4 = createVector3
dataCollection2.moneyHeading = 297.69305419922
dataCollection2.moneyHeading2 = 297.69305419922
dataCollection2.moneyHeading3 = 300.09353637695
dataCollection2.moneyHeading4 = 299.99301147461
dataCollection2.safeHandler = 0
dataCollection2.doorHandler = 0
dataCollection2.moneyHandler = 0
dataCollection2.moneyHandler2 = 0
dataCollection2.moneyHandler3 = 0
dataCollection2.moneyHandler4 = 0
dataCollection2.distanceToPlayer = 1000.0
dataCollection2.insideStore = false
dataCollection2.robberyInProgress = false
dataCollection2.isPlayingAnims = false
dataCollection.sandyshores_twentyfoursever = dataCollection2
dataCollection2 = {}
dataCollection2.shopNpcModel = 416176080
createVector3 = vector3
number4 = 1984.4356689453
number5 = 3054.7565917969
number6 = 47.215145111084
createVector3 = createVector3(number4, number5, number6)
dataCollection2.shopNpcPosition = createVector3
dataCollection2.shopNpcHeading = 230.0
dataCollection2.shopNpcHandler = 0
dataCollection2.prop_safe = 1936747465
dataCollection2.prop_door = -1375589668
createVector3 = vector3
number4 = 1994.318
number5 = 3043.54
number6 = 46.98114
createVector3 = createVector3(number4, number5, number6)
dataCollection2.safePosition = createVector3
dataCollection2.safeHeading = 147.29058837891
dataCollection2.money_prop = 1554100735
dataCollection2.money_prop2 = 1554100735
dataCollection2.money_prop3 = 290621560
dataCollection2.money_prop4 = 1603932804
createVector3 = vector3
number4 = 1994.307
number5 = 3043.096
number6 = 46.32116
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos = createVector3
createVector3 = vector3
number4 = 1994.307
number5 = 3043.096
number6 = 46.32116
createVector3 = createVector3(number4, number5, number6)
number4 = vector3
number5 = 0.0
number6 = 0.0
number7 = 0.15
number4 = number4(number5, number6, number7)
createVector3 = createVector3 + number4
dataCollection2.moneyPos2 = createVector3
createVector3 = vector3
number4 = 1994.6
number5 = 3042.91
number6 = 46.3018
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos3 = createVector3
createVector3 = vector3
number4 = 1994.398
number5 = 3043.013
number6 = 47.12325
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos4 = createVector3
dataCollection2.moneyHeading = 326.9977722168
dataCollection2.moneyHeading2 = 326.9977722168
dataCollection2.moneyHeading3 = 327.59765625
dataCollection2.moneyHeading4 = 147.67221069336
dataCollection2.safeHandler = 0
dataCollection2.doorHandler = 0
dataCollection2.moneyHandler = 0
dataCollection2.moneyHandler2 = 0
dataCollection2.moneyHandler3 = 0
dataCollection2.moneyHandler4 = 0
dataCollection2.distanceToPlayer = 1000.0
dataCollection2.insideStore = false
dataCollection2.robberyInProgress = false
dataCollection2.isPlayingAnims = false
dataCollection.bar_one = dataCollection2
dataCollection2 = {}
dataCollection2.shopNpcModel = 416176080
createVector3 = vector3
number4 = -706.16192626953
number5 = -913.20764160156
number6 = 18.215581893921
createVector3 = createVector3(number4, number5, number6)
dataCollection2.shopNpcPosition = createVector3
dataCollection2.shopNpcHeading = 90.0
dataCollection2.shopNpcHandler = 0
dataCollection2.prop_safe = 1936747465
dataCollection2.prop_door = -1375589668
createVector3 = vector3
number4 = -707.8496
number5 = -904.0402
number6 = 18.98337
createVector3 = createVector3(number4, number5, number6)
dataCollection2.safePosition = createVector3
dataCollection2.safeHeading = 0.0
dataCollection2.money_prop = 1554100735
dataCollection2.money_prop2 = 1554100735
dataCollection2.money_prop3 = 290621560
dataCollection2.money_prop4 = 1603932804
createVector3 = vector3
number4 = -708.0876
number5 = -903.588
number6 = 18.21714
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos = createVector3
createVector3 = vector3
number4 = -708.0876
number5 = -903.588
number6 = 18.21714
createVector3 = createVector3(number4, number5, number6)
number4 = vector3
number5 = 0.0
number6 = 0.0
number7 = 0.15
number4 = number4(number5, number6, number7)
createVector3 = createVector3 + number4
dataCollection2.moneyPos2 = createVector3
createVector3 = vector3
number4 = -708.4515
number5 = -903.6274
number6 = 18.31876
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos3 = createVector3
createVector3 = vector3
number4 = -708.1865
number5 = -903.655
number6 = 19.10827
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos4 = createVector3
dataCollection2.moneyHeading = 0.0
dataCollection2.moneyHeading2 = 0.0
dataCollection2.moneyHeading3 = 0.0
dataCollection2.moneyHeading4 = 0.0
dataCollection2.safeHandler = 0
dataCollection2.doorHandler = 0
dataCollection2.moneyHandler = 0
dataCollection2.moneyHandler2 = 0
dataCollection2.moneyHandler3 = 0
dataCollection2.moneyHandler4 = 0
dataCollection2.distanceToPlayer = 1000.0
dataCollection2.insideStore = false
dataCollection2.robberyInProgress = false
dataCollection2.isPlayingAnims = false
dataCollection.littleseoul_twentyfourseven = dataCollection2
dataCollection2 = {}
dataCollection2.shopNpcModel = 416176080
createVector3 = vector3
number4 = 24.329671859741
number5 = -1347.0329589844
number6 = 29.482055664063
createVector3 = createVector3(number4, number5, number6)
dataCollection2.shopNpcPosition = createVector3
dataCollection2.shopNpcHeading = 274.96063232422
dataCollection2.shopNpcHandler = 0
dataCollection2.prop_safe = 1936747465
dataCollection2.prop_door = -1375589668
createVector3 = vector3
number4 = 30.84683
number5 = -1340.337
number6 = 29.26481
createVector3 = createVector3(number4, number5, number6)
dataCollection2.safePosition = createVector3
dataCollection2.safeHeading = 269.98638916016
dataCollection2.money_prop = 1554100735
dataCollection2.money_prop2 = 1554100735
dataCollection2.money_prop3 = 290621560
dataCollection2.money_prop4 = 1603932804
createVector3 = vector3
number4 = 31.25762
number5 = -1340.125
number6 = 28.53858
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos = createVector3
createVector3 = vector3
number4 = 31.232
number5 = -1340.124
number6 = 28.68855
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos2 = createVector3
createVector3 = vector3
number4 = 31.20064
number5 = -1339.752
number6 = 28.54
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos3 = createVector3
createVector3 = vector3
number4 = 31.22769
number5 = -1339.963
number6 = 29.36968
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos4 = createVector3
dataCollection2.moneyHeading = 0.099
dataCollection2.moneyHeading2 = 0.099
dataCollection2.moneyHeading3 = 0.099
dataCollection2.moneyHeading4 = 269.28741455078
dataCollection2.safeHandler = 0
dataCollection2.doorHandler = 0
dataCollection2.moneyHandler = 0
dataCollection2.moneyHandler2 = 0
dataCollection2.moneyHandler3 = 0
dataCollection2.moneyHandler4 = 0
dataCollection2.distanceToPlayer = 1000.0
dataCollection2.insideStore = false
dataCollection2.robberyInProgress = false
dataCollection2.isPlayingAnims = false
dataCollection.asda = dataCollection2
dataCollection2 = {}
dataCollection2.shopNpcModel = 416176080
createVector3 = vector3
number4 = -46.450626373291
number5 = -1757.5461425781
number6 = 28.420984268188
createVector3 = createVector3(number4, number5, number6)
dataCollection2.shopNpcPosition = createVector3
dataCollection2.shopNpcHeading = 45.0
dataCollection2.shopNpcHandler = 0
dataCollection2.prop_safe = 1936747465
dataCollection2.prop_door = -1375589668
createVector3 = vector3
number4 = -41.91652
number5 = -1749.63
number6 = 29.18883
createVector3 = createVector3(number4, number5, number6)
dataCollection2.safePosition = createVector3
dataCollection2.safeHeading = 319.69720458984
dataCollection2.money_prop = 1554100735
dataCollection2.money_prop2 = 1554100735
dataCollection2.money_prop3 = 290621560
dataCollection2.money_prop4 = 1603932804
createVector3 = vector3
number4 = -41.84
number5 = -1749.16
number6 = 28.42251
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos = createVector3
createVector3 = vector3
number4 = -41.84
number5 = -1749.16
number6 = 28.42251
createVector3 = createVector3(number4, number5, number6)
number4 = vector3
number5 = 0.0
number6 = 0.0
number7 = 0.15
number4 = number4(number5, number6, number7)
createVector3 = createVector3 + number4
dataCollection2.moneyPos2 = createVector3
createVector3 = vector3
number4 = -42.17047
number5 = -1748.993
number6 = 28.5542
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos3 = createVector3
createVector3 = vector3
number4 = -41.94428
number5 = -1749.123
number6 = 29.30364
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos4 = createVector3
dataCollection2.moneyHeading = 318.39709472656
dataCollection2.moneyHeading2 = 318.39709472656
dataCollection2.moneyHeading3 = 323.59747314453
dataCollection2.moneyHeading4 = 319.59719848633
dataCollection2.safeHandler = 0
dataCollection2.doorHandler = 0
dataCollection2.moneyHandler = 0
dataCollection2.moneyHandler2 = 0
dataCollection2.moneyHandler3 = 0
dataCollection2.moneyHandler4 = 0
dataCollection2.distanceToPlayer = 1000.0
dataCollection2.insideStore = false
dataCollection2.robberyInProgress = false
dataCollection2.isPlayingAnims = false
dataCollection.southlossantos_twentyfourseven = dataCollection2
dataCollection2 = {}
dataCollection2.shopNpcModel = 416176080
createVector3 = vector3
number4 = 372.39559936523
number5 = 326.75604248047
number6 = 103.55383300781
createVector3 = createVector3(number4, number5, number6)
dataCollection2.shopNpcPosition = createVector3
dataCollection2.shopNpcHeading = 257.95275878906
dataCollection2.shopNpcHandler = 0
dataCollection2.prop_safe = 1936747465
dataCollection2.prop_door = -1375589668
createVector3 = vector3
number4 = 380.0088
number5 = 331.7921
number6 = 103.3343
createVector3 = createVector3(number4, number5, number6)
dataCollection2.safePosition = createVector3
dataCollection2.safeHeading = 255.58413696289
dataCollection2.money_prop = 1554100735
dataCollection2.money_prop2 = 1554100735
dataCollection2.money_prop3 = 290621560
dataCollection2.money_prop4 = 1603932804
createVector3 = vector3
number4 = 380.4388
number5 = 331.9152
number6 = 102.678
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos = createVector3
createVector3 = vector3
number4 = 380.4388
number5 = 331.9152
number6 = 102.678
createVector3 = createVector3(number4, number5, number6)
number4 = vector3
number5 = 0.0
number6 = 0.0
number7 = 0.15
number4 = number4(number5, number6, number7)
createVector3 = createVector3 + number4
dataCollection2.moneyPos2 = createVector3
createVector3 = vector3
number4 = 380.5645
number5 = 332.2422
number6 = 102.6495
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos3 = createVector3
createVector3 = vector3
number4 = 380.4466
number5 = 332.0624
number6 = 103.4792
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos4 = createVector3
dataCollection2.moneyHeading = 346.39916992188
dataCollection2.moneyHeading2 = 346.39916992188
dataCollection2.moneyHeading3 = 323.59747314453
dataCollection2.moneyHeading4 = 346.79919433594
dataCollection2.safeHandler = 0
dataCollection2.doorHandler = 0
dataCollection2.moneyHandler = 0
dataCollection2.moneyHandler2 = 0
dataCollection2.moneyHandler3 = 0
dataCollection2.moneyHandler4 = 0
dataCollection2.distanceToPlayer = 1000.0
dataCollection2.insideStore = false
dataCollection2.robberyInProgress = false
dataCollection2.isPlayingAnims = false
dataCollection.vinewood_twentyfourseven = dataCollection2
dataCollection2 = {}
dataCollection2.shopNpcModel = 416176080
createVector3 = vector3
number4 = 1134.2801513672
number5 = -982.96826171875
number6 = 45.415786743164
createVector3 = createVector3(number4, number5, number6)
dataCollection2.shopNpcPosition = createVector3
dataCollection2.shopNpcHeading = 273.0
dataCollection2.shopNpcHandler = 0
dataCollection2.prop_safe = 1936747465
dataCollection2.prop_door = -1375589668
createVector3 = vector3
number4 = 1126.477
number5 = -980.8321
number6 = 45.18349
createVector3 = createVector3(number4, number5, number6)
dataCollection2.safePosition = createVector3
dataCollection2.safeHeading = 7.4999785423279
dataCollection2.money_prop = 1554100735
dataCollection2.money_prop2 = 1554100735
dataCollection2.money_prop3 = 290621560
dataCollection2.money_prop4 = 1603932804
createVector3 = vector3
number4 = 1126.212
number5 = -980.4645
number6 = 44.48732
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos = createVector3
createVector3 = vector3
number4 = 1126.212
number5 = -980.4645
number6 = 44.48732
createVector3 = createVector3(number4, number5, number6)
number4 = vector3
number5 = 0.0
number6 = 0.0
number7 = 0.15
number4 = number4(number5, number6, number7)
createVector3 = createVector3 + number4
dataCollection2.moneyPos2 = createVector3
createVector3 = vector3
number4 = 1125.856
number5 = -980.6199
number6 = 44.49899
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos3 = createVector3
createVector3 = vector3
number4 = 1126.078
number5 = -980.4662
number6 = 45.28833
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos4 = createVector3
dataCollection2.moneyHeading = 6.8999700546265
dataCollection2.moneyHeading2 = 6.8999700546265
dataCollection2.moneyHeading3 = 9.5999689102173
dataCollection2.moneyHeading4 = 7.19988489151
dataCollection2.safeHandler = 0
dataCollection2.doorHandler = 0
dataCollection2.moneyHandler = 0
dataCollection2.moneyHandler2 = 0
dataCollection2.moneyHandler3 = 0
dataCollection2.moneyHandler4 = 0
dataCollection2.distanceToPlayer = 1000.0
dataCollection2.insideStore = false
dataCollection2.robberyInProgress = false
dataCollection2.isPlayingAnims = false
dataCollection.eastlossantos_robsliquor = dataCollection2
dataCollection2 = {}
dataCollection2.shopNpcModel = 416176080
createVector3 = vector3
number4 = 2677.7670898438
number5 = 3279.4548339844
number6 = 55.228515625
createVector3 = createVector3(number4, number5, number6)
dataCollection2.shopNpcPosition = createVector3
dataCollection2.shopNpcHeading = 334.48818969727
dataCollection2.shopNpcHandler = 0
dataCollection2.prop_safe = 1936747465
dataCollection2.prop_door = -1375589668
createVector3 = vector3
number4 = 2674.81
number5 = 3288.004
number6 = 55.00899
createVector3 = createVector3(number4, number5, number6)
dataCollection2.safePosition = createVector3
dataCollection2.safeHeading = 330.4999785423279
dataCollection2.money_prop = 1554100735
dataCollection2.money_prop2 = 1554100735
dataCollection2.money_prop3 = 290621560
dataCollection2.money_prop4 = 1603932804
createVector3 = vector3
number4 = 2674.765
number5 = 3288.448
number6 = 54.3227
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos = createVector3
createVector3 = vector3
number4 = 2674.765
number5 = 3288.448
number6 = 54.3227
createVector3 = createVector3(number4, number5, number6)
number4 = vector3
number5 = 0.0
number6 = 0.0
number7 = 0.15
number4 = number4(number5, number6, number7)
createVector3 = createVector3 + number4
dataCollection2.moneyPos2 = createVector3
createVector3 = vector3
number4 = 2674.424
number5 = 3288.59
number6 = 54.33434
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos3 = createVector3
createVector3 = vector3
number4 = 2674.656
number5 = 3288.501
number6 = 55.12368
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos4 = createVector3
dataCollection2.moneyHeading = 331.39813232422
dataCollection2.moneyHeading2 = 331.39813232422
dataCollection2.moneyHeading3 = 332.49816894531
dataCollection2.moneyHeading4 = 331.19812011719
dataCollection2.safeHandler = 0
dataCollection2.doorHandler = 0
dataCollection2.moneyHandler = 0
dataCollection2.moneyHandler2 = 0
dataCollection2.moneyHandler3 = 0
dataCollection2.moneyHandler4 = 0
dataCollection2.distanceToPlayer = 1000.0
dataCollection2.insideStore = false
dataCollection2.robberyInProgress = false
dataCollection2.isPlayingAnims = false
dataCollection.sandyshores_twentyfourseven = dataCollection2
dataCollection2 = {}
dataCollection2.shopNpcModel = 416176080
createVector3 = vector3
number4 = 1698.5382080078
number5 = 4922.6352539063
number6 = 41.063629150391
createVector3 = createVector3(number4, number5, number6)
dataCollection2.shopNpcPosition = createVector3
dataCollection2.shopNpcHeading = 320.0
dataCollection2.shopNpcHandler = 0
dataCollection2.prop_safe = 1936747465
dataCollection2.prop_door = -1375589668
createVector3 = vector3
number4 = 1706.851
number5 = 4918.958
number6 = 41.83147
createVector3 = createVector3(number4, number5, number6)
dataCollection2.safePosition = createVector3
dataCollection2.safeHeading = 234.4807434082
dataCollection2.money_prop = 1554100735
dataCollection2.money_prop2 = 1554100735
dataCollection2.money_prop3 = 290621560
dataCollection2.money_prop4 = 1603932804
createVector3 = vector3
number4 = 1707.324
number5 = 4918.907
number6 = 41.1652
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos = createVector3
createVector3 = vector3
number4 = 1707.324
number5 = 4918.907
number6 = 41.16527
createVector3 = createVector3(number4, number5, number6)
number4 = vector3
number5 = 0.0
number6 = 0.0
number7 = 0.15
number4 = number4(number5, number6, number7)
createVector3 = createVector3 + number4
dataCollection2.moneyPos2 = createVector3
createVector3 = vector3
number4 = 1707.568
number5 = 4919.194
number6 = 41.13685
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos3 = createVector3
createVector3 = vector3
number4 = 1707.366
number5 = 4919.027
number6 = 41.94618
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos4 = createVector3
dataCollection2.moneyHeading = 325.39755249023
dataCollection2.moneyHeading2 = 325.39755249023
dataCollection2.moneyHeading3 = 332.49816894531
dataCollection2.moneyHeading4 = 322.59429931641
dataCollection2.safeHandler = 0
dataCollection2.doorHandler = 0
dataCollection2.moneyHandler = 0
dataCollection2.moneyHandler2 = 0
dataCollection2.moneyHandler3 = 0
dataCollection2.moneyHandler4 = 0
dataCollection2.distanceToPlayer = 1000.0
dataCollection2.insideStore = false
dataCollection2.robberyInProgress = false
dataCollection2.isPlayingAnims = false
dataCollection.grapeseed_gasstop = dataCollection2
dataCollection2 = {}
dataCollection2.shopNpcModel = 416176080
createVector3 = vector3
number4 = -1486.6450195313
number5 = -377.64117431641
number6 = 39.16344833374
createVector3 = createVector3(number4, number5, number6)
dataCollection2.shopNpcPosition = createVector3
createVector3 = 128.0
dataCollection2.shopNpcHeading = createVector3
dataCollection2.shopNpcHandler = 0
dataCollection2.prop_safe = 1936747465
dataCollection2.prop_door = -1375589668
createVector3 = vector3
number4 = -1479.141
number5 = -374.8521
number6 = 38.93123
createVector3 = createVector3(number4, number5, number6)
dataCollection2.safePosition = createVector3
createVector3 = 226.1791229248
dataCollection2.safeHeading = createVector3
dataCollection2.money_prop = 1554100735
dataCollection2.money_prop2 = 1554100735
dataCollection2.money_prop3 = 290621560
dataCollection2.money_prop4 = 1603932804
createVector3 = vector3
number4 = -1478.691
number5 = -374.9853
number6 = 38.23492
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos = createVector3
createVector3 = vector3
number4 = -1478.691
number5 = -374.9853
number6 = 38.23492
createVector3 = createVector3(number4, number5, number6)
number4 = vector3
number5 = 0.0
number6 = 0.0
number7 = 0.15
number4 = number4(number5, number6, number7)
createVector3 = createVector3 + number4
dataCollection2.moneyPos2 = createVector3
createVector3 = vector3
number4 = -1478.475
number5 = -374.6764
number6 = 38.26654
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos3 = createVector3
createVector3 = vector3
number4 = -1478.643
number5 = -374.8643
number6 = 39.04589
createVector3 = createVector3(number4, number5, number6)
dataCollection2.moneyPos4 = createVector3
createVector3 = 315.29690551758
dataCollection2.moneyHeading = createVector3
createVector3 = 315.29690551758
dataCollection2.moneyHeading2 = createVector3
createVector3 = 315.49691772461
dataCollection2.moneyHeading3 = createVector3
createVector3 = 225.37908935547
dataCollection2.moneyHeading4 = createVector3
dataCollection2.safeHandler = 0
dataCollection2.doorHandler = 0
dataCollection2.moneyHandler = 0
dataCollection2.moneyHandler2 = 0
dataCollection2.moneyHandler3 = 0
dataCollection2.moneyHandler4 = 0
dataCollection2.distanceToPlayer = 1000.0
dataCollection2.insideStore = false
dataCollection2.robberyInProgress = false
dataCollection2.isPlayingAnims = false
dataCollection.morningwood_robsliquor = dataCollection2
dataCollection2 = "chumash_robsliquor"
createVector3 = {}
createVector3.shopNpcModel = 416176080
number4 = vector3
number5 = -2966.4086914063
number6 = 391.35339355469
number7 = 14.043314933777
number4 = number4(number5, number6, number7)
createVector3.shopNpcPosition = number4
number4 = 80.0
createVector3.shopNpcHeading = number4
createVector3.shopNpcHandler = 0
createVector3.prop_safe = 1936747465
createVector3.prop_door = -1375589668
number4 = vector3
number5 = -2959.265
number6 = 387.6957
number7 = 13.81098
number4 = number4(number5, number6, number7)
createVector3.safePosition = number4
number4 = 176.69169616699
createVector3.safeHeading = number4
createVector3.money_prop = 1554100735
createVector3.money_prop2 = 1554100735
createVector3.money_prop3 = 290621560
createVector3.money_prop4 = 1603932804
number4 = vector3
number5 = -2959.014
number6 = 387.3654
number7 = 13.14629
number4 = number4(number5, number6, number7)
createVector3.moneyPos = number4
number4 = vector3
number5 = -2959.014
number6 = 387.3654
number7 = 13.14629
number4 = number4(number5, number6, number7)
number5 = vector3
number6 = 0.0
number7 = 0.0
number8 = 0.15
number5 = number5(number6, number7, number8)
number4 = number4 + number5
createVector3.moneyPos2 = number4
number4 = vector3
number5 = -2958.639
number6 = 387.3448
number7 = 13.09645
number4 = number4(number5, number6, number7)
createVector3.moneyPos3 = number4
number4 = vector3
number5 = -2958.927
number6 = 387.2768
number7 = 13.91958
number4 = number4(number5, number6, number7)
createVector3.moneyPos4 = number4
number4 = 356.49978637695
createVector3.moneyHeading = number4
number4 = 356.49978637695
createVector3.moneyHeading2 = number4
createVector3.moneyHeading3 = 0.0
number4 = 177.27951049805
createVector3.moneyHeading4 = number4
createVector3.safeHandler = 0
createVector3.doorHandler = 0
createVector3.moneyHandler = 0
createVector3.moneyHandler2 = 0
createVector3.moneyHandler3 = 0
createVector3.moneyHandler4 = 0
createVector3.distanceToPlayer = 1000.0
createVector3.insideStore = false
createVector3.robberyInProgress = false
createVector3.isPlayingAnims = false
dataCollection[dataCollection2] = createVector3
dataCollection2 = "eastlossantos_gasstop"
createVector3 = {}
createVector3.shopNpcModel = 416176080
number4 = vector3
number5 = 1164.5863037109
number6 = -322.3291015625
number7 = 68.205024719238
number4 = number4(number5, number6, number7)
createVector3.shopNpcPosition = number4
number4 = 96.0
createVector3.shopNpcHeading = number4
createVector3.shopNpcHandler = 0
createVector3.prop_safe = 1936747465
createVector3.prop_door = -1375589668
number4 = vector3
number5 = 1161.396
number6 = -313.4418
number7 = 68.97283
number4 = number4(number5, number6, number7)
createVector3.safePosition = number4
number4 = 12.599948883057
createVector3.safeHeading = number4
createVector3.money_prop = 1554100735
createVector3.money_prop2 = 1554100735
createVector3.money_prop3 = 290621560
createVector3.money_prop4 = 1603932804
number4 = vector3
number5 = 1161.073
number6 = -313.0523
number7 = 68.25655
number4 = number4(number5, number6, number7)
createVector3.moneyPos = number4
number4 = vector3
number5 = 1161.073
number6 = -313.0523
number7 = 68.25655
number4 = number4(number5, number6, number7)
number5 = vector3
number6 = 0.0
number7 = 0.0
number8 = 0.15
number5 = number5(number6, number7, number8)
number4 = number4 + number5
createVector3.moneyPos2 = number4
number4 = vector3
number5 = 1160.752
number6 = -313.2396
number7 = 68.25839
number4 = number4(number5, number6, number7)
createVector3.moneyPos3 = number4
number4 = vector3
number5 = 1160.989
number6 = -313.1646
number7 = 69.10003
number4 = number4(number5, number6, number7)
createVector3.moneyPos4 = number4
number4 = 12.599948883057
createVector3.moneyHeading = number4
number4 = 12.599948883057
createVector3.moneyHeading2 = number4
number4 = 13.399929046631
createVector3.moneyHeading3 = number4
number4 = 13.49991607666
createVector3.moneyHeading4 = number4
createVector3.safeHandler = 0
createVector3.doorHandler = 0
createVector3.moneyHandler = 0
createVector3.moneyHandler2 = 0
createVector3.moneyHandler3 = 0
createVector3.moneyHandler4 = 0
createVector3.distanceToPlayer = 1000.0
createVector3.insideStore = false
createVector3.robberyInProgress = false
createVector3.isPlayingAnims = false
dataCollection[dataCollection2] = createVector3
dataCollection2 = "tongva_gasstop"
createVector3 = {}
createVector3.shopNpcModel = 416176080
number4 = vector3
number5 = -1820.384765625
number6 = 794.54663085938
number7 = 137.08973693848
number4 = number4(number5, number6, number7)
createVector3.shopNpcPosition = number4
number4 = 126.0
createVector3.shopNpcHeading = number4
createVector3.shopNpcHandler = 0
createVector3.prop_safe = 1936747465
createVector3.prop_door = -1375589668
number4 = vector3
number5 = -1827.91
number6 = 800.1599
number7 = 137.9252
number4 = number4(number5, number6, number7)
createVector3.safePosition = number4
number4 = 41.699321746826
createVector3.safeHeading = number4
createVector3.money_prop = 1554100735
createVector3.money_prop2 = 1554100735
createVector3.money_prop3 = 290621560
createVector3.money_prop4 = 1603932804
number4 = vector3
number5 = -1828.359
number6 = 800.326
number7 = 137.1943
number4 = number4(number5, number6, number7)
createVector3.moneyPos = number4
number4 = vector3
number5 = -1828.359
number6 = 800.326
number7 = 137.1943
number4 = number4(number5, number6, number7)
number5 = vector3
number6 = 0.0
number7 = 0.0
number8 = 0.15
number5 = number5(number6, number7, number8)
number4 = number4 + number5
createVector3.moneyPos2 = number4
number4 = vector3
number5 = -1828.556
number6 = 800.006
number7 = 137.2565
number4 = number4(number5, number6, number7)
createVector3.moneyPos3 = number4
number4 = vector3
number5 = -1828.442
number6 = 800.2554
number7 = 138.0441
number4 = number4(number5, number6, number7)
createVector3.moneyPos4 = number4
number4 = 311.09548950195
createVector3.moneyHeading = number4
number4 = 311.09548950195
createVector3.moneyHeading2 = number4
number4 = 44.199123382568
createVector3.moneyHeading3 = number4
number4 = 41.498989105225
createVector3.moneyHeading4 = number4
createVector3.safeHandler = 0
createVector3.doorHandler = 0
createVector3.moneyHandler = 0
createVector3.moneyHandler2 = 0
createVector3.moneyHandler3 = 0
createVector3.moneyHandler4 = 0
createVector3.distanceToPlayer = 1000.0
createVector3.insideStore = false
createVector3.robberyInProgress = false
createVector3.isPlayingAnims = false
dataCollection[dataCollection2] = createVector3
dataCollection2 = "tataviam_twentyfourseven"
createVector3 = {}
createVector3.shopNpcModel = 416176080
number4 = vector3
number5 = 2556.8967285156
number6 = 380.67691040039
number7 = 108.60876464844
number4 = number4(number5, number6, number7)
createVector3.shopNpcPosition = number4
createVector3.shopNpcHeading = 0.0
createVector3.shopNpcHandler = 0
createVector3.prop_safe = 1936747465
createVector3.prop_door = -1375589668
number4 = vector3
number5 = 2550.434
number6 = 386.8382
number7 = 108.3907
number4 = number4(number5, number6, number7)
createVector3.safePosition = number4
number4 = 358.39990234375
createVector3.safeHeading = number4
createVector3.money_prop = 1554100735
createVector3.money_prop2 = 1554100735
createVector3.money_prop3 = 290621560
createVector3.money_prop4 = 1603932804
number4 = vector3
number5 = 2550.21
number6 = 387.2356
number7 = 107.6346
number4 = number4(number5, number6, number7)
createVector3.moneyPos = number4
number4 = vector3
number5 = 2550.21
number6 = 387.2356
number7 = 107.6346
number4 = number4(number5, number6, number7)
number5 = vector3
number6 = 0.0
number7 = 0.0
number8 = 0.15
number5 = number5(number6, number7, number8)
number4 = number4 + number5
createVector3.moneyPos2 = number4
number4 = vector3
number5 = 2549.838
number6 = 387.221
number7 = 107.7061
number4 = number4(number5, number6, number7)
createVector3.moneyPos3 = number4
number4 = vector3
number5 = 2550.109
number6 = 387.2408
number7 = 108.5108
number4 = number4(number5, number6, number7)
createVector3.moneyPos4 = number4
number4 = 358.89993286133
createVector3.moneyHeading = number4
number4 = 358.89993286133
createVector3.moneyHeading2 = number4
createVector3.moneyHeading3 = 0.0
number4 = 358.0998840332
createVector3.moneyHeading4 = number4
createVector3.safeHandler = 0
createVector3.doorHandler = 0
createVector3.moneyHandler = 0
createVector3.moneyHandler2 = 0
createVector3.moneyHandler3 = 0
createVector3.moneyHandler4 = 0
createVector3.distanceToPlayer = 1000.0
createVector3.insideStore = false
createVector3.robberyInProgress = false
createVector3.isPlayingAnims = false
dataCollection[dataCollection2] = createVector3
dataCollection2 = "cayoperico"
createVector3 = {}
createVector3.shopNpcModel = 416176080
number4 = vector3
number5 = 4466.423828125
number6 = -4463.7529296875
number7 = 4.2491989135742
number4 = number4(number5, number6, number7)
createVector3.shopNpcPosition = number4
number4 = 200.81
createVector3.shopNpcHeading = number4
createVector3.shopNpcHandler = 0
createVector3.prop_safe = 1936747465
createVector3.prop_door = -1375589668
number4 = vector3
number5 = 4464.9482421875
number6 = -4460.5083007812
number7 = 4.0420001029968
number4 = number4(number5, number6, number7)
createVector3.safePosition = number4
number4 = 110.0
createVector3.safeHeading = number4
createVector3.money_prop = 1554100735
createVector3.money_prop2 = 1554100735
createVector3.money_prop3 = 290621560
createVector3.money_prop4 = 1603932804
number4 = vector3
number5 = 4464.7482421875
number6 = -4461.0083007812
number7 = 3.29200010299686
number4 = number4(number5, number6, number7)
createVector3.moneyPos = number4
number4 = vector3
number5 = 4464.7482421875
number6 = -4461.0083007812
number7 = 3.2920001029968
number4 = number4(number5, number6, number7)
number5 = vector3
number6 = 0.0
number7 = 0.0
number8 = 0.15
number5 = number5(number6, number7, number8)
number4 = number4 + number5
createVector3.moneyPos2 = number4
number4 = vector3
number5 = 4464.7482421875
number6 = -4461.0083007812
number7 = 3.2920001029968
number4 = number4(number5, number6, number7)
createVector3.moneyPos3 = number4
number4 = vector3
number5 = 4464.7482421875
number6 = -4461.0083007812
number7 = 4.0920001029968
number4 = number4(number5, number6, number7)
createVector3.moneyPos4 = number4
number4 = 110.89993286133
createVector3.moneyHeading = number4
number4 = 110.89993286133
createVector3.moneyHeading2 = number4
createVector3.moneyHeading3 = 0.0
number4 = 110.0998840332
createVector3.moneyHeading4 = number4
createVector3.safeHandler = 0
createVector3.doorHandler = 0
createVector3.moneyHandler = 0
createVector3.moneyHandler2 = 0
createVector3.moneyHandler3 = 0
createVector3.moneyHandler4 = 0
createVector3.distanceToPlayer = 1000.0
createVector3.insideStore = false
createVector3.robberyInProgress = false
createVector3.isPlayingAnims = false
dataCollection[dataCollection2] = createVector3

-- === HELPER FUNCTION (decompiler name: dataCollection2; parameters: localValue1) ===
function dataCollection2(localValue1)
  local localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21
  localValue2 = BeginTextCommandDisplayHelp
  localValue3 = "STRING"
  localValue2(localValue3)
  localValue2 = AddTextComponentSubstringPlayerName
  localValue3 = localValue1
  localValue2(localValue3)
  localValue2 = EndTextCommandDisplayHelp
  localValue3 = 0
  stateFlag18 = false
  stateFlag19 = true
  stateFlag21 = -1
  localValue2(localValue3, stateFlag18, stateFlag19, stateFlag21)
end

-- === HELPER FUNCTION (decompiler name: createVector3; parameters: localValue1, localValue2, localValue3) ===
function createVector3(localValue1, localValue2, localValue3)
  local stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8, number2, number3, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15
  stateFlag18 = IsPedDeadOrDying
  stateFlag19 = localValue1
  stateFlag21 = false
  stateFlag18 = stateFlag18(stateFlag19, stateFlag21)
  if not stateFlag18 then
    stateFlag18 = IsEntityPlayingAnim
    stateFlag19 = localValue1
    stateFlag21 = "mp_am_hold_up"
    stateFlag22 = "holdup_victim_20s"
    number11 = 3
    stateFlag18 = stateFlag18(stateFlag19, stateFlag21, stateFlag22, number11)
    if stateFlag18 then
      stateFlag18 = localValue2.isPlayingAnims
      if not stateFlag18 then
        localValue2.isPlayingAnims = true
        stateFlag18 = PlayPedAmbientSpeechNative
        stateFlag19 = localValue1
        stateFlag21 = "SHOP_SCARED"
        stateFlag22 = "SPEECH_PARAMS_FORCE"
        stateFlag18(stateFlag19, stateFlag21, stateFlag22)
        stateFlag18 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        stateFlag18 = stateFlag18()
        stateFlag18 = stateFlag18 + 10800
        while true do
          stateFlag19 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          stateFlag19 = stateFlag19()
          if not (stateFlag18 >= stateFlag19) then
            break
          end
          stateFlag19 = IsPedDeadOrDying
          stateFlag21 = localValue1
          stateFlag22 = false
          stateFlag19 = stateFlag19(stateFlag21, stateFlag22)
          if stateFlag19 then
            break
          end
          stateFlag19 = Wait
          stateFlag21 = 0
          stateFlag19(stateFlag21)
        end
        stateFlag19 = IsPedDeadOrDying
        stateFlag21 = localValue1
        stateFlag22 = false
        stateFlag19 = stateFlag19(stateFlag21, stateFlag22)
        if not stateFlag19 then
          stateFlag19 = GetEntityCoords
          stateFlag21 = localValue1
          -- Beginner: result below is entityCoords.
          stateFlag19 = stateFlag19(stateFlag21)
          stateFlag21 = GetClosestObjectOfType
          stateFlag22 = stateFlag19.x
          number11 = stateFlag19.y
          stateFlag23 = stateFlag19.z
          number16 = 5.0
          hashValue = GetHashKey
          stateFlag2 = "prop_till_01"
          -- Beginner: result below is hash.
          hashValue = hashValue(stateFlag2)
          stateFlag2 = false
          hashValue2 = false
          hashValue3 = false
          -- Beginner: result below is objectEntity.
          stateFlag21 = stateFlag21(stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3)
          stateFlag22 = DoesEntityExist
          number11 = stateFlag21
          stateFlag22 = stateFlag22(number11)
          if stateFlag22 then
            stateFlag22 = GetEntityCoords
            number11 = stateFlag21
            -- Beginner: result below is entityCoords.
            stateFlag22 = stateFlag22(number11)
            number11 = CreateModelSwap
            stateFlag23 = stateFlag22.x
            number16 = stateFlag22.y
            hashValue = stateFlag22.z
            stateFlag2 = 0.5
            hashValue2 = GetHashKey
            hashValue3 = "prop_till_01"
            -- Beginner: result below is hash.
            hashValue2 = hashValue2(hashValue3)
            hashValue3 = GetHashKey
            stateFlag6 = "prop_till_01_dam"
            -- Beginner: result below is hash.
            hashValue3 = hashValue3(stateFlag6)
            stateFlag6 = false
            number11(stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6)
          end
          stateFlag22 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          stateFlag22 = stateFlag22()
          stateFlag18 = stateFlag22 + 200
          while true do
            stateFlag22 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            stateFlag22 = stateFlag22()
            if not (stateFlag18 >= stateFlag22) then
              break
            end
            stateFlag22 = IsPedDeadOrDying
            number11 = localValue1
            stateFlag23 = false
            stateFlag22 = stateFlag22(number11, stateFlag23)
            if stateFlag22 then
              break
            end
            stateFlag22 = Wait
            number11 = 0
            stateFlag22(number11)
          end
          stateFlag22 = CMG
          stateFlag22 = stateFlag22.loadModel
          number11 = -1194335261
          stateFlag22 = stateFlag22(number11)
          number11 = GetEntityCoords
          stateFlag23 = localValue1
          -- Beginner: result below is entityCoords.
          number11 = number11(stateFlag23)
          stateFlag23 = CreateObject
          number16 = stateFlag22
          hashValue = number11.x
          stateFlag2 = number11.y
          hashValue2 = number11.z
          hashValue3 = false
          stateFlag6 = false
          stateFlag8 = false
          -- Beginner: result below is objectEntity.
          stateFlag23 = stateFlag23(number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8)
          number16 = SetModelAsNoLongerNeeded
          hashValue = stateFlag22
          number16(hashValue)
          number16 = PlayPedAmbientSpeechNative
          hashValue = localValue1
          stateFlag2 = "SHOP_HURRYING"
          hashValue2 = "SPEECH_PARAMS_FORCE"
          number16(hashValue, stateFlag2, hashValue2)
          number16 = AttachEntityToEntity
          hashValue = stateFlag23
          stateFlag2 = localValue1
          hashValue2 = GetPedBoneIndex
          hashValue3 = localValue1
          stateFlag6 = 60309
          hashValue2 = hashValue2(hashValue3, stateFlag6)
          hashValue3 = 0.1
          stateFlag6 = -0.11
          stateFlag8 = 0.08
          number2 = 0.0
          number3 = -75.0
          stateFlag9 = -75.0
          stateFlag10 = true
          stateFlag11 = true
          stateFlag12 = false
          stateFlag13 = false
          stateFlag14 = 2
          stateFlag15 = true
          -- Beginner: Attach one entity to another entity.
          number16(hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8, number2, number3, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15)
          number16 = Wait
          hashValue = 10000
          number16(hashValue)
          number16 = IsPedDeadOrDying
          hashValue = localValue1
          stateFlag2 = false
          number16 = number16(hashValue, stateFlag2)
          if not number16 then
            number16 = PlayPedAmbientSpeechNative
            hashValue = localValue1
            stateFlag2 = "SCREAM_PANIC"
            hashValue2 = "SPEECH_PARAMS_FORCE"
            number16(hashValue, stateFlag2, hashValue2)
            number16 = DetachEntity
            hashValue = stateFlag23
            stateFlag2 = true
            hashValue2 = false
            number16(hashValue, stateFlag2, hashValue2)
            number16 = Wait
            hashValue = 0
            number16(hashValue)
            number16 = SetEntityHeading
            hashValue = stateFlag23
            stateFlag2 = localValue2.shopNpcHeading
            -- Beginner: Change the direction an entity is facing.
            number16(hashValue, stateFlag2)
            number16 = ApplyForceToEntity
            hashValue = stateFlag23
            stateFlag2 = 3
            hashValue2 = 0.0
            hashValue3 = 50.0
            stateFlag6 = 20.0
            stateFlag8 = 0.0
            number2 = 0.0
            number3 = 50.0
            stateFlag9 = 0
            stateFlag10 = true
            stateFlag11 = true
            stateFlag12 = false
            stateFlag13 = false
            stateFlag14 = true
            number16(hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8, number2, number3, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14)
            number16 = false
            stateFlag4 = number16
            number16 = Citizen
            number16 = number16.CreateThread

            -- === HELPER FUNCTION: hashValue() ===
            function hashValue()
              local coords, cmgOperation, text6, text8, stateFlag20
              while true do
                coords = Wait
                cmgOperation = 5
                coords(cmgOperation)
                coords = DoesEntityExist
                cmgOperation = stateFlag23
                coords = coords(cmgOperation)
                if coords then
                  coords = GetEntityCoords
                  cmgOperation = CMG
                  cmgOperation = cmgOperation.getPlayerPed
                  cmgOperation, text6, text8, stateFlag20 = cmgOperation()
                  -- Beginner: result below is entityCoords.
                  coords = coords(cmgOperation, text6, text8, stateFlag20)
                  cmgOperation = GetEntityCoords
                  text6 = stateFlag23
                  -- Beginner: result below is entityCoords.
                  cmgOperation = cmgOperation(text6)
                  coords = coords - cmgOperation
                  coords = #coords
                  cmgOperation = 1.5
                  if coords <= cmgOperation then
                    coords = PlaySoundFrontend
                    cmgOperation = -1
                    text6 = "ROBBERY_MONEY_TOTAL"
                    text8 = "HUD_FRONTEND_CUSTOM_SOUNDSET"
                    stateFlag20 = true
                    coords(cmgOperation, text6, text8, stateFlag20)
                    coords = TriggerServerEvent
                    cmgOperation = "75c4e26b58"
                    text6 = localValue3
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "75c4e26b58".
                    coords(cmgOperation, text6)
                    coords = DeleteObject
                    cmgOperation = stateFlag23
                    coords(cmgOperation)
                    break
                  end
                else
                  break
                end
              end
            end
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            number16(hashValue)
          else
            number16 = DeleteObject
            hashValue = stateFlag23
            number16(hashValue)
          end
          number16 = CMG
          number16 = number16.loadAnimDict
          hashValue = "mp_am_hold_up"
          -- Beginner: Load a GTA animation dictionary before using it.
          number16(hashValue)
          number16 = TaskPlayAnim
          hashValue = localValue1
          stateFlag2 = "mp_am_hold_up"
          hashValue2 = "cower_intro"
          hashValue3 = 8.0
          stateFlag6 = -8.0
          stateFlag8 = -1
          number2 = 0
          number3 = 0
          stateFlag9 = false
          stateFlag10 = false
          stateFlag11 = false
          -- Beginner: Play an animation on a ped.
          number16(hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8, number2, number3, stateFlag9, stateFlag10, stateFlag11)
          number16 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          number16 = number16()
          stateFlag18 = number16 + 2500
          while true do
            number16 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            number16 = number16()
            if not (stateFlag18 >= number16) then
              break
            end
            number16 = Wait
            hashValue = 0
            number16(hashValue)
          end
          number16 = Citizen
          number16 = number16.CreateThread

          -- === HELPER FUNCTION: hashValue() ===
          function hashValue()
            local coords, cmgOperation, text6, text8, stateFlag20, number9, number10, number12, number14, stateFlag24, stateFlag, stateFlag3
            coords = TaskPlayAnim
            cmgOperation = localValue1
            text6 = "mp_am_hold_up"
            text8 = "cower_loop"
            stateFlag20 = 8.0
            number9 = -8.0
            number10 = -1
            number12 = 1
            number14 = 0
            stateFlag24 = false
            stateFlag = false
            stateFlag3 = false
            -- Beginner: Play an animation on a ped.
            coords(cmgOperation, text6, text8, stateFlag20, number9, number10, number12, number14, stateFlag24, stateFlag, stateFlag3)
            coords = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            coords = coords()
            coords = coords + 120000
            while true do
              cmgOperation = GetGameTimer
              -- Beginner: result below is gameTimeMs.
              cmgOperation = cmgOperation()
              if not (coords >= cmgOperation) then
                break
              end
              cmgOperation = Wait
              text6 = 50
              cmgOperation(text6)
            end
            cmgOperation = IsEntityPlayingAnim
            text6 = localValue1
            text8 = "mp_am_hold_up"
            stateFlag20 = "cower_loop"
            number9 = 3
            cmgOperation = cmgOperation(text6, text8, stateFlag20, number9)
            if cmgOperation then
              cmgOperation = ClearPedTasks
              text6 = localValue1
              cmgOperation(text6)
            end
            localValue2.isPlayingAnims = false
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          number16(hashValue)
        end
      end
    end
  end
end
number4 = _ENV
number5 = "AddEventHandler"
number4 = number4[number5]
number5 = "CMG:onClientSpawn"

-- === HELPER FUNCTION (decompiler name: number6; parameters: localValue1, localValue2) ===
function number6(localValue1, localValue2)
  local localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2
  if localValue2 then
    localValue3 = TriggerServerEvent
    stateFlag18 = "d136671bcb"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d136671bcb".
    localValue3(stateFlag18)
    while true do
      localValue3 = workingValue
      if nil ~= localValue3 then
        break
      end
      localValue3 = Wait
      stateFlag18 = 0
      localValue3(stateFlag18)
    end
    while true do
      localValue3 = pairs
      stateFlag18 = dataCollection
      localValue3, stateFlag18, stateFlag19, stateFlag21 = localValue3(stateFlag18)
      for stateFlag22, number11 in localValue3, stateFlag18, stateFlag19, stateFlag21 do
        stateFlag23 = number11.shopNpcHandler
        if 0 ~= stateFlag23 then
          number16 = createVector3
          hashValue = stateFlag23
          stateFlag2 = number11
          hashValue2 = stateFlag22
          number16(hashValue, stateFlag2, hashValue2)
        end
      end
      localValue3 = Wait
      stateFlag18 = 1000
      localValue3(stateFlag18)
    end
  end
end
number4(number5, number6)
number4 = _ENV
number5 = "Citizen"
number4 = number4[number5]
number5 = "CreateThread"
number4 = number4[number5]

-- === HELPER FUNCTION (decompiler name: number5; parameters: none) ===
function number5()
  local localValue1, localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16
  while true do
    localValue1 = dataCollection
    if nil ~= localValue1 then
      localValue1 = pairs
      localValue2 = dataCollection
      localValue1, localValue2, localValue3, stateFlag18 = localValue1(localValue2)
      for stateFlag19, stateFlag21 in localValue1, localValue2, localValue3, stateFlag18 do
        stateFlag22 = stateFlag21.distanceToPlayer
        if stateFlag22 < 10.0 then
          stateFlag22 = stateFlag21.insideStore
          if not stateFlag22 then
            stateFlag22 = PlayPedAmbientSpeechNative
            number11 = stateFlag21.shopNpcHandler
            stateFlag23 = "SHOP_GREET"
            number16 = "SPEECH_PARAMS_FORCE"
            stateFlag22(number11, stateFlag23, number16)
          end
        end
        stateFlag22 = stateFlag21.distanceToPlayer
        if stateFlag22 < 10.0 then
          stateFlag22 = dataCollection
          stateFlag22 = stateFlag22[stateFlag19]
          stateFlag22.insideStore = true
        else
          stateFlag22 = dataCollection
          stateFlag22 = stateFlag22[stateFlag19]
          stateFlag22.insideStore = false
        end
      end
    end
    localValue1 = Wait
    localValue2 = 500
    localValue1(localValue2)
  end
end
number4(number5)
number4 = {}

-- === HELPER FUNCTION (decompiler name: number5; parameters: localValue1) ===
function number5(localValue1)
  local localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8
  workingValue = localValue1
  localValue2 = pairs
  localValue3 = number4
  localValue2, localValue3, stateFlag18, stateFlag19 = localValue2(localValue3)
  for stateFlag21, stateFlag22 in localValue2, localValue3, stateFlag18, stateFlag19 do
    if nil ~= stateFlag22 then
      number11 = tCMG
      number11 = number11.removeBlip
      stateFlag23 = stateFlag22
      number11(stateFlag23)
    end
  end
  localValue2 = {}
  number4 = localValue2
  localValue2 = pairs
  localValue3 = workingValue
  localValue2, localValue3, stateFlag18, stateFlag19 = localValue2(localValue3)
  for stateFlag21, stateFlag22 in localValue2, localValue3, stateFlag18, stateFlag19 do
    number11 = stateFlag22.position
    stateFlag23 = 0
    number16 = stateFlag22.beingrobbed
    if true == number16 then
      number16 = tCMG
      number16 = number16.addBlip
      hashValue = number11.x
      stateFlag2 = number11.y
      hashValue2 = number11.z
      hashValue3 = 52
      stateFlag6 = 1
      stateFlag8 = "Robbable Store [BEING ROBBED]"
      number16 = number16(hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8)
      stateFlag23 = number16
    else
      number16 = tCMG
      number16 = number16.addBlip
      hashValue = number11.x
      stateFlag2 = number11.y
      hashValue2 = number11.z
      hashValue3 = 52
      stateFlag6 = 2
      stateFlag8 = "Robbable Store"
      number16 = number16(hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8)
      stateFlag23 = number16
    end
    number16 = number4
    number16[stateFlag21] = stateFlag23
  end
end
number6 = _ENV
number7 = "RegisterNetEvent"
number6 = number6[number7]
number7 = "b598315839"

-- === HELPER FUNCTION (decompiler name: number8; parameters: localValue1) ===
function number8(localValue1)
  local localValue2, localValue3
  localValue2 = number5
  localValue3 = localValue1
  localValue2(localValue3)
end
number6(number7, number8)
number6 = _ENV
number7 = "Citizen"
number6 = number6[number7]
number7 = "CreateThread"
number6 = number6[number7]

-- === HELPER FUNCTION (decompiler name: number7; parameters: none) ===
function number7()
  local localValue1, localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8, number2, number3, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17
  localValue1 = pairs
  localValue2 = dataCollection
  localValue1, localValue2, localValue3, stateFlag18 = localValue1(localValue2)
  for stateFlag19, stateFlag21 in localValue1, localValue2, localValue3, stateFlag18 do
    stateFlag22 = CMG
    stateFlag22 = stateFlag22.loadModel
    number11 = stateFlag21.shopNpcModel
    stateFlag22 = stateFlag22(number11)
    number11 = CreatePed
    stateFlag23 = 26
    number16 = stateFlag22
    hashValue = stateFlag21.shopNpcPosition
    hashValue = hashValue.x
    stateFlag2 = stateFlag21.shopNpcPosition
    stateFlag2 = stateFlag2.y
    hashValue2 = stateFlag21.shopNpcPosition
    hashValue2 = hashValue2.z
    hashValue3 = stateFlag21.shopNpcHeading
    stateFlag6 = false
    stateFlag8 = true
    -- Beginner: result below is pedEntity.
    number11 = number11(stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8)
    stateFlag23 = dataCollection
    stateFlag23 = stateFlag23[stateFlag19]
    stateFlag23.shopNpcHandler = number11
    stateFlag23 = SetModelAsNoLongerNeeded
    number16 = stateFlag22
    stateFlag23(number16)
    stateFlag23 = SetEntityAsMissionEntity
    number16 = number11
    hashValue = true
    stateFlag2 = true
    stateFlag23(number16, hashValue, stateFlag2)
    stateFlag23 = SetPedHearingRange
    number16 = number11
    hashValue = 0.0
    stateFlag23(number16, hashValue)
    stateFlag23 = SetPedSeeingRange
    number16 = number11
    hashValue = 0.0
    stateFlag23(number16, hashValue)
    stateFlag23 = SetPedAlertness
    number16 = number11
    hashValue = 0.0
    stateFlag23(number16, hashValue)
    stateFlag23 = SetPedFleeAttributes
    number16 = number11
    hashValue = 0
    stateFlag2 = false
    stateFlag23(number16, hashValue, stateFlag2)
    stateFlag23 = SetBlockingOfNonTemporaryEvents
    number16 = number11
    hashValue = true
    stateFlag23(number16, hashValue)
    stateFlag23 = SetPedCombatAttributes
    number16 = number11
    hashValue = 46
    stateFlag2 = true
    stateFlag23(number16, hashValue, stateFlag2)
    stateFlag23 = SetPedFleeAttributes
    number16 = number11
    hashValue = 0
    stateFlag2 = false
    stateFlag23(number16, hashValue, stateFlag2)
    stateFlag23 = CMG
    stateFlag23 = stateFlag23.loadModel
    number16 = stateFlag21.prop_safe
    stateFlag23 = stateFlag23(number16)
    number16 = CMG
    number16 = number16.loadModel
    hashValue = stateFlag21.prop_door
    number16 = number16(hashValue)
    hashValue = CMG
    hashValue = hashValue.loadModel
    stateFlag2 = stateFlag21.money_prop
    hashValue = hashValue(stateFlag2)
    stateFlag2 = CMG
    stateFlag2 = stateFlag2.loadModel
    hashValue2 = stateFlag21.money_prop2
    stateFlag2 = stateFlag2(hashValue2)
    hashValue2 = CMG
    hashValue2 = hashValue2.loadModel
    hashValue3 = stateFlag21.money_prop3
    hashValue2 = hashValue2(hashValue3)
    hashValue3 = CMG
    hashValue3 = hashValue3.loadModel
    stateFlag6 = stateFlag21.money_prop4
    hashValue3 = hashValue3(stateFlag6)
    stateFlag6 = CreateObject
    stateFlag8 = stateFlag23
    number2 = stateFlag21.safePosition
    number2 = number2.x
    number3 = stateFlag21.safePosition
    number3 = number3.y
    stateFlag9 = stateFlag21.safePosition
    stateFlag9 = stateFlag9.z
    stateFlag9 = stateFlag9 - 0.8
    stateFlag10 = false
    stateFlag11 = false
    stateFlag12 = true
    -- Beginner: result below is objectEntity.
    stateFlag6 = stateFlag6(stateFlag8, number2, number3, stateFlag9, stateFlag10, stateFlag11, stateFlag12)
    stateFlag8 = dataCollection
    stateFlag8 = stateFlag8[stateFlag19]
    stateFlag8.safeHandler = stateFlag6
    stateFlag8 = SetEntityHeading
    number2 = stateFlag6
    number3 = dataCollection
    number3 = number3[stateFlag19]
    number3 = number3.safeHeading
    -- Beginner: Change the direction an entity is facing.
    stateFlag8(number2, number3)
    stateFlag8 = SetEntityInvincible
    number2 = stateFlag6
    number3 = true
    stateFlag8(number2, number3)
    stateFlag8 = FreezeEntityPosition
    number2 = stateFlag6
    number3 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    stateFlag8(number2, number3)
    stateFlag8 = CreateObject
    number2 = number16
    number3 = stateFlag21.safePosition
    number3 = number3.x
    stateFlag9 = stateFlag21.safePosition
    stateFlag9 = stateFlag9.y
    stateFlag10 = stateFlag21.safePosition
    stateFlag10 = stateFlag10.z
    stateFlag10 = stateFlag10 - 0.7
    stateFlag11 = false
    stateFlag12 = false
    stateFlag13 = true
    -- Beginner: result below is objectEntity.
    stateFlag8 = stateFlag8(number2, number3, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13)
    number2 = dataCollection
    number2 = number2[stateFlag19]
    number2.doorHandler = stateFlag8
    number2 = SetEntityHeading
    number3 = stateFlag8
    stateFlag9 = dataCollection
    stateFlag9 = stateFlag9[stateFlag19]
    stateFlag9 = stateFlag9.safeHeading
    -- Beginner: Change the direction an entity is facing.
    number2(number3, stateFlag9)
    number2 = SetEntityInvincible
    number3 = stateFlag8
    stateFlag9 = true
    number2(number3, stateFlag9)
    number2 = FreezeEntityPosition
    number3 = stateFlag8
    stateFlag9 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    number2(number3, stateFlag9)
    number2 = CreateObject
    number3 = hashValue
    stateFlag9 = stateFlag21.moneyPos
    stateFlag9 = stateFlag9.x
    stateFlag10 = stateFlag21.moneyPos
    stateFlag10 = stateFlag10.y
    stateFlag11 = stateFlag21.moneyPos
    stateFlag11 = stateFlag11.z
    stateFlag12 = false
    stateFlag13 = false
    stateFlag14 = true
    -- Beginner: result below is objectEntity.
    number2 = number2(number3, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14)
    number3 = dataCollection
    number3 = number3[stateFlag19]
    number3.moneyHandler = number2
    number3 = SetEntityHeading
    stateFlag9 = number2
    stateFlag10 = dataCollection
    stateFlag10 = stateFlag10[stateFlag19]
    stateFlag10 = stateFlag10.moneyHeading
    -- Beginner: Change the direction an entity is facing.
    number3(stateFlag9, stateFlag10)
    number3 = SetEntityInvincible
    stateFlag9 = number2
    stateFlag10 = true
    number3(stateFlag9, stateFlag10)
    number3 = FreezeEntityPosition
    stateFlag9 = number2
    stateFlag10 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    number3(stateFlag9, stateFlag10)
    number3 = CreateObject
    stateFlag9 = stateFlag2
    stateFlag10 = stateFlag21.moneyPos2
    stateFlag10 = stateFlag10.x
    stateFlag11 = stateFlag21.moneyPos2
    stateFlag11 = stateFlag11.y
    stateFlag12 = stateFlag21.moneyPos2
    stateFlag12 = stateFlag12.z
    stateFlag13 = false
    stateFlag14 = false
    stateFlag15 = true
    -- Beginner: result below is objectEntity.
    number3 = number3(stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15)
    stateFlag9 = dataCollection
    stateFlag9 = stateFlag9[stateFlag19]
    stateFlag9.moneyHandler2 = number3
    stateFlag9 = SetEntityHeading
    stateFlag10 = number3
    stateFlag11 = dataCollection
    stateFlag11 = stateFlag11[stateFlag19]
    stateFlag11 = stateFlag11.moneyHeading2
    -- Beginner: Change the direction an entity is facing.
    stateFlag9(stateFlag10, stateFlag11)
    stateFlag9 = SetEntityInvincible
    stateFlag10 = number3
    stateFlag11 = true
    stateFlag9(stateFlag10, stateFlag11)
    stateFlag9 = FreezeEntityPosition
    stateFlag10 = number3
    stateFlag11 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    stateFlag9(stateFlag10, stateFlag11)
    stateFlag9 = CreateObject
    stateFlag10 = hashValue2
    stateFlag11 = stateFlag21.moneyPos3
    stateFlag11 = stateFlag11.x
    stateFlag12 = stateFlag21.moneyPos3
    stateFlag12 = stateFlag12.y
    stateFlag13 = stateFlag21.moneyPos3
    stateFlag13 = stateFlag13.z
    stateFlag14 = false
    stateFlag15 = false
    stateFlag16 = true
    -- Beginner: result below is objectEntity.
    stateFlag9 = stateFlag9(stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16)
    stateFlag10 = dataCollection
    stateFlag10 = stateFlag10[stateFlag19]
    stateFlag10.moneyHandler3 = stateFlag9
    stateFlag10 = SetEntityHeading
    stateFlag11 = stateFlag9
    stateFlag12 = dataCollection
    stateFlag12 = stateFlag12[stateFlag19]
    stateFlag12 = stateFlag12.moneyHeading3
    -- Beginner: Change the direction an entity is facing.
    stateFlag10(stateFlag11, stateFlag12)
    stateFlag10 = SetEntityInvincible
    stateFlag11 = stateFlag9
    stateFlag12 = true
    stateFlag10(stateFlag11, stateFlag12)
    stateFlag10 = FreezeEntityPosition
    stateFlag11 = stateFlag9
    stateFlag12 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    stateFlag10(stateFlag11, stateFlag12)
    stateFlag10 = CreateObject
    stateFlag11 = hashValue3
    stateFlag12 = stateFlag21.moneyPos4
    stateFlag12 = stateFlag12.x
    stateFlag13 = stateFlag21.moneyPos4
    stateFlag13 = stateFlag13.y
    stateFlag14 = stateFlag21.moneyPos4
    stateFlag14 = stateFlag14.z
    stateFlag15 = false
    stateFlag16 = false
    stateFlag17 = true
    -- Beginner: result below is objectEntity.
    stateFlag10 = stateFlag10(stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17)
    stateFlag11 = dataCollection
    stateFlag11 = stateFlag11[stateFlag19]
    stateFlag11.moneyHandler4 = stateFlag10
    stateFlag11 = SetEntityHeading
    stateFlag12 = stateFlag10
    stateFlag13 = dataCollection
    stateFlag13 = stateFlag13[stateFlag19]
    stateFlag13 = stateFlag13.moneyHeading4
    -- Beginner: Change the direction an entity is facing.
    stateFlag11(stateFlag12, stateFlag13)
    stateFlag11 = SetEntityInvincible
    stateFlag12 = stateFlag10
    stateFlag13 = true
    stateFlag11(stateFlag12, stateFlag13)
    stateFlag11 = FreezeEntityPosition
    stateFlag12 = stateFlag10
    stateFlag13 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    stateFlag11(stateFlag12, stateFlag13)
    stateFlag11 = SetModelAsNoLongerNeeded
    stateFlag12 = stateFlag23
    stateFlag11(stateFlag12)
    stateFlag11 = SetModelAsNoLongerNeeded
    stateFlag12 = number16
    stateFlag11(stateFlag12)
    stateFlag11 = SetModelAsNoLongerNeeded
    stateFlag12 = hashValue
    stateFlag11(stateFlag12)
    stateFlag11 = SetModelAsNoLongerNeeded
    stateFlag12 = stateFlag2
    stateFlag11(stateFlag12)
    stateFlag11 = SetModelAsNoLongerNeeded
    stateFlag12 = hashValue2
    stateFlag11(stateFlag12)
    stateFlag11 = SetModelAsNoLongerNeeded
    stateFlag12 = hashValue3
    stateFlag11(stateFlag12)
  end
  while true do
    localValue1 = GetEntityCoords
    localValue2 = CMG
    localValue2 = localValue2.getPlayerPed
    localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8, number2, number3, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17 = localValue2()
    -- Beginner: result below is entityCoords.
    localValue1 = localValue1(localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8, number2, number3, stateFlag9, stateFlag10, stateFlag11, stateFlag12, stateFlag13, stateFlag14, stateFlag15, stateFlag16, stateFlag17)
    localValue2 = pairs
    localValue3 = dataCollection
    localValue2, localValue3, stateFlag18, stateFlag19 = localValue2(localValue3)
    for stateFlag21, stateFlag22 in localValue2, localValue3, stateFlag18, stateFlag19 do
      number11 = stateFlag22.safePosition
      number11 = localValue1 - number11
      number11 = #number11
      stateFlag22.distanceToPlayer = number11
    end
    localValue2 = Wait
    localValue3 = 250
    localValue2(localValue3)
  end
end
number6(number7)
number6 = true
number7 = 0
number8 = 3000

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
function workingValue2()
  local localValue1, localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue
  localValue1 = number6
  if not localValue1 then
    return
  end
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = pairs
  localValue3 = dataCollection
  localValue2, localValue3, stateFlag18, stateFlag19 = localValue2(localValue3)
  for stateFlag21, stateFlag22 in localValue2, localValue3, stateFlag18, stateFlag19 do
    number11 = stateFlag22.distanceToPlayer
    if number11 < 10.0 then
      number11 = stateFlag22.shopNpcHandler
      if 0 ~= number11 then
        stateFlag23 = IsPlayerFreeAimingAtEntity
        number16 = PlayerId
        -- Beginner: result below is localPlayerIndex.
        number16 = number16()
        hashValue = number11
        stateFlag23 = stateFlag23(number16, hashValue)
        if stateFlag23 then
          stateFlag23 = HasEntityClearLosToEntityInFront
          number16 = localValue1
          hashValue = number11
          stateFlag23 = stateFlag23(number16, hashValue)
          if stateFlag23 then
            stateFlag23 = IsPedDeadOrDying
            number16 = number11
            hashValue = false
            stateFlag23 = stateFlag23(number16, hashValue)
            if not stateFlag23 then
              stateFlag23 = GetEntityCoords
              number16 = localValue1
              -- Beginner: result below is entityCoords.
              stateFlag23 = stateFlag23(number16)
              number16 = GetEntityCoords
              hashValue = number11
              -- Beginner: result below is entityCoords.
              number16 = number16(hashValue)
              stateFlag23 = stateFlag23 - number16
              stateFlag23 = #stateFlag23
              if stateFlag23 <= 5.0 then
                stateFlag23 = stateFlag4
                if not stateFlag23 then
                  stateFlag23 = GetSelectedPedWeapon
                  number16 = CMG
                  number16 = number16.getPlayerPed
                  number16, hashValue = number16()
                  -- Beginner: result below is weaponHash.
                  stateFlag23 = stateFlag23(number16, hashValue)
                  number16 = GetHashKey
                  hashValue = "WEAPON_UNARMED"
                  -- Beginner: result below is hash.
                  number16 = number16(hashValue)
                  if stateFlag23 == number16 then
                    stateFlag23 = GetGameTimer
                    -- Beginner: result below is gameTimeMs.
                    stateFlag23 = stateFlag23()
                    number16 = number7
                    number16 = stateFlag23 - number16
                    hashValue = number8
                    if number16 >= hashValue then
                      number7 = stateFlag23
                      number16 = tCMG
                      number16 = number16.notify
                      hashValue = "~r~You need a weapon in your hands to rob this store!"
                      -- Beginner: Show a notification to the player.
                      number16(hashValue)
                    end
                  else
                    stateFlag23 = TriggerServerEvent
                    number16 = "9feca19ddf"
                    hashValue = stateFlag21
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9feca19ddf".
                    stateFlag23(number16, hashValue)
                    stateFlag23 = false
                    number6 = stateFlag23
                    stateFlag23 = SetTimeout
                    number16 = 40000

                    -- === HELPER FUNCTION: hashValue() ===
                    function hashValue()
                      local coords, cmgOperation
                      coords = true
                      number6 = coords
                    end
                    stateFlag23(number16, hashValue)
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
workingValue3 = _ENV
cmgOperation2 = "CMG"
workingValue3 = workingValue3[cmgOperation2]
cmgOperation2 = "createThreadOnTick"
workingValue3 = workingValue3[cmgOperation2]
cmgOperation2 = workingValue2
eventHandlerRegistration = "Store Robbery"
workingValue3(cmgOperation2, eventHandlerRegistration)
workingValue3 = _ENV
cmgOperation2 = "RegisterNetEvent"
workingValue3 = workingValue3[cmgOperation2]
cmgOperation2 = "95dec7b268"

-- === HELPER FUNCTION: eventHandlerRegistration(localValue1) ===
function eventHandlerRegistration(localValue1)
  local localValue2
  localValue2 = dataCollection
  localValue2 = localValue2[localValue1]
  localValue2.robberyInProgress = true
end
workingValue3(cmgOperation2, eventHandlerRegistration)
workingValue3 = _ENV
cmgOperation2 = "RegisterNetEvent"
workingValue3 = workingValue3[cmgOperation2]
cmgOperation2 = "880648a891"

-- === HELPER FUNCTION: eventHandlerRegistration(localValue1) ===
function eventHandlerRegistration(localValue1)
  local localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6
  localValue2 = dataCollection
  localValue2 = localValue2[localValue1]
  localValue2 = localValue2.shopNpcHandler
  localValue3 = dataCollection
  localValue3 = localValue3[localValue1]
  localValue3 = localValue3.shopNpcPosition
  stateFlag18 = SetEntityCoords
  stateFlag19 = localValue2
  stateFlag21 = localValue3.x
  stateFlag22 = localValue3.y
  number11 = localValue3.z
  stateFlag23 = true
  number16 = false
  hashValue = false
  stateFlag2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  stateFlag18(stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2)
  stateFlag18 = SetEntityHeading
  stateFlag19 = localValue2
  stateFlag21 = dataCollection
  stateFlag21 = stateFlag21[localValue1]
  stateFlag21 = stateFlag21.shopNpcHeading
  -- Beginner: Change the direction an entity is facing.
  stateFlag18(stateFlag19, stateFlag21)
  stateFlag18 = CMG
  stateFlag18 = stateFlag18.loadAnimDict
  stateFlag19 = "mp_am_hold_up"
  -- Beginner: Load a GTA animation dictionary before using it.
  stateFlag18(stateFlag19)
  stateFlag18 = TaskPlayAnim
  stateFlag19 = localValue2
  stateFlag21 = "mp_am_hold_up"
  stateFlag22 = "holdup_victim_20s"
  number11 = 8.0
  stateFlag23 = -8.0
  number16 = -1
  hashValue = 2
  stateFlag2 = 0
  hashValue2 = false
  hashValue3 = false
  stateFlag6 = false
  -- Beginner: Play an animation on a ped.
  stateFlag18(stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6)
end
workingValue3(cmgOperation2, eventHandlerRegistration)
workingValue3 = _ENV
cmgOperation2 = "RegisterNetEvent"
workingValue3 = workingValue3[cmgOperation2]
cmgOperation2 = "0b120db34a"

-- === HELPER FUNCTION: eventHandlerRegistration(localValue1, localValue2) ===
function eventHandlerRegistration(localValue1, localValue2)
  local localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22
  stateFlag4 = localValue1
  localValue3 = GetEntityCoords
  stateFlag18 = CMG
  stateFlag18 = stateFlag18.getPlayerPed
  stateFlag18, stateFlag19, stateFlag21, stateFlag22 = stateFlag18()
  -- Beginner: result below is entityCoords.
  localValue3 = localValue3(stateFlag18, stateFlag19, stateFlag21, stateFlag22)
  while true do
    stateFlag18 = stateFlag4
    if not stateFlag18 then
      break
    end
    stateFlag18 = GetEntityCoords
    stateFlag19 = CMG
    stateFlag19 = stateFlag19.getPlayerPed
    stateFlag19, stateFlag21, stateFlag22 = stateFlag19()
    -- Beginner: result below is entityCoords.
    stateFlag18 = stateFlag18(stateFlag19, stateFlag21, stateFlag22)
    stateFlag19 = localValue3 - stateFlag18
    stateFlag19 = #stateFlag19
    if stateFlag19 > 20 then
      stateFlag19 = TriggerServerEvent
      stateFlag21 = "91fa00b324"
      stateFlag22 = localValue2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "91fa00b324".
      stateFlag19(stateFlag21, stateFlag22)
      stateFlag19 = dataCollection
      stateFlag19 = stateFlag19[localValue2]
      stateFlag19.robberyInProgress = false
      break
    end
    stateFlag19 = Wait
    stateFlag21 = 100
    stateFlag19(stateFlag21)
  end
end
workingValue3(cmgOperation2, eventHandlerRegistration)
workingValue3 = _ENV
cmgOperation2 = "RegisterNetEvent"
workingValue3 = workingValue3[cmgOperation2]
cmgOperation2 = "28bff1b311"

-- === HELPER FUNCTION: eventHandlerRegistration(localValue1) ===
function eventHandlerRegistration(localValue1)
  local localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2
  localValue2 = dataCollection
  localValue2 = localValue2[localValue1]
  localValue2.robberyInProgress = false
  localValue2 = dataCollection
  localValue2 = localValue2[localValue1]
  localValue2 = localValue2.shopNpcHandler
  localValue3 = DoesEntityExist
  stateFlag18 = localValue2
  localValue3 = localValue3(stateFlag18)
  if localValue3 then
    localValue3 = DeleteEntity
    stateFlag18 = localValue2
    -- Beginner: Delete a GTA entity.
    localValue3(stateFlag18)
  end
  localValue3 = CMG
  localValue3 = localValue3.loadModel
  stateFlag18 = dataCollection
  stateFlag18 = stateFlag18[localValue1]
  stateFlag18 = stateFlag18.shopNpcModel
  localValue3 = localValue3(stateFlag18)
  stateFlag18 = CreatePed
  stateFlag19 = 26
  stateFlag21 = localValue3
  stateFlag22 = dataCollection
  stateFlag22 = stateFlag22[localValue1]
  stateFlag22 = stateFlag22.shopNpcPosition
  stateFlag22 = stateFlag22.x
  number11 = dataCollection
  number11 = number11[localValue1]
  number11 = number11.shopNpcPosition
  number11 = number11.y
  stateFlag23 = dataCollection
  stateFlag23 = stateFlag23[localValue1]
  stateFlag23 = stateFlag23.shopNpcPosition
  stateFlag23 = stateFlag23.z
  number16 = dataCollection
  number16 = number16[localValue1]
  number16 = number16.shopNpcHeading
  hashValue = false
  stateFlag2 = true
  -- Beginner: result below is pedEntity.
  stateFlag18 = stateFlag18(stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2)
  stateFlag19 = dataCollection
  stateFlag19 = stateFlag19[localValue1]
  stateFlag19.shopNpcHandler = stateFlag18
  stateFlag19 = SetModelAsNoLongerNeeded
  stateFlag21 = localValue3
  stateFlag19(stateFlag21)
  stateFlag19 = SetEntityAsMissionEntity
  stateFlag21 = stateFlag18
  stateFlag22 = true
  number11 = true
  stateFlag19(stateFlag21, stateFlag22, number11)
  stateFlag19 = SetPedHearingRange
  stateFlag21 = stateFlag18
  stateFlag22 = 0.0
  stateFlag19(stateFlag21, stateFlag22)
  stateFlag19 = SetPedSeeingRange
  stateFlag21 = stateFlag18
  stateFlag22 = 0.0
  stateFlag19(stateFlag21, stateFlag22)
  stateFlag19 = SetPedAlertness
  stateFlag21 = stateFlag18
  stateFlag22 = 0.0
  stateFlag19(stateFlag21, stateFlag22)
  stateFlag19 = SetPedFleeAttributes
  stateFlag21 = stateFlag18
  stateFlag22 = 0
  number11 = false
  stateFlag19(stateFlag21, stateFlag22, number11)
  stateFlag19 = SetBlockingOfNonTemporaryEvents
  stateFlag21 = stateFlag18
  stateFlag22 = true
  stateFlag19(stateFlag21, stateFlag22)
  stateFlag19 = SetPedCombatAttributes
  stateFlag21 = stateFlag18
  stateFlag22 = 46
  number11 = true
  stateFlag19(stateFlag21, stateFlag22, number11)
  stateFlag19 = SetPedFleeAttributes
  stateFlag21 = stateFlag18
  stateFlag22 = 0
  number11 = false
  stateFlag19(stateFlag21, stateFlag22, number11)
end
workingValue3(cmgOperation2, eventHandlerRegistration)
workingValue3 = _ENV
cmgOperation2 = "Citizen"
workingValue3 = workingValue3[cmgOperation2]
cmgOperation2 = "CreateThread"
workingValue3 = workingValue3[cmgOperation2]

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: none) ===
function cmgOperation2()
  local localValue1, localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16
  while true do
    localValue1 = pairs
    localValue2 = dataCollection
    localValue1, localValue2, localValue3, stateFlag18 = localValue1(localValue2)
    for stateFlag19, stateFlag21 in localValue1, localValue2, localValue3, stateFlag18 do
      stateFlag22 = stateFlag21.distanceToPlayer
      if stateFlag22 < 2.0 then
        stateFlag22 = text2
        if "complete" == stateFlag22 then
          stateFlag22 = dataCollection2
          number11 = "Press ~INPUT_CONTEXT~ to grab the money!"
          stateFlag22(number11)
          stateFlag22 = IsControlJustReleased
          number11 = 1
          stateFlag23 = 51
          stateFlag22 = stateFlag22(number11, stateFlag23)
          if stateFlag22 then
            stateFlag22 = DeleteObject
            number11 = stateFlag21.moneyHandler
            stateFlag22(number11)
            stateFlag22 = DeleteObject
            number11 = stateFlag21.moneyHandler2
            stateFlag22(number11)
            stateFlag22 = DeleteObject
            number11 = stateFlag21.moneyHandler3
            stateFlag22(number11)
            stateFlag22 = DeleteObject
            number11 = stateFlag21.moneyHandler4
            stateFlag22(number11)
            stateFlag22 = TriggerServerEvent
            number11 = "35457da4c0"
            stateFlag23 = stateFlag19
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "35457da4c0".
            stateFlag22(number11, stateFlag23)
            stateFlag22 = dataCollection
            stateFlag22 = stateFlag22[stateFlag19]
            stateFlag22.robberyInProgress = false
            stateFlag22 = "setup"
            text2 = stateFlag22
            stateFlag22 = Wait
            number11 = 5000
            stateFlag22(number11)
            stateFlag22 = TriggerServerEvent
            number11 = "1203341535"
            stateFlag23 = stateFlag19
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1203341535".
            stateFlag22(number11, stateFlag23)
            stateFlag22 = CMG
            stateFlag22 = stateFlag22.setPlayerCombatTimer
            number11 = 60
            stateFlag23 = false
            stateFlag22(number11, stateFlag23)
          end
        else
          stateFlag22 = stateFlag21.robberyInProgress
          if stateFlag22 then
            stateFlag22 = dataCollection2
            number11 = "Press ~INPUT_CONTEXT~ to start cracking the safe!"
            stateFlag22(number11)
            stateFlag22 = IsControlJustReleased
            number11 = 1
            stateFlag23 = 51
            stateFlag22 = stateFlag22(number11, stateFlag23)
            if stateFlag22 then
              stateFlag22 = tCMG
              stateFlag22 = stateFlag22.notify
              number11 = "~g~Started cracking safe.."
              -- Beginner: Show a notification to the player.
              stateFlag22(number11)
              stateFlag22 = LoadResources
              stateFlag22()
              stateFlag22 = math
              stateFlag22 = stateFlag22.randomseed
              number11 = GetGameTimer
              number11, stateFlag23, number16 = number11()
              stateFlag22(number11, stateFlag23, number16)
              stateFlag22 = math
              stateFlag22 = stateFlag22.random
              number11 = 0
              stateFlag23 = 100
              stateFlag22 = stateFlag22(number11, stateFlag23)
              number11 = 3.6 * stateFlag22
              workingValue7 = number11
              number11 = text
              text7 = number11
              number11 = true
              stateFlag5 = number11
              number11 = "setup"
              text2 = number11
              number11 = RunMiniGame
              stateFlag23 = stateFlag19
              number16 = stateFlag21.safeHandler
              number11(stateFlag23, number16)
              number11 = CMG
              number11 = number11.setPlayerCombatTimer
              stateFlag23 = 60
              number16 = false
              number11(stateFlag23, number16)
            end
          end
        end
      end
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
workingValue3(cmgOperation2)

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: none) ===
function workingValue3()
  local localValue1, localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue
  localValue1 = RequestScaleformMovie
  localValue2 = "instructional_buttons"
  -- Beginner: result below is scaleformHandle.
  localValue1 = localValue1(localValue2)
  localValue2 = HasScaleformMovieLoaded
  localValue3 = localValue1
  localValue2 = localValue2(localValue3)
  if not localValue2 then
    while true do
      localValue2 = HasScaleformMovieLoaded
      localValue3 = localValue1
      localValue2 = localValue2(localValue3)
      if localValue2 then
        break
      end
      localValue2 = Wait
      localValue3 = 0
      localValue2(localValue3)
    end
  end
  localValue2 = {}
  localValue3 = {}
  localValue3.label = "Attempt combination"
  localValue3.button = "~INPUT_CELLPHONE_UP~"
  stateFlag18 = {}
  stateFlag18.label = "Turn combination right"
  stateFlag18.button = "~INPUT_CELLPHONE_RIGHT~"
  stateFlag19 = {}
  stateFlag19.label = "Turn combination left"
  stateFlag19.button = "~INPUT_CELLPHONE_LEFT~"
  stateFlag21 = {}
  stateFlag21.label = "Cancel"
  stateFlag21.button = "~INPUT_CELLPHONE_CANCEL~"
  localValue2[1] = localValue3
  localValue2[2] = stateFlag18
  localValue2[3] = stateFlag19
  localValue2[4] = stateFlag21
  localValue3 = BeginScaleformMovieMethod
  stateFlag18 = localValue1
  stateFlag19 = "CLEAR_ALL"
  localValue3(stateFlag18, stateFlag19)
  localValue3 = BeginScaleformMovieMethod
  stateFlag18 = localValue1
  stateFlag19 = "TOGGLE_MOUSE_BUTTONS"
  localValue3(stateFlag18, stateFlag19)
  localValue3 = ScaleformMovieMethodAddParamBool
  stateFlag18 = false
  localValue3(stateFlag18)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = ipairs
  stateFlag18 = localValue2
  localValue3, stateFlag18, stateFlag19, stateFlag21 = localValue3(stateFlag18)
  for stateFlag22, number11 in localValue3, stateFlag18, stateFlag19, stateFlag21 do
    stateFlag23 = BeginScaleformMovieMethod
    number16 = localValue1
    hashValue = "SET_DATA_SLOT"
    stateFlag23(number16, hashValue)
    stateFlag23 = ScaleformMovieMethodAddParamInt
    number16 = stateFlag22 - 1
    stateFlag23(number16)
    stateFlag23 = _ENV
    number16 = "ScaleformMovieMethodAddParamPlayerNameString"
    stateFlag23 = stateFlag23[number16]
    number16 = number11.button
    stateFlag23(number16)
    stateFlag23 = _ENV
    number16 = "ScaleformMovieMethodAddParamTextureNameString"
    stateFlag23 = stateFlag23[number16]
    number16 = number11.label
    stateFlag23(number16)
    stateFlag23 = EndScaleformMovieMethod
    stateFlag23()
  end
  localValue3 = BeginScaleformMovieMethod
  stateFlag18 = localValue1
  stateFlag19 = "DRAW_INSTRUCTIONAL_BUTTONS"
  localValue3(stateFlag18, stateFlag19)
  localValue3 = ScaleformMovieMethodAddParamInt
  stateFlag18 = -1
  localValue3(stateFlag18)
  localValue3 = EndScaleformMovieMethod
  localValue3()
  localValue3 = DrawScaleformMovieFullscreen
  stateFlag18 = localValue1
  stateFlag19 = 255
  stateFlag21 = 255
  stateFlag22 = 255
  number11 = 255
  stateFlag23 = 0
  localValue3(stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23)
end
cmgOperation2 = _ENV
eventHandlerRegistration = "AddEventHandler"
cmgOperation2 = cmgOperation2[eventHandlerRegistration]
eventHandlerRegistration = "onResourceStop"

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23
  localValue2 = GetCurrentResourceName
  localValue2 = localValue2()
  if localValue1 == localValue2 then
    localValue2 = pairs
    localValue3 = dataCollection
    localValue2, localValue3, stateFlag18, stateFlag19 = localValue2(localValue3)
    for stateFlag21, stateFlag22 in localValue2, localValue3, stateFlag18, stateFlag19 do
      number11 = DeleteObject
      stateFlag23 = stateFlag22.safeHandler
      number11(stateFlag23)
      number11 = DeleteObject
      stateFlag23 = stateFlag22.doorHandler
      number11(stateFlag23)
      number11 = DeleteObject
      stateFlag23 = stateFlag22.moneyHandler
      number11(stateFlag23)
      number11 = DeleteObject
      stateFlag23 = stateFlag22.moneyHandler2
      number11(stateFlag23)
      number11 = DeleteObject
      stateFlag23 = stateFlag22.moneyHandler3
      number11(stateFlag23)
      number11 = DeleteObject
      stateFlag23 = stateFlag22.moneyHandler4
      number11(stateFlag23)
    end
  end
end
cmgOperation2(eventHandlerRegistration, text4)

-- === HELPER FUNCTION (decompiler name: cmgOperation2; parameters: localValue1) ===
function cmgOperation2(localValue1)
  local localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23
  localValue2 = {}
  localValue3 = math
  localValue3 = localValue3.randomseed
  stateFlag18 = GetGameTimer
  stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23 = stateFlag18()
  localValue3(stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23)
  localValue3 = 1
  stateFlag18 = localValue1
  stateFlag19 = 1
  for stateFlag21 = localValue3, stateFlag18, stateFlag19 do
    stateFlag22 = math
    stateFlag22 = stateFlag22.random
    number11 = 1
    stateFlag23 = 99
    stateFlag22 = stateFlag22(number11, stateFlag23)
    localValue2[stateFlag21] = stateFlag22
  end
  return localValue2
end
eventHandlerRegistration = _ENV
text4 = "RunMiniGame"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2) ===
function workingValue4(localValue1, localValue2)
  local localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2
  localValue3 = 1
  stateFlag18 = cmgOperation2
  stateFlag19 = 10
  stateFlag18 = stateFlag18(stateFlag19)
  stateFlag19 = InitSafeLocks
  stateFlag21 = stateFlag18
  stateFlag19 = stateFlag19(stateFlag21)
  while true do
    stateFlag21 = stateFlag5
    if not stateFlag21 then
      break
    end
    stateFlag21 = text2
    if "setup" == stateFlag21 then
      stateFlag21 = GetEntityHeading
      stateFlag22 = localValue2
      -- Beginner: result below is heading.
      stateFlag21 = stateFlag21(stateFlag22)
      workingValue6 = stateFlag21
      stateFlag21 = GetSafeDoorAnimOffsetPosition
      stateFlag22 = GetEntityCoords
      number11 = localValue2
      -- Beginner: result below is entityCoords.
      stateFlag22 = stateFlag22(number11)
      number11 = workingValue6
      stateFlag23 = "intro_dont_work"
      stateFlag21 = stateFlag21(stateFlag22, number11, stateFlag23)
      workingValue5 = stateFlag21
      stateFlag21 = PlaySafeCrackIntroAnim
      stateFlag22 = workingValue5
      number11 = workingValue6
      stateFlag21(stateFlag22, number11)
      stateFlag21 = GetSafeDoorAnimOffsetPosition
      stateFlag22 = GetEntityCoords
      number11 = localValue2
      -- Beginner: result below is entityCoords.
      stateFlag22 = stateFlag22(number11)
      number11 = workingValue6
      stateFlag23 = "cracking"
      stateFlag21 = stateFlag21(stateFlag22, number11, stateFlag23)
      workingValue5 = stateFlag21
    else
      stateFlag21 = text2
      if "cracking" == stateFlag21 then
        stateFlag21 = workingValue3
        stateFlag21()
        stateFlag21 = GetEntityHealth
        stateFlag22 = CMG
        stateFlag22 = stateFlag22.getPlayerPed
        stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2 = stateFlag22()
        -- Beginner: result below is health.
        stateFlag21 = stateFlag21(stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2)
        if not (stateFlag21 <= 102) then
          stateFlag22 = CMG
          stateFlag22 = stateFlag22.isHandcuffed
          stateFlag22 = stateFlag22()
          if not stateFlag22 then
            goto continueAtStep59
          end
        end
        stateFlag22 = false
        stateFlag5 = stateFlag22
        goto continueAtStep155
        ::continueAtStep59::
        stateFlag22 = HandleSafeDialMovement
        stateFlag22()
        stateFlag22 = GetCurrentSafeDialNumber
        number11 = workingValue7
        stateFlag22 = stateFlag22(number11)
        number11 = IsControlJustPressed
        stateFlag23 = 0
        number16 = 172
        number11 = number11(stateFlag23, number16)
        if number11 then
          number11 = stateFlag18[localValue3]
          if stateFlag22 == number11 then
            stateFlag19[localValue3] = false
            localValue3 = localValue3 + 1
            number11 = ReleaseCurrentPin
            stateFlag23 = stateFlag19
            number16 = localValue3
            number11(stateFlag23, number16)
            number11 = IsSafeUnlocked
            stateFlag23 = stateFlag19
            number16 = localValue3
            number11 = number11(stateFlag23, number16)
            if number11 then
              number11 = EndMiniGame
              stateFlag23 = localValue1
              number11(stateFlag23)
              number11 = "complete"
              text2 = number11
              number11 = false
              stateFlag5 = number11
              number11 = ClearPedTasksImmediately
              stateFlag23 = CMG
              stateFlag23 = stateFlag23.getPlayerPed
              stateFlag23, number16, hashValue, stateFlag2 = stateFlag23()
              number11(stateFlag23, number16, hashValue, stateFlag2)
            end
          else
            localValue3 = 1
            number11 = InitSafeLocks
            stateFlag23 = stateFlag18
            number11 = number11(stateFlag23)
            stateFlag19 = number11
            number11 = cmgOperation2
            stateFlag23 = 10
            number11 = number11(stateFlag23)
            stateFlag18 = number11
            number11 = PlaySoundFrontend
            stateFlag23 = -1
            number16 = "TUMBLER_RESET"
            hashValue = "SAFE_CRACK_SOUNDSET"
            stateFlag2 = true
            number11(stateFlag23, number16, hashValue, stateFlag2)
            number11 = HandleIncorrectMovement
            number11()
            number11 = "idle"
            text3 = number11
            number11 = text
            text7 = number11
            number11 = Wait
            stateFlag23 = 3500
            number11(stateFlag23)
            number11 = ClearPedTasksImmediately
            stateFlag23 = CMG
            stateFlag23 = stateFlag23.getPlayerPed
            stateFlag23, number16, hashValue, stateFlag2 = stateFlag23()
            number11(stateFlag23, number16, hashValue, stateFlag2)
          end
        else
          number11 = IsControlJustPressed
          stateFlag23 = 0
          number16 = 177
          number11 = number11(stateFlag23, number16)
          if number11 then
            number11 = false
            stateFlag5 = number11
            number11 = ClearPedTasksImmediately
            stateFlag23 = CMG
            stateFlag23 = stateFlag23.getPlayerPed
            stateFlag23, number16, hashValue, stateFlag2 = stateFlag23()
            number11(stateFlag23, number16, hashValue, stateFlag2)
          end
        end
        number11 = text2
        if "complete" ~= number11 then
          number11 = GetDialProximityToTargetPin
          stateFlag23 = stateFlag22
          number16 = stateFlag18
          hashValue = localValue3
          number11 = number11(stateFlag23, number16, hashValue)
          stateFlag23 = SetDialSpriteShake
          number16 = number11
          stateFlag23(number16)
          stateFlag23 = DrawSprites
          stateFlag23()
        end
      end
    end
    ::continueAtStep155::
    stateFlag21 = Wait
    stateFlag22 = 0
    stateFlag21(stateFlag22)
  end
  stateFlag21 = RemoveAnimDict
  stateFlag22 = "mini@safe_cracking"
  stateFlag21(stateFlag22)
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "GetSafeDoorAnimOffsetPosition"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2, localValue3) ===
function workingValue4(localValue1, localValue2, localValue3)
  local stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3
  stateFlag18 = nil
  stateFlag19 = nil
  stateFlag21 = nil
  stateFlag22 = nil
  if "intro" == localValue3 then
    stateFlag18 = 0.8
    stateFlag19 = -0.35
    stateFlag21 = -0.35
    stateFlag22 = -0.8
  else
    stateFlag18 = 0.53
    stateFlag19 = -0.6
    stateFlag21 = -0.6
    stateFlag22 = -0.53
  end
  number11 = math
  number11 = number11.sin
  stateFlag23 = math
  stateFlag23 = stateFlag23.pi
  stateFlag23 = localValue2 * stateFlag23
  stateFlag23 = stateFlag23 / 180
  number11 = number11(stateFlag23)
  number11 = stateFlag18 * number11
  stateFlag23 = math
  stateFlag23 = stateFlag23.cos
  number16 = math
  number16 = number16.pi
  number16 = localValue2 * number16
  number16 = number16 / 180
  stateFlag23 = stateFlag23(number16)
  stateFlag23 = stateFlag19 * stateFlag23
  number11 = number11 + stateFlag23
  stateFlag23 = math
  stateFlag23 = stateFlag23.sin
  number16 = math
  number16 = number16.pi
  number16 = localValue2 * number16
  number16 = number16 / 180
  stateFlag23 = stateFlag23(number16)
  stateFlag23 = stateFlag21 * stateFlag23
  number16 = math
  number16 = number16.cos
  hashValue = math
  hashValue = hashValue.pi
  hashValue = localValue2 * hashValue
  hashValue = hashValue / 180
  number16 = number16(hashValue)
  number16 = stateFlag22 * number16
  stateFlag23 = stateFlag23 + number16
  number16 = vector3
  hashValue = localValue1.x
  hashValue = hashValue + number11
  stateFlag2 = localValue1.y
  stateFlag2 = stateFlag2 + stateFlag23
  hashValue2 = GetEntityCoords
  hashValue3 = CMG
  hashValue3 = hashValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  hashValue3 = hashValue3()
  -- Beginner: result below is entityCoords.
  hashValue2 = hashValue2(hashValue3)
  hashValue2 = hashValue2.z
  return number16(hashValue, stateFlag2, hashValue2)
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "PlaySafeCrackIntroAnim"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2) ===
function workingValue4(localValue1, localValue2)
  local localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8, number2, number3, stateFlag9, stateFlag10, stateFlag11
  localValue3 = "mini@safe_cracking"
  stateFlag18 = "step_into"
  stateFlag19 = CMG
  stateFlag19 = stateFlag19.loadAnimDict
  stateFlag21 = localValue3
  -- Beginner: Load a GTA animation dictionary before using it.
  stateFlag19(stateFlag21)
  stateFlag19 = TaskPlayAnimAdvanced
  stateFlag21 = CMG
  stateFlag21 = stateFlag21.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stateFlag21 = stateFlag21()
  stateFlag22 = localValue3
  number11 = stateFlag18
  stateFlag23 = localValue1.x
  number16 = localValue1.y
  hashValue = localValue1.z
  stateFlag2 = 0.0
  hashValue2 = 0.0
  hashValue3 = localValue2
  stateFlag6 = 8.0
  stateFlag8 = 8.0
  number2 = -1
  number3 = 2
  stateFlag9 = 0.7
  stateFlag10 = 0
  stateFlag11 = 0
  stateFlag19(stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8, number2, number3, stateFlag9, stateFlag10, stateFlag11)
  stateFlag19 = RemoveAnimDict
  stateFlag21 = localValue3
  stateFlag19(stateFlag21)
  stateFlag19 = Wait
  stateFlag21 = 0
  stateFlag19(stateFlag21)
  stateFlag19 = Wait
  stateFlag21 = 1000
  stateFlag19(stateFlag21)
  stateFlag19 = "cracking"
  text2 = stateFlag19
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "HandleSafeDialMovement"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8, number2, number3, stateFlag9, stateFlag10
  localValue1 = CMG
  localValue1 = localValue1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  localValue1 = localValue1()
  localValue2 = "mini@safe_cracking"
  localValue3 = ""
  stateFlag18 = IsEntityPlayingAnim
  stateFlag19 = localValue1
  stateFlag21 = localValue2
  stateFlag22 = "dial_turn_fail_3"
  number11 = 3
  stateFlag18 = stateFlag18(stateFlag19, stateFlag21, stateFlag22, number11)
  if not stateFlag18 then
    stateFlag18 = IsEntityPlayingAnim
    stateFlag19 = localValue1
    stateFlag21 = localValue2
    stateFlag22 = "dial_turn_fail_4"
    number11 = 3
    stateFlag18 = stateFlag18(stateFlag19, stateFlag21, stateFlag22, number11)
    if not stateFlag18 then
      goto continueAtStep23
    end
  end
  return
  ::continueAtStep23::
  stateFlag18 = IsControlJustPressed
  stateFlag19 = 0
  stateFlag21 = 174
  stateFlag18 = stateFlag18(stateFlag19, stateFlag21)
  if stateFlag18 then
    stateFlag18 = 100
    number13 = stateFlag18
    stateFlag18 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    stateFlag18 = stateFlag18()
    gameTime = stateFlag18
    localValue3 = "dial_turn_anti_normal"
    stateFlag18 = RotateSafeDial
    stateFlag19 = "rotation.anticlockwise"
    stateFlag18(stateFlag19)
  else
    stateFlag18 = IsControlJustPressed
    stateFlag19 = 0
    stateFlag21 = 175
    stateFlag18 = stateFlag18(stateFlag19, stateFlag21)
    if stateFlag18 then
      stateFlag18 = 100
      number13 = stateFlag18
      stateFlag18 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      stateFlag18 = stateFlag18()
      gameTime = stateFlag18
      localValue3 = "dial_turn_clock_normal"
      stateFlag18 = RotateSafeDial
      stateFlag19 = "rotation.clockwise"
      stateFlag18(stateFlag19)
    else
      stateFlag18 = IsControlPressed
      stateFlag19 = 0
      stateFlag21 = 174
      stateFlag18 = stateFlag18(stateFlag19, stateFlag21)
      if stateFlag18 then
        stateFlag18 = gameTime
        stateFlag19 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        stateFlag19 = stateFlag19()
        stateFlag21 = number13
        stateFlag19 = stateFlag19 - stateFlag21
        if stateFlag18 >= stateFlag19 then
          return
        end
        stateFlag18 = 10
        number13 = stateFlag18
        stateFlag18 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        stateFlag18 = stateFlag18()
        gameTime = stateFlag18
        localValue3 = "dial_turn_anti_fast"
        stateFlag18 = RotateSafeDial
        stateFlag19 = "rotation.anticlockwise"
        stateFlag18(stateFlag19)
      else
        stateFlag18 = IsControlPressed
        stateFlag19 = 0
        stateFlag21 = 175
        stateFlag18 = stateFlag18(stateFlag19, stateFlag21)
        if stateFlag18 then
          stateFlag18 = gameTime
          stateFlag19 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          stateFlag19 = stateFlag19()
          stateFlag21 = number13
          stateFlag19 = stateFlag19 - stateFlag21
          if stateFlag18 >= stateFlag19 then
            return
          end
          stateFlag18 = 10
          number13 = stateFlag18
          stateFlag18 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          stateFlag18 = stateFlag18()
          gameTime = stateFlag18
          localValue3 = "dial_turn_clock_fast"
          stateFlag18 = RotateSafeDial
          stateFlag19 = "rotation.clockwise"
          stateFlag18(stateFlag19)
        else
          stateFlag18 = "rotation.idle"
          text3 = stateFlag18
          stateFlag18 = IsEntityPlayingAnim
          stateFlag19 = localValue1
          stateFlag21 = localValue2
          stateFlag22 = "dial_turn_anti_normal"
          number11 = 3
          stateFlag18 = stateFlag18(stateFlag19, stateFlag21, stateFlag22, number11)
          if not stateFlag18 then
            stateFlag18 = IsEntityPlayingAnim
            stateFlag19 = localValue1
            stateFlag21 = localValue2
            stateFlag22 = "dial_turn_clock_normal"
            number11 = 3
            stateFlag18 = stateFlag18(stateFlag19, stateFlag21, stateFlag22, number11)
            if not stateFlag18 then
              stateFlag18 = IsEntityPlayingAnim
              stateFlag19 = localValue1
              stateFlag21 = localValue2
              stateFlag22 = "dial_turn_anti_fast"
              number11 = 3
              stateFlag18 = stateFlag18(stateFlag19, stateFlag21, stateFlag22, number11)
              if not stateFlag18 then
                stateFlag18 = IsEntityPlayingAnim
                stateFlag19 = localValue1
                stateFlag21 = localValue2
                stateFlag22 = "dial_turn_clock_fast"
                number11 = 3
                stateFlag18 = stateFlag18(stateFlag19, stateFlag21, stateFlag22, number11)
                if not stateFlag18 then
                  stateFlag18 = IsEntityPlayingAnim
                  stateFlag19 = localValue1
                  stateFlag21 = localValue2
                  stateFlag22 = "idle_base"
                  number11 = 3
                  stateFlag18 = stateFlag18(stateFlag19, stateFlag21, stateFlag22, number11)
                  if not stateFlag18 then
                    stateFlag18 = IsEntityPlayingAnim
                    stateFlag19 = localValue1
                    stateFlag21 = localValue2
                    stateFlag22 = "idle_heavy_breathe"
                    number11 = 3
                    stateFlag18 = stateFlag18(stateFlag19, stateFlag21, stateFlag22, number11)
                    if not stateFlag18 then
                      stateFlag18 = IsEntityPlayingAnim
                      stateFlag19 = localValue1
                      stateFlag21 = localValue2
                      stateFlag22 = "idle_look_around"
                      number11 = 3
                      stateFlag18 = stateFlag18(stateFlag19, stateFlag21, stateFlag22, number11)
                      if not stateFlag18 then
                        goto continueAtStep164
                      end
                    end
                  end
                end
              end
            end
          end
          return
          ::continueAtStep164::
          stateFlag18 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          stateFlag18 = stateFlag18()
          stateFlag18 = stateFlag18 % 3
          stateFlag19 = nil
          if 2 == stateFlag18 then
            stateFlag19 = "idle_heavy_breathe"
          elseif 1 == stateFlag18 then
            stateFlag19 = "idle_look_around"
          else
            stateFlag19 = "idle_base"
          end
          localValue3 = stateFlag19
        end
      end
    end
  end
  if "" == localValue3 or nil == localValue3 then
    return
  end
  stateFlag18 = CMG
  stateFlag18 = stateFlag18.loadAnimDict
  stateFlag19 = localValue2
  -- Beginner: Load a GTA animation dictionary before using it.
  stateFlag18(stateFlag19)
  stateFlag18 = IsEntityPlayingAnim
  stateFlag19 = CMG
  stateFlag19 = stateFlag19.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stateFlag19 = stateFlag19()
  stateFlag21 = localValue2
  stateFlag22 = localValue3
  number11 = 3
  stateFlag18 = stateFlag18(stateFlag19, stateFlag21, stateFlag22, number11)
  if not stateFlag18 then
    stateFlag18 = TaskPlayAnimAdvanced
    stateFlag19 = CMG
    stateFlag19 = stateFlag19.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    stateFlag19 = stateFlag19()
    stateFlag21 = localValue2
    stateFlag22 = localValue3
    number11 = workingValue5.x
    stateFlag23 = workingValue5.y
    number16 = workingValue5.z
    hashValue = 0.0
    stateFlag2 = 0.0
    hashValue2 = workingValue6
    hashValue3 = 8.0
    stateFlag6 = 8.0
    stateFlag8 = -1
    number2 = 1
    number3 = 1.0
    stateFlag9 = 0
    stateFlag10 = 0
    stateFlag18(stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8, number2, number3, stateFlag9, stateFlag10)
  end
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "HandleIncorrectMovement"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8, number2, number3, stateFlag9
  localValue1 = "mini@safe_cracking"
  localValue2 = ""
  localValue3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue3 = localValue3()
  localValue3 = localValue3 % 2
  if 0 == localValue3 then
    localValue2 = "dial_turn_fail_3"
  else
    localValue2 = "dial_turn_fail_4"
  end
  localValue3 = CMG
  localValue3 = localValue3.loadAnimDict
  stateFlag18 = localValue1
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue3(stateFlag18)
  localValue3 = TaskPlayAnimAdvanced
  stateFlag18 = CMG
  stateFlag18 = stateFlag18.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stateFlag18 = stateFlag18()
  stateFlag19 = localValue1
  stateFlag21 = localValue2
  stateFlag22 = workingValue5.x
  number11 = workingValue5.y
  stateFlag23 = workingValue5.z
  number16 = 0.0
  hashValue = 0.0
  stateFlag2 = workingValue6
  hashValue2 = 8.0
  hashValue3 = 8.0
  stateFlag6 = -1
  stateFlag8 = 1
  number2 = 1.0
  number3 = 0
  stateFlag9 = 0
  localValue3(stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8, number2, number3, stateFlag9)
  localValue3 = RemoveAnimDict
  stateFlag18 = localValue1
  localValue3(stateFlag18)
  localValue3 = "rotation.idle"
  text3 = localValue3
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "ReleaseCurrentPin"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2) ===
function workingValue4(localValue1, localValue2)
  local localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22
  localValue3 = text7
  if "rotation.anticlockwise" == localValue3 then
    localValue3 = "rotation.clockwise"
    text7 = localValue3
  else
    localValue3 = "rotation.anticlockwise"
    text7 = localValue3
  end
  localValue3 = IsSafeUnlocked
  stateFlag18 = localValue1
  stateFlag19 = localValue2
  localValue3 = localValue3(stateFlag18, stateFlag19)
  if localValue3 then
    localValue3 = PlaySoundFrontend
    stateFlag18 = -1
    stateFlag19 = "TUMBLER_PIN_FALL_FINAL"
    stateFlag21 = "SAFE_CRACK_SOUNDSET"
    stateFlag22 = true
    localValue3(stateFlag18, stateFlag19, stateFlag21, stateFlag22)
  else
    localValue3 = PlaySoundFrontend
    stateFlag18 = -1
    stateFlag19 = "TUMBLER_PIN_FALL"
    stateFlag21 = "SAFE_CRACK_SOUNDSET"
    stateFlag22 = true
    localValue3(stateFlag18, stateFlag19, stateFlag21, stateFlag22)
  end
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "DrawSprites"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3
  localValue1 = "MPSafeCracking"
  localValue2 = GetAspectRatio
  localValue3 = true
  localValue2 = localValue2(localValue3)
  localValue3 = DrawSprite
  stateFlag18 = localValue1
  stateFlag19 = "Dial_BG"
  stateFlag21 = number15
  stateFlag22 = number
  number11 = 0.3
  stateFlag23 = localValue2 * 0.3
  number16 = 0
  hashValue = 255
  stateFlag2 = 255
  hashValue2 = 255
  hashValue3 = 255
  localValue3(stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3)
  localValue3 = DrawSprite
  stateFlag18 = localValue1
  stateFlag19 = "Dial"
  stateFlag21 = number15
  stateFlag22 = number
  number11 = 0.15
  stateFlag23 = localValue2 * 0.3
  stateFlag23 = stateFlag23 * 0.5
  number16 = workingValue7
  hashValue = 255
  stateFlag2 = 255
  hashValue2 = 255
  hashValue3 = 255
  localValue3(stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3)
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "IsSafeUnlocked"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2) ===
function workingValue4(localValue1, localValue2)
  local localValue3
  localValue3 = localValue1[localValue2]
  localValue3 = nil == localValue3
  return localValue3
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "CloseSafeDoor"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2) ===
function workingValue4(localValue1, localValue2)
  local localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16
  localValue3 = CMG
  localValue3 = localValue3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  localValue3 = localValue3()
  localValue3 = localValue3 - localValue2
  localValue3 = #localValue3
  if localValue3 < 15.0 then
    localValue3 = PlaySoundFrontend
    stateFlag18 = -1
    stateFlag19 = "SAFE_DOOR_CLOSE"
    stateFlag21 = "SAFE_CRACK_SOUNDSET"
    stateFlag22 = true
    localValue3(stateFlag18, stateFlag19, stateFlag21, stateFlag22)
  end
  localValue3 = 0
  stateFlag18 = 90
  stateFlag19 = 1
  for stateFlag21 = localValue3, stateFlag18, stateFlag19 do
    stateFlag22 = GetEntityHeading
    number11 = localValue1
    -- Beginner: result below is heading.
    stateFlag22 = stateFlag22(number11)
    number11 = SetEntityHeading
    stateFlag23 = localValue1
    number16 = stateFlag22 - 1.0
    -- Beginner: Change the direction an entity is facing.
    number11(stateFlag23, number16)
    number11 = Wait
    stateFlag23 = 16
    number11(stateFlag23)
  end
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "OpenSafeDoor"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2) ===
function workingValue4(localValue1, localValue2)
  local localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue
  localValue3 = 500
  stateFlag18 = Wait
  stateFlag19 = localValue3
  stateFlag18(stateFlag19)
  stateFlag18 = CMG
  stateFlag18 = stateFlag18.getPlayerCoords
  -- Beginner: result below is playerCoords.
  stateFlag18 = stateFlag18()
  stateFlag18 = stateFlag18 - localValue2
  stateFlag18 = #stateFlag18
  if stateFlag18 < 15.0 then
    stateFlag18 = PlaySoundFrontend
    stateFlag19 = -1
    stateFlag21 = "SAFE_DOOR_OPEN"
    stateFlag22 = "SAFE_CRACK_SOUNDSET"
    number11 = true
    stateFlag18(stateFlag19, stateFlag21, stateFlag22, number11)
  end
  stateFlag18 = 0
  stateFlag19 = 90
  stateFlag21 = 1
  for stateFlag22 = stateFlag18, stateFlag19, stateFlag21 do
    number11 = GetEntityHeading
    stateFlag23 = localValue1
    -- Beginner: result below is heading.
    number11 = number11(stateFlag23)
    stateFlag23 = SetEntityHeading
    number16 = localValue1
    hashValue = number11 + 1.0
    -- Beginner: Change the direction an entity is facing.
    stateFlag23(number16, hashValue)
    stateFlag23 = Wait
    number16 = 16
    stateFlag23(number16)
  end
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "RelockSafe"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2
  localValue1 = InitSafeLocks
  localValue1()
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "GetCurrentSafeDialNumber"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, stateFlag18
  localValue2 = math
  localValue2 = localValue2.round
  localValue3 = localValue1 / 360
  localValue3 = 100 * localValue3
  stateFlag18 = 1
  localValue2 = localValue2(localValue3, stateFlag18)
  localValue3 = math
  localValue3 = localValue3.abs
  stateFlag18 = localValue2
  localValue3 = localValue3(stateFlag18)
  localValue2 = localValue3
  if localValue2 > 100 then
    localValue3 = 200
    if localValue2 < localValue3 then
      localValue2 = localValue2 - 100
  end
  else
    localValue3 = 200
    if localValue2 >= localValue3 then
      localValue3 = 300
      if localValue2 < localValue3 then
        localValue2 = localValue2 - 200
    end
    else
      localValue3 = 300
      if localValue2 >= localValue3 then
        localValue3 = 400
        if localValue2 < localValue3 then
          localValue2 = localValue2 - 300
      end
      else
        localValue3 = 400
        if localValue2 >= localValue3 then
          localValue3 = 500
          if localValue2 < localValue3 then
            localValue2 = localValue2 - 400
        end
        else
          localValue3 = 500
          if localValue2 >= localValue3 then
            localValue3 = 600
            if localValue2 < localValue3 then
              localValue2 = localValue2 - 500
          end
          else
            localValue3 = 600
            if localValue2 >= localValue3 then
              localValue3 = 700
              if localValue2 < localValue3 then
                localValue2 = localValue2 - 600
            end
            else
              localValue3 = 700
              if localValue2 >= localValue3 then
                localValue3 = 800
                if localValue2 < localValue3 then
                  localValue2 = localValue2 - 700
              end
              else
                localValue3 = 800
                if localValue2 >= localValue3 then
                  localValue3 = 900
                  if localValue2 < localValue3 then
                    localValue2 = localValue2 - 800
                end
                else
                  localValue3 = 900
                  if localValue2 >= localValue3 then
                    localValue3 = 1000
                    if localValue2 < localValue3 then
                      localValue2 = localValue2 - 900
                  end
                  else
                    localValue3 = 1000
                    if localValue2 >= localValue3 then
                      localValue3 = 1100
                      if localValue2 < localValue3 then
                        localValue2 = localValue2 - 1000
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  return localValue2
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "RotateSafeDial"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23
  if "rotation.anticlockwise" == localValue1 or "rotation.clockwise" == localValue1 then
    localValue2 = 1
    localValue3 = nil
    if "rotation.anticlockwise" == localValue1 then
      localValue3 = 1
    else
      localValue3 = -1
    end
    stateFlag18 = localValue3 * localValue2
    stateFlag19 = workingValue7
    stateFlag19 = stateFlag19 + stateFlag18
    workingValue7 = stateFlag19
    stateFlag19 = PlaySoundFrontend
    stateFlag21 = -1
    stateFlag22 = "TUMBLER_TURN"
    number11 = "SAFE_CRACK_SOUNDSET"
    stateFlag23 = true
    stateFlag19(stateFlag21, stateFlag22, number11, stateFlag23)
  end
  text3 = localValue1
  text5 = localValue1
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "RegisterNetEvent"
eventHandlerRegistration = eventHandlerRegistration[text4]
text4 = "8a511fd1d8"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21
  localValue2 = dataCollection
  localValue2 = localValue2[localValue1]
  localValue2 = localValue2.doorHandler
  localValue3 = dataCollection
  localValue3 = localValue3[localValue1]
  localValue3 = localValue3.safePosition
  stateFlag18 = OpenSafeDoor
  stateFlag19 = localValue2
  stateFlag21 = localValue3
  stateFlag18(stateFlag19, stateFlag21)
end
eventHandlerRegistration(text4, workingValue4)
eventHandlerRegistration = _ENV
text4 = "RegisterNetEvent"
eventHandlerRegistration = eventHandlerRegistration[text4]
text4 = "1203341535"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21
  localValue2 = dataCollection
  localValue2 = localValue2[localValue1]
  localValue2 = localValue2.doorHandler
  localValue3 = dataCollection
  localValue3 = localValue3[localValue1]
  localValue3 = localValue3.safePosition
  stateFlag18 = CloseSafeDoor
  stateFlag19 = localValue2
  stateFlag21 = localValue3
  stateFlag18(stateFlag19, stateFlag21)
end
eventHandlerRegistration(text4, workingValue4)
eventHandlerRegistration = _ENV
text4 = "EndMiniGame"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8, number2, number3, stateFlag9
  localValue2 = ClearPedTasks
  localValue3 = CMG
  localValue3 = localValue3.getPlayerPed
  localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8, number2, number3, stateFlag9 = localValue3()
  localValue2(localValue3, stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8, number2, number3, stateFlag9)
  localValue2 = "mini@safe_cracking"
  localValue3 = CMG
  localValue3 = localValue3.loadAnimDict
  stateFlag18 = localValue2
  -- Beginner: Load a GTA animation dictionary before using it.
  localValue3(stateFlag18)
  localValue3 = TaskPlayAnimAdvanced
  stateFlag18 = CMG
  stateFlag18 = stateFlag18.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stateFlag18 = stateFlag18()
  stateFlag19 = localValue2
  stateFlag21 = "door_open_succeed_stand"
  stateFlag22 = workingValue5.x
  number11 = workingValue5.y
  stateFlag23 = workingValue5.z
  number16 = 0.0
  hashValue = 0.0
  stateFlag2 = workingValue6
  hashValue2 = 8.0
  hashValue3 = 8.0
  stateFlag6 = -1
  stateFlag8 = 2
  number2 = 0.3
  number3 = 0
  stateFlag9 = 0
  localValue3(stateFlag18, stateFlag19, stateFlag21, stateFlag22, number11, stateFlag23, number16, hashValue, stateFlag2, hashValue2, hashValue3, stateFlag6, stateFlag8, number2, number3, stateFlag9)
  localValue3 = RemoveAnimDict
  stateFlag18 = localValue2
  localValue3(stateFlag18)
  localValue3 = FreezeEntityPosition
  stateFlag18 = CMG
  stateFlag18 = stateFlag18.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  stateFlag18 = stateFlag18()
  stateFlag19 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(stateFlag18, stateFlag19)
  localValue3 = Wait
  stateFlag18 = 2500
  localValue3(stateFlag18)
  localValue3 = TriggerServerEvent
  stateFlag18 = "8a511fd1d8"
  stateFlag19 = localValue1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8a511fd1d8".
  localValue3(stateFlag18, stateFlag19)
  localValue3 = "setup"
  text2 = localValue3
  localValue3 = true
  stateFlag7 = localValue3
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "UnloadSafeCountdown"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, localValue3, stateFlag18, stateFlag19
  localValue1 = 0
  localValue2 = 12
  localValue3 = 1
  for stateFlag18 = localValue1, localValue2, localValue3 do
    stateFlag19 = stateFlag7
    if not stateFlag19 then
      break
    end
  end
  localValue1 = stateFlag7
  if localValue1 then
    localValue1 = RelockSafe
    localValue1()
  end
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "InitSafeLocks"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, stateFlag18, stateFlag19, stateFlag21
  localValue2 = {}
  localValue3 = 1
  stateFlag18 = #localValue1
  stateFlag19 = 1
  for stateFlag21 = localValue3, stateFlag18, stateFlag19 do
    localValue2[stateFlag21] = true
  end
  return localValue2
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "LoadResources"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: none) ===
function workingValue4()
  local localValue1, localValue2, localValue3
  localValue1 = RequestStreamedTextureDict
  localValue2 = "MPSafeCracking"
  localValue3 = false
  localValue1(localValue2, localValue3)
  localValue1 = RequestAnimDict
  localValue2 = "mini@safe_cracking"
  localValue1(localValue2)
  while true do
    localValue1 = HasStreamedTextureDictLoaded
    localValue2 = "MPSafeCracking"
    localValue1 = localValue1(localValue2)
    if localValue1 then
      localValue1 = RequestAmbientAudioBank
      localValue2 = "SAFE_CRACK"
      localValue3 = false
      localValue1 = localValue1(localValue2, localValue3)
      if localValue1 then
        localValue1 = HasAnimDictLoaded
        localValue2 = "mini@safe_cracking"
        localValue1 = localValue1(localValue2)
        if localValue1 then
          break
        end
      end
    end
    localValue1 = Wait
    localValue2 = 0
    localValue1(localValue2)
  end
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "GetDialProximityToTargetPin"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1, localValue2, localValue3) ===
function workingValue4(localValue1, localValue2, localValue3)
  local stateFlag18, stateFlag19, stateFlag21
  stateFlag18 = localValue2[localValue3]
  stateFlag19 = nil
  stateFlag21 = text3
  if "rotation.anticlockwise" ~= stateFlag21 then
    stateFlag21 = text5
    if "rotation.anticlockwise" ~= stateFlag21 then
      goto continueAtStep12
    end
  end
  stateFlag19 = stateFlag18 - localValue1
  goto continueAtStep22
  ::continueAtStep12::
  stateFlag21 = text3
  if "rotation.clockwise" ~= stateFlag21 then
    stateFlag21 = text5
    if "rotation.clockwise" ~= stateFlag21 then
      goto continueAtStep21
    end
  end
  stateFlag19 = localValue1 - stateFlag18
  goto continueAtStep22
  ::continueAtStep21::
  stateFlag19 = 100
  ::continueAtStep22::
  if stateFlag19 < 0 then
    stateFlag19 = stateFlag19 + 100
  end
  return stateFlag19
end
eventHandlerRegistration[text4] = workingValue4
eventHandlerRegistration = _ENV
text4 = "SetDialSpriteShake"

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, localValue3, stateFlag18
  if 5 == localValue1 or 4 == localValue1 or 95 == localValue1 or 96 == localValue1 then
    localValue2 = math
    localValue2 = localValue2.random
    localValue3 = 4.7975E8
    stateFlag18 = 4.805E8
    localValue2 = localValue2(localValue3, stateFlag18)
    localValue2 = localValue2 / 1000000000
    number15 = localValue2
    localValue2 = math
    localValue2 = localValue2.random
    localValue3 = 2.9975E8
    stateFlag18 = 3.005E8
    localValue2 = localValue2(localValue3, stateFlag18)
    localValue2 = localValue2 / 1000000000
    number = localValue2
  elseif 3 == localValue1 or 2 == localValue1 or 97 == localValue1 or 98 == localValue1 then
    localValue2 = math
    localValue2 = localValue2.random
    localValue3 = 4.795E8
    stateFlag18 = 4.805E8
    localValue2 = localValue2(localValue3, stateFlag18)
    localValue2 = localValue2 / 1000000000
    number15 = localValue2
    localValue2 = math
    localValue2 = localValue2.random
    localValue3 = 2.995E8
    stateFlag18 = 3.005E8
    localValue2 = localValue2(localValue3, stateFlag18)
    localValue2 = localValue2 / 1000000000
    number = localValue2
  elseif 1 == localValue1 or 99 == localValue1 then
    localValue2 = math
    localValue2 = localValue2.random
    localValue3 = 4.79E8
    stateFlag18 = 4.81E8
    localValue2 = localValue2(localValue3, stateFlag18)
    localValue2 = localValue2 / 1000000000
    number15 = localValue2
    localValue2 = math
    localValue2 = localValue2.random
    localValue3 = 2.99E8
    stateFlag18 = 3.01E8
    localValue2 = localValue2(localValue3, stateFlag18)
    localValue2 = localValue2 / 1000000000
    number = localValue2
  elseif 0 == localValue1 then
    localValue2 = math
    localValue2 = localValue2.random
    localValue3 = 4.78E8
    stateFlag18 = 4.82E8
    localValue2 = localValue2(localValue3, stateFlag18)
    localValue2 = localValue2 / 1000000000
    number15 = localValue2
    localValue2 = math
    localValue2 = localValue2.random
    localValue3 = 2.98E8
    stateFlag18 = 3.02E8
    localValue2 = localValue2(localValue3, stateFlag18)
    localValue2 = localValue2 / 1000000000
    number = localValue2
  else
    localValue2 = 0.48
    number15 = localValue2
    localValue2 = 0.3
    number = localValue2
  end
end
eventHandlerRegistration[text4] = workingValue4
