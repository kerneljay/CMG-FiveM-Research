-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1
SHX0_1 = 0
SHX1_1 = 0
SHX2_1 = 0
SHX3_1 = false
SHX4_1 = 1
SHX5_1 = 1
SHX6_1 = 1
SHX7_1 = false
SHX8_1 = false
SHX9_1 = 0.1
SHX10_1 = 0
SHX11_1 = false
SHX12_1 = nil
SHX13_1 = nil
SHX14_1 = nil
SHX15_1 = nil
SHX16_1 = "None"
SHX17_1 = 0
SHX18_1 = false
SHX19_1 = 0
SHX20_1 = 0
SHX21_1 = 0
SHX22_1 = {}
SHX22_1.ironshufflehigh = "iron_shuffle_high"
SHX22_1.ironshufflelow = "iron_shuffle_low"
SHX22_1.ironshuffle = "iron_shuffle"
SHX22_1.ironswinghigh = "iron_swing_action_high"
SHX22_1.ironswinglow = "iron_swing_action_low"
SHX22_1.ironidlehigh = "iron_swing_idle_high"
SHX22_1.ironidlelow = "iron_swing_idle_low"
SHX22_1.ironidle = "iron_shuffle"
SHX22_1.ironswingintro = "iron_swing_intro_high"
SHX23_1 = {}
SHX23_1.puttshufflelow = "iron_shuffle_low"
SHX23_1.puttshuffle = "iron_shuffle"
SHX23_1.puttswinglow = "putt_action_low"
SHX23_1.puttidle = "putt_idle_low"
SHX23_1.puttintro = "putt_intro_low"
SHX24_1 = {}
SHX25_1 = {}
SHX25_1.model = 886428669
SHX25_1.bone = 24816
SHX25_1.x = 0.12
SHX25_1.y = -0.3
SHX25_1.z = 0.0
SHX25_1.xR = -75.0
SHX25_1.yR = 190.0
SHX25_1.zR = 92.0
SHX24_1.golfbag01 = SHX25_1
SHX25_1 = {}
SHX25_1.model = 1750479612
SHX25_1.bone = 57005
SHX25_1.x = 0.0
SHX25_1.y = -0.05
SHX25_1.z = 0.0
SHX25_1.xR = 90.0
SHX25_1.yR = -118.0
SHX25_1.zR = 44.0
SHX24_1.golfputter01 = SHX25_1
SHX25_1 = {}
SHX25_1.model = 334347537
SHX25_1.bone = 57005
SHX25_1.x = 0.125
SHX25_1.y = 0.04
SHX25_1.z = 0.0
SHX25_1.xR = 90.0
SHX25_1.yR = -118.0
SHX25_1.zR = 44.0
SHX24_1.golfiron01 = SHX25_1
SHX25_1 = {}
SHX25_1.model = 334347537
SHX25_1.bone = 57005
SHX25_1.x = 0.126
SHX25_1.y = 0.041
SHX25_1.z = 0.0
SHX25_1.xR = 90.0
SHX25_1.yR = -118.0
SHX25_1.zR = 44.0
SHX24_1.golfiron03 = SHX25_1
SHX25_1 = {}
SHX25_1.model = 334347537
SHX25_1.bone = 57005
SHX25_1.x = 0.127
SHX25_1.y = 0.042
SHX25_1.z = 0.0
SHX25_1.xR = 90.0
SHX25_1.yR = -118.0
SHX25_1.zR = 44.0
SHX24_1.golfiron05 = SHX25_1
SHX25_1 = {}
SHX25_1.model = 334347537
SHX25_1.bone = 57005
SHX25_1.x = 0.128
SHX25_1.y = 0.043
SHX25_1.z = 0.0
SHX25_1.xR = 90.0
SHX25_1.yR = -118.0
SHX25_1.zR = 44.0
SHX24_1.golfiron07 = SHX25_1
SHX25_1 = {}
SHX25_1.model = 1933637837
SHX25_1.bone = 57005
SHX25_1.x = 0.17
SHX25_1.y = 0.04
SHX25_1.z = 0.0
SHX25_1.xR = 90.0
SHX25_1.yR = -118.0
SHX25_1.zR = 44.0
SHX24_1.golfwedge01 = SHX25_1
SHX25_1 = {}
SHX25_1.model = -2141023172
SHX25_1.bone = 57005
SHX25_1.x = 0.14
SHX25_1.y = 0.0
SHX25_1.z = 0.0
SHX25_1.xR = 160.0
SHX25_1.yR = -60.0
SHX25_1.zR = 10.0
SHX24_1.golfdriver01 = SHX25_1
SHX25_1 = {}
SHX26_1 = {}
SHX26_1.par = 5
SHX27_1 = vector3
SHX28_1 = -1371.3370361328
SHX29_1 = 173.09497070313
SHX30_1 = 57.013027191162
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.startHole = SHX27_1
SHX27_1 = vector3
SHX28_1 = -1114.2274169922
SHX29_1 = 220.8424987793
SHX30_1 = 63.89478302
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.endHole = SHX27_1
SHX25_1[1] = SHX26_1
SHX26_1 = {}
SHX26_1.par = 4
SHX27_1 = vector3
SHX28_1 = -1107.1888427734
SHX29_1 = 156.581298828
SHX30_1 = 62.03958129882
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.startHole = SHX27_1
SHX27_1 = vector3
SHX28_1 = -1322.0944824219
SHX29_1 = 158.8779296875
SHX30_1 = 56.80027008056
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.endHole = SHX27_1
SHX25_1[2] = SHX26_1
SHX26_1 = {}
SHX26_1.par = 3
SHX27_1 = vector3
SHX28_1 = -1312.1020507813
SHX29_1 = 125.8329391479
SHX30_1 = 56.4341888427
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.startHole = SHX27_1
SHX27_1 = vector3
SHX28_1 = -1237.347412109
SHX29_1 = 112.9838562011
SHX30_1 = 56.20140075683
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.endHole = SHX27_1
SHX25_1[3] = SHX26_1
SHX26_1 = {}
SHX26_1.par = 4
SHX27_1 = vector3
SHX28_1 = -1216.913208007
SHX29_1 = 106.9870910644
SHX30_1 = 57.03926086425
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.startHole = SHX27_1
SHX27_1 = vector3
SHX28_1 = -1096.6276855469
SHX29_1 = 7.780227184295
SHX30_1 = 49.73574447631
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.endHole = SHX27_1
SHX25_1[4] = SHX26_1
SHX26_1 = {}
SHX26_1.par = 4
SHX27_1 = vector3
SHX28_1 = -1097.85961914
SHX29_1 = 66.41466522216
SHX30_1 = 52.92545700073
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.startHole = SHX27_1
SHX27_1 = vector3
SHX28_1 = -957.4982910156
SHX29_1 = -90.37551879882
SHX30_1 = 39.2753639221
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.endHole = SHX27_1
SHX25_1[5] = SHX26_1
SHX26_1 = {}
SHX26_1.par = 3
SHX27_1 = vector3
SHX28_1 = -987.7417602539
SHX29_1 = -105.0764007568
SHX30_1 = 39.585887908936
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.startHole = SHX27_1
SHX27_1 = vector3
SHX28_1 = -1103.506958007
SHX29_1 = -115.2364349365
SHX30_1 = 40.55868911743
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.endHole = SHX27_1
SHX25_1[6] = SHX26_1
SHX26_1 = {}
SHX26_1.par = 4
SHX27_1 = vector3
SHX28_1 = -1117.0194091797
SHX29_1 = -103.8586044311
SHX30_1 = 40.8405838012
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.startHole = SHX27_1
SHX27_1 = vector3
SHX28_1 = -1290.536499023
SHX29_1 = 2.7952194213867
SHX30_1 = 49.34057998657
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.endHole = SHX27_1
SHX25_1[7] = SHX26_1
SHX26_1 = {}
SHX26_1.par = 5
SHX27_1 = vector3
SHX28_1 = -1272.251831054
SHX29_1 = 38.04283142089
SHX30_1 = 48.72544860839
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.startHole = SHX27_1
SHX27_1 = vector3
SHX28_1 = -1034.80187988
SHX29_1 = -83.16706085205
SHX30_1 = 43.0353431701
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.endHole = SHX27_1
SHX25_1[8] = SHX26_1
SHX26_1 = {}
SHX26_1.par = 4
SHX27_1 = vector3
SHX28_1 = -1138.319580078
SHX29_1 = -0.1342505216598
SHX30_1 = 47.98218917846
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.startHole = SHX27_1
SHX27_1 = vector3
SHX28_1 = -1294.685913085
SHX29_1 = 83.5762557983
SHX30_1 = 53.92817306518
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.endHole = SHX27_1
SHX25_1[9] = SHX26_1
function SHX26_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = BeginTextCommandDisplayHelp
  SHX4_2 = "STRING"
  SHX3_2(SHX4_2)
  SHX3_2 = AddTextComponentSubstringPlayerName
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
  SHX3_2 = EndTextCommandDisplayHelp
  SHX4_2 = 0
  SHX5_2 = false
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hideAllDisplays
  SHX1_2 = "golf"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = SetFocusPosAndVel
  SHX3_2 = -1364.8052978516
  SHX4_2 = 166.98794555664
  SHX5_2 = 58.013092041016
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = CreateCameraWithParams
  SHX3_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX4_2 = -1364.8052978516
  SHX5_2 = 166.98794555664
  SHX6_2 = 64.013092041016
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 65.0
  SHX11_2 = false
  SHX12_2 = 2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX3_2 = PointCamAtCoord
  SHX4_2 = SHX2_2
  SHX5_2 = -1371.0968017578
  SHX6_2 = 173.33917236328
  SHX7_2 = 58.013034820557
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SetCamActive
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RenderScriptCams
  SHX4_2 = true
  SHX5_2 = true
  SHX6_2 = 0
  SHX7_2 = true
  SHX8_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = CreateCameraWithParams
  SHX4_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX5_2 = -1367.5961914063
  SHX6_2 = 176.40940856934
  SHX7_2 = 64.013084411621
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 65.0
  SHX12_2 = false
  SHX13_2 = 2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX4_2 = PointCamAtCoord
  SHX5_2 = SHX3_2
  SHX6_2 = -1371.0968017578
  SHX7_2 = 173.33917236328
  SHX8_2 = 58.013034820557
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SetCamActiveWithInterp
  SHX5_2 = SHX3_2
  SHX6_2 = SHX2_2
  SHX7_2 = 14000
  SHX8_2 = 5
  SHX9_2 = 5
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SHX26_1
  SHX5_2 = "To play golf, you must first go to the location of where your ball is (white blip)"
  SHX6_2 = true
  SHX7_2 = 8000
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = Wait
  SHX5_2 = 7000
  SHX4_2(SHX5_2)
  SHX4_2 = SHX26_1
  SHX5_2 = "Next, you must swing the ball towards the hole (red golf marker on your map)"
  SHX6_2 = false
  SHX7_2 = 8000
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = Wait
  SHX5_2 = 7000
  SHX4_2(SHX5_2)
  SHX4_2 = PointCamAtCoord
  SHX5_2 = SHX2_2
  SHX6_2 = -1114.1766357422
  SHX7_2 = 220.724609375
  SHX8_2 = 64.893432617188
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = PointCamAtCoord
  SHX5_2 = SHX3_2
  SHX6_2 = -1114.1766357422
  SHX7_2 = 220.724609375
  SHX8_2 = 64.893432617188
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SetCamCoord
  SHX5_2 = SHX2_2
  SHX6_2 = -1112.6385498047
  SHX7_2 = 211.25141906738
  SHX8_2 = 64.905075073242
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SetCamCoord
  SHX5_2 = SHX3_2
  SHX6_2 = -1108.9538574219
  SHX7_2 = 223.51953125
  SHX8_2 = 64.759399414063
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SetCamActiveWithInterp
  SHX5_2 = SHX3_2
  SHX6_2 = SHX2_2
  SHX7_2 = 14000
  SHX8_2 = 5
  SHX9_2 = 5
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SHX26_1
  SHX5_2 = "Your aim is to get the ball as close to the hole as possible to finish that hole."
  SHX6_2 = false
  SHX7_2 = 8000
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = Wait
  SHX5_2 = 7000
  SHX4_2(SHX5_2)
  SHX4_2 = SHX26_1
  SHX5_2 = "Once complete, you will move on to the next hole where a ball is already placed for you. Good luck!"
  SHX6_2 = false
  SHX7_2 = 8000
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = Wait
  SHX5_2 = 7000
  SHX4_2(SHX5_2)
  SHX4_2 = DestroyCam
  SHX5_2 = SHX2_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = DestroyCam
  SHX5_2 = SHX3_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = RenderScriptCams
  SHX5_2 = false
  SHX6_2 = true
  SHX7_2 = 3000
  SHX8_2 = true
  SHX9_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = ClearFocus
  SHX4_2()
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = SHX0_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetEntityCoords
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2.x
  SHX7_2 = SHX1_2.y
  SHX8_2 = SHX1_2.z
  SHX9_2 = true
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.showAllDisplays
  SHX5_2 = "golf"
  SHX4_2(SHX5_2)
