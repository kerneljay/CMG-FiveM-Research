-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_vehicles"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/cfg_garages"
SHX1_1 = SHX1_1(SHX2_1)
SHX2_1 = {}
SHX3_1 = GetHashKey
SHX4_1 = "trash"
SHX3_1 = SHX3_1(SHX4_1)
SHX2_1[SHX3_1] = true
SHX3_1 = pairs
SHX4_1 = SHX1_1.garbageCustomVehicles
if not SHX4_1 then
  SHX4_1 = {}
end
SHX3_1, SHX4_1, SHX5_1, SHX6_1 = SHX3_1(SHX4_1)
for SHX7_1, SHX8_1 in SHX3_1, SHX4_1, SHX5_1, SHX6_1 do
  SHX9_1 = type
  SHX10_1 = SHX8_1
  SHX9_1 = SHX9_1(SHX10_1)
  if "string" == SHX9_1 and "" ~= SHX8_1 then
    SHX9_1 = GetHashKey
    SHX10_1 = SHX8_1
    SHX9_1 = SHX9_1(SHX10_1)
    SHX2_1[SHX9_1] = true
  end
end
SHX3_1 = false
SHX4_1 = false
SHX5_1 = false
SHX6_1 = false
SHX7_1 = false
SHX8_1 = false
SHX9_1 = false
SHX10_1 = false
SHX11_1 = vector3
SHX12_1 = 0.0
SHX13_1 = 0.0
SHX14_1 = 0.0
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX12_1 = 0.0
SHX13_1 = false
SHX14_1 = false
SHX15_1 = {}
SHX16_1 = 0
SHX17_1 = true
function SHX18_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = GetPedInVehicleSeat
  SHX4_2 = SHX0_2
  SHX5_2 = -1
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 ~= SHX1_2 then
    return
  end
  SHX3_2 = SHX16_1
  if SHX3_2 ~= SHX0_2 then
    SHX3_2 = true
    SHX17_1 = SHX3_2
    SHX16_1 = SHX0_2
  end
  SHX3_2 = GetEntitySpeed
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX2_2 > 1.0
  SHX5_2 = SHX2_2 * 0.85
  SHX5_2 = SHX3_2 < SHX5_2
  if SHX5_2 then
    SHX6_2 = true
    SHX17_1 = SHX6_2
  end
  if SHX4_2 then
    SHX6_2 = SHX17_1
    if SHX6_2 then
      SHX6_2 = notify
      SHX7_2 = {}
      SHX7_2.message = "Speed capped due to job"
      SHX7_2.type = "info"
      SHX7_2.title = ""
      SHX7_2.duration = 5000
      SHX7_2.sound = ""
      SHX6_2(SHX7_2)
      SHX6_2 = false
      SHX17_1 = SHX6_2
    end
  end
end
SHX19_1 = {}
SHX20_1 = {}
SHX20_1.colour = 2
SHX20_1.id = 1
SHX21_1 = vector3
SHX22_1 = -471.62231445312
SHX23_1 = -320.36367797852
SHX24_1 = 43.397029876709
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1.pos = SHX21_1
SHX20_1.dist = 46
SHX20_1.nonRP = false
SHX20_1.setBit = false
SHX20_1.maxHeight = 105.0
SHX21_1 = {}
SHX21_1.colour = 2
SHX21_1.id = 1
SHX22_1 = vector3
SHX23_1 = 144.26225280762
SHX24_1 = -1074.751953125
SHX25_1 = 29.192342758179
SHX22_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1)
SHX21_1.pos = SHX22_1
SHX21_1.dist = 43
SHX21_1.nonRP = false
SHX21_1.setBit = false
SHX21_1.maxHeight = 87.0
SHX22_1 = {}
SHX22_1.colour = 2
SHX22_1.id = 1
SHX23_1 = vector3
SHX24_1 = -2181.7966308594
SHX25_1 = 5189.8286132813
SHX26_1 = 17.64377784729
SHX23_1 = SHX23_1(SHX24_1, SHX25_1, SHX26_1)
SHX22_1.pos = SHX23_1
SHX22_1.dist = 150
SHX22_1.nonRP = true
SHX22_1.setBit = false
SHX22_1.maxHeight = 77.0
SHX23_1 = {}
SHX23_1.colour = 2
SHX23_1.id = 1
SHX24_1 = vector3
SHX25_1 = -540.54748535156
SHX26_1 = -216.42681884766
SHX27_1 = 37.64966583252
SHX24_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1)
SHX23_1.pos = SHX24_1
SHX23_1.dist = 50
SHX23_1.nonRP = false
SHX23_1.setBit = false
SHX23_1.maxHeight = 102.0
SHX24_1 = {}
SHX24_1.colour = 2
SHX24_1.id = 1
SHX25_1 = vector3
SHX26_1 = -3704.244140625
SHX27_1 = -3516.8295898438
SHX28_1 = 10.57702255249
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX24_1.pos = SHX25_1
SHX24_1.dist = 100
SHX24_1.nonRP = true
SHX24_1.setBit = false
SHX24_1.maxHeight = 150.0
SHX25_1 = {}
SHX25_1.colour = 2
SHX25_1.id = 1
SHX26_1 = vector3
SHX27_1 = 967.20806884766
SHX28_1 = 36.561210632324
SHX29_1 = 80.994140625
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1)
SHX25_1.pos = SHX26_1
SHX25_1.dist = 100
SHX25_1.nonRP = false
SHX25_1.setBit = false
SHX25_1.interior = true
SHX25_1.maxHeight = 98.1
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isInsideDiamondCasino
  return SHX0_2()
