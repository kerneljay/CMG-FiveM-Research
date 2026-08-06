-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1
SHX0_1 = {}
SHX0_1.crouchKeybindEnabled = true
SHX0_1.crouchKeybind = "LCONTROL"
SHX0_1.crouchOverride = true
SHX0_1.crouchKeypressTimer = 1000
SHX0_1.crawlKeybindEnabled = true
SHX0_1.crawlKeybind = "RCONTROL"
SHX1_1 = {}
SHX1_1.crouch_keymapping = "Crouch"
SHX1_1.crouch_chat_suggestion = "Crouch"
SHX1_1.crawl_keymapping = "Crawl"
SHX1_1.crawl_chat_suggestion = "Crawl"
SHX0_1.localization = SHX1_1
SHX1_1 = {}
SHX2_1 = -2146642687
SHX1_1[SHX2_1] = "move_m@alien"
SHX2_1 = 1450392727
SHX1_1[SHX2_1] = "anim_group_move_ballistic"
SHX2_1 = 1646588077
SHX1_1[SHX2_1] = "move_f@arrogant@a"
SHX2_1 = -1273245730
SHX1_1[SHX2_1] = "move_m@hurry_butch@a"
SHX2_1 = -1654611352
SHX1_1[SHX2_1] = "move_m@hurry_butch@b"
SHX2_1 = 1135734536
SHX1_1[SHX2_1] = "move_m@hurry_butch@c"
SHX2_1 = -1768281232
SHX1_1[SHX2_1] = "move_m@brave"
SHX2_1 = 1160259160
SHX1_1[SHX2_1] = "move_m@casual@a"
SHX2_1 = 1249489219
SHX1_1[SHX2_1] = "move_m@casual@b"
SHX2_1 = 1022236204
SHX1_1[SHX2_1] = "move_m@casual@c"
SHX2_1 = 1730505370
SHX1_1[SHX2_1] = "move_m@casual@d"
SHX2_1 = 1500565297
SHX1_1[SHX2_1] = "move_m@casual@e"
SHX2_1 = -742407223
SHX1_1[SHX2_1] = "move_m@casual@f"
SHX2_1 = -2125795638
SHX1_1[SHX2_1] = "move_f@chichi"
SHX2_1 = 1130158996
SHX1_1[SHX2_1] = "move_m@confident"
SHX2_1 = 1607161685
SHX1_1[SHX2_1] = "move_m@business@a"
SHX2_1 = 1845818312
SHX1_1[SHX2_1] = "move_m@business@b"
SHX2_1 = -59928421
SHX1_1[SHX2_1] = "move_m@business@c"
SHX2_1 = -2055591238
SHX1_1[SHX2_1] = "move_chubby"
SHX2_1 = -108537538
SHX1_1[SHX2_1] = "move_f@chubby@a"
SHX2_1 = -1401903942
SHX1_1[SHX2_1] = "move_f@multiplayer"
SHX2_1 = 1113513977
SHX1_1[SHX2_1] = "move_m@multiplayer"
SHX2_1 = -1287120285
SHX1_1[SHX2_1] = "move_m@depressed@a"
SHX2_1 = -502630425
SHX1_1[SHX2_1] = "move_m@depressed@b"
SHX2_1 = 685317947
SHX1_1[SHX2_1] = "move_f@depressed@a"
SHX2_1 = -859042698
SHX1_1[SHX2_1] = "move_m@drunk@a"
SHX2_1 = 2037534323
SHX1_1[SHX2_1] = "move_m@buzzed"
SHX2_1 = -1925018459
SHX1_1[SHX2_1] = "move_m@drunk@moderatedrunk"
SHX2_1 = -1201085968
SHX1_1[SHX2_1] = "move_m@drunk@moderatedrunk_head_up"
SHX2_1 = 875753685
SHX1_1[SHX2_1] = "move_m@drunk@slightlydrunk"
SHX2_1 = -297078218
SHX1_1[SHX2_1] = "move_m@drunk@verydrunk"
SHX2_1 = 1524082234
SHX1_1[SHX2_1] = "move_m@fat@a"
SHX2_1 = 522820593
SHX1_1[SHX2_1] = "move_f@fat@a"
SHX2_1 = -1732630094
SHX1_1[SHX2_1] = "move_m@fat@bulky"
SHX2_1 = -669438934
SHX1_1[SHX2_1] = "move_f@femme@"
SHX2_1 = -1857789306
SHX1_1[SHX2_1] = "move_characters@franklin@fire"
SHX2_1 = -433101684
SHX1_1[SHX2_1] = "move_characters@michael@fire"
SHX2_1 = 989819896
SHX1_1[SHX2_1] = "move_m@fire"
SHX2_1 = 2077811903
SHX1_1[SHX2_1] = "move_f@flee@a"
SHX2_1 = 864310395
SHX1_1[SHX2_1] = "move_f@flee@c"
SHX2_1 = -1960902366
SHX1_1[SHX2_1] = "move_m@flee@a"
SHX2_1 = 1287652361
SHX1_1[SHX2_1] = "move_m@flee@b"
SHX2_1 = -796046076
SHX1_1[SHX2_1] = "move_p_m_one"
SHX2_1 = -1810566716
SHX1_1[SHX2_1] = "move_m@gangster@generic"
SHX2_1 = -2114609648
SHX1_1[SHX2_1] = "move_m@gangster@ng"
SHX2_1 = -875359244
SHX1_1[SHX2_1] = "move_m@gangster@var_e"
SHX2_1 = 1203637196
SHX1_1[SHX2_1] = "move_m@gangster@var_f"
SHX2_1 = -1796495834
SHX1_1[SHX2_1] = "move_m@gangster@var_i"
SHX2_1 = 132330440
SHX1_1[SHX2_1] = "move_m@generic"
SHX2_1 = 642383383
SHX1_1[SHX2_1] = "move_f@generic"
SHX2_1 = 696702737
SHX1_1[SHX2_1] = "anim@move_m@grooving@"
SHX2_1 = -705606766
SHX1_1[SHX2_1] = "anim@move_f@grooving@"
SHX2_1 = 1013381506
SHX1_1[SHX2_1] = "move_m@prison_gaurd"
SHX2_1 = 1500055922
SHX1_1[SHX2_1] = "move_m@prisoner_cuffed"
SHX2_1 = 101970339
SHX1_1[SHX2_1] = "move_f@heels@c"
SHX2_1 = -1100881352
SHX1_1[SHX2_1] = "move_f@heels@d"
SHX2_1 = 1712688432
SHX1_1[SHX2_1] = "move_m@hiking"
SHX2_1 = -1806913316
SHX1_1[SHX2_1] = "move_f@hiking"
SHX2_1 = -1261021058
SHX1_1[SHX2_1] = "move_m@hipster@a"
SHX2_1 = -1027640375
SHX1_1[SHX2_1] = "move_m@hobo@a"
SHX2_1 = -725870658
SHX1_1[SHX2_1] = "move_m@hobo@b"
SHX2_1 = -1694147212
SHX1_1[SHX2_1] = "move_m@hurry@a"
SHX2_1 = 1605790647
SHX1_1[SHX2_1] = "move_f@hurry@a"
SHX2_1 = -32565260
SHX1_1[SHX2_1] = "move_f@injured"
SHX2_1 = 868295932
SHX1_1[SHX2_1] = "move_m@intimidation@1h"
SHX2_1 = -749057629
SHX1_1[SHX2_1] = "move_m@intimidation@cop@unarmed"
SHX2_1 = 584873396
SHX1_1[SHX2_1] = "move_m@intimidation@unarmed"
SHX2_1 = 92422612
SHX1_1[SHX2_1] = "move_p_m_zero_janitor"
SHX2_1 = 1864844954
SHX1_1[SHX2_1] = "move_p_m_zero_slow"
SHX2_1 = 1103953188
SHX1_1[SHX2_1] = "move_m@jog@"
SHX2_1 = -708603839
SHX1_1[SHX2_1] = "move_characters@jimmy@nervous@"
SHX2_1 = 1909742916
SHX1_1[SHX2_1] = "anim_group_move_lemar_alley"
SHX2_1 = 1690913150
SHX1_1[SHX2_1] = "move_heist_lester"
SHX2_1 = 549262148
SHX1_1[SHX2_1] = "move_lester_caneup"
SHX2_1 = 186601483
SHX1_1[SHX2_1] = "move_f@maneater"
SHX2_1 = -578327514
SHX1_1[SHX2_1] = "move_ped_bucket"
SHX2_1 = -1269633907
SHX1_1[SHX2_1] = "move_m@money"
SHX2_1 = -207491758
SHX1_1[SHX2_1] = "move_m@muscle@a"
SHX2_1 = -1543095923
SHX1_1[SHX2_1] = "move_m@posh@"
SHX2_1 = -1868494245
SHX1_1[SHX2_1] = "move_f@posh@"
SHX2_1 = 1023544707
SHX1_1[SHX2_1] = "move_m@quick"
SHX2_1 = 636261340
SHX1_1[SHX2_1] = "female_fast_runner"
SHX2_1 = -1599479573
SHX1_1[SHX2_1] = "move_m@sad@a"
SHX2_1 = -1847704748
SHX1_1[SHX2_1] = "move_m@sad@b"
SHX2_1 = -2077448207
SHX1_1[SHX2_1] = "move_m@sad@c"
SHX2_1 = -566100771
SHX1_1[SHX2_1] = "move_f@sad@a"
SHX2_1 = -930295437
SHX1_1[SHX2_1] = "move_f@sad@b"
SHX2_1 = 1207987305
SHX1_1[SHX2_1] = "move_m@sassy"
SHX2_1 = 1235276737
SHX1_1[SHX2_1] = "move_f@sassy"
SHX2_1 = -1472832709
SHX1_1[SHX2_1] = "move_f@scared"
SHX2_1 = -1990894342
SHX1_1[SHX2_1] = "move_f@sexy@a"
SHX2_1 = -1818270454
SHX1_1[SHX2_1] = "move_m@shadyped@a"
SHX2_1 = -510722362
SHX1_1[SHX2_1] = "move_characters@jimmy@slow@"
SHX2_1 = -409852351
SHX1_1[SHX2_1] = "move_m@swagger"
SHX2_1 = 1802187645
SHX1_1[SHX2_1] = "move_m@tough_guy@"
SHX2_1 = -1568317798
SHX1_1[SHX2_1] = "move_f@tough_guy@"
SHX2_1 = -500831769
SHX1_1[SHX2_1] = "move_m@tool_belt@a"
SHX2_1 = -976584416
SHX1_1[SHX2_1] = "move_f@tool_belt@a"
SHX2_1 = 1844458253
SHX1_1[SHX2_1] = "clipset@move@trash_fast_turn"
SHX2_1 = -435990891
SHX1_1[SHX2_1] = "missfbi4prepp1_garbageman"
SHX2_1 = -895219889
SHX1_1[SHX2_1] = "move_p_m_two"
SHX2_1 = 1258529727
SHX1_1[SHX2_1] = "move_m@bag"
SHX2_1 = -650503762
SHX1_1[SHX2_1] = "move_m@injured"
SHX2_1 = -1104677118
SHX1_1[SHX2_1] = "move_injured_generic"
SHX2_1 = -2129845123
SHX1_1[SHX2_1] = "MOVE_M@BAIL_BOND_NOT_TAZERED"
SHX2_1 = -70818445
SHX1_1[SHX2_1] = "MOVE_M@BAIL_BOND_TAZERED"
SHX2_1 = -618380859
SHX1_1[SHX2_1] = "MOVE_P_M_ONE_BRIEFCASE"
SHX2_1 = 666904976
SHX1_1[SHX2_1] = "move_ped_mop"
SHX2_1 = -1312865774
SHX1_1[SHX2_1] = "move_m@femme@"
SHX2_1 = 735579764
SHX1_1[SHX2_1] = "move_f@gangster@ng"
SHX2_1 = -1168427927
SHX1_1[SHX2_1] = "move_characters@orleans@core@"
SHX2_1 = -1164222247
SHX1_1[SHX2_1] = "move_m@coward"
SHX2_1 = 279703740
SHX1_1[SHX2_1] = "move_characters@dave_n"
SHX2_1 = 1539166312
SHX1_1[SHX2_1] = "move_characters@jimmy"
SHX2_1 = 1899314058
SHX1_1[SHX2_1] = "move_characters@patricia"
SHX2_1 = 1583990743
SHX1_1[SHX2_1] = "move_characters@ron"
SHX2_1 = 1528838481
SHX1_1[SHX2_1] = "move_m@swagger@b"
SHX2_1 = 148072839
SHX1_1[SHX2_1] = "move_m@leaf_blower"
SHX2_1 = -2018280977
SHX1_1[SHX2_1] = "move_m@flee@c"
SHX2_1 = -1960115337
SHX3_1 = "move_characters@amanda@bag"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 1701187980
SHX3_1 = "move_f@film_reel"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -1163090857
SHX3_1 = "move_f@flee@generic"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 922192683
SHX3_1 = "move_f@handbag"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -905417764
SHX3_1 = "move_m@flee@generic"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -871949441
SHX3_1 = "move_m@shocked@a"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 1728327052
SHX3_1 = "move_characters@floyd"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 756811395
SHX3_1 = "move_f@hurry@b"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -975292135
SHX3_1 = "move_characters@lamar"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 70692426
SHX3_1 = "move_characters@tracey"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -582520880
SHX3_1 = "move_m@brave@a"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -388968941
SHX3_1 = "move_m@gangster@var_a"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -1874148793
SHX3_1 = "move_f@stripper@a"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -2076638015
SHX3_1 = "move_m@gangster@var_b"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -1366140557
SHX3_1 = "move_m@gangster@var_c"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -535479176
SHX3_1 = "move_m@gangster@var_d"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 2038230857
SHX3_1 = "move_m@gangster@var_g"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 1664205491
SHX3_1 = "move_m@gangster@var_h"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 445985183
SHX3_1 = "move_m@gangster@var_j"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -288695797
SHX3_1 = "move_m@gangster@var_k"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 862223719
SHX3_1 = "move_m@clipboard"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -409207550
SHX3_1 = "move_cop@action"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 1259887674
SHX3_1 = "move_gangster"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -795792088
SHX3_1 = "move_casey"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -1938021834
SHX3_1 = "move_dreyfuss"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 202679515
SHX3_1 = "move_paramedic"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -1345269979
SHX3_1 = "move_f@fat@a_no_add"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -1267550608
SHX3_1 = "move_f@depressed@c"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 1720274816
SHX3_1 = "anim@move_f@grooving@slow@"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 148615797
SHX3_1 = "anim@move_m@grooving@slow@"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 422291091
SHX3_1 = "AMBIENT_WALK_VARIATION_F_ARROGANT_A"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 1510605100
SHX3_1 = "AMBIENT_WALK_VARIATION_M_SAD_B"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -746382641
SHX3_1 = "AMBIENT_WALK_VARIATION_M_BUSINESS_B"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 1799136145
SHX3_1 = "AMBIENT_WALK_VARIATION_M_SAD_A"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 11564329
SHX3_1 = "AMBIENT_WALK_VARIATION_M_BUSINESS_C"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 471477248
SHX3_1 = "AMBIENT_WALK_VARIATION_M_BUSINESS_A"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -1749517176
SHX3_1 = "AMBIENT_WALK_VARIATION_M_SAD_C"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -1561136569
SHX3_1 = "AMBIENT_WALK_VARIATION_F_SAD_A"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = 381019249
SHX3_1 = "HUSKY@MOVE"
SHX1_1[SHX2_1] = SHX3_1
SHX2_1 = -289665739
SHX3_1 = "RETRIEVER@MOVE"
SHX1_1[SHX2_1] = SHX3_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = GetPedMovementClipset
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX1_2]
  if SHX2_2 then
    SHX2_2 = SHX1_1
    SHX2_2 = SHX2_2[SHX1_2]
    return SHX2_2
  else
    SHX2_2 = nil
    return SHX2_2
  end
