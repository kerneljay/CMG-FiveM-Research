-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = vector3
SHX4_1 = 1418.1851806641
SHX5_1 = 1074.1748046875
SHX6_1 = 114.12604522705
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1.position = SHX3_1
SHX3_1 = vector3
SHX4_1 = 1420.8325195312
SHX5_1 = 1077.7908935547
SHX6_1 = 113.3405380249
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1.spawnPosition = SHX3_1
SHX2_1.radius = 5.0
SHX2_1.modelHash = -1323586730
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = 1418.1851806641
SHX6_1 = 1074.1748046875
SHX7_1 = 114.12604522705
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.position = SHX4_1
SHX4_1 = vector3
SHX5_1 = 1420.7302246094
SHX6_1 = 1071.0461425781
SHX7_1 = 113.33385467529
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.spawnPosition = SHX4_1
SHX3_1.radius = 5.0
SHX3_1.modelHash = -1323586730
SHX4_1 = {}
SHX5_1 = vector3
SHX6_1 = 1418.1851806641
SHX7_1 = 1074.1748046875
SHX8_1 = 114.12604522705
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX4_1.position = SHX5_1
SHX5_1 = vector3
SHX6_1 = 1417.4418945312
SHX7_1 = 1067.5789794922
SHX8_1 = 113.33403015137
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX4_1.spawnPosition = SHX5_1
SHX4_1.radius = 5.0
SHX4_1.modelHash = -1323586730
SHX5_1 = {}
SHX6_1 = vector3
SHX7_1 = 1418.3645019531
SHX8_1 = 1095.5473632812
SHX9_1 = 114.34324645996
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX5_1.position = SHX6_1
SHX6_1 = vector3
SHX7_1 = 1419.5729980469
SHX8_1 = 1094.3645019531
SHX9_1 = 113.32888793945
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX5_1.spawnPosition = SHX6_1
SHX5_1.radius = 5.0
SHX5_1.modelHash = -50684386
SHX6_1 = {}
SHX7_1 = vector3
SHX8_1 = 1418.3645019531
SHX9_1 = 1095.5473632812
SHX10_1 = 114.34324645996
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX6_1.position = SHX7_1
SHX7_1 = vector3
SHX8_1 = 1419.3063964844
SHX9_1 = 1098.4047851562
SHX10_1 = 113.39669036865
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX6_1.spawnPosition = SHX7_1
SHX6_1.radius = 5.0
SHX6_1.modelHash = -50684386
SHX7_1 = {}
SHX8_1 = vector3
SHX9_1 = 1418.3645019531
SHX10_1 = 1095.5473632812
SHX11_1 = 114.34324645996
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX7_1.position = SHX8_1
SHX8_1 = vector3
SHX9_1 = 1415.75390625
SHX10_1 = 1097.5383300781
SHX11_1 = 113.36410522461
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX7_1.spawnPosition = SHX8_1
SHX7_1.radius = 5.0
SHX7_1.modelHash = -50684386
SHX8_1 = {}
SHX9_1 = vector3
SHX10_1 = 1464.5655517578
SHX11_1 = 1137.9475097656
SHX12_1 = 114.32263183594
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.position = SHX9_1
SHX9_1 = vector3
SHX10_1 = 1464.5655517578
SHX11_1 = 1137.9475097656
SHX12_1 = 114.32263183594
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.spawnPosition = SHX9_1
SHX8_1.radius = 2.0
SHX8_1.modelHash = 1886354844
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX1_1[4] = SHX5_1
SHX1_1[5] = SHX6_1
SHX1_1[6] = SHX7_1
SHX1_1[7] = SHX8_1
SHX2_1 = pairs
SHX3_1 = SHX0_1
SHX2_1, SHX3_1, SHX4_1, SHX5_1 = SHX2_1(SHX3_1)
for SHX6_1, SHX7_1 in SHX2_1, SHX3_1, SHX4_1, SHX5_1 do
  SHX8_1 = CMG
  SHX8_1 = SHX8_1.createDynamicPed
  SHX9_1 = SHX7_1.modelHash
  SHX10_1 = SHX7_1.position
  SHX10_1 = SHX10_1.xyz
  SHX11_1 = SHX7_1.position
  SHX11_1 = SHX11_1.w
  SHX12_1 = true
  SHX13_1 = nil
  SHX14_1 = nil
  SHX15_1 = 100.0
  SHX16_1 = nil
  function SHX17_1(SHX0_2)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
    SHX1_2 = SHX7_1.scenarioName
    if SHX1_2 then
      SHX1_2 = TaskStartScenarioAtPosition
      SHX2_2 = SHX0_2
      SHX3_2 = SHX7_1.scenarioName
      SHX4_2 = SHX7_1.position
      SHX4_2 = SHX4_2.x
      SHX5_2 = SHX7_1.position
      SHX5_2 = SHX5_2.y
      SHX6_2 = SHX7_1.position
      SHX6_2 = SHX6_2.z
      SHX7_2 = SHX7_1.position
      SHX7_2 = SHX7_2.w
      SHX8_2 = -1
      SHX9_2 = false
      SHX10_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    end
  end
  SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1)
end
SHX2_1 = pairs
SHX3_1 = SHX1_1
SHX2_1, SHX3_1, SHX4_1, SHX5_1 = SHX2_1(SHX3_1)
for SHX6_1, SHX7_1 in SHX2_1, SHX3_1, SHX4_1, SHX5_1 do
  SHX8_1 = CMG
  SHX8_1 = SHX8_1.createDynamicPed
  SHX9_1 = SHX7_1.modelHash
  SHX10_1 = SHX7_1.spawnPosition
  SHX11_1 = 0.0
  SHX12_1 = true
  SHX13_1 = nil
  SHX14_1 = nil
  SHX15_1 = 100.0
  SHX16_1 = nil
  function SHX17_1(SHX0_2)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
    SHX1_2 = FreezeEntityPosition
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SetEntityCollision
    SHX2_2 = SHX0_2
    SHX3_2 = true
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = TaskWanderInArea
    SHX2_2 = SHX0_2
    SHX3_2 = SHX7_1.position
    SHX3_2 = SHX3_2.x
    SHX4_2 = SHX7_1.position
    SHX4_2 = SHX4_2.y
    SHX5_2 = SHX7_1.position
    SHX5_2 = SHX5_2.z
    SHX6_2 = SHX7_1.radius
    SHX7_2 = 2.0
    SHX8_2 = math
    SHX8_2 = SHX8_2.random
    SHX9_2 = 5
    SHX10_2 = 10
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = SHX8_2 + 0.0
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
  SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1)
end