end
SHX25_1.insideCb = SHX26_1
SHX26_1 = {}
SHX26_1.colour = 2
SHX26_1.id = 1
SHX27_1 = vector3
SHX28_1 = -335.19680786133
SHX29_1 = -699.10406494141
SHX30_1 = 33.036075592041
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX26_1.pos = SHX27_1
SHX26_1.dist = 30
SHX26_1.nonRP = false
SHX26_1.setBit = false
SHX26_1.maxHeight = 86.0
SHX27_1 = {}
SHX27_1.colour = 2
SHX27_1.id = 1
SHX28_1 = vector3
SHX29_1 = -1671.5692138672
SHX30_1 = -912.63940429688
SHX31_1 = 8.2297477722168
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX27_1.pos = SHX28_1
SHX27_1.dist = 50
SHX27_1.nonRP = false
SHX27_1.setBit = false
SHX27_1.maxHeight = 60.0
SHX28_1 = {}
SHX28_1.colour = 2
SHX28_1.id = 1
SHX29_1 = vector3
SHX30_1 = -1437.4920654297
SHX31_1 = -2961.6879882812
SHX32_1 = 14.313854217529
SHX29_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1)
SHX28_1.pos = SHX29_1
SHX28_1.dist = 700
SHX28_1.nonRP = true
SHX28_1.setBit = false
SHX28_1.maxHeight = 210.0
SHX28_1.isPurge = true
SHX29_1 = {}
SHX29_1.colour = 2
SHX29_1.id = 1
SHX30_1 = vector3
SHX31_1 = -732.95123291016
SHX32_1 = 5812.35546875
SHX33_1 = 17.42693901062
SHX30_1 = SHX30_1(SHX31_1, SHX32_1, SHX33_1)
SHX29_1.pos = SHX30_1
SHX29_1.dist = 35
SHX29_1.nonRP = false
SHX29_1.setBit = false
SHX29_1.maxHeight = 210.0
SHX30_1 = {}
SHX30_1.colour = 2
SHX30_1.id = 1
SHX31_1 = vector3
SHX32_1 = -2338.0720214844
SHX33_1 = 274.29595947266
SHX34_1 = 169.46034240723
SHX31_1 = SHX31_1(SHX32_1, SHX33_1, SHX34_1)
SHX30_1.pos = SHX31_1
SHX30_1.dist = 30
SHX30_1.nonRP = false
SHX30_1.setBit = false
SHX30_1.maxHeight = 210.0
SHX31_1 = {}
SHX31_1.colour = 2
SHX31_1.id = 1
SHX32_1 = vector3
SHX33_1 = 1462.8721923828
SHX34_1 = 3561.5625
SHX35_1 = 36.537769317627
SHX32_1 = SHX32_1(SHX33_1, SHX34_1, SHX35_1)
SHX31_1.pos = SHX32_1
SHX31_1.dist = 50
SHX31_1.nonRP = false
SHX31_1.setBit = false
SHX31_1.maxHeight = 76.5
SHX19_1[1] = SHX20_1
SHX19_1[2] = SHX21_1
SHX19_1[3] = SHX22_1
SHX19_1[4] = SHX23_1
SHX19_1[5] = SHX24_1
SHX19_1[6] = SHX25_1
SHX19_1[7] = SHX26_1
SHX19_1[8] = SHX27_1
SHX19_1[9] = SHX28_1
SHX19_1[10] = SHX29_1
SHX19_1[11] = SHX30_1
SHX19_1[12] = SHX31_1
SHX20_1 = {}
SHX21_1 = {}
SHX22_1 = vector3
SHX23_1 = -471.62231445312
SHX24_1 = -320.36367797852
SHX25_1 = 43.397029876709
SHX22_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1)
SHX23_1 = 46.0
SHX24_1 = 2
SHX25_1 = 180
SHX21_1[1] = SHX22_1
SHX21_1[2] = SHX23_1
SHX21_1[3] = SHX24_1
SHX21_1[4] = SHX25_1
SHX22_1 = {}
SHX23_1 = vector3
SHX24_1 = 144.26225280762
SHX25_1 = -1074.751953125
SHX26_1 = 29.192342758179
SHX23_1 = SHX23_1(SHX24_1, SHX25_1, SHX26_1)
SHX24_1 = 43.0
SHX25_1 = 2
SHX26_1 = 180
SHX22_1[1] = SHX23_1
SHX22_1[2] = SHX24_1
SHX22_1[3] = SHX25_1
SHX22_1[4] = SHX26_1
SHX23_1 = {}
SHX24_1 = vector3
SHX25_1 = -2181.7966308594
SHX26_1 = 5189.8286132813
SHX27_1 = 17.64377784729
SHX24_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1)
SHX25_1 = 150.0
SHX26_1 = 2
SHX27_1 = 180
SHX23_1.allowIllegalTransfer = true
SHX23_1[1] = SHX24_1
SHX23_1[2] = SHX25_1
SHX23_1[3] = SHX26_1
SHX23_1[4] = SHX27_1
SHX24_1 = {}
SHX25_1 = vector3
SHX26_1 = -540.54748535156
SHX27_1 = -216.42681884766
SHX28_1 = 37.64966583252
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX26_1 = 50.0
SHX27_1 = 2
SHX28_1 = 180
SHX24_1[1] = SHX25_1
SHX24_1[2] = SHX26_1
SHX24_1[3] = SHX27_1
SHX24_1[4] = SHX28_1
SHX25_1 = {}
SHX26_1 = vector3
SHX27_1 = -335.19680786133
SHX28_1 = -699.10406494141
SHX29_1 = 33.036075592041
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1)
SHX27_1 = 30.0
SHX28_1 = 2
SHX29_1 = 180
SHX25_1[1] = SHX26_1
SHX25_1[2] = SHX27_1
SHX25_1[3] = SHX28_1
SHX25_1[4] = SHX29_1
SHX26_1 = {}
SHX27_1 = vector3
SHX28_1 = -1671.5692138672
SHX29_1 = -912.63940429688
SHX30_1 = 8.2297477722168
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX28_1 = 50.0
SHX29_1 = 2
SHX30_1 = 180
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX27_1 = {}
SHX28_1 = vector3
SHX29_1 = -1437.4920654297
SHX30_1 = -2961.6879882812
SHX31_1 = 14.31385421759
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX29_1 = 700.0
SHX30_1 = 2
SHX31_1 = 255
SHX32_1 = true
SHX27_1[1] = SHX28_1
SHX27_1[2] = SHX29_1
SHX27_1[3] = SHX30_1
SHX27_1[4] = SHX31_1
SHX27_1[5] = SHX32_1
SHX28_1 = {}
SHX29_1 = vector3
SHX30_1 = -732.95123291016
SHX31_1 = 5812.35546875
SHX32_1 = 17.42693901062
SHX29_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1)
SHX30_1 = 35.0
SHX31_1 = 2
SHX32_1 = 180
SHX28_1[1] = SHX29_1
SHX28_1[2] = SHX30_1
SHX28_1[3] = SHX31_1
SHX28_1[4] = SHX32_1
SHX29_1 = {}
SHX30_1 = vector3
SHX31_1 = -2338.0720214844
SHX32_1 = 274.29595947266
SHX33_1 = 169.46034240723
SHX30_1 = SHX30_1(SHX31_1, SHX32_1, SHX33_1)
SHX31_1 = 30.0
SHX32_1 = 2
SHX33_1 = 180
SHX29_1[1] = SHX30_1
SHX29_1[2] = SHX31_1
SHX29_1[3] = SHX32_1
SHX29_1[4] = SHX33_1
SHX30_1 = {}
SHX31_1 = vector3
SHX32_1 = 1462.8721923828
SHX33_1 = 3561.5625
SHX34_1 = 36.537769317627
SHX31_1 = SHX31_1(SHX32_1, SHX33_1, SHX34_1)
SHX32_1 = 50.0
SHX33_1 = 2
SHX34_1 = 180
SHX30_1[1] = SHX31_1
SHX30_1[2] = SHX32_1
SHX30_1[3] = SHX33_1
SHX30_1[4] = SHX34_1
SHX20_1[1] = SHX21_1
SHX20_1[2] = SHX22_1
SHX20_1[3] = SHX23_1
SHX20_1[4] = SHX24_1
SHX20_1[5] = SHX25_1
SHX20_1[6] = SHX26_1
SHX20_1[7] = SHX27_1
SHX20_1[8] = SHX28_1
SHX20_1[9] = SHX29_1
SHX20_1[10] = SHX30_1
SHX21_1 = Citizen
SHX21_1 = SHX21_1.CreateThread
SHX22_1 = Citizen
SHX22_1 = SHX22_1.Wait
SHX23_1 = SetEntityInvincible
SHX24_1 = SetPlayerInvincible
SHX25_1 = ClearPedBloodDamage
SHX26_1 = ResetPedVisibleDamage
SHX27_1 = ClearPedLastWeaponDamage
SHX28_1 = SetEntityProofs
SHX29_1 = SetEntityCanBeDamaged
SHX30_1 = SetPedCanRagdoll
SHX31_1 = SetPedCanRagdollFromPlayerImpact
SHX32_1 = SetEntityMaxSpeed
SHX33_1 = GetEntityModel
SHX34_1 = SetEntityCollision
SHX35_1 = DisableControlAction
SHX36_1 = GetVehiclePedIsIn
SHX37_1 = CMG
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX20_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2[1]
    SHX7_2 = SHX7_2 - SHX0_2
    SHX7_2 = #SHX7_2
    SHX8_2 = SHX6_2[2]
    if SHX7_2 < SHX8_2 then
      SHX7_2 = true
      return SHX7_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX37_1.isPositionInGreenzone = SHX38_1
