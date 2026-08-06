-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1
SHX0_1 = {}
SHX0_1.deformationMultiplier = -1
SHX0_1.deformationExponent = 0.7
SHX0_1.collisionDamageExponent = 0.6
SHX0_1.damageFactorEngine = 10.0
SHX0_1.damageFactorBody = 10.0
SHX0_1.damageFactorPetrolTank = 64.0
SHX0_1.engineDamageExponent = 0.6
SHX0_1.weaponsDamageMultiplier = 1.0
SHX0_1.degradingHealthSpeedFactor = 10
SHX0_1.cascadingFailureSpeedFactor = 15.0
SHX0_1.degradingFailureThreshold = 0.0
SHX0_1.cascadingFailureThreshold = 0.0
SHX0_1.engineSafeGuard = 150.0
SHX0_1.torqueMultiplierEnabled = true
SHX0_1.limpMode = true
SHX0_1.limpModeMultiplier = 0.005
SHX0_1.preventVehicleFlip = true
SHX0_1.sundayDriver = false
SHX0_1.sundayDriverAcceleratorCurve = 7.5
SHX0_1.sundayDriverBrakeCurve = 5.0
SHX0_1.displayBlips = true
SHX0_1.compatibilityMode = false
SHX0_1.randomTireBurstInterval = 0
SHX0_1.chargeForRepairs = true
SHX0_1.price = 1000.0
SHX0_1.DamageMultiplier = 2.5
SHX1_1 = {}
SHX1_1[0] = 1.0
SHX2_1 = 1.0
SHX3_1 = 1.0
SHX4_1 = 1.0
SHX5_1 = 1.0
SHX6_1 = 1.0
SHX7_1 = 1.0
SHX8_1 = 1.3
SHX9_1 = 0.25
SHX10_1 = 0.7
SHX11_1 = 0.5
SHX12_1 = 1.0
SHX13_1 = 1.0
SHX14_1 = 1.0
SHX15_1 = 1.0
SHX16_1 = 1.0
SHX17_1 = 1.0
SHX18_1 = 1.0
SHX19_1 = 0.75
SHX20_1 = 0.75
SHX21_1 = 1.0
SHX22_1 = 1.0
SHX23_1 = 1.0
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX1_1[4] = SHX5_1
SHX1_1[5] = SHX6_1
SHX1_1[6] = SHX7_1
SHX1_1[7] = SHX8_1
SHX1_1[8] = SHX9_1
SHX1_1[9] = SHX10_1
SHX1_1[10] = SHX11_1
SHX1_1[11] = SHX12_1
SHX1_1[12] = SHX13_1
SHX1_1[13] = SHX14_1
SHX1_1[14] = SHX15_1
SHX1_1[15] = SHX16_1
SHX1_1[16] = SHX17_1
SHX1_1[17] = SHX18_1
SHX1_1[18] = SHX19_1
SHX1_1[19] = SHX20_1
SHX1_1[20] = SHX21_1
SHX1_1[21] = SHX22_1
SHX1_1[22] = SHX23_1
SHX0_1.classDamageMultiplier = SHX1_1
SHX1_1 = false
SHX2_1 = CMG
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  return SHX0_2
end
SHX2_1.isVehicleFailureDisabled = SHX3_1
SHX2_1 = CMG
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_1 = SHX0_2
end
SHX2_1.setVehicleFailureDisabled = SHX3_1
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = {}
SHX4_1.name = "Mechanic"
SHX4_1.blip = 402
SHX4_1.radius = 5.0
SHX5_1 = vector3
SHX6_1 = 1774.0
SHX7_1 = 3333.0
SHX8_1 = 41.0
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX4_1.position = SHX5_1
SHX5_1 = vector4
SHX6_1 = 1776.9522705078
SHX7_1 = 3327.7587890625
SHX8_1 = 41.433326721191
SHX9_1 = 312.74
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1)
SHX4_1.pedPosition = SHX5_1
SHX5_1 = {}
SHX5_1.name = "Mechanic"
SHX5_1.blip = 402
SHX5_1.radius = 5.0
SHX6_1 = vector3
SHX7_1 = 1143.0
SHX8_1 = -776.0
SHX9_1 = 57.0
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX5_1.position = SHX6_1
SHX6_1 = vector4
SHX7_1 = 1151.2346191406
SHX8_1 = -778.63012695312
SHX9_1 = 57.598678588867
SHX10_1 = 58.28
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX5_1.pedPosition = SHX6_1
SHX6_1 = {}
SHX6_1.name = "Mechanic"
SHX6_1.blip = 402
SHX6_1.radius = 5.0
SHX7_1 = vector3
SHX8_1 = 2508.0
SHX9_1 = 4103.0
SHX10_1 = 38.0
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX6_1.position = SHX7_1
SHX7_1 = vector4
SHX8_1 = 2506.7048339844
SHX9_1 = 4097.9829101562
SHX10_1 = 38.706733703613
SHX11_1 = 2.37
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX6_1.pedPosition = SHX7_1
SHX7_1 = {}
SHX7_1.name = "Mechanic"
SHX7_1.blip = 402
SHX7_1.radius = 5.0
SHX8_1 = vector3
SHX9_1 = 2006.0
SHX10_1 = 3792.0
SHX11_1 = 32.0
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX7_1.position = SHX8_1
SHX8_1 = vector4
SHX9_1 = 2002.1617431641
SHX10_1 = 3796.1989746094
SHX11_1 = 32.180774688721
SHX12_1 = 282.57
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX7_1.pedPosition = SHX8_1
SHX8_1 = {}
SHX8_1.name = "Mechanic"
SHX8_1.blip = 402
SHX8_1.radius = 5.0
SHX9_1 = vector3
SHX10_1 = 484.0
SHX11_1 = -1316.0
SHX12_1 = 29.0
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.position = SHX9_1
SHX9_1 = vector4
SHX10_1 = 474.15823364258
SHX11_1 = -1313.6834716797
SHX12_1 = 29.195556640625
SHX13_1 = 252.28346252441
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1)
SHX8_1.pedPosition = SHX9_1
SHX9_1 = {}
SHX9_1.name = "Mechanic"
SHX9_1.blip = 402
SHX9_1.radius = 5.0
SHX10_1 = vector3
SHX11_1 = -1408.65
SHX12_1 = -459.72
SHX13_1 = 34.49
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX9_1.position = SHX10_1
SHX10_1 = vector4
SHX11_1 = -1402.3912353516
SHX12_1 = -452.58462524414
SHX13_1 = 34.469604492188
SHX14_1 = 206.92913818359
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1)
SHX9_1.pedPosition = SHX10_1
SHX10_1 = {}
SHX10_1.name = "Mechanic"
SHX10_1.blip = 402
SHX10_1.radius = 5.0
SHX11_1 = vector3
SHX12_1 = 254.52
SHX13_1 = -1800.12
SHX14_1 = 27.1
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1.position = SHX11_1
SHX11_1 = vector4
SHX12_1 = 262.70770263672
SHX13_1 = -1794.4088134766
SHX14_1 = 27.106201171875
SHX15_1 = 76.535430908203
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX10_1.pedPosition = SHX11_1
SHX11_1 = {}
SHX11_1.name = "Mechanic"
SHX11_1.blip = 402
SHX11_1.radius = 5.0
SHX12_1 = vector3
SHX13_1 = 288.0
SHX14_1 = -1730.0
SHX15_1 = 29.0
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX11_1.position = SHX12_1
SHX12_1 = vector4
SHX13_1 = 289.78021240234
SHX14_1 = -1721.8286132812
SHX15_1 = 29.263061523438
SHX16_1 = 195.5905456543
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1, SHX16_1)
SHX11_1.pedPosition = SHX12_1
SHX12_1 = {}
SHX12_1.name = "Mechanic"
SHX12_1.blip = 402
SHX12_1.radius = 5.0
SHX13_1 = vector3
SHX14_1 = 1910.0
SHX15_1 = 3730.35
SHX16_1 = 32.4
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX12_1.position = SHX13_1
SHX13_1 = vector4
SHX14_1 = 1917.5340576172
SHX15_1 = 3727.2790527344
SHX16_1 = 32.801513671875
SHX17_1 = 107.71653747559
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1)
SHX12_1.pedPosition = SHX13_1
SHX13_1 = {}
SHX13_1.name = "Mechanic"
SHX13_1.blip = 402
SHX13_1.radius = 5.0
SHX14_1 = vector3
SHX15_1 = -29.16
SHX16_1 = -1679.95
SHX17_1 = 29.46
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX13_1.position = SHX14_1
SHX14_1 = vector4
SHX15_1 = -34.378021240234
SHX16_1 = -1676.5186767578
SHX17_1 = 29.482055664062
SHX18_1 = 235.27558898926
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1)
SHX13_1.pedPosition = SHX14_1
SHX14_1 = {}
SHX14_1.name = "Mechanic"
SHX14_1.blip = 402
SHX14_1.radius = 5.0
SHX15_1 = vector3
SHX16_1 = -198.12
SHX17_1 = -1381.97
SHX18_1 = 31.26
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX14_1.position = SHX15_1
SHX15_1 = vector4
SHX16_1 = -195.50769042969
SHX17_1 = -1377.2307128906
SHX18_1 = 31.251342773438
SHX19_1 = 192.75592041016
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1, SHX19_1)
SHX14_1.pedPosition = SHX15_1
SHX15_1 = {}
SHX15_1.name = "Mechanic"
SHX15_1.blip = 402
SHX15_1.radius = 5.0
SHX16_1 = vector3
SHX17_1 = 258.0
SHX18_1 = 2594.0
SHX19_1 = 44.0
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX15_1.position = SHX16_1
SHX16_1 = vector4
SHX17_1 = 259.55130004883
SHX18_1 = 2586.1047363281
SHX19_1 = 44.9541206359861
SHX20_1 = 11.14
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1)
SHX15_1.pedPosition = SHX16_1
SHX16_1 = {}
SHX16_1.name = "Mechanic"
SHX16_1.blip = 402
SHX16_1.radius = 5.0
SHX17_1 = vector3
SHX18_1 = -32.0
SHX19_1 = -1090.0
SHX20_1 = 26.0
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX16_1.position = SHX17_1
SHX17_1 = vector4
SHX18_1 = -36.834205627441
SHX19_1 = -1088.4458007812
SHX20_1 = 26.422451019287
SHX21_1 = 248.74
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1)
SHX16_1.pedPosition = SHX17_1
SHX17_1 = {}
SHX17_1.name = "Mechanic"
SHX17_1.blip = 402
SHX17_1.radius = 5.0
SHX18_1 = vector3
SHX19_1 = -200.0
SHX20_1 = -1298.0
SHX21_1 = 31.29
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.position = SHX18_1
SHX18_1 = vector4
SHX19_1 = -196.32527160645
SHX20_1 = -1297.4505615234
SHX21_1 = 31.285034179688
SHX22_1 = 130.39370727539
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1, SHX22_1)
SHX17_1.pedPosition = SHX18_1
SHX18_1 = {}
SHX18_1.name = "Mechanic"
SHX18_1.blip = 402
SHX18_1.radius = 5.0
SHX19_1 = vector3
SHX20_1 = 903.0
SHX21_1 = 3563.0
SHX22_1 = 34.0
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.position = SHX19_1
SHX19_1 = vector4
SHX20_1 = 902.65588378906
SHX21_1 = 3566.1516113281
SHX22_1 = 33.794116973877
SHX23_1 = 110.31
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX18_1.pedPosition = SHX19_1
SHX19_1 = {}
SHX19_1.name = "Mechanic"
SHX19_1.blip = 402
SHX19_1.radius = 5.0
SHX20_1 = vector3
SHX21_1 = 434.85
SHX22_1 = 3577.52
SHX23_1 = 33.23
SHX20_1 = SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX19_1.position = SHX20_1
SHX20_1 = vector4
SHX21_1 = 439.26593017578
SHX22_1 = 3571.8989257812
SHX23_1 = 33.22265625
SHX24_1 = 0.0
SHX20_1 = SHX20_1(SHX21_1, SHX22_1, SHX23_1, SHX24_1)
SHX19_1.pedPosition = SHX20_1
SHX20_1 = {}
SHX20_1.name = "Mechanic"
SHX20_1.blip = 402
SHX20_1.radius = 5.0
SHX21_1 = vector3
SHX22_1 = -394.34808349609
SHX23_1 = 6055.6342773438
SHX24_1 = 31.500127792358
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1.position = SHX21_1
SHX21_1 = vector4
SHX22_1 = -401.18240356445
SHX23_1 = 6058.4438476562
SHX24_1 = 31.487182617188
SHX25_1 = 232.44094848633
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1, SHX25_1)
SHX20_1.pedPosition = SHX21_1
SHX21_1 = {}
SHX21_1.name = "Mechanic"
SHX21_1.blip = 402
SHX21_1.radius = 5.0
SHX22_1 = vector3
SHX23_1 = 161.84657287598
SHX24_1 = 6405.3413085938
SHX25_1 = 31.1448802948
SHX22_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1)
SHX21_1.position = SHX22_1
SHX22_1 = vector4
SHX23_1 = 164.72967529297
SHX24_1 = 6412.1142578125
SHX25_1 = 31.150146484375
SHX26_1 = 172.91339111328
SHX22_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1, SHX26_1)
SHX21_1.pedPosition = SHX22_1
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX3_1[4] = SHX7_1
SHX3_1[5] = SHX8_1
SHX3_1[6] = SHX9_1
SHX3_1[7] = SHX10_1
SHX3_1[8] = SHX11_1
SHX3_1[9] = SHX12_1
SHX3_1[10] = SHX13_1
SHX3_1[11] = SHX14_1
SHX3_1[12] = SHX15_1
SHX3_1[13] = SHX16_1
SHX3_1[14] = SHX17_1
SHX3_1[15] = SHX18_1
SHX3_1[16] = SHX19_1
SHX3_1[17] = SHX20_1
SHX3_1[18] = SHX21_1
SHX2_1.mechanics = SHX3_1
SHX3_1 = {}
SHX4_1 = "Looks fixed... must be nice!"
SHX5_1 = "Duct tape application complete..."
SHX6_1 = "Zip tie application complete..."
SHX7_1 = "I heard kicking your car fixes it..."
SHX8_1 = "Super glue fixed everything..."
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX3_1[4] = SHX7_1
SHX3_1[5] = SHX8_1
SHX2_1.fixMessages = SHX3_1
SHX2_1.fixMessageCount = 5
SHX3_1 = {}
SHX4_1 = "Dave: Bring the car in!"
SHX3_1[1] = SHX4_1
SHX2_1.noFixMessages = SHX3_1
SHX2_1.noFixMessageCount = 1
SHX3_1 = false
SHX4_1 = nil
SHX5_1 = nil
SHX6_1 = nil
SHX7_1 = 0.0
SHX8_1 = 0.0
SHX9_1 = 0.0
SHX10_1 = 1.0
SHX11_1 = false
SHX12_1 = false
SHX13_1 = 1000.0
SHX14_1 = 1000.0
SHX15_1 = 1000.0
SHX16_1 = 0.0
SHX17_1 = 0.0
SHX18_1 = 1000.0
SHX19_1 = 1000.0
SHX20_1 = 1000.0
SHX21_1 = 0.0
SHX22_1 = 0.0
SHX23_1 = 1000.0
SHX24_1 = 1000.0
SHX25_1 = 1000.0
SHX26_1 = 0.0
SHX27_1 = 0.0
SHX28_1 = nil
SHX29_1 = math
SHX29_1 = SHX29_1.randomseed
SHX30_1 = GetGameTimer
SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1 = SHX30_1()
SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1)
SHX29_1 = SHX0_1.randomTireBurstInterval
SHX29_1 = SHX29_1 * 1200
SHX30_1 = SHX0_1.randomTireBurstInterval
if 0 ~= SHX30_1 then
  SHX30_1 = math
  SHX30_1 = SHX30_1.random
  SHX31_1 = SHX29_1
  SHX30_1 = SHX30_1(SHX31_1)
  SHX28_1 = SHX30_1
