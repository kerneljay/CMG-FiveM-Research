-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1
SHX0_1 = {}
SHX1_1 = "xn_h4_islandx_terrain_01_slod"
SHX2_1 = "xn_h4_islandx_terrain_02_slod"
SHX3_1 = "xn_h4_islandx_terrain_04_slod"
SHX4_1 = "xn_h4_islandx_terrain_05_slod"
SHX5_1 = "xn_h4_islandx_terrain_06_slod"
SHX0_1[1] = SHX1_1
SHX0_1[2] = SHX2_1
SHX0_1[3] = SHX3_1
SHX0_1[4] = SHX4_1
SHX0_1[5] = SHX5_1
SHX1_1 = {}
SHX2_1 = "xn_ap1_lod"
SHX3_1 = "xn_apa_ch2_lod"
SHX4_1 = "xn_apa_ch2_lod2"
SHX5_1 = "xn_apa_ch2_lod3"
SHX6_1 = "xn_apa_ch2_lod4"
SHX7_1 = "xn_apa_ss1_lod"
SHX8_1 = "xn_bh1_lod"
SHX9_1 = "xn_bkr_id1_lod"
SHX10_1 = "xn_ch1_lod"
SHX11_1 = "xn_ch2_lod"
SHX12_1 = "xn_ch2_lod2"
SHX13_1 = "xn_ch2_lod3"
SHX14_1 = "xn_ch2_lod4"
SHX15_1 = "xn_ch3_lod"
SHX16_1 = "xn_cs1_lod"
SHX17_1 = "xn_cs1_lod2"
SHX18_1 = "xn_cs1_lod3"
SHX19_1 = "xn_cs2_lod"
SHX20_1 = "xn_cs2_lod2"
SHX21_1 = "xn_cs3_lod"
SHX22_1 = "xn_cs4_lod"
SHX23_1 = "xn_cs5_lod"
SHX24_1 = "xn_cs6_lod"
SHX25_1 = "xn_dt1_lod"
SHX26_1 = "xn_hei_ap1_lod"
SHX27_1 = "xn_hei_bh1_lod"
SHX28_1 = "xn_hei_ch1_lod"
SHX29_1 = "xn_hei_ch2_lod"
SHX30_1 = "xn_hei_ch2_lod2"
SHX31_1 = "xn_hei_ch2_lod3"
SHX32_1 = "xn_hei_ch2_lod4"
SHX33_1 = "xn_hei_ch3_lod"
SHX34_1 = "xn_hei_cs1_lod"
SHX35_1 = "xn_hei_cs1_lod2"
SHX36_1 = "xn_hei_cs1_lod3"
SHX37_1 = "xn_hei_cs2_lod"
SHX38_1 = "xn_hei_cs2_lod2"
SHX39_1 = "xn_hei_cs3_lod"
SHX40_1 = "xn_hei_cs4_lod"
SHX41_1 = "xn_hei_cs6_lod"
SHX42_1 = "xn_hei_dt1_lod"
SHX43_1 = "xn_hei_hw1_lod"
SHX44_1 = "xn_hei_id1_lod"
SHX45_1 = "xn_hei_id2_lod"
SHX46_1 = "xn_hei_kt1_lod"
SHX47_1 = "xn_hei_po1_lod"
SHX48_1 = "xn_hei_sc1_lod"
SHX49_1 = "xn_hei_sm_lod"
SHX50_1 = "xn_hei_ss1_lod"
SHX51_1 = "xn_hei_vb_lod"
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
SHX1_1[23] = SHX24_1
SHX1_1[24] = SHX25_1
SHX1_1[25] = SHX26_1
SHX1_1[26] = SHX27_1
SHX1_1[27] = SHX28_1
SHX1_1[28] = SHX29_1
SHX1_1[29] = SHX30_1
SHX1_1[30] = SHX31_1
SHX1_1[31] = SHX32_1
SHX1_1[32] = SHX33_1
SHX1_1[33] = SHX34_1
SHX1_1[34] = SHX35_1
SHX1_1[35] = SHX36_1
SHX1_1[36] = SHX37_1
SHX1_1[37] = SHX38_1
SHX1_1[38] = SHX39_1
SHX1_1[39] = SHX40_1
SHX1_1[40] = SHX41_1
SHX1_1[41] = SHX42_1
SHX1_1[42] = SHX43_1
SHX1_1[43] = SHX44_1
SHX1_1[44] = SHX45_1
SHX1_1[45] = SHX46_1
SHX1_1[46] = SHX47_1
SHX1_1[47] = SHX48_1
SHX1_1[48] = SHX49_1
SHX1_1[49] = SHX50_1
SHX1_1[50] = SHX51_1
SHX2_1 = "xn_hw1_lod"
SHX3_1 = "xn_id1_lod"
SHX4_1 = "xn_id2_lod"
SHX5_1 = "xn_kt1_lod"
SHX6_1 = "xn_lr_cs4_lod"
SHX7_1 = "xn_lr_cs6_lod"
SHX8_1 = "xn_lr_id1_lod"
SHX9_1 = "xn_lr_sc1_lod"
SHX10_1 = "xn_po1_lod"
SHX11_1 = "xn_sc1_lod"
SHX12_1 = "xn_sm_lod"
SHX13_1 = "xn_sp1_lod"
SHX14_1 = "xn_ss1_lod"
SHX15_1 = "xn_vb_lod"
SHX1_1[51] = SHX2_1
SHX1_1[52] = SHX3_1
SHX1_1[53] = SHX4_1
SHX1_1[54] = SHX5_1
SHX1_1[55] = SHX6_1
SHX1_1[56] = SHX7_1
SHX1_1[57] = SHX8_1
SHX1_1[58] = SHX9_1
SHX1_1[59] = SHX10_1
SHX1_1[60] = SHX11_1
SHX1_1[61] = SHX12_1
SHX1_1[62] = SHX13_1
SHX1_1[63] = SHX14_1
SHX1_1[64] = SHX15_1
SHX2_1 = false
SHX3_1 = CMG
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  return SHX0_2
end
SHX3_1.isInCayoPerico = SHX4_1
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = DisableCayoPerico
    SHX1_2 = false
    SHX0_2(SHX1_2)
  else
    SHX0_2 = EnableCayoPerico
    SHX1_2 = false
    SHX0_2(SHX1_2)
  end
  SHX0_2 = Wait
  SHX1_2 = 1000
  SHX0_2(SHX1_2)
  SHX0_2 = DoScreenFadeIn
  SHX1_2 = 2000
  SHX0_2(SHX1_2)
  SHX0_2 = SHX2_1
  SHX0_2 = not SHX0_2
  SHX2_1 = SHX0_2
  SHX0_2 = TriggerEvent
  SHX1_2 = "IsInCayoPerico"
  SHX2_2 = SHX2_1
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "IsInCayoPerico"
  SHX2_2 = SHX2_1
  SHX0_2(SHX1_2, SHX2_2)
