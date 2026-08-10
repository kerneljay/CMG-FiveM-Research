--[[
    Beginner Guide: cl_storerob.lua
    ===============================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Important events used:
      * 
cmgCall2 = cmgCall2[eventHandlerRegistration]
eventHandlerRegistration = 
      * 
eventHandlerRegistration = eventHandlerRegistration[textValue4]
textValue4 = 
      * 
numberValue4 = numberValue4[numberValue5]
numberValue5 = 
      * 
numberValue6 = numberValue6[numberValue7]
numberValue7 = 
      * 
workValue3 = workValue3[cmgCall2]
cmgCall2 = 

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Storerob
    =========================

    File: cmg/prod/client/crime/cl_storerob.lua
    Purpose: This file contains crime/gang/heist gameplay.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Decompiled-code note:
      This file came from decompiled Lua. The repeated AI-cleanup boilerplate
      has been removed. Any remaining SHX-style values are compiler/decompiler
      temporaries whose meaning changes repeatedly; follow the surrounding API
      call and the comments rather than treating one SHX variable as one concept.

    WARNING:
      The original decompiler output contains broken goto/label structure.
      This file is annotated for reading, but the original control flow should be
      reconstructed/tested before treating it as production-ready Lua.

    Network/hash identifiers found: 12
      They are intentionally left unchanged because matching server code may use them.

    Named framework/network events found:
      * CMG:onClientSpawn

    Example player-facing text in this file:
      * ~r~You need a weapon in your hands to rob this store!
      * Press ~INPUT_CONTEXT~ to grab the money!
      * Press ~INPUT_CONTEXT~ to start cracking the safe!
      * ~INPUT_CELLPHONE_UP~
      * ~INPUT_CELLPHONE_RIGHT~

]]
local textValue, textValue3, textValue5, textValue7, workValue5, workValue6, workValue7, gameTime, numberValue13, numberValue15, numberValue, workValue, flag4, textValue2, flag5, flag7, dataTable, dataTable2, vector3Builder, numberValue4, numberValue5, numberValue6, numberValue7, numberValue8, workValue2, workValue3, cmgCall2, eventHandlerRegistration, textValue4, workValue4
textValue = "rotation.clockwise"
textValue3 = ""
textValue5 = ""
textValue7 = ""
workValue5 = nil
workValue6 = nil
workValue7 = nil
gameTime = GetGameTimer
-- Beginner: result below is gameTimeMs.
gameTime = gameTime()
numberValue13 = 100
numberValue15 = 0.48
numberValue = 0.3
workValue = nil
flag4 = false
textValue2 = ""
flag5 = false
flag7 = false
dataTable = {}
dataTable2 = {}
dataTable2.shopNpcModel = 416176080
vector3Builder = vector3
numberValue4 = 1727.8286132813
numberValue5 = 6415.54296875
numberValue6 = 35.025634765625
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.shopNpcPosition = vector3Builder
dataTable2.shopNpcHeading = 246.61416625977
dataTable2.shopNpcHandler = 0
dataTable2.prop_safe = 1936747465
dataTable2.prop_door = -1375589668
vector3Builder = vector3
numberValue4 = 1736.289
numberValue5 = 6418.842
numberValue6 = 34.80501
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.safePosition = vector3Builder
dataTable2.safeHeading = 242.48239135742
dataTable2.money_prop = 1554100735
dataTable2.money_prop2 = 1554100735
dataTable2.money_prop3 = 290621560
dataTable2.money_prop4 = 1603932804
vector3Builder = vector3
numberValue4 = 1736.702
numberValue5 = 6418.888
numberValue6 = 34.14135
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos = vector3Builder
vector3Builder = vector3
numberValue4 = 1736.702
numberValue5 = 6418.888
numberValue6 = 34.14135
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
numberValue4 = vector3
numberValue5 = 0.0
numberValue6 = 0.0
numberValue7 = 0.15
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder = vector3Builder + numberValue4
dataTable2.moneyPos2 = vector3Builder
vector3Builder = vector3
numberValue4 = 1736.835
numberValue5 = 6419.24
numberValue6 = 34.10043
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos3 = vector3Builder
vector3Builder = vector3
numberValue4 = 1736.798
numberValue5 = 6418.982
numberValue6 = 34.851775
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos4 = vector3Builder
dataTable2.moneyHeading = 331.59808349609
dataTable2.moneyHeading2 = 331.59808349609
dataTable2.moneyHeading3 = 335.39840698242
dataTable2.moneyHeading4 = 242.181640625
dataTable2.safeHandler = 0
dataTable2.doorHandler = 0
dataTable2.moneyHandler = 0
dataTable2.moneyHandler2 = 0
dataTable2.moneyHandler3 = 0
dataTable2.moneyHandler4 = 0
dataTable2.distanceToPlayer = 1000.0
dataTable2.insideStore = false
dataTable2.robberyInProgress = false
dataTable2.isPlayingAnims = false
dataTable.paleto_twentyfourseven = dataTable2
dataTable2 = {}
dataTable2.shopNpcModel = 416176080
vector3Builder = vector3
numberValue4 = 1959.876953125
numberValue5 = 3740.0307617188
numberValue6 = 32.329711914062
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.shopNpcPosition = vector3Builder
dataTable2.shopNpcHeading = 303.30709838867
dataTable2.shopNpcHandler = 0
dataTable2.prop_safe = 1936747465
dataTable2.prop_door = -1375589668
vector3Builder = vector3
numberValue4 = 1961.656
numberValue5 = 3748.989
numberValue6 = 32.11159
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.safePosition = vector3Builder
dataTable2.safeHeading = 299.89376831055
dataTable2.money_prop = 1554100735
dataTable2.money_prop2 = 1554100735
dataTable2.money_prop3 = 290621560
dataTable2.money_prop4 = 1603932804
vector3Builder = vector3
numberValue4 = 1961.845
numberValue5 = 3749.336
numberValue6 = 31.44533
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos = vector3Builder
vector3Builder = vector3
numberValue4 = 1961.845
numberValue5 = 3749.336
numberValue6 = 31.44533
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
numberValue4 = vector3
numberValue5 = 0.0
numberValue6 = 0.0
numberValue7 = 0.15
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder = vector3Builder + numberValue4
dataTable2.moneyPos2 = vector3Builder
vector3Builder = vector3
numberValue4 = 1961.586
numberValue5 = 3749.646
numberValue6 = 31.44697
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos3 = vector3Builder
vector3Builder = vector3
numberValue4 = 1961.822
numberValue5 = 3749.47
numberValue6 = 32.22634
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos4 = vector3Builder
dataTable2.moneyHeading = 297.69305419922
dataTable2.moneyHeading2 = 297.69305419922
dataTable2.moneyHeading3 = 300.09353637695
dataTable2.moneyHeading4 = 299.99301147461
dataTable2.safeHandler = 0
dataTable2.doorHandler = 0
dataTable2.moneyHandler = 0
dataTable2.moneyHandler2 = 0
dataTable2.moneyHandler3 = 0
dataTable2.moneyHandler4 = 0
dataTable2.distanceToPlayer = 1000.0
dataTable2.insideStore = false
dataTable2.robberyInProgress = false
dataTable2.isPlayingAnims = false
dataTable.sandyshores_twentyfoursever = dataTable2
dataTable2 = {}
dataTable2.shopNpcModel = 416176080
vector3Builder = vector3
numberValue4 = 1984.4356689453
numberValue5 = 3054.7565917969
numberValue6 = 47.215145111084
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.shopNpcPosition = vector3Builder
dataTable2.shopNpcHeading = 230.0
dataTable2.shopNpcHandler = 0
dataTable2.prop_safe = 1936747465
dataTable2.prop_door = -1375589668
vector3Builder = vector3
numberValue4 = 1994.318
numberValue5 = 3043.54
numberValue6 = 46.98114
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.safePosition = vector3Builder
dataTable2.safeHeading = 147.29058837891
dataTable2.money_prop = 1554100735
dataTable2.money_prop2 = 1554100735
dataTable2.money_prop3 = 290621560
dataTable2.money_prop4 = 1603932804
vector3Builder = vector3
numberValue4 = 1994.307
numberValue5 = 3043.096
numberValue6 = 46.32116
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos = vector3Builder
vector3Builder = vector3
numberValue4 = 1994.307
numberValue5 = 3043.096
numberValue6 = 46.32116
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
numberValue4 = vector3
numberValue5 = 0.0
numberValue6 = 0.0
numberValue7 = 0.15
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder = vector3Builder + numberValue4
dataTable2.moneyPos2 = vector3Builder
vector3Builder = vector3
numberValue4 = 1994.6
numberValue5 = 3042.91
numberValue6 = 46.3018
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos3 = vector3Builder
vector3Builder = vector3
numberValue4 = 1994.398
numberValue5 = 3043.013
numberValue6 = 47.12325
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos4 = vector3Builder
dataTable2.moneyHeading = 326.9977722168
dataTable2.moneyHeading2 = 326.9977722168
dataTable2.moneyHeading3 = 327.59765625
dataTable2.moneyHeading4 = 147.67221069336
dataTable2.safeHandler = 0
dataTable2.doorHandler = 0
dataTable2.moneyHandler = 0
dataTable2.moneyHandler2 = 0
dataTable2.moneyHandler3 = 0
dataTable2.moneyHandler4 = 0
dataTable2.distanceToPlayer = 1000.0
dataTable2.insideStore = false
dataTable2.robberyInProgress = false
dataTable2.isPlayingAnims = false
dataTable.bar_one = dataTable2
dataTable2 = {}
dataTable2.shopNpcModel = 416176080
vector3Builder = vector3
numberValue4 = -706.16192626953
numberValue5 = -913.20764160156
numberValue6 = 18.215581893921
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.shopNpcPosition = vector3Builder
dataTable2.shopNpcHeading = 90.0
dataTable2.shopNpcHandler = 0
dataTable2.prop_safe = 1936747465
dataTable2.prop_door = -1375589668
vector3Builder = vector3
numberValue4 = -707.8496
numberValue5 = -904.0402
numberValue6 = 18.98337
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.safePosition = vector3Builder
dataTable2.safeHeading = 0.0
dataTable2.money_prop = 1554100735
dataTable2.money_prop2 = 1554100735
dataTable2.money_prop3 = 290621560
dataTable2.money_prop4 = 1603932804
vector3Builder = vector3
numberValue4 = -708.0876
numberValue5 = -903.588
numberValue6 = 18.21714
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos = vector3Builder
vector3Builder = vector3
numberValue4 = -708.0876
numberValue5 = -903.588
numberValue6 = 18.21714
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
numberValue4 = vector3
numberValue5 = 0.0
numberValue6 = 0.0
numberValue7 = 0.15
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder = vector3Builder + numberValue4
dataTable2.moneyPos2 = vector3Builder
vector3Builder = vector3
numberValue4 = -708.4515
numberValue5 = -903.6274
numberValue6 = 18.31876
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos3 = vector3Builder
vector3Builder = vector3
numberValue4 = -708.1865
numberValue5 = -903.655
numberValue6 = 19.10827
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos4 = vector3Builder
dataTable2.moneyHeading = 0.0
dataTable2.moneyHeading2 = 0.0
dataTable2.moneyHeading3 = 0.0
dataTable2.moneyHeading4 = 0.0
dataTable2.safeHandler = 0
dataTable2.doorHandler = 0
dataTable2.moneyHandler = 0
dataTable2.moneyHandler2 = 0
dataTable2.moneyHandler3 = 0
dataTable2.moneyHandler4 = 0
dataTable2.distanceToPlayer = 1000.0
dataTable2.insideStore = false
dataTable2.robberyInProgress = false
dataTable2.isPlayingAnims = false
dataTable.littleseoul_twentyfourseven = dataTable2
dataTable2 = {}
dataTable2.shopNpcModel = 416176080
vector3Builder = vector3
numberValue4 = 24.329671859741
numberValue5 = -1347.0329589844
numberValue6 = 29.482055664063
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.shopNpcPosition = vector3Builder
dataTable2.shopNpcHeading = 274.96063232422
dataTable2.shopNpcHandler = 0
dataTable2.prop_safe = 1936747465
dataTable2.prop_door = -1375589668
vector3Builder = vector3
numberValue4 = 30.84683
numberValue5 = -1340.337
numberValue6 = 29.26481
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.safePosition = vector3Builder
dataTable2.safeHeading = 269.98638916016
dataTable2.money_prop = 1554100735
dataTable2.money_prop2 = 1554100735
dataTable2.money_prop3 = 290621560
dataTable2.money_prop4 = 1603932804
vector3Builder = vector3
numberValue4 = 31.25762
numberValue5 = -1340.125
numberValue6 = 28.53858
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos = vector3Builder
vector3Builder = vector3
numberValue4 = 31.232
numberValue5 = -1340.124
numberValue6 = 28.68855
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos2 = vector3Builder
vector3Builder = vector3
numberValue4 = 31.20064
numberValue5 = -1339.752
numberValue6 = 28.54
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos3 = vector3Builder
vector3Builder = vector3
numberValue4 = 31.22769
numberValue5 = -1339.963
numberValue6 = 29.36968
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos4 = vector3Builder
dataTable2.moneyHeading = 0.099
dataTable2.moneyHeading2 = 0.099
dataTable2.moneyHeading3 = 0.099
dataTable2.moneyHeading4 = 269.28741455078
dataTable2.safeHandler = 0
dataTable2.doorHandler = 0
dataTable2.moneyHandler = 0
dataTable2.moneyHandler2 = 0
dataTable2.moneyHandler3 = 0
dataTable2.moneyHandler4 = 0
dataTable2.distanceToPlayer = 1000.0
dataTable2.insideStore = false
dataTable2.robberyInProgress = false
dataTable2.isPlayingAnims = false
dataTable.asda = dataTable2
dataTable2 = {}
dataTable2.shopNpcModel = 416176080
vector3Builder = vector3
numberValue4 = -46.450626373291
numberValue5 = -1757.5461425781
numberValue6 = 28.420984268188
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.shopNpcPosition = vector3Builder
dataTable2.shopNpcHeading = 45.0
dataTable2.shopNpcHandler = 0
dataTable2.prop_safe = 1936747465
dataTable2.prop_door = -1375589668
vector3Builder = vector3
numberValue4 = -41.91652
numberValue5 = -1749.63
numberValue6 = 29.18883
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.safePosition = vector3Builder
dataTable2.safeHeading = 319.69720458984
dataTable2.money_prop = 1554100735
dataTable2.money_prop2 = 1554100735
dataTable2.money_prop3 = 290621560
dataTable2.money_prop4 = 1603932804
vector3Builder = vector3
numberValue4 = -41.84
numberValue5 = -1749.16
numberValue6 = 28.42251
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos = vector3Builder
vector3Builder = vector3
numberValue4 = -41.84
numberValue5 = -1749.16
numberValue6 = 28.42251
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
numberValue4 = vector3
numberValue5 = 0.0
numberValue6 = 0.0
numberValue7 = 0.15
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder = vector3Builder + numberValue4
dataTable2.moneyPos2 = vector3Builder
vector3Builder = vector3
numberValue4 = -42.17047
numberValue5 = -1748.993
numberValue6 = 28.5542
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos3 = vector3Builder
vector3Builder = vector3
numberValue4 = -41.94428
numberValue5 = -1749.123
numberValue6 = 29.30364
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos4 = vector3Builder
dataTable2.moneyHeading = 318.39709472656
dataTable2.moneyHeading2 = 318.39709472656
dataTable2.moneyHeading3 = 323.59747314453
dataTable2.moneyHeading4 = 319.59719848633
dataTable2.safeHandler = 0
dataTable2.doorHandler = 0
dataTable2.moneyHandler = 0
dataTable2.moneyHandler2 = 0
dataTable2.moneyHandler3 = 0
dataTable2.moneyHandler4 = 0
dataTable2.distanceToPlayer = 1000.0
dataTable2.insideStore = false
dataTable2.robberyInProgress = false
dataTable2.isPlayingAnims = false
dataTable.southlossantos_twentyfourseven = dataTable2
dataTable2 = {}
dataTable2.shopNpcModel = 416176080
vector3Builder = vector3
numberValue4 = 372.39559936523
numberValue5 = 326.75604248047
numberValue6 = 103.55383300781
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.shopNpcPosition = vector3Builder
dataTable2.shopNpcHeading = 257.95275878906
dataTable2.shopNpcHandler = 0
dataTable2.prop_safe = 1936747465
dataTable2.prop_door = -1375589668
vector3Builder = vector3
numberValue4 = 380.0088
numberValue5 = 331.7921
numberValue6 = 103.3343
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.safePosition = vector3Builder
dataTable2.safeHeading = 255.58413696289
dataTable2.money_prop = 1554100735
dataTable2.money_prop2 = 1554100735
dataTable2.money_prop3 = 290621560
dataTable2.money_prop4 = 1603932804
vector3Builder = vector3
numberValue4 = 380.4388
numberValue5 = 331.9152
numberValue6 = 102.678
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos = vector3Builder
vector3Builder = vector3
numberValue4 = 380.4388
numberValue5 = 331.9152
numberValue6 = 102.678
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
numberValue4 = vector3
numberValue5 = 0.0
numberValue6 = 0.0
numberValue7 = 0.15
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder = vector3Builder + numberValue4
dataTable2.moneyPos2 = vector3Builder
vector3Builder = vector3
numberValue4 = 380.5645
numberValue5 = 332.2422
numberValue6 = 102.6495
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos3 = vector3Builder
vector3Builder = vector3
numberValue4 = 380.4466
numberValue5 = 332.0624
numberValue6 = 103.4792
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos4 = vector3Builder
dataTable2.moneyHeading = 346.39916992188
dataTable2.moneyHeading2 = 346.39916992188
dataTable2.moneyHeading3 = 323.59747314453
dataTable2.moneyHeading4 = 346.79919433594
dataTable2.safeHandler = 0
dataTable2.doorHandler = 0
dataTable2.moneyHandler = 0
dataTable2.moneyHandler2 = 0
dataTable2.moneyHandler3 = 0
dataTable2.moneyHandler4 = 0
dataTable2.distanceToPlayer = 1000.0
dataTable2.insideStore = false
dataTable2.robberyInProgress = false
dataTable2.isPlayingAnims = false
dataTable.vinewood_twentyfourseven = dataTable2
dataTable2 = {}
dataTable2.shopNpcModel = 416176080
vector3Builder = vector3
numberValue4 = 1134.2801513672
numberValue5 = -982.96826171875
numberValue6 = 45.415786743164
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.shopNpcPosition = vector3Builder
dataTable2.shopNpcHeading = 273.0
dataTable2.shopNpcHandler = 0
dataTable2.prop_safe = 1936747465
dataTable2.prop_door = -1375589668
vector3Builder = vector3
numberValue4 = 1126.477
numberValue5 = -980.8321
numberValue6 = 45.18349
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.safePosition = vector3Builder
dataTable2.safeHeading = 7.4999785423279
dataTable2.money_prop = 1554100735
dataTable2.money_prop2 = 1554100735
dataTable2.money_prop3 = 290621560
dataTable2.money_prop4 = 1603932804
vector3Builder = vector3
numberValue4 = 1126.212
numberValue5 = -980.4645
numberValue6 = 44.48732
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos = vector3Builder
vector3Builder = vector3
numberValue4 = 1126.212
numberValue5 = -980.4645
numberValue6 = 44.48732
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
numberValue4 = vector3
numberValue5 = 0.0
numberValue6 = 0.0
numberValue7 = 0.15
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder = vector3Builder + numberValue4
dataTable2.moneyPos2 = vector3Builder
vector3Builder = vector3
numberValue4 = 1125.856
numberValue5 = -980.6199
numberValue6 = 44.49899
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos3 = vector3Builder
vector3Builder = vector3
numberValue4 = 1126.078
numberValue5 = -980.4662
numberValue6 = 45.28833
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos4 = vector3Builder
dataTable2.moneyHeading = 6.8999700546265
dataTable2.moneyHeading2 = 6.8999700546265
dataTable2.moneyHeading3 = 9.5999689102173
dataTable2.moneyHeading4 = 7.19988489151
dataTable2.safeHandler = 0
dataTable2.doorHandler = 0
dataTable2.moneyHandler = 0
dataTable2.moneyHandler2 = 0
dataTable2.moneyHandler3 = 0
dataTable2.moneyHandler4 = 0
dataTable2.distanceToPlayer = 1000.0
dataTable2.insideStore = false
dataTable2.robberyInProgress = false
dataTable2.isPlayingAnims = false
dataTable.eastlossantos_robsliquor = dataTable2
dataTable2 = {}
dataTable2.shopNpcModel = 416176080
vector3Builder = vector3
numberValue4 = 2677.7670898438
numberValue5 = 3279.4548339844
numberValue6 = 55.228515625
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.shopNpcPosition = vector3Builder
dataTable2.shopNpcHeading = 334.48818969727
dataTable2.shopNpcHandler = 0
dataTable2.prop_safe = 1936747465
dataTable2.prop_door = -1375589668
vector3Builder = vector3
numberValue4 = 2674.81
numberValue5 = 3288.004
numberValue6 = 55.00899
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.safePosition = vector3Builder
dataTable2.safeHeading = 330.4999785423279
dataTable2.money_prop = 1554100735
dataTable2.money_prop2 = 1554100735
dataTable2.money_prop3 = 290621560
dataTable2.money_prop4 = 1603932804
vector3Builder = vector3
numberValue4 = 2674.765
numberValue5 = 3288.448
numberValue6 = 54.3227
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos = vector3Builder
vector3Builder = vector3
numberValue4 = 2674.765
numberValue5 = 3288.448
numberValue6 = 54.3227
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
numberValue4 = vector3
numberValue5 = 0.0
numberValue6 = 0.0
numberValue7 = 0.15
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder = vector3Builder + numberValue4
dataTable2.moneyPos2 = vector3Builder
vector3Builder = vector3
numberValue4 = 2674.424
numberValue5 = 3288.59
numberValue6 = 54.33434
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos3 = vector3Builder
vector3Builder = vector3
numberValue4 = 2674.656
numberValue5 = 3288.501
numberValue6 = 55.12368
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos4 = vector3Builder
dataTable2.moneyHeading = 331.39813232422
dataTable2.moneyHeading2 = 331.39813232422
dataTable2.moneyHeading3 = 332.49816894531
dataTable2.moneyHeading4 = 331.19812011719
dataTable2.safeHandler = 0
dataTable2.doorHandler = 0
dataTable2.moneyHandler = 0
dataTable2.moneyHandler2 = 0
dataTable2.moneyHandler3 = 0
dataTable2.moneyHandler4 = 0
dataTable2.distanceToPlayer = 1000.0
dataTable2.insideStore = false
dataTable2.robberyInProgress = false
dataTable2.isPlayingAnims = false
dataTable.sandyshores_twentyfourseven = dataTable2
dataTable2 = {}
dataTable2.shopNpcModel = 416176080
vector3Builder = vector3
numberValue4 = 1698.5382080078
numberValue5 = 4922.6352539063
numberValue6 = 41.063629150391
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.shopNpcPosition = vector3Builder
dataTable2.shopNpcHeading = 320.0
dataTable2.shopNpcHandler = 0
dataTable2.prop_safe = 1936747465
dataTable2.prop_door = -1375589668
vector3Builder = vector3
numberValue4 = 1706.851
numberValue5 = 4918.958
numberValue6 = 41.83147
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.safePosition = vector3Builder
dataTable2.safeHeading = 234.4807434082
dataTable2.money_prop = 1554100735
dataTable2.money_prop2 = 1554100735
dataTable2.money_prop3 = 290621560
dataTable2.money_prop4 = 1603932804
vector3Builder = vector3
numberValue4 = 1707.324
numberValue5 = 4918.907
numberValue6 = 41.1652
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos = vector3Builder
vector3Builder = vector3
numberValue4 = 1707.324
numberValue5 = 4918.907
numberValue6 = 41.16527
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
numberValue4 = vector3
numberValue5 = 0.0
numberValue6 = 0.0
numberValue7 = 0.15
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder = vector3Builder + numberValue4
dataTable2.moneyPos2 = vector3Builder
vector3Builder = vector3
numberValue4 = 1707.568
numberValue5 = 4919.194
numberValue6 = 41.13685
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos3 = vector3Builder
vector3Builder = vector3
numberValue4 = 1707.366
numberValue5 = 4919.027
numberValue6 = 41.94618
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos4 = vector3Builder
dataTable2.moneyHeading = 325.39755249023
dataTable2.moneyHeading2 = 325.39755249023
dataTable2.moneyHeading3 = 332.49816894531
dataTable2.moneyHeading4 = 322.59429931641
dataTable2.safeHandler = 0
dataTable2.doorHandler = 0
dataTable2.moneyHandler = 0
dataTable2.moneyHandler2 = 0
dataTable2.moneyHandler3 = 0
dataTable2.moneyHandler4 = 0
dataTable2.distanceToPlayer = 1000.0
dataTable2.insideStore = false
dataTable2.robberyInProgress = false
dataTable2.isPlayingAnims = false
dataTable.grapeseed_gasstop = dataTable2
dataTable2 = {}
dataTable2.shopNpcModel = 416176080
vector3Builder = vector3
numberValue4 = -1486.6450195313
numberValue5 = -377.64117431641
numberValue6 = 39.16344833374
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.shopNpcPosition = vector3Builder
vector3Builder = 128.0
dataTable2.shopNpcHeading = vector3Builder
dataTable2.shopNpcHandler = 0
dataTable2.prop_safe = 1936747465
dataTable2.prop_door = -1375589668
vector3Builder = vector3
numberValue4 = -1479.141
numberValue5 = -374.8521
numberValue6 = 38.93123
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.safePosition = vector3Builder
vector3Builder = 226.1791229248
dataTable2.safeHeading = vector3Builder
dataTable2.money_prop = 1554100735
dataTable2.money_prop2 = 1554100735
dataTable2.money_prop3 = 290621560
dataTable2.money_prop4 = 1603932804
vector3Builder = vector3
numberValue4 = -1478.691
numberValue5 = -374.9853
numberValue6 = 38.23492
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos = vector3Builder
vector3Builder = vector3
numberValue4 = -1478.691
numberValue5 = -374.9853
numberValue6 = 38.23492
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
numberValue4 = vector3
numberValue5 = 0.0
numberValue6 = 0.0
numberValue7 = 0.15
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder = vector3Builder + numberValue4
dataTable2.moneyPos2 = vector3Builder
vector3Builder = vector3
numberValue4 = -1478.475
numberValue5 = -374.6764
numberValue6 = 38.26654
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos3 = vector3Builder
vector3Builder = vector3
numberValue4 = -1478.643
numberValue5 = -374.8643
numberValue6 = 39.04589
vector3Builder = vector3Builder(numberValue4, numberValue5, numberValue6)
dataTable2.moneyPos4 = vector3Builder
vector3Builder = 315.29690551758
dataTable2.moneyHeading = vector3Builder
vector3Builder = 315.29690551758
dataTable2.moneyHeading2 = vector3Builder
vector3Builder = 315.49691772461
dataTable2.moneyHeading3 = vector3Builder
vector3Builder = 225.37908935547
dataTable2.moneyHeading4 = vector3Builder
dataTable2.safeHandler = 0
dataTable2.doorHandler = 0
dataTable2.moneyHandler = 0
dataTable2.moneyHandler2 = 0
dataTable2.moneyHandler3 = 0
dataTable2.moneyHandler4 = 0
dataTable2.distanceToPlayer = 1000.0
dataTable2.insideStore = false
dataTable2.robberyInProgress = false
dataTable2.isPlayingAnims = false
dataTable.morningwood_robsliquor = dataTable2
dataTable2 = "chumash_robsliquor"
vector3Builder = {}
vector3Builder.shopNpcModel = 416176080
numberValue4 = vector3
numberValue5 = -2966.4086914063
numberValue6 = 391.35339355469
numberValue7 = 14.043314933777
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.shopNpcPosition = numberValue4
numberValue4 = 80.0
vector3Builder.shopNpcHeading = numberValue4
vector3Builder.shopNpcHandler = 0
vector3Builder.prop_safe = 1936747465
vector3Builder.prop_door = -1375589668
numberValue4 = vector3
numberValue5 = -2959.265
numberValue6 = 387.6957
numberValue7 = 13.81098
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.safePosition = numberValue4
numberValue4 = 176.69169616699
vector3Builder.safeHeading = numberValue4
vector3Builder.money_prop = 1554100735
vector3Builder.money_prop2 = 1554100735
vector3Builder.money_prop3 = 290621560
vector3Builder.money_prop4 = 1603932804
numberValue4 = vector3
numberValue5 = -2959.014
numberValue6 = 387.3654
numberValue7 = 13.14629
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.moneyPos = numberValue4
numberValue4 = vector3
numberValue5 = -2959.014
numberValue6 = 387.3654
numberValue7 = 13.14629
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
numberValue5 = vector3
numberValue6 = 0.0
numberValue7 = 0.0
numberValue8 = 0.15
numberValue5 = numberValue5(numberValue6, numberValue7, numberValue8)
numberValue4 = numberValue4 + numberValue5
vector3Builder.moneyPos2 = numberValue4
numberValue4 = vector3
numberValue5 = -2958.639
numberValue6 = 387.3448
numberValue7 = 13.09645
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.moneyPos3 = numberValue4
numberValue4 = vector3
numberValue5 = -2958.927
numberValue6 = 387.2768
numberValue7 = 13.91958
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.moneyPos4 = numberValue4
numberValue4 = 356.49978637695
vector3Builder.moneyHeading = numberValue4
numberValue4 = 356.49978637695
vector3Builder.moneyHeading2 = numberValue4
vector3Builder.moneyHeading3 = 0.0
numberValue4 = 177.27951049805
vector3Builder.moneyHeading4 = numberValue4
vector3Builder.safeHandler = 0
vector3Builder.doorHandler = 0
vector3Builder.moneyHandler = 0
vector3Builder.moneyHandler2 = 0
vector3Builder.moneyHandler3 = 0
vector3Builder.moneyHandler4 = 0
vector3Builder.distanceToPlayer = 1000.0
vector3Builder.insideStore = false
vector3Builder.robberyInProgress = false
vector3Builder.isPlayingAnims = false
dataTable[dataTable2] = vector3Builder
dataTable2 = "eastlossantos_gasstop"
vector3Builder = {}
vector3Builder.shopNpcModel = 416176080
numberValue4 = vector3
numberValue5 = 1164.5863037109
numberValue6 = -322.3291015625
numberValue7 = 68.205024719238
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.shopNpcPosition = numberValue4
numberValue4 = 96.0
vector3Builder.shopNpcHeading = numberValue4
vector3Builder.shopNpcHandler = 0
vector3Builder.prop_safe = 1936747465
vector3Builder.prop_door = -1375589668
numberValue4 = vector3
numberValue5 = 1161.396
numberValue6 = -313.4418
numberValue7 = 68.97283
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.safePosition = numberValue4
numberValue4 = 12.599948883057
vector3Builder.safeHeading = numberValue4
vector3Builder.money_prop = 1554100735
vector3Builder.money_prop2 = 1554100735
vector3Builder.money_prop3 = 290621560
vector3Builder.money_prop4 = 1603932804
numberValue4 = vector3
numberValue5 = 1161.073
numberValue6 = -313.0523
numberValue7 = 68.25655
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.moneyPos = numberValue4
numberValue4 = vector3
numberValue5 = 1161.073
numberValue6 = -313.0523
numberValue7 = 68.25655
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
numberValue5 = vector3
numberValue6 = 0.0
numberValue7 = 0.0
numberValue8 = 0.15
numberValue5 = numberValue5(numberValue6, numberValue7, numberValue8)
numberValue4 = numberValue4 + numberValue5
vector3Builder.moneyPos2 = numberValue4
numberValue4 = vector3
numberValue5 = 1160.752
numberValue6 = -313.2396
numberValue7 = 68.25839
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.moneyPos3 = numberValue4
numberValue4 = vector3
numberValue5 = 1160.989
numberValue6 = -313.1646
numberValue7 = 69.10003
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.moneyPos4 = numberValue4
numberValue4 = 12.599948883057
vector3Builder.moneyHeading = numberValue4
numberValue4 = 12.599948883057
vector3Builder.moneyHeading2 = numberValue4
numberValue4 = 13.399929046631
vector3Builder.moneyHeading3 = numberValue4
numberValue4 = 13.49991607666
vector3Builder.moneyHeading4 = numberValue4
vector3Builder.safeHandler = 0
vector3Builder.doorHandler = 0
vector3Builder.moneyHandler = 0
vector3Builder.moneyHandler2 = 0
vector3Builder.moneyHandler3 = 0
vector3Builder.moneyHandler4 = 0
vector3Builder.distanceToPlayer = 1000.0
vector3Builder.insideStore = false
vector3Builder.robberyInProgress = false
vector3Builder.isPlayingAnims = false
dataTable[dataTable2] = vector3Builder
dataTable2 = "tongva_gasstop"
vector3Builder = {}
vector3Builder.shopNpcModel = 416176080
numberValue4 = vector3
numberValue5 = -1820.384765625
numberValue6 = 794.54663085938
numberValue7 = 137.08973693848
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.shopNpcPosition = numberValue4
numberValue4 = 126.0
vector3Builder.shopNpcHeading = numberValue4
vector3Builder.shopNpcHandler = 0
vector3Builder.prop_safe = 1936747465
vector3Builder.prop_door = -1375589668
numberValue4 = vector3
numberValue5 = -1827.91
numberValue6 = 800.1599
numberValue7 = 137.9252
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.safePosition = numberValue4
numberValue4 = 41.699321746826
vector3Builder.safeHeading = numberValue4
vector3Builder.money_prop = 1554100735
vector3Builder.money_prop2 = 1554100735
vector3Builder.money_prop3 = 290621560
vector3Builder.money_prop4 = 1603932804
numberValue4 = vector3
numberValue5 = -1828.359
numberValue6 = 800.326
numberValue7 = 137.1943
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.moneyPos = numberValue4
numberValue4 = vector3
numberValue5 = -1828.359
numberValue6 = 800.326
numberValue7 = 137.1943
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
numberValue5 = vector3
numberValue6 = 0.0
numberValue7 = 0.0
numberValue8 = 0.15
numberValue5 = numberValue5(numberValue6, numberValue7, numberValue8)
numberValue4 = numberValue4 + numberValue5
vector3Builder.moneyPos2 = numberValue4
numberValue4 = vector3
numberValue5 = -1828.556
numberValue6 = 800.006
numberValue7 = 137.2565
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.moneyPos3 = numberValue4
numberValue4 = vector3
numberValue5 = -1828.442
numberValue6 = 800.2554
numberValue7 = 138.0441
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.moneyPos4 = numberValue4
numberValue4 = 311.09548950195
vector3Builder.moneyHeading = numberValue4
numberValue4 = 311.09548950195
vector3Builder.moneyHeading2 = numberValue4
numberValue4 = 44.199123382568
vector3Builder.moneyHeading3 = numberValue4
numberValue4 = 41.498989105225
vector3Builder.moneyHeading4 = numberValue4
vector3Builder.safeHandler = 0
vector3Builder.doorHandler = 0
vector3Builder.moneyHandler = 0
vector3Builder.moneyHandler2 = 0
vector3Builder.moneyHandler3 = 0
vector3Builder.moneyHandler4 = 0
vector3Builder.distanceToPlayer = 1000.0
vector3Builder.insideStore = false
vector3Builder.robberyInProgress = false
vector3Builder.isPlayingAnims = false
dataTable[dataTable2] = vector3Builder
dataTable2 = "tataviam_twentyfourseven"
vector3Builder = {}
vector3Builder.shopNpcModel = 416176080
numberValue4 = vector3
numberValue5 = 2556.8967285156
numberValue6 = 380.67691040039
numberValue7 = 108.60876464844
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.shopNpcPosition = numberValue4
vector3Builder.shopNpcHeading = 0.0
vector3Builder.shopNpcHandler = 0
vector3Builder.prop_safe = 1936747465
vector3Builder.prop_door = -1375589668
numberValue4 = vector3
numberValue5 = 2550.434
numberValue6 = 386.8382
numberValue7 = 108.3907
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.safePosition = numberValue4
numberValue4 = 358.39990234375
vector3Builder.safeHeading = numberValue4
vector3Builder.money_prop = 1554100735
vector3Builder.money_prop2 = 1554100735
vector3Builder.money_prop3 = 290621560
vector3Builder.money_prop4 = 1603932804
numberValue4 = vector3
numberValue5 = 2550.21
numberValue6 = 387.2356
numberValue7 = 107.6346
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.moneyPos = numberValue4
numberValue4 = vector3
numberValue5 = 2550.21
numberValue6 = 387.2356
numberValue7 = 107.6346
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
numberValue5 = vector3
numberValue6 = 0.0
numberValue7 = 0.0
numberValue8 = 0.15
numberValue5 = numberValue5(numberValue6, numberValue7, numberValue8)
numberValue4 = numberValue4 + numberValue5
vector3Builder.moneyPos2 = numberValue4
numberValue4 = vector3
numberValue5 = 2549.838
numberValue6 = 387.221
numberValue7 = 107.7061
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.moneyPos3 = numberValue4
numberValue4 = vector3
numberValue5 = 2550.109
numberValue6 = 387.2408
numberValue7 = 108.5108
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.moneyPos4 = numberValue4
numberValue4 = 358.89993286133
vector3Builder.moneyHeading = numberValue4
numberValue4 = 358.89993286133
vector3Builder.moneyHeading2 = numberValue4
vector3Builder.moneyHeading3 = 0.0
numberValue4 = 358.0998840332
vector3Builder.moneyHeading4 = numberValue4
vector3Builder.safeHandler = 0
vector3Builder.doorHandler = 0
vector3Builder.moneyHandler = 0
vector3Builder.moneyHandler2 = 0
vector3Builder.moneyHandler3 = 0
vector3Builder.moneyHandler4 = 0
vector3Builder.distanceToPlayer = 1000.0
vector3Builder.insideStore = false
vector3Builder.robberyInProgress = false
vector3Builder.isPlayingAnims = false
dataTable[dataTable2] = vector3Builder
dataTable2 = "cayoperico"
vector3Builder = {}
vector3Builder.shopNpcModel = 416176080
numberValue4 = vector3
numberValue5 = 4466.423828125
numberValue6 = -4463.7529296875
numberValue7 = 4.2491989135742
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.shopNpcPosition = numberValue4
numberValue4 = 200.81
vector3Builder.shopNpcHeading = numberValue4
vector3Builder.shopNpcHandler = 0
vector3Builder.prop_safe = 1936747465
vector3Builder.prop_door = -1375589668
numberValue4 = vector3
numberValue5 = 4464.9482421875
numberValue6 = -4460.5083007812
numberValue7 = 4.0420001029968
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.safePosition = numberValue4
numberValue4 = 110.0
vector3Builder.safeHeading = numberValue4
vector3Builder.money_prop = 1554100735
vector3Builder.money_prop2 = 1554100735
vector3Builder.money_prop3 = 290621560
vector3Builder.money_prop4 = 1603932804
numberValue4 = vector3
numberValue5 = 4464.7482421875
numberValue6 = -4461.0083007812
numberValue7 = 3.29200010299686
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.moneyPos = numberValue4
numberValue4 = vector3
numberValue5 = 4464.7482421875
numberValue6 = -4461.0083007812
numberValue7 = 3.2920001029968
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
numberValue5 = vector3
numberValue6 = 0.0
numberValue7 = 0.0
numberValue8 = 0.15
numberValue5 = numberValue5(numberValue6, numberValue7, numberValue8)
numberValue4 = numberValue4 + numberValue5
vector3Builder.moneyPos2 = numberValue4
numberValue4 = vector3
numberValue5 = 4464.7482421875
numberValue6 = -4461.0083007812
numberValue7 = 3.2920001029968
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.moneyPos3 = numberValue4
numberValue4 = vector3
numberValue5 = 4464.7482421875
numberValue6 = -4461.0083007812
numberValue7 = 4.0920001029968
numberValue4 = numberValue4(numberValue5, numberValue6, numberValue7)
vector3Builder.moneyPos4 = numberValue4
numberValue4 = 110.89993286133
vector3Builder.moneyHeading = numberValue4
numberValue4 = 110.89993286133
vector3Builder.moneyHeading2 = numberValue4
vector3Builder.moneyHeading3 = 0.0
numberValue4 = 110.0998840332
vector3Builder.moneyHeading4 = numberValue4
vector3Builder.safeHandler = 0
vector3Builder.doorHandler = 0
vector3Builder.moneyHandler = 0
vector3Builder.moneyHandler2 = 0
vector3Builder.moneyHandler3 = 0
vector3Builder.moneyHandler4 = 0
vector3Builder.distanceToPlayer = 1000.0
vector3Builder.insideStore = false
vector3Builder.robberyInProgress = false
vector3Builder.isPlayingAnims = false
dataTable[dataTable2] = vector3Builder
function dataTable2(arg1)
  local arg2, arg3, flag18, flag19, flag21
  arg2 = BeginTextCommandDisplayHelp
  arg3 = "STRING"
  arg2(arg3)
  arg2 = AddTextComponentSubstringPlayerName
  arg3 = arg1
  arg2(arg3)
  arg2 = EndTextCommandDisplayHelp
  arg3 = 0
  flag18 = false
  flag19 = true
  flag21 = -1
  arg2(arg3, flag18, flag19, flag21)