end
SHX3_1 = false
SHX4_1 = false
SHX5_1 = false
SHX6_1 = false
SHX7_1 = "onfront"
SHX8_1 = 0
SHX9_1 = nil
SHX10_1 = 0
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = IsPedOnFoot
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = IsPedJumping
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = IsPedFalling
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = IsPedInjured
        SHX3_2 = SHX0_2
        SHX2_2 = SHX2_2(SHX3_2)
        if not SHX2_2 then
          SHX2_2 = IsPedInMeleeCombat
          SHX3_2 = SHX0_2
          SHX2_2 = SHX2_2(SHX3_2)
          if not SHX2_2 then
            SHX2_2 = IsPedRagdoll
            SHX3_2 = SHX0_2
            SHX2_2 = SHX2_2(SHX3_2)
            if not SHX2_2 then
              SHX2_2 = IsPedCuffed
              SHX3_2 = SHX0_2
              SHX2_2 = SHX2_2(SHX3_2)
              if not SHX2_2 then
                goto SHX_LABEL_38
              end
            end
          end
        end
      end
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_38:: outside nested blocks until all 'goto SHX_LABEL_38' can see it
  ::SHX_LABEL_38::
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getTunableValue
  SHX3_2 = "crouch_enabled"
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 and SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getCurrentWagerFlag
    SHX3_2 = "allowCrouchShoot"
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = IsPlayerFreeAiming
      SHX3_2 = PlayerId
      SHX3_2, SHX4_2, SHX5_2 = SHX3_2()
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      if not SHX2_2 then
        SHX2_2 = GetPedConfigFlag
        SHX3_2 = SHX0_2
        SHX4_2 = 78
        SHX5_2 = false
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
        if not SHX2_2 then
          goto SHX_LABEL_67
        end
      end
      SHX2_2 = false
      return SHX2_2
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_67:: outside nested blocks until all 'goto SHX_LABEL_67' can see it
  ::SHX_LABEL_67::
  SHX2_2 = true
  return SHX2_2