end
function SHX30_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = GetVehiclePedIsIn
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX4_1 = SHX1_2
  SHX1_2 = IsPedInAnyVehicle
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = GetPedInVehicleSeat
    SHX2_2 = SHX4_1
    SHX3_2 = -1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 == SHX0_2 then
      SHX1_2 = GetVehicleClass
      SHX2_2 = SHX4_1
      SHX1_2 = SHX1_2(SHX2_2)
      if 15 ~= SHX1_2 and 16 ~= SHX1_2 and 21 ~= SHX1_2 and 13 ~= SHX1_2 then
        SHX2_2 = true
        return SHX2_2
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX31_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 0
  if SHX5_2 > 10.0 then
    SHX5_2 = 10.0
  end
  if SHX5_2 < -10.0 then
    SHX5_2 = -10.0
  end
  SHX5_2 = SHX5_2 * -0.1
  SHX12_2 = 10.0
  SHX5_2 = SHX12_2 ^ SHX5_2
  if SHX0_2 < SHX1_2 then
    SHX0_2 = SHX1_2
  end
  if SHX2_2 < SHX0_2 then
    SHX0_2 = SHX2_2
  end
  SHX6_2 = SHX2_2 - SHX1_2
  if SHX3_2 < SHX4_2 then
    SHX7_2 = SHX4_2 - SHX3_2
  else
    SHX7_2 = SHX3_2 - SHX4_2
    SHX11_2 = 1
  end
  SHX8_2 = SHX0_2 - SHX1_2
  SHX9_2 = SHX8_2 / SHX6_2
  if SHX2_2 < SHX1_2 then
    SHX12_2 = 0
    return SHX12_2
  end
  if 0 == SHX11_2 then
    SHX12_2 = SHX9_2 ^ SHX5_2
    SHX12_2 = SHX12_2 * SHX7_2
    SHX10_2 = SHX12_2 + SHX3_2
  else
    SHX12_2 = SHX9_2 ^ SHX5_2
    SHX12_2 = SHX12_2 * SHX7_2
    SHX10_2 = SHX3_2 - SHX12_2
  end
  return SHX10_2
