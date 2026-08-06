-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1
SHX0_1 = "rotation.clockwise"
SHX1_1 = ""
SHX2_1 = ""
SHX3_1 = ""
SHX4_1 = nil
SHX5_1 = nil
SHX6_1 = nil
SHX7_1 = GetGameTimer
SHX7_1 = SHX7_1()
SHX8_1 = 100
SHX9_1 = 0.48
SHX10_1 = 0.3
SHX11_1 = nil
SHX12_1 = false
SHX13_1 = ""
SHX14_1 = false
SHX15_1 = false
SHX16_1 = {}
SHX17_1 = {}
SHX17_1.shopNpcModel = 416176080
SHX18_1 = vector3
SHX19_1 = 1727.8286132813
SHX20_1 = 6415.54296875
SHX21_1 = 35.025634765625
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.shopNpcPosition = SHX18_1
SHX17_1.shopNpcHeading = 246.61416625977
SHX17_1.shopNpcHandler = 0
SHX17_1.prop_safe = 1936747465
SHX17_1.prop_door = -1375589668
SHX18_1 = vector3
SHX19_1 = 1736.289
SHX20_1 = 6418.842
SHX21_1 = 34.80501
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.safePosition = SHX18_1
SHX17_1.safeHeading = 242.48239135742
SHX17_1.money_prop = 1554100735
SHX17_1.money_prop2 = 1554100735
SHX17_1.money_prop3 = 290621560
SHX17_1.money_prop4 = 1603932804
SHX18_1 = vector3
SHX19_1 = 1736.702
SHX20_1 = 6418.888
SHX21_1 = 34.14135
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos = SHX18_1
SHX18_1 = vector3
SHX19_1 = 1736.702
SHX20_1 = 6418.888
SHX21_1 = 34.14135
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = vector3
SHX20_1 = 0.0
SHX21_1 = 0.0
SHX22_1 = 0.15
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1 = SHX18_1 + SHX19_1
SHX17_1.moneyPos2 = SHX18_1
SHX18_1 = vector3
SHX19_1 = 1736.835
SHX20_1 = 6419.24
SHX21_1 = 34.10043
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos3 = SHX18_1
SHX18_1 = vector3
SHX19_1 = 1736.798
SHX20_1 = 6418.982
SHX21_1 = 34.851775
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos4 = SHX18_1
SHX17_1.moneyHeading = 331.59808349609
SHX17_1.moneyHeading2 = 331.59808349609
SHX17_1.moneyHeading3 = 335.39840698242
SHX17_1.moneyHeading4 = 242.181640625
SHX17_1.safeHandler = 0
SHX17_1.doorHandler = 0
SHX17_1.moneyHandler = 0
SHX17_1.moneyHandler2 = 0
SHX17_1.moneyHandler3 = 0
SHX17_1.moneyHandler4 = 0
SHX17_1.distanceToPlayer = 1000.0
SHX17_1.insideStore = false
SHX17_1.robberyInProgress = false
SHX17_1.isPlayingAnims = false
SHX16_1.paleto_twentyfourseven = SHX17_1
SHX17_1 = {}
SHX17_1.shopNpcModel = 416176080
SHX18_1 = vector3
SHX19_1 = 1959.876953125
SHX20_1 = 3740.0307617188
SHX21_1 = 32.329711914062
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.shopNpcPosition = SHX18_1
SHX17_1.shopNpcHeading = 303.30709838867
SHX17_1.shopNpcHandler = 0
SHX17_1.prop_safe = 1936747465
SHX17_1.prop_door = -1375589668
SHX18_1 = vector3
SHX19_1 = 1961.656
SHX20_1 = 3748.989
SHX21_1 = 32.11159
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.safePosition = SHX18_1
SHX17_1.safeHeading = 299.89376831055
SHX17_1.money_prop = 1554100735
SHX17_1.money_prop2 = 1554100735
SHX17_1.money_prop3 = 290621560
SHX17_1.money_prop4 = 1603932804
SHX18_1 = vector3
SHX19_1 = 1961.845
SHX20_1 = 3749.336
SHX21_1 = 31.44533
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos = SHX18_1
SHX18_1 = vector3
SHX19_1 = 1961.845
SHX20_1 = 3749.336
SHX21_1 = 31.44533
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = vector3
SHX20_1 = 0.0
SHX21_1 = 0.0
SHX22_1 = 0.15
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1 = SHX18_1 + SHX19_1
SHX17_1.moneyPos2 = SHX18_1
SHX18_1 = vector3
SHX19_1 = 1961.586
SHX20_1 = 3749.646
SHX21_1 = 31.44697
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos3 = SHX18_1
SHX18_1 = vector3
SHX19_1 = 1961.822
SHX20_1 = 3749.47
SHX21_1 = 32.22634
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos4 = SHX18_1
SHX17_1.moneyHeading = 297.69305419922
SHX17_1.moneyHeading2 = 297.69305419922
SHX17_1.moneyHeading3 = 300.09353637695
SHX17_1.moneyHeading4 = 299.99301147461
SHX17_1.safeHandler = 0
SHX17_1.doorHandler = 0
SHX17_1.moneyHandler = 0
SHX17_1.moneyHandler2 = 0
SHX17_1.moneyHandler3 = 0
SHX17_1.moneyHandler4 = 0
SHX17_1.distanceToPlayer = 1000.0
SHX17_1.insideStore = false
SHX17_1.robberyInProgress = false
SHX17_1.isPlayingAnims = false
SHX16_1.sandyshores_twentyfoursever = SHX17_1
SHX17_1 = {}
SHX17_1.shopNpcModel = 416176080
SHX18_1 = vector3
SHX19_1 = 1984.4356689453
SHX20_1 = 3054.7565917969
SHX21_1 = 47.215145111084
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.shopNpcPosition = SHX18_1
SHX17_1.shopNpcHeading = 230.0
SHX17_1.shopNpcHandler = 0
SHX17_1.prop_safe = 1936747465
SHX17_1.prop_door = -1375589668
SHX18_1 = vector3
SHX19_1 = 1994.318
SHX20_1 = 3043.54
SHX21_1 = 46.98114
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.safePosition = SHX18_1
SHX17_1.safeHeading = 147.29058837891
SHX17_1.money_prop = 1554100735
SHX17_1.money_prop2 = 1554100735
SHX17_1.money_prop3 = 290621560
SHX17_1.money_prop4 = 1603932804
SHX18_1 = vector3
SHX19_1 = 1994.307
SHX20_1 = 3043.096
SHX21_1 = 46.32116
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos = SHX18_1
SHX18_1 = vector3
SHX19_1 = 1994.307
SHX20_1 = 3043.096
SHX21_1 = 46.32116
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = vector3
SHX20_1 = 0.0
SHX21_1 = 0.0
SHX22_1 = 0.15
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1 = SHX18_1 + SHX19_1
SHX17_1.moneyPos2 = SHX18_1
SHX18_1 = vector3
SHX19_1 = 1994.6
SHX20_1 = 3042.91
SHX21_1 = 46.3018
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos3 = SHX18_1
SHX18_1 = vector3
SHX19_1 = 1994.398
SHX20_1 = 3043.013
SHX21_1 = 47.12325
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos4 = SHX18_1
SHX17_1.moneyHeading = 326.9977722168
SHX17_1.moneyHeading2 = 326.9977722168
SHX17_1.moneyHeading3 = 327.59765625
SHX17_1.moneyHeading4 = 147.67221069336
SHX17_1.safeHandler = 0
SHX17_1.doorHandler = 0
SHX17_1.moneyHandler = 0
SHX17_1.moneyHandler2 = 0
SHX17_1.moneyHandler3 = 0
SHX17_1.moneyHandler4 = 0
SHX17_1.distanceToPlayer = 1000.0
SHX17_1.insideStore = false
SHX17_1.robberyInProgress = false
SHX17_1.isPlayingAnims = false
SHX16_1.bar_one = SHX17_1
SHX17_1 = {}
SHX17_1.shopNpcModel = 416176080
SHX18_1 = vector3
SHX19_1 = -706.16192626953
SHX20_1 = -913.20764160156
SHX21_1 = 18.215581893921
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.shopNpcPosition = SHX18_1
SHX17_1.shopNpcHeading = 90.0
SHX17_1.shopNpcHandler = 0
SHX17_1.prop_safe = 1936747465
SHX17_1.prop_door = -1375589668
SHX18_1 = vector3
SHX19_1 = -707.8496
SHX20_1 = -904.0402
SHX21_1 = 18.98337
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.safePosition = SHX18_1
SHX17_1.safeHeading = 0.0
SHX17_1.money_prop = 1554100735
SHX17_1.money_prop2 = 1554100735
SHX17_1.money_prop3 = 290621560
SHX17_1.money_prop4 = 1603932804
SHX18_1 = vector3
SHX19_1 = -708.0876
SHX20_1 = -903.588
SHX21_1 = 18.21714
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos = SHX18_1
SHX18_1 = vector3
SHX19_1 = -708.0876
SHX20_1 = -903.588
SHX21_1 = 18.21714
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = vector3
SHX20_1 = 0.0
SHX21_1 = 0.0
SHX22_1 = 0.15
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1 = SHX18_1 + SHX19_1
SHX17_1.moneyPos2 = SHX18_1
SHX18_1 = vector3
SHX19_1 = -708.4515
SHX20_1 = -903.6274
SHX21_1 = 18.31876
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos3 = SHX18_1
SHX18_1 = vector3
SHX19_1 = -708.1865
SHX20_1 = -903.655
SHX21_1 = 19.10827
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos4 = SHX18_1
SHX17_1.moneyHeading = 0.0
SHX17_1.moneyHeading2 = 0.0
SHX17_1.moneyHeading3 = 0.0
SHX17_1.moneyHeading4 = 0.0
SHX17_1.safeHandler = 0
SHX17_1.doorHandler = 0
SHX17_1.moneyHandler = 0
SHX17_1.moneyHandler2 = 0
SHX17_1.moneyHandler3 = 0
SHX17_1.moneyHandler4 = 0
SHX17_1.distanceToPlayer = 1000.0
SHX17_1.insideStore = false
SHX17_1.robberyInProgress = false
SHX17_1.isPlayingAnims = false
SHX16_1.littleseoul_twentyfourseven = SHX17_1
SHX17_1 = {}
SHX17_1.shopNpcModel = 416176080
SHX18_1 = vector3
SHX19_1 = 24.329671859741
SHX20_1 = -1347.0329589844
SHX21_1 = 29.482055664063
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.shopNpcPosition = SHX18_1
SHX17_1.shopNpcHeading = 274.96063232422
SHX17_1.shopNpcHandler = 0
SHX17_1.prop_safe = 1936747465
SHX17_1.prop_door = -1375589668
SHX18_1 = vector3
SHX19_1 = 30.84683
SHX20_1 = -1340.337
SHX21_1 = 29.26481
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.safePosition = SHX18_1
SHX17_1.safeHeading = 269.98638916016
SHX17_1.money_prop = 1554100735
SHX17_1.money_prop2 = 1554100735
SHX17_1.money_prop3 = 290621560
SHX17_1.money_prop4 = 1603932804
SHX18_1 = vector3
SHX19_1 = 31.25762
SHX20_1 = -1340.125
SHX21_1 = 28.53858
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos = SHX18_1
SHX18_1 = vector3
SHX19_1 = 31.232
SHX20_1 = -1340.124
SHX21_1 = 28.68855
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos2 = SHX18_1
SHX18_1 = vector3
SHX19_1 = 31.20064
SHX20_1 = -1339.752
SHX21_1 = 28.54
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos3 = SHX18_1
SHX18_1 = vector3
SHX19_1 = 31.22769
SHX20_1 = -1339.963
SHX21_1 = 29.36968
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos4 = SHX18_1
SHX17_1.moneyHeading = 0.099
SHX17_1.moneyHeading2 = 0.099
SHX17_1.moneyHeading3 = 0.099
SHX17_1.moneyHeading4 = 269.28741455078
SHX17_1.safeHandler = 0
SHX17_1.doorHandler = 0
SHX17_1.moneyHandler = 0
SHX17_1.moneyHandler2 = 0
SHX17_1.moneyHandler3 = 0
SHX17_1.moneyHandler4 = 0
SHX17_1.distanceToPlayer = 1000.0
SHX17_1.insideStore = false
SHX17_1.robberyInProgress = false
SHX17_1.isPlayingAnims = false
SHX16_1.asda = SHX17_1
SHX17_1 = {}
SHX17_1.shopNpcModel = 416176080
SHX18_1 = vector3
SHX19_1 = -46.450626373291
SHX20_1 = -1757.5461425781
SHX21_1 = 28.420984268188
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.shopNpcPosition = SHX18_1
SHX17_1.shopNpcHeading = 45.0
SHX17_1.shopNpcHandler = 0
SHX17_1.prop_safe = 1936747465
SHX17_1.prop_door = -1375589668
SHX18_1 = vector3
SHX19_1 = -41.91652
SHX20_1 = -1749.63
SHX21_1 = 29.18883
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.safePosition = SHX18_1
SHX17_1.safeHeading = 319.69720458984
SHX17_1.money_prop = 1554100735
SHX17_1.money_prop2 = 1554100735
SHX17_1.money_prop3 = 290621560
SHX17_1.money_prop4 = 1603932804
SHX18_1 = vector3
SHX19_1 = -41.84
SHX20_1 = -1749.16
SHX21_1 = 28.42251
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos = SHX18_1
SHX18_1 = vector3
SHX19_1 = -41.84
SHX20_1 = -1749.16
SHX21_1 = 28.42251
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = vector3
SHX20_1 = 0.0
SHX21_1 = 0.0
SHX22_1 = 0.15
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1 = SHX18_1 + SHX19_1
SHX17_1.moneyPos2 = SHX18_1
SHX18_1 = vector3
SHX19_1 = -42.17047
SHX20_1 = -1748.993
SHX21_1 = 28.5542
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos3 = SHX18_1
SHX18_1 = vector3
SHX19_1 = -41.94428
SHX20_1 = -1749.123
SHX21_1 = 29.30364
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos4 = SHX18_1
SHX17_1.moneyHeading = 318.39709472656
SHX17_1.moneyHeading2 = 318.39709472656
SHX17_1.moneyHeading3 = 323.59747314453
SHX17_1.moneyHeading4 = 319.59719848633
SHX17_1.safeHandler = 0
SHX17_1.doorHandler = 0
SHX17_1.moneyHandler = 0
SHX17_1.moneyHandler2 = 0
SHX17_1.moneyHandler3 = 0
SHX17_1.moneyHandler4 = 0
SHX17_1.distanceToPlayer = 1000.0
SHX17_1.insideStore = false
SHX17_1.robberyInProgress = false
SHX17_1.isPlayingAnims = false
SHX16_1.southlossantos_twentyfourseven = SHX17_1
SHX17_1 = {}
SHX17_1.shopNpcModel = 416176080
SHX18_1 = vector3
SHX19_1 = 372.39559936523
SHX20_1 = 326.75604248047
SHX21_1 = 103.55383300781
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.shopNpcPosition = SHX18_1
SHX17_1.shopNpcHeading = 257.95275878906
SHX17_1.shopNpcHandler = 0
SHX17_1.prop_safe = 1936747465
SHX17_1.prop_door = -1375589668
SHX18_1 = vector3
SHX19_1 = 380.0088
SHX20_1 = 331.7921
SHX21_1 = 103.3343
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.safePosition = SHX18_1
SHX17_1.safeHeading = 255.58413696289
SHX17_1.money_prop = 1554100735
SHX17_1.money_prop2 = 1554100735
SHX17_1.money_prop3 = 290621560
SHX17_1.money_prop4 = 1603932804
SHX18_1 = vector3
SHX19_1 = 380.4388
SHX20_1 = 331.9152
SHX21_1 = 102.678
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos = SHX18_1
SHX18_1 = vector3
SHX19_1 = 380.4388
SHX20_1 = 331.9152
SHX21_1 = 102.678
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = vector3
SHX20_1 = 0.0
SHX21_1 = 0.0
SHX22_1 = 0.15
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1 = SHX18_1 + SHX19_1
SHX17_1.moneyPos2 = SHX18_1
SHX18_1 = vector3
SHX19_1 = 380.5645
SHX20_1 = 332.2422
SHX21_1 = 102.6495
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos3 = SHX18_1
SHX18_1 = vector3
SHX19_1 = 380.4466
SHX20_1 = 332.0624
SHX21_1 = 103.4792
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos4 = SHX18_1
SHX17_1.moneyHeading = 346.39916992188
SHX17_1.moneyHeading2 = 346.39916992188
SHX17_1.moneyHeading3 = 323.59747314453
SHX17_1.moneyHeading4 = 346.79919433594
SHX17_1.safeHandler = 0
SHX17_1.doorHandler = 0
SHX17_1.moneyHandler = 0
SHX17_1.moneyHandler2 = 0
SHX17_1.moneyHandler3 = 0
SHX17_1.moneyHandler4 = 0
SHX17_1.distanceToPlayer = 1000.0
SHX17_1.insideStore = false
SHX17_1.robberyInProgress = false
SHX17_1.isPlayingAnims = false
SHX16_1.vinewood_twentyfourseven = SHX17_1
SHX17_1 = {}
SHX17_1.shopNpcModel = 416176080
SHX18_1 = vector3
SHX19_1 = 1134.2801513672
SHX20_1 = -982.96826171875
SHX21_1 = 45.415786743164
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.shopNpcPosition = SHX18_1
SHX17_1.shopNpcHeading = 273.0
SHX17_1.shopNpcHandler = 0
SHX17_1.prop_safe = 1936747465
SHX17_1.prop_door = -1375589668
SHX18_1 = vector3
SHX19_1 = 1126.477
SHX20_1 = -980.8321
SHX21_1 = 45.18349
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.safePosition = SHX18_1
SHX17_1.safeHeading = 7.4999785423279
SHX17_1.money_prop = 1554100735
SHX17_1.money_prop2 = 1554100735
SHX17_1.money_prop3 = 290621560
SHX17_1.money_prop4 = 1603932804
SHX18_1 = vector3
SHX19_1 = 1126.212
SHX20_1 = -980.4645
SHX21_1 = 44.48732
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos = SHX18_1
SHX18_1 = vector3
SHX19_1 = 1126.212
SHX20_1 = -980.4645
SHX21_1 = 44.48732
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = vector3
SHX20_1 = 0.0
SHX21_1 = 0.0
SHX22_1 = 0.15
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1 = SHX18_1 + SHX19_1
SHX17_1.moneyPos2 = SHX18_1
SHX18_1 = vector3
SHX19_1 = 1125.856
SHX20_1 = -980.6199
SHX21_1 = 44.49899
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos3 = SHX18_1
SHX18_1 = vector3
SHX19_1 = 1126.078
SHX20_1 = -980.4662
SHX21_1 = 45.28833
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos4 = SHX18_1
SHX17_1.moneyHeading = 6.8999700546265
SHX17_1.moneyHeading2 = 6.8999700546265
SHX17_1.moneyHeading3 = 9.5999689102173
SHX17_1.moneyHeading4 = 7.19988489151
SHX17_1.safeHandler = 0
SHX17_1.doorHandler = 0
SHX17_1.moneyHandler = 0
SHX17_1.moneyHandler2 = 0
SHX17_1.moneyHandler3 = 0
SHX17_1.moneyHandler4 = 0
SHX17_1.distanceToPlayer = 1000.0
SHX17_1.insideStore = false
SHX17_1.robberyInProgress = false
SHX17_1.isPlayingAnims = false
SHX16_1.eastlossantos_robsliquor = SHX17_1
SHX17_1 = {}
SHX17_1.shopNpcModel = 416176080
SHX18_1 = vector3
SHX19_1 = 2677.7670898438
SHX20_1 = 3279.4548339844
SHX21_1 = 55.228515625
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.shopNpcPosition = SHX18_1
SHX17_1.shopNpcHeading = 334.48818969727
SHX17_1.shopNpcHandler = 0
SHX17_1.prop_safe = 1936747465
SHX17_1.prop_door = -1375589668
SHX18_1 = vector3
SHX19_1 = 2674.81
SHX20_1 = 3288.004
SHX21_1 = 55.00899
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.safePosition = SHX18_1
SHX17_1.safeHeading = 330.4999785423279
SHX17_1.money_prop = 1554100735
SHX17_1.money_prop2 = 1554100735
SHX17_1.money_prop3 = 290621560
SHX17_1.money_prop4 = 1603932804
SHX18_1 = vector3
SHX19_1 = 2674.765
SHX20_1 = 3288.448
SHX21_1 = 54.3227
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos = SHX18_1
SHX18_1 = vector3
SHX19_1 = 2674.765
SHX20_1 = 3288.448
SHX21_1 = 54.3227
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = vector3
SHX20_1 = 0.0
SHX21_1 = 0.0
SHX22_1 = 0.15
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1 = SHX18_1 + SHX19_1
SHX17_1.moneyPos2 = SHX18_1
SHX18_1 = vector3
SHX19_1 = 2674.424
SHX20_1 = 3288.59
SHX21_1 = 54.33434
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos3 = SHX18_1
SHX18_1 = vector3
SHX19_1 = 2674.656
SHX20_1 = 3288.501
SHX21_1 = 55.12368
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos4 = SHX18_1
SHX17_1.moneyHeading = 331.39813232422
SHX17_1.moneyHeading2 = 331.39813232422
SHX17_1.moneyHeading3 = 332.49816894531
SHX17_1.moneyHeading4 = 331.19812011719
SHX17_1.safeHandler = 0
SHX17_1.doorHandler = 0
SHX17_1.moneyHandler = 0
SHX17_1.moneyHandler2 = 0
SHX17_1.moneyHandler3 = 0
SHX17_1.moneyHandler4 = 0
SHX17_1.distanceToPlayer = 1000.0
SHX17_1.insideStore = false
SHX17_1.robberyInProgress = false
SHX17_1.isPlayingAnims = false
SHX16_1.sandyshores_twentyfourseven = SHX17_1
SHX17_1 = {}
SHX17_1.shopNpcModel = 416176080
SHX18_1 = vector3
SHX19_1 = 1698.5382080078
SHX20_1 = 4922.6352539063
SHX21_1 = 41.063629150391
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.shopNpcPosition = SHX18_1
SHX17_1.shopNpcHeading = 320.0
SHX17_1.shopNpcHandler = 0
SHX17_1.prop_safe = 1936747465
SHX17_1.prop_door = -1375589668
SHX18_1 = vector3
SHX19_1 = 1706.851
SHX20_1 = 4918.958
SHX21_1 = 41.83147
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.safePosition = SHX18_1
SHX17_1.safeHeading = 234.4807434082
SHX17_1.money_prop = 1554100735
SHX17_1.money_prop2 = 1554100735
SHX17_1.money_prop3 = 290621560
SHX17_1.money_prop4 = 1603932804
SHX18_1 = vector3
SHX19_1 = 1707.324
SHX20_1 = 4918.907
SHX21_1 = 41.1652
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos = SHX18_1
SHX18_1 = vector3
SHX19_1 = 1707.324
SHX20_1 = 4918.907
SHX21_1 = 41.16527
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = vector3
SHX20_1 = 0.0
SHX21_1 = 0.0
SHX22_1 = 0.15
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1 = SHX18_1 + SHX19_1
SHX17_1.moneyPos2 = SHX18_1
SHX18_1 = vector3
SHX19_1 = 1707.568
SHX20_1 = 4919.194
SHX21_1 = 41.13685
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos3 = SHX18_1
SHX18_1 = vector3
SHX19_1 = 1707.366
SHX20_1 = 4919.027
SHX21_1 = 41.94618
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos4 = SHX18_1
SHX17_1.moneyHeading = 325.39755249023
SHX17_1.moneyHeading2 = 325.39755249023
SHX17_1.moneyHeading3 = 332.49816894531
SHX17_1.moneyHeading4 = 322.59429931641
SHX17_1.safeHandler = 0
SHX17_1.doorHandler = 0
SHX17_1.moneyHandler = 0
SHX17_1.moneyHandler2 = 0
SHX17_1.moneyHandler3 = 0
SHX17_1.moneyHandler4 = 0
SHX17_1.distanceToPlayer = 1000.0
SHX17_1.insideStore = false
SHX17_1.robberyInProgress = false
SHX17_1.isPlayingAnims = false
SHX16_1.grapeseed_gasstop = SHX17_1
SHX17_1 = {}
SHX17_1.shopNpcModel = 416176080
SHX18_1 = vector3
SHX19_1 = -1486.6450195313
SHX20_1 = -377.64117431641
SHX21_1 = 39.16344833374
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.shopNpcPosition = SHX18_1
SHX18_1 = 128.0
SHX17_1.shopNpcHeading = SHX18_1
SHX17_1.shopNpcHandler = 0
SHX17_1.prop_safe = 1936747465
SHX17_1.prop_door = -1375589668
SHX18_1 = vector3
SHX19_1 = -1479.141
SHX20_1 = -374.8521
SHX21_1 = 38.93123
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.safePosition = SHX18_1
SHX18_1 = 226.1791229248
SHX17_1.safeHeading = SHX18_1
SHX17_1.money_prop = 1554100735
SHX17_1.money_prop2 = 1554100735
SHX17_1.money_prop3 = 290621560
SHX17_1.money_prop4 = 1603932804
SHX18_1 = vector3
SHX19_1 = -1478.691
SHX20_1 = -374.9853
SHX21_1 = 38.23492
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos = SHX18_1
SHX18_1 = vector3
SHX19_1 = -1478.691
SHX20_1 = -374.9853
SHX21_1 = 38.23492
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = vector3
SHX20_1 = 0.0
SHX21_1 = 0.0
SHX22_1 = 0.15
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1 = SHX18_1 + SHX19_1
SHX17_1.moneyPos2 = SHX18_1
SHX18_1 = vector3
SHX19_1 = -1478.475
SHX20_1 = -374.6764
SHX21_1 = 38.26654
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos3 = SHX18_1
SHX18_1 = vector3
SHX19_1 = -1478.643
SHX20_1 = -374.8643
SHX21_1 = 39.04589
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.moneyPos4 = SHX18_1
SHX18_1 = 315.29690551758
SHX17_1.moneyHeading = SHX18_1
SHX18_1 = 315.29690551758
SHX17_1.moneyHeading2 = SHX18_1
SHX18_1 = 315.49691772461
SHX17_1.moneyHeading3 = SHX18_1
SHX18_1 = 225.37908935547
SHX17_1.moneyHeading4 = SHX18_1
SHX17_1.safeHandler = 0
SHX17_1.doorHandler = 0
SHX17_1.moneyHandler = 0
SHX17_1.moneyHandler2 = 0
SHX17_1.moneyHandler3 = 0
SHX17_1.moneyHandler4 = 0
SHX17_1.distanceToPlayer = 1000.0
SHX17_1.insideStore = false
SHX17_1.robberyInProgress = false
SHX17_1.isPlayingAnims = false
SHX16_1.morningwood_robsliquor = SHX17_1
SHX17_1 = "chumash_robsliquor"
SHX18_1 = {}
SHX18_1.shopNpcModel = 416176080
SHX19_1 = vector3
SHX20_1 = -2966.4086914063
SHX21_1 = 391.35339355469
SHX22_1 = 14.043314933777
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.shopNpcPosition = SHX19_1
SHX19_1 = 80.0
SHX18_1.shopNpcHeading = SHX19_1
SHX18_1.shopNpcHandler = 0
SHX18_1.prop_safe = 1936747465
SHX18_1.prop_door = -1375589668
SHX19_1 = vector3
SHX20_1 = -2959.265
SHX21_1 = 387.6957
SHX22_1 = 13.81098
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.safePosition = SHX19_1
SHX19_1 = 176.69169616699
SHX18_1.safeHeading = SHX19_1
SHX18_1.money_prop = 1554100735
SHX18_1.money_prop2 = 1554100735
SHX18_1.money_prop3 = 290621560
SHX18_1.money_prop4 = 1603932804
SHX19_1 = vector3
SHX20_1 = -2959.014
SHX21_1 = 387.3654
SHX22_1 = 13.14629
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.moneyPos = SHX19_1
SHX19_1 = vector3
SHX20_1 = -2959.014
SHX21_1 = 387.3654
SHX22_1 = 13.14629
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX20_1 = vector3
SHX21_1 = 0.0
SHX22_1 = 0.0
SHX23_1 = 0.15
SHX20_1 = SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX19_1 = SHX19_1 + SHX20_1
SHX18_1.moneyPos2 = SHX19_1
SHX19_1 = vector3
SHX20_1 = -2958.639
SHX21_1 = 387.3448
SHX22_1 = 13.09645
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.moneyPos3 = SHX19_1
SHX19_1 = vector3
SHX20_1 = -2958.927
SHX21_1 = 387.2768
SHX22_1 = 13.91958
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.moneyPos4 = SHX19_1
SHX19_1 = 356.49978637695
SHX18_1.moneyHeading = SHX19_1
SHX19_1 = 356.49978637695
SHX18_1.moneyHeading2 = SHX19_1
SHX18_1.moneyHeading3 = 0.0
SHX19_1 = 177.27951049805
SHX18_1.moneyHeading4 = SHX19_1
SHX18_1.safeHandler = 0
SHX18_1.doorHandler = 0
SHX18_1.moneyHandler = 0
SHX18_1.moneyHandler2 = 0
SHX18_1.moneyHandler3 = 0
SHX18_1.moneyHandler4 = 0
SHX18_1.distanceToPlayer = 1000.0
SHX18_1.insideStore = false
SHX18_1.robberyInProgress = false
SHX18_1.isPlayingAnims = false
SHX16_1[SHX17_1] = SHX18_1
SHX17_1 = "eastlossantos_gasstop"
SHX18_1 = {}
SHX18_1.shopNpcModel = 416176080
SHX19_1 = vector3
SHX20_1 = 1164.5863037109
SHX21_1 = -322.3291015625
SHX22_1 = 68.205024719238
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.shopNpcPosition = SHX19_1
SHX19_1 = 96.0
SHX18_1.shopNpcHeading = SHX19_1
SHX18_1.shopNpcHandler = 0
SHX18_1.prop_safe = 1936747465
SHX18_1.prop_door = -1375589668
SHX19_1 = vector3
SHX20_1 = 1161.396
SHX21_1 = -313.4418
SHX22_1 = 68.97283
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.safePosition = SHX19_1
SHX19_1 = 12.599948883057
SHX18_1.safeHeading = SHX19_1
SHX18_1.money_prop = 1554100735
SHX18_1.money_prop2 = 1554100735
SHX18_1.money_prop3 = 290621560
SHX18_1.money_prop4 = 1603932804
SHX19_1 = vector3
SHX20_1 = 1161.073
SHX21_1 = -313.0523
SHX22_1 = 68.25655
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.moneyPos = SHX19_1
SHX19_1 = vector3
SHX20_1 = 1161.073
SHX21_1 = -313.0523
SHX22_1 = 68.25655
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX20_1 = vector3
SHX21_1 = 0.0
SHX22_1 = 0.0
SHX23_1 = 0.15
SHX20_1 = SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX19_1 = SHX19_1 + SHX20_1
SHX18_1.moneyPos2 = SHX19_1
SHX19_1 = vector3
SHX20_1 = 1160.752
SHX21_1 = -313.2396
SHX22_1 = 68.25839
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.moneyPos3 = SHX19_1
SHX19_1 = vector3
SHX20_1 = 1160.989
SHX21_1 = -313.1646
SHX22_1 = 69.10003
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.moneyPos4 = SHX19_1
SHX19_1 = 12.599948883057
SHX18_1.moneyHeading = SHX19_1
SHX19_1 = 12.599948883057
SHX18_1.moneyHeading2 = SHX19_1
SHX19_1 = 13.399929046631
SHX18_1.moneyHeading3 = SHX19_1
SHX19_1 = 13.49991607666
SHX18_1.moneyHeading4 = SHX19_1
SHX18_1.safeHandler = 0
SHX18_1.doorHandler = 0
SHX18_1.moneyHandler = 0
SHX18_1.moneyHandler2 = 0
SHX18_1.moneyHandler3 = 0
SHX18_1.moneyHandler4 = 0
SHX18_1.distanceToPlayer = 1000.0
SHX18_1.insideStore = false
SHX18_1.robberyInProgress = false
SHX18_1.isPlayingAnims = false
SHX16_1[SHX17_1] = SHX18_1
SHX17_1 = "tongva_gasstop"
SHX18_1 = {}
SHX18_1.shopNpcModel = 416176080
SHX19_1 = vector3
SHX20_1 = -1820.384765625
SHX21_1 = 794.54663085938
SHX22_1 = 137.08973693848
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.shopNpcPosition = SHX19_1
SHX19_1 = 126.0
SHX18_1.shopNpcHeading = SHX19_1
SHX18_1.shopNpcHandler = 0
SHX18_1.prop_safe = 1936747465
SHX18_1.prop_door = -1375589668
SHX19_1 = vector3
SHX20_1 = -1827.91
SHX21_1 = 800.1599
SHX22_1 = 137.9252
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.safePosition = SHX19_1
SHX19_1 = 41.699321746826
SHX18_1.safeHeading = SHX19_1
SHX18_1.money_prop = 1554100735
SHX18_1.money_prop2 = 1554100735
SHX18_1.money_prop3 = 290621560
SHX18_1.money_prop4 = 1603932804
SHX19_1 = vector3
SHX20_1 = -1828.359
SHX21_1 = 800.326
SHX22_1 = 137.1943
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.moneyPos = SHX19_1
SHX19_1 = vector3
SHX20_1 = -1828.359
SHX21_1 = 800.326
SHX22_1 = 137.1943
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX20_1 = vector3
SHX21_1 = 0.0
SHX22_1 = 0.0
SHX23_1 = 0.15
SHX20_1 = SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX19_1 = SHX19_1 + SHX20_1
SHX18_1.moneyPos2 = SHX19_1
SHX19_1 = vector3
SHX20_1 = -1828.556
SHX21_1 = 800.006
SHX22_1 = 137.2565
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.moneyPos3 = SHX19_1
SHX19_1 = vector3
SHX20_1 = -1828.442
SHX21_1 = 800.2554
SHX22_1 = 138.0441
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.moneyPos4 = SHX19_1
SHX19_1 = 311.09548950195
SHX18_1.moneyHeading = SHX19_1
SHX19_1 = 311.09548950195
SHX18_1.moneyHeading2 = SHX19_1
SHX19_1 = 44.199123382568
SHX18_1.moneyHeading3 = SHX19_1
SHX19_1 = 41.498989105225
SHX18_1.moneyHeading4 = SHX19_1
SHX18_1.safeHandler = 0
SHX18_1.doorHandler = 0
SHX18_1.moneyHandler = 0
SHX18_1.moneyHandler2 = 0
SHX18_1.moneyHandler3 = 0
SHX18_1.moneyHandler4 = 0
SHX18_1.distanceToPlayer = 1000.0
SHX18_1.insideStore = false
SHX18_1.robberyInProgress = false
SHX18_1.isPlayingAnims = false
SHX16_1[SHX17_1] = SHX18_1
SHX17_1 = "tataviam_twentyfourseven"
SHX18_1 = {}
SHX18_1.shopNpcModel = 416176080
SHX19_1 = vector3
SHX20_1 = 2556.8967285156
SHX21_1 = 380.67691040039
SHX22_1 = 108.60876464844
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.shopNpcPosition = SHX19_1
SHX18_1.shopNpcHeading = 0.0
SHX18_1.shopNpcHandler = 0
SHX18_1.prop_safe = 1936747465
SHX18_1.prop_door = -1375589668
SHX19_1 = vector3
SHX20_1 = 2550.434
SHX21_1 = 386.8382
SHX22_1 = 108.3907
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.safePosition = SHX19_1
SHX19_1 = 358.39990234375
SHX18_1.safeHeading = SHX19_1
SHX18_1.money_prop = 1554100735
SHX18_1.money_prop2 = 1554100735
SHX18_1.money_prop3 = 290621560
SHX18_1.money_prop4 = 1603932804
SHX19_1 = vector3
SHX20_1 = 2550.21
SHX21_1 = 387.2356
SHX22_1 = 107.6346
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.moneyPos = SHX19_1
SHX19_1 = vector3
SHX20_1 = 2550.21
SHX21_1 = 387.2356
SHX22_1 = 107.6346
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX20_1 = vector3
SHX21_1 = 0.0
SHX22_1 = 0.0
SHX23_1 = 0.15
SHX20_1 = SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX19_1 = SHX19_1 + SHX20_1
SHX18_1.moneyPos2 = SHX19_1
SHX19_1 = vector3
SHX20_1 = 2549.838
SHX21_1 = 387.221
SHX22_1 = 107.7061
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.moneyPos3 = SHX19_1
SHX19_1 = vector3
SHX20_1 = 2550.109
SHX21_1 = 387.2408
SHX22_1 = 108.5108
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.moneyPos4 = SHX19_1
SHX19_1 = 358.89993286133
SHX18_1.moneyHeading = SHX19_1
SHX19_1 = 358.89993286133
SHX18_1.moneyHeading2 = SHX19_1
SHX18_1.moneyHeading3 = 0.0
SHX19_1 = 358.0998840332
SHX18_1.moneyHeading4 = SHX19_1
SHX18_1.safeHandler = 0
SHX18_1.doorHandler = 0
SHX18_1.moneyHandler = 0
SHX18_1.moneyHandler2 = 0
SHX18_1.moneyHandler3 = 0
SHX18_1.moneyHandler4 = 0
SHX18_1.distanceToPlayer = 1000.0
SHX18_1.insideStore = false
SHX18_1.robberyInProgress = false
SHX18_1.isPlayingAnims = false
SHX16_1[SHX17_1] = SHX18_1
SHX17_1 = "cayoperico"
SHX18_1 = {}
SHX18_1.shopNpcModel = 416176080
SHX19_1 = vector3
SHX20_1 = 4466.423828125
SHX21_1 = -4463.7529296875
SHX22_1 = 4.2491989135742
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.shopNpcPosition = SHX19_1
SHX19_1 = 200.81
SHX18_1.shopNpcHeading = SHX19_1
SHX18_1.shopNpcHandler = 0
SHX18_1.prop_safe = 1936747465
SHX18_1.prop_door = -1375589668
SHX19_1 = vector3
SHX20_1 = 4464.9482421875
SHX21_1 = -4460.5083007812
SHX22_1 = 4.0420001029968
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.safePosition = SHX19_1
SHX19_1 = 110.0
SHX18_1.safeHeading = SHX19_1
SHX18_1.money_prop = 1554100735
SHX18_1.money_prop2 = 1554100735
SHX18_1.money_prop3 = 290621560
SHX18_1.money_prop4 = 1603932804
SHX19_1 = vector3
SHX20_1 = 4464.7482421875
SHX21_1 = -4461.0083007812
SHX22_1 = 3.29200010299686
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.moneyPos = SHX19_1
SHX19_1 = vector3
SHX20_1 = 4464.7482421875
SHX21_1 = -4461.0083007812
SHX22_1 = 3.2920001029968
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX20_1 = vector3
SHX21_1 = 0.0
SHX22_1 = 0.0
SHX23_1 = 0.15
SHX20_1 = SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX19_1 = SHX19_1 + SHX20_1
SHX18_1.moneyPos2 = SHX19_1
SHX19_1 = vector3
SHX20_1 = 4464.7482421875
SHX21_1 = -4461.0083007812
SHX22_1 = 3.2920001029968
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.moneyPos3 = SHX19_1
SHX19_1 = vector3
SHX20_1 = 4464.7482421875
SHX21_1 = -4461.0083007812
SHX22_1 = 4.0920001029968
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.moneyPos4 = SHX19_1
SHX19_1 = 110.89993286133
SHX18_1.moneyHeading = SHX19_1
SHX19_1 = 110.89993286133
SHX18_1.moneyHeading2 = SHX19_1
SHX18_1.moneyHeading3 = 0.0
SHX19_1 = 110.0998840332
SHX18_1.moneyHeading4 = SHX19_1
SHX18_1.safeHandler = 0
SHX18_1.doorHandler = 0
SHX18_1.moneyHandler = 0
SHX18_1.moneyHandler2 = 0
SHX18_1.moneyHandler3 = 0
SHX18_1.moneyHandler4 = 0
SHX18_1.distanceToPlayer = 1000.0
SHX18_1.insideStore = false
SHX18_1.robberyInProgress = false
SHX18_1.isPlayingAnims = false
SHX16_1[SHX17_1] = SHX18_1
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = BeginTextCommandDisplayHelp
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextComponentSubstringPlayerName
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandDisplayHelp
  SHX2_2 = 0
  SHX3_2 = false
  SHX4_2 = true
  SHX5_2 = -1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
