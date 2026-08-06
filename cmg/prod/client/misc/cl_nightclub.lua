-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1
SHX0_1 = vector3
SHX1_1 = 987.5367
SHX2_1 = 79.6912
SHX3_1 = 80.9905
SHX0_1 = SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX1_1 = vector3
SHX2_1 = 1578.3608
SHX3_1 = 253.3105
SHX4_1 = -46.0051
SHX1_1 = SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX2_1 = false
SHX3_1 = {}
SHX4_1 = {}
SHX5_1 = "h4_int_placement_h4_interior_1_dlc_int_02_h4_milo_"
SHX6_1 = "ba_int_placement_ba_interior_0_dlc_int_01_ba_milo_"
SHX4_1[1] = SHX5_1
SHX4_1[2] = SHX6_1
SHX5_1 = {}
SHX6_1 = "h4_int_placement_h4_interior_1_dlc_int_02_h4_milo_"
SHX7_1 = {}
SHX8_1 = "EntitySet_DJ_Lighting"
SHX9_1 = "int01_ba_bar_content"
SHX10_1 = "dj_01_lights_02"
SHX11_1 = "int01_ba_booze_0"
SHX12_1 = "int01_ba_dj_moodyman"
SHX13_1 = "int01_ba_dry_ice"
SHX14_1 = "int01_ba_equipment_upgrade"
SHX15_1 = "int01_ba_lightgrid_01"
SHX16_1 = "int01_ba_lights_screen"
SHX17_1 = "int01_ba_security_upgrade"
SHX18_1 = "int01_ba_style02_podium"
SHX7_1[1] = SHX8_1
SHX7_1[2] = SHX9_1
SHX7_1[3] = SHX10_1
SHX7_1[4] = SHX11_1
SHX7_1[5] = SHX12_1
SHX7_1[6] = SHX13_1
SHX7_1[7] = SHX14_1
SHX7_1[8] = SHX15_1
SHX7_1[9] = SHX16_1
SHX7_1[10] = SHX17_1
SHX7_1[11] = SHX18_1
SHX5_1[SHX6_1] = SHX7_1
SHX6_1 = "ba_int_placement_ba_interior_0_dlc_int_01_ba_milo_"
SHX7_1 = {}
SHX8_1 = "Int01_ba_clubname_0"
SHX9_1 = "Int01_ba_Style03"
SHX10_1 = "Int01_ba_style03_podium"
SHX11_1 = "Int01_ba_equipment_setup"
SHX12_1 = "Int01_ba_equipment_upgrade"
SHX13_1 = "Int01_ba_security_upgrade"
SHX14_1 = "Int01_ba_dj04"
SHX15_1 = "Int01_ba_trad_lights"
SHX16_1 = "Int01_ba_bar_content"
SHX17_1 = "Int01_ba_booze_03"
SHX18_1 = "Int01_ba_trophy03"
SHX19_1 = "Int01_ba_lightgrid_01"
SHX20_1 = "Int01_ba_dry_ice"
SHX21_1 = "DJ_04_Lights_03"
SHX7_1[1] = SHX8_1
SHX7_1[2] = SHX9_1
SHX7_1[3] = SHX10_1
SHX7_1[4] = SHX11_1
SHX7_1[5] = SHX12_1
SHX7_1[6] = SHX13_1
SHX7_1[7] = SHX14_1
SHX7_1[8] = SHX15_1
SHX7_1[9] = SHX16_1
SHX7_1[10] = SHX17_1
SHX7_1[11] = SHX18_1
SHX7_1[12] = SHX19_1
SHX7_1[13] = SHX20_1
SHX7_1[14] = SHX21_1
SHX5_1[SHX6_1] = SHX7_1
SHX6_1 = {}
SHX7_1 = "h4_int_placement_h4_interior_1_dlc_int_02_h4_milo_"
SHX8_1 = vector3
SHX9_1 = 1550.0
SHX10_1 = 250.0
SHX11_1 = -48.0
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX6_1[SHX7_1] = SHX8_1
SHX7_1 = "ba_int_placement_ba_interior_0_dlc_int_01_ba_milo_"
SHX8_1 = vector3
SHX9_1 = -1602.932
SHX10_1 = -3019.1
SHX11_1 = -79.99
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX6_1[SHX7_1] = SHX8_1
SHX7_1 = {}
SHX8_1 = {}
SHX9_1 = vector3
SHX10_1 = 3.7219
SHX11_1 = 3.4921
SHX12_1 = 5.721
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = vector3
SHX11_1 = 3.7219
SHX12_1 = 2.1514
SHX13_1 = 5.4099
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX11_1 = vector3
SHX12_1 = 3.7219
SHX13_1 = 0.7985
SHX14_1 = 5.721
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX12_1 = vector3
SHX13_1 = 3.7219
SHX14_1 = -1.0028
SHX15_1 = 5.721
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = vector3
SHX14_1 = 3.7219
SHX15_1 = -2.3244
SHX16_1 = 5.4099
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX14_1 = vector3
SHX15_1 = 3.7219
SHX16_1 = -3.7085
SHX17_1 = 5.721
SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX8_1[1] = SHX9_1
SHX8_1[2] = SHX10_1
SHX8_1[3] = SHX11_1
SHX8_1[4] = SHX12_1
SHX8_1[5] = SHX13_1
SHX8_1[6] = SHX14_1
SHX8_1[7] = SHX15_1
SHX8_1[8] = SHX16_1
SHX8_1[9] = SHX17_1
SHX8_1[10] = SHX18_1
SHX8_1[11] = SHX19_1
SHX8_1[12] = SHX20_1
SHX8_1[13] = SHX21_1
SHX7_1[1] = SHX8_1
SHX8_1 = {}
SHX9_1 = vector3
SHX10_1 = 5.8927
SHX11_1 = 3.4921
SHX12_1 = 5.721
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = vector3
SHX11_1 = 5.8927
SHX12_1 = 2.1514
SHX13_1 = 5.4099
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX11_1 = vector3
SHX12_1 = 5.8927
SHX13_1 = 0.7985
SHX14_1 = 5.721
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX12_1 = vector3
SHX13_1 = 5.8927
SHX14_1 = -1.0028
SHX15_1 = 5.721
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = vector3
SHX14_1 = 5.8927
SHX15_1 = -2.3244
SHX16_1 = 5.4099
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX14_1 = vector3
SHX15_1 = 5.8927
SHX16_1 = -3.7085
SHX17_1 = 5.721
SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX8_1[1] = SHX9_1
SHX8_1[2] = SHX10_1
SHX8_1[3] = SHX11_1
SHX8_1[4] = SHX12_1
SHX8_1[5] = SHX13_1
SHX8_1[6] = SHX14_1
SHX8_1[7] = SHX15_1
SHX8_1[8] = SHX16_1
SHX8_1[9] = SHX17_1
SHX8_1[10] = SHX18_1
SHX8_1[11] = SHX19_1
SHX8_1[12] = SHX20_1
SHX8_1[13] = SHX21_1
SHX7_1[2] = SHX8_1
SHX8_1 = {}
SHX9_1 = vector3
SHX10_1 = 8.0635
SHX11_1 = 3.4921
SHX12_1 = 5.721
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = vector3
SHX11_1 = 8.0635
SHX12_1 = 2.1514
SHX13_1 = 5.4099
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX11_1 = vector3
SHX12_1 = 8.0635
SHX13_1 = 0.7985
SHX14_1 = 5.721
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX12_1 = vector3
SHX13_1 = 8.0635
SHX14_1 = -1.0028
SHX15_1 = 5.721
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = vector3
SHX14_1 = 8.0635
SHX15_1 = -2.3244
SHX16_1 = 5.4099
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX14_1 = vector3
SHX15_1 = 8.0635
SHX16_1 = -3.7085
SHX17_1 = 5.721
SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX8_1[1] = SHX9_1
SHX8_1[2] = SHX10_1
SHX8_1[3] = SHX11_1
SHX8_1[4] = SHX12_1
SHX8_1[5] = SHX13_1
SHX8_1[6] = SHX14_1
SHX8_1[7] = SHX15_1
SHX8_1[8] = SHX16_1
SHX8_1[9] = SHX17_1
SHX8_1[10] = SHX18_1
SHX8_1[11] = SHX19_1
SHX8_1[12] = SHX20_1
SHX8_1[13] = SHX21_1
SHX7_1[3] = SHX8_1
SHX8_1 = {}
SHX9_1 = vector3
SHX10_1 = 10.2343
SHX11_1 = 3.4921
SHX12_1 = 5.721
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = vector3
SHX11_1 = 10.2343
SHX12_1 = 2.1514
SHX13_1 = 5.4099
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX11_1 = vector3
SHX12_1 = 10.2343
SHX13_1 = 0.7985
SHX14_1 = 5.721
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX12_1 = vector3
SHX13_1 = 10.2343
SHX14_1 = -1.0028
SHX15_1 = 5.721
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = vector3
SHX14_1 = 10.2343
SHX15_1 = -2.3244
SHX16_1 = 5.4099
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX14_1 = vector3
SHX15_1 = 10.2343
SHX16_1 = -3.7085
SHX17_1 = 5.721
SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX8_1[1] = SHX9_1
SHX8_1[2] = SHX10_1
SHX8_1[3] = SHX11_1
SHX8_1[4] = SHX12_1
SHX8_1[5] = SHX13_1
SHX8_1[6] = SHX14_1
SHX8_1[7] = SHX15_1
SHX8_1[8] = SHX16_1
SHX8_1[9] = SHX17_1
SHX8_1[10] = SHX18_1
SHX8_1[11] = SHX19_1
SHX8_1[12] = SHX20_1
SHX8_1[13] = SHX21_1
SHX7_1[4] = SHX8_1
SHX8_1 = {}
SHX9_1 = vector3
SHX10_1 = 12.4051
SHX11_1 = 3.4921
SHX12_1 = 5.721
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX10_1 = vector3
SHX11_1 = 12.4051
SHX12_1 = 2.1514
SHX13_1 = 5.4099
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX11_1 = vector3
SHX12_1 = 12.4051
SHX13_1 = 0.7985
SHX14_1 = 5.721
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX12_1 = vector3
SHX13_1 = 12.4051
SHX14_1 = -1.0028
SHX15_1 = 5.721
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = vector3
SHX14_1 = 12.4051
SHX15_1 = -2.3244
SHX16_1 = 5.4099
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX14_1 = vector3
SHX15_1 = 12.4051
SHX16_1 = -3.7085
SHX17_1 = 5.721
SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX8_1[1] = SHX9_1
SHX8_1[2] = SHX10_1
SHX8_1[3] = SHX11_1
SHX8_1[4] = SHX12_1
SHX8_1[5] = SHX13_1
SHX8_1[6] = SHX14_1
SHX8_1[7] = SHX15_1
SHX8_1[8] = SHX16_1
SHX8_1[9] = SHX17_1
SHX8_1[10] = SHX18_1
SHX8_1[11] = SHX19_1
SHX8_1[12] = SHX20_1
SHX8_1[13] = SHX21_1
SHX7_1[5] = SHX8_1
SHX8_1 = {}
SHX9_1 = {}
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX0_2 = true
  SHX2_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = "BA_PROP_CLUB_EMIS_RIG_10"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = pairs
  SHX2_2 = SHX7_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = pairs
    SHX8_2 = SHX6_2
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX13_2 = GetObjectOffsetFromCoords
      SHX14_2 = SHX12_2.x
      SHX15_2 = SHX12_2.y
      SHX16_2 = SHX12_2.z
      SHX17_2 = 0
      SHX18_2 = 1550.0
      SHX19_2 = 250.0
      SHX20_2 = -50.0
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX14_2 = CreateObjectNoOffset
      SHX15_2 = SHX0_2
      SHX16_2 = SHX13_2.x
      SHX17_2 = SHX13_2.y
      SHX18_2 = SHX13_2.z
      SHX19_2 = false
      SHX20_2 = false
      SHX21_2 = false
      SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
      SHX15_2 = SetObjectLightColor
      SHX16_2 = SHX14_2
      SHX17_2 = true
      SHX18_2 = 141
      SHX19_2 = 20
      SHX20_2 = 178
      SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX15_2 = SHX8_1
      SHX15_2 = #SHX15_2
      SHX16_2 = SHX15_2 + 1
      SHX15_2 = SHX8_1
      SHX15_2[SHX16_2] = SHX14_2
    end
  end
  SHX1_2 = SetModelAsNoLongerNeeded
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = {}
  SHX2_2 = 1
  SHX3_2 = pairs
  SHX4_2 = SHX8_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX1_2[SHX2_2] = SHX8_2
    SHX2_2 = SHX2_2 + 1
  end
  function SHX3_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX1_3 = #SHX0_3
    SHX2_3 = 1
    while SHX1_3 > SHX2_3 do
      SHX3_3 = SHX0_3[SHX1_3]
      SHX4_3 = SHX0_3[SHX2_3]
      SHX0_3[SHX1_3] = SHX4_3
      SHX0_3[SHX2_3] = SHX3_3
      SHX2_3 = SHX2_3 + 1
      SHX1_3 = SHX1_3 - 1
    end
  end
  function SHX4_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3
    SHX1_3 = Citizen
    SHX1_3 = SHX1_3.CreateThread
    function SHX2_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
      SHX0_4 = 0
      SHX1_4 = 64
      SHX2_4 = 1
      for SHX3_4 = SHX0_4, SHX1_4, SHX2_4 do
        SHX4_4 = SetEntityAlpha
        SHX5_4 = SHX0_3
        SHX6_4 = SHX2_2
        SHX6_4 = SHX6_4 * 4
        SHX7_4 = false
        SHX4_4(SHX5_4, SHX6_4, SHX7_4)
        SHX4_4 = Citizen
        SHX4_4 = SHX4_4.Wait
        SHX5_4 = 0
        SHX4_4(SHX5_4)
      end
    end
    SHX1_3(SHX2_3)
  end
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3
    SHX1_3 = Citizen
    SHX1_3 = SHX1_3.CreateThread
    function SHX2_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
      SHX0_4 = 64
      SHX1_4 = 0
      SHX2_4 = -1
      for SHX3_4 = SHX0_4, SHX1_4, SHX2_4 do
        SHX4_4 = SetEntityAlpha
        SHX5_4 = SHX0_3
        SHX6_4 = SHX2_2
        SHX6_4 = SHX6_4 * 4
        SHX7_4 = false
        SHX4_4(SHX5_4, SHX6_4, SHX7_4)
        SHX4_4 = Citizen
        SHX4_4 = SHX4_4.Wait
        SHX5_4 = 0
        SHX4_4(SHX5_4)
      end
    end
    SHX1_3(SHX2_3)
  end
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    while true do
      SHX4_3 = SHX2_1
      if SHX4_3 then
        SHX4_3 = SHX0_3
        SHX5_3 = pairs
        SHX6_3 = SHX4_3
        SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX5_3(SHX6_3)
        for SHX9_3, SHX10_3 in SHX5_3, SHX6_3, SHX7_3, SHX8_3 do
          SHX11_3 = Citizen
          SHX11_3 = SHX11_3.CreateThread
          function SHX12_3()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4
            SHX0_4 = pairs
            SHX1_4 = SHX10_3
            SHX0_4, SHX1_4, SHX2_4, SHX3_4 = SHX0_4(SHX1_4)
            for SHX4_4, SHX5_4 in SHX0_4, SHX1_4, SHX2_4, SHX3_4 do
              SHX6_4 = SHX1_3
              if "hard" == SHX6_4 then
                SHX6_4 = ResetEntityAlpha
                SHX7_4 = SHX1_2
                SHX7_4 = SHX7_4[SHX5_4]
                SHX6_4(SHX7_4)
              end
              SHX6_4 = SHX1_3
              if "fade" == SHX6_4 then
                SHX6_4 = SHX4_2
                SHX7_4 = SHX1_2
                SHX7_4 = SHX7_4[SHX5_4]
                SHX6_4(SHX7_4)
              end
            end
            SHX0_4 = Citizen
            SHX0_4 = SHX0_4.Wait
            SHX1_4 = 150
            SHX0_4(SHX1_4)
            SHX0_4 = pairs
            SHX1_4 = SHX10_3
            SHX0_4, SHX1_4, SHX2_4, SHX3_4 = SHX0_4(SHX1_4)
            for SHX4_4, SHX5_4 in SHX0_4, SHX1_4, SHX2_4, SHX3_4 do
              SHX6_4 = SHX1_3
              if "hard" == SHX6_4 then
                SHX6_4 = SetEntityAlpha
                SHX7_4 = SHX1_2
                SHX7_4 = SHX7_4[SHX5_4]
                SHX8_4 = 255
                SHX9_4 = false
                SHX6_4(SHX7_4, SHX8_4, SHX9_4)
              end
              SHX6_4 = SHX1_3
              if "fade" == SHX6_4 then
                SHX6_4 = SHX5_2
                SHX7_4 = SHX1_2
                SHX7_4 = SHX7_4[SHX5_4]
                SHX6_4(SHX7_4)
              end
            end
          end
          SHX11_3(SHX12_3)
          SHX11_3 = Citizen
          SHX11_3 = SHX11_3.Wait
          SHX12_3 = SHX3_3 or SHX12_3
          if not SHX3_3 then
            SHX12_3 = 200
          end
          SHX11_3(SHX12_3)
        end
        if SHX2_3 then
          SHX5_3 = SHX3_2
          SHX6_3 = SHX4_3
          SHX5_3 = SHX5_3(SHX6_3)
          SHX4_3 = SHX5_3
        end
      end
      SHX4_3 = Citizen
      SHX4_3 = SHX4_3.Wait
      SHX5_3 = 0
      SHX4_3(SHX5_3)
    end
  end
  SHX7_2 = Citizen
  SHX7_2 = SHX7_2.CreateThread
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    SHX0_3 = {}
    SHX1_3 = {}
    SHX2_3 = 6
    SHX1_3[1] = SHX2_3
    SHX2_3 = {}
    SHX3_3 = 5
    SHX4_3 = 12
    SHX2_3[1] = SHX3_3
    SHX2_3[2] = SHX4_3
    SHX3_3 = {}
    SHX4_3 = 18
    SHX5_3 = 11
    SHX6_3 = 4
    SHX3_3[1] = SHX4_3
    SHX3_3[2] = SHX5_3
    SHX3_3[3] = SHX6_3
    SHX4_3 = {}
    SHX5_3 = 3
    SHX6_3 = 10
    SHX7_3 = 17
    SHX8_3 = 24
    SHX4_3[1] = SHX5_3
    SHX4_3[2] = SHX6_3
    SHX4_3[3] = SHX7_3
    SHX4_3[4] = SHX8_3
    SHX5_3 = {}
    SHX6_3 = 30
    SHX7_3 = 23
    SHX8_3 = 16
    SHX9_3 = 9
    SHX10_3 = 2
    SHX5_3[1] = SHX6_3
    SHX5_3[2] = SHX7_3
    SHX5_3[3] = SHX8_3
    SHX5_3[4] = SHX9_3
    SHX5_3[5] = SHX10_3
    SHX6_3 = {}
    SHX7_3 = 1
    SHX8_3 = 8
    SHX9_3 = 15
    SHX10_3 = 22
    SHX11_3 = 29
    SHX6_3[1] = SHX7_3
    SHX6_3[2] = SHX8_3
    SHX6_3[3] = SHX9_3
    SHX6_3[4] = SHX10_3
    SHX6_3[5] = SHX11_3
    SHX7_3 = {}
    SHX8_3 = 28
    SHX9_3 = 21
    SHX10_3 = 14
    SHX11_3 = 7
    SHX7_3[1] = SHX8_3
    SHX7_3[2] = SHX9_3
    SHX7_3[3] = SHX10_3
    SHX7_3[4] = SHX11_3
    SHX8_3 = {}
    SHX9_3 = 13
    SHX10_3 = 20
    SHX11_3 = 27
    SHX8_3[1] = SHX9_3
    SHX8_3[2] = SHX10_3
    SHX8_3[3] = SHX11_3
    SHX9_3 = {}
    SHX10_3 = 19
    SHX11_3 = 26
    SHX9_3[1] = SHX10_3
    SHX9_3[2] = SHX11_3
    SHX10_3 = {}
    SHX11_3 = 25
    SHX10_3[1] = SHX11_3
    SHX0_3[1] = SHX1_3
    SHX0_3[2] = SHX2_3
    SHX0_3[3] = SHX3_3
    SHX0_3[4] = SHX4_3
    SHX0_3[5] = SHX5_3
    SHX0_3[6] = SHX6_3
    SHX0_3[7] = SHX7_3
    SHX0_3[8] = SHX8_3
    SHX0_3[9] = SHX9_3
    SHX0_3[10] = SHX10_3
    SHX1_3 = SHX6_2
    SHX2_3 = SHX0_3
    SHX3_3 = "fade"
    SHX4_3 = true
    SHX5_3 = 200
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
  end
  SHX7_2(SHX8_2)