end
SHX12_1 = _ENV
SHX13_1 = "SetPlayerClipset"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadClipSet
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SetPedMovementClipset
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_2
  SHX4_2 = 0.5
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = RemoveClipSet
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX12_1[SHX13_1] = SHX14_1
function SHX12_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.loadAnimDict
  SHX8_2 = SHX1_2
  SHX7_2(SHX8_2)
  SHX7_2 = TaskPlayAnim
  SHX8_2 = SHX0_2
  SHX9_2 = SHX1_2
  SHX10_2 = SHX2_2
  SHX11_2 = SHX3_2 or SHX11_2
  if not SHX3_2 then
    SHX11_2 = 2.0
  end
  SHX12_2 = SHX4_2 or SHX12_2
  if not SHX4_2 then
    SHX12_2 = 2.0
  end
  SHX13_2 = SHX5_2 or SHX13_2
  if not SHX5_2 then
    SHX13_2 = -1
  end
  SHX14_2 = 0
  SHX15_2 = SHX6_2 or SHX15_2
  if not SHX6_2 then
    SHX15_2 = 0.0
  end
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX7_2 = RemoveAnimDict
  SHX8_2 = SHX1_2
  SHX7_2(SHX8_2)
end
function SHX13_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.abs
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX1_2 / SHX3_2
  SHX5_2 = SHX2_2 / SHX3_2
  SHX6_2 = 1
  SHX7_2 = SHX3_2
  SHX8_2 = 1
  for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
    SHX10_2 = Wait
    SHX11_2 = SHX5_2
    SHX10_2(SHX11_2)
    SHX10_2 = SetEntityHeading
    SHX11_2 = SHX0_2
    SHX12_2 = GetEntityHeading
    SHX13_2 = SHX0_2
    SHX12_2 = SHX12_2(SHX13_2)
    SHX12_2 = SHX12_2 + SHX4_2
    SHX10_2(SHX11_2, SHX12_2)
  end
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = ResetPedStrafeClipset
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = ResetPedWeaponMovementClipset
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SetPedMaxMoveBlendRatio
  SHX2_2 = SHX0_2
  SHX3_2 = 1.0
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPedCanPlayAmbientAnims
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX9_1
  if nil ~= SHX1_2 then
    SHX1_2 = SetPlayerClipset
    SHX2_2 = SHX9_1
    SHX1_2(SHX2_2)
  else
    SHX1_2 = ResetPedMovementClipset
    SHX2_2 = SHX0_2
    SHX3_2 = 0.5
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = RemoveAnimSet
  SHX2_2 = "move_ped_crouched"
  SHX1_2(SHX2_2)