end
function vector3Builder(arg1, arg2, arg3)
  local flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6, flag8, numberValue2, numberValue3, flag9, flag10, flag11, flag12, flag13, flag14, flag15
  flag18 = IsPedDeadOrDying
  flag19 = arg1
  flag21 = false
  flag18 = flag18(flag19, flag21)
  if not flag18 then
    flag18 = IsEntityPlayingAnim
    flag19 = arg1
    flag21 = "mp_am_hold_up"
    flag22 = "holdup_victim_20s"
    numberValue11 = 3
    flag18 = flag18(flag19, flag21, flag22, numberValue11)
    if flag18 then
      flag18 = arg2.isPlayingAnims
      if not flag18 then
        arg2.isPlayingAnims = true
        flag18 = PlayPedAmbientSpeechNative
        flag19 = arg1
        flag21 = "SHOP_SCARED"
        flag22 = "SPEECH_PARAMS_FORCE"
        flag18(flag19, flag21, flag22)
        flag18 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        flag18 = flag18()
        flag18 = flag18 + 10800
        while true do
          flag19 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          flag19 = flag19()
          if not (flag18 >= flag19) then
            break
          end
          flag19 = IsPedDeadOrDying
          flag21 = arg1
          flag22 = false
          flag19 = flag19(flag21, flag22)
          if flag19 then
            break
          end
          flag19 = Wait
          flag21 = 0
          flag19(flag21)
        end
        flag19 = IsPedDeadOrDying
        flag21 = arg1
        flag22 = false
        flag19 = flag19(flag21, flag22)
        if not flag19 then
          flag19 = GetEntityCoords
          flag21 = arg1
          -- Beginner: result below is entityCoords.
          flag19 = flag19(flag21)
          flag21 = GetClosestObjectOfType
          flag22 = flag19.x
          numberValue11 = flag19.y
          flag23 = flag19.z
          numberValue16 = 5.0
          hashValue = GetHashKey
          flag2 = "prop_till_01"
          -- Beginner: result below is hash.
          hashValue = hashValue(flag2)
          flag2 = false
          hashValue2 = false
          hashValue3 = false
          -- Beginner: result below is objectEntity.
          flag21 = flag21(flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3)
          flag22 = DoesEntityExist
          numberValue11 = flag21
          flag22 = flag22(numberValue11)
          if flag22 then
            flag22 = GetEntityCoords
            numberValue11 = flag21
            -- Beginner: result below is entityCoords.
            flag22 = flag22(numberValue11)
            numberValue11 = CreateModelSwap
            flag23 = flag22.x
            numberValue16 = flag22.y
            hashValue = flag22.z
            flag2 = 0.5
            hashValue2 = GetHashKey
            hashValue3 = "prop_till_01"
            -- Beginner: result below is hash.
            hashValue2 = hashValue2(hashValue3)
            hashValue3 = GetHashKey
            flag6 = "prop_till_01_dam"
            -- Beginner: result below is hash.
            hashValue3 = hashValue3(flag6)
            flag6 = false
            numberValue11(flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6)
          end
          flag22 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          flag22 = flag22()
          flag18 = flag22 + 200
          while true do
            flag22 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            flag22 = flag22()
            if not (flag18 >= flag22) then
              break
            end
            flag22 = IsPedDeadOrDying
            numberValue11 = arg1
            flag23 = false
            flag22 = flag22(numberValue11, flag23)
            if flag22 then
              break
            end
            flag22 = Wait
            numberValue11 = 0
            flag22(numberValue11)
          end
          flag22 = CMG
          flag22 = flag22.loadModel
          numberValue11 = -1194335261
          flag22 = flag22(numberValue11)
          numberValue11 = GetEntityCoords
          flag23 = arg1
          -- Beginner: result below is entityCoords.
          numberValue11 = numberValue11(flag23)
          flag23 = CreateObject
          numberValue16 = flag22
          hashValue = numberValue11.x
          flag2 = numberValue11.y
          hashValue2 = numberValue11.z
          hashValue3 = false
          flag6 = false
          flag8 = false
          -- Beginner: result below is objectEntity.
          flag23 = flag23(numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6, flag8)
          numberValue16 = SetModelAsNoLongerNeeded
          hashValue = flag22
          numberValue16(hashValue)
          numberValue16 = PlayPedAmbientSpeechNative
          hashValue = arg1
          flag2 = "SHOP_HURRYING"
          hashValue2 = "SPEECH_PARAMS_FORCE"
          numberValue16(hashValue, flag2, hashValue2)
          numberValue16 = AttachEntityToEntity
          hashValue = flag23
          flag2 = arg1
          hashValue2 = GetPedBoneIndex
          hashValue3 = arg1
          flag6 = 60309
          hashValue2 = hashValue2(hashValue3, flag6)
          hashValue3 = 0.1
          flag6 = -0.11
          flag8 = 0.08
          numberValue2 = 0.0
          numberValue3 = -75.0
          flag9 = -75.0
          flag10 = true
          flag11 = true
          flag12 = false
          flag13 = false
          flag14 = 2
          flag15 = true
          -- Beginner: Attach one entity to another entity.
          numberValue16(hashValue, flag2, hashValue2, hashValue3, flag6, flag8, numberValue2, numberValue3, flag9, flag10, flag11, flag12, flag13, flag14, flag15)
          numberValue16 = Wait
          hashValue = 10000
          numberValue16(hashValue)
          numberValue16 = IsPedDeadOrDying
          hashValue = arg1
          flag2 = false
          numberValue16 = numberValue16(hashValue, flag2)
          if not numberValue16 then
            numberValue16 = PlayPedAmbientSpeechNative
            hashValue = arg1
            flag2 = "SCREAM_PANIC"
            hashValue2 = "SPEECH_PARAMS_FORCE"
            numberValue16(hashValue, flag2, hashValue2)
            numberValue16 = DetachEntity
            hashValue = flag23
            flag2 = true
            hashValue2 = false
            numberValue16(hashValue, flag2, hashValue2)
            numberValue16 = Wait
            hashValue = 0
            numberValue16(hashValue)
            numberValue16 = SetEntityHeading
            hashValue = flag23
            flag2 = arg2.shopNpcHeading
            -- Beginner: Change the direction an entity is facing.
            numberValue16(hashValue, flag2)
            numberValue16 = ApplyForceToEntity
            hashValue = flag23
            flag2 = 3
            hashValue2 = 0.0
            hashValue3 = 50.0
            flag6 = 20.0
            flag8 = 0.0
            numberValue2 = 0.0
            numberValue3 = 50.0
            flag9 = 0
            flag10 = true
            flag11 = true
            flag12 = false
            flag13 = false
            flag14 = true
            numberValue16(hashValue, flag2, hashValue2, hashValue3, flag6, flag8, numberValue2, numberValue3, flag9, flag10, flag11, flag12, flag13, flag14)
            numberValue16 = false
            flag4 = numberValue16
            numberValue16 = Citizen
            numberValue16 = numberValue16.CreateThread
            function hashValue()
              local coords, cmgCall, textValue6, textValue8, flag20
              while true do
                coords = Wait
                cmgCall = 5
                coords(cmgCall)
                coords = DoesEntityExist
                cmgCall = flag23
                coords = coords(cmgCall)
                if coords then
                  coords = GetEntityCoords
                  cmgCall = CMG
                  cmgCall = cmgCall.getPlayerPed
                  cmgCall, textValue6, textValue8, flag20 = cmgCall()
                  -- Beginner: result below is entityCoords.
                  coords = coords(cmgCall, textValue6, textValue8, flag20)
                  cmgCall = GetEntityCoords
                  textValue6 = flag23
                  -- Beginner: result below is entityCoords.
                  cmgCall = cmgCall(textValue6)
                  coords = coords - cmgCall
                  coords = #coords
                  cmgCall = 1.5
                  if coords <= cmgCall then
                    coords = PlaySoundFrontend
                    cmgCall = -1
                    textValue6 = "ROBBERY_MONEY_TOTAL"
                    textValue8 = "HUD_FRONTEND_CUSTOM_SOUNDSET"
                    flag20 = true
                    coords(cmgCall, textValue6, textValue8, flag20)
                    coords = TriggerServerEvent
                    cmgCall = "75c4e26b58"
                    textValue6 = arg3
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "75c4e26b58".
                    coords(cmgCall, textValue6)
                    coords = DeleteObject
                    cmgCall = flag23
                    coords(cmgCall)
                    break
                  end
                else
                  break
                end
              end
            end
            -- Beginner: Start a separate FiveM thread so this code can run independently.
            numberValue16(hashValue)
          else
            numberValue16 = DeleteObject
            hashValue = flag23
            numberValue16(hashValue)
          end
          numberValue16 = CMG
          numberValue16 = numberValue16.loadAnimDict
          hashValue = "mp_am_hold_up"
          -- Beginner: Load a GTA animation dictionary before using it.
          numberValue16(hashValue)
          numberValue16 = TaskPlayAnim
          hashValue = arg1
          flag2 = "mp_am_hold_up"
          hashValue2 = "cower_intro"
          hashValue3 = 8.0
          flag6 = -8.0
          flag8 = -1
          numberValue2 = 0
          numberValue3 = 0
          flag9 = false
          flag10 = false
          flag11 = false
          -- Beginner: Play an animation on a ped.
          numberValue16(hashValue, flag2, hashValue2, hashValue3, flag6, flag8, numberValue2, numberValue3, flag9, flag10, flag11)
          numberValue16 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          numberValue16 = numberValue16()
          flag18 = numberValue16 + 2500
          while true do
            numberValue16 = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            numberValue16 = numberValue16()
            if not (flag18 >= numberValue16) then
              break
            end
            numberValue16 = Wait
            hashValue = 0
            numberValue16(hashValue)
          end
          numberValue16 = Citizen
          numberValue16 = numberValue16.CreateThread
          function hashValue()
            local coords, cmgCall, textValue6, textValue8, flag20, numberValue9, numberValue10, numberValue12, numberValue14, flag24, flag, flag3
            coords = TaskPlayAnim
            cmgCall = arg1
            textValue6 = "mp_am_hold_up"
            textValue8 = "cower_loop"
            flag20 = 8.0
            numberValue9 = -8.0
            numberValue10 = -1
            numberValue12 = 1
            numberValue14 = 0
            flag24 = false
            flag = false
            flag3 = false
            -- Beginner: Play an animation on a ped.
            coords(cmgCall, textValue6, textValue8, flag20, numberValue9, numberValue10, numberValue12, numberValue14, flag24, flag, flag3)
            coords = GetGameTimer
            -- Beginner: result below is gameTimeMs.
            coords = coords()
            coords = coords + 120000
            while true do
              cmgCall = GetGameTimer
              -- Beginner: result below is gameTimeMs.
              cmgCall = cmgCall()
              if not (coords >= cmgCall) then
                break
              end
              cmgCall = Wait
              textValue6 = 50
              cmgCall(textValue6)
            end
            cmgCall = IsEntityPlayingAnim
            textValue6 = arg1
            textValue8 = "mp_am_hold_up"
            flag20 = "cower_loop"
            numberValue9 = 3
            cmgCall = cmgCall(textValue6, textValue8, flag20, numberValue9)
            if cmgCall then
              cmgCall = ClearPedTasks
              textValue6 = arg1
              cmgCall(textValue6)
            end
            arg2.isPlayingAnims = false
          end
          -- Beginner: Start a separate FiveM thread so this code can run independently.
          numberValue16(hashValue)
        end
      end
    end
  end