SHX37_1 = CMG
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX10_1
  return SHX0_2
end
SHX37_1.areGreenzonesDisabled = SHX38_1
SHX37_1 = CMG
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX10_1 = SHX0_2
  if SHX0_2 then
    SHX1_2 = SetLocalPlayerAsGhost
    SHX2_2 = false
    SHX1_2(SHX2_2)
  end
end
SHX37_1.setGreenzonesDisabled = SHX38_1
SHX37_1 = {}
SHX38_1 = CMG
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = pairs
  SHX1_2 = SHX37_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = RemoveBlip
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX37_1 = SHX0_2
  SHX0_2 = pairs
  SHX1_2 = SHX20_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2[5]
    if not SHX6_2 then
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.isPurge
      SHX6_2 = SHX6_2()
      if not SHX6_2 then
        goto SHX_LABEL_34
      end
    end
    SHX6_2 = SHX5_2[5]
    if SHX6_2 then
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.isPurge
      SHX6_2 = SHX6_2()
      -- [FIX IF ERROR] Move ::SHX_LABEL_34:: outside nested blocks until all 'goto SHX_LABEL_34' can see it
      ::SHX_LABEL_34::
      if SHX6_2 then
        SHX6_2 = AddBlipForRadius
        SHX7_2 = SHX5_2[1]
        SHX7_2 = SHX7_2.x
        SHX8_2 = SHX5_2[1]
        SHX8_2 = SHX8_2.y
        SHX9_2 = SHX5_2[1]
        SHX9_2 = SHX9_2.z
        SHX10_2 = SHX5_2[2]
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
        SHX7_2 = SetBlipColour
        SHX8_2 = SHX6_2
        SHX9_2 = SHX5_2[3]
        SHX7_2(SHX8_2, SHX9_2)
        SHX7_2 = SetBlipAlpha
        SHX8_2 = SHX6_2
        SHX9_2 = SHX5_2[4]
        SHX7_2(SHX8_2, SHX9_2)
        SHX7_2 = table
        SHX7_2 = SHX7_2.insert
        SHX8_2 = SHX37_1
        SHX9_2 = SHX6_2
        SHX7_2(SHX8_2, SHX9_2)
      end
    end
  end
end
SHX38_1.initGreenzones = SHX39_1
SHX38_1 = SHX21_1
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.initGreenzones
  SHX0_2()
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isPurge
    SHX0_2 = SHX0_2()
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerCoords
    SHX2_2 = SHX2_2()
    SHX3_2 = pairs
    SHX4_2 = SHX19_1
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = SHX8_2.isPurge
      if SHX9_2 or SHX0_2 then
        SHX9_2 = SHX8_2.isPurge
        if not (SHX9_2 and SHX0_2) then
          goto SHX_LABEL_169
        end
      end
      SHX9_2 = SHX2_2.xy
      SHX10_2 = SHX8_2.pos
      SHX10_2 = SHX10_2.xy
      SHX9_2 = SHX9_2 - SHX10_2
      SHX9_2 = #SHX9_2
      while true do
        SHX10_2 = SHX8_2.dist
        if not (SHX9_2 < SHX10_2) then
          break
        end
        SHX10_2 = SHX2_2.z
        SHX11_2 = SHX8_2.maxHeight
        if not (SHX10_2 < SHX11_2) then
          break
        end
        SHX10_2 = SHX8_2.destroy
        if SHX10_2 then
          break
        end
        SHX10_2 = SHX8_2.insideCb
        if SHX10_2 then
          SHX10_2 = SHX8_2.insideCb
          SHX10_2 = SHX10_2()
          if not SHX10_2 then
            break
          end
        end
        SHX10_2 = GetInteriorFromEntity
        SHX11_2 = SHX1_2
        SHX10_2 = SHX10_2(SHX11_2)
        if 185858 == SHX10_2 then
          break
        end
        SHX10_2 = CMG
        SHX10_2 = SHX10_2.getPlayerCoords
        SHX10_2 = SHX10_2()
        SHX2_2 = SHX10_2
        SHX10_2 = SHX2_2.xy
        SHX11_2 = SHX8_2.pos
        SHX11_2 = SHX11_2.xy
        SHX10_2 = SHX10_2 - SHX11_2
        SHX9_2 = #SHX10_2
        SHX10_2 = SHX8_2.nonRP
        if SHX10_2 then
          SHX10_2 = true
          SHX5_1 = SHX10_2
        else
          SHX10_2 = SHX8_2.setBit
          if not SHX10_2 then
            SHX10_2 = true
            SHX4_1 = SHX10_2
            SHX10_2 = true
            SHX6_1 = SHX10_2
            SHX10_2 = false
            SHX7_1 = SHX10_2
            SHX10_2 = SHX8_2.pos
            SHX11_1 = SHX10_2
            SHX10_2 = SHX8_2.dist
            SHX12_1 = SHX10_2
            SHX8_2.setBit = true
          end
          SHX10_2 = SHX8_2.interior
          if SHX10_2 then
            SHX10_2 = true
            SHX13_1 = SHX10_2
          end
        end
        SHX10_2 = SHX22_1
        SHX11_2 = 100
        SHX10_2(SHX11_2)
      end
      SHX10_2 = SHX8_2.setBit
      if SHX10_2 then
        SHX10_2 = false
        SHX6_1 = SHX10_2
        SHX10_2 = true
        SHX7_1 = SHX10_2
        SHX10_2 = vector3
        SHX11_2 = 0.0
        SHX12_2 = 0.0
        SHX13_2 = 0.0
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
        SHX11_1 = SHX10_2
        SHX10_2 = 0.0
        SHX12_1 = SHX10_2
        SHX8_2.setBit = false
      end
      SHX10_2 = false
      SHX5_1 = SHX10_2
      SHX10_2 = false
      SHX4_1 = SHX10_2
      SHX10_2 = false
      SHX6_1 = SHX10_2
      SHX10_2 = false
      SHX13_1 = SHX10_2
      SHX10_2 = SHX23_1
      SHX11_2 = SHX1_2
      SHX12_2 = false
      SHX10_2(SHX11_2, SHX12_2)
      SHX10_2 = SHX24_1
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.getPlayerId
      SHX11_2 = SHX11_2()
      SHX12_2 = false
      SHX10_2(SHX11_2, SHX12_2)
      SHX10_2 = SHX25_1
      SHX11_2 = SHX1_2
      SHX10_2(SHX11_2)
      SHX10_2 = SHX26_1
      SHX11_2 = SHX1_2
      SHX10_2(SHX11_2)
      SHX10_2 = SHX27_1
      SHX11_2 = SHX1_2
      SHX10_2(SHX11_2)
      SHX10_2 = SHX28_1
      SHX11_2 = SHX1_2
      SHX12_2 = false
      SHX13_2 = false
      SHX14_2 = false
      SHX15_2 = false
      SHX16_2 = false
      SHX17_2 = false
      SHX18_2 = false
      SHX19_2 = false
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX10_2 = SHX29_1
      SHX11_2 = SHX1_2
      SHX12_2 = true
      SHX10_2(SHX11_2, SHX12_2)
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.isLbRacingActive
      SHX10_2 = SHX10_2()
      if not SHX10_2 then
        SHX10_2 = SHX10_1
        if not SHX10_2 then
          SHX10_2 = SetLocalPlayerAsGhost
          SHX11_2 = false
          SHX10_2(SHX11_2)
        end
        SHX10_2 = SetNetworkVehicleAsGhost
        SHX11_2 = CMG
        SHX11_2 = SHX11_2.getPlayerVehicle
        SHX11_2 = SHX11_2()
        SHX12_2 = false
        SHX10_2(SHX11_2, SHX12_2)
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_169:: outside nested blocks until all 'goto SHX_LABEL_169' can see it
      ::SHX_LABEL_169::
    end
    SHX3_2 = SHX22_1
    SHX4_2 = 250
    SHX3_2(SHX4_2)
  end