end
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    while true do
      SHX0_3 = SHX4_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = PlayerPedId
      SHX0_3 = SHX0_3()
      SHX1_3 = SHX11_1
      SHX2_3 = SHX0_3
      SHX3_3 = true
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if not SHX1_3 then
        SHX1_3 = false
        SHX4_1 = SHX1_3
        break
      end
      SHX1_3 = SetPedCanPlayAmbientAnims
      SHX2_3 = SHX0_3
      SHX3_3 = false
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = DisableControlAction
      SHX2_3 = 0
      SHX3_3 = 36
      SHX4_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = IsPedUsingActionMode
      SHX2_3 = SHX0_3
      SHX1_3 = SHX1_3(SHX2_3)
      if 1 == SHX1_3 then
        SHX1_3 = SetPedUsingActionMode
        SHX2_3 = SHX0_3
        SHX3_3 = false
        SHX4_3 = -1
        SHX5_3 = "DEFAULT_ACTION"
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      end
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
    SHX0_3 = SHX14_1
    SHX0_3()
  end
  SHX0_2(SHX1_2)
end
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = true
  SHX4_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadClipSet
  SHX1_2 = "move_ped_crouched"
  SHX0_2(SHX1_2)
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetPedStealthMovement
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 1 == SHX1_2 then
    SHX1_2 = SetPedStealthMovement
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX4_2 = "DEFAULT_ACTION"
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = Wait
    SHX2_2 = 100
    SHX1_2(SHX2_2)
  end
  SHX1_2 = GetFollowPedCamViewMode
  SHX1_2 = SHX1_2()
  if 4 == SHX1_2 then
    SHX1_2 = SetFollowPedCamViewMode
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SHX2_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = SHX9_1
  end
  SHX9_1 = SHX1_2
  SHX1_2 = SetPedMovementClipset
  SHX2_2 = SHX0_2
  SHX3_2 = "move_ped_crouched"
  SHX4_2 = 0.6
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SetPedStrafeClipset
  SHX2_2 = SHX0_2
  SHX3_2 = "move_ped_crouched_strafing"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX15_1
  SHX1_2()
end
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX11_1
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = SHX16_1
    SHX1_2()
    SHX1_2 = true
    return SHX1_2
  else
    SHX1_2 = false
    return SHX1_2
  end