end
TogglePerico = SHX3_1
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SetIslandHopperEnabled
  SHX2_2 = "HeistIsland"
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetAiGlobalPathNodesType
  SHX2_2 = 1
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.InvokeNative
  SHX2_2 = 6014969029414136234
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetScenarioGroupEnabled
  SHX2_2 = "Heist_Island_Peds"
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetAudioFlag
  SHX2_2 = "PlayerOnDLCHeist4Island"
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetAmbientZoneListStatePersistent
  SHX2_2 = "AZL_DLC_Hei4_Island_Zones"
  SHX3_2 = true
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SetAmbientZoneListStatePersistent
  SHX2_2 = "AZL_DLC_Hei4_Island_Disabled_Zones"
  SHX3_2 = false
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = ipairs
  SHX2_2 = SHX1_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = RequestIpl
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
  SHX1_2 = ipairs
  SHX2_2 = SHX0_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = RemoveIpl
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
  if SHX0_2 then
    SHX1_2 = true
    SHX2_1 = SHX1_2
    SHX1_2 = TriggerEvent
    SHX2_2 = "IsInCayoPerico"
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "IsInCayoPerico"
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
  end
end
EnableCayoPerico = SHX3_1
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SetIslandHopperEnabled
  SHX2_2 = "HeistIsland"
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetAiGlobalPathNodesType
  SHX2_2 = 0
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.InvokeNative
  SHX2_2 = 6014969029414136234
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetScenarioGroupEnabled
  SHX2_2 = "Heist_Island_Peds"
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetAudioFlag
  SHX2_2 = "PlayerOnDLCHeist4Island"
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetAmbientZoneListStatePersistent
  SHX2_2 = "AZL_DLC_Hei4_Island_Zones"
  SHX3_2 = false
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SetAmbientZoneListStatePersistent
  SHX2_2 = "AZL_DLC_Hei4_Island_Disabled_Zones"
  SHX3_2 = true
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = ipairs
  SHX2_2 = SHX0_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = RequestIpl
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
  SHX1_2 = ipairs
  SHX2_2 = SHX1_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = RemoveIpl
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
  if SHX0_2 then
    SHX1_2 = false
    SHX2_1 = SHX1_2
    SHX1_2 = TriggerEvent
    SHX2_2 = "IsInCayoPerico"
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "IsInCayoPerico"
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
  end