end
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = math
  SHX0_2 = SHX0_2.random
  SHX1_2 = SHX29_1
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = SHX28_1
  if SHX0_2 == SHX1_2 then
    SHX1_2 = GetVehicleTyresCanBurst
    SHX2_2 = SHX4_1
    SHX1_2 = SHX1_2(SHX2_2)
    if false == SHX1_2 then
      return
    end
    SHX1_2 = GetVehicleNumberOfWheels
    SHX2_2 = SHX4_1
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = nil
    if 2 == SHX1_2 then
      SHX3_2 = math
      SHX3_2 = SHX3_2.random
      SHX4_2 = 2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX3_2 = SHX3_2 - 1
      SHX2_2 = SHX3_2 * 4
    elseif 4 == SHX1_2 then
      SHX3_2 = math
      SHX3_2 = SHX3_2.random
      SHX4_2 = 4
      SHX3_2 = SHX3_2(SHX4_2)
      SHX2_2 = SHX3_2 - 1
      if SHX2_2 > 1 then
        SHX2_2 = SHX2_2 + 2
      end
    elseif 6 == SHX1_2 then
      SHX3_2 = math
      SHX3_2 = SHX3_2.random
      SHX4_2 = 6
      SHX3_2 = SHX3_2(SHX4_2)
      SHX2_2 = SHX3_2 - 1
    else
      SHX2_2 = 0
    end
    SHX3_2 = SetVehicleTyreBurst
    SHX4_2 = SHX4_1
    SHX5_2 = SHX2_2
    SHX6_2 = false
    SHX7_2 = 1000.0
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX3_2 = math
    SHX3_2 = SHX3_2.random
    SHX4_2 = SHX29_1
    SHX3_2 = SHX3_2(SHX4_2)
    SHX28_1 = SHX3_2
  end
end
SHX33_1 = SHX0_1.torqueMultiplierEnabled
if not SHX33_1 then
  SHX33_1 = SHX0_1.preventVehicleFlip
  if not SHX33_1 then
    SHX33_1 = SHX0_1.limpMode
    if not SHX33_1 then
      goto SHX_LABEL_466
    end
  end