end
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isNoClipActive
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientEventData
  SHX1_2 = "SpellingBeeClientData"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX0_2 = SHX0_2.minigameName
  if "Spelling Bee" == SHX0_2 then
    return
  end
  SHX0_2 = GetFrameCount
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX10_1
  if SHX0_2 == SHX1_2 then
    return
  end
  SHX0_2 = GetFrameCount
  SHX0_2 = SHX0_2()
  SHX10_1 = SHX0_2
  SHX0_2 = SHX6_1
  if SHX0_2 then
    return
  end
  SHX0_2 = SHX4_1
  if SHX0_2 then
    SHX0_2 = false
    SHX4_1 = SHX0_2
    return
  end
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX0_1.crouchOverride
  if SHX1_2 then
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 36
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  else
    SHX1_2 = GetControlInstructionalButton
    SHX2_2 = 0
    SHX3_2 = 3536895674
    SHX4_2 = false
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = GetControlInstructionalButton
    SHX3_2 = 0
    SHX4_2 = 36
    SHX5_2 = false
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    if SHX1_2 == SHX2_2 then
      SHX3_2 = SHX3_1
      if not SHX3_2 then
        SHX3_2 = GetGameTimer
        SHX3_2 = SHX3_2()
        SHX4_2 = GetPedStealthMovement
        SHX5_2 = SHX0_2
        SHX4_2 = SHX4_2(SHX5_2)
        if 1 == SHX4_2 then
          SHX4_2 = SHX8_1
          SHX4_2 = SHX3_2 - SHX4_2
          SHX5_2 = 1000
          if SHX4_2 < SHX5_2 then
            SHX4_2 = DisableControlAction
            SHX5_2 = 0
            SHX6_2 = 36
            SHX7_2 = true
            SHX4_2(SHX5_2, SHX6_2, SHX7_2)
            SHX4_2 = 0
            SHX8_1 = SHX4_2
            SHX4_2 = SHX17_1
            SHX5_2 = SHX0_2
            SHX4_2(SHX5_2)
            return
          end
        end
        SHX8_1 = SHX3_2
        return
      end
    end
  end
  SHX1_2 = SHX17_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = SHX3_1
    if SHX1_2 then
      SHX1_2 = true
      SHX6_1 = SHX1_2
      SHX1_2 = tCMG
      SHX1_2 = SHX1_2.setCanAnim
      SHX2_2 = true
      SHX1_2(SHX2_2)
      SHX1_2 = false
      SHX3_1 = SHX1_2
      SHX1_2 = SHX12_1
      SHX2_2 = SHX0_2
      SHX3_2 = "get_up@directional@transition@prone_to_knees@crawl"
      SHX4_2 = "front"
      SHX5_2 = nil
      SHX6_2 = nil
      SHX7_2 = 780
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX1_2 = Wait
      SHX2_2 = 780
      SHX1_2(SHX2_2)
      SHX1_2 = false
      SHX6_1 = SHX1_2
    end
  end
end
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = IsPedRunning
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = IsPedSprinting
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      goto SHX_LABEL_13
    end
  end
  SHX1_2 = true
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX1_2 = false
  return SHX1_2
end
function SHX20_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX3_2 = GetEntityCoords
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = TaskPlayAnimAdvanced
  SHX5_2 = SHX0_2
  SHX6_2 = "move_crawl"
  SHX7_2 = SHX7_1
  SHX8_2 = "_fwd"
  SHX7_2 = SHX7_2 .. SHX8_2
  SHX8_2 = SHX3_2.x
  SHX9_2 = SHX3_2.y
  SHX10_2 = SHX3_2.z
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = SHX1_2 or SHX13_2
  if not SHX1_2 then
    SHX13_2 = GetEntityHeading
    SHX14_2 = SHX0_2
    SHX13_2 = SHX13_2(SHX14_2)
  end
  SHX14_2 = SHX2_2 or SHX14_2
  if not SHX2_2 then
    SHX14_2 = 2.0
  end
  SHX15_2 = 2.0
  SHX16_2 = -1
  SHX17_2 = 2
  SHX18_2 = 1.0
  SHX19_2 = false
  SHX20_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
end
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  if not SHX0_2 then
    SHX1_2 = true
    SHX6_1 = SHX1_2
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = SHX7_1
    if "onfront" == SHX2_2 then
      SHX2_2 = SHX12_1
      SHX3_2 = SHX1_2
      SHX4_2 = "get_up@directional@transition@prone_to_knees@crawl"
      SHX5_2 = "front"
      SHX6_2 = nil
      SHX7_2 = nil
      SHX8_2 = 780
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX2_2 = SHX4_1
      if not SHX2_2 then
        SHX2_2 = Wait
        SHX3_2 = 780
        SHX2_2(SHX3_2)
        SHX2_2 = SHX12_1
        SHX3_2 = SHX1_2
        SHX4_2 = "get_up@directional@movement@from_knees@standard"
        SHX5_2 = "getup_l_0"
        SHX6_2 = nil
        SHX7_2 = nil
        SHX8_2 = 1300
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
    else
      SHX2_2 = SHX12_1
      SHX3_2 = SHX1_2
      SHX4_2 = "get_up@directional@transition@prone_to_seated@crawl"
      SHX5_2 = "back"
      SHX6_2 = 16.0
      SHX7_2 = nil
      SHX8_2 = 950
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX2_2 = SHX4_1
      if not SHX2_2 then
        SHX2_2 = Wait
        SHX3_2 = 950
        SHX2_2(SHX3_2)
        SHX2_2 = SHX12_1
        SHX3_2 = SHX1_2
        SHX4_2 = "get_up@directional@movement@from_seated@standard"
        SHX5_2 = "get_up_l_0"
        SHX6_2 = nil
        SHX7_2 = nil
        SHX8_2 = 1300
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
    end
  end