end
SHX38_1(SHX39_1)
SHX38_1 = AddEventHandler
SHX39_1 = "CMG:onClientSpawn"
function SHX40_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = TriggerEvent
      SHX1_3 = "e4697f6833"
      SHX0_3(SHX1_3)
      SHX0_3 = true
      SHX14_1 = SHX0_3
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = TriggerEvent
      SHX1_3 = "71b989b7cd"
      SHX0_3(SHX1_3)
      SHX0_3 = false
      SHX14_1 = SHX0_3
    end
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getCityPositionAndRadius
    SHX5_2, SHX6_2 = SHX5_2()
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.createArea
    SHX8_2 = "cityzone"
    SHX9_2 = SHX5_2
    SHX10_2 = SHX6_2
    SHX11_2 = 100
    SHX12_2 = SHX2_2
    SHX13_2 = SHX3_2
    SHX14_2 = SHX4_2
    SHX15_2 = {}
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
end
SHX38_1(SHX39_1, SHX40_1)
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = nil
  SHX2_2 = 1
  SHX3_2 = 25
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = GetNthClosestVehicleNode
    SHX7_2 = SHX0_2.x
    SHX8_2 = SHX0_2.y
    SHX9_2 = SHX0_2.z
    SHX10_2 = SHX5_2
    SHX6_2, SHX7_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    if SHX6_2 then
      SHX8_2 = SHX11_1
      SHX8_2 = SHX8_2 - SHX7_2
      SHX8_2 = #SHX8_2
      SHX9_2 = SHX12_1
      if SHX8_2 > SHX9_2 then
        SHX1_2 = SHX7_2
        break
      end
    end
  end
  if SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerVehicle
    SHX2_2, SHX3_2 = SHX2_2()
    if 0 ~= SHX2_2 then
      if SHX3_2 then
        SHX4_2 = GetScriptTaskStatus
        SHX5_2 = PlayerPedId
        SHX5_2 = SHX5_2()
        SHX6_2 = -1817882002
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
        if 7 == SHX4_2 then
          SHX4_2 = TaskVehicleDriveToCoord
          SHX5_2 = PlayerPedId
          SHX5_2 = SHX5_2()
          SHX6_2 = SHX2_2
          SHX7_2 = SHX1_2.x
          SHX8_2 = SHX1_2.y
          SHX9_2 = SHX1_2.z
          SHX10_2 = 30.0
          SHX11_2 = 1.0
          SHX12_2 = SHX33_1
          SHX13_2 = SHX2_2
          SHX12_2 = SHX12_2(SHX13_2)
          SHX13_2 = 16777216
          SHX14_2 = 1.0
          SHX15_2 = 1
          SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        end
      end
    else
      SHX4_2 = GetScriptTaskStatus
      SHX5_2 = PlayerPedId
      SHX5_2 = SHX5_2()
      SHX6_2 = -1672495956
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if 7 == SHX4_2 then
        SHX4_2 = TaskFollowNavMeshToCoordAdvanced
        SHX5_2 = PlayerPedId
        SHX5_2 = SHX5_2()
        SHX6_2 = SHX1_2.x
        SHX7_2 = SHX1_2.y
        SHX8_2 = SHX1_2.z
        SHX9_2 = 8.0
        SHX10_2 = -1
        SHX11_2 = 2.5
        SHX12_2 = 0
        SHX13_2 = 0
        SHX14_2 = 0.0
        SHX15_2 = 100.0
        SHX16_2 = 4000.0
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      end
    end
  end
end
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1.maxSpeeds
  SHX0_2 = SHX0_2["150"]
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getTruckingMaxSpeedBonusMph
  SHX1_2 = SHX1_2()
  SHX1_2 = SHX1_2 * 0.44704
  SHX0_2 = SHX0_2 + SHX1_2
  return SHX0_2
end
SHX40_1 = {}
SHX41_1 = ipairs
SHX42_1 = {}
SHX43_1 = "hauler"
SHX44_1 = "hauler2"
SHX45_1 = "packer"
SHX46_1 = "phantom3"
SHX47_1 = "phantom4"
SHX42_1[1] = SHX43_1
SHX42_1[2] = SHX44_1
SHX42_1[3] = SHX45_1
SHX42_1[4] = SHX46_1
SHX42_1[5] = SHX47_1
SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX41_1(SHX42_1)
for SHX45_1, SHX46_1 in SHX41_1, SHX42_1, SHX43_1, SHX44_1 do
  SHX47_1 = GetHashKey
  SHX48_1 = SHX46_1
  SHX47_1 = SHX47_1(SHX48_1)
  SHX40_1[SHX47_1] = true