end
numberValue4 = _ENV
numberValue5 = "AddEventHandler"
numberValue4 = numberValue4[numberValue5]
numberValue5 = "CMG:onClientSpawn"
function numberValue6(arg1, arg2)
  local arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2
  if arg2 then
    arg3 = TriggerServerEvent
    flag18 = "d136671bcb"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "d136671bcb".
    arg3(flag18)
    while true do
      arg3 = workValue
      if nil ~= arg3 then
        break
      end
      arg3 = Wait
      flag18 = 0
      arg3(flag18)
    end
    while true do
      arg3 = pairs
      flag18 = dataTable
      arg3, flag18, flag19, flag21 = arg3(flag18)
      for flag22, numberValue11 in arg3, flag18, flag19, flag21 do
        flag23 = numberValue11.shopNpcHandler
        if 0 ~= flag23 then
          numberValue16 = vector3Builder
          hashValue = flag23
          flag2 = numberValue11
          hashValue2 = flag22
          numberValue16(hashValue, flag2, hashValue2)
        end
      end
      arg3 = Wait
      flag18 = 1000
      arg3(flag18)
    end
  end
end
numberValue4(numberValue5, numberValue6)
numberValue4 = _ENV
numberValue5 = "Citizen"
numberValue4 = numberValue4[numberValue5]
numberValue5 = "CreateThread"
numberValue4 = numberValue4[numberValue5]
function numberValue5()
  local arg1, arg2, arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16
  while true do
    arg1 = dataTable
    if nil ~= arg1 then
      arg1 = pairs
      arg2 = dataTable
      arg1, arg2, arg3, flag18 = arg1(arg2)
      for flag19, flag21 in arg1, arg2, arg3, flag18 do
        flag22 = flag21.distanceToPlayer
        if flag22 < 10.0 then
          flag22 = flag21.insideStore
          if not flag22 then
            flag22 = PlayPedAmbientSpeechNative
            numberValue11 = flag21.shopNpcHandler
            flag23 = "SHOP_GREET"
            numberValue16 = "SPEECH_PARAMS_FORCE"
            flag22(numberValue11, flag23, numberValue16)
          end
        end
        flag22 = flag21.distanceToPlayer
        if flag22 < 10.0 then
          flag22 = dataTable
          flag22 = flag22[flag19]
          flag22.insideStore = true
        else
          flag22 = dataTable
          flag22 = flag22[flag19]
          flag22.insideStore = false
        end
      end
    end
    arg1 = Wait
    arg2 = 500
    arg1(arg2)
  end