end
function SHX22_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX3_2 = true
  SHX5_1 = SHX3_2
  SHX3_2 = TaskPlayAnim
  SHX4_2 = SHX0_2
  SHX5_2 = "move_crawl"
  SHX6_2 = SHX1_2
  SHX7_2 = "_"
  SHX8_2 = SHX2_2
  SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
  SHX7_2 = 8.0
  SHX8_2 = -8.0
  SHX9_2 = -1
  SHX10_2 = 2
  SHX11_2 = 0.0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = {}
  SHX4_2 = {}
  SHX4_2.fwd = 820
  SHX4_2.bwd = 990
  SHX3_2.onfront = SHX4_2
  SHX4_2 = {}
  SHX4_2.fwd = 1200
  SHX4_2.bwd = 1200
  SHX3_2.onback = SHX4_2
  SHX4_2 = SetTimeout
  SHX5_2 = SHX3_2[SHX1_2]
  SHX5_2 = SHX5_2[SHX2_2]
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX5_1 = SHX0_3
  end
  SHX4_2(SHX5_2, SHX6_2)
end
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = true
  SHX6_1 = SHX1_2
  SHX1_2 = GetEntityHeading
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX7_1
  if "onfront" == SHX2_2 then
    SHX2_2 = "onback"
    SHX7_1 = SHX2_2
    SHX2_2 = SHX12_1
    SHX3_2 = SHX0_2
    SHX4_2 = "get_up@directional_sweep@combat@pistol@front"
    SHX5_2 = "front_to_prone"
    SHX6_2 = 2.0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = SHX13_1
    SHX3_2 = SHX0_2
    SHX4_2 = -18.0
    SHX5_2 = 3600
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  else
    SHX2_2 = "onfront"
    SHX7_1 = SHX2_2
    SHX2_2 = SHX12_1
    SHX3_2 = SHX0_2
    SHX4_2 = "move_crawlprone2crawlfront"
    SHX5_2 = "back"
    SHX6_2 = 2.0
    SHX7_2 = nil
    SHX8_2 = -1
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX2_2 = SHX13_1
    SHX3_2 = SHX0_2
    SHX4_2 = 12.0
    SHX5_2 = 1700
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  end
  SHX2_2 = SHX20_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2 + 180.0
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = Wait
  SHX3_2 = 400
  SHX2_2(SHX3_2)
  SHX2_2 = false
  SHX6_1 = SHX2_2
