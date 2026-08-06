-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1
SHX0_1 = Citizen
SHX0_1 = SHX0_1.CreateThread
function SHX1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = OnEnterMp
  SHX0_2()
  SHX0_2 = SetInstancePriorityMode
  SHX1_2 = 1
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "chop_props"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "FIBlobby"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "FIBlobbyfake"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "FBI_colPLUG"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "FBI_repair"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "v_tunnel_hole"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "TrevorsMP"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "TrevorsTrailer"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "TrevorsTrailerTidy"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "farm_burnt"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "farm_burnt_lod"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "farm_burnt_props"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "farmint_cap"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "farmint_cap_lod"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "farm"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "farmint"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "farm_lod"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "farm_props"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "facelobby"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "CS1_02_cf_offmission"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "CS1_02_cf_onmission1"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "CS1_02_cf_onmission2"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "CS1_02_cf_onmission3"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "CS1_02_cf_onmission4"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "v_rockclub"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "hei_bi_hw1_13_door"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "bkr_bi_hw1_13_int"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "ufo"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "v_carshowroom"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "shutter_open"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "shutter_closed"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "shr_int"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "csr_inMission"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "v_carshowroom"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "shr_int"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "shutter_closed"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "cargoship"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "railing_start"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "sp1_10_fake_interior"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "sp1_10_fake_interior_lod"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "sp1_10_real_interior"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "sp1_10_real_interior_lod"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "id2_14_during_door"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "id2_14_during1"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "id2_14_during2"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "id2_14_on_fire"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "id2_14_post_no_int"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "id2_14_pre_no_int"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "id2_14_during_door"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "id2_14_during1"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "coronertrash"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "Coroner_Int_on"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "Coroner_Int_off"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "bh1_16_refurb"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "jewel2fake"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "bh1_16_doors_shut"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "refit_unload"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "post_hiest_unload"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "Carwash_with_spinners"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "ferris_finale_Anim"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "ch1_02_closed"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "ch1_02_open"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "AP1_04_TriAf01"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "CS2_06_TriAf02"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "CS4_04_TriAf03"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "scafstartimap"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "scafendimap"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "DT1_05_HC_REMOVE"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "DT1_05_HC_REQ"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "DT1_05_REQUEST"
  SHX0_2(SHX1_2)
  SHX0_2 = RequestIpl
  SHX1_2 = "FINBANK"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "DT1_03_Shutter"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveIpl
  SHX1_2 = "DT1_03_Gr_Closed"
  SHX0_2(SHX1_2)
end
SHX0_1(SHX1_1)