end
numberValue4(numberValue5)
numberValue4 = {}
function numberValue5(arg1)
  local arg2, arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6, flag8
  workValue = arg1
  arg2 = pairs
  arg3 = numberValue4
  arg2, arg3, flag18, flag19 = arg2(arg3)
  for flag21, flag22 in arg2, arg3, flag18, flag19 do
    if nil ~= flag22 then
      numberValue11 = tCMG
      numberValue11 = numberValue11.removeBlip
      flag23 = flag22
      numberValue11(flag23)
    end
  end
  arg2 = {}
  numberValue4 = arg2
  arg2 = pairs
  arg3 = workValue
  arg2, arg3, flag18, flag19 = arg2(arg3)
  for flag21, flag22 in arg2, arg3, flag18, flag19 do
    numberValue11 = flag22.position
    flag23 = 0
    numberValue16 = flag22.beingrobbed
    if true == numberValue16 then
      numberValue16 = tCMG
      numberValue16 = numberValue16.addBlip
      hashValue = numberValue11.x
      flag2 = numberValue11.y
      hashValue2 = numberValue11.z
      hashValue3 = 52
      flag6 = 1
      flag8 = "Robbable Store [BEING ROBBED]"
      numberValue16 = numberValue16(hashValue, flag2, hashValue2, hashValue3, flag6, flag8)
      flag23 = numberValue16
    else
      numberValue16 = tCMG
      numberValue16 = numberValue16.addBlip
      hashValue = numberValue11.x
      flag2 = numberValue11.y
      hashValue2 = numberValue11.z
      hashValue3 = 52
      flag6 = 2
      flag8 = "Robbable Store"
      numberValue16 = numberValue16(hashValue, flag2, hashValue2, hashValue3, flag6, flag8)
      flag23 = numberValue16
    end
    numberValue16 = numberValue4
    numberValue16[flag21] = flag23
  end
end
numberValue6 = _ENV
numberValue7 = "RegisterNetEvent"
numberValue6 = numberValue6[numberValue7]
numberValue7 = "b598315839"
function numberValue8(arg1)
  local arg2, arg3
  arg2 = numberValue5
  arg3 = arg1
  arg2(arg3)