end
SHX33_1 = Citizen
SHX33_1 = SHX33_1.CreateThread
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  while true do
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
    SHX0_2 = SHX0_1.torqueMultiplierEnabled
    if not SHX0_2 then
      SHX0_2 = SHX0_1.sundayDriver
      if not SHX0_2 then
        SHX0_2 = SHX0_1.limpMode
        if not SHX0_2 then
          goto SHX_LABEL_218
        end
      end
    end
    SHX0_2 = SHX1_1
    if not SHX0_2 then
      SHX0_2 = SHX3_1
      if SHX0_2 then
        SHX0_2 = 1.0
        SHX1_2 = SHX0_1.torqueMultiplierEnabled
        if SHX1_2 then
          SHX1_2 = SHX15_1
          SHX2_2 = 900
          if SHX1_2 < SHX2_2 then
            SHX1_2 = SHX15_1
            SHX1_2 = SHX1_2 + 200.0
            SHX0_2 = SHX1_2 / 1100
          end
        end
        SHX1_2 = SHX0_1.sundayDriver
        if SHX1_2 then
          SHX1_2 = GetVehicleClass
          SHX2_2 = SHX4_1
          SHX1_2 = SHX1_2(SHX2_2)
          if 14 ~= SHX1_2 then
            SHX1_2 = GetControlValue
            SHX2_2 = 2
            SHX3_2 = 71
            SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
            SHX2_2 = GetControlValue
            SHX3_2 = 2
            SHX4_2 = 72
            SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
            SHX3_2 = GetEntitySpeedVector
            SHX4_2 = SHX4_1
            SHX5_2 = true
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            SHX3_2 = SHX3_2.y
            SHX4_2 = SHX10_1
            if SHX3_2 >= 1.0 then
              if SHX1_2 > 127 then
                SHX5_2 = SHX31_1
                SHX6_2 = SHX1_2
                SHX7_2 = 127.0
                SHX8_2 = 254.0
                SHX9_2 = 0.1
                SHX10_2 = 1.0
                SHX11_2 = SHX0_1.sundayDriverAcceleratorCurve
                SHX11_2 = SHX11_2 * 2.0
                SHX12_2 = 10.0
                SHX11_2 = SHX12_2 - SHX11_2
                SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
                SHX0_2 = SHX0_2 * SHX5_2
              end
              if SHX2_2 > 127 then
                SHX5_2 = true
                SHX11_1 = SHX5_2
                SHX5_2 = SHX31_1
                SHX6_2 = SHX2_2
                SHX7_2 = 127.0
                SHX8_2 = 254.0
                SHX9_2 = 0.01
                SHX10_2 = SHX10_1
                SHX11_2 = SHX0_1.sundayDriverBrakeCurve
                SHX11_2 = SHX11_2 * 2.0
                SHX12_2 = 10.0
                SHX11_2 = SHX12_2 - SHX11_2
                SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
                SHX4_2 = SHX5_2
              end
            elseif SHX3_2 <= -1.0 then
              if SHX2_2 > 127 then
                SHX5_2 = SHX31_1
                SHX6_2 = SHX2_2
                SHX7_2 = 127.0
                SHX8_2 = 254.0
                SHX9_2 = 0.1
                SHX10_2 = 1.0
                SHX11_2 = SHX0_1.sundayDriverAcceleratorCurve
                SHX11_2 = SHX11_2 * 2.0
                SHX12_2 = 10.0
                SHX11_2 = SHX12_2 - SHX11_2
                SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
                SHX0_2 = SHX0_2 * SHX5_2
              end
              if SHX1_2 > 127 then
                SHX5_2 = true
                SHX12_1 = SHX5_2
                SHX5_2 = SHX31_1
                SHX6_2 = SHX1_2
                SHX7_2 = 127.0
                SHX8_2 = 254.0
                SHX9_2 = 0.01
                SHX10_2 = SHX10_1
                SHX11_2 = SHX0_1.sundayDriverBrakeCurve
                SHX11_2 = SHX11_2 * 2.0
                SHX12_2 = 10.0
                SHX11_2 = SHX12_2 - SHX11_2
                SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
                SHX4_2 = SHX5_2
              end
            else
              SHX5_2 = GetEntitySpeed
              SHX6_2 = SHX4_1
              SHX5_2 = SHX5_2(SHX6_2)
              if SHX5_2 < 1 then
                SHX6_2 = SHX11_1
                if true == SHX6_2 then
                  SHX6_2 = DisableControlAction
                  SHX7_2 = 2
                  SHX8_2 = 72
                  SHX9_2 = true
                  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
                  SHX6_2 = SetVehicleForwardSpeed
                  SHX7_2 = SHX4_1
                  SHX8_2 = SHX3_2 * 0.98
                  SHX6_2(SHX7_2, SHX8_2)
                  SHX6_2 = SetVehicleBrakeLights
                  SHX7_2 = SHX4_1
                  SHX8_2 = true
                  SHX6_2(SHX7_2, SHX8_2)
                end
                SHX6_2 = SHX12_1
                if true == SHX6_2 then
                  SHX6_2 = DisableControlAction
                  SHX7_2 = 2
                  SHX8_2 = 71
                  SHX9_2 = true
                  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
                  SHX6_2 = SetVehicleForwardSpeed
                  SHX7_2 = SHX4_1
                  SHX8_2 = SHX3_2 * 0.98
                  SHX6_2(SHX7_2, SHX8_2)
                  SHX6_2 = SetVehicleBrakeLights
                  SHX7_2 = SHX4_1
                  SHX8_2 = true
                  SHX6_2(SHX7_2, SHX8_2)
                end
                SHX6_2 = SHX11_1
                if true == SHX6_2 then
                  SHX6_2 = GetDisabledControlNormal
                  SHX7_2 = 2
                  SHX8_2 = 72
                  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
                  if 0 == SHX6_2 then
                    SHX6_2 = false
                    SHX11_1 = SHX6_2
                  end
                end
                SHX6_2 = SHX12_1
                if true == SHX6_2 then
                  SHX6_2 = GetDisabledControlNormal
                  SHX7_2 = 2
                  SHX8_2 = 71
                  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
                  if 0 == SHX6_2 then
                    SHX6_2 = false
                    SHX12_1 = SHX6_2
                  end
                end
              end
            end
            SHX5_2 = SHX10_1
            SHX5_2 = SHX5_2 - 0.02
            if SHX4_2 > SHX5_2 then
              SHX4_2 = SHX10_1
            end
            SHX5_2 = SetVehicleHandlingFloat
            SHX6_2 = SHX4_1
            SHX7_2 = "CHandlingData"
            SHX8_2 = "fBrakeForce"
            SHX9_2 = SHX4_2
            SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
          end
        end
        SHX1_2 = SHX0_1.limpMode
        if true == SHX1_2 then
          SHX1_2 = SHX15_1
          SHX2_2 = SHX0_1.engineSafeGuard
          SHX2_2 = SHX2_2 + 5
          if SHX1_2 < SHX2_2 then
            SHX0_2 = SHX0_1.limpModeMultiplier
          end
        end
        SHX1_2 = SetVehicleCheatPowerIncrease
        SHX2_2 = SHX4_1
        SHX3_2 = SHX0_2
        SHX1_2(SHX2_2, SHX3_2)
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_218:: outside nested blocks until all 'goto SHX_LABEL_218' can see it
    ::SHX_LABEL_218::
    SHX0_2 = SHX0_1.preventVehicleFlip
    if SHX0_2 then
      SHX0_2 = SHX1_1
      if not SHX0_2 then
        SHX0_2 = GetEntityRoll
        SHX1_2 = SHX4_1
        SHX0_2 = SHX0_2(SHX1_2)
        if SHX0_2 > 75.0 or SHX0_2 < -75.0 then
          SHX1_2 = GetEntitySpeed
          SHX2_2 = SHX4_1
          SHX1_2 = SHX1_2(SHX2_2)
          if SHX1_2 < 2 then
            SHX1_2 = DisableControlAction
            SHX2_2 = 2
            SHX3_2 = 59
            SHX4_2 = true
            SHX1_2(SHX2_2, SHX3_2, SHX4_2)
            SHX1_2 = DisableControlAction
            SHX2_2 = 2
            SHX3_2 = 60
            SHX4_2 = true
            SHX1_2(SHX2_2, SHX3_2, SHX4_2)
          end
        end
      end
    end
  end