end
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3
    SHX0_3 = Wait
    SHX1_3 = 400
    SHX0_3(SHX1_3)
    SHX0_3 = false
    while true do
      SHX1_3 = SHX3_1
      if not SHX1_3 then
        break
      end
      SHX1_3 = PlayerPedId
      SHX1_3 = SHX1_3()
      SHX2_3 = SHX11_1
      SHX3_3 = SHX1_3
      SHX4_3 = false
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
      if SHX2_3 then
        SHX2_3 = IsEntityInWater
        SHX3_3 = SHX1_3
        SHX2_3 = SHX2_3(SHX3_3)
        if not SHX2_3 then
          goto SHX_LABEL_35
        end
      end
      SHX2_3 = ClearPedTasks
      SHX3_3 = SHX1_3
      SHX2_3(SHX3_3)
      SHX2_3 = SHX3_1
      if SHX2_3 then
        SHX2_3 = tCMG
        SHX2_3 = SHX2_3.setCanAnim
        SHX3_3 = true
        SHX2_3(SHX3_3)
        SHX2_3 = false
        SHX3_1 = SHX2_3
      end
      SHX0_3 = true
      do break end
      -- [FIX IF ERROR] Move ::SHX_LABEL_35:: outside nested blocks until all 'goto SHX_LABEL_35' can see it
      ::SHX_LABEL_35::
      SHX2_3 = IsControlPressed
      SHX3_3 = 0
      SHX4_3 = 32
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
      SHX3_3 = IsControlPressed
      SHX4_3 = 0
      SHX5_3 = 33
      SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
      SHX4_3 = SHX5_1
      if not SHX4_3 then
        if SHX2_3 then
          SHX4_3 = SHX22_1
          SHX5_3 = SHX1_3
          SHX6_3 = SHX7_1
          SHX7_3 = "fwd"
          SHX4_3(SHX5_3, SHX6_3, SHX7_3)
        elseif SHX3_3 then
          SHX4_3 = SHX22_1
          SHX5_3 = SHX1_3
          SHX6_3 = SHX7_1
          SHX7_3 = "bwd"
          SHX4_3(SHX5_3, SHX6_3, SHX7_3)
        end
      end
      SHX4_3 = IsControlPressed
      SHX5_3 = 0
      SHX6_3 = 34
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3)
      if SHX4_3 then
        SHX4_3 = SHX5_1
        if SHX4_3 then
          if SHX2_3 then
            SHX4_3 = 1.0
            if SHX4_3 then
              goto SHX_LABEL_76
            end
          end
          SHX4_3 = -1.0
          -- [FIX IF ERROR] Move ::SHX_LABEL_76:: outside nested blocks until all 'goto SHX_LABEL_76' can see it
          ::SHX_LABEL_76::
          SHX5_3 = SetEntityHeading
          SHX6_3 = SHX1_3
          SHX7_3 = GetEntityHeading
          SHX8_3 = SHX1_3
          SHX7_3 = SHX7_3(SHX8_3)
          SHX7_3 = SHX7_3 + SHX4_3
          SHX5_3(SHX6_3, SHX7_3)
        else
          SHX4_3 = true
          SHX6_1 = SHX4_3
          SHX4_3 = SHX7_1
          if "onfront" == SHX4_3 then
            SHX4_3 = GetEntityCoords
            SHX5_3 = SHX1_3
            SHX4_3 = SHX4_3(SHX5_3)
            SHX5_3 = TaskPlayAnimAdvanced
            SHX6_3 = SHX1_3
            SHX7_3 = "move_crawlprone2crawlfront"
            SHX8_3 = "left"
            SHX9_3 = SHX4_3.x
            SHX10_3 = SHX4_3.y
            SHX11_3 = SHX4_3.z
            SHX12_3 = 0.0
            SHX13_3 = 0.0
            SHX14_3 = GetEntityHeading
            SHX15_3 = SHX1_3
            SHX14_3 = SHX14_3(SHX15_3)
            SHX15_3 = 2.0
            SHX16_3 = 2.0
            SHX17_3 = -1
            SHX18_3 = 2
            SHX19_3 = 0.1
            SHX20_3 = false
            SHX21_3 = false
            SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3)
            SHX5_3 = SHX13_1
            SHX6_3 = SHX1_3
            SHX7_3 = -10.0
            SHX8_3 = 300
            SHX5_3(SHX6_3, SHX7_3, SHX8_3)
            SHX5_3 = Wait
            SHX6_3 = 700
            SHX5_3(SHX6_3)
          else
            SHX4_3 = SHX12_1
            SHX5_3 = SHX1_3
            SHX6_3 = "get_up@directional_sweep@combat@pistol@left"
            SHX7_3 = "left_to_prone"
            SHX4_3(SHX5_3, SHX6_3, SHX7_3)
            SHX4_3 = SHX13_1
            SHX5_3 = SHX1_3
            SHX6_3 = 25.0
            SHX7_3 = 400
            SHX4_3(SHX5_3, SHX6_3, SHX7_3)
            SHX4_3 = SHX20_1
            SHX5_3 = SHX1_3
            SHX4_3(SHX5_3)
            SHX4_3 = Wait
            SHX5_3 = 600
            SHX4_3(SHX5_3)
          end
          SHX4_3 = false
          SHX6_1 = SHX4_3
        end
      else
        SHX4_3 = IsControlPressed
        SHX5_3 = 0
        SHX6_3 = 35
        SHX4_3 = SHX4_3(SHX5_3, SHX6_3)
        if SHX4_3 then
          SHX4_3 = SHX5_1
          if SHX4_3 then
            if SHX3_3 then
              SHX4_3 = 1.0
              if SHX4_3 then
                goto SHX_LABEL_156
              end
            end
            SHX4_3 = -1.0
            -- [FIX IF ERROR] Move ::SHX_LABEL_156:: outside nested blocks until all 'goto SHX_LABEL_156' can see it
            ::SHX_LABEL_156::
            SHX5_3 = SetEntityHeading
            SHX6_3 = SHX1_3
            SHX7_3 = GetEntityHeading
            SHX8_3 = SHX1_3
            SHX7_3 = SHX7_3(SHX8_3)
            SHX7_3 = SHX7_3 + SHX4_3
            SHX5_3(SHX6_3, SHX7_3)
          else
            SHX4_3 = true
            SHX6_1 = SHX4_3
            SHX4_3 = SHX7_1
            if "onfront" == SHX4_3 then
              SHX4_3 = GetEntityCoords
              SHX5_3 = SHX1_3
              SHX4_3 = SHX4_3(SHX5_3)
              SHX5_3 = TaskPlayAnimAdvanced
              SHX6_3 = SHX1_3
              SHX7_3 = "move_crawlprone2crawlfront"
              SHX8_3 = "right"
              SHX9_3 = SHX4_3.x
              SHX10_3 = SHX4_3.y
              SHX11_3 = SHX4_3.z
              SHX12_3 = 0.0
              SHX13_3 = 0.0
              SHX14_3 = GetEntityHeading
              SHX15_3 = SHX1_3
              SHX14_3 = SHX14_3(SHX15_3)
              SHX15_3 = 2.0
              SHX16_3 = 2.0
              SHX17_3 = -1
              SHX18_3 = 2
              SHX19_3 = 0.1
              SHX20_3 = false
              SHX21_3 = false
              SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3)
              SHX5_3 = SHX13_1
              SHX6_3 = SHX1_3
              SHX7_3 = 10.0
              SHX8_3 = 300
              SHX5_3(SHX6_3, SHX7_3, SHX8_3)
              SHX5_3 = Wait
              SHX6_3 = 700
              SHX5_3(SHX6_3)
            else
              SHX4_3 = SHX12_1
              SHX5_3 = SHX1_3
              SHX6_3 = "get_up@directional_sweep@combat@pistol@right"
              SHX7_3 = "right_to_prone"
              SHX4_3(SHX5_3, SHX6_3, SHX7_3)
              SHX4_3 = SHX13_1
              SHX5_3 = SHX1_3
              SHX6_3 = -25.0
              SHX7_3 = 400
              SHX4_3(SHX5_3, SHX6_3, SHX7_3)
              SHX4_3 = SHX20_1
              SHX5_3 = SHX1_3
              SHX4_3(SHX5_3)
              SHX4_3 = Wait
              SHX5_3 = 600
              SHX4_3(SHX5_3)
            end
            SHX4_3 = false
            SHX6_1 = SHX4_3
          end
        end
      end
      SHX4_3 = SHX5_1
      if not SHX4_3 then
        SHX4_3 = IsControlPressed
        SHX5_3 = 0
        SHX6_3 = 22
        SHX4_3 = SHX4_3(SHX5_3, SHX6_3)
        if SHX4_3 then
          SHX4_3 = SHX23_1
          SHX5_3 = SHX1_3
          SHX4_3(SHX5_3)
        end
      end
      SHX4_3 = Wait
      SHX5_3 = 0
      SHX4_3(SHX5_3)
    end
    SHX1_3 = SHX21_1
    SHX2_3 = SHX0_3
    SHX1_3(SHX2_3)
    SHX1_3 = false
    SHX5_1 = SHX1_3
    SHX1_3 = false
    SHX6_1 = SHX1_3
    SHX1_3 = "onfront"
    SHX7_1 = SHX1_3
    SHX1_3 = SetPedConfigFlag
    SHX2_3 = PlayerPedId
    SHX2_3 = SHX2_3()
    SHX3_3 = 48
    SHX4_3 = false
    SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    SHX1_3 = RemoveAnimDict
    SHX2_3 = "move_crawl"
    SHX1_3(SHX2_3)
    SHX1_3 = RemoveAnimDict
    SHX2_3 = "move_crawlprone2crawlfront"
    SHX1_3(SHX2_3)
  end
  SHX0_2(SHX1_2)