end
numberValue6(numberValue7, numberValue8)
numberValue6 = _ENV
numberValue7 = "Citizen"
numberValue6 = numberValue6[numberValue7]
numberValue7 = "CreateThread"
numberValue6 = numberValue6[numberValue7]
function numberValue7()
  local arg1, arg2, arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6, flag8, numberValue2, numberValue3, flag9, flag10, flag11, flag12, flag13, flag14, flag15, flag16, flag17
  arg1 = pairs
  arg2 = dataTable
  arg1, arg2, arg3, flag18 = arg1(arg2)
  for flag19, flag21 in arg1, arg2, arg3, flag18 do
    flag22 = CMG
    flag22 = flag22.loadModel
    numberValue11 = flag21.shopNpcModel
    flag22 = flag22(numberValue11)
    numberValue11 = CreatePed
    flag23 = 26
    numberValue16 = flag22
    hashValue = flag21.shopNpcPosition
    hashValue = hashValue.x
    flag2 = flag21.shopNpcPosition
    flag2 = flag2.y
    hashValue2 = flag21.shopNpcPosition
    hashValue2 = hashValue2.z
    hashValue3 = flag21.shopNpcHeading
    flag6 = false
    flag8 = true
    -- Beginner: result below is pedEntity.
    numberValue11 = numberValue11(flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6, flag8)
    flag23 = dataTable
    flag23 = flag23[flag19]
    flag23.shopNpcHandler = numberValue11
    flag23 = SetModelAsNoLongerNeeded
    numberValue16 = flag22
    flag23(numberValue16)
    flag23 = SetEntityAsMissionEntity
    numberValue16 = numberValue11
    hashValue = true
    flag2 = true
    flag23(numberValue16, hashValue, flag2)
    flag23 = SetPedHearingRange
    numberValue16 = numberValue11
    hashValue = 0.0
    flag23(numberValue16, hashValue)
    flag23 = SetPedSeeingRange
    numberValue16 = numberValue11
    hashValue = 0.0
    flag23(numberValue16, hashValue)
    flag23 = SetPedAlertness
    numberValue16 = numberValue11
    hashValue = 0.0
    flag23(numberValue16, hashValue)
    flag23 = SetPedFleeAttributes
    numberValue16 = numberValue11
    hashValue = 0
    flag2 = false
    flag23(numberValue16, hashValue, flag2)
    flag23 = SetBlockingOfNonTemporaryEvents
    numberValue16 = numberValue11
    hashValue = true
    flag23(numberValue16, hashValue)
    flag23 = SetPedCombatAttributes
    numberValue16 = numberValue11
    hashValue = 46
    flag2 = true
    flag23(numberValue16, hashValue, flag2)
    flag23 = SetPedFleeAttributes
    numberValue16 = numberValue11
    hashValue = 0
    flag2 = false
    flag23(numberValue16, hashValue, flag2)
    flag23 = CMG
    flag23 = flag23.loadModel
    numberValue16 = flag21.prop_safe
    flag23 = flag23(numberValue16)
    numberValue16 = CMG
    numberValue16 = numberValue16.loadModel
    hashValue = flag21.prop_door
    numberValue16 = numberValue16(hashValue)
    hashValue = CMG
    hashValue = hashValue.loadModel
    flag2 = flag21.money_prop
    hashValue = hashValue(flag2)
    flag2 = CMG
    flag2 = flag2.loadModel
    hashValue2 = flag21.money_prop2
    flag2 = flag2(hashValue2)
    hashValue2 = CMG
    hashValue2 = hashValue2.loadModel
    hashValue3 = flag21.money_prop3
    hashValue2 = hashValue2(hashValue3)
    hashValue3 = CMG
    hashValue3 = hashValue3.loadModel
    flag6 = flag21.money_prop4
    hashValue3 = hashValue3(flag6)
    flag6 = CreateObject
    flag8 = flag23
    numberValue2 = flag21.safePosition
    numberValue2 = numberValue2.x
    numberValue3 = flag21.safePosition
    numberValue3 = numberValue3.y
    flag9 = flag21.safePosition
    flag9 = flag9.z
    flag9 = flag9 - 0.8
    flag10 = false
    flag11 = false
    flag12 = true
    -- Beginner: result below is objectEntity.
    flag6 = flag6(flag8, numberValue2, numberValue3, flag9, flag10, flag11, flag12)
    flag8 = dataTable
    flag8 = flag8[flag19]
    flag8.safeHandler = flag6
    flag8 = SetEntityHeading
    numberValue2 = flag6
    numberValue3 = dataTable
    numberValue3 = numberValue3[flag19]
    numberValue3 = numberValue3.safeHeading
    -- Beginner: Change the direction an entity is facing.
    flag8(numberValue2, numberValue3)
    flag8 = SetEntityInvincible
    numberValue2 = flag6
    numberValue3 = true
    flag8(numberValue2, numberValue3)
    flag8 = FreezeEntityPosition
    numberValue2 = flag6
    numberValue3 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    flag8(numberValue2, numberValue3)
    flag8 = CreateObject
    numberValue2 = numberValue16
    numberValue3 = flag21.safePosition
    numberValue3 = numberValue3.x
    flag9 = flag21.safePosition
    flag9 = flag9.y
    flag10 = flag21.safePosition
    flag10 = flag10.z
    flag10 = flag10 - 0.7
    flag11 = false
    flag12 = false
    flag13 = true
    -- Beginner: result below is objectEntity.
    flag8 = flag8(numberValue2, numberValue3, flag9, flag10, flag11, flag12, flag13)
    numberValue2 = dataTable
    numberValue2 = numberValue2[flag19]
    numberValue2.doorHandler = flag8
    numberValue2 = SetEntityHeading
    numberValue3 = flag8
    flag9 = dataTable
    flag9 = flag9[flag19]
    flag9 = flag9.safeHeading
    -- Beginner: Change the direction an entity is facing.
    numberValue2(numberValue3, flag9)
    numberValue2 = SetEntityInvincible
    numberValue3 = flag8
    flag9 = true
    numberValue2(numberValue3, flag9)
    numberValue2 = FreezeEntityPosition
    numberValue3 = flag8
    flag9 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    numberValue2(numberValue3, flag9)
    numberValue2 = CreateObject
    numberValue3 = hashValue
    flag9 = flag21.moneyPos
    flag9 = flag9.x
    flag10 = flag21.moneyPos
    flag10 = flag10.y
    flag11 = flag21.moneyPos
    flag11 = flag11.z
    flag12 = false
    flag13 = false
    flag14 = true
    -- Beginner: result below is objectEntity.
    numberValue2 = numberValue2(numberValue3, flag9, flag10, flag11, flag12, flag13, flag14)
    numberValue3 = dataTable
    numberValue3 = numberValue3[flag19]
    numberValue3.moneyHandler = numberValue2
    numberValue3 = SetEntityHeading
    flag9 = numberValue2
    flag10 = dataTable
    flag10 = flag10[flag19]
    flag10 = flag10.moneyHeading
    -- Beginner: Change the direction an entity is facing.
    numberValue3(flag9, flag10)
    numberValue3 = SetEntityInvincible
    flag9 = numberValue2
    flag10 = true
    numberValue3(flag9, flag10)
    numberValue3 = FreezeEntityPosition
    flag9 = numberValue2
    flag10 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    numberValue3(flag9, flag10)
    numberValue3 = CreateObject
    flag9 = flag2
    flag10 = flag21.moneyPos2
    flag10 = flag10.x
    flag11 = flag21.moneyPos2
    flag11 = flag11.y
    flag12 = flag21.moneyPos2
    flag12 = flag12.z
    flag13 = false
    flag14 = false
    flag15 = true
    -- Beginner: result below is objectEntity.
    numberValue3 = numberValue3(flag9, flag10, flag11, flag12, flag13, flag14, flag15)
    flag9 = dataTable
    flag9 = flag9[flag19]
    flag9.moneyHandler2 = numberValue3
    flag9 = SetEntityHeading
    flag10 = numberValue3
    flag11 = dataTable
    flag11 = flag11[flag19]
    flag11 = flag11.moneyHeading2
    -- Beginner: Change the direction an entity is facing.
    flag9(flag10, flag11)
    flag9 = SetEntityInvincible
    flag10 = numberValue3
    flag11 = true
    flag9(flag10, flag11)
    flag9 = FreezeEntityPosition
    flag10 = numberValue3
    flag11 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    flag9(flag10, flag11)
    flag9 = CreateObject
    flag10 = hashValue2
    flag11 = flag21.moneyPos3
    flag11 = flag11.x
    flag12 = flag21.moneyPos3
    flag12 = flag12.y
    flag13 = flag21.moneyPos3
    flag13 = flag13.z
    flag14 = false
    flag15 = false
    flag16 = true
    -- Beginner: result below is objectEntity.
    flag9 = flag9(flag10, flag11, flag12, flag13, flag14, flag15, flag16)
    flag10 = dataTable
    flag10 = flag10[flag19]
    flag10.moneyHandler3 = flag9
    flag10 = SetEntityHeading
    flag11 = flag9
    flag12 = dataTable
    flag12 = flag12[flag19]
    flag12 = flag12.moneyHeading3
    -- Beginner: Change the direction an entity is facing.
    flag10(flag11, flag12)
    flag10 = SetEntityInvincible
    flag11 = flag9
    flag12 = true
    flag10(flag11, flag12)
    flag10 = FreezeEntityPosition
    flag11 = flag9
    flag12 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    flag10(flag11, flag12)
    flag10 = CreateObject
    flag11 = hashValue3
    flag12 = flag21.moneyPos4
    flag12 = flag12.x
    flag13 = flag21.moneyPos4
    flag13 = flag13.y
    flag14 = flag21.moneyPos4
    flag14 = flag14.z
    flag15 = false
    flag16 = false
    flag17 = true
    -- Beginner: result below is objectEntity.
    flag10 = flag10(flag11, flag12, flag13, flag14, flag15, flag16, flag17)
    flag11 = dataTable
    flag11 = flag11[flag19]
    flag11.moneyHandler4 = flag10
    flag11 = SetEntityHeading
    flag12 = flag10
    flag13 = dataTable
    flag13 = flag13[flag19]
    flag13 = flag13.moneyHeading4
    -- Beginner: Change the direction an entity is facing.
    flag11(flag12, flag13)
    flag11 = SetEntityInvincible
    flag12 = flag10
    flag13 = true
    flag11(flag12, flag13)
    flag11 = FreezeEntityPosition
    flag12 = flag10
    flag13 = true
    -- Beginner: Freeze or unfreeze an entity in place.
    flag11(flag12, flag13)
    flag11 = SetModelAsNoLongerNeeded
    flag12 = flag23
    flag11(flag12)
    flag11 = SetModelAsNoLongerNeeded
    flag12 = numberValue16
    flag11(flag12)
    flag11 = SetModelAsNoLongerNeeded
    flag12 = hashValue
    flag11(flag12)
    flag11 = SetModelAsNoLongerNeeded
    flag12 = flag2
    flag11(flag12)
    flag11 = SetModelAsNoLongerNeeded
    flag12 = hashValue2
    flag11(flag12)
    flag11 = SetModelAsNoLongerNeeded
    flag12 = hashValue3
    flag11(flag12)
  end
  while true do
    arg1 = GetEntityCoords
    arg2 = CMG
    arg2 = arg2.getPlayerPed
    arg2, arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6, flag8, numberValue2, numberValue3, flag9, flag10, flag11, flag12, flag13, flag14, flag15, flag16, flag17 = arg2()
    -- Beginner: result below is entityCoords.
    arg1 = arg1(arg2, arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6, flag8, numberValue2, numberValue3, flag9, flag10, flag11, flag12, flag13, flag14, flag15, flag16, flag17)
    arg2 = pairs
    arg3 = dataTable
    arg2, arg3, flag18, flag19 = arg2(arg3)
    for flag21, flag22 in arg2, arg3, flag18, flag19 do
      numberValue11 = flag22.safePosition
      numberValue11 = arg1 - numberValue11
      numberValue11 = #numberValue11
      flag22.distanceToPlayer = numberValue11
    end
    arg2 = Wait
    arg3 = 250
    arg2(arg3)
  end
end
numberValue6(numberValue7)
numberValue6 = true
numberValue7 = 0
numberValue8 = 3000
function workValue2()
  local arg1, arg2, arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue
  arg1 = numberValue6
  if not arg1 then
    return
  end
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = pairs
  arg3 = dataTable
  arg2, arg3, flag18, flag19 = arg2(arg3)
  for flag21, flag22 in arg2, arg3, flag18, flag19 do
    numberValue11 = flag22.distanceToPlayer
    if numberValue11 < 10.0 then
      numberValue11 = flag22.shopNpcHandler
      if 0 ~= numberValue11 then
        flag23 = IsPlayerFreeAimingAtEntity
        numberValue16 = PlayerId
        -- Beginner: result below is localPlayerIndex.
        numberValue16 = numberValue16()
        hashValue = numberValue11
        flag23 = flag23(numberValue16, hashValue)
        if flag23 then
          flag23 = HasEntityClearLosToEntityInFront
          numberValue16 = arg1
          hashValue = numberValue11
          flag23 = flag23(numberValue16, hashValue)
          if flag23 then
            flag23 = IsPedDeadOrDying
            numberValue16 = numberValue11
            hashValue = false
            flag23 = flag23(numberValue16, hashValue)
            if not flag23 then
              flag23 = GetEntityCoords
              numberValue16 = arg1
              -- Beginner: result below is entityCoords.
              flag23 = flag23(numberValue16)
              numberValue16 = GetEntityCoords
              hashValue = numberValue11
              -- Beginner: result below is entityCoords.
              numberValue16 = numberValue16(hashValue)
              flag23 = flag23 - numberValue16
              flag23 = #flag23
              if flag23 <= 5.0 then
                flag23 = flag4
                if not flag23 then
                  flag23 = GetSelectedPedWeapon
                  numberValue16 = CMG
                  numberValue16 = numberValue16.getPlayerPed
                  numberValue16, hashValue = numberValue16()
                  -- Beginner: result below is weaponHash.
                  flag23 = flag23(numberValue16, hashValue)
                  numberValue16 = GetHashKey
                  hashValue = "WEAPON_UNARMED"
                  -- Beginner: result below is hash.
                  numberValue16 = numberValue16(hashValue)
                  if flag23 == numberValue16 then
                    flag23 = GetGameTimer
                    -- Beginner: result below is gameTimeMs.
                    flag23 = flag23()
                    numberValue16 = numberValue7
                    numberValue16 = flag23 - numberValue16
                    hashValue = numberValue8
                    if numberValue16 >= hashValue then
                      numberValue7 = flag23
                      numberValue16 = tCMG
                      numberValue16 = numberValue16.notify
                      hashValue = "~r~You need a weapon in your hands to rob this store!"
                      -- Beginner: Show a notification to the player.
                      numberValue16(hashValue)
                    end
                  else
                    flag23 = TriggerServerEvent
                    numberValue16 = "9feca19ddf"
                    hashValue = flag21
                    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9feca19ddf".
                    flag23(numberValue16, hashValue)
                    flag23 = false
                    numberValue6 = flag23
                    flag23 = SetTimeout
                    numberValue16 = 40000
                    function hashValue()
                      local coords, cmgCall
                      coords = true
                      numberValue6 = coords
                    end
                    flag23(numberValue16, hashValue)
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
workValue3 = _ENV
cmgCall2 = "CMG"
workValue3 = workValue3[cmgCall2]
cmgCall2 = "createThreadOnTick"
workValue3 = workValue3[cmgCall2]
cmgCall2 = workValue2
eventHandlerRegistration = "Store Robbery"
workValue3(cmgCall2, eventHandlerRegistration)
workValue3 = _ENV
cmgCall2 = "RegisterNetEvent"
workValue3 = workValue3[cmgCall2]
cmgCall2 = "95dec7b268"
function eventHandlerRegistration(arg1)
  local arg2
  arg2 = dataTable
  arg2 = arg2[arg1]
  arg2.robberyInProgress = true
end
workValue3(cmgCall2, eventHandlerRegistration)
workValue3 = _ENV
cmgCall2 = "RegisterNetEvent"
workValue3 = workValue3[cmgCall2]
cmgCall2 = "880648a891"
function eventHandlerRegistration(arg1)
  local arg2, arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6
  arg2 = dataTable
  arg2 = arg2[arg1]
  arg2 = arg2.shopNpcHandler
  arg3 = dataTable
  arg3 = arg3[arg1]
  arg3 = arg3.shopNpcPosition
  flag18 = SetEntityCoords
  flag19 = arg2
  flag21 = arg3.x
  flag22 = arg3.y
  numberValue11 = arg3.z
  flag23 = true
  numberValue16 = false
  hashValue = false
  flag2 = false
  -- Beginner: Move/teleport an entity to new coordinates.
  flag18(flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2)
  flag18 = SetEntityHeading
  flag19 = arg2
  flag21 = dataTable
  flag21 = flag21[arg1]
  flag21 = flag21.shopNpcHeading
  -- Beginner: Change the direction an entity is facing.
  flag18(flag19, flag21)
  flag18 = CMG
  flag18 = flag18.loadAnimDict
  flag19 = "mp_am_hold_up"
  -- Beginner: Load a GTA animation dictionary before using it.
  flag18(flag19)
  flag18 = TaskPlayAnim
  flag19 = arg2
  flag21 = "mp_am_hold_up"
  flag22 = "holdup_victim_20s"
  numberValue11 = 8.0
  flag23 = -8.0
  numberValue16 = -1
  hashValue = 2
  flag2 = 0
  hashValue2 = false
  hashValue3 = false
  flag6 = false
  -- Beginner: Play an animation on a ped.
  flag18(flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6)
end
workValue3(cmgCall2, eventHandlerRegistration)
workValue3 = _ENV
cmgCall2 = "RegisterNetEvent"
workValue3 = workValue3[cmgCall2]
cmgCall2 = "0b120db34a"
function eventHandlerRegistration(arg1, arg2)
  local arg3, flag18, flag19, flag21, flag22
  flag4 = arg1
  arg3 = GetEntityCoords
  flag18 = CMG
  flag18 = flag18.getPlayerPed
  flag18, flag19, flag21, flag22 = flag18()
  -- Beginner: result below is entityCoords.
  arg3 = arg3(flag18, flag19, flag21, flag22)
  while true do
    flag18 = flag4
    if not flag18 then
      break
    end
    flag18 = GetEntityCoords
    flag19 = CMG
    flag19 = flag19.getPlayerPed
    flag19, flag21, flag22 = flag19()
    -- Beginner: result below is entityCoords.
    flag18 = flag18(flag19, flag21, flag22)
    flag19 = arg3 - flag18
    flag19 = #flag19
    if flag19 > 20 then
      flag19 = TriggerServerEvent
      flag21 = "91fa00b324"
      flag22 = arg2
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "91fa00b324".
      flag19(flag21, flag22)
      flag19 = dataTable
      flag19 = flag19[arg2]
      flag19.robberyInProgress = false
      break
    end
    flag19 = Wait
    flag21 = 100
    flag19(flag21)
  end