function SHX18_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX3_2 = IsPedDeadOrDying
  SHX4_2 = SHX0_2
  SHX5_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if not SHX3_2 then
    SHX3_2 = IsEntityPlayingAnim
    SHX4_2 = SHX0_2
    SHX5_2 = "mp_am_hold_up"
    SHX6_2 = "holdup_victim_20s"
    SHX7_2 = 3
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    if SHX3_2 then
      SHX3_2 = SHX1_2.isPlayingAnims
      if not SHX3_2 then
        SHX1_2.isPlayingAnims = true
        SHX3_2 = PlayPedAmbientSpeechNative
        SHX4_2 = SHX0_2
        SHX5_2 = "SHOP_SCARED"
        SHX6_2 = "SPEECH_PARAMS_FORCE"
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = GetGameTimer
        SHX3_2 = SHX3_2()
        SHX3_2 = SHX3_2 + 10800
        while true do
          SHX4_2 = GetGameTimer
          SHX4_2 = SHX4_2()
          if not (SHX3_2 >= SHX4_2) then
            break
          end
          SHX4_2 = IsPedDeadOrDying
          SHX5_2 = SHX0_2
          SHX6_2 = false
          SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
          if SHX4_2 then
            break
          end
          SHX4_2 = Wait
          SHX5_2 = 0
          SHX4_2(SHX5_2)
        end
        SHX4_2 = IsPedDeadOrDying
        SHX5_2 = SHX0_2
        SHX6_2 = false
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
        if not SHX4_2 then
          SHX4_2 = GetEntityCoords
          SHX5_2 = SHX0_2
          SHX4_2 = SHX4_2(SHX5_2)
          SHX5_2 = GetClosestObjectOfType
          SHX6_2 = SHX4_2.x
          SHX7_2 = SHX4_2.y
          SHX8_2 = SHX4_2.z
          SHX9_2 = 5.0
          SHX10_2 = GetHashKey
          SHX11_2 = "prop_till_01"
          SHX10_2 = SHX10_2(SHX11_2)
          SHX11_2 = false
          SHX12_2 = false
          SHX13_2 = false
          SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
          SHX6_2 = DoesEntityExist
          SHX7_2 = SHX5_2
          SHX6_2 = SHX6_2(SHX7_2)
          if SHX6_2 then
            SHX6_2 = GetEntityCoords
            SHX7_2 = SHX5_2
            SHX6_2 = SHX6_2(SHX7_2)
            SHX7_2 = CreateModelSwap
            SHX8_2 = SHX6_2.x
            SHX9_2 = SHX6_2.y
            SHX10_2 = SHX6_2.z
            SHX11_2 = 0.5
            SHX12_2 = GetHashKey
            SHX13_2 = "prop_till_01"
            SHX12_2 = SHX12_2(SHX13_2)
            SHX13_2 = GetHashKey
            SHX14_2 = "prop_till_01_dam"
            SHX13_2 = SHX13_2(SHX14_2)
            SHX14_2 = false
            SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          SHX6_2 = GetGameTimer
          SHX6_2 = SHX6_2()
          SHX3_2 = SHX6_2 + 200
          while true do
            SHX6_2 = GetGameTimer
            SHX6_2 = SHX6_2()
            if not (SHX3_2 >= SHX6_2) then
              break
            end
            SHX6_2 = IsPedDeadOrDying
            SHX7_2 = SHX0_2
            SHX8_2 = false
            SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
            if SHX6_2 then
              break
            end
            SHX6_2 = Wait
            SHX7_2 = 0
            SHX6_2(SHX7_2)
          end
          SHX6_2 = CMG
          SHX6_2 = SHX6_2.loadModel
          SHX7_2 = -1194335261
          SHX6_2 = SHX6_2(SHX7_2)
          SHX7_2 = GetEntityCoords
          SHX8_2 = SHX0_2
          SHX7_2 = SHX7_2(SHX8_2)
          SHX8_2 = CreateObject
          SHX9_2 = SHX6_2
          SHX10_2 = SHX7_2.x
          SHX11_2 = SHX7_2.y
          SHX12_2 = SHX7_2.z
          SHX13_2 = false
          SHX14_2 = false
          SHX15_2 = false
          SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
          SHX9_2 = SetModelAsNoLongerNeeded
          SHX10_2 = SHX6_2
          SHX9_2(SHX10_2)
          SHX9_2 = PlayPedAmbientSpeechNative
          SHX10_2 = SHX0_2
          SHX11_2 = "SHOP_HURRYING"
          SHX12_2 = "SPEECH_PARAMS_FORCE"
          SHX9_2(SHX10_2, SHX11_2, SHX12_2)
          SHX9_2 = AttachEntityToEntity
          SHX10_2 = SHX8_2
          SHX11_2 = SHX0_2
          SHX12_2 = GetPedBoneIndex
          SHX13_2 = SHX0_2
          SHX14_2 = 60309
          SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
          SHX13_2 = 0.1
          SHX14_2 = -0.11
          SHX15_2 = 0.08
          SHX16_2 = 0.0
          SHX17_2 = -75.0
          SHX18_2 = -75.0
          SHX19_2 = true
          SHX20_2 = true
          SHX21_2 = false
          SHX22_2 = false
          SHX23_2 = 2
          SHX24_2 = true
          SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
          SHX9_2 = Wait
          SHX10_2 = 10000
          SHX9_2(SHX10_2)
          SHX9_2 = IsPedDeadOrDying
          SHX10_2 = SHX0_2
          SHX11_2 = false
          SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
          if not SHX9_2 then
            SHX9_2 = PlayPedAmbientSpeechNative
            SHX10_2 = SHX0_2
            SHX11_2 = "SCREAM_PANIC"
            SHX12_2 = "SPEECH_PARAMS_FORCE"
            SHX9_2(SHX10_2, SHX11_2, SHX12_2)
            SHX9_2 = DetachEntity
            SHX10_2 = SHX8_2
            SHX11_2 = true
            SHX12_2 = false
            SHX9_2(SHX10_2, SHX11_2, SHX12_2)
            SHX9_2 = Wait
            SHX10_2 = 0
            SHX9_2(SHX10_2)
            SHX9_2 = SetEntityHeading
            SHX10_2 = SHX8_2
            SHX11_2 = SHX1_2.shopNpcHeading
            SHX9_2(SHX10_2, SHX11_2)
            SHX9_2 = ApplyForceToEntity
            SHX10_2 = SHX8_2
            SHX11_2 = 3
            SHX12_2 = 0.0
            SHX13_2 = 50.0
            SHX14_2 = 20.0
            SHX15_2 = 0.0
            SHX16_2 = 0.0
            SHX17_2 = 50.0
            SHX18_2 = 0
            SHX19_2 = true
            SHX20_2 = true
            SHX21_2 = false
            SHX22_2 = false
            SHX23_2 = true
            SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
            SHX9_2 = false
            SHX12_1 = SHX9_2
            SHX9_2 = Citizen
            SHX9_2 = SHX9_2.CreateThread
            function SHX10_2()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
              while true do
                SHX0_3 = Wait
                SHX1_3 = 5
                SHX0_3(SHX1_3)
                SHX0_3 = DoesEntityExist
                SHX1_3 = SHX8_2
                SHX0_3 = SHX0_3(SHX1_3)
                if SHX0_3 then
                  SHX0_3 = GetEntityCoords
                  SHX1_3 = CMG
                  SHX1_3 = SHX1_3.getPlayerPed
                  SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3()
                  SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
                  SHX1_3 = GetEntityCoords
                  SHX2_3 = SHX8_2
                  SHX1_3 = SHX1_3(SHX2_3)
                  SHX0_3 = SHX0_3 - SHX1_3
                  SHX0_3 = #SHX0_3
                  SHX1_3 = 1.5
                  if SHX0_3 <= SHX1_3 then
                    SHX0_3 = PlaySoundFrontend
                    SHX1_3 = -1
                    SHX2_3 = "ROBBERY_MONEY_TOTAL"
                    SHX3_3 = "HUD_FRONTEND_CUSTOM_SOUNDSET"
                    SHX4_3 = true
                    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
                    SHX0_3 = TriggerServerEvent
                    SHX1_3 = "75c4e26b58"
                    SHX2_3 = SHX2_2
                    SHX0_3(SHX1_3, SHX2_3)
                    SHX0_3 = DeleteObject
                    SHX1_3 = SHX8_2
                    SHX0_3(SHX1_3)
                    break
                  end
                else
                  break
                end
              end
            end
            SHX9_2(SHX10_2)
          else
            SHX9_2 = DeleteObject
            SHX10_2 = SHX8_2
            SHX9_2(SHX10_2)
          end
          SHX9_2 = CMG
          SHX9_2 = SHX9_2.loadAnimDict
          SHX10_2 = "mp_am_hold_up"
          SHX9_2(SHX10_2)
          SHX9_2 = TaskPlayAnim
          SHX10_2 = SHX0_2
          SHX11_2 = "mp_am_hold_up"
          SHX12_2 = "cower_intro"
          SHX13_2 = 8.0
          SHX14_2 = -8.0
          SHX15_2 = -1
          SHX16_2 = 0
          SHX17_2 = 0
          SHX18_2 = false
          SHX19_2 = false
          SHX20_2 = false
          SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
          SHX9_2 = GetGameTimer
          SHX9_2 = SHX9_2()
          SHX3_2 = SHX9_2 + 2500
          while true do
            SHX9_2 = GetGameTimer
            SHX9_2 = SHX9_2()
            if not (SHX3_2 >= SHX9_2) then
              break
            end
            SHX9_2 = Wait
            SHX10_2 = 0
            SHX9_2(SHX10_2)
          end
          SHX9_2 = Citizen
          SHX9_2 = SHX9_2.CreateThread
          function SHX10_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
            SHX0_3 = TaskPlayAnim
            SHX1_3 = SHX0_2
            SHX2_3 = "mp_am_hold_up"
            SHX3_3 = "cower_loop"
            SHX4_3 = 8.0
            SHX5_3 = -8.0
            SHX6_3 = -1
            SHX7_3 = 1
            SHX8_3 = 0
            SHX9_3 = false
            SHX10_3 = false
            SHX11_3 = false
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
            SHX0_3 = GetGameTimer
            SHX0_3 = SHX0_3()
            SHX0_3 = SHX0_3 + 120000
            while true do
              SHX1_3 = GetGameTimer
              SHX1_3 = SHX1_3()
              if not (SHX0_3 >= SHX1_3) then
                break
              end
              SHX1_3 = Wait
              SHX2_3 = 50
              SHX1_3(SHX2_3)
            end
            SHX1_3 = IsEntityPlayingAnim
            SHX2_3 = SHX0_2
            SHX3_3 = "mp_am_hold_up"
            SHX4_3 = "cower_loop"
            SHX5_3 = 3
            SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
            if SHX1_3 then
              SHX1_3 = ClearPedTasks
              SHX2_3 = SHX0_2
              SHX1_3(SHX2_3)
            end
            SHX1_2.isPlayingAnims = false
          end
          SHX9_2(SHX10_2)
        end
      end
    end
  end