end
SHX41_1 = ipairs
SHX42_1 = SHX1_1.truckingCustomVehicles
SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX41_1(SHX42_1)
for SHX45_1, SHX46_1 in SHX41_1, SHX42_1, SHX43_1, SHX44_1 do
  SHX47_1 = GetHashKey
  SHX48_1 = SHX46_1
  SHX47_1 = SHX47_1(SHX48_1)
  SHX40_1[SHX47_1] = true
end
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX36_1
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if 0 == SHX1_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = SHX33_1
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX40_1
  SHX2_2 = SHX3_2[SHX2_2]
  SHX2_2 = true == SHX2_2
  return SHX2_2
end
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX36_1
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = 0 ~= SHX0_2
  return SHX1_2
end
function SHX43_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_1.maxSpeeds
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.hasClientPermission
  SHX3_2 = "aa.onduty.permission"
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = math
    SHX2_2 = SHX2_2.min
    SHX3_2 = SHX1_2
    SHX4_2 = SHX0_1.maxSpeeds
    SHX4_2 = SHX4_2["125"]
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX1_2 = SHX2_2
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.hasClientGroup
  SHX3_2 = "Trucking"
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = SHX41_1
    SHX2_2 = SHX2_2()
    if SHX2_2 then
      SHX2_2 = math
      SHX2_2 = SHX2_2.min
      SHX3_2 = SHX1_2
      SHX4_2 = SHX39_1
      SHX4_2 = SHX4_2()
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX1_2 = SHX2_2
    end
  end
  return SHX1_2