end
SHX33_1(SHX34_1)
-- [FIX IF ERROR] Move ::SHX_LABEL_466:: outside nested blocks until all 'goto SHX_LABEL_466' can see it
::SHX_LABEL_466::
SHX33_1 = Citizen
SHX33_1 = SHX33_1.CreateThread
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  while true do
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 50
    SHX0_2(SHX1_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX30_1
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      SHX1_2 = SHX1_1
      if not SHX1_2 then
        SHX1_2 = GetVehiclePedIsIn
        SHX2_2 = SHX0_2
        SHX3_2 = false
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        SHX4_1 = SHX1_2
        SHX1_2 = GetVehicleClass
        SHX2_2 = SHX4_1
        SHX1_2 = SHX1_2(SHX2_2)
        SHX6_1 = SHX1_2
        SHX1_2 = GetVehicleEngineHealth
        SHX2_2 = SHX4_1
        SHX1_2 = SHX1_2(SHX2_2)
        SHX14_1 = SHX1_2
        SHX1_2 = SHX14_1
        if 1000 == SHX1_2 then
          SHX1_2 = 1000.0
          SHX13_1 = SHX1_2
        end
        SHX1_2 = SHX14_1
        SHX15_1 = SHX1_2
        SHX1_2 = SHX13_1
        SHX2_2 = SHX14_1
        SHX1_2 = SHX1_2 - SHX2_2
        SHX16_1 = SHX1_2
        SHX1_2 = SHX16_1
        SHX2_2 = SHX0_1.damageFactorEngine
        SHX1_2 = SHX1_2 * SHX2_2
        SHX2_2 = SHX0_1.classDamageMultiplier
        SHX3_2 = SHX6_1
        SHX2_2 = SHX2_2[SHX3_2]
        SHX1_2 = SHX1_2 * SHX2_2
        SHX17_1 = SHX1_2
        SHX1_2 = GetVehicleBodyHealth
        SHX2_2 = SHX4_1
        SHX1_2 = SHX1_2(SHX2_2)
        SHX19_1 = SHX1_2
        SHX1_2 = SHX19_1
        if 1000 == SHX1_2 then
          SHX1_2 = 1000.0
          SHX18_1 = SHX1_2
        end
        SHX1_2 = SHX19_1
        SHX20_1 = SHX1_2
        SHX1_2 = SHX18_1
        SHX2_2 = SHX19_1
        SHX1_2 = SHX1_2 - SHX2_2
        SHX21_1 = SHX1_2
        SHX1_2 = SHX21_1
        SHX2_2 = SHX0_1.damageFactorBody
        SHX1_2 = SHX1_2 * SHX2_2
        SHX2_2 = SHX0_1.classDamageMultiplier
        SHX3_2 = SHX6_1
        SHX2_2 = SHX2_2[SHX3_2]
        SHX1_2 = SHX1_2 * SHX2_2
        SHX22_1 = SHX1_2
        SHX1_2 = GetVehiclePetrolTankHealth
        SHX2_2 = SHX4_1
        SHX1_2 = SHX1_2(SHX2_2)
        SHX24_1 = SHX1_2
        SHX1_2 = SHX0_1.compatibilityMode
        if SHX1_2 then
          SHX1_2 = SHX24_1
          if SHX1_2 < 1 then
            SHX1_2 = SHX24_1
            SHX23_1 = SHX1_2
          end
        end
        SHX1_2 = SHX24_1
        if 1000 == SHX1_2 then
          SHX1_2 = 1000.0
          SHX23_1 = SHX1_2
        end
        SHX1_2 = SHX24_1
        SHX25_1 = SHX1_2
        SHX1_2 = SHX23_1
        SHX2_2 = SHX24_1
        SHX1_2 = SHX1_2 - SHX2_2
        SHX26_1 = SHX1_2
        SHX1_2 = SHX26_1
        SHX2_2 = SHX0_1.damageFactorPetrolTank
        SHX1_2 = SHX1_2 * SHX2_2
        SHX2_2 = SHX0_1.classDamageMultiplier
        SHX3_2 = SHX6_1
        SHX2_2 = SHX2_2[SHX3_2]
        SHX1_2 = SHX1_2 * SHX2_2
        SHX27_1 = SHX1_2
        SHX1_2 = SHX14_1
        SHX2_2 = SHX0_1.engineSafeGuard
        SHX2_2 = SHX2_2 + 1
        if SHX1_2 > SHX2_2 then
          SHX1_2 = SetVehicleUndriveable
          SHX2_2 = SHX4_1
          SHX3_2 = false
          SHX1_2(SHX2_2, SHX3_2)
        end
        SHX1_2 = SHX14_1
        SHX2_2 = SHX0_1.engineSafeGuard
        SHX2_2 = SHX2_2 + 1
        if SHX1_2 <= SHX2_2 then
          SHX1_2 = SHX0_1.limpMode
          if false == SHX1_2 then
            SHX1_2 = SetVehicleUndriveable
            SHX2_2 = SHX4_1
            SHX3_2 = true
            SHX1_2(SHX2_2, SHX3_2)
          end
        end
        SHX1_2 = SHX4_1
        SHX2_2 = SHX5_1
        if SHX1_2 ~= SHX2_2 then
          SHX1_2 = false
          SHX3_1 = SHX1_2
        end
        SHX1_2 = SHX3_1
        if true == SHX1_2 then
          SHX1_2 = SHX14_1
          if 1000.0 == SHX1_2 then
            SHX1_2 = SHX19_1
            if 1000.0 == SHX1_2 then
              SHX1_2 = SHX24_1
            end
          end
          if 1000.0 ~= SHX1_2 then
            SHX1_2 = math
            SHX1_2 = SHX1_2.max
            SHX2_2 = SHX17_1
            SHX3_2 = SHX22_1
            SHX4_2 = SHX27_1
            SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
            SHX2_2 = SHX14_1
            SHX3_2 = SHX0_1.engineSafeGuard
            SHX2_2 = SHX2_2 - SHX3_2
            if SHX1_2 > SHX2_2 then
              SHX1_2 = SHX1_2 * 0.7
            end
            SHX2_2 = SHX14_1
            if SHX1_2 > SHX2_2 then
              SHX2_2 = SHX14_1
              SHX3_2 = SHX0_1.cascadingFailureThreshold
              SHX3_2 = SHX3_2 / 5
              SHX1_2 = SHX2_2 - SHX3_2
            end
            SHX2_2 = SHX13_1
            SHX2_2 = SHX2_2 - SHX1_2
            SHX15_1 = SHX2_2
            SHX2_2 = SHX15_1
            SHX3_2 = SHX0_1.cascadingFailureThreshold
            SHX3_2 = SHX3_2 + 5
            if SHX2_2 > SHX3_2 then
              SHX2_2 = SHX15_1
              SHX3_2 = SHX0_1.degradingFailureThreshold
              if SHX2_2 < SHX3_2 then
                SHX2_2 = SHX15_1
                SHX3_2 = SHX0_1.degradingHealthSpeedFactor
                SHX3_2 = 0.038 * SHX3_2
                SHX2_2 = SHX2_2 - SHX3_2
                SHX15_1 = SHX2_2
              end
            end
            SHX2_2 = SHX15_1
            SHX3_2 = SHX0_1.cascadingFailureThreshold
            if SHX2_2 < SHX3_2 then
              SHX2_2 = SHX15_1
              SHX3_2 = SHX0_1.cascadingFailureSpeedFactor
              SHX3_2 = 0.1 * SHX3_2
              SHX2_2 = SHX2_2 - SHX3_2
              SHX15_1 = SHX2_2
            end
            SHX2_2 = SHX15_1
            SHX3_2 = SHX0_1.engineSafeGuard
            if SHX2_2 < SHX3_2 then
              SHX2_2 = SHX0_1.engineSafeGuard
              SHX15_1 = SHX2_2
            end
            SHX2_2 = SHX0_1.compatibilityMode
            if false == SHX2_2 then
              SHX2_2 = SHX24_1
              SHX3_2 = 750
              if SHX2_2 < SHX3_2 then
                SHX2_2 = 750.0
                SHX25_1 = SHX2_2
              end
            end
            SHX2_2 = SHX20_1
            if SHX2_2 < 0 then
              SHX2_2 = 0.0
              SHX20_1 = SHX2_2
            end
          end
        else
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.isVehicleCarDevDamageDisabled
          SHX2_2 = SHX4_1
          SHX1_2 = SHX1_2(SHX2_2)
          if not SHX1_2 then
            SHX1_2 = GetVehicleHandlingFloat
            SHX2_2 = SHX4_1
            SHX3_2 = "CHandlingData"
            SHX4_2 = "fDeformationDamageMult"
            SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
            SHX8_1 = SHX1_2
            SHX1_2 = GetVehicleHandlingFloat
            SHX2_2 = SHX4_1
            SHX3_2 = "CHandlingData"
            SHX4_2 = "fBrakeForce"
            SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
            SHX10_1 = SHX1_2
            SHX1_2 = SHX8_1
            SHX2_2 = SHX0_1.deformationExponent
            SHX1_2 = SHX1_2 ^ SHX2_2
            SHX2_2 = SHX0_1.deformationMultiplier
            if -1 ~= SHX2_2 then
              SHX2_2 = SetVehicleHandlingFloat
              SHX3_2 = SHX4_1
              SHX4_2 = "CHandlingData"
              SHX5_2 = "fDeformationDamageMult"
              SHX6_2 = SHX0_1.deformationMultiplier
              SHX6_2 = SHX1_2 * SHX6_2
              SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
            end
            SHX2_2 = SHX0_1.weaponsDamageMultiplier
            if -1 ~= SHX2_2 then
              SHX2_2 = SetVehicleHandlingFloat
              SHX3_2 = SHX4_1
              SHX4_2 = "CHandlingData"
              SHX5_2 = "fWeaponDamageMult"
              SHX6_2 = SHX0_1.weaponsDamageMultiplier
              SHX7_2 = SHX0_1.damageFactorBody
              SHX6_2 = SHX6_2 / SHX7_2
              SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
            end
            SHX2_2 = GetVehicleHandlingFloat
            SHX3_2 = SHX4_1
            SHX4_2 = "CHandlingData"
            SHX5_2 = "fCollisionDamageMult"
            SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
            SHX7_1 = SHX2_2
            SHX2_2 = SHX7_1
            SHX3_2 = SHX0_1.collisionDamageExponent
            SHX2_2 = SHX2_2 ^ SHX3_2
            SHX3_2 = SetVehicleHandlingFloat
            SHX4_2 = SHX4_1
            SHX5_2 = "CHandlingData"
            SHX6_2 = "fCollisionDamageMult"
            SHX7_2 = SHX2_2
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
            SHX3_2 = GetVehicleHandlingFloat
            SHX4_2 = SHX4_1
            SHX5_2 = "CHandlingData"
            SHX6_2 = "fEngineDamageMult"
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
            SHX9_1 = SHX3_2
            SHX3_2 = SHX9_1
            SHX4_2 = SHX0_1.engineDamageExponent
            SHX3_2 = SHX3_2 ^ SHX4_2
            SHX4_2 = SetVehicleHandlingFloat
            SHX5_2 = SHX4_1
            SHX6_2 = "CHandlingData"
            SHX7_2 = "fEngineDamageMult"
            SHX8_2 = SHX3_2
            SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
            SHX4_2 = SHX19_1
            SHX5_2 = SHX0_1.cascadingFailureThreshold
            if SHX4_2 < SHX5_2 then
              SHX4_2 = SHX0_1.cascadingFailureThreshold
              SHX20_1 = SHX4_2
            end
            SHX4_2 = true
            SHX3_1 = SHX4_2
          end
        end
        SHX1_2 = SHX15_1
        SHX2_2 = SHX14_1
        if SHX1_2 ~= SHX2_2 then
          SHX1_2 = SetVehicleEngineHealth
          SHX2_2 = SHX4_1
          SHX3_2 = SHX15_1
          SHX1_2(SHX2_2, SHX3_2)
        end
        SHX1_2 = SHX20_1
        SHX2_2 = SHX19_1
        if SHX1_2 ~= SHX2_2 then
          SHX1_2 = SetVehicleBodyHealth
          SHX2_2 = SHX4_1
          SHX3_2 = SHX20_1
          SHX1_2(SHX2_2, SHX3_2)
        end
        SHX1_2 = SHX25_1
        SHX2_2 = SHX24_1
        if SHX1_2 ~= SHX2_2 then
          SHX1_2 = SetVehiclePetrolTankHealth
          SHX2_2 = SHX4_1
          SHX3_2 = SHX25_1
          SHX1_2(SHX2_2, SHX3_2)
        end
        SHX1_2 = SHX15_1
        SHX13_1 = SHX1_2
        SHX1_2 = SHX20_1
        SHX18_1 = SHX1_2
        SHX1_2 = SHX25_1
        SHX23_1 = SHX1_2
        SHX1_2 = SHX4_1
        SHX5_1 = SHX1_2
        SHX1_2 = SHX0_1.randomTireBurstInterval
        if 0 ~= SHX1_2 then
          SHX1_2 = GetEntitySpeed
          SHX2_2 = SHX4_1
          SHX1_2 = SHX1_2(SHX2_2)
          if SHX1_2 > 10 then
            SHX1_2 = SHX32_1
            SHX1_2()
          end
        end
    end
    else
      SHX1_2 = SHX3_1
      if true == SHX1_2 then
        SHX1_2 = GetVehiclePedIsIn
        SHX2_2 = SHX0_2
        SHX3_2 = true
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        SHX5_1 = SHX1_2
        SHX1_2 = SHX5_1
        if 0 ~= SHX1_2 then
          SHX1_2 = SHX0_1.deformationMultiplier
          if -1 ~= SHX1_2 then
            SHX1_2 = SetVehicleHandlingFloat
            SHX2_2 = SHX5_1
            SHX3_2 = "CHandlingData"
            SHX4_2 = "fDeformationDamageMult"
            SHX5_2 = SHX8_1
            SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
          end
          SHX1_2 = SetVehicleHandlingFloat
          SHX2_2 = SHX5_1
          SHX3_2 = "CHandlingData"
          SHX4_2 = "fBrakeForce"
          SHX5_2 = SHX10_1
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
          SHX1_2 = SHX0_1.weaponsDamageMultiplier
          if -1 ~= SHX1_2 then
            SHX1_2 = SetVehicleHandlingFloat
            SHX2_2 = SHX5_1
            SHX3_2 = "CHandlingData"
            SHX4_2 = "fWeaponDamageMult"
            SHX5_2 = SHX0_1.weaponsDamageMultiplier
            SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
          end
          SHX1_2 = SetVehicleHandlingFloat
          SHX2_2 = SHX5_1
          SHX3_2 = "CHandlingData"
          SHX4_2 = "fCollisionDamageMult"
          SHX5_2 = SHX7_1
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
          SHX1_2 = SetVehicleHandlingFloat
          SHX2_2 = SHX5_1
          SHX3_2 = "CHandlingData"
          SHX4_2 = "fEngineDamageMult"
          SHX5_2 = SHX9_1
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
        end
      end
      SHX1_2 = false
      SHX3_1 = SHX1_2
    end
  end
end
SHX33_1(SHX34_1)
function SHX33_1(SHX0_2)
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
  SHX4_2 = false
  SHX5_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
function SHX34_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = GetEntityCoords
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetEntityBoneIndexByName
  SHX3_2 = SHX0_2
  SHX4_2 = "bonnet"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = nil
  if -1 ~= SHX2_2 then
    SHX4_2 = GetWorldPositionOfEntityBone
    SHX5_2 = SHX0_2
    SHX6_2 = SHX2_2
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX5_2 = SHX4_2 - SHX1_2
    SHX5_2 = #SHX5_2
    SHX6_2 = 0.75
    if SHX5_2 > SHX6_2 and SHX5_2 < 12.0 then
      SHX3_2 = SHX4_2
    end
  end
  if not SHX3_2 then
    SHX4_2 = GetOffsetFromEntityInWorldCoords
    SHX5_2 = SHX0_2
    SHX6_2 = 0.0
    SHX7_2 = 2.4
    SHX8_2 = 0.35
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX3_2 = SHX4_2
  end
  SHX4_2 = GetEntityForwardVector
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = vector3
  SHX6_2 = SHX3_2.x
  SHX7_2 = SHX4_2.x
  SHX7_2 = SHX7_2 * 1.35
  SHX6_2 = SHX6_2 + SHX7_2
  SHX7_2 = SHX3_2.y
  SHX8_2 = SHX4_2.y
  SHX8_2 = SHX8_2 * 1.35
  SHX7_2 = SHX7_2 + SHX8_2
  SHX8_2 = SHX3_2.z
  SHX9_2 = SHX4_2.z
  SHX9_2 = SHX9_2 * 1.35
  SHX8_2 = SHX8_2 + SHX9_2
  return SHX5_2(SHX6_2, SHX7_2, SHX8_2)
end
function SHX35_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX4_2 = GetGameTimer
  SHX4_2 = SHX4_2()
  while true do
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX5_2 = SHX5_2 - SHX4_2
    if not (SHX3_2 > SHX5_2) then
      break
    end
    SHX5_2 = DoesEntityExist
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      SHX5_2 = false
      return SHX5_2
    end
    SHX5_2 = GetEntityCoords
    SHX6_2 = SHX0_2
    SHX7_2 = true
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SHX5_2 - SHX1_2
    SHX5_2 = #SHX5_2
    if SHX2_2 >= SHX5_2 then
      SHX5_2 = true
      return SHX5_2
    end
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX5_2 = GetEntityCoords
  SHX6_2 = SHX0_2
  SHX7_2 = true
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SHX5_2 - SHX1_2
  SHX5_2 = #SHX5_2
  SHX5_2 = SHX2_2 >= SHX5_2
  return SHX5_2
end
function SHX36_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = ClearPedTasks
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = SetPedKeepTask
  SHX3_2 = SHX0_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = TaskFollowNavMeshToCoord
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX7_2 = 2.5
  SHX8_2 = 35000
  SHX9_2 = 1.4
  SHX10_2 = false
  SHX11_2 = 0.0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
function SHX37_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = ClearPedTasks
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = SetPedKeepTask
  SHX3_2 = SHX0_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = TaskGoToEntity
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = 22000
  SHX6_2 = 3.0
  SHX7_2 = 1.75
  SHX8_2 = 0
  SHX9_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
function SHX38_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.CreateThread
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = SHX1_2
    SHX0_3 = SHX0_3 / 4
    SHX1_3 = Citizen
    SHX1_3 = SHX1_3.Wait
    SHX2_3 = SHX0_3
    SHX1_3(SHX2_3)
    SHX1_3 = TaskStartScenarioInPlace
    SHX2_3 = SHX0_2.ped
    SHX3_3 = "WORLD_HUMAN_HAMMERING"
    SHX4_3 = 0
    SHX5_3 = true
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX1_3 = Citizen
    SHX1_3 = SHX1_3.Wait
    SHX2_3 = SHX0_3
    SHX1_3(SHX2_3)
    SHX1_3 = TaskStartScenarioInPlace
    SHX2_3 = SHX0_2.ped
    SHX3_3 = "WORLD_HUMAN_WELDING"
    SHX4_3 = 0
    SHX5_3 = true
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX1_3 = Citizen
    SHX1_3 = SHX1_3.Wait
    SHX2_3 = SHX0_3
    SHX1_3(SHX2_3)
    SHX1_3 = TaskStartScenarioInPlace
    SHX2_3 = SHX0_2.ped
    SHX3_3 = "CODE_HUMAN_MEDIC_TIME_OF_DEATH"
    SHX4_3 = 0
    SHX5_3 = true
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
  end
  SHX2_2(SHX3_2)
end
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX1_2 = "getMechanicRepairStationSpeedPercentClient"
  SHX0_2 = SHX0_2[SHX1_2]
  SHX0_2 = SHX0_2()
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "number" == SHX1_2 and SHX0_2 >= 0 and SHX0_2 <= 50 then
    SHX1_2 = SHX0_2 / 100
    SHX2_2 = 1
    SHX1_2 = SHX2_2 - SHX1_2
    return SHX1_2
  end
  SHX1_2 = 1.0
  return SHX1_2
end
function SHX40_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.max
  SHX2_2 = 1000
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = 11000 * SHX0_2
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
  return SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
function SHX41_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.random
  SHX3_2 = 1
  SHX4_2 = 3
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if 1 == SHX2_2 then
    SHX3_2 = math
    SHX3_2 = SHX3_2.max
    SHX4_2 = 4000
    SHX5_2 = math
    SHX5_2 = SHX5_2.floor
    SHX6_2 = 11000 * SHX1_2
    SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX4_2 = SHX38_1
    SHX5_2 = SHX0_2
    SHX6_2 = SHX3_2
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = notify
    SHX5_2 = "~g~Dave the mechanic is looking at your car."
    SHX4_2(SHX5_2)
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = SHX40_1
    SHX6_2 = SHX1_2
    SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = notify
    SHX5_2 = "~g~Dave is working on your car."
    SHX4_2(SHX5_2)
  elseif 2 == SHX2_2 then
    SHX3_2 = math
    SHX3_2 = SHX3_2.max
    SHX4_2 = 4000
    SHX5_2 = math
    SHX5_2 = SHX5_2.floor
    SHX6_2 = 55000 * SHX1_2
    SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX4_2 = SHX38_1
    SHX5_2 = SHX0_2
    SHX6_2 = SHX3_2
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = notify
    SHX5_2 = "~g~Stef the mechanic is looking at your car."
    SHX4_2(SHX5_2)
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = SHX40_1
    SHX6_2 = SHX1_2
    SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = notify
    SHX5_2 = "~g~Stef looks confused."
    SHX4_2(SHX5_2)
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = SHX40_1
    SHX6_2 = SHX1_2
    SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = notify
    SHX5_2 = "~g~Stef starts hitting things with a hammer."
    SHX4_2(SHX5_2)
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = SHX40_1
    SHX6_2 = SHX1_2
    SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = notify
    SHX5_2 = "~g~Stef goes to look for help."
    SHX4_2(SHX5_2)
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = SHX40_1
    SHX6_2 = SHX1_2
    SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = notify
    SHX5_2 = "~g~Stef's Manager comes back and starts working on your car."
    SHX4_2(SHX5_2)
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = SHX40_1
    SHX6_2 = SHX1_2
    SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = notify
    SHX5_2 = "~g~The Manager is also hitting things with a hammer."
    SHX4_2(SHX5_2)
  elseif 3 == SHX2_2 then
    SHX3_2 = math
    SHX3_2 = SHX3_2.max
    SHX4_2 = 4000
    SHX5_2 = math
    SHX5_2 = SHX5_2.floor
    SHX6_2 = 33000 * SHX1_2
    SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX4_2 = SHX38_1
    SHX5_2 = SHX0_2
    SHX6_2 = SHX3_2
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = notify
    SHX5_2 = "~g~Rob the mechanic is looking at your car."
    SHX4_2(SHX5_2)
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = SHX40_1
    SHX6_2 = SHX1_2
    SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = notify
    SHX5_2 = "~g~Rob yells for Dave to come look at it."
    SHX4_2(SHX5_2)
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = SHX40_1
    SHX6_2 = SHX1_2
    SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = notify
    SHX5_2 = "~g~Just look at it."
    SHX4_2(SHX5_2)
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = SHX40_1
    SHX6_2 = SHX1_2
    SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = notify
    SHX5_2 = "~g~Dave is working on your car."
    SHX4_2(SHX5_2)
  end
end
function SHX42_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetVehicleEngineOn
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX5_2 = true
  SHX6_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX34_1
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = GetEntityCoords
  SHX4_2 = SHX0_2.ped
  SHX5_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = SHX36_1
  SHX5_2 = SHX0_2.ped
  SHX6_2 = SHX2_2
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX35_1
  SHX5_2 = SHX0_2.ped
  SHX6_2 = SHX2_2
  SHX7_2 = 1.65
  SHX8_2 = 36000
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  if not SHX4_2 then
    SHX4_2 = SHX37_1
    SHX5_2 = SHX0_2.ped
    SHX6_2 = SHX1_2
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = SHX35_1
    SHX5_2 = SHX0_2.ped
    SHX6_2 = SHX2_2
    SHX7_2 = 2.75
    SHX8_2 = 22000
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
  SHX4_2 = SetPedKeepTask
  SHX5_2 = SHX0_2.ped
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = ClearPedTasks
  SHX5_2 = SHX0_2.ped
  SHX4_2(SHX5_2)
  SHX4_2 = TaskLookAtEntity
  SHX5_2 = SHX0_2.ped
  SHX6_2 = SHX1_2
  SHX7_2 = -1
  SHX8_2 = 2048
  SHX9_2 = 3
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Wait
  SHX5_2 = 2500
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadAnimDict
  SHX5_2 = "missexile3"
  SHX4_2(SHX5_2)
  SHX4_2 = TaskPlayAnim
  SHX5_2 = SHX0_2.ped
  SHX6_2 = "missexile3"
  SHX7_2 = "ex03_dingy_search_case_base_michael"
  SHX8_2 = 1.0
  SHX9_2 = 8.0
  SHX10_2 = -1
  SHX11_2 = 1
  SHX12_2 = 1.0
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX4_2 = RemoveAnimDict
  SHX5_2 = "missexile3"
  SHX4_2(SHX5_2)
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Wait
  SHX5_2 = 1000
  SHX4_2(SHX5_2)
  SHX4_2 = SetVehicleDoorOpen
  SHX5_2 = SHX1_2
  SHX6_2 = 4
  SHX7_2 = false
  SHX8_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SHX41_1
  SHX5_2 = SHX0_2
  SHX6_2 = SHX39_1
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX6_2()
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX4_2 = ClearPedTasksImmediately
  SHX5_2 = SHX0_2.ped
  SHX4_2(SHX5_2)
  SHX4_2 = SetVehicleDoorShut
  SHX5_2 = SHX1_2
  SHX6_2 = 4
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Wait
  SHX5_2 = 1000
  SHX4_2(SHX5_2)
  SHX4_2 = SetVehicleEngineHealth
  SHX5_2 = SHX1_2
  SHX6_2 = 9999
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetVehiclePetrolTankHealth
  SHX5_2 = SHX1_2
  SHX6_2 = 9999
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.setVehicleFixedPreservingFuel
  SHX5_2 = SHX1_2
  SHX4_2(SHX5_2)
  SHX4_2 = SHX36_1
  SHX5_2 = SHX0_2.ped
  SHX6_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX35_1
  SHX5_2 = SHX0_2.ped
  SHX6_2 = SHX3_2
  SHX7_2 = 1.35
  SHX8_2 = 36000
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SetPedKeepTask
  SHX5_2 = SHX0_2.ped
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = ClearPedTasks
  SHX5_2 = SHX0_2.ped
  SHX4_2(SHX5_2)
  SHX4_2 = TaskLookAtEntity
  SHX5_2 = SHX0_2.ped
  SHX6_2 = PlayerPedId
  SHX6_2 = SHX6_2()
  SHX7_2 = -1
  SHX8_2 = 2048
  SHX9_2 = 3
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX0_2.inUse = false
  SHX4_2 = SetVehicleEngineOn
  SHX5_2 = SHX1_2
  SHX6_2 = true
  SHX7_2 = false
  SHX8_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = SHX1_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = TriggerServerEvent
  SHX5_2 = "cadd5c84c8"
  SHX4_2(SHX5_2)
end
function SHX43_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = 1142162924
  SHX1_2(SHX2_2)
  SHX1_2 = CreatePed
  SHX2_2 = 0
  SHX3_2 = 1142162924
  SHX4_2 = SHX0_2.pedPosition
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX0_2.pedPosition
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX0_2.pedPosition
  SHX6_2 = SHX6_2.z
  SHX7_2 = 0.0
  SHX8_2 = false
  SHX9_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX0_2.ped = SHX1_2
  SHX1_2 = SetModelAsNoLongerNeeded
  SHX2_2 = 1142162924
  SHX1_2(SHX2_2)
  SHX1_2 = SetEntityCanBeDamaged
  SHX2_2 = SHX0_2.ped
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityCanBeDamagedByRelationshipGroup
  SHX2_2 = SHX0_2.ped
  SHX3_2 = false
  SHX4_2 = 1862763509
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SetEntityInvincible
  SHX2_2 = SHX0_2.ped
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPedCanRagdoll
  SHX2_2 = SHX0_2.ped
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPedCanRagdollFromPlayerImpact
  SHX2_2 = SHX0_2.ped
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetBlockingOfNonTemporaryEvents
  SHX2_2 = SHX0_2.ped
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityInvincible
  SHX2_2 = SHX0_2.ped
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX44_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = DeleteEntity
  SHX2_2 = SHX0_2.ped
  SHX1_2(SHX2_2)
  SHX0_2.ped = nil
end
function SHX45_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  SHX1_2 = SHX0_2.inUse
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isInsideLsCustoms
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerVehicle
      SHX1_2 = SHX1_2()
      if 0 ~= SHX1_2 then
        SHX1_2 = DrawMarker
        SHX2_2 = 1
        SHX3_2 = SHX0_2.position
        SHX3_2 = SHX3_2.x
        SHX4_2 = SHX0_2.position
        SHX4_2 = SHX4_2.y
        SHX5_2 = SHX0_2.position
        SHX5_2 = SHX5_2.z
        SHX5_2 = SHX5_2 - 2.0
        SHX6_2 = 0.0
        SHX7_2 = 0.0
        SHX8_2 = 0.0
        SHX9_2 = 0.0
        SHX10_2 = 0.0
        SHX11_2 = 0.0
        SHX12_2 = SHX0_2.radius
        SHX13_2 = SHX0_2.radius
        SHX14_2 = 2.0
        SHX15_2 = 62
        SHX16_2 = 255
        SHX17_2 = 143
        SHX18_2 = 140
        SHX19_2 = false
        SHX20_2 = false
        SHX21_2 = 2
        SHX22_2 = false
        SHX23_2 = nil
        SHX24_2 = nil
        SHX25_2 = false
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
        SHX1_2 = DrawMarker
        SHX2_2 = 36
        SHX3_2 = SHX0_2.position
        SHX3_2 = SHX3_2.x
        SHX4_2 = SHX0_2.position
        SHX4_2 = SHX4_2.y
        SHX5_2 = SHX0_2.position
        SHX5_2 = SHX5_2.z
        SHX5_2 = SHX5_2 + 1.0
        SHX6_2 = 0.0
        SHX7_2 = 0.0
        SHX8_2 = 0.0
        SHX9_2 = 0.0
        SHX10_2 = 0.0
        SHX11_2 = 0.0
        SHX12_2 = SHX0_2.radius
        SHX12_2 = SHX12_2 / 2.0
        SHX13_2 = SHX0_2.radius
        SHX13_2 = SHX13_2 / 2.0
        SHX14_2 = SHX0_2.radius
        SHX14_2 = SHX14_2 / 2.0
        SHX15_2 = 62
        SHX16_2 = 255
        SHX17_2 = 143
        SHX18_2 = 140
        SHX19_2 = false
        SHX20_2 = false
        SHX21_2 = 2
        SHX22_2 = false
        SHX23_2 = nil
        SHX24_2 = nil
        SHX25_2 = false
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
      end
      SHX1_2 = SHX0_2.ped
      if SHX1_2 then
        SHX1_2 = GetScriptTaskStatus
        SHX2_2 = SHX0_2.ped
        SHX3_2 = -875674219
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if 7 == SHX1_2 then
          SHX1_2 = TaskTurnPedToFaceEntity
          SHX2_2 = SHX0_2.ped
          SHX3_2 = PlayerPedId
          SHX3_2 = SHX3_2()
          SHX4_2 = -1
          SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        end
      end
    end
  end
end
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = PlayPedAmbientSpeechNative
  SHX2_2 = SHX0_2.ped
  SHX3_2 = "GENERIC_HI_MALE"
  SHX4_2 = "SPEECH_PARAMS_FORCE"
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
function SHX47_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX0_2.inUse = nil
end
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2, SHX2_2 = SHX1_2()
  if 0 ~= SHX1_2 and SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.isInsideLsCustoms
    SHX3_2 = SHX3_2()
    if not SHX3_2 then
      goto SHX_LABEL_14
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX3_2 = SHX0_2.inUse
  if SHX3_2 then
    SHX3_2 = FreezeEntityPosition
    SHX4_2 = SHX1_2
    SHX5_2 = true
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = SetVehicleEngineOn
    SHX4_2 = SHX1_2
    SHX5_2 = false
    SHX6_2 = true
    SHX7_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  else
    SHX3_2 = SHX33_1
    SHX4_2 = "Press ~INPUT_PICKUP~ to have your vehicle repaired."
    SHX3_2(SHX4_2)
    SHX3_2 = IsControlJustPressed
    SHX4_2 = 0
    SHX5_2 = 38
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 then
      SHX3_2 = GetEntitySpeed
      SHX4_2 = SHX1_2
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 > 0.0 then
        SHX3_2 = notify
        SHX4_2 = "~r~You must be stationary to repair your vehicle."
        SHX3_2(SHX4_2)
      else
        SHX0_2.inUse = true
        SHX3_2 = Citizen
        SHX3_2 = SHX3_2.CreateThreadNow
        function SHX4_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3, SHX2_3
          SHX0_3 = SHX42_1
          SHX1_3 = SHX0_2
          SHX2_3 = SHX1_2
          SHX0_3(SHX1_3, SHX2_3)
        end
        SHX3_2(SHX4_2)
      end
    end
  end
end
SHX49_1 = Citizen
SHX49_1 = SHX49_1.CreateThread
function SHX50_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = pairs
  SHX1_2 = SHX2_1.mechanics
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.addBlip
    SHX7_2 = SHX5_2.position
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX5_2.position
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX5_2.position
    SHX9_2 = SHX9_2.z
    SHX10_2 = SHX5_2.blip
    SHX11_2 = 4
    SHX12_2 = SHX5_2.name
    SHX13_2 = 1.0
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createArea
    SHX7_2 = "mechanic_ped_"
    SHX8_2 = SHX4_2
    SHX7_2 = SHX7_2 .. SHX8_2
    SHX8_2 = SHX5_2.position
    SHX9_2 = 25.0
    SHX10_2 = 25.0
    SHX11_2 = SHX43_1
    SHX12_2 = SHX44_1
    SHX13_2 = SHX45_1
    SHX14_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createArea
    SHX7_2 = "mechanic_vehicle_"
    SHX8_2 = SHX4_2
    SHX7_2 = SHX7_2 .. SHX8_2
    SHX8_2 = SHX5_2.position
    SHX9_2 = SHX5_2.radius
    SHX10_2 = 5.0
    SHX11_2 = SHX46_1
    SHX12_2 = SHX47_1
    SHX13_2 = SHX48_1
    SHX14_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
end
SHX49_1(SHX50_1)