end
SHX19_1 = _ENV
SHX20_1 = "AddEventHandler"
SHX19_1 = SHX19_1[SHX20_1]
SHX20_1 = "CMG:onClientSpawn"
function SHX21_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  if SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "d136671bcb"
    SHX2_2(SHX3_2)
    while true do
      SHX2_2 = SHX11_1
      if nil ~= SHX2_2 then
        break
      end
      SHX2_2 = Wait
      SHX3_2 = 0
      SHX2_2(SHX3_2)
    end
    while true do
      SHX2_2 = pairs
      SHX3_2 = SHX16_1
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
      for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
        SHX8_2 = SHX7_2.shopNpcHandler
        if 0 ~= SHX8_2 then
          SHX9_2 = SHX18_1
          SHX10_2 = SHX8_2
          SHX11_2 = SHX7_2
          SHX12_2 = SHX6_2
          SHX9_2(SHX10_2, SHX11_2, SHX12_2)
        end
      end
      SHX2_2 = Wait
      SHX3_2 = 1000
      SHX2_2(SHX3_2)
    end
  end
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = _ENV
SHX20_1 = "Citizen"
SHX19_1 = SHX19_1[SHX20_1]
SHX20_1 = "CreateThread"
SHX19_1 = SHX19_1[SHX20_1]
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  while true do
    SHX0_2 = SHX16_1
    if nil ~= SHX0_2 then
      SHX0_2 = pairs
      SHX1_2 = SHX16_1
      SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
      for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
        SHX6_2 = SHX5_2.distanceToPlayer
        if SHX6_2 < 10.0 then
          SHX6_2 = SHX5_2.insideStore
          if not SHX6_2 then
            SHX6_2 = PlayPedAmbientSpeechNative
            SHX7_2 = SHX5_2.shopNpcHandler
            SHX8_2 = "SHOP_GREET"
            SHX9_2 = "SPEECH_PARAMS_FORCE"
            SHX6_2(SHX7_2, SHX8_2, SHX9_2)
          end
        end
        SHX6_2 = SHX5_2.distanceToPlayer
        if SHX6_2 < 10.0 then
          SHX6_2 = SHX16_1
          SHX6_2 = SHX6_2[SHX4_2]
          SHX6_2.insideStore = true
        else
          SHX6_2 = SHX16_1
          SHX6_2 = SHX6_2[SHX4_2]
          SHX6_2.insideStore = false
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 500
    SHX0_2(SHX1_2)
  end