end
workValue3(cmgCall2, eventHandlerRegistration)
workValue3 = _ENV
cmgCall2 = "RegisterNetEvent"
workValue3 = workValue3[cmgCall2]
cmgCall2 = "28bff1b311"
function eventHandlerRegistration(arg1)
  local arg2, arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2
  arg2 = dataTable
  arg2 = arg2[arg1]
  arg2.robberyInProgress = false
  arg2 = dataTable
  arg2 = arg2[arg1]
  arg2 = arg2.shopNpcHandler
  arg3 = DoesEntityExist
  flag18 = arg2
  arg3 = arg3(flag18)
  if arg3 then
    arg3 = DeleteEntity
    flag18 = arg2
    -- Beginner: Delete a GTA entity.
    arg3(flag18)
  end
  arg3 = CMG
  arg3 = arg3.loadModel
  flag18 = dataTable
  flag18 = flag18[arg1]
  flag18 = flag18.shopNpcModel
  arg3 = arg3(flag18)
  flag18 = CreatePed
  flag19 = 26
  flag21 = arg3
  flag22 = dataTable
  flag22 = flag22[arg1]
  flag22 = flag22.shopNpcPosition
  flag22 = flag22.x
  numberValue11 = dataTable
  numberValue11 = numberValue11[arg1]
  numberValue11 = numberValue11.shopNpcPosition
  numberValue11 = numberValue11.y
  flag23 = dataTable
  flag23 = flag23[arg1]
  flag23 = flag23.shopNpcPosition
  flag23 = flag23.z
  numberValue16 = dataTable
  numberValue16 = numberValue16[arg1]
  numberValue16 = numberValue16.shopNpcHeading
  hashValue = false
  flag2 = true
  -- Beginner: result below is pedEntity.
  flag18 = flag18(flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2)
  flag19 = dataTable
  flag19 = flag19[arg1]
  flag19.shopNpcHandler = flag18
  flag19 = SetModelAsNoLongerNeeded
  flag21 = arg3
  flag19(flag21)
  flag19 = SetEntityAsMissionEntity
  flag21 = flag18
  flag22 = true
  numberValue11 = true
  flag19(flag21, flag22, numberValue11)
  flag19 = SetPedHearingRange
  flag21 = flag18
  flag22 = 0.0
  flag19(flag21, flag22)
  flag19 = SetPedSeeingRange
  flag21 = flag18
  flag22 = 0.0
  flag19(flag21, flag22)
  flag19 = SetPedAlertness
  flag21 = flag18
  flag22 = 0.0
  flag19(flag21, flag22)
  flag19 = SetPedFleeAttributes
  flag21 = flag18
  flag22 = 0
  numberValue11 = false
  flag19(flag21, flag22, numberValue11)
  flag19 = SetBlockingOfNonTemporaryEvents
  flag21 = flag18
  flag22 = true
  flag19(flag21, flag22)
  flag19 = SetPedCombatAttributes
  flag21 = flag18
  flag22 = 46
  numberValue11 = true
  flag19(flag21, flag22, numberValue11)
  flag19 = SetPedFleeAttributes
  flag21 = flag18
  flag22 = 0
  numberValue11 = false
  flag19(flag21, flag22, numberValue11)
end
workValue3(cmgCall2, eventHandlerRegistration)
workValue3 = _ENV
cmgCall2 = "Citizen"
workValue3 = workValue3[cmgCall2]
cmgCall2 = "CreateThread"
workValue3 = workValue3[cmgCall2]
function cmgCall2()
  local arg1, arg2, arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16
  while true do
    arg1 = pairs
    arg2 = dataTable
    arg1, arg2, arg3, flag18 = arg1(arg2)
    for flag19, flag21 in arg1, arg2, arg3, flag18 do
      flag22 = flag21.distanceToPlayer
      if flag22 < 2.0 then
        flag22 = textValue2
        if "complete" == flag22 then
          flag22 = dataTable2
          numberValue11 = "Press ~INPUT_CONTEXT~ to grab the money!"
          flag22(numberValue11)
          flag22 = IsControlJustReleased
          numberValue11 = 1
          flag23 = 51
          flag22 = flag22(numberValue11, flag23)
          if flag22 then
            flag22 = DeleteObject
            numberValue11 = flag21.moneyHandler
            flag22(numberValue11)
            flag22 = DeleteObject
            numberValue11 = flag21.moneyHandler2
            flag22(numberValue11)
            flag22 = DeleteObject
            numberValue11 = flag21.moneyHandler3
            flag22(numberValue11)
            flag22 = DeleteObject
            numberValue11 = flag21.moneyHandler4
            flag22(numberValue11)
            flag22 = TriggerServerEvent
            numberValue11 = "35457da4c0"
            flag23 = flag19
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "35457da4c0".
            flag22(numberValue11, flag23)
            flag22 = dataTable
            flag22 = flag22[flag19]
            flag22.robberyInProgress = false
            flag22 = "setup"
            textValue2 = flag22
            flag22 = Wait
            numberValue11 = 5000
            flag22(numberValue11)
            flag22 = TriggerServerEvent
            numberValue11 = "1203341535"
            flag23 = flag19
            -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "1203341535".
            flag22(numberValue11, flag23)
            flag22 = CMG
            flag22 = flag22.setPlayerCombatTimer
            numberValue11 = 60
            flag23 = false
            flag22(numberValue11, flag23)
          end
        else
          flag22 = flag21.robberyInProgress
          if flag22 then
            flag22 = dataTable2
            numberValue11 = "Press ~INPUT_CONTEXT~ to start cracking the safe!"
            flag22(numberValue11)
            flag22 = IsControlJustReleased
            numberValue11 = 1
            flag23 = 51
            flag22 = flag22(numberValue11, flag23)
            if flag22 then
              flag22 = tCMG
              flag22 = flag22.notify
              numberValue11 = "~g~Started cracking safe.."
              -- Beginner: Show a notification to the player.
              flag22(numberValue11)
              flag22 = LoadResources
              flag22()
              flag22 = math
              flag22 = flag22.randomseed
              numberValue11 = GetGameTimer
              numberValue11, flag23, numberValue16 = numberValue11()
              flag22(numberValue11, flag23, numberValue16)
              flag22 = math
              flag22 = flag22.random
              numberValue11 = 0
              flag23 = 100
              flag22 = flag22(numberValue11, flag23)
              numberValue11 = 3.6 * flag22
              workValue7 = numberValue11
              numberValue11 = textValue
              textValue7 = numberValue11
              numberValue11 = true
              flag5 = numberValue11
              numberValue11 = "setup"
              textValue2 = numberValue11
              numberValue11 = RunMiniGame
              flag23 = flag19
              numberValue16 = flag21.safeHandler
              numberValue11(flag23, numberValue16)
              numberValue11 = CMG
              numberValue11 = numberValue11.setPlayerCombatTimer
              flag23 = 60
              numberValue16 = false
              numberValue11(flag23, numberValue16)
            end
          end
        end
      end
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
workValue3(cmgCall2)
function workValue3()
  local arg1, arg2, arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue
  arg1 = RequestScaleformMovie
  arg2 = "instructional_buttons"
  -- Beginner: result below is scaleformHandle.
  arg1 = arg1(arg2)
  arg2 = HasScaleformMovieLoaded
  arg3 = arg1
  arg2 = arg2(arg3)
  if not arg2 then
    while true do
      arg2 = HasScaleformMovieLoaded
      arg3 = arg1
      arg2 = arg2(arg3)
      if arg2 then
        break
      end
      arg2 = Wait
      arg3 = 0
      arg2(arg3)
    end
  end
  arg2 = {}
  arg3 = {}
  arg3.label = "Attempt combination"
  arg3.button = "~INPUT_CELLPHONE_UP~"
  flag18 = {}
  flag18.label = "Turn combination right"
  flag18.button = "~INPUT_CELLPHONE_RIGHT~"
  flag19 = {}
  flag19.label = "Turn combination left"
  flag19.button = "~INPUT_CELLPHONE_LEFT~"
  flag21 = {}
  flag21.label = "Cancel"
  flag21.button = "~INPUT_CELLPHONE_CANCEL~"
  arg2[1] = arg3
  arg2[2] = flag18
  arg2[3] = flag19
  arg2[4] = flag21
  arg3 = BeginScaleformMovieMethod
  flag18 = arg1
  flag19 = "CLEAR_ALL"
  arg3(flag18, flag19)
  arg3 = BeginScaleformMovieMethod
  flag18 = arg1
  flag19 = "TOGGLE_MOUSE_BUTTONS"
  arg3(flag18, flag19)
  arg3 = ScaleformMovieMethodAddParamBool
  flag18 = false
  arg3(flag18)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = ipairs
  flag18 = arg2
  arg3, flag18, flag19, flag21 = arg3(flag18)
  for flag22, numberValue11 in arg3, flag18, flag19, flag21 do
    flag23 = BeginScaleformMovieMethod
    numberValue16 = arg1
    hashValue = "SET_DATA_SLOT"
    flag23(numberValue16, hashValue)
    flag23 = ScaleformMovieMethodAddParamInt
    numberValue16 = flag22 - 1
    flag23(numberValue16)
    flag23 = _ENV
    numberValue16 = "ScaleformMovieMethodAddParamPlayerNameString"
    flag23 = flag23[numberValue16]
    numberValue16 = numberValue11.button
    flag23(numberValue16)
    flag23 = _ENV
    numberValue16 = "ScaleformMovieMethodAddParamTextureNameString"
    flag23 = flag23[numberValue16]
    numberValue16 = numberValue11.label
    flag23(numberValue16)
    flag23 = EndScaleformMovieMethod
    flag23()
  end
  arg3 = BeginScaleformMovieMethod
  flag18 = arg1
  flag19 = "DRAW_INSTRUCTIONAL_BUTTONS"
  arg3(flag18, flag19)
  arg3 = ScaleformMovieMethodAddParamInt
  flag18 = -1
  arg3(flag18)
  arg3 = EndScaleformMovieMethod
  arg3()
  arg3 = DrawScaleformMovieFullscreen
  flag18 = arg1
  flag19 = 255
  flag21 = 255
  flag22 = 255
  numberValue11 = 255
  flag23 = 0
  arg3(flag18, flag19, flag21, flag22, numberValue11, flag23)
end
cmgCall2 = _ENV
eventHandlerRegistration = "AddEventHandler"
cmgCall2 = cmgCall2[eventHandlerRegistration]
eventHandlerRegistration = "onResourceStop"
function textValue4(arg1)
  local arg2, arg3, flag18, flag19, flag21, flag22, numberValue11, flag23
  arg2 = GetCurrentResourceName
  arg2 = arg2()
  if arg1 == arg2 then
    arg2 = pairs
    arg3 = dataTable
    arg2, arg3, flag18, flag19 = arg2(arg3)
    for flag21, flag22 in arg2, arg3, flag18, flag19 do
      numberValue11 = DeleteObject
      flag23 = flag22.safeHandler
      numberValue11(flag23)
      numberValue11 = DeleteObject
      flag23 = flag22.doorHandler
      numberValue11(flag23)
      numberValue11 = DeleteObject
      flag23 = flag22.moneyHandler
      numberValue11(flag23)
      numberValue11 = DeleteObject
      flag23 = flag22.moneyHandler2
      numberValue11(flag23)
      numberValue11 = DeleteObject
      flag23 = flag22.moneyHandler3
      numberValue11(flag23)
      numberValue11 = DeleteObject
      flag23 = flag22.moneyHandler4
      numberValue11(flag23)
    end
  end
end
cmgCall2(eventHandlerRegistration, textValue4)
function cmgCall2(arg1)
  local arg2, arg3, flag18, flag19, flag21, flag22, numberValue11, flag23
  arg2 = {}
  arg3 = math
  arg3 = arg3.randomseed
  flag18 = GetGameTimer
  flag18, flag19, flag21, flag22, numberValue11, flag23 = flag18()
  arg3(flag18, flag19, flag21, flag22, numberValue11, flag23)
  arg3 = 1
  flag18 = arg1
  flag19 = 1
  for flag21 = arg3, flag18, flag19 do
    flag22 = math
    flag22 = flag22.random
    numberValue11 = 1
    flag23 = 99
    flag22 = flag22(numberValue11, flag23)
    arg2[flag21] = flag22
  end
  return arg2