end
function SHX44_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX36_1
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.isLbRacingActive
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      SHX2_2 = SetVehicleAutoRepairDisabled
      SHX3_2 = SHX1_2
      SHX4_2 = true
      SHX2_2(SHX3_2, SHX4_2)
    end
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.areGreenzonesDisabled
  SHX2_2 = SHX2_2()
  if not SHX2_2 then
    SHX2_2 = SHX4_1
    if not SHX2_2 then
      SHX2_2 = SHX5_1
    end
    SHX3_1 = SHX2_2
    SHX2_2 = GetActivePlayers
    SHX2_2 = SHX2_2()
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerId
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX4_1
    if not SHX4_2 then
      SHX4_2 = SHX5_1
      if not SHX4_2 then
        goto SHX_LABEL_166
      end
    end
    SHX4_2 = SHX32_1
    SHX5_2 = SHX1_2
    SHX6_2 = SHX43_1
    SHX7_2 = "50"
    SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX6_2(SHX7_2)
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX4_2 = SetLocalPlayerAsGhost
    SHX5_2 = true
    SHX4_2(SHX5_2)
    SHX4_2 = SetNetworkVehicleAsGhost
    SHX5_2 = SHX1_2
    SHX6_2 = true
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerVehicle
    SHX4_2 = SHX4_2()
    SHX5_2 = SetEntityAlpha
    SHX6_2 = SHX4_2
    SHX7_2 = 255
    SHX8_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.isPreviewingVehicle
    SHX5_2 = SHX5_2()
    if not SHX5_2 then
      SHX5_2 = SetEntityAlpha
      SHX6_2 = SHX0_2
      SHX7_2 = 255
      SHX8_2 = false
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    end
    SHX5_2 = SHX15_1
    SHX5_2[SHX4_2] = true
    SHX5_2 = SHX15_1
    SHX5_2[SHX0_2] = true
    SHX5_2 = pairs
    SHX6_2 = SHX2_2
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = GetPlayerPed
      SHX12_2 = SHX10_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = SHX36_1
      SHX13_2 = SHX11_2
      SHX14_2 = true
      SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
      SHX13_2 = CMG
      SHX13_2 = SHX13_2.isPreviewingVehicle
      SHX13_2 = SHX13_2()
      if not SHX13_2 then
        SHX13_2 = SetEntityAlpha
        SHX14_2 = SHX11_2
        SHX15_2 = 255
        SHX16_2 = false
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX13_2 = SetEntityAlpha
        SHX14_2 = SHX12_2
        SHX15_2 = 255
        SHX16_2 = false
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
      end
      SHX13_2 = SHX15_1
      SHX13_2[SHX11_2] = true
      SHX13_2 = SHX15_1
      SHX13_2[SHX12_2] = true
    end
    SHX5_2 = SHX23_1
    SHX6_2 = SHX0_2
    SHX7_2 = true
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SHX24_1
    SHX6_2 = SHX3_2
    SHX7_2 = true
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SHX25_1
    SHX6_2 = SHX0_2
    SHX5_2(SHX6_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.isUsingDelGun
    SHX5_2 = SHX5_2()
    if SHX5_2 then
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.setWeapon
      SHX6_2 = SHX0_2
      SHX7_2 = 1953687840
      SHX8_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    else
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.setWeapon
      SHX6_2 = SHX0_2
      SHX7_2 = -1569615261
      SHX8_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    end
    SHX5_2 = SHX26_1
    SHX6_2 = SHX0_2
    SHX5_2(SHX6_2)
    SHX5_2 = SHX27_1
    SHX6_2 = SHX0_2
    SHX5_2(SHX6_2)
    SHX5_2 = SHX28_1
    SHX6_2 = SHX0_2
    SHX7_2 = true
    SHX8_2 = true
    SHX9_2 = true
    SHX10_2 = true
    SHX11_2 = true
    SHX12_2 = true
    SHX13_2 = true
    SHX14_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX5_2 = SHX29_1
    SHX6_2 = SHX0_2
    SHX7_2 = false
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SHX30_1
    SHX6_2 = SHX0_2
    SHX7_2 = false
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SHX31_1
    SHX6_2 = SHX0_2
    SHX7_2 = false
    SHX5_2(SHX6_2, SHX7_2)
    goto SHX_LABEL_377
    -- [FIX IF ERROR] Move ::SHX_LABEL_166:: outside nested blocks until all 'goto SHX_LABEL_166' can see it
    ::SHX_LABEL_166::
    SHX4_2 = SHX30_1
    SHX5_2 = SHX0_2
    SHX6_2 = true
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = SHX31_1
    SHX5_2 = SHX0_2
    SHX6_2 = true
    SHX4_2(SHX5_2, SHX6_2)
    if 0 ~= SHX1_2 then
      SHX4_2 = SHX34_1
      SHX5_2 = SHX1_2
      SHX6_2 = true
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SHX33_1
      SHX5_2 = SHX1_2
      SHX4_2 = SHX4_2(SHX5_2)
      SHX5_2 = nil
      SHX6_2 = false
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.getPlayerBucket
      SHX7_2 = SHX7_2()
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.getEventBucketId
      SHX8_2 = SHX8_2()
      if SHX7_2 == SHX8_2 then
        SHX7_2 = false
        SHX14_1 = SHX7_2
      end
      SHX7_2 = SHX14_1
      if not SHX7_2 then
        SHX7_2 = CMG
        SHX7_2 = SHX7_2.hasCarDevDisabledSpeedCaps
        SHX7_2 = SHX7_2()
        if not SHX7_2 then
          SHX8_2 = SHX0_1.haGroupMaxSpeedVehicles
          SHX8_2 = SHX8_2[SHX4_2]
          if SHX8_2 then
            SHX8_2 = CMG
            SHX8_2 = SHX8_2.hasClientGroup
            SHX9_2 = "ha"
            SHX8_2 = SHX8_2(SHX9_2)
            if SHX8_2 then
              SHX8_2 = SHX43_1
              SHX9_2 = "300"
              SHX8_2 = SHX8_2(SHX9_2)
              SHX9_2 = SHX32_1
              SHX10_2 = SHX1_2
              SHX11_2 = SHX8_2
              SHX9_2(SHX10_2, SHX11_2)
              SHX5_2 = SHX8_2
          end
        end
        else
          SHX8_2 = SHX0_1.vehicleMaxSpeeds
          SHX8_2 = SHX8_2[SHX4_2]
          if nil ~= SHX8_2 and not SHX7_2 then
            SHX8_2 = SHX0_1.maxSpeeds
            SHX9_2 = SHX0_1.vehicleMaxSpeeds
            SHX9_2 = SHX9_2[SHX4_2]
            SHX8_2 = SHX8_2[SHX9_2]
            SHX9_2 = CMG
            SHX9_2 = SHX9_2.getTruckingMaxSpeedBonusMph
            SHX9_2 = SHX9_2()
            SHX10_2 = CMG
            SHX10_2 = SHX10_2.getGarbageMaxSpeedBonusMph
            SHX10_2 = SHX10_2()
            SHX11_2 = nil
            SHX12_2 = CMG
            SHX12_2 = SHX12_2.hasClientGroup
            SHX13_2 = "Trucking"
            SHX12_2 = SHX12_2(SHX13_2)
            if SHX12_2 and SHX9_2 > 0 then
              SHX12_2 = SHX9_2 * 0.44704
              SHX11_2 = SHX8_2 + SHX12_2
            else
              SHX12_2 = CMG
              SHX12_2 = SHX12_2.hasClientGroup
              SHX13_2 = "Garbage"
              SHX12_2 = SHX12_2(SHX13_2)
              if SHX12_2 then
                SHX12_2 = SHX42_1
                SHX12_2 = SHX12_2()
                if SHX12_2 and SHX10_2 > 0 then
                  SHX12_2 = SHX10_2 * 0.44704
                  SHX11_2 = SHX8_2 + SHX12_2
              end
              else
                SHX11_2 = SHX8_2
              end
            end
            SHX12_2 = SHX32_1
            SHX13_2 = SHX1_2
            SHX14_2 = SHX11_2
            SHX12_2(SHX13_2, SHX14_2)
            SHX5_2 = SHX11_2
            SHX12_2 = CMG
            SHX12_2 = SHX12_2.hasClientGroup
            SHX13_2 = "Trucking"
            SHX12_2 = SHX12_2(SHX13_2)
            SHX6_2 = SHX12_2 or SHX6_2
            if not SHX12_2 then
              SHX12_2 = CMG
              SHX12_2 = SHX12_2.hasClientGroup
              SHX13_2 = "Garbage"
              SHX12_2 = SHX12_2(SHX13_2)
              SHX6_2 = SHX12_2 or SHX6_2
              if SHX12_2 then
                SHX12_2 = SHX42_1
                SHX12_2 = SHX12_2()
                SHX6_2 = SHX12_2
              end
            end
          else
            SHX8_2 = "250"
            SHX9_2 = IsThisModelAHeli
            SHX10_2 = SHX4_2
            SHX9_2 = SHX9_2(SHX10_2)
            if SHX9_2 then
              SHX8_2 = "275"
            else
              SHX9_2 = IsThisModelAPlane
              SHX10_2 = SHX4_2
              SHX9_2 = SHX9_2(SHX10_2)
              if SHX9_2 then
                SHX8_2 = "300"
              end
            end
            SHX9_2 = GetPedInVehicleSeat
            SHX10_2 = SHX1_2
            SHX11_2 = -1
            SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
            if 0 ~= SHX9_2 then
              SHX10_2 = DecorGetBool
              SHX11_2 = SHX9_2
              SHX12_2 = "adf4399051"
              SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
              if SHX10_2 then
                SHX8_2 = "275"
              end
            end
            if SHX7_2 then
              SHX8_2 = "1000"
            end
            SHX10_2 = SHX43_1
            SHX11_2 = SHX8_2
            SHX10_2 = SHX10_2(SHX11_2)
            SHX11_2 = SHX32_1
            SHX12_2 = SHX1_2
            SHX13_2 = SHX10_2
            SHX11_2(SHX12_2, SHX13_2)
            SHX5_2 = SHX10_2
            SHX11_2 = SHX0_1.maxSpeeds
            SHX11_2 = SHX11_2[SHX8_2]
            SHX12_2 = CMG
            SHX12_2 = SHX12_2.hasClientPermission
            SHX13_2 = "aa.onduty.permission"
            SHX12_2 = SHX12_2(SHX13_2)
            if SHX12_2 then
              SHX12_2 = math
              SHX12_2 = SHX12_2.min
              SHX13_2 = SHX11_2
              SHX14_2 = SHX0_1.maxSpeeds
              SHX14_2 = SHX14_2["125"]
              SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
              SHX11_2 = SHX12_2
            end
            SHX12_2 = CMG
            SHX12_2 = SHX12_2.hasClientGroup
            SHX13_2 = "Trucking"
            SHX12_2 = SHX12_2(SHX13_2)
            SHX6_2 = SHX12_2 or SHX6_2
            if SHX12_2 then
              SHX12_2 = SHX41_1
              SHX12_2 = SHX12_2()
              SHX6_2 = SHX12_2 or SHX6_2
              if SHX12_2 then
                SHX12_2 = SHX39_1
                SHX12_2 = SHX12_2()
                SHX6_2 = SHX11_2 > SHX12_2
              end
            end
          end
        end
      else
        SHX7_2 = SHX32_1
        SHX8_2 = SHX1_2
        SHX9_2 = SHX43_1
        SHX10_2 = "100"
        SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX9_2(SHX10_2)
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      end
      if SHX5_2 and SHX6_2 then
        SHX7_2 = SHX18_1
        SHX8_2 = SHX1_2
        SHX9_2 = SHX0_2
        SHX10_2 = SHX5_2
        SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_377:: outside nested blocks until all 'goto SHX_LABEL_377' can see it
    ::SHX_LABEL_377::
    SHX4_2 = SHX6_1
    if SHX4_2 then
      SHX4_2 = SHX8_1
      if false == SHX4_2 then
        SHX4_2 = TriggerEvent
        SHX5_2 = "371eab1d3a"
        SHX6_2 = {}
        SHX6_2.text = "You have entered the greenzone"
        SHX6_2.height = "200px"
        SHX6_2.width = "auto"
        SHX6_2.colour = "#FFF"
        SHX6_2.background = "#32CD32"
        SHX6_2.pos = "bottom-right"
        SHX6_2.icon = "success"
        SHX7_2 = 5000
        SHX4_2(SHX5_2, SHX6_2, SHX7_2)
        SHX4_2 = true
        SHX8_1 = SHX4_2
        SHX4_2 = false
        SHX9_1 = SHX4_2
        SHX4_2 = TriggerServerEvent
        SHX5_2 = "4e7e11df5d"
        SHX4_2(SHX5_2)
      end
    end
    SHX4_2 = SHX7_1
    if SHX4_2 then
      SHX4_2 = SHX9_1
      if false == SHX4_2 then
        SHX4_2 = pairs
        SHX5_2 = SHX15_1
        SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
        for SHX8_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
          SHX9_2 = ResetEntityAlpha
          SHX10_2 = SHX8_2
          SHX9_2(SHX10_2)
        end
        SHX4_2 = table
        SHX4_2 = SHX4_2.clear
        SHX5_2 = SHX15_1
        SHX4_2(SHX5_2)
        SHX4_2 = TriggerEvent
        SHX5_2 = "371eab1d3a"
        SHX6_2 = {}
        SHX6_2.text = "You have left the greenzone"
        SHX6_2.height = "60px"
        SHX6_2.width = "auto"
        SHX6_2.colour = "#FFF"
        SHX6_2.background = "#ff0000"
        SHX6_2.pos = "bottom-right"
        SHX6_2.icon = "bad"
        SHX7_2 = 5000
        SHX4_2(SHX5_2, SHX6_2, SHX7_2)
        SHX4_2 = true
        SHX9_1 = SHX4_2
        SHX4_2 = false
        SHX8_1 = SHX4_2
        SHX4_2 = TriggerServerEvent
        SHX5_2 = "eb54cb2feb"
        SHX4_2(SHX5_2)
      end
    end
    SHX4_2 = SHX4_1
    if SHX4_2 then
      SHX4_2 = SHX35_1
      SHX5_2 = 2
      SHX6_2 = 37
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = DisablePlayerFiring
      SHX5_2 = SHX3_2
      SHX6_2 = true
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = SHX35_1
      SHX5_2 = 0
      SHX6_2 = 106
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SHX35_1
      SHX5_2 = 0
      SHX6_2 = 45
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SHX35_1
      SHX5_2 = 0
      SHX6_2 = 24
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SHX35_1
      SHX5_2 = 0
      SHX6_2 = 263
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SHX35_1
      SHX5_2 = 0
      SHX6_2 = 140
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getPlayerCombatTimer
      SHX4_2, SHX5_2 = SHX4_2()
      if SHX4_2 > 0 and SHX5_2 then
        SHX6_2 = SHX38_1
        SHX6_2()
      end
    end
    SHX4_2 = SHX5_1
    if SHX4_2 then
      SHX4_2 = drawNativeText
      SHX5_2 = "You have entered a non-RP greenzone, you may talk out of character here"
      SHX4_2(SHX5_2)
      SHX4_2 = SHX35_1
      SHX5_2 = 2
      SHX6_2 = 37
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = DisablePlayerFiring
      SHX5_2 = SHX3_2
      SHX6_2 = true
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = SHX35_1
      SHX5_2 = 0
      SHX6_2 = 45
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SHX35_1
      SHX5_2 = 0
      SHX6_2 = 24
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SHX35_1
      SHX5_2 = 0
      SHX6_2 = 263
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SHX35_1
      SHX5_2 = 0
      SHX6_2 = 140
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    end
    SHX4_2 = SHX13_1
    if SHX4_2 then
      SHX4_2 = SHX35_1
      SHX5_2 = 0
      SHX6_2 = 106
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SHX35_1
      SHX5_2 = 0
      SHX6_2 = 45
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SHX35_1
      SHX5_2 = 0
      SHX6_2 = 24
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SHX35_1
      SHX5_2 = 0
      SHX6_2 = 263
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SHX35_1
      SHX5_2 = 0
      SHX6_2 = 140
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SHX35_1
      SHX5_2 = 0
      SHX6_2 = 22
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    end
  end
end
SHX45_1 = SetTimeout
SHX46_1 = 100
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createThreadOnTick
  SHX1_2 = SHX44_1
  SHX2_2 = "Greenzone"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX45_1(SHX46_1, SHX47_1)
SHX45_1 = 60
SHX46_1 = 0
SHX47_1 = nil
function SHX48_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = GetRenderingCam
  SHX0_2 = SHX0_2()
  if -1 == SHX0_2 then
    SHX0_2 = IsControlPressed
    SHX1_2 = 0
    SHX2_2 = 249
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      goto SHX_LABEL_13
    end
  end
  SHX0_2 = false
  return SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX0_2 = GetGameplayCamRot
  SHX1_2 = 2
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = SHX47_1
  if SHX1_2 == SHX0_2 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX47_1 = SHX0_2
  SHX1_2 = false
  return SHX1_2
end
SHX49_1 = SHX21_1
function SHX50_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  while true do
    SHX0_2 = SHX22_1
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.areGreenzonesDisabled
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isLbRacingActive
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.isPreviewingVehicle
        SHX0_2 = SHX0_2()
        if not SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.getPlayerBucket
          SHX0_2 = SHX0_2()
          if 0 == SHX0_2 then
            goto SHX_LABEL_27
          end
        end
      end
    end
    SHX0_2 = 0
    SHX46_1 = SHX0_2
    goto SHX_LABEL_65
    -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
    ::SHX_LABEL_27::
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isInGreenzone
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerVehicle
      SHX0_2, SHX1_2 = SHX0_2()
      if 0 ~= SHX0_2 and SHX1_2 then
        SHX2_2 = SHX48_1
        SHX2_2 = SHX2_2()
        if SHX2_2 then
          SHX2_2 = SHX46_1
          SHX2_2 = SHX2_2 + 1
          SHX46_1 = SHX2_2
          SHX2_2 = SHX46_1
          SHX3_2 = SHX45_1
          if SHX2_2 >= SHX3_2 then
            SHX2_2 = DeleteEntity
            SHX3_2 = SHX0_2
            SHX2_2(SHX3_2)
            SHX2_2 = 0
            SHX46_1 = SHX2_2
          end
        else
          SHX2_2 = 0
          SHX46_1 = SHX2_2
        end
      else
        SHX2_2 = 0
        SHX46_1 = SHX2_2
      end
    else
      SHX0_2 = 0
      SHX46_1 = SHX0_2
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_65:: outside nested blocks until all 'goto SHX_LABEL_65' can see it
    ::SHX_LABEL_65::
  end
end
SHX49_1(SHX50_1)
SHX49_1 = CMG
function SHX50_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX4_2 = AddBlipForRadius
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX1_2.z
  SHX8_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SetBlipColour
  SHX6_2 = SHX4_2
  SHX7_2 = 2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetBlipAlpha
  SHX6_2 = SHX4_2
  SHX7_2 = 180
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = nil
  if SHX3_2 then
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createNoVehicleZone
    SHX7_2 = SHX1_2
    SHX8_2 = SHX2_2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX5_2 = SHX6_2
  end
  SHX6_2 = table
  SHX6_2 = SHX6_2.insert
  SHX7_2 = SHX19_1
  SHX8_2 = {}
  SHX8_2.name = SHX0_2
  SHX8_2.blip = SHX4_2
  SHX8_2.pos = SHX1_2
  SHX8_2.dist = SHX2_2
  SHX9_2 = SHX1_2.z
  SHX9_2 = SHX9_2 + SHX2_2
  SHX8_2.maxHeight = SHX9_2
  SHX8_2.nonRP = false
  SHX8_2.setBit = false
  SHX8_2.carZone = SHX5_2
  SHX6_2(SHX7_2, SHX8_2)
end
SHX49_1.createGreenzone = SHX50_1
SHX49_1 = CMG
function SHX50_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX19_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.name
    if SHX7_2 == SHX0_2 then
      SHX6_2.destroy = true
      SHX7_2 = RemoveBlip
      SHX8_2 = SHX6_2.blip
      SHX7_2(SHX8_2)
      SHX7_2 = SHX6_2.carZone
      if SHX7_2 then
        SHX7_2 = CMG
        SHX7_2 = SHX7_2.deleteNoVehicleZone
        SHX8_2 = SHX6_2.carZone
        SHX7_2(SHX8_2)
      end
      SHX7_2 = table
      SHX7_2 = SHX7_2.remove
      SHX8_2 = SHX19_1
      SHX9_2 = SHX5_2
      SHX7_2(SHX8_2, SHX9_2)
      break
    end
  end
end
SHX49_1.deleteGreenzone = SHX50_1
SHX49_1 = tCMG
function SHX50_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.inArena
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.inArenaWarmup
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.inArenaMapPreview
      SHX1_2 = SHX1_2()
      if not SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.isArenaSpectating
        SHX1_2 = SHX1_2()
        if not SHX1_2 then
          goto SHX_LABEL_23
        end
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
  ::SHX_LABEL_23::
  if SHX0_2 then
    SHX1_2 = SHX6_1
    return SHX1_2
  else
    SHX1_2 = SHX3_1
    return SHX1_2
  end
end
SHX49_1.isInGreenzone = SHX50_1
SHX49_1 = tCMG
function SHX50_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = 1000000.0
  SHX2_2 = false
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX3_2 = SHX3_2.xy
  SHX4_2 = pairs
  SHX5_2 = SHX20_1
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX9_2[5]
    if not SHX10_2 then
      SHX10_2 = SHX9_2[1]
      SHX10_2 = SHX10_2.xy
      SHX10_2 = SHX10_2 - SHX3_2
      SHX10_2 = #SHX10_2
      SHX11_2 = SHX9_2[2]
      SHX10_2 = SHX10_2 - SHX11_2
      if SHX1_2 > SHX10_2 then
        SHX11_2 = math
        SHX11_2 = SHX11_2.min
        SHX12_2 = math
        SHX12_2 = SHX12_2.max
        SHX13_2 = SHX10_2
        SHX14_2 = 0.0
        SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
        SHX13_2 = SHX1_2
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
        SHX1_2 = SHX11_2
        SHX11_2 = SHX9_2.allowIllegalTransfer
        SHX2_2 = SHX11_2 or SHX2_2
        if not SHX11_2 then
          SHX2_2 = false
        end
      end
    end
  end
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.isInGreenzone
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  return SHX4_2, SHX5_2, SHX6_2
end
SHX49_1.isInGreenzoneWithDistance = SHX50_1
SHX49_1 = {}
SHX49_1.offroader = "200"
SHX49_1.semioffroader = "210"
SHX49_1.suv = "215"
SHX49_1.sport = "225"
SHX50_1 = CMG
function SHX51_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX49_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = tonumber
    SHX3_2 = SHX1_2
    return SHX2_2(SHX3_2)
  end
  SHX2_2 = nil
  return SHX2_2
end
SHX50_1.getTargetSpeedFromVehicleType = SHX51_1
SHX50_1 = {}
SHX51_1 = Citizen
SHX51_1 = SHX51_1.CreateThread
function SHX52_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = SHX22_1
  SHX1_2 = 1000
  SHX0_2(SHX1_2)
  SHX0_2 = LoadResourceFile
  SHX1_2 = "CMGVeh"
  SHX2_2 = "data/vehicles.json"
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX1_2 = json
    SHX1_2 = SHX1_2.decode
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX2_2 = pairs
      SHX3_2 = SHX1_2
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
      for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
        SHX8_2 = GetHashKey
        SHX9_2 = SHX6_2
        SHX8_2 = SHX8_2(SHX9_2)
        SHX9_2 = SHX50_1
        SHX9_2[SHX8_2] = SHX7_2
        SHX9_2 = SHX49_1
        SHX9_2 = SHX9_2[SHX7_2]
        if SHX9_2 then
          SHX10_2 = SHX0_1.maxSpeeds
          SHX10_2 = SHX10_2[SHX9_2]
          if SHX10_2 then
            SHX10_2 = SHX0_1.vehicleMaxSpeeds
            SHX10_2 = SHX10_2[SHX8_2]
            if not SHX10_2 then
              SHX10_2 = SHX0_1.vehicleMaxSpeeds
              SHX10_2[SHX8_2] = SHX9_2
            end
          end
        end
      end
    end
  end
end
SHX51_1(SHX52_1)
SHX51_1 = CMG
function SHX52_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX50_1
  SHX1_2 = SHX1_2[SHX0_2]
  return SHX1_2
end
SHX51_1.getVehicleTypeFromModel = SHX52_1
SHX51_1 = RegisterNetEvent
SHX52_1 = "ba2b490138"
function SHX53_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.createGreenzone
    SHX2_2 = "Vespucci Greenzone"
    SHX3_2 = vector3
    SHX4_2 = -1079.5734863281
    SHX5_2 = -843.14739990234
    SHX6_2 = 4.884133338928
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX4_2 = 45.0
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  else
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.deleteGreenzone
    SHX2_2 = "Vespucci Greenzone"
    SHX1_2(SHX2_2)
  end
end
SHX51_1(SHX52_1, SHX53_1)
SHX51_1 = CMG
function SHX52_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX0_2.y
  SHX2_2 = 600.0
  SHX1_2 = SHX1_2 < SHX2_2
  return SHX1_2
end
SHX51_1.isInCityZone = SHX52_1
SHX51_1 = CMG
function SHX52_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.inArena
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.inArenaWarmup
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.inArenaMapPreview
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.isArenaSpectating
        SHX0_2 = SHX0_2()
        if not SHX0_2 then
          goto SHX_LABEL_23
        end
      end
    end
  end
  SHX0_2 = false
  return SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
  ::SHX_LABEL_23::
  SHX0_2 = SHX3_1
  return SHX0_2
end
SHX51_1.isInGreenzone = SHX52_1