end
SHX19_1(SHX20_1)
SHX19_1 = {}
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX11_1 = SHX0_2
  SHX1_2 = pairs
  SHX2_2 = SHX19_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if nil ~= SHX6_2 then
      SHX7_2 = tCMG
      SHX7_2 = SHX7_2.removeBlip
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
    end
  end
  SHX1_2 = {}
  SHX19_1 = SHX1_2
  SHX1_2 = pairs
  SHX2_2 = SHX11_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.position
    SHX8_2 = 0
    SHX9_2 = SHX6_2.beingrobbed
    if true == SHX9_2 then
      SHX9_2 = tCMG
      SHX9_2 = SHX9_2.addBlip
      SHX10_2 = SHX7_2.x
      SHX11_2 = SHX7_2.y
      SHX12_2 = SHX7_2.z
      SHX13_2 = 52
      SHX14_2 = 1
      SHX15_2 = "Robbable Store [BEING ROBBED]"
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX8_2 = SHX9_2
    else
      SHX9_2 = tCMG
      SHX9_2 = SHX9_2.addBlip
      SHX10_2 = SHX7_2.x
      SHX11_2 = SHX7_2.y
      SHX12_2 = SHX7_2.z
      SHX13_2 = 52
      SHX14_2 = 2
      SHX15_2 = "Robbable Store"
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX8_2 = SHX9_2
    end
    SHX9_2 = SHX19_1
    SHX9_2[SHX5_2] = SHX8_2
  end