end
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX20_1
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX20_1 = SHX0_2
end
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  if SHX0_2 then
    SHX1_2 = notify
    SHX2_2 = "You have successfully completed all holes in "
    SHX3_2 = tostring
    SHX4_2 = SHX2_1
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = " strokes!"
    SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2
    SHX1_2(SHX2_2)
  end
  SHX1_2 = DeleteEntity
  SHX2_2 = SHX17_1
  SHX1_2(SHX2_2)
  SHX1_2 = SHX28_1
  SHX1_2()
  SHX1_2 = DeleteObject
  SHX2_2 = SHX10_1
  SHX1_2(SHX2_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.removeBlip
  SHX2_2 = SHX12_1
  SHX1_2(SHX2_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.removeBlip
  SHX2_2 = SHX13_1
  SHX1_2(SHX2_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.removeBlip
  SHX2_2 = SHX15_1
  SHX1_2(SHX2_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.removeMarker
  SHX2_2 = SHX14_1
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 5000
  SHX1_2(SHX2_2)
  SHX1_2 = 0
  SHX0_1 = SHX1_2
  SHX1_2 = 0
  SHX1_1 = SHX1_2
  SHX1_2 = false
  SHX3_1 = SHX1_2
  SHX1_2 = 1
  SHX4_1 = SHX1_2
  SHX1_2 = 1
  SHX5_1 = SHX1_2
  SHX1_2 = 1
  SHX6_1 = SHX1_2
  SHX1_2 = false
  SHX7_1 = SHX1_2
  SHX1_2 = false
  SHX8_1 = SHX1_2
  SHX1_2 = 0
  SHX17_1 = SHX1_2
end
SHX30_1 = Citizen
SHX30_1 = SHX30_1.CreateThread
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.Wait
  SHX1_2 = 5000
  SHX0_2(SHX1_2)
  SHX0_2 = vector3
  SHX1_2 = -1350.1905517578
  SHX2_2 = 134.2918548584
  SHX3_2 = 55.256828308105
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = true
    SHX18_1 = SHX0_3
  end
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX18_1 = SHX0_3
  end
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3
    SHX0_3 = SHX3_1
    if SHX0_3 then
      SHX0_3 = SHX26_1
      SHX1_3 = "Press ~INPUT_CONTEXT~ to end golf"
      SHX2_3 = false
      SHX3_3 = -1
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    else
      SHX0_3 = SHX26_1
      SHX1_3 = "Press ~INPUT_CONTEXT~ to start golf (\194\1635,000)"
      SHX2_3 = false
      SHX3_3 = -1
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    end
    SHX0_3 = DrawMarker
    SHX1_3 = 27
    SHX2_3 = SHX0_2.x
    SHX3_3 = SHX0_2.y
    SHX4_3 = SHX0_2.z
    SHX5_3 = 0
    SHX6_3 = 0
    SHX7_3 = 0
    SHX8_3 = 0
    SHX9_3 = 0
    SHX10_3 = 0
    SHX11_3 = 1.5
    SHX12_3 = 1.5
    SHX13_3 = 10.3
    SHX14_3 = 0
    SHX15_3 = 519
    SHX16_3 = 0
    SHX17_3 = 105
    SHX18_3 = false
    SHX19_3 = false
    SHX20_3 = 2
    SHX21_3 = false
    SHX22_3 = nil
    SHX23_3 = nil
    SHX24_3 = false
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3)
    SHX0_3 = IsControlJustPressed
    SHX1_3 = 1
    SHX2_3 = 38
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    if SHX0_3 then
      SHX0_3 = SHX3_1
      if SHX0_3 then
        SHX0_3 = SHX29_1
        SHX1_3 = false
        SHX0_3(SHX1_3)
      else
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "f1f0b9bf95"
        SHX0_3(SHX1_3)
      end
    end
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.createArea
  SHX5_2 = "golf_course"
  SHX6_2 = SHX0_2
  SHX7_2 = 15
  SHX8_2 = 6
  SHX9_2 = SHX1_2
  SHX10_2 = SHX2_2
  SHX11_2 = SHX3_2
  SHX12_2 = {}
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
SHX30_1(SHX31_1)
SHX30_1 = 0
function SHX31_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX8_2 = SHX28_1
  SHX8_2()
  SHX8_2 = SHX0_2
  SHX9_2 = SetCurrentPedWeapon
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.getPlayerPed
  SHX10_2 = SHX10_2()
  SHX11_2 = 2725352035
  SHX12_2 = true
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = GetPedBoneIndex
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.getPlayerPed
  SHX10_2 = SHX10_2()
  SHX11_2 = SHX1_2
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.loadModel
  SHX11_2 = SHX8_2
  SHX10_2(SHX11_2)
  SHX10_2 = SHX30_1
  SHX10_2 = SHX10_2 + 1
  SHX30_1 = SHX10_2
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.requestEntitySpawn
  SHX11_2 = SHX30_1
  SHX11_2 = SHX11_2 % 2
  if 1 == SHX11_2 then
    SHX11_2 = "golf_attach_prop"
    if SHX11_2 then
      goto SHX_LABEL_36
    end
  end
  SHX11_2 = "golf_attach_prop_2"
  -- [FIX IF ERROR] Move ::SHX_LABEL_36:: outside nested blocks until all 'goto SHX_LABEL_36' can see it
  ::SHX_LABEL_36::
  SHX12_2 = SHX8_2
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.getPlayerCoords
  SHX10_2 = SHX10_2()
  SHX11_2 = CreateObject
  SHX12_2 = SHX8_2
  SHX13_2 = SHX10_2.x
  SHX14_2 = SHX10_2.y
  SHX15_2 = SHX10_2.z
  SHX16_2 = true
  SHX17_2 = true
  SHX18_2 = false
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX20_1 = SHX11_2
  SHX11_2 = AttachEntityToEntity
  SHX12_2 = SHX20_1
  SHX13_2 = CMG
  SHX13_2 = SHX13_2.getPlayerPed
  SHX13_2 = SHX13_2()
  SHX14_2 = SHX9_2
  SHX15_2 = SHX2_2
  SHX16_2 = SHX3_2
  SHX17_2 = SHX4_2
  SHX18_2 = SHX5_2
  SHX19_2 = SHX6_2
  SHX20_2 = SHX7_2
  SHX21_2 = true
  SHX22_2 = true
  SHX23_2 = false
  SHX24_2 = false
  SHX25_2 = 2
  SHX26_2 = true
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
end
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.CreateThreadNow
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = SHX31_1
    SHX2_3 = SHX0_2
    SHX1_3 = SHX24_1
    SHX1_3 = SHX1_3[SHX2_3]
    SHX1_3 = SHX1_3.model
    SHX3_3 = SHX0_2
    SHX2_3 = SHX24_1
    SHX2_3 = SHX2_3[SHX3_3]
    SHX2_3 = SHX2_3.bone
    SHX4_3 = SHX0_2
    SHX3_3 = SHX24_1
    SHX3_3 = SHX3_3[SHX4_3]
    SHX3_3 = SHX3_3.x
    SHX5_3 = SHX0_2
    SHX4_3 = SHX24_1
    SHX4_3 = SHX4_3[SHX5_3]
    SHX4_3 = SHX4_3.y
    SHX6_3 = SHX0_2
    SHX5_3 = SHX24_1
    SHX5_3 = SHX5_3[SHX6_3]
    SHX5_3 = SHX5_3.z
    SHX7_3 = SHX0_2
    SHX6_3 = SHX24_1
    SHX6_3 = SHX6_3[SHX7_3]
    SHX6_3 = SHX6_3.xR
    SHX8_3 = SHX0_2
    SHX7_3 = SHX24_1
    SHX7_3 = SHX7_3[SHX8_3]
    SHX7_3 = SHX7_3.yR
    SHX9_3 = SHX0_2
    SHX8_3 = SHX24_1
    SHX8_3 = SHX8_3[SHX9_3]
    SHX8_3 = SHX8_3.zR
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
  end
  SHX1_2(SHX2_2)
end
SHX33_1 = RegisterNetEvent
SHX34_1 = "5cbe9d656b"
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = SHX3_1
  if SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.requestEntitySpawn
  SHX1_2 = "golfcart"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.spawnVehicle
  SHX1_2 = "caddy"
  SHX2_2 = -1332.7823486328
  SHX3_2 = 128.18229675293
  SHX4_2 = 56.032329559326
  SHX5_2 = 180
  SHX6_2 = true
  SHX7_2 = true
  SHX8_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX17_1 = SHX0_2
  SHX0_2 = AddBlipForEntity
  SHX1_2 = SHX17_1
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = SetBlipSprite
  SHX2_2 = SHX0_2
  SHX3_2 = 326
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetBlipColour
  SHX2_2 = SHX0_2
  SHX3_2 = 5
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = true
  SHX3_1 = SHX1_2
  SHX1_2 = SetCurrentPedWeapon
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = 2725352035
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 1000
  SHX1_2(SHX2_2)
  SHX1_2 = SHX32_1
  SHX2_2 = "golfbag01"
  SHX1_2(SHX2_2)
  SHX1_2 = GetResourceKvpInt
  SHX2_2 = "cmg_golf_done_cutscene"
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 == SHX1_2 then
    SHX1_2 = SHX27_1
    SHX1_2()
    SHX1_2 = SetResourceKvpInt
    SHX2_2 = "cmg_golf_done_cutscene"
    SHX3_2 = 1
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX33_1(SHX34_1, SHX35_1)
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = SHX0_1
    if 0 ~= SHX0_2 then
      SHX0_2 = SHX8_1
      if not SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.5
        SHX2_2 = 0.93
        SHX3_2 = 0.15
        SHX4_2 = 0.04
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 140
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = "~s~"
        SHX1_2 = SHX1_1
        SHX2_2 = "~r~ | ~s~"
        SHX3_2 = SHX2_1
        SHX4_2 = "~r~ | ~s~"
        SHX5_2 = SHX16_1
        SHX6_2 = "~r~ | ~s~"
        SHX7_2 = math
        SHX7_2 = SHX7_2.ceil
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.getPlayerCoords
        SHX8_2 = SHX8_2()
        SHX10_2 = SHX0_1
        SHX9_2 = SHX25_1
        SHX9_2 = SHX9_2[SHX10_2]
        SHX9_2 = SHX9_2.endHole
        SHX8_2 = SHX8_2 - SHX9_2
        SHX8_2 = #SHX8_2
        SHX7_2 = SHX7_2(SHX8_2)
        SHX8_2 = " m"
        SHX0_2 = SHX0_2 .. SHX1_2 .. SHX2_2 .. SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2 .. SHX7_2 .. SHX8_2
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.DrawText
        SHX2_2 = 0.448
        SHX3_2 = 0.91
        SHX4_2 = SHX0_2
        SHX5_2 = 0.6
        SHX6_2 = 4
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      end
    end
  end
end
SHX34_1 = CMG
SHX34_1 = SHX34_1.createThreadOnTick
SHX35_1 = SHX33_1
SHX36_1 = "Golf HUD"
SHX34_1(SHX35_1, SHX36_1)
function SHX34_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX3_2 = DeleteObject
  SHX4_2 = SHX10_1
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.requestEntitySpawn
  SHX4_2 = "golf_ball_object"
  SHX5_2 = vector3
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = SHX2_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_2 = CreateObject
  SHX4_2 = -1358020705
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX8_2 = true
  SHX9_2 = true
  SHX10_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX10_1 = SHX3_2
  SHX3_2 = SetEntityRecordsCollisions
  SHX4_2 = SHX10_1
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.removeBlip
  SHX4_2 = SHX12_1
  SHX3_2(SHX4_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.addBlip
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX7_2 = 161
  SHX8_2 = 0
  SHX9_2 = "Golf Ball"
  SHX10_2 = 0.6
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX12_1 = SHX3_2
  SHX3_2 = SetBlipAsShortRange
  SHX4_2 = SHX12_1
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetBlipDisplay
  SHX4_2 = SHX12_1
  SHX5_2 = 2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetBlipAsFriendly
  SHX4_2 = SHX12_1
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetEntityCollision
  SHX4_2 = SHX10_1
  SHX5_2 = true
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetEntityHasGravity
  SHX4_2 = SHX10_1
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = SHX10_1
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = GetEntityHeading
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX4_2()
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = SetEntityHeading
  SHX5_2 = SHX10_1
  SHX6_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2)
end
function SHX35_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetEntityHeading
  SHX2_2 = SHX10_1
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = 360.0
  if SHX1_2 >= SHX2_2 then
    SHX1_2 = 0.0
  end
  if SHX0_2 then
    SHX2_2 = SetEntityHeading
    SHX3_2 = SHX10_1
    SHX4_2 = SHX1_2 - 0.7
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX2_2 = SetEntityHeading
    SHX3_2 = SHX10_1
    SHX4_2 = SHX1_2 + 0.7
    SHX2_2(SHX3_2, SHX4_2)
  end
end
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = 20000
  while SHX0_2 > 0 do
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 5
    SHX1_2(SHX2_2)
    SHX1_2 = GetEntityCoords
    SHX2_2 = SHX10_1
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = SetCamCoord
    SHX3_2 = SHX21_1
    SHX4_2 = SHX1_2.x
    SHX5_2 = SHX1_2.y
    SHX5_2 = SHX5_2 - 10
    SHX6_2 = SHX1_2.z
    SHX6_2 = SHX6_2 + 9
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = PointCamAtEntity
    SHX3_2 = SHX21_1
    SHX4_2 = SHX10_1
    SHX5_2 = 0.0
    SHX6_2 = 0.0
    SHX7_2 = 0.0
    SHX8_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = SHX0_2 - 1
  end
end
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CreateCam
  SHX1_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX2_2 = true
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX21_1 = SHX0_2
  SHX0_2 = SetCamFov
  SHX1_2 = SHX21_1
  SHX2_2 = 90.0
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = RenderScriptCams
  SHX1_2 = true
  SHX2_2 = true
  SHX3_2 = 3
  SHX4_2 = true
  SHX5_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThreadNow
  SHX1_2 = SHX36_1
  SHX0_2(SHX1_2)
end
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RenderScriptCams
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = 0
  SHX4_2 = true
  SHX5_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = DestroyCam
  SHX1_2 = SHX21_1
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = false
  SHX8_1 = SHX0_2
  SHX0_2 = SHX1_1
  SHX0_2 = SHX0_2 + 1
  SHX1_1 = SHX0_2
  SHX0_2 = GetEntityCoords
  SHX1_2 = SHX10_1
  SHX0_2 = SHX0_2(SHX1_2)
  SHX2_2 = SHX0_1
  SHX1_2 = SHX25_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2.endHole
  SHX1_2 = SHX0_2 - SHX1_2
  SHX1_2 = #SHX1_2
  SHX2_2 = 1.5
  if SHX1_2 < SHX2_2 then
    SHX2_2 = SHX1_1
    SHX3_2 = SHX2_1
    SHX2_2 = SHX2_2 + SHX3_2
    SHX2_1 = SHX2_2
    SHX2_2 = 0
    SHX1_1 = SHX2_2
    SHX2_2 = 1
    SHX4_1 = SHX2_2
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX19_1 = SHX2_2
    SHX2_2 = true
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.CreateThread
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = Wait
      SHX1_3 = 3000
      SHX0_3(SHX1_3)
      SHX0_3 = false
      SHX2_2 = SHX0_3
    end
    SHX3_2(SHX4_2)
    while SHX2_2 do
      SHX3_2 = drawNativeText
      SHX4_2 = "You got the ball within range!"
      SHX3_2(SHX4_2)
      SHX3_2 = Citizen
      SHX3_2 = SHX3_2.Wait
      SHX4_2 = 0
      SHX3_2(SHX4_2)
    end
  end
  SHX2_2 = SHX1_1
  if SHX2_2 > 12 then
    SHX2_2 = SHX1_1
    SHX3_2 = SHX2_1
    SHX2_2 = SHX2_2 + SHX3_2
    SHX2_1 = SHX2_2
    SHX2_2 = 0
    SHX1_1 = SHX2_2
    SHX2_2 = 1
    SHX4_1 = SHX2_2
    SHX2_2 = true
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.CreateThread
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = Wait
      SHX1_3 = 3000
      SHX0_3(SHX1_3)
      SHX0_3 = false
      SHX2_2 = SHX0_3
    end
    SHX3_2(SHX4_2)
    while SHX2_2 do
      SHX3_2 = drawNativeText
      SHX4_2 = "You took too many shots.."
      SHX3_2(SHX4_2)
      SHX3_2 = Citizen
      SHX3_2 = SHX3_2.Wait
      SHX4_2 = 0
      SHX3_2(SHX4_2)
    end
  end
  SHX2_2 = SHX32_1
  SHX3_2 = "golfbag01"
  SHX2_2(SHX3_2)
end
function SHX40_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX6_1
  if 3 == SHX0_2 then
    SHX0_2 = SHX32_1
    SHX1_2 = "golfdriver01"
    SHX0_2(SHX1_2)
    SHX0_2 = "Wood"
    SHX16_1 = SHX0_2
  else
    SHX0_2 = SHX6_1
    if 2 == SHX0_2 then
      SHX0_2 = SHX32_1
      SHX1_2 = "golfwedge01"
      SHX0_2(SHX1_2)
      SHX0_2 = "Wedge"
      SHX16_1 = SHX0_2
    else
      SHX0_2 = SHX6_1
      if 1 == SHX0_2 then
        SHX0_2 = SHX32_1
        SHX1_2 = "golfiron01"
        SHX0_2(SHX1_2)
        SHX0_2 = "1 Iron"
        SHX16_1 = SHX0_2
      else
        SHX0_2 = SHX6_1
        if 4 == SHX0_2 then
          SHX0_2 = SHX32_1
          SHX1_2 = "golfiron03"
          SHX0_2(SHX1_2)
          SHX0_2 = "3 Iron"
          SHX16_1 = SHX0_2
        else
          SHX0_2 = SHX6_1
          if 5 == SHX0_2 then
            SHX0_2 = SHX32_1
            SHX1_2 = "golfiron05"
            SHX0_2(SHX1_2)
            SHX0_2 = "5 Iron"
            SHX16_1 = SHX0_2
          else
            SHX0_2 = SHX6_1
            if 6 == SHX0_2 then
              SHX0_2 = SHX32_1
              SHX1_2 = "golfiron07"
              SHX0_2(SHX1_2)
              SHX0_2 = "7 Iron"
              SHX16_1 = SHX0_2
            else
              SHX0_2 = SHX32_1
              SHX1_2 = "golfputter01"
              SHX0_2(SHX1_2)
              SHX0_2 = "Putter"
              SHX16_1 = SHX0_2
            end
          end
        end
      end
    end
  end
end
function SHX41_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = "mini@golf"
  SHX1_2(SHX2_2)
  SHX1_2 = IsEntityPlayingAnim
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = "mini@golf"
  SHX4_2 = SHX0_2
  SHX5_2 = 3
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  if not SHX1_2 then
    SHX1_2 = GetAnimDuration
    SHX2_2 = "mini@golf"
    SHX3_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX2_2 = TaskPlayAnim
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerPed
    SHX3_2 = SHX3_2()
    SHX4_2 = "mini@golf"
    SHX5_2 = SHX0_2
    SHX6_2 = 1.0
    SHX7_2 = -1.0
    SHX8_2 = SHX1_2
    SHX9_2 = 0
    SHX10_2 = 1
    SHX11_2 = false
    SHX12_2 = false
    SHX13_2 = false
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
end
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = ""
  SHX1_2 = SHX6_1
  if 0 == SHX1_2 then
    SHX0_2 = SHX23_1.puttidle
  else
    SHX1_2 = IsControlPressed
    SHX2_2 = 1
    SHX3_2 = 38
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX0_2 = SHX22_1.ironidlehigh
    else
      SHX0_2 = SHX22_1.ironidle
    end
  end
  SHX1_2 = SHX41_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 1200
  SHX1_2(SHX2_2)
end
function SHX43_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX7_1 = SHX0_2
  while true do
    SHX0_2 = SHX7_1
    if not SHX0_2 then
      break
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
    SHX0_2 = SHX42_1
    SHX0_2()
  end
end
function SHX44_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = 0.0
  SHX2_2 = 0.0
  SHX3_2 = SHX0_2
  if SHX3_2 >= 0.0 and SHX3_2 <= 90.0 then
    SHX4_2 = SHX3_2 / 9.2
    SHX4_2 = SHX4_2 / 10
    SHX1_2 = -1.0 + SHX4_2
    SHX5_2 = 0.0
    SHX2_2 = SHX5_2 - SHX4_2
  end
  if SHX3_2 > 90.0 then
    SHX4_2 = 180.0
    if SHX3_2 <= SHX4_2 then
      SHX4_2 = SHX3_2 - 90.0
      SHX5_2 = SHX4_2 / 9.2
      SHX5_2 = SHX5_2 / 10
      SHX1_2 = 0.0 + SHX5_2
      SHX2_2 = -1.0 + SHX5_2
    end
  end
  SHX4_2 = 180.0
  if SHX3_2 > SHX4_2 then
    SHX4_2 = 270.0
    if SHX3_2 <= SHX4_2 then
      SHX4_2 = SHX3_2 - 180.0
      SHX5_2 = SHX4_2 / 9.2
      SHX5_2 = SHX5_2 / 10
      SHX6_2 = 1.0
      SHX1_2 = SHX6_2 - SHX5_2
      SHX2_2 = 0.0 + SHX5_2
    end
  end
  SHX4_2 = 270.0
  if SHX3_2 > SHX4_2 then
    SHX4_2 = 360.0
    if SHX3_2 <= SHX4_2 then
      SHX4_2 = SHX3_2 - 270.0
      SHX5_2 = SHX4_2 / 9.2
      SHX5_2 = SHX5_2 / 10
      SHX6_2 = 0.0
      SHX1_2 = SHX6_2 - SHX5_2
      SHX6_2 = 1.0
      SHX2_2 = SHX6_2 - SHX5_2
    end
  end
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  return SHX4_2, SHX5_2
end
function SHX45_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX6_1
  if 0 ~= SHX0_2 then
    SHX0_2 = SHX37_1
    SHX0_2()
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadPtfx
  SHX1_2 = "scr_minigamegolf"
  SHX0_2(SHX1_2)
  SHX0_2 = UseParticleFxAsset
  SHX1_2 = "scr_minigamegolf"
  SHX0_2(SHX1_2)
  SHX0_2 = StartParticleFxLoopedOnEntity
  SHX1_2 = "scr_golf_ball_trail"
  SHX2_2 = SHX10_1
  SHX3_2 = 0.0
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 1.0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX0_2 = false
  SHX1_2 = GetEntityHeading
  SHX2_2 = SHX10_1
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX44_1
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = SHX10_1
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX9_1
  SHX4_2 = SHX4_2 / 3
  SHX5_2 = 0.0
  SHX6_2 = SHX6_1
  if 0 == SHX6_2 then
    SHX6_2 = SHX9_1
    SHX6_2 = SHX6_2 / 3
    SHX9_1 = SHX6_2
    SHX6_2 = 5.0
    while true do
      SHX7_2 = SHX9_1
      if not (SHX6_2 < SHX7_2) then
        break
      end
      SHX7_2 = SetEntityVelocity
      SHX8_2 = SHX10_1
      SHX9_2 = SHX2_2 * SHX6_2
      SHX10_2 = SHX3_2 * SHX6_2
      SHX11_2 = -0.1
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX7_2 = Citizen
      SHX7_2 = SHX7_2.Wait
      SHX8_2 = 20
      SHX7_2(SHX8_2)
      SHX6_2 = SHX6_2 + 0.3
    end
    SHX7_2 = SHX9_1
    SHX9_1 = SHX7_2
    while true do
      SHX7_2 = SHX9_1
      if not (SHX7_2 > 0) then
        break
      end
      SHX7_2 = SetEntityVelocity
      SHX8_2 = SHX10_1
      SHX9_2 = SHX9_1
      SHX9_2 = SHX2_2 * SHX9_2
      SHX10_2 = SHX9_1
      SHX10_2 = SHX3_2 * SHX10_2
      SHX11_2 = -0.1
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX7_2 = Citizen
      SHX7_2 = SHX7_2.Wait
      SHX8_2 = 20
      SHX7_2(SHX8_2)
      SHX7_2 = SHX9_1
      SHX7_2 = SHX7_2 - 0.3
      SHX9_1 = SHX7_2
    end
  else
    SHX6_2 = SHX6_1
    if 1 == SHX6_2 then
      SHX6_2 = SHX9_1
      SHX6_2 = SHX6_2 * 1.85
      SHX9_1 = SHX6_2
      SHX6_2 = SHX9_1
      SHX5_2 = SHX6_2 / 2.6
      SHX0_2 = true
      SHX4_2 = SHX4_2 / 4
    else
      SHX6_2 = SHX6_1
      if 3 == SHX6_2 then
        SHX6_2 = SHX9_1
        SHX6_2 = SHX6_2 * 2.0
        SHX9_1 = SHX6_2
        SHX6_2 = SHX9_1
        SHX5_2 = SHX6_2 / 2.6
        SHX0_2 = true
        SHX4_2 = SHX4_2 / 2
      else
        SHX6_2 = SHX6_1
        if 2 == SHX6_2 then
          SHX6_2 = SHX9_1
          SHX6_2 = SHX6_2 * 1.5
          SHX9_1 = SHX6_2
          SHX6_2 = SHX9_1
          SHX5_2 = SHX6_2 / 2.1
          SHX0_2 = true
          SHX4_2 = SHX4_2 / 4.5
        else
          SHX6_2 = SHX6_1
          if 4 == SHX6_2 then
            SHX6_2 = SHX9_1
            SHX6_2 = SHX6_2 * 1.8
            SHX9_1 = SHX6_2
            SHX6_2 = SHX9_1
            SHX5_2 = SHX6_2 / 2.55
            SHX0_2 = true
            SHX4_2 = SHX4_2 / 5
          else
            SHX6_2 = SHX6_1
            if 5 == SHX6_2 then
              SHX6_2 = SHX9_1
              SHX6_2 = SHX6_2 * 1.75
              SHX9_1 = SHX6_2
              SHX6_2 = SHX9_1
              SHX5_2 = SHX6_2 / 2.5
              SHX0_2 = true
              SHX4_2 = SHX4_2 / 5.5
            else
              SHX6_2 = SHX6_1
              if 6 == SHX6_2 then
                SHX6_2 = SHX9_1
                SHX6_2 = SHX6_2 * 1.7
                SHX9_1 = SHX6_2
                SHX6_2 = SHX9_1
                SHX5_2 = SHX6_2 / 2.45
                SHX0_2 = true
                SHX4_2 = SHX4_2 / 6.0
              end
            end
          end
        end
      end
    end
  end
  while true do
    SHX6_2 = SHX9_1
    if not (SHX6_2 > 0) then
      break
    end
    SHX6_2 = SetEntityVelocity
    SHX7_2 = SHX10_1
    SHX8_2 = SHX9_1
    SHX8_2 = SHX2_2 * SHX8_2
    SHX9_2 = SHX9_1
    SHX9_2 = SHX3_2 * SHX9_2
    SHX10_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
    SHX6_2 = SHX9_1
    SHX6_2 = SHX6_2 - 1
    SHX9_1 = SHX6_2
    SHX5_2 = SHX5_2 - 1
  end
  if SHX0_2 then
    while SHX4_2 > 0 do
      SHX6_2 = SetEntityVelocity
      SHX7_2 = SHX10_1
      SHX8_2 = SHX2_2 * SHX4_2
      SHX9_2 = SHX3_2 * SHX4_2
      SHX10_2 = 0.0
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      SHX6_2 = Citizen
      SHX6_2 = SHX6_2.Wait
      SHX7_2 = 5
      SHX6_2(SHX7_2)
      SHX4_2 = SHX4_2 - 1
    end
  end
  SHX6_2 = Citizen
  SHX6_2 = SHX6_2.Wait
  SHX7_2 = 2000
  SHX6_2(SHX7_2)
  SHX6_2 = SetEntityVelocity
  SHX7_2 = SHX10_1
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = SHX6_1
  if 0 ~= SHX6_2 then
    SHX6_2 = SHX38_1
    SHX6_2()
  end
  SHX6_2 = GetEntityCoords
  SHX7_2 = SHX10_1
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = SHX34_1
  SHX8_2 = SHX6_2.x
  SHX9_2 = SHX6_2.y
  SHX10_2 = SHX6_2.z
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = FreezeEntityPosition
  SHX8_2 = SHX10_1
  SHX9_2 = true
  SHX7_2(SHX8_2, SHX9_2)
end
function SHX46_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = 0.1
  SHX9_1 = SHX0_2
  SHX0_2 = GetEntityCoords
  SHX1_2 = SHX10_1
  SHX0_2 = SHX0_2(SHX1_2)
  SHX2_2 = SHX0_1
  SHX1_2 = SHX25_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2.endHole
  SHX0_2 = SHX0_2 - SHX1_2
  SHX0_2 = #SHX0_2
  SHX1_2 = 200.0
  if SHX0_2 >= SHX1_2 then
    SHX1_2 = 3
    SHX6_1 = SHX1_2
  else
    SHX1_2 = 150.0
    if SHX0_2 >= SHX1_2 then
      SHX1_2 = 200.0
      if SHX0_2 < SHX1_2 then
        SHX1_2 = 1
        SHX6_1 = SHX1_2
    end
    else
      if SHX0_2 >= 120.0 then
        SHX1_2 = 250.0
        if SHX0_2 < SHX1_2 then
          SHX1_2 = 4
          SHX6_1 = SHX1_2
      end
      elseif SHX0_2 >= 90.0 and SHX0_2 < 120.0 then
        SHX1_2 = 5
        SHX6_1 = SHX1_2
      elseif SHX0_2 >= 50.0 and SHX0_2 < 90.0 then
        SHX1_2 = 6
        SHX6_1 = SHX1_2
      elseif SHX0_2 >= 20.0 and SHX0_2 < 50.0 then
        SHX1_2 = 2
        SHX6_1 = SHX1_2
      else
        SHX1_2 = 0
        SHX6_1 = SHX1_2
      end
    end
  end
  SHX1_2 = ""
  SHX2_2 = SHX40_1
  SHX2_2()
  SHX2_2 = RequestScriptAudioBank
  SHX3_2 = "GOLF_I"
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  while true do
    SHX2_2 = SHX5_1
    if 2 ~= SHX2_2 then
      break
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
    SHX2_2 = IsControlPressed
    SHX3_2 = 1
    SHX4_2 = 38
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = 0.5
      SHX3_2 = SHX9_1
      if SHX3_2 > 25 then
        SHX2_2 = SHX2_2 + 0.1
      end
      SHX3_2 = SHX9_1
      if SHX3_2 > 50 then
        SHX2_2 = SHX2_2 + 0.2
      end
      SHX3_2 = SHX9_1
      if SHX3_2 > 75 then
        SHX2_2 = SHX2_2 + 0.3
      end
      SHX3_2 = SHX9_1
      SHX3_2 = SHX3_2 + SHX2_2
      SHX9_1 = SHX3_2
      SHX3_2 = SHX9_1
      if SHX3_2 > 100.0 then
        SHX3_2 = 1.0
        SHX9_1 = SHX3_2
      end
    end
    SHX2_2 = SHX9_1
    SHX2_2 = SHX2_2 * 2
    SHX2_2 = SHX2_2 / 1000
    SHX3_2 = SHX9_1
    if SHX3_2 > 55 then
      SHX3_2 = SHX9_1
      SHX3_2 = SHX3_2 / 100
      SHX4_2 = DrawRect
      SHX5_2 = 0.5
      SHX6_2 = 0.93
      SHX7_2 = SHX2_2
      SHX8_2 = 0.02
      SHX9_2 = math
      SHX9_2 = SHX9_2.floor
      SHX10_2 = SHX3_2 * 255
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = math
      SHX10_2 = SHX10_2.floor
      SHX11_2 = 1.0
      SHX11_2 = SHX11_2 - SHX3_2
      SHX11_2 = SHX11_2 * 255
      SHX10_2 = SHX10_2(SHX11_2)
      SHX11_2 = 0
      SHX12_2 = 210
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    else
      SHX3_2 = DrawRect
      SHX4_2 = 0.5
      SHX5_2 = 0.93
      SHX6_2 = SHX2_2
      SHX7_2 = 0.02
      SHX8_2 = 22
      SHX9_2 = 235
      SHX10_2 = 22
      SHX11_2 = 210
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    end
    SHX3_2 = drawNativeText
    SHX4_2 = "Press E to swing, A-D to rotate, Y to swap club."
    SHX3_2(SHX4_2)
    SHX3_2 = GetEntityCoords
    SHX4_2 = SHX10_1
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = DrawLine
    SHX5_2 = SHX3_2.x
    SHX6_2 = SHX3_2.y
    SHX7_2 = SHX3_2.z
    SHX9_2 = SHX0_1
    SHX8_2 = SHX25_1
    SHX8_2 = SHX8_2[SHX9_2]
    SHX8_2 = SHX8_2.endHole
    SHX8_2 = SHX8_2.x
    SHX10_2 = SHX0_1
    SHX9_2 = SHX25_1
    SHX9_2 = SHX9_2[SHX10_2]
    SHX9_2 = SHX9_2.endHole
    SHX9_2 = SHX9_2.y
    SHX11_2 = SHX0_1
    SHX10_2 = SHX25_1
    SHX10_2 = SHX10_2[SHX11_2]
    SHX10_2 = SHX10_2.endHole
    SHX10_2 = SHX10_2.z
    SHX11_2 = 222
    SHX12_2 = 111
    SHX13_2 = 111
    SHX14_2 = 0.2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX4_2 = IsControlJustPressed
    SHX5_2 = 1
    SHX6_2 = 246
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX4_2 then
      SHX4_2 = SHX6_1
      SHX4_2 = SHX4_2 + 1
      if SHX4_2 > 6 then
        SHX4_2 = 0
      end
      SHX6_1 = SHX4_2
      SHX5_2 = SHX40_1
      SHX5_2()
    end
    SHX4_2 = IsControlPressed
    SHX5_2 = 1
    SHX6_2 = 34
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX4_2 then
      SHX4_2 = SHX35_1
      SHX5_2 = true
      SHX4_2(SHX5_2)
    end
    SHX4_2 = IsControlPressed
    SHX5_2 = 1
    SHX6_2 = 9
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX4_2 then
      SHX4_2 = SHX35_1
      SHX5_2 = false
      SHX4_2(SHX5_2)
    end
    SHX4_2 = SHX6_1
    if 0 == SHX4_2 then
      SHX4_2 = AttachEntityToEntity
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.getPlayerPed
      SHX5_2 = SHX5_2()
      SHX6_2 = SHX10_1
      SHX7_2 = 20
      SHX8_2 = 0.14
      SHX9_2 = -0.62
      SHX10_2 = 0.99
      SHX11_2 = 0.0
      SHX12_2 = 0.0
      SHX13_2 = 0.0
      SHX14_2 = false
      SHX15_2 = false
      SHX16_2 = false
      SHX17_2 = false
      SHX18_2 = 1
      SHX19_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    else
      SHX4_2 = SHX6_1
      if 3 == SHX4_2 then
        SHX4_2 = AttachEntityToEntity
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.getPlayerPed
        SHX5_2 = SHX5_2()
        SHX6_2 = SHX10_1
        SHX7_2 = 20
        SHX8_2 = 0.3
        SHX9_2 = -0.92
        SHX10_2 = 0.99
        SHX11_2 = 0.0
        SHX12_2 = 0.0
        SHX13_2 = 0.0
        SHX14_2 = false
        SHX15_2 = false
        SHX16_2 = false
        SHX17_2 = false
        SHX18_2 = 1
        SHX19_2 = true
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      else
        SHX4_2 = SHX6_1
        if 2 == SHX4_2 then
          SHX4_2 = AttachEntityToEntity
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.getPlayerPed
          SHX5_2 = SHX5_2()
          SHX6_2 = SHX10_1
          SHX7_2 = 20
          SHX8_2 = 0.38
          SHX9_2 = -0.79
          SHX10_2 = 0.94
          SHX11_2 = 0.0
          SHX12_2 = 0.0
          SHX13_2 = 0.0
          SHX14_2 = false
          SHX15_2 = false
          SHX16_2 = false
          SHX17_2 = false
          SHX18_2 = 1
          SHX19_2 = true
          SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        else
          SHX4_2 = AttachEntityToEntity
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.getPlayerPed
          SHX5_2 = SHX5_2()
          SHX6_2 = SHX10_1
          SHX7_2 = 20
          SHX8_2 = 0.4
          SHX9_2 = -0.83
          SHX10_2 = 0.94
          SHX11_2 = 0.0
          SHX12_2 = 0.0
          SHX13_2 = 0.0
          SHX14_2 = false
          SHX15_2 = false
          SHX16_2 = false
          SHX17_2 = false
          SHX18_2 = 1
          SHX19_2 = true
          SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        end
      end
    end
    SHX4_2 = IsControlJustReleased
    SHX5_2 = 1
    SHX6_2 = 38
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX4_2 then
      SHX4_2 = SHX6_1
      if 0 == SHX4_2 then
        SHX1_2 = SHX23_1.puttswinglow
      else
        SHX1_2 = SHX22_1.ironswinghigh
        SHX4_2 = SHX41_1
        SHX5_2 = SHX1_2
        SHX4_2(SHX5_2)
        SHX1_2 = SHX22_1.ironswinglow
        SHX4_2 = SHX41_1
        SHX5_2 = SHX1_2
        SHX4_2(SHX5_2)
        SHX1_2 = SHX22_1.ironswinglow
      end
      SHX4_2 = 1
      SHX5_1 = SHX4_2
      SHX4_2 = false
      SHX7_1 = SHX4_2
      SHX4_2 = DetachEntity
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.getPlayerPed
      SHX5_2 = SHX5_2()
      SHX6_2 = true
      SHX7_2 = false
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    else
      SHX4_2 = SHX7_1
      if not SHX4_2 then
        SHX4_2 = Citizen
        SHX4_2 = SHX4_2.CreateThreadNow
        SHX5_2 = SHX43_1
        SHX4_2(SHX5_2)
      end
    end
  end
  SHX2_2 = PlaySoundFromEntity
  SHX3_2 = -1
  SHX4_2 = "GOLF_SWING_FAIRWAY_IRON_LIGHT_MASTER"
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerPed
  SHX5_2 = SHX5_2()
  SHX6_2 = nil
  SHX7_2 = false
  SHX8_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = SHX41_1
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = SHX45_1
  SHX2_2()
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 1000
  SHX2_2(SHX3_2)
  SHX2_2 = SHX39_1
  SHX2_2()
end
SHX47_1 = Citizen
SHX47_1 = SHX47_1.CreateThread
function SHX48_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  while true do
    SHX0_2 = SHX3_1
    if SHX0_2 then
      SHX0_2 = SHX4_1
      if 1 == SHX0_2 then
        SHX0_2 = SHX0_1
        SHX0_2 = SHX0_2 + 1
        SHX0_1 = SHX0_2
        SHX0_2 = SHX0_1
        if 10 == SHX0_2 then
          SHX0_2 = SHX29_1
          SHX1_2 = true
          SHX0_2(SHX1_2)
        else
          SHX0_2 = tCMG
          SHX0_2 = SHX0_2.removeBlip
          SHX1_2 = SHX15_1
          SHX0_2(SHX1_2)
          SHX0_2 = tCMG
          SHX0_2 = SHX0_2.removeBlip
          SHX1_2 = SHX13_1
          SHX0_2(SHX1_2)
          SHX0_2 = tCMG
          SHX0_2 = SHX0_2.removeMarker
          SHX1_2 = SHX14_1
          SHX0_2(SHX1_2)
          SHX0_2 = tCMG
          SHX0_2 = SHX0_2.addBlip
          SHX2_2 = SHX0_1
          SHX1_2 = SHX25_1
          SHX1_2 = SHX1_2[SHX2_2]
          SHX1_2 = SHX1_2.startHole
          SHX1_2 = SHX1_2.x
          SHX3_2 = SHX0_1
          SHX2_2 = SHX25_1
          SHX2_2 = SHX2_2[SHX3_2]
          SHX2_2 = SHX2_2.startHole
          SHX2_2 = SHX2_2.y
          SHX4_2 = SHX0_1
          SHX3_2 = SHX25_1
          SHX3_2 = SHX3_2[SHX4_2]
          SHX3_2 = SHX3_2.startHole
          SHX3_2 = SHX3_2.z
          SHX4_2 = 161
          SHX5_2 = 1
          SHX6_2 = "Swing Ball"
          SHX7_2 = 1.0
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX15_1 = SHX0_2
          SHX0_2 = SetBlipAsShortRange
          SHX1_2 = SHX15_1
          SHX2_2 = false
          SHX0_2(SHX1_2, SHX2_2)
          SHX0_2 = SetBlipDisplay
          SHX1_2 = SHX15_1
          SHX2_2 = 2
          SHX0_2(SHX1_2, SHX2_2)
          SHX0_2 = tCMG
          SHX0_2 = SHX0_2.addBlip
          SHX2_2 = SHX0_1
          SHX1_2 = SHX25_1
          SHX1_2 = SHX1_2[SHX2_2]
          SHX1_2 = SHX1_2.endHole
          SHX1_2 = SHX1_2.x
          SHX3_2 = SHX0_1
          SHX2_2 = SHX25_1
          SHX2_2 = SHX2_2[SHX3_2]
          SHX2_2 = SHX2_2.endHole
          SHX2_2 = SHX2_2.y
          SHX4_2 = SHX0_1
          SHX3_2 = SHX25_1
          SHX3_2 = SHX3_2[SHX4_2]
          SHX3_2 = SHX3_2.endHole
          SHX3_2 = SHX3_2.z
          SHX4_2 = 109
          SHX5_2 = 1
          SHX6_2 = "Hole"
          SHX7_2 = 1.0
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX13_1 = SHX0_2
          SHX0_2 = SetBlipAsShortRange
          SHX1_2 = SHX13_1
          SHX2_2 = false
          SHX0_2(SHX1_2, SHX2_2)
          SHX0_2 = SetBlipDisplay
          SHX1_2 = SHX13_1
          SHX2_2 = 2
          SHX0_2(SHX1_2, SHX2_2)
          SHX0_2 = tCMG
          SHX0_2 = SHX0_2.addMarker
          SHX2_2 = SHX0_1
          SHX1_2 = SHX25_1
          SHX1_2 = SHX1_2[SHX2_2]
          SHX1_2 = SHX1_2.endHole
          SHX1_2 = SHX1_2.x
          SHX3_2 = SHX0_1
          SHX2_2 = SHX25_1
          SHX2_2 = SHX2_2[SHX3_2]
          SHX2_2 = SHX2_2.endHole
          SHX2_2 = SHX2_2.y
          SHX4_2 = SHX0_1
          SHX3_2 = SHX25_1
          SHX3_2 = SHX3_2[SHX4_2]
          SHX3_2 = SHX3_2.endHole
          SHX3_2 = SHX3_2.z
          SHX3_2 = SHX3_2 + 1
          SHX4_2 = 0.5
          SHX5_2 = 0.5
          SHX6_2 = 0.5
          SHX7_2 = 10
          SHX8_2 = 255
          SHX9_2 = 81
          SHX10_2 = 255
          SHX11_2 = 250
          SHX12_2 = 0
          SHX13_2 = false
          SHX14_2 = true
          SHX15_2 = false
          SHX16_2 = nil
          SHX17_2 = nil
          SHX18_2 = 0.0
          SHX19_2 = 0.0
          SHX20_2 = 0.0
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
          SHX14_1 = SHX0_2
          SHX0_2 = 0
          SHX4_1 = SHX0_2
          SHX0_2 = 1
          SHX5_1 = SHX0_2
          SHX0_2 = SHX34_1
          SHX2_2 = SHX0_1
          SHX1_2 = SHX25_1
          SHX1_2 = SHX1_2[SHX2_2]
          SHX1_2 = SHX1_2.startHole
          SHX1_2 = SHX1_2.x
          SHX3_2 = SHX0_1
          SHX2_2 = SHX25_1
          SHX2_2 = SHX2_2[SHX3_2]
          SHX2_2 = SHX2_2.startHole
          SHX2_2 = SHX2_2.y
          SHX4_2 = SHX0_1
          SHX3_2 = SHX25_1
          SHX3_2 = SHX3_2[SHX4_2]
          SHX3_2 = SHX3_2.startHole
          SHX3_2 = SHX3_2.z
          SHX0_2(SHX1_2, SHX2_2, SHX3_2)
        end
      else
        SHX0_2 = SHX5_1
        if 2 == SHX0_2 then
          SHX0_2 = SHX8_1
          if not SHX0_2 then
            SHX0_2 = SHX11_1
            if not SHX0_2 then
              SHX0_2 = true
              SHX8_1 = SHX0_2
              SHX0_2 = Citizen
              SHX0_2 = SHX0_2.CreateThread
              function SHX1_2()
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX0_3, SHX1_3
                SHX0_3 = SHX46_1
                SHX0_3()
              end
              SHX0_2(SHX1_2)
          end
        end
        else
          SHX0_2 = SHX5_1
          if 1 == SHX0_2 then
            SHX0_2 = SHX8_1
            if not SHX0_2 then
              SHX0_2 = SHX11_1
              if not SHX0_2 then
                SHX0_2 = CMG
                SHX0_2 = SHX0_2.getPlayerVehicle
                SHX0_2 = SHX0_2()
                if 0 == SHX0_2 then
                  SHX0_2 = GetEntityCoords
                  SHX1_2 = SHX10_1
                  SHX0_2 = SHX0_2(SHX1_2)
                  SHX1_2 = CMG
                  SHX1_2 = SHX1_2.getPlayerCoords
                  SHX1_2 = SHX1_2()
                  SHX1_2 = SHX1_2 - SHX0_2
                  SHX1_2 = #SHX1_2
                  if SHX1_2 > 50 then
                    SHX1_2 = SHX18_1
                    if not SHX1_2 then
                      SHX1_2 = GetGameTimer
                      SHX1_2 = SHX1_2()
                      SHX2_2 = SHX19_1
                      SHX1_2 = SHX1_2 - SHX2_2
                      SHX2_2 = 15000
                      if SHX1_2 < SHX2_2 then
                        SHX1_2 = SHX26_1
                        SHX2_2 = "Move to the next start area."
                        SHX3_2 = false
                        SHX4_2 = -1
                        SHX1_2(SHX2_2, SHX3_2, SHX4_2)
                      else
                        SHX1_2 = SHX26_1
                        SHX2_2 = "Move to your ball or press ~g~~INPUT_CONTEXT~~s~ to ball drop if you are stuck."
                        SHX3_2 = false
                        SHX4_2 = -1
                        SHX1_2(SHX2_2, SHX3_2, SHX4_2)
                        SHX1_2 = IsControlJustReleased
                        SHX2_2 = 1
                        SHX3_2 = 38
                        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
                        if not SHX1_2 then
                          goto SHX_LABEL_311
                        end
                        SHX1_2 = true
                        SHX11_1 = SHX1_2
                        while true do
                          SHX1_2 = SHX11_1
                          if not SHX1_2 then
                            goto SHX_LABEL_311
                          end
                          SHX1_2 = CMG
                          SHX1_2 = SHX1_2.getPlayerCoords
                          SHX1_2 = SHX1_2()
                          SHX1_2 = SHX1_2 - SHX0_2
                          SHX1_2 = #SHX1_2
                          if not (SHX1_2 < 100.0) then
                            SHX1_2 = CMG
                            SHX1_2 = SHX1_2.getPlayerCoords
                            SHX1_2 = SHX1_2()
                            SHX1_2 = SHX1_2.z
                            SHX2_2 = SHX0_2.z
                            SHX1_2 = SHX1_2 - SHX2_2
                            if not (SHX1_2 > 100.0) then
                              goto SHX_LABEL_282
                            end
                          end
                          SHX1_2 = CMG
                          SHX1_2 = SHX1_2.getPlayerCoords
                          SHX1_2 = SHX1_2()
                          SHX3_2 = SHX0_1
                          SHX2_2 = SHX25_1
                          SHX2_2 = SHX2_2[SHX3_2]
                          SHX2_2 = SHX2_2.endHole
                          SHX1_2 = SHX1_2 - SHX2_2
                          SHX1_2 = #SHX1_2
                          if SHX1_2 > 50.0 then
                            SHX1_2 = SHX26_1
                            SHX2_2 = "Press ~g~E~s~ to drop here."
                            SHX3_2 = false
                            SHX4_2 = -1
                            SHX1_2(SHX2_2, SHX3_2, SHX4_2)
                            SHX1_2 = IsControlJustReleased
                            SHX2_2 = 1
                            SHX3_2 = 38
                            SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
                            if SHX1_2 then
                              SHX1_2 = false
                              SHX11_1 = SHX1_2
                              SHX1_2 = CMG
                              SHX1_2 = SHX1_2.getPlayerCoords
                              SHX1_2 = SHX1_2()
                              SHX2_2 = SHX34_1
                              SHX3_2 = SHX1_2.x
                              SHX4_2 = SHX1_2.y
                              SHX5_2 = SHX1_2.z
                              SHX5_2 = SHX5_2 - 1
                              SHX2_2(SHX3_2, SHX4_2, SHX5_2)
                              SHX2_2 = SHX1_1
                              SHX2_2 = SHX2_2 + 1
                              SHX1_1 = SHX2_2
                            end
                          else
                            -- [FIX IF ERROR] Move ::SHX_LABEL_282:: outside nested blocks until all 'goto SHX_LABEL_282' can see it
                            ::SHX_LABEL_282::
                            SHX1_2 = SHX26_1
                            SHX2_2 = "Press ~g~E~s~ to drop - ~r~ too far from ball or too close to hole."
                            SHX3_2 = false
                            SHX4_2 = -1
                            SHX1_2(SHX2_2, SHX3_2, SHX4_2)
                            SHX1_2 = SetTimeout
                            SHX2_2 = 5000
                            function SHX3_2()
                              -- [AI CLEANUP] Decompiled Lua - Fix these:
                              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                              -- 3. Replace goto/label with while/repeat-until where possible
                              -- 4. Remove decompiler comments, add meaningful ones
                              -- 5. Fix indentation and formatting
                              
                              local SHX0_3, SHX1_3
                              SHX0_3 = false
                              SHX11_1 = SHX0_3
                            end
                            SHX1_2(SHX2_2, SHX3_2)
                          end
                          SHX1_2 = Wait
                          SHX2_2 = 0
                          SHX1_2(SHX2_2)
                        end
                      end
                  end
                  else
                    SHX1_2 = CMG
                    SHX1_2 = SHX1_2.getPlayerCoords
                    SHX1_2 = SHX1_2()
                    SHX1_2 = SHX1_2 - SHX0_2
                    SHX1_2 = #SHX1_2
                    if SHX1_2 < 2 then
                      SHX1_2 = SHX11_1
                      if not SHX1_2 then
                        SHX1_2 = 2
                        SHX5_1 = SHX1_2
                        SHX1_2 = 0
                        SHX4_1 = SHX1_2
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
    -- [FIX IF ERROR] Move ::SHX_LABEL_311:: outside nested blocks until all 'goto SHX_LABEL_311' can see it
    ::SHX_LABEL_311::
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX47_1(SHX48_1)
SHX47_1 = AddEventHandler
SHX48_1 = "CMG:onClientSpawn"
function SHX49_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  if SHX1_2 then
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.addBlip
    SHX3_2 = -1350.1905517578
    SHX4_2 = 134.2918548584
    SHX5_2 = 55.556828308105
    SHX6_2 = 109
    SHX7_2 = 68
    SHX8_2 = "Golf Course"
    SHX9_2 = 1.0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  end
end
SHX47_1(SHX48_1, SHX49_1)