end
eventHandlerRegistration = _ENV
textValue4 = "RunMiniGame"
function workValue4(arg1, arg2)
  local arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2
  arg3 = 1
  flag18 = cmgCall2
  flag19 = 10
  flag18 = flag18(flag19)
  flag19 = InitSafeLocks
  flag21 = flag18
  flag19 = flag19(flag21)
  while true do
    flag21 = flag5
    if not flag21 then
      break
    end
    flag21 = textValue2
    if "setup" == flag21 then
      flag21 = GetEntityHeading
      flag22 = arg2
      -- Beginner: result below is heading.
      flag21 = flag21(flag22)
      workValue6 = flag21
      flag21 = GetSafeDoorAnimOffsetPosition
      flag22 = GetEntityCoords
      numberValue11 = arg2
      -- Beginner: result below is entityCoords.
      flag22 = flag22(numberValue11)
      numberValue11 = workValue6
      flag23 = "intro_dont_work"
      flag21 = flag21(flag22, numberValue11, flag23)
      workValue5 = flag21
      flag21 = PlaySafeCrackIntroAnim
      flag22 = workValue5
      numberValue11 = workValue6
      flag21(flag22, numberValue11)
      flag21 = GetSafeDoorAnimOffsetPosition
      flag22 = GetEntityCoords
      numberValue11 = arg2
      -- Beginner: result below is entityCoords.
      flag22 = flag22(numberValue11)
      numberValue11 = workValue6
      flag23 = "cracking"
      flag21 = flag21(flag22, numberValue11, flag23)
      workValue5 = flag21
    else
      flag21 = textValue2
      if "cracking" == flag21 then
        flag21 = workValue3
        flag21()
        flag21 = GetEntityHealth
        flag22 = CMG
        flag22 = flag22.getPlayerPed
        flag22, numberValue11, flag23, numberValue16, hashValue, flag2 = flag22()
        -- Beginner: result below is health.
        flag21 = flag21(flag22, numberValue11, flag23, numberValue16, hashValue, flag2)
        if not (flag21 <= 102) then
          flag22 = CMG
          flag22 = flag22.isHandcuffed
          flag22 = flag22()
          if not flag22 then
            goto flow_label_59
          end
        end
        flag22 = false
        flag5 = flag22
        goto flow_label_155
        ::flow_label_59::
        flag22 = HandleSafeDialMovement
        flag22()
        flag22 = GetCurrentSafeDialNumber
        numberValue11 = workValue7
        flag22 = flag22(numberValue11)
        numberValue11 = IsControlJustPressed
        flag23 = 0
        numberValue16 = 172
        numberValue11 = numberValue11(flag23, numberValue16)
        if numberValue11 then
          numberValue11 = flag18[arg3]
          if flag22 == numberValue11 then
            flag19[arg3] = false
            arg3 = arg3 + 1
            numberValue11 = ReleaseCurrentPin
            flag23 = flag19
            numberValue16 = arg3
            numberValue11(flag23, numberValue16)
            numberValue11 = IsSafeUnlocked
            flag23 = flag19
            numberValue16 = arg3
            numberValue11 = numberValue11(flag23, numberValue16)
            if numberValue11 then
              numberValue11 = EndMiniGame
              flag23 = arg1
              numberValue11(flag23)
              numberValue11 = "complete"
              textValue2 = numberValue11
              numberValue11 = false
              flag5 = numberValue11
              numberValue11 = ClearPedTasksImmediately
              flag23 = CMG
              flag23 = flag23.getPlayerPed
              flag23, numberValue16, hashValue, flag2 = flag23()
              numberValue11(flag23, numberValue16, hashValue, flag2)
            end
          else
            arg3 = 1
            numberValue11 = InitSafeLocks
            flag23 = flag18
            numberValue11 = numberValue11(flag23)
            flag19 = numberValue11
            numberValue11 = cmgCall2
            flag23 = 10
            numberValue11 = numberValue11(flag23)
            flag18 = numberValue11
            numberValue11 = PlaySoundFrontend
            flag23 = -1
            numberValue16 = "TUMBLER_RESET"
            hashValue = "SAFE_CRACK_SOUNDSET"
            flag2 = true
            numberValue11(flag23, numberValue16, hashValue, flag2)
            numberValue11 = HandleIncorrectMovement
            numberValue11()
            numberValue11 = "idle"
            textValue3 = numberValue11
            numberValue11 = textValue
            textValue7 = numberValue11
            numberValue11 = Wait
            flag23 = 3500
            numberValue11(flag23)
            numberValue11 = ClearPedTasksImmediately
            flag23 = CMG
            flag23 = flag23.getPlayerPed
            flag23, numberValue16, hashValue, flag2 = flag23()
            numberValue11(flag23, numberValue16, hashValue, flag2)
          end
        else
          numberValue11 = IsControlJustPressed
          flag23 = 0
          numberValue16 = 177
          numberValue11 = numberValue11(flag23, numberValue16)
          if numberValue11 then
            numberValue11 = false
            flag5 = numberValue11
            numberValue11 = ClearPedTasksImmediately
            flag23 = CMG
            flag23 = flag23.getPlayerPed
            flag23, numberValue16, hashValue, flag2 = flag23()
            numberValue11(flag23, numberValue16, hashValue, flag2)
          end
        end
        numberValue11 = textValue2
        if "complete" ~= numberValue11 then
          numberValue11 = GetDialProximityToTargetPin
          flag23 = flag22
          numberValue16 = flag18
          hashValue = arg3
          numberValue11 = numberValue11(flag23, numberValue16, hashValue)
          flag23 = SetDialSpriteShake
          numberValue16 = numberValue11
          flag23(numberValue16)
          flag23 = DrawSprites
          flag23()
        end
      end
    end
    ::flow_label_155::
    flag21 = Wait
    flag22 = 0
    flag21(flag22)
  end
  flag21 = RemoveAnimDict
  flag22 = "mini@safe_cracking"
  flag21(flag22)
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "GetSafeDoorAnimOffsetPosition"
function workValue4(arg1, arg2, arg3)
  local flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3
  flag18 = nil
  flag19 = nil
  flag21 = nil
  flag22 = nil
  if "intro" == arg3 then
    flag18 = 0.8
    flag19 = -0.35
    flag21 = -0.35
    flag22 = -0.8
  else
    flag18 = 0.53
    flag19 = -0.6
    flag21 = -0.6
    flag22 = -0.53
  end
  numberValue11 = math
  numberValue11 = numberValue11.sin
  flag23 = math
  flag23 = flag23.pi
  flag23 = arg2 * flag23
  flag23 = flag23 / 180
  numberValue11 = numberValue11(flag23)
  numberValue11 = flag18 * numberValue11
  flag23 = math
  flag23 = flag23.cos
  numberValue16 = math
  numberValue16 = numberValue16.pi
  numberValue16 = arg2 * numberValue16
  numberValue16 = numberValue16 / 180
  flag23 = flag23(numberValue16)
  flag23 = flag19 * flag23
  numberValue11 = numberValue11 + flag23
  flag23 = math
  flag23 = flag23.sin
  numberValue16 = math
  numberValue16 = numberValue16.pi
  numberValue16 = arg2 * numberValue16
  numberValue16 = numberValue16 / 180
  flag23 = flag23(numberValue16)
  flag23 = flag21 * flag23
  numberValue16 = math
  numberValue16 = numberValue16.cos
  hashValue = math
  hashValue = hashValue.pi
  hashValue = arg2 * hashValue
  hashValue = hashValue / 180
  numberValue16 = numberValue16(hashValue)
  numberValue16 = flag22 * numberValue16
  flag23 = flag23 + numberValue16
  numberValue16 = vector3
  hashValue = arg1.x
  hashValue = hashValue + numberValue11
  flag2 = arg1.y
  flag2 = flag2 + flag23
  hashValue2 = GetEntityCoords
  hashValue3 = CMG
  hashValue3 = hashValue3.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  hashValue3 = hashValue3()
  -- Beginner: result below is entityCoords.
  hashValue2 = hashValue2(hashValue3)
  hashValue2 = hashValue2.z
  return numberValue16(hashValue, flag2, hashValue2)
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "PlaySafeCrackIntroAnim"
function workValue4(arg1, arg2)
  local arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6, flag8, numberValue2, numberValue3, flag9, flag10, flag11
  arg3 = "mini@safe_cracking"
  flag18 = "step_into"
  flag19 = CMG
  flag19 = flag19.loadAnimDict
  flag21 = arg3
  -- Beginner: Load a GTA animation dictionary before using it.
  flag19(flag21)
  flag19 = TaskPlayAnimAdvanced
  flag21 = CMG
  flag21 = flag21.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  flag21 = flag21()
  flag22 = arg3
  numberValue11 = flag18
  flag23 = arg1.x
  numberValue16 = arg1.y
  hashValue = arg1.z
  flag2 = 0.0
  hashValue2 = 0.0
  hashValue3 = arg2
  flag6 = 8.0
  flag8 = 8.0
  numberValue2 = -1
  numberValue3 = 2
  flag9 = 0.7
  flag10 = 0
  flag11 = 0
  flag19(flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6, flag8, numberValue2, numberValue3, flag9, flag10, flag11)
  flag19 = RemoveAnimDict
  flag21 = arg3
  flag19(flag21)
  flag19 = Wait
  flag21 = 0
  flag19(flag21)
  flag19 = Wait
  flag21 = 1000
  flag19(flag21)
  flag19 = "cracking"
  textValue2 = flag19
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "HandleSafeDialMovement"
function workValue4()
  local arg1, arg2, arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6, flag8, numberValue2, numberValue3, flag9, flag10
  arg1 = CMG
  arg1 = arg1.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  arg1 = arg1()
  arg2 = "mini@safe_cracking"
  arg3 = ""
  flag18 = IsEntityPlayingAnim
  flag19 = arg1
  flag21 = arg2
  flag22 = "dial_turn_fail_3"
  numberValue11 = 3
  flag18 = flag18(flag19, flag21, flag22, numberValue11)
  if not flag18 then
    flag18 = IsEntityPlayingAnim
    flag19 = arg1
    flag21 = arg2
    flag22 = "dial_turn_fail_4"
    numberValue11 = 3
    flag18 = flag18(flag19, flag21, flag22, numberValue11)
    if not flag18 then
      goto flow_label_23
    end
  end
  return
  ::flow_label_23::
  flag18 = IsControlJustPressed
  flag19 = 0
  flag21 = 174
  flag18 = flag18(flag19, flag21)
  if flag18 then
    flag18 = 100
    numberValue13 = flag18
    flag18 = GetGameTimer
    -- Beginner: result below is gameTimeMs.
    flag18 = flag18()
    gameTime = flag18
    arg3 = "dial_turn_anti_normal"
    flag18 = RotateSafeDial
    flag19 = "rotation.anticlockwise"
    flag18(flag19)
  else
    flag18 = IsControlJustPressed
    flag19 = 0
    flag21 = 175
    flag18 = flag18(flag19, flag21)
    if flag18 then
      flag18 = 100
      numberValue13 = flag18
      flag18 = GetGameTimer
      -- Beginner: result below is gameTimeMs.
      flag18 = flag18()
      gameTime = flag18
      arg3 = "dial_turn_clock_normal"
      flag18 = RotateSafeDial
      flag19 = "rotation.clockwise"
      flag18(flag19)
    else
      flag18 = IsControlPressed
      flag19 = 0
      flag21 = 174
      flag18 = flag18(flag19, flag21)
      if flag18 then
        flag18 = gameTime
        flag19 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        flag19 = flag19()
        flag21 = numberValue13
        flag19 = flag19 - flag21
        if flag18 >= flag19 then
          return
        end
        flag18 = 10
        numberValue13 = flag18
        flag18 = GetGameTimer
        -- Beginner: result below is gameTimeMs.
        flag18 = flag18()
        gameTime = flag18
        arg3 = "dial_turn_anti_fast"
        flag18 = RotateSafeDial
        flag19 = "rotation.anticlockwise"
        flag18(flag19)
      else
        flag18 = IsControlPressed
        flag19 = 0
        flag21 = 175
        flag18 = flag18(flag19, flag21)
        if flag18 then
          flag18 = gameTime
          flag19 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          flag19 = flag19()
          flag21 = numberValue13
          flag19 = flag19 - flag21
          if flag18 >= flag19 then
            return
          end
          flag18 = 10
          numberValue13 = flag18
          flag18 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          flag18 = flag18()
          gameTime = flag18
          arg3 = "dial_turn_clock_fast"
          flag18 = RotateSafeDial
          flag19 = "rotation.clockwise"
          flag18(flag19)
        else
          flag18 = "rotation.idle"
          textValue3 = flag18
          flag18 = IsEntityPlayingAnim
          flag19 = arg1
          flag21 = arg2
          flag22 = "dial_turn_anti_normal"
          numberValue11 = 3
          flag18 = flag18(flag19, flag21, flag22, numberValue11)
          if not flag18 then
            flag18 = IsEntityPlayingAnim
            flag19 = arg1
            flag21 = arg2
            flag22 = "dial_turn_clock_normal"
            numberValue11 = 3
            flag18 = flag18(flag19, flag21, flag22, numberValue11)
            if not flag18 then
              flag18 = IsEntityPlayingAnim
              flag19 = arg1
              flag21 = arg2
              flag22 = "dial_turn_anti_fast"
              numberValue11 = 3
              flag18 = flag18(flag19, flag21, flag22, numberValue11)
              if not flag18 then
                flag18 = IsEntityPlayingAnim
                flag19 = arg1
                flag21 = arg2
                flag22 = "dial_turn_clock_fast"
                numberValue11 = 3
                flag18 = flag18(flag19, flag21, flag22, numberValue11)
                if not flag18 then
                  flag18 = IsEntityPlayingAnim
                  flag19 = arg1
                  flag21 = arg2
                  flag22 = "idle_base"
                  numberValue11 = 3
                  flag18 = flag18(flag19, flag21, flag22, numberValue11)
                  if not flag18 then
                    flag18 = IsEntityPlayingAnim
                    flag19 = arg1
                    flag21 = arg2
                    flag22 = "idle_heavy_breathe"
                    numberValue11 = 3
                    flag18 = flag18(flag19, flag21, flag22, numberValue11)
                    if not flag18 then
                      flag18 = IsEntityPlayingAnim
                      flag19 = arg1
                      flag21 = arg2
                      flag22 = "idle_look_around"
                      numberValue11 = 3
                      flag18 = flag18(flag19, flag21, flag22, numberValue11)
                      if not flag18 then
                        goto flow_label_164
                      end
                    end
                  end
                end
              end
            end
          end
          return
          ::flow_label_164::
          flag18 = GetGameTimer
          -- Beginner: result below is gameTimeMs.
          flag18 = flag18()
          flag18 = flag18 % 3
          flag19 = nil
          if 2 == flag18 then
            flag19 = "idle_heavy_breathe"
          elseif 1 == flag18 then
            flag19 = "idle_look_around"
          else
            flag19 = "idle_base"
          end
          arg3 = flag19
        end
      end
    end
  end
  if "" == arg3 or nil == arg3 then
    return
  end
  flag18 = CMG
  flag18 = flag18.loadAnimDict
  flag19 = arg2
  -- Beginner: Load a GTA animation dictionary before using it.
  flag18(flag19)
  flag18 = IsEntityPlayingAnim
  flag19 = CMG
  flag19 = flag19.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  flag19 = flag19()
  flag21 = arg2
  flag22 = arg3
  numberValue11 = 3
  flag18 = flag18(flag19, flag21, flag22, numberValue11)
  if not flag18 then
    flag18 = TaskPlayAnimAdvanced
    flag19 = CMG
    flag19 = flag19.getPlayerPed
    -- Beginner: result below is localPlayerPed.
    flag19 = flag19()
    flag21 = arg2
    flag22 = arg3
    numberValue11 = workValue5.x
    flag23 = workValue5.y
    numberValue16 = workValue5.z
    hashValue = 0.0
    flag2 = 0.0
    hashValue2 = workValue6
    hashValue3 = 8.0
    flag6 = 8.0
    flag8 = -1
    numberValue2 = 1
    numberValue3 = 1.0
    flag9 = 0
    flag10 = 0
    flag18(flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6, flag8, numberValue2, numberValue3, flag9, flag10)
  end
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "HandleIncorrectMovement"
function workValue4()
  local arg1, arg2, arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6, flag8, numberValue2, numberValue3, flag9
  arg1 = "mini@safe_cracking"
  arg2 = ""
  arg3 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg3 = arg3()
  arg3 = arg3 % 2
  if 0 == arg3 then
    arg2 = "dial_turn_fail_3"
  else
    arg2 = "dial_turn_fail_4"
  end
  arg3 = CMG
  arg3 = arg3.loadAnimDict
  flag18 = arg1
  -- Beginner: Load a GTA animation dictionary before using it.
  arg3(flag18)
  arg3 = TaskPlayAnimAdvanced
  flag18 = CMG
  flag18 = flag18.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  flag18 = flag18()
  flag19 = arg1
  flag21 = arg2
  flag22 = workValue5.x
  numberValue11 = workValue5.y
  flag23 = workValue5.z
  numberValue16 = 0.0
  hashValue = 0.0
  flag2 = workValue6
  hashValue2 = 8.0
  hashValue3 = 8.0
  flag6 = -1
  flag8 = 1
  numberValue2 = 1.0
  numberValue3 = 0
  flag9 = 0
  arg3(flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6, flag8, numberValue2, numberValue3, flag9)
  arg3 = RemoveAnimDict
  flag18 = arg1
  arg3(flag18)
  arg3 = "rotation.idle"
  textValue3 = arg3
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "ReleaseCurrentPin"
function workValue4(arg1, arg2)
  local arg3, flag18, flag19, flag21, flag22
  arg3 = textValue7
  if "rotation.anticlockwise" == arg3 then
    arg3 = "rotation.clockwise"
    textValue7 = arg3
  else
    arg3 = "rotation.anticlockwise"
    textValue7 = arg3
  end
  arg3 = IsSafeUnlocked
  flag18 = arg1
  flag19 = arg2
  arg3 = arg3(flag18, flag19)
  if arg3 then
    arg3 = PlaySoundFrontend
    flag18 = -1
    flag19 = "TUMBLER_PIN_FALL_FINAL"
    flag21 = "SAFE_CRACK_SOUNDSET"
    flag22 = true
    arg3(flag18, flag19, flag21, flag22)
  else
    arg3 = PlaySoundFrontend
    flag18 = -1
    flag19 = "TUMBLER_PIN_FALL"
    flag21 = "SAFE_CRACK_SOUNDSET"
    flag22 = true
    arg3(flag18, flag19, flag21, flag22)
  end
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "DrawSprites"
function workValue4()
  local arg1, arg2, arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3
  arg1 = "MPSafeCracking"
  arg2 = GetAspectRatio
  arg3 = true
  arg2 = arg2(arg3)
  arg3 = DrawSprite
  flag18 = arg1
  flag19 = "Dial_BG"
  flag21 = numberValue15
  flag22 = numberValue
  numberValue11 = 0.3
  flag23 = arg2 * 0.3
  numberValue16 = 0
  hashValue = 255
  flag2 = 255
  hashValue2 = 255
  hashValue3 = 255
  arg3(flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3)
  arg3 = DrawSprite
  flag18 = arg1
  flag19 = "Dial"
  flag21 = numberValue15
  flag22 = numberValue
  numberValue11 = 0.15
  flag23 = arg2 * 0.3
  flag23 = flag23 * 0.5
  numberValue16 = workValue7
  hashValue = 255
  flag2 = 255
  hashValue2 = 255
  hashValue3 = 255
  arg3(flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3)
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "IsSafeUnlocked"
function workValue4(arg1, arg2)
  local arg3
  arg3 = arg1[arg2]
  arg3 = nil == arg3
  return arg3
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "CloseSafeDoor"
function workValue4(arg1, arg2)
  local arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16
  arg3 = CMG
  arg3 = arg3.getPlayerCoords
  -- Beginner: result below is playerCoords.
  arg3 = arg3()
  arg3 = arg3 - arg2
  arg3 = #arg3
  if arg3 < 15.0 then
    arg3 = PlaySoundFrontend
    flag18 = -1
    flag19 = "SAFE_DOOR_CLOSE"
    flag21 = "SAFE_CRACK_SOUNDSET"
    flag22 = true
    arg3(flag18, flag19, flag21, flag22)
  end
  arg3 = 0
  flag18 = 90
  flag19 = 1
  for flag21 = arg3, flag18, flag19 do
    flag22 = GetEntityHeading
    numberValue11 = arg1
    -- Beginner: result below is heading.
    flag22 = flag22(numberValue11)
    numberValue11 = SetEntityHeading
    flag23 = arg1
    numberValue16 = flag22 - 1.0
    -- Beginner: Change the direction an entity is facing.
    numberValue11(flag23, numberValue16)
    numberValue11 = Wait
    flag23 = 16
    numberValue11(flag23)
  end
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "OpenSafeDoor"
function workValue4(arg1, arg2)
  local arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue
  arg3 = 500
  flag18 = Wait
  flag19 = arg3
  flag18(flag19)
  flag18 = CMG
  flag18 = flag18.getPlayerCoords
  -- Beginner: result below is playerCoords.
  flag18 = flag18()
  flag18 = flag18 - arg2
  flag18 = #flag18
  if flag18 < 15.0 then
    flag18 = PlaySoundFrontend
    flag19 = -1
    flag21 = "SAFE_DOOR_OPEN"
    flag22 = "SAFE_CRACK_SOUNDSET"
    numberValue11 = true
    flag18(flag19, flag21, flag22, numberValue11)
  end
  flag18 = 0
  flag19 = 90
  flag21 = 1
  for flag22 = flag18, flag19, flag21 do
    numberValue11 = GetEntityHeading
    flag23 = arg1
    -- Beginner: result below is heading.
    numberValue11 = numberValue11(flag23)
    flag23 = SetEntityHeading
    numberValue16 = arg1
    hashValue = numberValue11 + 1.0
    -- Beginner: Change the direction an entity is facing.
    flag23(numberValue16, hashValue)
    flag23 = Wait
    numberValue16 = 16
    flag23(numberValue16)
  end
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "RelockSafe"
function workValue4()
  local arg1, arg2
  arg1 = InitSafeLocks
  arg1()
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "GetCurrentSafeDialNumber"
function workValue4(arg1)
  local arg2, arg3, flag18
  arg2 = math
  arg2 = arg2.round
  arg3 = arg1 / 360
  arg3 = 100 * arg3
  flag18 = 1
  arg2 = arg2(arg3, flag18)
  arg3 = math
  arg3 = arg3.abs
  flag18 = arg2
  arg3 = arg3(flag18)
  arg2 = arg3
  if arg2 > 100 then
    arg3 = 200
    if arg2 < arg3 then
      arg2 = arg2 - 100
  end
  else
    arg3 = 200
    if arg2 >= arg3 then
      arg3 = 300
      if arg2 < arg3 then
        arg2 = arg2 - 200
    end
    else
      arg3 = 300
      if arg2 >= arg3 then
        arg3 = 400
        if arg2 < arg3 then
          arg2 = arg2 - 300
      end
      else
        arg3 = 400
        if arg2 >= arg3 then
          arg3 = 500
          if arg2 < arg3 then
            arg2 = arg2 - 400
        end
        else
          arg3 = 500
          if arg2 >= arg3 then
            arg3 = 600
            if arg2 < arg3 then
              arg2 = arg2 - 500
          end
          else
            arg3 = 600
            if arg2 >= arg3 then
              arg3 = 700
              if arg2 < arg3 then
                arg2 = arg2 - 600
            end
            else
              arg3 = 700
              if arg2 >= arg3 then
                arg3 = 800
                if arg2 < arg3 then
                  arg2 = arg2 - 700
              end
              else
                arg3 = 800
                if arg2 >= arg3 then
                  arg3 = 900
                  if arg2 < arg3 then
                    arg2 = arg2 - 800
                end
                else
                  arg3 = 900
                  if arg2 >= arg3 then
                    arg3 = 1000
                    if arg2 < arg3 then
                      arg2 = arg2 - 900
                  end
                  else
                    arg3 = 1000
                    if arg2 >= arg3 then
                      arg3 = 1100
                      if arg2 < arg3 then
                        arg2 = arg2 - 1000
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
  return arg2
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "RotateSafeDial"
function workValue4(arg1)
  local arg2, arg3, flag18, flag19, flag21, flag22, numberValue11, flag23
  if "rotation.anticlockwise" == arg1 or "rotation.clockwise" == arg1 then
    arg2 = 1
    arg3 = nil
    if "rotation.anticlockwise" == arg1 then
      arg3 = 1
    else
      arg3 = -1
    end
    flag18 = arg3 * arg2
    flag19 = workValue7
    flag19 = flag19 + flag18
    workValue7 = flag19
    flag19 = PlaySoundFrontend
    flag21 = -1
    flag22 = "TUMBLER_TURN"
    numberValue11 = "SAFE_CRACK_SOUNDSET"
    flag23 = true
    flag19(flag21, flag22, numberValue11, flag23)
  end
  textValue3 = arg1
  textValue5 = arg1
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "RegisterNetEvent"
eventHandlerRegistration = eventHandlerRegistration[textValue4]
textValue4 = "8a511fd1d8"
function workValue4(arg1)
  local arg2, arg3, flag18, flag19, flag21
  arg2 = dataTable
  arg2 = arg2[arg1]
  arg2 = arg2.doorHandler
  arg3 = dataTable
  arg3 = arg3[arg1]
  arg3 = arg3.safePosition
  flag18 = OpenSafeDoor
  flag19 = arg2
  flag21 = arg3
  flag18(flag19, flag21)