end
SHX21_1 = _ENV
SHX22_1 = "RegisterNetEvent"
SHX21_1 = SHX21_1[SHX22_1]
SHX22_1 = "b598315839"
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX20_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = _ENV
SHX22_1 = "Citizen"
SHX21_1 = SHX21_1[SHX22_1]
SHX22_1 = "CreateThread"
SHX21_1 = SHX21_1[SHX22_1]
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX0_2 = pairs
  SHX1_2 = SHX16_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.loadModel
    SHX7_2 = SHX5_2.shopNpcModel
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = CreatePed
    SHX8_2 = 26
    SHX9_2 = SHX6_2
    SHX10_2 = SHX5_2.shopNpcPosition
    SHX10_2 = SHX10_2.x
    SHX11_2 = SHX5_2.shopNpcPosition
    SHX11_2 = SHX11_2.y
    SHX12_2 = SHX5_2.shopNpcPosition
    SHX12_2 = SHX12_2.z
    SHX13_2 = SHX5_2.shopNpcHeading
    SHX14_2 = false
    SHX15_2 = true
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX8_2 = SHX16_1
    SHX8_2 = SHX8_2[SHX4_2]
    SHX8_2.shopNpcHandler = SHX7_2
    SHX8_2 = SetModelAsNoLongerNeeded
    SHX9_2 = SHX6_2
    SHX8_2(SHX9_2)
    SHX8_2 = SetEntityAsMissionEntity
    SHX9_2 = SHX7_2
    SHX10_2 = true
    SHX11_2 = true
    SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX8_2 = SetPedHearingRange
    SHX9_2 = SHX7_2
    SHX10_2 = 0.0
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = SetPedSeeingRange
    SHX9_2 = SHX7_2
    SHX10_2 = 0.0
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = SetPedAlertness
    SHX9_2 = SHX7_2
    SHX10_2 = 0.0
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = SetPedFleeAttributes
    SHX9_2 = SHX7_2
    SHX10_2 = 0
    SHX11_2 = false
    SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX8_2 = SetBlockingOfNonTemporaryEvents
    SHX9_2 = SHX7_2
    SHX10_2 = true
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = SetPedCombatAttributes
    SHX9_2 = SHX7_2
    SHX10_2 = 46
    SHX11_2 = true
    SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX8_2 = SetPedFleeAttributes
    SHX9_2 = SHX7_2
    SHX10_2 = 0
    SHX11_2 = false
    SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.loadModel
    SHX9_2 = SHX5_2.prop_safe
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.loadModel
    SHX10_2 = SHX5_2.prop_door
    SHX9_2 = SHX9_2(SHX10_2)
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.loadModel
    SHX11_2 = SHX5_2.money_prop
    SHX10_2 = SHX10_2(SHX11_2)
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.loadModel
    SHX12_2 = SHX5_2.money_prop2
    SHX11_2 = SHX11_2(SHX12_2)
    SHX12_2 = CMG
    SHX12_2 = SHX12_2.loadModel
    SHX13_2 = SHX5_2.money_prop3
    SHX12_2 = SHX12_2(SHX13_2)
    SHX13_2 = CMG
    SHX13_2 = SHX13_2.loadModel
    SHX14_2 = SHX5_2.money_prop4
    SHX13_2 = SHX13_2(SHX14_2)
    SHX14_2 = CreateObject
    SHX15_2 = SHX8_2
    SHX16_2 = SHX5_2.safePosition
    SHX16_2 = SHX16_2.x
    SHX17_2 = SHX5_2.safePosition
    SHX17_2 = SHX17_2.y
    SHX18_2 = SHX5_2.safePosition
    SHX18_2 = SHX18_2.z
    SHX18_2 = SHX18_2 - 0.8
    SHX19_2 = false
    SHX20_2 = false
    SHX21_2 = true
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX15_2 = SHX16_1
    SHX15_2 = SHX15_2[SHX4_2]
    SHX15_2.safeHandler = SHX14_2
    SHX15_2 = SetEntityHeading
    SHX16_2 = SHX14_2
    SHX17_2 = SHX16_1
    SHX17_2 = SHX17_2[SHX4_2]
    SHX17_2 = SHX17_2.safeHeading
    SHX15_2(SHX16_2, SHX17_2)
    SHX15_2 = SetEntityInvincible
    SHX16_2 = SHX14_2
    SHX17_2 = true
    SHX15_2(SHX16_2, SHX17_2)
    SHX15_2 = FreezeEntityPosition
    SHX16_2 = SHX14_2
    SHX17_2 = true
    SHX15_2(SHX16_2, SHX17_2)
    SHX15_2 = CreateObject
    SHX16_2 = SHX9_2
    SHX17_2 = SHX5_2.safePosition
    SHX17_2 = SHX17_2.x
    SHX18_2 = SHX5_2.safePosition
    SHX18_2 = SHX18_2.y
    SHX19_2 = SHX5_2.safePosition
    SHX19_2 = SHX19_2.z
    SHX19_2 = SHX19_2 - 0.7
    SHX20_2 = false
    SHX21_2 = false
    SHX22_2 = true
    SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX16_2 = SHX16_1
    SHX16_2 = SHX16_2[SHX4_2]
    SHX16_2.doorHandler = SHX15_2
    SHX16_2 = SetEntityHeading
    SHX17_2 = SHX15_2
    SHX18_2 = SHX16_1
    SHX18_2 = SHX18_2[SHX4_2]
    SHX18_2 = SHX18_2.safeHeading
    SHX16_2(SHX17_2, SHX18_2)
    SHX16_2 = SetEntityInvincible
    SHX17_2 = SHX15_2
    SHX18_2 = true
    SHX16_2(SHX17_2, SHX18_2)
    SHX16_2 = FreezeEntityPosition
    SHX17_2 = SHX15_2
    SHX18_2 = true
    SHX16_2(SHX17_2, SHX18_2)
    SHX16_2 = CreateObject
    SHX17_2 = SHX10_2
    SHX18_2 = SHX5_2.moneyPos
    SHX18_2 = SHX18_2.x
    SHX19_2 = SHX5_2.moneyPos
    SHX19_2 = SHX19_2.y
    SHX20_2 = SHX5_2.moneyPos
    SHX20_2 = SHX20_2.z
    SHX21_2 = false
    SHX22_2 = false
    SHX23_2 = true
    SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
    SHX17_2 = SHX16_1
    SHX17_2 = SHX17_2[SHX4_2]
    SHX17_2.moneyHandler = SHX16_2
    SHX17_2 = SetEntityHeading
    SHX18_2 = SHX16_2
    SHX19_2 = SHX16_1
    SHX19_2 = SHX19_2[SHX4_2]
    SHX19_2 = SHX19_2.moneyHeading
    SHX17_2(SHX18_2, SHX19_2)
    SHX17_2 = SetEntityInvincible
    SHX18_2 = SHX16_2
    SHX19_2 = true
    SHX17_2(SHX18_2, SHX19_2)
    SHX17_2 = FreezeEntityPosition
    SHX18_2 = SHX16_2
    SHX19_2 = true
    SHX17_2(SHX18_2, SHX19_2)
    SHX17_2 = CreateObject
    SHX18_2 = SHX11_2
    SHX19_2 = SHX5_2.moneyPos2
    SHX19_2 = SHX19_2.x
    SHX20_2 = SHX5_2.moneyPos2
    SHX20_2 = SHX20_2.y
    SHX21_2 = SHX5_2.moneyPos2
    SHX21_2 = SHX21_2.z
    SHX22_2 = false
    SHX23_2 = false
    SHX24_2 = true
    SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    SHX18_2 = SHX16_1
    SHX18_2 = SHX18_2[SHX4_2]
    SHX18_2.moneyHandler2 = SHX17_2
    SHX18_2 = SetEntityHeading
    SHX19_2 = SHX17_2
    SHX20_2 = SHX16_1
    SHX20_2 = SHX20_2[SHX4_2]
    SHX20_2 = SHX20_2.moneyHeading2
    SHX18_2(SHX19_2, SHX20_2)
    SHX18_2 = SetEntityInvincible
    SHX19_2 = SHX17_2
    SHX20_2 = true
    SHX18_2(SHX19_2, SHX20_2)
    SHX18_2 = FreezeEntityPosition
    SHX19_2 = SHX17_2
    SHX20_2 = true
    SHX18_2(SHX19_2, SHX20_2)
    SHX18_2 = CreateObject
    SHX19_2 = SHX12_2
    SHX20_2 = SHX5_2.moneyPos3
    SHX20_2 = SHX20_2.x
    SHX21_2 = SHX5_2.moneyPos3
    SHX21_2 = SHX21_2.y
    SHX22_2 = SHX5_2.moneyPos3
    SHX22_2 = SHX22_2.z
    SHX23_2 = false
    SHX24_2 = false
    SHX25_2 = true
    SHX18_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    SHX19_2 = SHX16_1
    SHX19_2 = SHX19_2[SHX4_2]
    SHX19_2.moneyHandler3 = SHX18_2
    SHX19_2 = SetEntityHeading
    SHX20_2 = SHX18_2
    SHX21_2 = SHX16_1
    SHX21_2 = SHX21_2[SHX4_2]
    SHX21_2 = SHX21_2.moneyHeading3
    SHX19_2(SHX20_2, SHX21_2)
    SHX19_2 = SetEntityInvincible
    SHX20_2 = SHX18_2
    SHX21_2 = true
    SHX19_2(SHX20_2, SHX21_2)
    SHX19_2 = FreezeEntityPosition
    SHX20_2 = SHX18_2
    SHX21_2 = true
    SHX19_2(SHX20_2, SHX21_2)
    SHX19_2 = CreateObject
    SHX20_2 = SHX13_2
    SHX21_2 = SHX5_2.moneyPos4
    SHX21_2 = SHX21_2.x
    SHX22_2 = SHX5_2.moneyPos4
    SHX22_2 = SHX22_2.y
    SHX23_2 = SHX5_2.moneyPos4
    SHX23_2 = SHX23_2.z
    SHX24_2 = false
    SHX25_2 = false
    SHX26_2 = true
    SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    SHX20_2 = SHX16_1
    SHX20_2 = SHX20_2[SHX4_2]
    SHX20_2.moneyHandler4 = SHX19_2
    SHX20_2 = SetEntityHeading
    SHX21_2 = SHX19_2
    SHX22_2 = SHX16_1
    SHX22_2 = SHX22_2[SHX4_2]
    SHX22_2 = SHX22_2.moneyHeading4
    SHX20_2(SHX21_2, SHX22_2)
    SHX20_2 = SetEntityInvincible
    SHX21_2 = SHX19_2
    SHX22_2 = true
    SHX20_2(SHX21_2, SHX22_2)
    SHX20_2 = FreezeEntityPosition
    SHX21_2 = SHX19_2
    SHX22_2 = true
    SHX20_2(SHX21_2, SHX22_2)
    SHX20_2 = SetModelAsNoLongerNeeded
    SHX21_2 = SHX8_2
    SHX20_2(SHX21_2)
    SHX20_2 = SetModelAsNoLongerNeeded
    SHX21_2 = SHX9_2
    SHX20_2(SHX21_2)
    SHX20_2 = SetModelAsNoLongerNeeded
    SHX21_2 = SHX10_2
    SHX20_2(SHX21_2)
    SHX20_2 = SetModelAsNoLongerNeeded
    SHX21_2 = SHX11_2
    SHX20_2(SHX21_2)
    SHX20_2 = SetModelAsNoLongerNeeded
    SHX21_2 = SHX12_2
    SHX20_2(SHX21_2)
    SHX20_2 = SetModelAsNoLongerNeeded
    SHX21_2 = SHX13_2
    SHX20_2(SHX21_2)
  end
  while true do
    SHX0_2 = GetEntityCoords
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    SHX1_2 = pairs
    SHX2_2 = SHX16_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX6_2.safePosition
      SHX7_2 = SHX0_2 - SHX7_2
      SHX7_2 = #SHX7_2
      SHX6_2.distanceToPlayer = SHX7_2
    end
    SHX1_2 = Wait
    SHX2_2 = 250
    SHX1_2(SHX2_2)
  end
end
SHX21_1(SHX22_1)
SHX21_1 = true
SHX22_1 = 0
SHX23_1 = 3000
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = SHX21_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = pairs
  SHX2_2 = SHX16_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.distanceToPlayer
    if SHX7_2 < 10.0 then
      SHX7_2 = SHX6_2.shopNpcHandler
      if 0 ~= SHX7_2 then
        SHX8_2 = IsPlayerFreeAimingAtEntity
        SHX9_2 = PlayerId
        SHX9_2 = SHX9_2()
        SHX10_2 = SHX7_2
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
        if SHX8_2 then
          SHX8_2 = HasEntityClearLosToEntityInFront
          SHX9_2 = SHX0_2
          SHX10_2 = SHX7_2
          SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
          if SHX8_2 then
            SHX8_2 = IsPedDeadOrDying
            SHX9_2 = SHX7_2
            SHX10_2 = false
            SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
            if not SHX8_2 then
              SHX8_2 = GetEntityCoords
              SHX9_2 = SHX0_2
              SHX8_2 = SHX8_2(SHX9_2)
              SHX9_2 = GetEntityCoords
              SHX10_2 = SHX7_2
              SHX9_2 = SHX9_2(SHX10_2)
              SHX8_2 = SHX8_2 - SHX9_2
              SHX8_2 = #SHX8_2
              if SHX8_2 <= 5.0 then
                SHX8_2 = SHX12_1
                if not SHX8_2 then
                  SHX8_2 = GetSelectedPedWeapon
                  SHX9_2 = CMG
                  SHX9_2 = SHX9_2.getPlayerPed
                  SHX9_2, SHX10_2 = SHX9_2()
                  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
                  SHX9_2 = GetHashKey
                  SHX10_2 = "WEAPON_UNARMED"
                  SHX9_2 = SHX9_2(SHX10_2)
                  if SHX8_2 == SHX9_2 then
                    SHX8_2 = GetGameTimer
                    SHX8_2 = SHX8_2()
                    SHX9_2 = SHX22_1
                    SHX9_2 = SHX8_2 - SHX9_2
                    SHX10_2 = SHX23_1
                    if SHX9_2 >= SHX10_2 then
                      SHX22_1 = SHX8_2
                      SHX9_2 = tCMG
                      SHX9_2 = SHX9_2.notify
                      SHX10_2 = "~r~You need a weapon in your hands to rob this store!"
                      SHX9_2(SHX10_2)
                    end
                  else
                    SHX8_2 = TriggerServerEvent
                    SHX9_2 = "9feca19ddf"
                    SHX10_2 = SHX5_2
                    SHX8_2(SHX9_2, SHX10_2)
                    SHX8_2 = false
                    SHX21_1 = SHX8_2
                    SHX8_2 = SetTimeout
                    SHX9_2 = 40000
                    function SHX10_2()
                      -- [AI CLEANUP] Decompiled Lua - Fix these:
                      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                      -- 3. Replace goto/label with while/repeat-until where possible
                      -- 4. Remove decompiler comments, add meaningful ones
                      -- 5. Fix indentation and formatting
                      
                      local SHX0_3, SHX1_3
                      SHX0_3 = true
                      SHX21_1 = SHX0_3
                    end
                    SHX8_2(SHX9_2, SHX10_2)
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
SHX25_1 = _ENV
SHX26_1 = "CMG"
SHX25_1 = SHX25_1[SHX26_1]
SHX26_1 = "createThreadOnTick"
SHX25_1 = SHX25_1[SHX26_1]
SHX26_1 = SHX24_1
SHX27_1 = "Store Robbery"
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = _ENV
SHX26_1 = "RegisterNetEvent"
SHX25_1 = SHX25_1[SHX26_1]
SHX26_1 = "95dec7b268"
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX16_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2.robberyInProgress = true
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = _ENV
SHX26_1 = "RegisterNetEvent"
SHX25_1 = SHX25_1[SHX26_1]
SHX26_1 = "880648a891"
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = SHX16_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2.shopNpcHandler
  SHX2_2 = SHX16_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2 = SHX2_2.shopNpcPosition
  SHX3_2 = SetEntityCoords
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX8_2 = true
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = SetEntityHeading
  SHX4_2 = SHX1_2
  SHX5_2 = SHX16_1
  SHX5_2 = SHX5_2[SHX0_2]
  SHX5_2 = SHX5_2.shopNpcHeading
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadAnimDict
  SHX4_2 = "mp_am_hold_up"
  SHX3_2(SHX4_2)
  SHX3_2 = TaskPlayAnim
  SHX4_2 = SHX1_2
  SHX5_2 = "mp_am_hold_up"
  SHX6_2 = "holdup_victim_20s"
  SHX7_2 = 8.0
  SHX8_2 = -8.0
  SHX9_2 = -1
  SHX10_2 = 2
  SHX11_2 = 0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = _ENV