end
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX6_1
  if SHX0_2 then
    return
  end
  SHX0_2 = IsPauseMenuActive
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = SHX3_1
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.setCanAnim
    SHX1_2 = true
    SHX0_2(SHX1_2)
    SHX0_2 = false
    SHX3_1 = SHX0_2
    return
  end
  SHX0_2 = false
  SHX1_2 = SHX4_1
  if SHX1_2 then
    SHX1_2 = false
    SHX4_1 = SHX1_2
    SHX0_2 = true
  end
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX11_1
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    SHX2_2 = IsEntityInWater
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = tCMG
      SHX2_2 = SHX2_2.canAnim
      SHX2_2 = SHX2_2()
      if SHX2_2 then
        goto SHX_LABEL_46
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_46:: outside nested blocks until all 'goto SHX_LABEL_46' can see it
  ::SHX_LABEL_46::
  SHX2_2 = true
  SHX6_1 = SHX2_2
  SHX2_2 = Pointing
  if SHX2_2 then
    Pointing = false
  end
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.setCanAnim
  SHX3_2 = false
  SHX2_2(SHX3_2)
  SHX2_2 = true
  SHX3_1 = SHX2_2
  SHX2_2 = SetPedConfigFlag
  SHX3_2 = SHX1_2
  SHX4_2 = 48
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = GetPedStealthMovement
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 1 == SHX2_2 then
    SHX2_2 = SetPedStealthMovement
    SHX3_2 = SHX1_2
    SHX4_2 = false
    SHX5_2 = "DEFAULT_ACTION"
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = Wait
    SHX3_2 = 100
    SHX2_2(SHX3_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadAnimDict
  SHX3_2 = "move_crawl"
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadAnimDict
  SHX3_2 = "move_crawlprone2crawlfront"
  SHX2_2(SHX3_2)
  SHX2_2 = SHX19_1
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = false
    if SHX2_2 then
      SHX2_2 = SHX12_1
      SHX3_2 = SHX1_2
      SHX4_2 = "explosions"
      SHX5_2 = "react_blown_forwards"
      SHX6_2 = nil
      SHX7_2 = 3.0
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX2_2 = Wait
      SHX3_2 = 1100
      SHX2_2(SHX3_2)
  end
  elseif SHX0_2 then
    SHX2_2 = SHX12_1
    SHX3_2 = SHX1_2
    SHX4_2 = "amb@world_human_sunbathe@male@front@enter"
    SHX5_2 = "enter"
    SHX6_2 = nil
    SHX7_2 = nil
    SHX8_2 = -1
    SHX9_2 = 0.3
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX2_2 = Wait
    SHX3_2 = 1500
    SHX2_2(SHX3_2)
  else
    SHX2_2 = SHX12_1
    SHX3_2 = SHX1_2
    SHX4_2 = "amb@world_human_sunbathe@male@front@enter"
    SHX5_2 = "enter"
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = Wait
    SHX3_2 = 3000
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX11_1
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    SHX2_2 = IsEntityInWater
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = SHX20_1
      SHX3_2 = SHX1_2
      SHX4_2 = nil
      SHX5_2 = 3.0
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    end
  end
  SHX2_2 = false
  SHX6_1 = SHX2_2
  SHX2_2 = SHX24_1
  SHX2_2()
end
SHX26_1 = _ENV
SHX27_1 = "CreateThread"
SHX26_1 = SHX26_1[SHX27_1]
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX0_1.crouchKeybindEnabled
  if SHX0_2 then
    SHX0_2 = RegisterKeyMapping
    SHX1_2 = "+crouch"
    SHX2_2 = SHX0_1.localization
    SHX2_2 = SHX2_2.crouch_keymapping
    SHX3_2 = "keyboard"
    SHX4_2 = SHX0_1.crouchKeybind
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.registerCommand
    SHX1_2 = "+crouch"
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX18_1
      SHX0_3()
    end
    SHX3_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.registerCommand
    SHX1_2 = "-crouch"
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX3_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
  SHX0_2 = RegisterCommand
  SHX1_2 = "crouch"
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = GetFrameCount
    SHX0_3 = SHX0_3()
    SHX1_3 = SHX10_1
    if SHX0_3 == SHX1_3 then
      return
    end
    SHX0_3 = GetFrameCount
    SHX0_3 = SHX0_3()
    SHX10_1 = SHX0_3
    SHX0_3 = SHX4_1
    if SHX0_3 then
      SHX0_3 = false
      SHX4_1 = SHX0_3
      return
    end
    SHX0_3 = SHX17_1
    SHX1_3 = PlayerPedId
    SHX1_3 = SHX1_3()
    SHX0_3(SHX1_3)
  end
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = TriggerEvent
  SHX1_2 = "chat:addSuggestion"
  SHX2_2 = "/crouch"
  SHX3_2 = SHX0_1.localization
  SHX3_2 = SHX3_2.crouch_chat_suggestion
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX0_1.crawlKeybindEnabled
  if SHX0_2 then
    SHX0_2 = RegisterKeyMapping
    SHX1_2 = "+crawl"
    SHX2_2 = SHX0_1.localization
    SHX2_2 = SHX2_2.crawl_keymapping
    SHX3_2 = "keyboard"
    SHX4_2 = SHX0_1.crawlKeybind
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.registerCommand
    SHX1_2 = "+crawl"
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX25_1
      SHX0_3()
    end
    SHX3_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.registerCommand
    SHX1_2 = "-crawl"
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX3_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
  SHX0_2 = RegisterCommand
  SHX1_2 = "crawl"
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX25_1
    SHX0_3()
  end
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = TriggerEvent
  SHX1_2 = "chat:addSuggestion"
  SHX2_2 = "/crouch"
  SHX3_2 = SHX0_1.localization
  SHX3_2 = SHX3_2.crawl_chat_suggestion
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX26_1(SHX27_1)