end
DisableCayoPerico = SHX3_1
SHX3_1 = Citizen
SHX3_1 = SHX3_1.CreateThread
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createArea
  SHX1_2 = "cayo_island"
  SHX2_2 = vector3
  SHX3_2 = 5218.9399414062
  SHX4_2 = -5393.2563476562
  SHX5_2 = 67.318588256836
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = 2142.0
  SHX4_2 = 1400.0
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = TogglePerico
    SHX0_3()
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = TogglePerico
    SHX0_3()
  end
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
SHX3_1(SHX4_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "EnableCayoPerico"
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = EnableCayoPerico
  SHX1_2 = true
  SHX0_2(SHX1_2)
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "DisableCayoPerico"
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = DisableCayoPerico
  SHX1_2 = true
  SHX0_2(SHX1_2)
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = false
SHX4_1 = false
SHX5_1 = Citizen
SHX5_1 = SHX5_1.CreateThread
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  while true do
    SHX0_2 = GetEntityCoords
    SHX1_2 = PlayerPedId
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = vector3
    SHX2_2 = 4858.0
    SHX3_2 = -5171.0
    SHX4_2 = 2.0
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX0_2 = SHX0_2 - SHX1_2
    SHX0_2 = #SHX0_2
    SHX1_2 = 2200.0
    SHX0_2 = SHX0_2 < SHX1_2
    SHX1_2 = SHX3_1
    if SHX1_2 ~= SHX0_2 then
      SHX3_1 = SHX0_2
      SHX4_1 = SHX0_2
      SHX1_2 = SetToggleMinimapHeistIsland
      SHX2_2 = SHX3_1
      SHX1_2(SHX2_2)
    end
    SHX1_2 = Wait
    SHX2_2 = 5000
    SHX1_2(SHX2_2)
  end
end
SHX5_1(SHX6_1)
SHX5_1 = CreateThread
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  while true do
    SHX0_2 = 500
    SHX1_2 = IsPauseMenuActive
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      SHX1_2 = IsMinimapInInterior
      SHX1_2 = SHX1_2()
      if not SHX1_2 then
        SHX1_2 = SHX4_1
        if SHX1_2 then
          SHX1_2 = false
          SHX4_1 = SHX1_2
          SHX1_2 = SetToggleMinimapHeistIsland
          SHX2_2 = false
          SHX1_2(SHX2_2)
        end
        SHX1_2 = SetRadarAsExteriorThisFrame
        SHX1_2()
        SHX1_2 = SetRadarAsInteriorThisFrame
        SHX2_2 = -1062664944
        SHX3_2 = 4700.0
        SHX4_2 = -5145.0
        SHX5_2 = 0
        SHX6_2 = 0
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        SHX0_2 = 0
    end
    else
      SHX1_2 = SHX4_1
      if not SHX1_2 then
        SHX1_2 = SHX3_1
        if SHX1_2 then
          SHX1_2 = true
          SHX4_1 = SHX1_2
          SHX1_2 = SetToggleMinimapHeistIsland
          SHX2_2 = true
          SHX1_2(SHX2_2)
        end
      end
    end
    SHX1_2 = Wait
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
end
SHX5_1(SHX6_1)
SHX5_1 = Citizen
SHX5_1 = SHX5_1.InvokeNative
SHX6_1 = 3604191389194645194
SHX7_1 = false
SHX5_1(SHX6_1, SHX7_1)