SHX26_1 = "RegisterNetEvent"
SHX25_1 = SHX25_1[SHX26_1]
SHX26_1 = "0b120db34a"
function SHX27_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX12_1 = SHX0_2
  SHX2_2 = GetEntityCoords
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2()
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  while true do
    SHX3_2 = SHX12_1
    if not SHX3_2 then
      break
    end
    SHX3_2 = GetEntityCoords
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerPed
    SHX4_2, SHX5_2, SHX6_2 = SHX4_2()
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX4_2 = SHX2_2 - SHX3_2
    SHX4_2 = #SHX4_2
    if SHX4_2 > 20 then
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "91fa00b324"
      SHX6_2 = SHX1_2
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = SHX16_1
      SHX4_2 = SHX4_2[SHX1_2]
      SHX4_2.robberyInProgress = false
      break
    end
    SHX4_2 = Wait
    SHX5_2 = 100
    SHX4_2(SHX5_2)
  end
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = _ENV
SHX26_1 = "RegisterNetEvent"
SHX25_1 = SHX25_1[SHX26_1]
SHX26_1 = "28bff1b311"
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = SHX16_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2.robberyInProgress = false
  SHX1_2 = SHX16_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2.shopNpcHandler
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = DeleteEntity
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadModel
  SHX3_2 = SHX16_1
  SHX3_2 = SHX3_2[SHX0_2]
  SHX3_2 = SHX3_2.shopNpcModel
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = CreatePed
  SHX4_2 = 26
  SHX5_2 = SHX2_2
  SHX6_2 = SHX16_1
  SHX6_2 = SHX6_2[SHX0_2]
  SHX6_2 = SHX6_2.shopNpcPosition
  SHX6_2 = SHX6_2.x
  SHX7_2 = SHX16_1
  SHX7_2 = SHX7_2[SHX0_2]
  SHX7_2 = SHX7_2.shopNpcPosition
  SHX7_2 = SHX7_2.y
  SHX8_2 = SHX16_1
  SHX8_2 = SHX8_2[SHX0_2]
  SHX8_2 = SHX8_2.shopNpcPosition
  SHX8_2 = SHX8_2.z
  SHX9_2 = SHX16_1
  SHX9_2 = SHX9_2[SHX0_2]
  SHX9_2 = SHX9_2.shopNpcHeading
  SHX10_2 = false
  SHX11_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX4_2 = SHX16_1
  SHX4_2 = SHX4_2[SHX0_2]
  SHX4_2.shopNpcHandler = SHX3_2
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = SHX2_2
  SHX4_2(SHX5_2)
  SHX4_2 = SetEntityAsMissionEntity
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX7_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetPedHearingRange
  SHX5_2 = SHX3_2
  SHX6_2 = 0.0
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetPedSeeingRange
  SHX5_2 = SHX3_2
  SHX6_2 = 0.0
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetPedAlertness
  SHX5_2 = SHX3_2
  SHX6_2 = 0.0
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetPedFleeAttributes
  SHX5_2 = SHX3_2
  SHX6_2 = 0
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetBlockingOfNonTemporaryEvents
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetPedCombatAttributes
  SHX5_2 = SHX3_2
  SHX6_2 = 46
  SHX7_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetPedFleeAttributes
  SHX5_2 = SHX3_2
  SHX6_2 = 0
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = _ENV
SHX26_1 = "Citizen"
SHX25_1 = SHX25_1[SHX26_1]
SHX26_1 = "CreateThread"
SHX25_1 = SHX25_1[SHX26_1]
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  while true do
    SHX0_2 = pairs
    SHX1_2 = SHX16_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = SHX5_2.distanceToPlayer
      if SHX6_2 < 2.0 then
        SHX6_2 = SHX13_1
        if "complete" == SHX6_2 then
          SHX6_2 = SHX17_1
          SHX7_2 = "Press ~INPUT_CONTEXT~ to grab the money!"
          SHX6_2(SHX7_2)
          SHX6_2 = IsControlJustReleased
          SHX7_2 = 1
          SHX8_2 = 51
          SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
          if SHX6_2 then
            SHX6_2 = DeleteObject
            SHX7_2 = SHX5_2.moneyHandler
            SHX6_2(SHX7_2)
            SHX6_2 = DeleteObject
            SHX7_2 = SHX5_2.moneyHandler2
            SHX6_2(SHX7_2)
            SHX6_2 = DeleteObject
            SHX7_2 = SHX5_2.moneyHandler3
            SHX6_2(SHX7_2)
            SHX6_2 = DeleteObject
            SHX7_2 = SHX5_2.moneyHandler4
            SHX6_2(SHX7_2)
            SHX6_2 = TriggerServerEvent
            SHX7_2 = "35457da4c0"
            SHX8_2 = SHX4_2
            SHX6_2(SHX7_2, SHX8_2)
            SHX6_2 = SHX16_1
            SHX6_2 = SHX6_2[SHX4_2]
            SHX6_2.robberyInProgress = false
            SHX6_2 = "setup"
            SHX13_1 = SHX6_2
            SHX6_2 = Wait
            SHX7_2 = 5000
            SHX6_2(SHX7_2)
            SHX6_2 = TriggerServerEvent
            SHX7_2 = "1203341535"
            SHX8_2 = SHX4_2
            SHX6_2(SHX7_2, SHX8_2)
            SHX6_2 = CMG
            SHX6_2 = SHX6_2.setPlayerCombatTimer
            SHX7_2 = 60
            SHX8_2 = false
            SHX6_2(SHX7_2, SHX8_2)
          end
        else
          SHX6_2 = SHX5_2.robberyInProgress
          if SHX6_2 then
            SHX6_2 = SHX17_1
            SHX7_2 = "Press ~INPUT_CONTEXT~ to start cracking the safe!"
            SHX6_2(SHX7_2)
            SHX6_2 = IsControlJustReleased
            SHX7_2 = 1
            SHX8_2 = 51
            SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
            if SHX6_2 then
              SHX6_2 = tCMG
              SHX6_2 = SHX6_2.notify
              SHX7_2 = "~g~Started cracking safe.."
              SHX6_2(SHX7_2)
              SHX6_2 = LoadResources
              SHX6_2()
              SHX6_2 = math
              SHX6_2 = SHX6_2.randomseed
              SHX7_2 = GetGameTimer
              SHX7_2, SHX8_2, SHX9_2 = SHX7_2()
              SHX6_2(SHX7_2, SHX8_2, SHX9_2)
              SHX6_2 = math
              SHX6_2 = SHX6_2.random
              SHX7_2 = 0
              SHX8_2 = 100
              SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
              SHX7_2 = 3.6 * SHX6_2
              SHX6_1 = SHX7_2
              SHX7_2 = SHX0_1
              SHX3_1 = SHX7_2
              SHX7_2 = true
              SHX14_1 = SHX7_2
              SHX7_2 = "setup"
              SHX13_1 = SHX7_2
              SHX7_2 = RunMiniGame
              SHX8_2 = SHX4_2
              SHX9_2 = SHX5_2.safeHandler
              SHX7_2(SHX8_2, SHX9_2)
              SHX7_2 = CMG
              SHX7_2 = SHX7_2.setPlayerCombatTimer
              SHX8_2 = 60
              SHX9_2 = false
              SHX7_2(SHX8_2, SHX9_2)
            end
          end
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX25_1(SHX26_1)
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = RequestScaleformMovie
  SHX1_2 = "instructional_buttons"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = HasScaleformMovieLoaded
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    while true do
      SHX1_2 = HasScaleformMovieLoaded
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        break
      end
      SHX1_2 = Wait
      SHX2_2 = 0
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = {}
  SHX2_2 = {}
  SHX2_2.label = "Attempt combination"
  SHX2_2.button = "~INPUT_CELLPHONE_UP~"
  SHX3_2 = {}
  SHX3_2.label = "Turn combination right"
  SHX3_2.button = "~INPUT_CELLPHONE_RIGHT~"
  SHX4_2 = {}
  SHX4_2.label = "Turn combination left"
  SHX4_2.button = "~INPUT_CELLPHONE_LEFT~"
  SHX5_2 = {}
  SHX5_2.label = "Cancel"
  SHX5_2.button = "~INPUT_CELLPHONE_CANCEL~"
  SHX1_2[1] = SHX2_2
  SHX1_2[2] = SHX3_2
  SHX1_2[3] = SHX4_2
  SHX1_2[4] = SHX5_2
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX0_2
  SHX4_2 = "CLEAR_ALL"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX0_2
  SHX4_2 = "TOGGLE_MOUSE_BUTTONS"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamBool
  SHX3_2 = false
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = ipairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = BeginScaleformMovieMethod
    SHX9_2 = SHX0_2
    SHX10_2 = "SET_DATA_SLOT"
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = ScaleformMovieMethodAddParamInt
    SHX9_2 = SHX6_2 - 1
    SHX8_2(SHX9_2)
    SHX8_2 = _ENV
    SHX9_2 = "ScaleformMovieMethodAddParamPlayerNameString"
    SHX8_2 = SHX8_2[SHX9_2]
    SHX9_2 = SHX7_2.button
    SHX8_2(SHX9_2)
    SHX8_2 = _ENV
    SHX9_2 = "ScaleformMovieMethodAddParamTextureNameString"
    SHX8_2 = SHX8_2[SHX9_2]
    SHX9_2 = SHX7_2.label
    SHX8_2(SHX9_2)
    SHX8_2 = EndScaleformMovieMethod
    SHX8_2()
  end
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX0_2
  SHX4_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = -1
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = DrawScaleformMovieFullscreen
  SHX3_2 = SHX0_2
  SHX4_2 = 255
  SHX5_2 = 255
  SHX6_2 = 255
  SHX7_2 = 255
  SHX8_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
SHX26_1 = _ENV
SHX27_1 = "AddEventHandler"
SHX26_1 = SHX26_1[SHX27_1]
SHX27_1 = "onResourceStop"
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 == SHX1_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX16_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = DeleteObject
      SHX8_2 = SHX6_2.safeHandler
      SHX7_2(SHX8_2)
      SHX7_2 = DeleteObject
      SHX8_2 = SHX6_2.doorHandler
      SHX7_2(SHX8_2)
      SHX7_2 = DeleteObject
      SHX8_2 = SHX6_2.moneyHandler
      SHX7_2(SHX8_2)
      SHX7_2 = DeleteObject
      SHX8_2 = SHX6_2.moneyHandler2
      SHX7_2(SHX8_2)
      SHX7_2 = DeleteObject
      SHX8_2 = SHX6_2.moneyHandler3
      SHX7_2(SHX8_2)
      SHX7_2 = DeleteObject
      SHX8_2 = SHX6_2.moneyHandler4
      SHX7_2(SHX8_2)
    end
  end
end
SHX26_1(SHX27_1, SHX28_1)
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = {}
  SHX2_2 = math
  SHX2_2 = SHX2_2.randomseed
  SHX3_2 = GetGameTimer
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX3_2()
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = 1
  SHX3_2 = SHX0_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = math
    SHX6_2 = SHX6_2.random
    SHX7_2 = 1
    SHX8_2 = 99
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX1_2[SHX5_2] = SHX6_2
  end
  return SHX1_2