end
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = false
  SHX2_1 = SHX0_2
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX3_1.Bouncer
  SHX0_2(SHX1_2)
  SHX0_2 = pairs
  SHX1_2 = SHX8_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DeleteEntity
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = pairs
  SHX1_2 = SHX9_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DeleteEntity
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = drawNativeNotification
  SHX1_2 = "Press ~INPUT_CONTEXT~ to enter the Diamond Casino Nightclub"
  SHX0_2(SHX1_2)
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 1
  SHX2_2 = 51
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = DoScreenFadeOut
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
    while true do
      SHX0_2 = IsScreenFadedOut
      SHX0_2 = SHX0_2()
      if SHX0_2 then
        break
      end
      SHX0_2 = Citizen
      SHX0_2 = SHX0_2.Wait
      SHX1_2 = 1.0
      SHX0_2(SHX1_2)
    end
    SHX0_2 = SHX10_1
    SHX0_2()
    SHX0_2 = SetEntityCoords
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = SHX1_1.x
    SHX3_2 = SHX1_1.y
    SHX4_2 = SHX1_1.z
    SHX5_2 = false
    SHX6_2 = false
    SHX7_2 = false
    SHX8_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 200
    SHX0_2(SHX1_2)
    SHX0_2 = DoScreenFadeIn
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = drawNativeNotification
  SHX1_2 = "Press ~INPUT_CONTEXT~ to exit the Diamond Casino Nightclub"
  SHX0_2(SHX1_2)
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 1
  SHX2_2 = 51
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = DoScreenFadeOut
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
    while true do
      SHX0_2 = IsScreenFadedOut
      SHX0_2 = SHX0_2()
      if SHX0_2 then
        break
      end
      SHX0_2 = Citizen
      SHX0_2 = SHX0_2.Wait
      SHX1_2 = 1.0
      SHX0_2(SHX1_2)
    end
    SHX0_2 = SHX11_1
    SHX0_2()
    SHX0_2 = SetEntityCoords
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = SHX0_1.x
    SHX3_2 = SHX0_1.y
    SHX4_2 = SHX0_1.z
    SHX5_2 = false
    SHX6_2 = false
    SHX7_2 = false
    SHX8_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 200
    SHX0_2(SHX1_2)
    SHX0_2 = DoScreenFadeIn
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX14_1 = AddEventHandler
SHX15_1 = "CMG:onClientSpawn"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  if SHX1_2 then
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX12_1
      SHX0_3()
    end
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.createArea
    SHX6_2 = "nightclub_entrance"
    SHX7_2 = SHX0_1
    SHX8_2 = 1.0
    SHX9_2 = 6
    SHX10_2 = SHX2_2
    SHX11_2 = SHX3_2
    SHX12_2 = SHX4_2
    SHX13_2 = {}
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.createArea
    SHX6_2 = "nightclub_entrance"
    SHX7_2 = vector3
    SHX8_2 = 950.79626464844
    SHX9_2 = 45.225772857666
    SHX10_2 = 81.000747680664
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX8_2 = 1.0
    SHX9_2 = 6
    SHX10_2 = SHX2_2
    SHX11_2 = SHX3_2
    SHX12_2 = SHX4_2
    SHX13_2 = {}
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX13_1
      SHX0_3()
    end
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.createArea
    SHX9_2 = "nightclub_exit"
    SHX10_2 = SHX1_1
    SHX11_2 = 3.0
    SHX12_2 = 6
    SHX13_2 = SHX5_2
    SHX14_2 = SHX6_2
    SHX15_2 = SHX7_2
    SHX16_2 = {}
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = Citizen
SHX14_1 = SHX14_1.CreateThread
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.addBlip
  SHX1_2 = 987.6535
  SHX2_2 = 80.3114
  SHX3_2 = 80.9905
  SHX4_2 = 136
  SHX5_2 = 0
  SHX6_2 = "The Diamond Casino NightClub"
  SHX7_2 = 0.5
  SHX8_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = pairs
  SHX1_2 = SHX4_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = IsIplActive
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if not SHX6_2 then
      SHX6_2 = RequestIpl
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
    SHX6_2 = SHX5_1
    SHX6_2 = SHX6_2[SHX5_2]
    if SHX6_2 then
      SHX6_2 = SHX6_1
      SHX6_2 = SHX6_2[SHX5_2]
      if SHX6_2 then
        SHX6_2 = IsIplActive
        SHX7_2 = SHX5_2
        SHX6_2 = SHX6_2(SHX7_2)
        if SHX6_2 then
          SHX6_2 = SHX6_1
          SHX6_2 = SHX6_2[SHX5_2]
          SHX7_2 = GetInteriorAtCoords
          SHX8_2 = SHX6_2.x
          SHX9_2 = SHX6_2.y
          SHX10_2 = SHX6_2.z
          SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
          SHX8_2 = IsValidInterior
          SHX9_2 = SHX7_2
          SHX8_2 = SHX8_2(SHX9_2)
          if SHX8_2 then
            SHX8_2 = pairs
            SHX9_2 = SHX5_1
            SHX9_2 = SHX9_2[SHX5_2]
            SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
            for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
              SHX14_2 = ActivateInteriorEntitySet
              SHX15_2 = SHX7_2
              SHX16_2 = SHX13_2
              SHX14_2(SHX15_2, SHX16_2)
            end
            SHX8_2 = RefreshInterior
            SHX9_2 = SHX7_2
            SHX8_2(SHX9_2)
          end
        end
      end
    end
  end
end
SHX14_1(SHX15_1)
SHX14_1 = AddEventHandler
SHX15_1 = "onResourceStop"
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX1_2 ~= SHX0_2 then
    return
  end
  SHX1_2 = SHX11_1
  SHX1_2()
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = AddEventHandler
SHX15_1 = "onResourceStart"
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX1_2 ~= SHX0_2 then
    return
  end
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 1000
  SHX1_2(SHX2_2)
  SHX1_2 = GetInteriorFromEntity
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX1_2 = SHX1_2(SHX2_2)
  if 281089 == SHX1_2 then
    SHX1_2 = SHX10_1
    SHX1_2()
  end
end
SHX14_1(SHX15_1, SHX16_1)