end
eventHandlerRegistration(textValue4, workValue4)
eventHandlerRegistration = _ENV
textValue4 = "RegisterNetEvent"
eventHandlerRegistration = eventHandlerRegistration[textValue4]
textValue4 = "1203341535"
function workValue4(arg1)
  local arg2, arg3, flag18, flag19, flag21
  arg2 = dataTable
  arg2 = arg2[arg1]
  arg2 = arg2.doorHandler
  arg3 = dataTable
  arg3 = arg3[arg1]
  arg3 = arg3.safePosition
  flag18 = CloseSafeDoor
  flag19 = arg2
  flag21 = arg3
  flag18(flag19, flag21)
end
eventHandlerRegistration(textValue4, workValue4)
eventHandlerRegistration = _ENV
textValue4 = "EndMiniGame"
function workValue4(arg1)
  local arg2, arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6, flag8, numberValue2, numberValue3, flag9
  arg2 = ClearPedTasks
  arg3 = CMG
  arg3 = arg3.getPlayerPed
  arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6, flag8, numberValue2, numberValue3, flag9 = arg3()
  arg2(arg3, flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6, flag8, numberValue2, numberValue3, flag9)
  arg2 = "mini@safe_cracking"
  arg3 = CMG
  arg3 = arg3.loadAnimDict
  flag18 = arg2
  -- Beginner: Load a GTA animation dictionary before using it.
  arg3(flag18)
  arg3 = TaskPlayAnimAdvanced
  flag18 = CMG
  flag18 = flag18.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  flag18 = flag18()
  flag19 = arg2
  flag21 = "door_open_succeed_stand"
  flag22 = workValue5.x
  numberValue11 = workValue5.y
  flag23 = workValue5.z
  numberValue16 = 0.0
  hashValue = 0.0
  flag2 = workValue6
  hashValue2 = 8.0
  hashValue3 = 8.0
  flag6 = -1
  flag8 = 2
  numberValue2 = 0.3
  numberValue3 = 0
  flag9 = 0
  arg3(flag18, flag19, flag21, flag22, numberValue11, flag23, numberValue16, hashValue, flag2, hashValue2, hashValue3, flag6, flag8, numberValue2, numberValue3, flag9)
  arg3 = RemoveAnimDict
  flag18 = arg2
  arg3(flag18)
  arg3 = FreezeEntityPosition
  flag18 = CMG
  flag18 = flag18.getPlayerPed
  -- Beginner: result below is localPlayerPed.
  flag18 = flag18()
  flag19 = false
  -- Beginner: Freeze or unfreeze an entity in place.
  arg3(flag18, flag19)
  arg3 = Wait
  flag18 = 2500
  arg3(flag18)
  arg3 = TriggerServerEvent
  flag18 = "8a511fd1d8"
  flag19 = arg1
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "8a511fd1d8".
  arg3(flag18, flag19)
  arg3 = "setup"
  textValue2 = arg3
  arg3 = true
  flag7 = arg3
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "UnloadSafeCountdown"
function workValue4()
  local arg1, arg2, arg3, flag18, flag19
  arg1 = 0
  arg2 = 12
  arg3 = 1
  for flag18 = arg1, arg2, arg3 do
    flag19 = flag7
    if not flag19 then
      break
    end
  end
  arg1 = flag7
  if arg1 then
    arg1 = RelockSafe
    arg1()
  end
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "InitSafeLocks"
function workValue4(arg1)
  local arg2, arg3, flag18, flag19, flag21
  arg2 = {}
  arg3 = 1
  flag18 = #arg1
  flag19 = 1
  for flag21 = arg3, flag18, flag19 do
    arg2[flag21] = true
  end
  return arg2
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "LoadResources"
function workValue4()
  local arg1, arg2, arg3
  arg1 = RequestStreamedTextureDict
  arg2 = "MPSafeCracking"
  arg3 = false
  arg1(arg2, arg3)
  arg1 = RequestAnimDict
  arg2 = "mini@safe_cracking"
  arg1(arg2)
  while true do
    arg1 = HasStreamedTextureDictLoaded
    arg2 = "MPSafeCracking"
    arg1 = arg1(arg2)
    if arg1 then
      arg1 = RequestAmbientAudioBank
      arg2 = "SAFE_CRACK"
      arg3 = false
      arg1 = arg1(arg2, arg3)
      if arg1 then
        arg1 = HasAnimDictLoaded
        arg2 = "mini@safe_cracking"
        arg1 = arg1(arg2)
        if arg1 then
          break
        end
      end
    end
    arg1 = Wait
    arg2 = 0
    arg1(arg2)
  end
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "GetDialProximityToTargetPin"
function workValue4(arg1, arg2, arg3)
  local flag18, flag19, flag21
  flag18 = arg2[arg3]
  flag19 = nil
  flag21 = textValue3
  if "rotation.anticlockwise" ~= flag21 then
    flag21 = textValue5
    if "rotation.anticlockwise" ~= flag21 then
      goto flow_label_12
    end
  end
  flag19 = flag18 - arg1
  goto flow_label_22
  ::flow_label_12::
  flag21 = textValue3
  if "rotation.clockwise" ~= flag21 then
    flag21 = textValue5
    if "rotation.clockwise" ~= flag21 then
      goto flow_label_21
    end
  end
  flag19 = arg1 - flag18
  goto flow_label_22
  ::flow_label_21::
  flag19 = 100
  ::flow_label_22::
  if flag19 < 0 then
    flag19 = flag19 + 100
  end
  return flag19
end
eventHandlerRegistration[textValue4] = workValue4
eventHandlerRegistration = _ENV
textValue4 = "SetDialSpriteShake"
function workValue4(arg1)
  local arg2, arg3, flag18
  if 5 == arg1 or 4 == arg1 or 95 == arg1 or 96 == arg1 then
    arg2 = math
    arg2 = arg2.random
    arg3 = 4.7975E8
    flag18 = 4.805E8
    arg2 = arg2(arg3, flag18)
    arg2 = arg2 / 1000000000
    numberValue15 = arg2
    arg2 = math
    arg2 = arg2.random
    arg3 = 2.9975E8
    flag18 = 3.005E8
    arg2 = arg2(arg3, flag18)
    arg2 = arg2 / 1000000000
    numberValue = arg2
  elseif 3 == arg1 or 2 == arg1 or 97 == arg1 or 98 == arg1 then
    arg2 = math
    arg2 = arg2.random
    arg3 = 4.795E8
    flag18 = 4.805E8
    arg2 = arg2(arg3, flag18)
    arg2 = arg2 / 1000000000
    numberValue15 = arg2
    arg2 = math
    arg2 = arg2.random
    arg3 = 2.995E8
    flag18 = 3.005E8
    arg2 = arg2(arg3, flag18)
    arg2 = arg2 / 1000000000
    numberValue = arg2
  elseif 1 == arg1 or 99 == arg1 then
    arg2 = math
    arg2 = arg2.random
    arg3 = 4.79E8
    flag18 = 4.81E8
    arg2 = arg2(arg3, flag18)
    arg2 = arg2 / 1000000000
    numberValue15 = arg2
    arg2 = math
    arg2 = arg2.random
    arg3 = 2.99E8
    flag18 = 3.01E8
    arg2 = arg2(arg3, flag18)
    arg2 = arg2 / 1000000000
    numberValue = arg2
  elseif 0 == arg1 then
    arg2 = math
    arg2 = arg2.random
    arg3 = 4.78E8
    flag18 = 4.82E8
    arg2 = arg2(arg3, flag18)
    arg2 = arg2 / 1000000000
    numberValue15 = arg2
    arg2 = math
    arg2 = arg2.random
    arg3 = 2.98E8
    flag18 = 3.02E8
    arg2 = arg2(arg3, flag18)
    arg2 = arg2 / 1000000000
    numberValue = arg2
  else
    arg2 = 0.48
    numberValue15 = arg2
    arg2 = 0.3
    numberValue = arg2
  end
end
eventHandlerRegistration[textValue4] = workValue4