end
SHX27_1 = _ENV
SHX28_1 = "RunMiniGame"
function SHX29_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = 1
  SHX3_2 = SHX26_1
  SHX4_2 = 10
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = InitSafeLocks
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  while true do
    SHX5_2 = SHX14_1
    if not SHX5_2 then
      break
    end
    SHX5_2 = SHX13_1
    if "setup" == SHX5_2 then
      SHX5_2 = GetEntityHeading
      SHX6_2 = SHX1_2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX5_1 = SHX5_2
      SHX5_2 = GetSafeDoorAnimOffsetPosition
      SHX6_2 = GetEntityCoords
      SHX7_2 = SHX1_2
      SHX6_2 = SHX6_2(SHX7_2)
      SHX7_2 = SHX5_1
      SHX8_2 = "intro_dont_work"
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX4_1 = SHX5_2
      SHX5_2 = PlaySafeCrackIntroAnim
      SHX6_2 = SHX4_1
      SHX7_2 = SHX5_1
      SHX5_2(SHX6_2, SHX7_2)
      SHX5_2 = GetSafeDoorAnimOffsetPosition
      SHX6_2 = GetEntityCoords
      SHX7_2 = SHX1_2
      SHX6_2 = SHX6_2(SHX7_2)
      SHX7_2 = SHX5_1
      SHX8_2 = "cracking"
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX4_1 = SHX5_2
    else
      SHX5_2 = SHX13_1
      if "cracking" == SHX5_2 then
        SHX5_2 = SHX25_1
        SHX5_2()
        SHX5_2 = GetEntityHealth
        SHX6_2 = CMG
        SHX6_2 = SHX6_2.getPlayerPed
        SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX6_2()
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        if not (SHX5_2 <= 102) then
          SHX6_2 = CMG
          SHX6_2 = SHX6_2.isHandcuffed
          SHX6_2 = SHX6_2()
          if not SHX6_2 then
            goto SHX_LABEL_59
          end
        end
        SHX6_2 = false
        SHX14_1 = SHX6_2
        goto SHX_LABEL_155
        -- [FIX IF ERROR] Move ::SHX_LABEL_59:: outside nested blocks until all 'goto SHX_LABEL_59' can see it
        ::SHX_LABEL_59::
        SHX6_2 = HandleSafeDialMovement
        SHX6_2()
        SHX6_2 = GetCurrentSafeDialNumber
        SHX7_2 = SHX6_1
        SHX6_2 = SHX6_2(SHX7_2)
        SHX7_2 = IsControlJustPressed
        SHX8_2 = 0
        SHX9_2 = 172
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
        if SHX7_2 then
          SHX7_2 = SHX3_2[SHX2_2]
          if SHX6_2 == SHX7_2 then
            SHX4_2[SHX2_2] = false
            SHX2_2 = SHX2_2 + 1
            SHX7_2 = ReleaseCurrentPin
            SHX8_2 = SHX4_2
            SHX9_2 = SHX2_2
            SHX7_2(SHX8_2, SHX9_2)
            SHX7_2 = IsSafeUnlocked
            SHX8_2 = SHX4_2
            SHX9_2 = SHX2_2
            SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
            if SHX7_2 then
              SHX7_2 = EndMiniGame
              SHX8_2 = SHX0_2
              SHX7_2(SHX8_2)
              SHX7_2 = "complete"
              SHX13_1 = SHX7_2
              SHX7_2 = false
              SHX14_1 = SHX7_2
              SHX7_2 = ClearPedTasksImmediately
              SHX8_2 = CMG
              SHX8_2 = SHX8_2.getPlayerPed
              SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2()
              SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
            end
          else
            SHX2_2 = 1
            SHX7_2 = InitSafeLocks
            SHX8_2 = SHX3_2
            SHX7_2 = SHX7_2(SHX8_2)
            SHX4_2 = SHX7_2
            SHX7_2 = SHX26_1
            SHX8_2 = 10
            SHX7_2 = SHX7_2(SHX8_2)
            SHX3_2 = SHX7_2
            SHX7_2 = PlaySoundFrontend
            SHX8_2 = -1
            SHX9_2 = "TUMBLER_RESET"
            SHX10_2 = "SAFE_CRACK_SOUNDSET"
            SHX11_2 = true
            SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
            SHX7_2 = HandleIncorrectMovement
            SHX7_2()
            SHX7_2 = "idle"
            SHX1_1 = SHX7_2
            SHX7_2 = SHX0_1
            SHX3_1 = SHX7_2
            SHX7_2 = Wait
            SHX8_2 = 3500
            SHX7_2(SHX8_2)
            SHX7_2 = ClearPedTasksImmediately
            SHX8_2 = CMG
            SHX8_2 = SHX8_2.getPlayerPed
            SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2()
            SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
          end
        else
          SHX7_2 = IsControlJustPressed
          SHX8_2 = 0
          SHX9_2 = 177
          SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
          if SHX7_2 then
            SHX7_2 = false
            SHX14_1 = SHX7_2
            SHX7_2 = ClearPedTasksImmediately
            SHX8_2 = CMG
            SHX8_2 = SHX8_2.getPlayerPed
            SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2()
            SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
          end
        end
        SHX7_2 = SHX13_1
        if "complete" ~= SHX7_2 then
          SHX7_2 = GetDialProximityToTargetPin
          SHX8_2 = SHX6_2
          SHX9_2 = SHX3_2
          SHX10_2 = SHX2_2
          SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
          SHX8_2 = SetDialSpriteShake
          SHX9_2 = SHX7_2
          SHX8_2(SHX9_2)
          SHX8_2 = DrawSprites
          SHX8_2()
        end
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_155:: outside nested blocks until all 'goto SHX_LABEL_155' can see it
    ::SHX_LABEL_155::
    SHX5_2 = Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX5_2 = RemoveAnimDict
  SHX6_2 = "mini@safe_cracking"
  SHX5_2(SHX6_2)
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "GetSafeDoorAnimOffsetPosition"
function SHX29_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX3_2 = nil
  SHX4_2 = nil
  SHX5_2 = nil
  SHX6_2 = nil
  if "intro" == SHX2_2 then
    SHX3_2 = 0.8
    SHX4_2 = -0.35
    SHX5_2 = -0.35
    SHX6_2 = -0.8
  else
    SHX3_2 = 0.53
    SHX4_2 = -0.6
    SHX5_2 = -0.6
    SHX6_2 = -0.53
  end
  SHX7_2 = math
  SHX7_2 = SHX7_2.sin
  SHX8_2 = math
  SHX8_2 = SHX8_2.pi
  SHX8_2 = SHX1_2 * SHX8_2
  SHX8_2 = SHX8_2 / 180
  SHX7_2 = SHX7_2(SHX8_2)
  SHX7_2 = SHX3_2 * SHX7_2
  SHX8_2 = math
  SHX8_2 = SHX8_2.cos
  SHX9_2 = math
  SHX9_2 = SHX9_2.pi
  SHX9_2 = SHX1_2 * SHX9_2
  SHX9_2 = SHX9_2 / 180
  SHX8_2 = SHX8_2(SHX9_2)
  SHX8_2 = SHX4_2 * SHX8_2
  SHX7_2 = SHX7_2 + SHX8_2
  SHX8_2 = math
  SHX8_2 = SHX8_2.sin
  SHX9_2 = math
  SHX9_2 = SHX9_2.pi
  SHX9_2 = SHX1_2 * SHX9_2
  SHX9_2 = SHX9_2 / 180
  SHX8_2 = SHX8_2(SHX9_2)
  SHX8_2 = SHX5_2 * SHX8_2
  SHX9_2 = math
  SHX9_2 = SHX9_2.cos
  SHX10_2 = math
  SHX10_2 = SHX10_2.pi
  SHX10_2 = SHX1_2 * SHX10_2
  SHX10_2 = SHX10_2 / 180
  SHX9_2 = SHX9_2(SHX10_2)
  SHX9_2 = SHX6_2 * SHX9_2
  SHX8_2 = SHX8_2 + SHX9_2
  SHX9_2 = vector3
  SHX10_2 = SHX0_2.x
  SHX10_2 = SHX10_2 + SHX7_2
  SHX11_2 = SHX0_2.y
  SHX11_2 = SHX11_2 + SHX8_2
  SHX12_2 = GetEntityCoords
  SHX13_2 = CMG
  SHX13_2 = SHX13_2.getPlayerPed
  SHX13_2 = SHX13_2()
  SHX12_2 = SHX12_2(SHX13_2)
  SHX12_2 = SHX12_2.z
  return SHX9_2(SHX10_2, SHX11_2, SHX12_2)
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "PlaySafeCrackIntroAnim"
function SHX29_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX2_2 = "mini@safe_cracking"
  SHX3_2 = "step_into"
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadAnimDict
  SHX5_2 = SHX2_2
  SHX4_2(SHX5_2)
  SHX4_2 = TaskPlayAnimAdvanced
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerPed
  SHX5_2 = SHX5_2()
  SHX6_2 = SHX2_2
  SHX7_2 = SHX3_2
  SHX8_2 = SHX0_2.x
  SHX9_2 = SHX0_2.y
  SHX10_2 = SHX0_2.z
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = SHX1_2
  SHX14_2 = 8.0
  SHX15_2 = 8.0
  SHX16_2 = -1
  SHX17_2 = 2
  SHX18_2 = 0.7
  SHX19_2 = 0
  SHX20_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX4_2 = RemoveAnimDict
  SHX5_2 = SHX2_2
  SHX4_2(SHX5_2)
  SHX4_2 = Wait
  SHX5_2 = 0
  SHX4_2(SHX5_2)
  SHX4_2 = Wait
  SHX5_2 = 1000
  SHX4_2(SHX5_2)
  SHX4_2 = "cracking"
  SHX13_1 = SHX4_2
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "HandleSafeDialMovement"
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = "mini@safe_cracking"
  SHX2_2 = ""
  SHX3_2 = IsEntityPlayingAnim
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = "dial_turn_fail_3"
  SHX7_2 = 3
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  if not SHX3_2 then
    SHX3_2 = IsEntityPlayingAnim
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    SHX6_2 = "dial_turn_fail_4"
    SHX7_2 = 3
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    if not SHX3_2 then
      goto SHX_LABEL_23
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
  ::SHX_LABEL_23::
  SHX3_2 = IsControlJustPressed
  SHX4_2 = 0
  SHX5_2 = 174
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = 100
    SHX8_1 = SHX3_2
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX7_1 = SHX3_2
    SHX2_2 = "dial_turn_anti_normal"
    SHX3_2 = RotateSafeDial
    SHX4_2 = "rotation.anticlockwise"
    SHX3_2(SHX4_2)
  else
    SHX3_2 = IsControlJustPressed
    SHX4_2 = 0
    SHX5_2 = 175
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 then
      SHX3_2 = 100
      SHX8_1 = SHX3_2
      SHX3_2 = GetGameTimer
      SHX3_2 = SHX3_2()
      SHX7_1 = SHX3_2
      SHX2_2 = "dial_turn_clock_normal"
      SHX3_2 = RotateSafeDial
      SHX4_2 = "rotation.clockwise"
      SHX3_2(SHX4_2)
    else
      SHX3_2 = IsControlPressed
      SHX4_2 = 0
      SHX5_2 = 174
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        SHX3_2 = SHX7_1
        SHX4_2 = GetGameTimer
        SHX4_2 = SHX4_2()
        SHX5_2 = SHX8_1
        SHX4_2 = SHX4_2 - SHX5_2
        if SHX3_2 >= SHX4_2 then
          return
        end
        SHX3_2 = 10
        SHX8_1 = SHX3_2
        SHX3_2 = GetGameTimer
        SHX3_2 = SHX3_2()
        SHX7_1 = SHX3_2
        SHX2_2 = "dial_turn_anti_fast"
        SHX3_2 = RotateSafeDial
        SHX4_2 = "rotation.anticlockwise"
        SHX3_2(SHX4_2)
      else
        SHX3_2 = IsControlPressed
        SHX4_2 = 0
        SHX5_2 = 175
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        if SHX3_2 then
          SHX3_2 = SHX7_1
          SHX4_2 = GetGameTimer
          SHX4_2 = SHX4_2()
          SHX5_2 = SHX8_1
          SHX4_2 = SHX4_2 - SHX5_2
          if SHX3_2 >= SHX4_2 then
            return
          end
          SHX3_2 = 10
          SHX8_1 = SHX3_2
          SHX3_2 = GetGameTimer
          SHX3_2 = SHX3_2()
          SHX7_1 = SHX3_2
          SHX2_2 = "dial_turn_clock_fast"
          SHX3_2 = RotateSafeDial
          SHX4_2 = "rotation.clockwise"
          SHX3_2(SHX4_2)
        else
          SHX3_2 = "rotation.idle"
          SHX1_1 = SHX3_2
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX0_2
          SHX5_2 = SHX1_2
          SHX6_2 = "dial_turn_anti_normal"
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if not SHX3_2 then
            SHX3_2 = IsEntityPlayingAnim
            SHX4_2 = SHX0_2
            SHX5_2 = SHX1_2
            SHX6_2 = "dial_turn_clock_normal"
            SHX7_2 = 3
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
            if not SHX3_2 then
              SHX3_2 = IsEntityPlayingAnim
              SHX4_2 = SHX0_2
              SHX5_2 = SHX1_2
              SHX6_2 = "dial_turn_anti_fast"
              SHX7_2 = 3
              SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
              if not SHX3_2 then
                SHX3_2 = IsEntityPlayingAnim
                SHX4_2 = SHX0_2
                SHX5_2 = SHX1_2
                SHX6_2 = "dial_turn_clock_fast"
                SHX7_2 = 3
                SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
                if not SHX3_2 then
                  SHX3_2 = IsEntityPlayingAnim
                  SHX4_2 = SHX0_2
                  SHX5_2 = SHX1_2
                  SHX6_2 = "idle_base"
                  SHX7_2 = 3
                  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
                  if not SHX3_2 then
                    SHX3_2 = IsEntityPlayingAnim
                    SHX4_2 = SHX0_2
                    SHX5_2 = SHX1_2
                    SHX6_2 = "idle_heavy_breathe"
                    SHX7_2 = 3
                    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
                    if not SHX3_2 then
                      SHX3_2 = IsEntityPlayingAnim
                      SHX4_2 = SHX0_2
                      SHX5_2 = SHX1_2
                      SHX6_2 = "idle_look_around"
                      SHX7_2 = 3
                      SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
                      if not SHX3_2 then
                        goto SHX_LABEL_164
                      end
                    end
                  end
                end
              end
            end
          end
          return
          -- [FIX IF ERROR] Move ::SHX_LABEL_164:: outside nested blocks until all 'goto SHX_LABEL_164' can see it
          ::SHX_LABEL_164::
          SHX3_2 = GetGameTimer
          SHX3_2 = SHX3_2()
          SHX3_2 = SHX3_2 % 3
          SHX4_2 = nil
          if 2 == SHX3_2 then
            SHX4_2 = "idle_heavy_breathe"
          elseif 1 == SHX3_2 then
            SHX4_2 = "idle_look_around"
          else
            SHX4_2 = "idle_base"
          end
          SHX2_2 = SHX4_2
        end
      end
    end
  end
  if "" == SHX2_2 or nil == SHX2_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadAnimDict
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = IsEntityPlayingAnim
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX7_2 = 3
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  if not SHX3_2 then
    SHX3_2 = TaskPlayAnimAdvanced
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerPed
    SHX4_2 = SHX4_2()
    SHX5_2 = SHX1_2
    SHX6_2 = SHX2_2
    SHX7_2 = SHX4_1.x
    SHX8_2 = SHX4_1.y
    SHX9_2 = SHX4_1.z
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = SHX5_1
    SHX13_2 = 8.0
    SHX14_2 = 8.0
    SHX15_2 = -1
    SHX16_2 = 1
    SHX17_2 = 1.0
    SHX18_2 = 0
    SHX19_2 = 0
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  end
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "HandleIncorrectMovement"
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = "mini@safe_cracking"
  SHX1_2 = ""
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX2_2 = SHX2_2 % 2
  if 0 == SHX2_2 then
    SHX1_2 = "dial_turn_fail_3"
  else
    SHX1_2 = "dial_turn_fail_4"
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadAnimDict
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = TaskPlayAnimAdvanced
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX4_1.x
  SHX7_2 = SHX4_1.y
  SHX8_2 = SHX4_1.z
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = SHX5_1
  SHX12_2 = 8.0
  SHX13_2 = 8.0
  SHX14_2 = -1
  SHX15_2 = 1
  SHX16_2 = 1.0
  SHX17_2 = 0
  SHX18_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX2_2 = RemoveAnimDict
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = "rotation.idle"
  SHX1_1 = SHX2_2
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "ReleaseCurrentPin"
function SHX29_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX3_1
  if "rotation.anticlockwise" == SHX2_2 then
    SHX2_2 = "rotation.clockwise"
    SHX3_1 = SHX2_2
  else
    SHX2_2 = "rotation.anticlockwise"
    SHX3_1 = SHX2_2
  end
  SHX2_2 = IsSafeUnlocked
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    SHX2_2 = PlaySoundFrontend
    SHX3_2 = -1
    SHX4_2 = "TUMBLER_PIN_FALL_FINAL"
    SHX5_2 = "SAFE_CRACK_SOUNDSET"
    SHX6_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  else
    SHX2_2 = PlaySoundFrontend
    SHX3_2 = -1
    SHX4_2 = "TUMBLER_PIN_FALL"
    SHX5_2 = "SAFE_CRACK_SOUNDSET"
    SHX6_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "DrawSprites"
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = "MPSafeCracking"
  SHX1_2 = GetAspectRatio
  SHX2_2 = true
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = DrawSprite
  SHX3_2 = SHX0_2
  SHX4_2 = "Dial_BG"
  SHX5_2 = SHX9_1
  SHX6_2 = SHX10_1
  SHX7_2 = 0.3
  SHX8_2 = SHX1_2 * 0.3
  SHX9_2 = 0
  SHX10_2 = 255
  SHX11_2 = 255
  SHX12_2 = 255
  SHX13_2 = 255
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX2_2 = DrawSprite
  SHX3_2 = SHX0_2
  SHX4_2 = "Dial"
  SHX5_2 = SHX9_1
  SHX6_2 = SHX10_1
  SHX7_2 = 0.15
  SHX8_2 = SHX1_2 * 0.3
  SHX8_2 = SHX8_2 * 0.5
  SHX9_2 = SHX6_1
  SHX10_2 = 255
  SHX11_2 = 255
  SHX12_2 = 255
  SHX13_2 = 255
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "IsSafeUnlocked"
function SHX29_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX0_2[SHX1_2]
  SHX2_2 = nil == SHX2_2
  return SHX2_2
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "CloseSafeDoor"
function SHX29_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX2_2 = SHX2_2 - SHX1_2
  SHX2_2 = #SHX2_2
  if SHX2_2 < 15.0 then
    SHX2_2 = PlaySoundFrontend
    SHX3_2 = -1
    SHX4_2 = "SAFE_DOOR_CLOSE"
    SHX5_2 = "SAFE_CRACK_SOUNDSET"
    SHX6_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
  SHX2_2 = 0
  SHX3_2 = 90
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = GetEntityHeading
    SHX7_2 = SHX0_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = SetEntityHeading
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2 - 1.0
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = Wait
    SHX8_2 = 16
    SHX7_2(SHX8_2)
  end
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "OpenSafeDoor"
function SHX29_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = 500
  SHX3_2 = Wait
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX3_2 = SHX3_2 - SHX1_2
  SHX3_2 = #SHX3_2
  if SHX3_2 < 15.0 then
    SHX3_2 = PlaySoundFrontend
    SHX4_2 = -1
    SHX5_2 = "SAFE_DOOR_OPEN"
    SHX6_2 = "SAFE_CRACK_SOUNDSET"
    SHX7_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  end
  SHX3_2 = 0
  SHX4_2 = 90
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = GetEntityHeading
    SHX8_2 = SHX0_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = SetEntityHeading
    SHX9_2 = SHX0_2
    SHX10_2 = SHX7_2 + 1.0
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = Wait
    SHX9_2 = 16
    SHX8_2(SHX9_2)
  end
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "RelockSafe"
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = InitSafeLocks
  SHX0_2()
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "GetCurrentSafeDialNumber"
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.round
  SHX2_2 = SHX0_2 / 360
  SHX2_2 = 100 * SHX2_2
  SHX3_2 = 1
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = math
  SHX2_2 = SHX2_2.abs
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX1_2 = SHX2_2
  if SHX1_2 > 100 then
    SHX2_2 = 200
    if SHX1_2 < SHX2_2 then
      SHX1_2 = SHX1_2 - 100
  end
  else
    SHX2_2 = 200
    if SHX1_2 >= SHX2_2 then
      SHX2_2 = 300
      if SHX1_2 < SHX2_2 then
        SHX1_2 = SHX1_2 - 200
    end
    else
      SHX2_2 = 300
      if SHX1_2 >= SHX2_2 then
        SHX2_2 = 400
        if SHX1_2 < SHX2_2 then
          SHX1_2 = SHX1_2 - 300
      end
      else
        SHX2_2 = 400
        if SHX1_2 >= SHX2_2 then
          SHX2_2 = 500
          if SHX1_2 < SHX2_2 then
            SHX1_2 = SHX1_2 - 400
        end
        else
          SHX2_2 = 500
          if SHX1_2 >= SHX2_2 then
            SHX2_2 = 600
            if SHX1_2 < SHX2_2 then
              SHX1_2 = SHX1_2 - 500
          end
          else
            SHX2_2 = 600
            if SHX1_2 >= SHX2_2 then
              SHX2_2 = 700
              if SHX1_2 < SHX2_2 then
                SHX1_2 = SHX1_2 - 600
            end
            else
              SHX2_2 = 700
              if SHX1_2 >= SHX2_2 then
                SHX2_2 = 800
                if SHX1_2 < SHX2_2 then
                  SHX1_2 = SHX1_2 - 700
              end
              else
                SHX2_2 = 800
                if SHX1_2 >= SHX2_2 then
                  SHX2_2 = 900
                  if SHX1_2 < SHX2_2 then
                    SHX1_2 = SHX1_2 - 800
                end
                else
                  SHX2_2 = 900
                  if SHX1_2 >= SHX2_2 then
                    SHX2_2 = 1000
                    if SHX1_2 < SHX2_2 then
                      SHX1_2 = SHX1_2 - 900
                  end
                  else
                    SHX2_2 = 1000
                    if SHX1_2 >= SHX2_2 then
                      SHX2_2 = 1100
                      if SHX1_2 < SHX2_2 then
                        SHX1_2 = SHX1_2 - 1000
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
  return SHX1_2
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "RotateSafeDial"
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  if "rotation.anticlockwise" == SHX0_2 or "rotation.clockwise" == SHX0_2 then
    SHX1_2 = 1
    SHX2_2 = nil
    if "rotation.anticlockwise" == SHX0_2 then
      SHX2_2 = 1
    else
      SHX2_2 = -1
    end
    SHX3_2 = SHX2_2 * SHX1_2
    SHX4_2 = SHX6_1
    SHX4_2 = SHX4_2 + SHX3_2
    SHX6_1 = SHX4_2
    SHX4_2 = PlaySoundFrontend
    SHX5_2 = -1
    SHX6_2 = "TUMBLER_TURN"
    SHX7_2 = "SAFE_CRACK_SOUNDSET"
    SHX8_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
  SHX1_1 = SHX0_2
  SHX2_1 = SHX0_2
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "RegisterNetEvent"
SHX27_1 = SHX27_1[SHX28_1]
SHX28_1 = "8a511fd1d8"
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX16_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2.doorHandler
  SHX2_2 = SHX16_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2 = SHX2_2.safePosition
  SHX3_2 = OpenSafeDoor
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX27_1(SHX28_1, SHX29_1)
SHX27_1 = _ENV
SHX28_1 = "RegisterNetEvent"
SHX27_1 = SHX27_1[SHX28_1]
SHX28_1 = "1203341535"
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX16_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2.doorHandler
  SHX2_2 = SHX16_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2 = SHX2_2.safePosition
  SHX3_2 = CloseSafeDoor
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX27_1(SHX28_1, SHX29_1)
SHX27_1 = _ENV
SHX28_1 = "EndMiniGame"
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = ClearPedTasks
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX2_2()
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX1_2 = "mini@safe_cracking"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadAnimDict
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = TaskPlayAnimAdvanced
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX1_2
  SHX5_2 = "door_open_succeed_stand"
  SHX6_2 = SHX4_1.x
  SHX7_2 = SHX4_1.y
  SHX8_2 = SHX4_1.z
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = SHX5_1
  SHX12_2 = 8.0
  SHX13_2 = 8.0
  SHX14_2 = -1
  SHX15_2 = 2
  SHX16_2 = 0.3
  SHX17_2 = 0
  SHX18_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX2_2 = RemoveAnimDict
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = Wait
  SHX3_2 = 2500
  SHX2_2(SHX3_2)
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "8a511fd1d8"
  SHX4_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = "setup"
  SHX13_1 = SHX2_2
  SHX2_2 = true
  SHX15_1 = SHX2_2
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "UnloadSafeCountdown"
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = 0
  SHX1_2 = 12
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = SHX15_1
    if not SHX4_2 then
      break
    end
  end
  SHX0_2 = SHX15_1
  if SHX0_2 then
    SHX0_2 = RelockSafe
    SHX0_2()
  end
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "InitSafeLocks"
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = {}
  SHX2_2 = 1
  SHX3_2 = #SHX0_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX1_2[SHX5_2] = true
  end
  return SHX1_2
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "LoadResources"
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = RequestStreamedTextureDict
  SHX1_2 = "MPSafeCracking"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = RequestAnimDict
  SHX1_2 = "mini@safe_cracking"
  SHX0_2(SHX1_2)
  while true do
    SHX0_2 = HasStreamedTextureDictLoaded
    SHX1_2 = "MPSafeCracking"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = RequestAmbientAudioBank
      SHX1_2 = "SAFE_CRACK"
      SHX2_2 = false
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = HasAnimDictLoaded
        SHX1_2 = "mini@safe_cracking"
        SHX0_2 = SHX0_2(SHX1_2)
        if SHX0_2 then
          break
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "GetDialProximityToTargetPin"
function SHX29_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = SHX1_2[SHX2_2]
  SHX4_2 = nil
  SHX5_2 = SHX1_1
  if "rotation.anticlockwise" ~= SHX5_2 then
    SHX5_2 = SHX2_1
    if "rotation.anticlockwise" ~= SHX5_2 then
      goto SHX_LABEL_12
    end
  end
  SHX4_2 = SHX3_2 - SHX0_2
  goto SHX_LABEL_22
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX5_2 = SHX1_1
  if "rotation.clockwise" ~= SHX5_2 then
    SHX5_2 = SHX2_1
    if "rotation.clockwise" ~= SHX5_2 then
      goto SHX_LABEL_21
    end
  end
  SHX4_2 = SHX0_2 - SHX3_2
  goto SHX_LABEL_22
  -- [FIX IF ERROR] Move ::SHX_LABEL_21:: outside nested blocks until all 'goto SHX_LABEL_21' can see it
  ::SHX_LABEL_21::
  SHX4_2 = 100
  -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
  ::SHX_LABEL_22::
  if SHX4_2 < 0 then
    SHX4_2 = SHX4_2 + 100
  end
  return SHX4_2
end
SHX27_1[SHX28_1] = SHX29_1
SHX27_1 = _ENV
SHX28_1 = "SetDialSpriteShake"
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if 5 == SHX0_2 or 4 == SHX0_2 or 95 == SHX0_2 or 96 == SHX0_2 then
    SHX1_2 = math
    SHX1_2 = SHX1_2.random
    SHX2_2 = 4.7975E8
    SHX3_2 = 4.805E8
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX1_2 / 1000000000
    SHX9_1 = SHX1_2
    SHX1_2 = math
    SHX1_2 = SHX1_2.random
    SHX2_2 = 2.9975E8
    SHX3_2 = 3.005E8
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX1_2 / 1000000000
    SHX10_1 = SHX1_2
  elseif 3 == SHX0_2 or 2 == SHX0_2 or 97 == SHX0_2 or 98 == SHX0_2 then
    SHX1_2 = math
    SHX1_2 = SHX1_2.random
    SHX2_2 = 4.795E8
    SHX3_2 = 4.805E8
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX1_2 / 1000000000
    SHX9_1 = SHX1_2
    SHX1_2 = math
    SHX1_2 = SHX1_2.random
    SHX2_2 = 2.995E8
    SHX3_2 = 3.005E8
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX1_2 / 1000000000
    SHX10_1 = SHX1_2
  elseif 1 == SHX0_2 or 99 == SHX0_2 then
    SHX1_2 = math
    SHX1_2 = SHX1_2.random
    SHX2_2 = 4.79E8
    SHX3_2 = 4.81E8
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX1_2 / 1000000000
    SHX9_1 = SHX1_2
    SHX1_2 = math
    SHX1_2 = SHX1_2.random
    SHX2_2 = 2.99E8
    SHX3_2 = 3.01E8
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX1_2 / 1000000000
    SHX10_1 = SHX1_2
  elseif 0 == SHX0_2 then
    SHX1_2 = math
    SHX1_2 = SHX1_2.random
    SHX2_2 = 4.78E8
    SHX3_2 = 4.82E8
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX1_2 / 1000000000
    SHX9_1 = SHX1_2
    SHX1_2 = math
    SHX1_2 = SHX1_2.random
    SHX2_2 = 2.98E8
    SHX3_2 = 3.02E8
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX1_2 / 1000000000
    SHX10_1 = SHX1_2
  else
    SHX1_2 = 0.48
    SHX9_1 = SHX1_2
    SHX1_2 = 0.3
    SHX10_1 = SHX1_2
  end
end
SHX27_1[SHX28_1] = SHX29_1
